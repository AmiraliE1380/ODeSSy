; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/both.gzwrite.ll'
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
  br i1 %4, label %965, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !8
  %8 = icmp eq i32 %7, 31153
  br i1 %8, label %9, label %965

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %11 = load i32, ptr %10, align 8, !tbaa !16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %15 = load i32, ptr %14, align 4, !tbaa !17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %965, label %17

17:                                               ; preds = %13, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %18 = icmp slt i32 %2, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str) #15
  br label %965

20:                                               ; preds = %17
  %21 = zext nneg i32 %2 to i64
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %962, label %23

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
  br label %962

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
  br label %962

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
  br label %962

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
  br i1 %73, label %417, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %77 = load i32, ptr %76, align 8, !tbaa !30
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %231, label %79

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
  br label %962

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
  br label %962

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
  br label %962

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
  br i1 %128, label %231, label %129

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
  br label %962

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
  br i1 %161, label %231, label %134, !llvm.loop !34

162:                                              ; preds = %122, %117
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %164 = load i32, ptr %163, align 8, !tbaa !36
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = load i32, ptr %76, align 8, !tbaa !30
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %231, label %169

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
  br label %962

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
  br label %962

225:                                              ; preds = %220
  %226 = load i32, ptr %172, align 8, !tbaa !26
  %227 = icmp ult i32 %221, %226
  br i1 %227, label %228, label %229, !prof !33, !nosanitize !32

228:                                              ; preds = %225
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

229:                                              ; preds = %225
  %230 = icmp eq i32 %221, %226
  br i1 %230, label %231, label %179, !llvm.loop !38

231:                                              ; preds = %229, %166, %156, %126, %74
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %243 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %245 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %246 = load i64, ptr %71, align 8, !tbaa !29
  br label %247

247:                                              ; preds = %413, %231
  %248 = phi i64 [ %246, %231 ], [ %410, %413 ]
  %249 = phi i1 [ false, %231 ], [ true, %413 ]
  %250 = load i32, ptr %24, align 8, !tbaa !18
  %251 = zext i32 %250 to i64
  %252 = tail call i64 @llvm.smin.i64(i64 %248, i64 %251)
  %253 = trunc i64 %252 to i32
  %254 = load ptr, ptr %232, align 8, !tbaa !20
  br i1 %249, label %259, label %255

255:                                              ; preds = %247
  %256 = and i64 %252, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %254, i8 0, i64 %256, i1 false)
  %257 = load ptr, ptr %232, align 8, !tbaa !20
  %258 = load i32, ptr %24, align 8, !tbaa !18
  br label %259

259:                                              ; preds = %255, %247
  %260 = phi i32 [ %258, %255 ], [ %250, %247 ]
  %261 = phi ptr [ %257, %255 ], [ %254, %247 ]
  store i32 %253, ptr %76, align 8, !tbaa !30
  store ptr %261, ptr %75, align 8, !tbaa !25
  %262 = icmp eq i32 %260, 0
  br i1 %262, label %263, label %294

263:                                              ; preds = %259
  %264 = load i32, ptr %234, align 4, !tbaa !19
  %265 = shl i32 %264, 1
  %266 = zext i32 %265 to i64
  %267 = tail call noalias ptr @malloc(i64 noundef %266) #16
  store ptr %267, ptr %232, align 8, !tbaa !20
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %270

269:                                              ; preds = %263
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %393

270:                                              ; preds = %263
  %271 = load i32, ptr %233, align 8, !tbaa !21
  %272 = icmp eq i32 %271, 0
  %273 = load i32, ptr %234, align 4, !tbaa !19
  br i1 %272, label %275, label %274

274:                                              ; preds = %270
  store i32 %273, ptr %24, align 8, !tbaa !18
  br label %297

275:                                              ; preds = %270
  %276 = zext i32 %273 to i64
  %277 = tail call noalias ptr @malloc(i64 noundef %276) #16
  store ptr %277, ptr %235, align 8, !tbaa !22
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %280

279:                                              ; preds = %275
  tail call void @free(ptr noundef nonnull %267) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %393

280:                                              ; preds = %275
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %236, i8 0, i64 24, i1 false)
  %281 = load i32, ptr %237, align 8, !tbaa !23
  %282 = load i32, ptr %238, align 4, !tbaa !24
  %283 = tail call i32 @deflateInit2_(ptr noundef nonnull %75, i32 noundef %281, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %282, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %288, label %285

285:                                              ; preds = %280
  %286 = load ptr, ptr %235, align 8, !tbaa !22
  tail call void @free(ptr noundef %286) #15
  %287 = load ptr, ptr %232, align 8, !tbaa !20
  tail call void @free(ptr noundef %287) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %393

288:                                              ; preds = %280
  store ptr null, ptr %75, align 8, !tbaa !25
  %289 = load i32, ptr %233, align 8, !tbaa !21
  %290 = load i32, ptr %234, align 4, !tbaa !19
  store i32 %290, ptr %24, align 8, !tbaa !18
  %291 = icmp eq i32 %289, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %288
  store i32 %290, ptr %241, align 8, !tbaa !26
  %293 = load ptr, ptr %235, align 8, !tbaa !22
  store ptr %293, ptr %242, align 8, !tbaa !27
  store ptr %293, ptr %243, align 8, !tbaa !28
  br label %331

294:                                              ; preds = %259
  %295 = load i32, ptr %233, align 8, !tbaa !21
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %331, label %297

297:                                              ; preds = %294, %288, %274
  %298 = phi ptr [ %261, %294 ], [ null, %288 ], [ %261, %274 ]
  %299 = load i32, ptr %76, align 8, !tbaa !30
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %393, label %301

301:                                              ; preds = %297
  %302 = tail call ptr @__errno_location() #17
  br label %303

303:                                              ; preds = %325, %301
  %304 = phi ptr [ %298, %301 ], [ %329, %325 ]
  store i32 0, ptr %302, align 4, !tbaa !4
  store i32 0, ptr %239, align 4, !tbaa !17
  %305 = load i32, ptr %76, align 8, !tbaa !30
  %306 = tail call i32 @llvm.umin.i32(i32 %305, i32 1073741824)
  %307 = zext nneg i32 %306 to i64
  %308 = load i32, ptr %240, align 4, !tbaa !31
  %309 = tail call i64 @write(i32 noundef %308, ptr noundef %304, i64 noundef %307) #15
  %310 = trunc i64 %309 to i32
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %312, label %320

312:                                              ; preds = %303
  %313 = load i32, ptr %302, align 4, !tbaa !4
  %314 = icmp eq i32 %313, 11
  br i1 %314, label %315, label %317

315:                                              ; preds = %312
  store i32 1, ptr %239, align 4, !tbaa !17
  %316 = load i32, ptr %302, align 4, !tbaa !4
  br label %317

317:                                              ; preds = %315, %312
  %318 = phi i32 [ %313, %312 ], [ %316, %315 ]
  %319 = tail call ptr @strerror(i32 noundef %318) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %319) #15
  br label %393

320:                                              ; preds = %303
  %321 = load i32, ptr %76, align 8, !tbaa !30
  %322 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %321, i32 %310), !nosanitize !32
  %323 = extractvalue { i32, i1 } %322, 1, !nosanitize !32
  br i1 %323, label %324, label %325, !prof !33, !nosanitize !32

324:                                              ; preds = %320
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

325:                                              ; preds = %320
  %326 = extractvalue { i32, i1 } %322, 0, !nosanitize !32
  store i32 %326, ptr %76, align 8, !tbaa !30
  %327 = load ptr, ptr %75, align 8, !tbaa !25
  %328 = and i64 %309, 2147483647
  %329 = getelementptr inbounds nuw i8, ptr %327, i64 %328
  store ptr %329, ptr %75, align 8, !tbaa !25
  %330 = icmp eq i32 %326, 0
  br i1 %330, label %393, label %303, !llvm.loop !34

331:                                              ; preds = %294, %292
  %332 = load i32, ptr %244, align 8, !tbaa !36
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %339, label %334

334:                                              ; preds = %331
  %335 = load i32, ptr %76, align 8, !tbaa !30
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %393, label %337

337:                                              ; preds = %334
  %338 = tail call i32 @deflateReset(ptr noundef nonnull %75) #15
  store i32 0, ptr %244, align 8, !tbaa !36
  br label %339

339:                                              ; preds = %337, %331
  %340 = load i32, ptr %241, align 8, !tbaa !26
  br label %341

341:                                              ; preds = %391, %339
  %342 = phi i32 [ %340, %339 ], [ %388, %391 ]
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %382

344:                                              ; preds = %341
  %345 = load ptr, ptr %242, align 8, !tbaa !27
  %346 = load ptr, ptr %243, align 8, !tbaa !28
  %347 = icmp ugt ptr %345, %346
  br i1 %347, label %348, label %379

348:                                              ; preds = %344
  %349 = tail call ptr @__errno_location() #17
  br label %350

350:                                              ; preds = %370, %348
  %351 = phi ptr [ %346, %348 ], [ %373, %370 ]
  %352 = phi ptr [ %345, %348 ], [ %374, %370 ]
  store i32 0, ptr %349, align 4, !tbaa !4
  store i32 0, ptr %239, align 4, !tbaa !17
  %353 = ptrtoint ptr %352 to i64
  %354 = ptrtoint ptr %351 to i64
  %355 = sub i64 %353, %354
  %356 = tail call i64 @llvm.smin.i64(i64 %355, i64 1073741824)
  %357 = and i64 %356, 4294967295
  %358 = load i32, ptr %240, align 4, !tbaa !31
  %359 = tail call i64 @write(i32 noundef %358, ptr noundef %351, i64 noundef %357) #15
  %360 = and i64 %359, 2147483648
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %370, label %362

362:                                              ; preds = %350
  %363 = load i32, ptr %349, align 4, !tbaa !4
  %364 = icmp eq i32 %363, 11
  br i1 %364, label %365, label %367

365:                                              ; preds = %362
  store i32 1, ptr %239, align 4, !tbaa !17
  %366 = load i32, ptr %349, align 4, !tbaa !4
  br label %367

367:                                              ; preds = %365, %362
  %368 = phi i32 [ %363, %362 ], [ %366, %365 ]
  %369 = tail call ptr @strerror(i32 noundef %368) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %369) #15
  br label %393

370:                                              ; preds = %350
  %371 = load ptr, ptr %243, align 8, !tbaa !28
  %372 = and i64 %359, 2147483647
  %373 = getelementptr inbounds nuw i8, ptr %371, i64 %372
  store ptr %373, ptr %243, align 8, !tbaa !28
  %374 = load ptr, ptr %242, align 8, !tbaa !27
  %375 = icmp ugt ptr %374, %373
  br i1 %375, label %350, label %376, !llvm.loop !37

376:                                              ; preds = %370
  %377 = load i32, ptr %241, align 8, !tbaa !26
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %376, %344
  %380 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %380, ptr %241, align 8, !tbaa !26
  %381 = load ptr, ptr %235, align 8, !tbaa !22
  store ptr %381, ptr %242, align 8, !tbaa !27
  store ptr %381, ptr %243, align 8, !tbaa !28
  br label %382

382:                                              ; preds = %379, %376, %341
  %383 = phi i32 [ %377, %376 ], [ %380, %379 ], [ %342, %341 ]
  %384 = tail call i32 @deflate(ptr noundef nonnull %75, i32 noundef 0) #15
  %385 = icmp eq i32 %384, -2
  br i1 %385, label %386, label %387

386:                                              ; preds = %382
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %393

387:                                              ; preds = %382
  %388 = load i32, ptr %241, align 8, !tbaa !26
  %389 = icmp ult i32 %383, %388
  br i1 %389, label %390, label %391, !prof !33, !nosanitize !32

390:                                              ; preds = %387
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

391:                                              ; preds = %387
  %392 = icmp eq i32 %383, %388
  br i1 %392, label %393, label %341, !llvm.loop !38

393:                                              ; preds = %391, %386, %367, %334, %325, %317, %297, %285, %279, %269
  %394 = phi i1 [ false, %334 ], [ true, %317 ], [ false, %297 ], [ true, %279 ], [ true, %367 ], [ true, %386 ], [ false, %391 ], [ true, %269 ], [ true, %285 ], [ false, %325 ]
  %395 = load i32, ptr %76, align 8, !tbaa !30
  %396 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %253, i32 %395), !nosanitize !32
  %397 = extractvalue { i32, i1 } %396, 1, !nosanitize !32
  br i1 %397, label %398, label %399, !prof !33, !nosanitize !32

398:                                              ; preds = %406, %393
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

399:                                              ; preds = %393
  %400 = extractvalue { i32, i1 } %396, 0, !nosanitize !32
  %401 = zext i32 %400 to i64
  %402 = load i64, ptr %245, align 8, !tbaa !39
  %403 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %402, i64 %401), !nosanitize !32
  %404 = extractvalue { i64, i1 } %403, 1, !nosanitize !32
  br i1 %404, label %405, label %406, !prof !33, !nosanitize !32

405:                                              ; preds = %399
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !32
  unreachable, !nosanitize !32

406:                                              ; preds = %399
  %407 = extractvalue { i64, i1 } %403, 0, !nosanitize !32
  store i64 %407, ptr %245, align 8, !tbaa !39
  %408 = load i64, ptr %71, align 8, !tbaa !29
  %409 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %408, i64 %401), !nosanitize !32
  %410 = extractvalue { i64, i1 } %409, 0, !nosanitize !32
  %411 = extractvalue { i64, i1 } %409, 1, !nosanitize !32
  br i1 %411, label %398, label %412, !prof !33, !nosanitize !32

412:                                              ; preds = %406
  store i64 %410, ptr %71, align 8, !tbaa !29
  br i1 %394, label %962, label %413

413:                                              ; preds = %412
  %414 = icmp eq i64 %410, 0
  br i1 %414, label %415, label %247, !llvm.loop !40

415:                                              ; preds = %413
  %416 = load i32, ptr %24, align 8, !tbaa !18
  br label %417

417:                                              ; preds = %415, %69
  %418 = phi i32 [ %416, %415 ], [ %70, %69 ]
  %419 = icmp ult i32 %2, %418
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %419, label %422, label %627

422:                                              ; preds = %417
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %430 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %431 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %437

437:                                              ; preds = %562, %422
  %438 = phi i64 [ %21, %422 ], [ %480, %562 ]
  %439 = phi ptr [ %1, %422 ], [ %478, %562 ]
  %440 = load i32, ptr %421, align 8, !tbaa !41
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %445, label %442

442:                                              ; preds = %437
  %443 = load ptr, ptr %420, align 8, !tbaa !42
  %444 = load ptr, ptr %423, align 8, !tbaa !20
  br label %447

445:                                              ; preds = %437
  %446 = load ptr, ptr %423, align 8, !tbaa !20
  store ptr %446, ptr %420, align 8, !tbaa !42
  br label %447

447:                                              ; preds = %445, %442
  %448 = phi ptr [ %444, %442 ], [ %446, %445 ]
  %449 = phi ptr [ %443, %442 ], [ %446, %445 ]
  %450 = zext i32 %440 to i64
  %451 = getelementptr inbounds nuw i8, ptr %449, i64 %450
  %452 = ptrtoint ptr %451 to i64
  %453 = ptrtoint ptr %448 to i64
  %454 = sub i64 %452, %453
  %455 = trunc i64 %454 to i32
  %456 = load i32, ptr %24, align 8, !tbaa !18
  %457 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %456, i32 %455), !nosanitize !32
  %458 = extractvalue { i32, i1 } %457, 1, !nosanitize !32
  br i1 %458, label %459, label %460, !prof !33, !nosanitize !32

459:                                              ; preds = %447
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

460:                                              ; preds = %447
  %461 = extractvalue { i32, i1 } %457, 0, !nosanitize !32
  %462 = zext i32 %461 to i64
  %463 = tail call i64 @llvm.umin.i64(i64 %438, i64 %462)
  %464 = trunc nuw i64 %463 to i32
  %465 = and i64 %454, 4294967295
  %466 = getelementptr inbounds nuw i8, ptr %448, i64 %465
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %466, ptr align 1 %439, i64 %463, i1 false)
  %467 = load i32, ptr %421, align 8, !tbaa !41
  %468 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %467, i32 %464), !nosanitize !32
  %469 = extractvalue { i32, i1 } %468, 1, !nosanitize !32
  br i1 %469, label %470, label %471, !prof !33, !nosanitize !32

470:                                              ; preds = %939, %471, %460
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

471:                                              ; preds = %460
  %472 = extractvalue { i32, i1 } %468, 0, !nosanitize !32
  store i32 %472, ptr %421, align 8, !tbaa !41
  %473 = load i64, ptr %424, align 8, !tbaa !39
  %474 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %473, i64 %463), !nosanitize !32
  %475 = extractvalue { i64, i1 } %474, 1, !nosanitize !32
  br i1 %475, label %470, label %476, !prof !33, !nosanitize !32

476:                                              ; preds = %471
  %477 = extractvalue { i64, i1 } %474, 0, !nosanitize !32
  store i64 %477, ptr %424, align 8, !tbaa !39
  %478 = getelementptr inbounds nuw i8, ptr %439, i64 %463
  %479 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %438, i64 %463), !nosanitize !32
  %480 = extractvalue { i64, i1 } %479, 0, !nosanitize !32
  %481 = extractvalue { i64, i1 } %479, 1, !nosanitize !32
  br i1 %481, label %482, label %483, !prof !33, !nosanitize !32

482:                                              ; preds = %476
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

483:                                              ; preds = %476
  %484 = icmp eq i64 %480, 0
  br i1 %484, label %962, label %485

485:                                              ; preds = %483
  %486 = load i32, ptr %24, align 8, !tbaa !18
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %519

488:                                              ; preds = %485
  %489 = load i32, ptr %426, align 4, !tbaa !19
  %490 = shl i32 %489, 1
  %491 = zext i32 %490 to i64
  %492 = tail call noalias ptr @malloc(i64 noundef %491) #16
  store ptr %492, ptr %423, align 8, !tbaa !20
  %493 = icmp eq ptr %492, null
  br i1 %493, label %494, label %495

494:                                              ; preds = %488
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %619

495:                                              ; preds = %488
  %496 = load i32, ptr %425, align 8, !tbaa !21
  %497 = icmp eq i32 %496, 0
  %498 = load i32, ptr %426, align 4, !tbaa !19
  br i1 %497, label %500, label %499

499:                                              ; preds = %495
  store i32 %498, ptr %24, align 8, !tbaa !18
  br label %522

500:                                              ; preds = %495
  %501 = zext i32 %498 to i64
  %502 = tail call noalias ptr @malloc(i64 noundef %501) #16
  store ptr %502, ptr %427, align 8, !tbaa !22
  %503 = icmp eq ptr %502, null
  br i1 %503, label %504, label %505

504:                                              ; preds = %500
  tail call void @free(ptr noundef nonnull %492) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %619

505:                                              ; preds = %500
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %428, i8 0, i64 24, i1 false)
  %506 = load i32, ptr %429, align 8, !tbaa !23
  %507 = load i32, ptr %430, align 4, !tbaa !24
  %508 = tail call i32 @deflateInit2_(ptr noundef nonnull %420, i32 noundef %506, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %507, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %513, label %510

510:                                              ; preds = %505
  %511 = load ptr, ptr %427, align 8, !tbaa !22
  tail call void @free(ptr noundef %511) #15
  %512 = load ptr, ptr %423, align 8, !tbaa !20
  tail call void @free(ptr noundef %512) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %619

513:                                              ; preds = %505
  store ptr null, ptr %420, align 8, !tbaa !25
  %514 = load i32, ptr %425, align 8, !tbaa !21
  %515 = load i32, ptr %426, align 4, !tbaa !19
  store i32 %515, ptr %24, align 8, !tbaa !18
  %516 = icmp eq i32 %514, 0
  br i1 %516, label %517, label %522

517:                                              ; preds = %513
  store i32 %515, ptr %433, align 8, !tbaa !26
  %518 = load ptr, ptr %427, align 8, !tbaa !22
  store ptr %518, ptr %434, align 8, !tbaa !27
  store ptr %518, ptr %435, align 8, !tbaa !28
  br label %556

519:                                              ; preds = %485
  %520 = load i32, ptr %425, align 8, !tbaa !21
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %556, label %522

522:                                              ; preds = %519, %513, %499
  %523 = load i32, ptr %421, align 8, !tbaa !30
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %562, label %525

525:                                              ; preds = %522
  %526 = tail call ptr @__errno_location() #17
  %527 = load ptr, ptr %420, align 8, !tbaa !25
  br label %528

528:                                              ; preds = %550, %525
  %529 = phi ptr [ %527, %525 ], [ %554, %550 ]
  store i32 0, ptr %526, align 4, !tbaa !4
  store i32 0, ptr %431, align 4, !tbaa !17
  %530 = load i32, ptr %421, align 8, !tbaa !30
  %531 = tail call i32 @llvm.umin.i32(i32 %530, i32 1073741824)
  %532 = zext nneg i32 %531 to i64
  %533 = load i32, ptr %432, align 4, !tbaa !31
  %534 = tail call i64 @write(i32 noundef %533, ptr noundef %529, i64 noundef %532) #15
  %535 = trunc i64 %534 to i32
  %536 = icmp slt i32 %535, 0
  br i1 %536, label %537, label %545

537:                                              ; preds = %528
  %538 = load i32, ptr %526, align 4, !tbaa !4
  %539 = icmp eq i32 %538, 11
  br i1 %539, label %540, label %542

540:                                              ; preds = %537
  store i32 1, ptr %431, align 4, !tbaa !17
  %541 = load i32, ptr %526, align 4, !tbaa !4
  br label %542

542:                                              ; preds = %540, %537
  %543 = phi i32 [ %538, %537 ], [ %541, %540 ]
  %544 = tail call ptr @strerror(i32 noundef %543) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %544) #15
  br label %619

545:                                              ; preds = %528
  %546 = load i32, ptr %421, align 8, !tbaa !30
  %547 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %546, i32 %535), !nosanitize !32
  %548 = extractvalue { i32, i1 } %547, 1, !nosanitize !32
  br i1 %548, label %549, label %550, !prof !33, !nosanitize !32

549:                                              ; preds = %545
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

550:                                              ; preds = %545
  %551 = extractvalue { i32, i1 } %547, 0, !nosanitize !32
  store i32 %551, ptr %421, align 8, !tbaa !30
  %552 = load ptr, ptr %420, align 8, !tbaa !25
  %553 = and i64 %534, 2147483647
  %554 = getelementptr inbounds nuw i8, ptr %552, i64 %553
  store ptr %554, ptr %420, align 8, !tbaa !25
  %555 = icmp eq i32 %551, 0
  br i1 %555, label %562, label %528, !llvm.loop !34

556:                                              ; preds = %519, %517
  %557 = load i32, ptr %436, align 8, !tbaa !36
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %565, label %559

559:                                              ; preds = %556
  %560 = load i32, ptr %421, align 8, !tbaa !30
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %617, %559, %550, %522
  br label %437

563:                                              ; preds = %559
  %564 = tail call i32 @deflateReset(ptr noundef nonnull %420) #15
  store i32 0, ptr %436, align 8, !tbaa !36
  br label %565

565:                                              ; preds = %563, %556
  %566 = load i32, ptr %433, align 8, !tbaa !26
  br label %567

567:                                              ; preds = %617, %565
  %568 = phi i32 [ %566, %565 ], [ %614, %617 ]
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %608

570:                                              ; preds = %567
  %571 = load ptr, ptr %434, align 8, !tbaa !27
  %572 = load ptr, ptr %435, align 8, !tbaa !28
  %573 = icmp ugt ptr %571, %572
  br i1 %573, label %574, label %605

574:                                              ; preds = %570
  %575 = tail call ptr @__errno_location() #17
  br label %576

576:                                              ; preds = %596, %574
  %577 = phi ptr [ %572, %574 ], [ %599, %596 ]
  %578 = phi ptr [ %571, %574 ], [ %600, %596 ]
  store i32 0, ptr %575, align 4, !tbaa !4
  store i32 0, ptr %431, align 4, !tbaa !17
  %579 = ptrtoint ptr %578 to i64
  %580 = ptrtoint ptr %577 to i64
  %581 = sub i64 %579, %580
  %582 = tail call i64 @llvm.smin.i64(i64 %581, i64 1073741824)
  %583 = and i64 %582, 4294967295
  %584 = load i32, ptr %432, align 4, !tbaa !31
  %585 = tail call i64 @write(i32 noundef %584, ptr noundef %577, i64 noundef %583) #15
  %586 = and i64 %585, 2147483648
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %596, label %588

588:                                              ; preds = %576
  %589 = load i32, ptr %575, align 4, !tbaa !4
  %590 = icmp eq i32 %589, 11
  br i1 %590, label %591, label %593

591:                                              ; preds = %588
  store i32 1, ptr %431, align 4, !tbaa !17
  %592 = load i32, ptr %575, align 4, !tbaa !4
  br label %593

593:                                              ; preds = %591, %588
  %594 = phi i32 [ %589, %588 ], [ %592, %591 ]
  %595 = tail call ptr @strerror(i32 noundef %594) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %595) #15
  br label %619

596:                                              ; preds = %576
  %597 = load ptr, ptr %435, align 8, !tbaa !28
  %598 = and i64 %585, 2147483647
  %599 = getelementptr inbounds nuw i8, ptr %597, i64 %598
  store ptr %599, ptr %435, align 8, !tbaa !28
  %600 = load ptr, ptr %434, align 8, !tbaa !27
  %601 = icmp ugt ptr %600, %599
  br i1 %601, label %576, label %602, !llvm.loop !37

602:                                              ; preds = %596
  %603 = load i32, ptr %433, align 8, !tbaa !26
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %602, %570
  %606 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %606, ptr %433, align 8, !tbaa !26
  %607 = load ptr, ptr %427, align 8, !tbaa !22
  store ptr %607, ptr %434, align 8, !tbaa !27
  store ptr %607, ptr %435, align 8, !tbaa !28
  br label %608

608:                                              ; preds = %605, %602, %567
  %609 = phi i32 [ %603, %602 ], [ %606, %605 ], [ %568, %567 ]
  %610 = tail call i32 @deflate(ptr noundef nonnull %420, i32 noundef 0) #15
  %611 = icmp eq i32 %610, -2
  br i1 %611, label %612, label %613

612:                                              ; preds = %608
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %619

613:                                              ; preds = %608
  %614 = load i32, ptr %433, align 8, !tbaa !26
  %615 = icmp ult i32 %609, %614
  br i1 %615, label %616, label %617, !prof !33, !nosanitize !32

616:                                              ; preds = %613
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

617:                                              ; preds = %613
  %618 = icmp eq i32 %609, %614
  br i1 %618, label %562, label %567, !llvm.loop !38

619:                                              ; preds = %612, %593, %542, %510, %504, %494
  %620 = load i32, ptr %431, align 4, !tbaa !17
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %962, label %622

622:                                              ; preds = %619
  %623 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %21, i64 %480), !nosanitize !32
  %624 = extractvalue { i64, i1 } %623, 0, !nosanitize !32
  %625 = extractvalue { i64, i1 } %623, 1, !nosanitize !32
  br i1 %625, label %626, label %962, !prof !33, !nosanitize !32

626:                                              ; preds = %622
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

627:                                              ; preds = %417
  %628 = load i32, ptr %421, align 8, !tbaa !41
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %782, label %630

630:                                              ; preds = %627
  %631 = icmp eq i32 %418, 0
  br i1 %631, label %632, label %673

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
  br label %962

641:                                              ; preds = %632
  %642 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %643 = load i32, ptr %642, align 8, !tbaa !21
  %644 = icmp eq i32 %643, 0
  %645 = load i32, ptr %633, align 4, !tbaa !19
  br i1 %644, label %647, label %646

646:                                              ; preds = %641
  store i32 %645, ptr %24, align 8, !tbaa !18
  br label %677

647:                                              ; preds = %641
  %648 = zext i32 %645 to i64
  %649 = tail call noalias ptr @malloc(i64 noundef %648) #16
  %650 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %649, ptr %650, align 8, !tbaa !22
  %651 = icmp eq ptr %649, null
  br i1 %651, label %652, label %653

652:                                              ; preds = %647
  tail call void @free(ptr noundef nonnull %637) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %962

653:                                              ; preds = %647
  %654 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %655 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %654, i8 0, i64 24, i1 false)
  %656 = load i32, ptr %655, align 8, !tbaa !23
  %657 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %658 = load i32, ptr %657, align 4, !tbaa !24
  %659 = tail call i32 @deflateInit2_(ptr noundef nonnull %420, i32 noundef %656, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %658, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %664, label %661

661:                                              ; preds = %653
  %662 = load ptr, ptr %650, align 8, !tbaa !22
  tail call void @free(ptr noundef %662) #15
  %663 = load ptr, ptr %638, align 8, !tbaa !20
  tail call void @free(ptr noundef %663) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %962

664:                                              ; preds = %653
  store ptr null, ptr %420, align 8, !tbaa !25
  %665 = load i32, ptr %642, align 8, !tbaa !21
  %666 = load i32, ptr %633, align 4, !tbaa !19
  store i32 %666, ptr %24, align 8, !tbaa !18
  %667 = icmp eq i32 %665, 0
  br i1 %667, label %668, label %677

668:                                              ; preds = %664
  %669 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %666, ptr %669, align 8, !tbaa !26
  %670 = load ptr, ptr %650, align 8, !tbaa !22
  %671 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %670, ptr %671, align 8, !tbaa !27
  %672 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %670, ptr %672, align 8, !tbaa !28
  br label %713

673:                                              ; preds = %630
  %674 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %675 = load i32, ptr %674, align 8, !tbaa !21
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %713, label %677

677:                                              ; preds = %673, %664, %646
  %678 = load i32, ptr %421, align 8, !tbaa !30
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %782, label %680

680:                                              ; preds = %677
  %681 = tail call ptr @__errno_location() #17
  %682 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %683 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %684 = load ptr, ptr %420, align 8, !tbaa !25
  br label %685

685:                                              ; preds = %707, %680
  %686 = phi ptr [ %684, %680 ], [ %711, %707 ]
  store i32 0, ptr %681, align 4, !tbaa !4
  store i32 0, ptr %682, align 4, !tbaa !17
  %687 = load i32, ptr %421, align 8, !tbaa !30
  %688 = tail call i32 @llvm.umin.i32(i32 %687, i32 1073741824)
  %689 = zext nneg i32 %688 to i64
  %690 = load i32, ptr %683, align 4, !tbaa !31
  %691 = tail call i64 @write(i32 noundef %690, ptr noundef %686, i64 noundef %689) #15
  %692 = trunc i64 %691 to i32
  %693 = icmp slt i32 %692, 0
  br i1 %693, label %694, label %702

694:                                              ; preds = %685
  %695 = load i32, ptr %681, align 4, !tbaa !4
  %696 = icmp eq i32 %695, 11
  br i1 %696, label %697, label %699

697:                                              ; preds = %694
  store i32 1, ptr %682, align 4, !tbaa !17
  %698 = load i32, ptr %681, align 4, !tbaa !4
  br label %699

699:                                              ; preds = %697, %694
  %700 = phi i32 [ %695, %694 ], [ %698, %697 ]
  %701 = tail call ptr @strerror(i32 noundef %700) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %701) #15
  br label %962

702:                                              ; preds = %685
  %703 = load i32, ptr %421, align 8, !tbaa !30
  %704 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %703, i32 %692), !nosanitize !32
  %705 = extractvalue { i32, i1 } %704, 1, !nosanitize !32
  br i1 %705, label %706, label %707, !prof !33, !nosanitize !32

706:                                              ; preds = %702
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

707:                                              ; preds = %702
  %708 = extractvalue { i32, i1 } %704, 0, !nosanitize !32
  store i32 %708, ptr %421, align 8, !tbaa !30
  %709 = load ptr, ptr %420, align 8, !tbaa !25
  %710 = and i64 %691, 2147483647
  %711 = getelementptr inbounds nuw i8, ptr %709, i64 %710
  store ptr %711, ptr %420, align 8, !tbaa !25
  %712 = icmp eq i32 %708, 0
  br i1 %712, label %782, label %685, !llvm.loop !34

713:                                              ; preds = %673, %668
  %714 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %715 = load i32, ptr %714, align 8, !tbaa !36
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %722, label %717

717:                                              ; preds = %713
  %718 = load i32, ptr %421, align 8, !tbaa !30
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %782, label %720

720:                                              ; preds = %717
  %721 = tail call i32 @deflateReset(ptr noundef nonnull %420) #15
  store i32 0, ptr %714, align 8, !tbaa !36
  br label %722

722:                                              ; preds = %720, %713
  %723 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %724 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %725 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %726 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %727 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %728 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %729 = load i32, ptr %723, align 8, !tbaa !26
  br label %730

730:                                              ; preds = %780, %722
  %731 = phi i32 [ %729, %722 ], [ %777, %780 ]
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %733, label %771

733:                                              ; preds = %730
  %734 = load ptr, ptr %724, align 8, !tbaa !27
  %735 = load ptr, ptr %725, align 8, !tbaa !28
  %736 = icmp ugt ptr %734, %735
  br i1 %736, label %737, label %768

737:                                              ; preds = %733
  %738 = tail call ptr @__errno_location() #17
  br label %739

739:                                              ; preds = %759, %737
  %740 = phi ptr [ %735, %737 ], [ %762, %759 ]
  %741 = phi ptr [ %734, %737 ], [ %763, %759 ]
  store i32 0, ptr %738, align 4, !tbaa !4
  store i32 0, ptr %726, align 4, !tbaa !17
  %742 = ptrtoint ptr %741 to i64
  %743 = ptrtoint ptr %740 to i64
  %744 = sub i64 %742, %743
  %745 = tail call i64 @llvm.smin.i64(i64 %744, i64 1073741824)
  %746 = and i64 %745, 4294967295
  %747 = load i32, ptr %727, align 4, !tbaa !31
  %748 = tail call i64 @write(i32 noundef %747, ptr noundef %740, i64 noundef %746) #15
  %749 = and i64 %748, 2147483648
  %750 = icmp eq i64 %749, 0
  br i1 %750, label %759, label %751

751:                                              ; preds = %739
  %752 = load i32, ptr %738, align 4, !tbaa !4
  %753 = icmp eq i32 %752, 11
  br i1 %753, label %754, label %756

754:                                              ; preds = %751
  store i32 1, ptr %726, align 4, !tbaa !17
  %755 = load i32, ptr %738, align 4, !tbaa !4
  br label %756

756:                                              ; preds = %754, %751
  %757 = phi i32 [ %752, %751 ], [ %755, %754 ]
  %758 = tail call ptr @strerror(i32 noundef %757) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %758) #15
  br label %962

759:                                              ; preds = %739
  %760 = load ptr, ptr %725, align 8, !tbaa !28
  %761 = and i64 %748, 2147483647
  %762 = getelementptr inbounds nuw i8, ptr %760, i64 %761
  store ptr %762, ptr %725, align 8, !tbaa !28
  %763 = load ptr, ptr %724, align 8, !tbaa !27
  %764 = icmp ugt ptr %763, %762
  br i1 %764, label %739, label %765, !llvm.loop !37

765:                                              ; preds = %759
  %766 = load i32, ptr %723, align 8, !tbaa !26
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %768, label %771

768:                                              ; preds = %765, %733
  %769 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %769, ptr %723, align 8, !tbaa !26
  %770 = load ptr, ptr %728, align 8, !tbaa !22
  store ptr %770, ptr %724, align 8, !tbaa !27
  store ptr %770, ptr %725, align 8, !tbaa !28
  br label %771

771:                                              ; preds = %768, %765, %730
  %772 = phi i32 [ %766, %765 ], [ %769, %768 ], [ %731, %730 ]
  %773 = tail call i32 @deflate(ptr noundef nonnull %420, i32 noundef 0) #15
  %774 = icmp eq i32 %773, -2
  br i1 %774, label %775, label %776

775:                                              ; preds = %771
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %962

776:                                              ; preds = %771
  %777 = load i32, ptr %723, align 8, !tbaa !26
  %778 = icmp ult i32 %772, %777
  br i1 %778, label %779, label %780, !prof !33, !nosanitize !32

779:                                              ; preds = %776
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

780:                                              ; preds = %776
  %781 = icmp eq i32 %772, %777
  br i1 %781, label %782, label %730, !llvm.loop !38

782:                                              ; preds = %780, %717, %707, %677, %627
  store ptr %1, ptr %420, align 8, !tbaa !42
  %783 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %784 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %785 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %786 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %787 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %788 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %789 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %790 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %791 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %792 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %793 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %794 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %795 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %796 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %797

797:                                              ; preds = %960, %782
  %798 = phi i64 [ %21, %782 ], [ %948, %960 ]
  %799 = tail call i64 @llvm.umin.i64(i64 %798, i64 4294967295)
  %800 = trunc nuw i64 %799 to i32
  store i32 %800, ptr %421, align 8, !tbaa !41
  %801 = load i32, ptr %24, align 8, !tbaa !18
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %834

803:                                              ; preds = %797
  %804 = load i32, ptr %784, align 4, !tbaa !19
  %805 = shl i32 %804, 1
  %806 = zext i32 %805 to i64
  %807 = tail call noalias ptr @malloc(i64 noundef %806) #16
  store ptr %807, ptr %785, align 8, !tbaa !20
  %808 = icmp eq ptr %807, null
  br i1 %808, label %809, label %810

809:                                              ; preds = %803
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %933

810:                                              ; preds = %803
  %811 = load i32, ptr %783, align 8, !tbaa !21
  %812 = icmp eq i32 %811, 0
  %813 = load i32, ptr %784, align 4, !tbaa !19
  br i1 %812, label %815, label %814

814:                                              ; preds = %810
  store i32 %813, ptr %24, align 8, !tbaa !18
  br label %837

815:                                              ; preds = %810
  %816 = zext i32 %813 to i64
  %817 = tail call noalias ptr @malloc(i64 noundef %816) #16
  store ptr %817, ptr %786, align 8, !tbaa !22
  %818 = icmp eq ptr %817, null
  br i1 %818, label %819, label %820

819:                                              ; preds = %815
  tail call void @free(ptr noundef nonnull %807) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %933

820:                                              ; preds = %815
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %787, i8 0, i64 24, i1 false)
  %821 = load i32, ptr %788, align 8, !tbaa !23
  %822 = load i32, ptr %789, align 4, !tbaa !24
  %823 = tail call i32 @deflateInit2_(ptr noundef nonnull %420, i32 noundef %821, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %822, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %828, label %825

825:                                              ; preds = %820
  %826 = load ptr, ptr %786, align 8, !tbaa !22
  tail call void @free(ptr noundef %826) #15
  %827 = load ptr, ptr %785, align 8, !tbaa !20
  tail call void @free(ptr noundef %827) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %933

828:                                              ; preds = %820
  store ptr null, ptr %420, align 8, !tbaa !25
  %829 = load i32, ptr %783, align 8, !tbaa !21
  %830 = load i32, ptr %784, align 4, !tbaa !19
  store i32 %830, ptr %24, align 8, !tbaa !18
  %831 = icmp eq i32 %829, 0
  br i1 %831, label %832, label %837

832:                                              ; preds = %828
  store i32 %830, ptr %792, align 8, !tbaa !26
  %833 = load ptr, ptr %786, align 8, !tbaa !22
  store ptr %833, ptr %793, align 8, !tbaa !27
  store ptr %833, ptr %794, align 8, !tbaa !28
  br label %871

834:                                              ; preds = %797
  %835 = load i32, ptr %783, align 8, !tbaa !21
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %871, label %837

837:                                              ; preds = %834, %828, %814
  %838 = load i32, ptr %421, align 8, !tbaa !30
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %933, label %840

840:                                              ; preds = %837
  %841 = tail call ptr @__errno_location() #17
  %842 = load ptr, ptr %420, align 8, !tbaa !25
  br label %843

843:                                              ; preds = %865, %840
  %844 = phi ptr [ %842, %840 ], [ %869, %865 ]
  store i32 0, ptr %841, align 4, !tbaa !4
  store i32 0, ptr %790, align 4, !tbaa !17
  %845 = load i32, ptr %421, align 8, !tbaa !30
  %846 = tail call i32 @llvm.umin.i32(i32 %845, i32 1073741824)
  %847 = zext nneg i32 %846 to i64
  %848 = load i32, ptr %791, align 4, !tbaa !31
  %849 = tail call i64 @write(i32 noundef %848, ptr noundef %844, i64 noundef %847) #15
  %850 = trunc i64 %849 to i32
  %851 = icmp slt i32 %850, 0
  br i1 %851, label %852, label %860

852:                                              ; preds = %843
  %853 = load i32, ptr %841, align 4, !tbaa !4
  %854 = icmp eq i32 %853, 11
  br i1 %854, label %855, label %857

855:                                              ; preds = %852
  store i32 1, ptr %790, align 4, !tbaa !17
  %856 = load i32, ptr %841, align 4, !tbaa !4
  br label %857

857:                                              ; preds = %855, %852
  %858 = phi i32 [ %853, %852 ], [ %856, %855 ]
  %859 = tail call ptr @strerror(i32 noundef %858) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %859) #15
  br label %933

860:                                              ; preds = %843
  %861 = load i32, ptr %421, align 8, !tbaa !30
  %862 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %861, i32 %850), !nosanitize !32
  %863 = extractvalue { i32, i1 } %862, 1, !nosanitize !32
  br i1 %863, label %864, label %865, !prof !33, !nosanitize !32

864:                                              ; preds = %860
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

865:                                              ; preds = %860
  %866 = extractvalue { i32, i1 } %862, 0, !nosanitize !32
  store i32 %866, ptr %421, align 8, !tbaa !30
  %867 = load ptr, ptr %420, align 8, !tbaa !25
  %868 = and i64 %849, 2147483647
  %869 = getelementptr inbounds nuw i8, ptr %867, i64 %868
  store ptr %869, ptr %420, align 8, !tbaa !25
  %870 = icmp eq i32 %866, 0
  br i1 %870, label %933, label %843, !llvm.loop !34

871:                                              ; preds = %834, %832
  %872 = load i32, ptr %795, align 8, !tbaa !36
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %879, label %874

874:                                              ; preds = %871
  %875 = load i32, ptr %421, align 8, !tbaa !30
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %933, label %877

877:                                              ; preds = %874
  %878 = tail call i32 @deflateReset(ptr noundef nonnull %420) #15
  store i32 0, ptr %795, align 8, !tbaa !36
  br label %879

879:                                              ; preds = %877, %871
  %880 = load i32, ptr %792, align 8, !tbaa !26
  br label %881

881:                                              ; preds = %931, %879
  %882 = phi i32 [ %880, %879 ], [ %928, %931 ]
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %884, label %922

884:                                              ; preds = %881
  %885 = load ptr, ptr %793, align 8, !tbaa !27
  %886 = load ptr, ptr %794, align 8, !tbaa !28
  %887 = icmp ugt ptr %885, %886
  br i1 %887, label %888, label %919

888:                                              ; preds = %884
  %889 = tail call ptr @__errno_location() #17
  br label %890

890:                                              ; preds = %910, %888
  %891 = phi ptr [ %886, %888 ], [ %913, %910 ]
  %892 = phi ptr [ %885, %888 ], [ %914, %910 ]
  store i32 0, ptr %889, align 4, !tbaa !4
  store i32 0, ptr %790, align 4, !tbaa !17
  %893 = ptrtoint ptr %892 to i64
  %894 = ptrtoint ptr %891 to i64
  %895 = sub i64 %893, %894
  %896 = tail call i64 @llvm.smin.i64(i64 %895, i64 1073741824)
  %897 = and i64 %896, 4294967295
  %898 = load i32, ptr %791, align 4, !tbaa !31
  %899 = tail call i64 @write(i32 noundef %898, ptr noundef %891, i64 noundef %897) #15
  %900 = and i64 %899, 2147483648
  %901 = icmp eq i64 %900, 0
  br i1 %901, label %910, label %902

902:                                              ; preds = %890
  %903 = load i32, ptr %889, align 4, !tbaa !4
  %904 = icmp eq i32 %903, 11
  br i1 %904, label %905, label %907

905:                                              ; preds = %902
  store i32 1, ptr %790, align 4, !tbaa !17
  %906 = load i32, ptr %889, align 4, !tbaa !4
  br label %907

907:                                              ; preds = %905, %902
  %908 = phi i32 [ %903, %902 ], [ %906, %905 ]
  %909 = tail call ptr @strerror(i32 noundef %908) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %909) #15
  br label %933

910:                                              ; preds = %890
  %911 = load ptr, ptr %794, align 8, !tbaa !28
  %912 = and i64 %899, 2147483647
  %913 = getelementptr inbounds nuw i8, ptr %911, i64 %912
  store ptr %913, ptr %794, align 8, !tbaa !28
  %914 = load ptr, ptr %793, align 8, !tbaa !27
  %915 = icmp ugt ptr %914, %913
  br i1 %915, label %890, label %916, !llvm.loop !37

916:                                              ; preds = %910
  %917 = load i32, ptr %792, align 8, !tbaa !26
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %919, label %922

919:                                              ; preds = %916, %884
  %920 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %920, ptr %792, align 8, !tbaa !26
  %921 = load ptr, ptr %786, align 8, !tbaa !22
  store ptr %921, ptr %793, align 8, !tbaa !27
  store ptr %921, ptr %794, align 8, !tbaa !28
  br label %922

922:                                              ; preds = %919, %916, %881
  %923 = phi i32 [ %917, %916 ], [ %920, %919 ], [ %882, %881 ]
  %924 = tail call i32 @deflate(ptr noundef nonnull %420, i32 noundef 0) #15
  %925 = icmp eq i32 %924, -2
  br i1 %925, label %926, label %927

926:                                              ; preds = %922
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %933

927:                                              ; preds = %922
  %928 = load i32, ptr %792, align 8, !tbaa !26
  %929 = icmp ult i32 %923, %928
  br i1 %929, label %930, label %931, !prof !33, !nosanitize !32

930:                                              ; preds = %927
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

931:                                              ; preds = %927
  %932 = icmp eq i32 %923, %928
  br i1 %932, label %933, label %881, !llvm.loop !38

933:                                              ; preds = %931, %926, %907, %874, %865, %857, %837, %825, %819, %809
  %934 = phi i1 [ false, %874 ], [ true, %857 ], [ false, %837 ], [ true, %819 ], [ true, %907 ], [ true, %926 ], [ false, %931 ], [ true, %809 ], [ true, %825 ], [ false, %865 ]
  %935 = load i32, ptr %421, align 8, !tbaa !41
  %936 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %800, i32 %935), !nosanitize !32
  %937 = extractvalue { i32, i1 } %936, 1, !nosanitize !32
  br i1 %937, label %938, label %939, !prof !33, !nosanitize !32

938:                                              ; preds = %933
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

939:                                              ; preds = %933
  %940 = extractvalue { i32, i1 } %936, 0, !nosanitize !32
  %941 = zext i32 %940 to i64
  %942 = load i64, ptr %796, align 8, !tbaa !39
  %943 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %942, i64 %941), !nosanitize !32
  %944 = extractvalue { i64, i1 } %943, 1, !nosanitize !32
  br i1 %944, label %470, label %945, !prof !33, !nosanitize !32

945:                                              ; preds = %939
  %946 = extractvalue { i64, i1 } %943, 0, !nosanitize !32
  store i64 %946, ptr %796, align 8, !tbaa !39
  %947 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %798, i64 %941), !nosanitize !32
  %948 = extractvalue { i64, i1 } %947, 0, !nosanitize !32
  %949 = extractvalue { i64, i1 } %947, 1, !nosanitize !32
  br i1 %949, label %950, label %951, !prof !33, !nosanitize !32

950:                                              ; preds = %945
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

951:                                              ; preds = %945
  br i1 %934, label %952, label %960

952:                                              ; preds = %951
  %953 = load i32, ptr %790, align 4, !tbaa !17
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %962, label %955

955:                                              ; preds = %952
  %956 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %21, i64 %948), !nosanitize !32
  %957 = extractvalue { i64, i1 } %956, 0, !nosanitize !32
  %958 = extractvalue { i64, i1 } %956, 1, !nosanitize !32
  br i1 %958, label %959, label %962, !prof !33, !nosanitize !32

959:                                              ; preds = %955
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

960:                                              ; preds = %951
  %961 = icmp eq i64 %948, 0
  br i1 %961, label %962, label %797, !llvm.loop !43

962:                                              ; preds = %960, %955, %952, %775, %756, %699, %661, %652, %640, %622, %619, %483, %412, %224, %205, %148, %110, %101, %89, %57, %48, %36, %20
  %963 = phi i64 [ 0, %661 ], [ 0, %20 ], [ %21, %960 ], [ 0, %952 ], [ 0, %619 ], [ 0, %48 ], [ %21, %483 ], [ 0, %36 ], [ 0, %57 ], [ 0, %89 ], [ 0, %110 ], [ 0, %148 ], [ 0, %101 ], [ 0, %205 ], [ 0, %224 ], [ %624, %622 ], [ 0, %699 ], [ 0, %652 ], [ 0, %756 ], [ 0, %775 ], [ 0, %640 ], [ %957, %955 ], [ 0, %412 ]
  %964 = trunc i64 %963 to i32
  br label %965

965:                                              ; preds = %962, %19, %13, %5, %3
  %966 = phi i32 [ %964, %962 ], [ 0, %3 ], [ 0, %19 ], [ 0, %13 ], [ 0, %5 ]
  ret i32 %966
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfwrite(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %974, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %974

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %974, label %18

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
  br label %974

29:                                               ; preds = %25, %23
  %30 = icmp eq i64 %20, 0
  br i1 %30, label %974, label %31

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
  br label %971

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
  br label %971

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
  br label %971

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
  br i1 %81, label %425, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %84 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %85 = load i32, ptr %84, align 8, !tbaa !30
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %239, label %87

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
  br label %971

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
  br label %971

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
  br label %971

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
  br i1 %136, label %239, label %137

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
  br label %971

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
  br i1 %169, label %239, label %142, !llvm.loop !34

170:                                              ; preds = %130, %125
  %171 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %172 = load i32, ptr %171, align 8, !tbaa !36
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %170
  %175 = load i32, ptr %84, align 8, !tbaa !30
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %239, label %177

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
  br label %971

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
  br label %971

233:                                              ; preds = %228
  %234 = load i32, ptr %180, align 8, !tbaa !26
  %235 = icmp ult i32 %229, %234
  br i1 %235, label %236, label %237, !prof !33, !nosanitize !32

236:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

237:                                              ; preds = %233
  %238 = icmp eq i32 %229, %234
  br i1 %238, label %239, label %187, !llvm.loop !38

239:                                              ; preds = %237, %174, %164, %134, %82
  %240 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %241 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %242 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %243 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %244 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %245 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %246 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %247 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %248 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %249 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %250 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %251 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %252 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %253 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %254 = load i64, ptr %79, align 8, !tbaa !29
  br label %255

255:                                              ; preds = %421, %239
  %256 = phi i64 [ %254, %239 ], [ %418, %421 ]
  %257 = phi i1 [ false, %239 ], [ true, %421 ]
  %258 = load i32, ptr %32, align 8, !tbaa !18
  %259 = zext i32 %258 to i64
  %260 = tail call i64 @llvm.smin.i64(i64 %256, i64 %259)
  %261 = trunc i64 %260 to i32
  %262 = load ptr, ptr %240, align 8, !tbaa !20
  br i1 %257, label %267, label %263

263:                                              ; preds = %255
  %264 = and i64 %260, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %262, i8 0, i64 %264, i1 false)
  %265 = load ptr, ptr %240, align 8, !tbaa !20
  %266 = load i32, ptr %32, align 8, !tbaa !18
  br label %267

267:                                              ; preds = %263, %255
  %268 = phi i32 [ %266, %263 ], [ %258, %255 ]
  %269 = phi ptr [ %265, %263 ], [ %262, %255 ]
  store i32 %261, ptr %84, align 8, !tbaa !30
  store ptr %269, ptr %83, align 8, !tbaa !25
  %270 = icmp eq i32 %268, 0
  br i1 %270, label %271, label %302

271:                                              ; preds = %267
  %272 = load i32, ptr %242, align 4, !tbaa !19
  %273 = shl i32 %272, 1
  %274 = zext i32 %273 to i64
  %275 = tail call noalias ptr @malloc(i64 noundef %274) #16
  store ptr %275, ptr %240, align 8, !tbaa !20
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %278

277:                                              ; preds = %271
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %401

278:                                              ; preds = %271
  %279 = load i32, ptr %241, align 8, !tbaa !21
  %280 = icmp eq i32 %279, 0
  %281 = load i32, ptr %242, align 4, !tbaa !19
  br i1 %280, label %283, label %282

282:                                              ; preds = %278
  store i32 %281, ptr %32, align 8, !tbaa !18
  br label %305

283:                                              ; preds = %278
  %284 = zext i32 %281 to i64
  %285 = tail call noalias ptr @malloc(i64 noundef %284) #16
  store ptr %285, ptr %243, align 8, !tbaa !22
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %288

287:                                              ; preds = %283
  tail call void @free(ptr noundef nonnull %275) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %401

288:                                              ; preds = %283
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %244, i8 0, i64 24, i1 false)
  %289 = load i32, ptr %245, align 8, !tbaa !23
  %290 = load i32, ptr %246, align 4, !tbaa !24
  %291 = tail call i32 @deflateInit2_(ptr noundef nonnull %83, i32 noundef %289, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %290, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %288
  %294 = load ptr, ptr %243, align 8, !tbaa !22
  tail call void @free(ptr noundef %294) #15
  %295 = load ptr, ptr %240, align 8, !tbaa !20
  tail call void @free(ptr noundef %295) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %401

296:                                              ; preds = %288
  store ptr null, ptr %83, align 8, !tbaa !25
  %297 = load i32, ptr %241, align 8, !tbaa !21
  %298 = load i32, ptr %242, align 4, !tbaa !19
  store i32 %298, ptr %32, align 8, !tbaa !18
  %299 = icmp eq i32 %297, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %296
  store i32 %298, ptr %249, align 8, !tbaa !26
  %301 = load ptr, ptr %243, align 8, !tbaa !22
  store ptr %301, ptr %250, align 8, !tbaa !27
  store ptr %301, ptr %251, align 8, !tbaa !28
  br label %339

302:                                              ; preds = %267
  %303 = load i32, ptr %241, align 8, !tbaa !21
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %339, label %305

305:                                              ; preds = %302, %296, %282
  %306 = phi ptr [ %269, %302 ], [ null, %296 ], [ %269, %282 ]
  %307 = load i32, ptr %84, align 8, !tbaa !30
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %401, label %309

309:                                              ; preds = %305
  %310 = tail call ptr @__errno_location() #17
  br label %311

311:                                              ; preds = %333, %309
  %312 = phi ptr [ %306, %309 ], [ %337, %333 ]
  store i32 0, ptr %310, align 4, !tbaa !4
  store i32 0, ptr %247, align 4, !tbaa !17
  %313 = load i32, ptr %84, align 8, !tbaa !30
  %314 = tail call i32 @llvm.umin.i32(i32 %313, i32 1073741824)
  %315 = zext nneg i32 %314 to i64
  %316 = load i32, ptr %248, align 4, !tbaa !31
  %317 = tail call i64 @write(i32 noundef %316, ptr noundef %312, i64 noundef %315) #15
  %318 = trunc i64 %317 to i32
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %311
  %321 = load i32, ptr %310, align 4, !tbaa !4
  %322 = icmp eq i32 %321, 11
  br i1 %322, label %323, label %325

323:                                              ; preds = %320
  store i32 1, ptr %247, align 4, !tbaa !17
  %324 = load i32, ptr %310, align 4, !tbaa !4
  br label %325

325:                                              ; preds = %323, %320
  %326 = phi i32 [ %321, %320 ], [ %324, %323 ]
  %327 = tail call ptr @strerror(i32 noundef %326) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %327) #15
  br label %401

328:                                              ; preds = %311
  %329 = load i32, ptr %84, align 8, !tbaa !30
  %330 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %329, i32 %318), !nosanitize !32
  %331 = extractvalue { i32, i1 } %330, 1, !nosanitize !32
  br i1 %331, label %332, label %333, !prof !33, !nosanitize !32

332:                                              ; preds = %328
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

333:                                              ; preds = %328
  %334 = extractvalue { i32, i1 } %330, 0, !nosanitize !32
  store i32 %334, ptr %84, align 8, !tbaa !30
  %335 = load ptr, ptr %83, align 8, !tbaa !25
  %336 = and i64 %317, 2147483647
  %337 = getelementptr inbounds nuw i8, ptr %335, i64 %336
  store ptr %337, ptr %83, align 8, !tbaa !25
  %338 = icmp eq i32 %334, 0
  br i1 %338, label %401, label %311, !llvm.loop !34

339:                                              ; preds = %302, %300
  %340 = load i32, ptr %252, align 8, !tbaa !36
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %347, label %342

342:                                              ; preds = %339
  %343 = load i32, ptr %84, align 8, !tbaa !30
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %401, label %345

345:                                              ; preds = %342
  %346 = tail call i32 @deflateReset(ptr noundef nonnull %83) #15
  store i32 0, ptr %252, align 8, !tbaa !36
  br label %347

347:                                              ; preds = %345, %339
  %348 = load i32, ptr %249, align 8, !tbaa !26
  br label %349

349:                                              ; preds = %399, %347
  %350 = phi i32 [ %348, %347 ], [ %396, %399 ]
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %390

352:                                              ; preds = %349
  %353 = load ptr, ptr %250, align 8, !tbaa !27
  %354 = load ptr, ptr %251, align 8, !tbaa !28
  %355 = icmp ugt ptr %353, %354
  br i1 %355, label %356, label %387

356:                                              ; preds = %352
  %357 = tail call ptr @__errno_location() #17
  br label %358

358:                                              ; preds = %378, %356
  %359 = phi ptr [ %354, %356 ], [ %381, %378 ]
  %360 = phi ptr [ %353, %356 ], [ %382, %378 ]
  store i32 0, ptr %357, align 4, !tbaa !4
  store i32 0, ptr %247, align 4, !tbaa !17
  %361 = ptrtoint ptr %360 to i64
  %362 = ptrtoint ptr %359 to i64
  %363 = sub i64 %361, %362
  %364 = tail call i64 @llvm.smin.i64(i64 %363, i64 1073741824)
  %365 = and i64 %364, 4294967295
  %366 = load i32, ptr %248, align 4, !tbaa !31
  %367 = tail call i64 @write(i32 noundef %366, ptr noundef %359, i64 noundef %365) #15
  %368 = and i64 %367, 2147483648
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %378, label %370

370:                                              ; preds = %358
  %371 = load i32, ptr %357, align 4, !tbaa !4
  %372 = icmp eq i32 %371, 11
  br i1 %372, label %373, label %375

373:                                              ; preds = %370
  store i32 1, ptr %247, align 4, !tbaa !17
  %374 = load i32, ptr %357, align 4, !tbaa !4
  br label %375

375:                                              ; preds = %373, %370
  %376 = phi i32 [ %371, %370 ], [ %374, %373 ]
  %377 = tail call ptr @strerror(i32 noundef %376) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %377) #15
  br label %401

378:                                              ; preds = %358
  %379 = load ptr, ptr %251, align 8, !tbaa !28
  %380 = and i64 %367, 2147483647
  %381 = getelementptr inbounds nuw i8, ptr %379, i64 %380
  store ptr %381, ptr %251, align 8, !tbaa !28
  %382 = load ptr, ptr %250, align 8, !tbaa !27
  %383 = icmp ugt ptr %382, %381
  br i1 %383, label %358, label %384, !llvm.loop !37

384:                                              ; preds = %378
  %385 = load i32, ptr %249, align 8, !tbaa !26
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %384, %352
  %388 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %388, ptr %249, align 8, !tbaa !26
  %389 = load ptr, ptr %243, align 8, !tbaa !22
  store ptr %389, ptr %250, align 8, !tbaa !27
  store ptr %389, ptr %251, align 8, !tbaa !28
  br label %390

390:                                              ; preds = %387, %384, %349
  %391 = phi i32 [ %385, %384 ], [ %388, %387 ], [ %350, %349 ]
  %392 = tail call i32 @deflate(ptr noundef nonnull %83, i32 noundef 0) #15
  %393 = icmp eq i32 %392, -2
  br i1 %393, label %394, label %395

394:                                              ; preds = %390
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %401

395:                                              ; preds = %390
  %396 = load i32, ptr %249, align 8, !tbaa !26
  %397 = icmp ult i32 %391, %396
  br i1 %397, label %398, label %399, !prof !33, !nosanitize !32

398:                                              ; preds = %395
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

399:                                              ; preds = %395
  %400 = icmp eq i32 %391, %396
  br i1 %400, label %401, label %349, !llvm.loop !38

401:                                              ; preds = %399, %394, %375, %342, %333, %325, %305, %293, %287, %277
  %402 = phi i1 [ false, %342 ], [ true, %325 ], [ false, %305 ], [ true, %287 ], [ true, %375 ], [ true, %394 ], [ false, %399 ], [ true, %277 ], [ true, %293 ], [ false, %333 ]
  %403 = load i32, ptr %84, align 8, !tbaa !30
  %404 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %261, i32 %403), !nosanitize !32
  %405 = extractvalue { i32, i1 } %404, 1, !nosanitize !32
  br i1 %405, label %406, label %407, !prof !33, !nosanitize !32

406:                                              ; preds = %414, %401
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

407:                                              ; preds = %401
  %408 = extractvalue { i32, i1 } %404, 0, !nosanitize !32
  %409 = zext i32 %408 to i64
  %410 = load i64, ptr %253, align 8, !tbaa !39
  %411 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %410, i64 %409), !nosanitize !32
  %412 = extractvalue { i64, i1 } %411, 1, !nosanitize !32
  br i1 %412, label %413, label %414, !prof !33, !nosanitize !32

413:                                              ; preds = %407
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !32
  unreachable, !nosanitize !32

414:                                              ; preds = %407
  %415 = extractvalue { i64, i1 } %411, 0, !nosanitize !32
  store i64 %415, ptr %253, align 8, !tbaa !39
  %416 = load i64, ptr %79, align 8, !tbaa !29
  %417 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %416, i64 %409), !nosanitize !32
  %418 = extractvalue { i64, i1 } %417, 0, !nosanitize !32
  %419 = extractvalue { i64, i1 } %417, 1, !nosanitize !32
  br i1 %419, label %406, label %420, !prof !33, !nosanitize !32

420:                                              ; preds = %414
  store i64 %418, ptr %79, align 8, !tbaa !29
  br i1 %402, label %971, label %421

421:                                              ; preds = %420
  %422 = icmp eq i64 %418, 0
  br i1 %422, label %423, label %255, !llvm.loop !40

423:                                              ; preds = %421
  %424 = load i32, ptr %32, align 8, !tbaa !18
  br label %425

425:                                              ; preds = %423, %77
  %426 = phi i32 [ %424, %423 ], [ %78, %77 ]
  %427 = zext i32 %426 to i64
  %428 = icmp ult i64 %20, %427
  %429 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %430 = getelementptr inbounds nuw i8, ptr %3, i64 144
  br i1 %428, label %431, label %636

431:                                              ; preds = %425
  %432 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %433 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %434 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %435 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %436 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %437 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %438 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %439 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %440 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %441 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %442 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %443 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %444 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %445 = getelementptr inbounds nuw i8, ptr %3, i64 104
  br label %446

446:                                              ; preds = %571, %431
  %447 = phi i64 [ %20, %431 ], [ %489, %571 ]
  %448 = phi ptr [ %0, %431 ], [ %487, %571 ]
  %449 = load i32, ptr %430, align 8, !tbaa !41
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %454, label %451

451:                                              ; preds = %446
  %452 = load ptr, ptr %429, align 8, !tbaa !42
  %453 = load ptr, ptr %432, align 8, !tbaa !20
  br label %456

454:                                              ; preds = %446
  %455 = load ptr, ptr %432, align 8, !tbaa !20
  store ptr %455, ptr %429, align 8, !tbaa !42
  br label %456

456:                                              ; preds = %454, %451
  %457 = phi ptr [ %453, %451 ], [ %455, %454 ]
  %458 = phi ptr [ %452, %451 ], [ %455, %454 ]
  %459 = zext i32 %449 to i64
  %460 = getelementptr inbounds nuw i8, ptr %458, i64 %459
  %461 = ptrtoint ptr %460 to i64
  %462 = ptrtoint ptr %457 to i64
  %463 = sub i64 %461, %462
  %464 = trunc i64 %463 to i32
  %465 = load i32, ptr %32, align 8, !tbaa !18
  %466 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %465, i32 %464), !nosanitize !32
  %467 = extractvalue { i32, i1 } %466, 1, !nosanitize !32
  br i1 %467, label %468, label %469, !prof !33, !nosanitize !32

468:                                              ; preds = %456
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

469:                                              ; preds = %456
  %470 = extractvalue { i32, i1 } %466, 0, !nosanitize !32
  %471 = zext i32 %470 to i64
  %472 = tail call i64 @llvm.umin.i64(i64 %447, i64 %471)
  %473 = trunc nuw i64 %472 to i32
  %474 = and i64 %463, 4294967295
  %475 = getelementptr inbounds nuw i8, ptr %457, i64 %474
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %475, ptr align 1 %448, i64 %472, i1 false)
  %476 = load i32, ptr %430, align 8, !tbaa !41
  %477 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %476, i32 %473), !nosanitize !32
  %478 = extractvalue { i32, i1 } %477, 1, !nosanitize !32
  br i1 %478, label %479, label %480, !prof !33, !nosanitize !32

479:                                              ; preds = %948, %480, %469
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

480:                                              ; preds = %469
  %481 = extractvalue { i32, i1 } %477, 0, !nosanitize !32
  store i32 %481, ptr %430, align 8, !tbaa !41
  %482 = load i64, ptr %433, align 8, !tbaa !39
  %483 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %482, i64 %472), !nosanitize !32
  %484 = extractvalue { i64, i1 } %483, 1, !nosanitize !32
  br i1 %484, label %479, label %485, !prof !33, !nosanitize !32

485:                                              ; preds = %480
  %486 = extractvalue { i64, i1 } %483, 0, !nosanitize !32
  store i64 %486, ptr %433, align 8, !tbaa !39
  %487 = getelementptr inbounds nuw i8, ptr %448, i64 %472
  %488 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %447, i64 %472), !nosanitize !32
  %489 = extractvalue { i64, i1 } %488, 0, !nosanitize !32
  %490 = extractvalue { i64, i1 } %488, 1, !nosanitize !32
  br i1 %490, label %491, label %492, !prof !33, !nosanitize !32

491:                                              ; preds = %485
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

492:                                              ; preds = %485
  %493 = icmp eq i64 %489, 0
  br i1 %493, label %971, label %494

494:                                              ; preds = %492
  %495 = load i32, ptr %32, align 8, !tbaa !18
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %528

497:                                              ; preds = %494
  %498 = load i32, ptr %435, align 4, !tbaa !19
  %499 = shl i32 %498, 1
  %500 = zext i32 %499 to i64
  %501 = tail call noalias ptr @malloc(i64 noundef %500) #16
  store ptr %501, ptr %432, align 8, !tbaa !20
  %502 = icmp eq ptr %501, null
  br i1 %502, label %503, label %504

503:                                              ; preds = %497
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %628

504:                                              ; preds = %497
  %505 = load i32, ptr %434, align 8, !tbaa !21
  %506 = icmp eq i32 %505, 0
  %507 = load i32, ptr %435, align 4, !tbaa !19
  br i1 %506, label %509, label %508

508:                                              ; preds = %504
  store i32 %507, ptr %32, align 8, !tbaa !18
  br label %531

509:                                              ; preds = %504
  %510 = zext i32 %507 to i64
  %511 = tail call noalias ptr @malloc(i64 noundef %510) #16
  store ptr %511, ptr %436, align 8, !tbaa !22
  %512 = icmp eq ptr %511, null
  br i1 %512, label %513, label %514

513:                                              ; preds = %509
  tail call void @free(ptr noundef nonnull %501) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %628

514:                                              ; preds = %509
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %437, i8 0, i64 24, i1 false)
  %515 = load i32, ptr %438, align 8, !tbaa !23
  %516 = load i32, ptr %439, align 4, !tbaa !24
  %517 = tail call i32 @deflateInit2_(ptr noundef nonnull %429, i32 noundef %515, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %516, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %522, label %519

519:                                              ; preds = %514
  %520 = load ptr, ptr %436, align 8, !tbaa !22
  tail call void @free(ptr noundef %520) #15
  %521 = load ptr, ptr %432, align 8, !tbaa !20
  tail call void @free(ptr noundef %521) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %628

522:                                              ; preds = %514
  store ptr null, ptr %429, align 8, !tbaa !25
  %523 = load i32, ptr %434, align 8, !tbaa !21
  %524 = load i32, ptr %435, align 4, !tbaa !19
  store i32 %524, ptr %32, align 8, !tbaa !18
  %525 = icmp eq i32 %523, 0
  br i1 %525, label %526, label %531

526:                                              ; preds = %522
  store i32 %524, ptr %442, align 8, !tbaa !26
  %527 = load ptr, ptr %436, align 8, !tbaa !22
  store ptr %527, ptr %443, align 8, !tbaa !27
  store ptr %527, ptr %444, align 8, !tbaa !28
  br label %565

528:                                              ; preds = %494
  %529 = load i32, ptr %434, align 8, !tbaa !21
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %565, label %531

531:                                              ; preds = %528, %522, %508
  %532 = load i32, ptr %430, align 8, !tbaa !30
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %571, label %534

534:                                              ; preds = %531
  %535 = tail call ptr @__errno_location() #17
  %536 = load ptr, ptr %429, align 8, !tbaa !25
  br label %537

537:                                              ; preds = %559, %534
  %538 = phi ptr [ %536, %534 ], [ %563, %559 ]
  store i32 0, ptr %535, align 4, !tbaa !4
  store i32 0, ptr %440, align 4, !tbaa !17
  %539 = load i32, ptr %430, align 8, !tbaa !30
  %540 = tail call i32 @llvm.umin.i32(i32 %539, i32 1073741824)
  %541 = zext nneg i32 %540 to i64
  %542 = load i32, ptr %441, align 4, !tbaa !31
  %543 = tail call i64 @write(i32 noundef %542, ptr noundef %538, i64 noundef %541) #15
  %544 = trunc i64 %543 to i32
  %545 = icmp slt i32 %544, 0
  br i1 %545, label %546, label %554

546:                                              ; preds = %537
  %547 = load i32, ptr %535, align 4, !tbaa !4
  %548 = icmp eq i32 %547, 11
  br i1 %548, label %549, label %551

549:                                              ; preds = %546
  store i32 1, ptr %440, align 4, !tbaa !17
  %550 = load i32, ptr %535, align 4, !tbaa !4
  br label %551

551:                                              ; preds = %549, %546
  %552 = phi i32 [ %547, %546 ], [ %550, %549 ]
  %553 = tail call ptr @strerror(i32 noundef %552) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %553) #15
  br label %628

554:                                              ; preds = %537
  %555 = load i32, ptr %430, align 8, !tbaa !30
  %556 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %555, i32 %544), !nosanitize !32
  %557 = extractvalue { i32, i1 } %556, 1, !nosanitize !32
  br i1 %557, label %558, label %559, !prof !33, !nosanitize !32

558:                                              ; preds = %554
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

559:                                              ; preds = %554
  %560 = extractvalue { i32, i1 } %556, 0, !nosanitize !32
  store i32 %560, ptr %430, align 8, !tbaa !30
  %561 = load ptr, ptr %429, align 8, !tbaa !25
  %562 = and i64 %543, 2147483647
  %563 = getelementptr inbounds nuw i8, ptr %561, i64 %562
  store ptr %563, ptr %429, align 8, !tbaa !25
  %564 = icmp eq i32 %560, 0
  br i1 %564, label %571, label %537, !llvm.loop !34

565:                                              ; preds = %528, %526
  %566 = load i32, ptr %445, align 8, !tbaa !36
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %574, label %568

568:                                              ; preds = %565
  %569 = load i32, ptr %430, align 8, !tbaa !30
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %572

571:                                              ; preds = %626, %568, %559, %531
  br label %446

572:                                              ; preds = %568
  %573 = tail call i32 @deflateReset(ptr noundef nonnull %429) #15
  store i32 0, ptr %445, align 8, !tbaa !36
  br label %574

574:                                              ; preds = %572, %565
  %575 = load i32, ptr %442, align 8, !tbaa !26
  br label %576

576:                                              ; preds = %626, %574
  %577 = phi i32 [ %575, %574 ], [ %623, %626 ]
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %617

579:                                              ; preds = %576
  %580 = load ptr, ptr %443, align 8, !tbaa !27
  %581 = load ptr, ptr %444, align 8, !tbaa !28
  %582 = icmp ugt ptr %580, %581
  br i1 %582, label %583, label %614

583:                                              ; preds = %579
  %584 = tail call ptr @__errno_location() #17
  br label %585

585:                                              ; preds = %605, %583
  %586 = phi ptr [ %581, %583 ], [ %608, %605 ]
  %587 = phi ptr [ %580, %583 ], [ %609, %605 ]
  store i32 0, ptr %584, align 4, !tbaa !4
  store i32 0, ptr %440, align 4, !tbaa !17
  %588 = ptrtoint ptr %587 to i64
  %589 = ptrtoint ptr %586 to i64
  %590 = sub i64 %588, %589
  %591 = tail call i64 @llvm.smin.i64(i64 %590, i64 1073741824)
  %592 = and i64 %591, 4294967295
  %593 = load i32, ptr %441, align 4, !tbaa !31
  %594 = tail call i64 @write(i32 noundef %593, ptr noundef %586, i64 noundef %592) #15
  %595 = and i64 %594, 2147483648
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %605, label %597

597:                                              ; preds = %585
  %598 = load i32, ptr %584, align 4, !tbaa !4
  %599 = icmp eq i32 %598, 11
  br i1 %599, label %600, label %602

600:                                              ; preds = %597
  store i32 1, ptr %440, align 4, !tbaa !17
  %601 = load i32, ptr %584, align 4, !tbaa !4
  br label %602

602:                                              ; preds = %600, %597
  %603 = phi i32 [ %598, %597 ], [ %601, %600 ]
  %604 = tail call ptr @strerror(i32 noundef %603) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %604) #15
  br label %628

605:                                              ; preds = %585
  %606 = load ptr, ptr %444, align 8, !tbaa !28
  %607 = and i64 %594, 2147483647
  %608 = getelementptr inbounds nuw i8, ptr %606, i64 %607
  store ptr %608, ptr %444, align 8, !tbaa !28
  %609 = load ptr, ptr %443, align 8, !tbaa !27
  %610 = icmp ugt ptr %609, %608
  br i1 %610, label %585, label %611, !llvm.loop !37

611:                                              ; preds = %605
  %612 = load i32, ptr %442, align 8, !tbaa !26
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %614, label %617

614:                                              ; preds = %611, %579
  %615 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %615, ptr %442, align 8, !tbaa !26
  %616 = load ptr, ptr %436, align 8, !tbaa !22
  store ptr %616, ptr %443, align 8, !tbaa !27
  store ptr %616, ptr %444, align 8, !tbaa !28
  br label %617

617:                                              ; preds = %614, %611, %576
  %618 = phi i32 [ %612, %611 ], [ %615, %614 ], [ %577, %576 ]
  %619 = tail call i32 @deflate(ptr noundef nonnull %429, i32 noundef 0) #15
  %620 = icmp eq i32 %619, -2
  br i1 %620, label %621, label %622

621:                                              ; preds = %617
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %628

622:                                              ; preds = %617
  %623 = load i32, ptr %442, align 8, !tbaa !26
  %624 = icmp ult i32 %618, %623
  br i1 %624, label %625, label %626, !prof !33, !nosanitize !32

625:                                              ; preds = %622
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

626:                                              ; preds = %622
  %627 = icmp eq i32 %618, %623
  br i1 %627, label %571, label %576, !llvm.loop !38

628:                                              ; preds = %621, %602, %551, %519, %513, %503
  %629 = load i32, ptr %440, align 4, !tbaa !17
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %971, label %631

631:                                              ; preds = %628
  %632 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 %489), !nosanitize !32
  %633 = extractvalue { i64, i1 } %632, 0, !nosanitize !32
  %634 = extractvalue { i64, i1 } %632, 1, !nosanitize !32
  br i1 %634, label %635, label %971, !prof !33, !nosanitize !32

635:                                              ; preds = %631
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

636:                                              ; preds = %425
  %637 = load i32, ptr %430, align 8, !tbaa !41
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %791, label %639

639:                                              ; preds = %636
  %640 = icmp eq i32 %426, 0
  br i1 %640, label %641, label %682

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
  br label %971

650:                                              ; preds = %641
  %651 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %652 = load i32, ptr %651, align 8, !tbaa !21
  %653 = icmp eq i32 %652, 0
  %654 = load i32, ptr %642, align 4, !tbaa !19
  br i1 %653, label %656, label %655

655:                                              ; preds = %650
  store i32 %654, ptr %32, align 8, !tbaa !18
  br label %686

656:                                              ; preds = %650
  %657 = zext i32 %654 to i64
  %658 = tail call noalias ptr @malloc(i64 noundef %657) #16
  %659 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %658, ptr %659, align 8, !tbaa !22
  %660 = icmp eq ptr %658, null
  br i1 %660, label %661, label %662

661:                                              ; preds = %656
  tail call void @free(ptr noundef nonnull %646) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %971

662:                                              ; preds = %656
  %663 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %664 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %663, i8 0, i64 24, i1 false)
  %665 = load i32, ptr %664, align 8, !tbaa !23
  %666 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %667 = load i32, ptr %666, align 4, !tbaa !24
  %668 = tail call i32 @deflateInit2_(ptr noundef nonnull %429, i32 noundef %665, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %667, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %673, label %670

670:                                              ; preds = %662
  %671 = load ptr, ptr %659, align 8, !tbaa !22
  tail call void @free(ptr noundef %671) #15
  %672 = load ptr, ptr %647, align 8, !tbaa !20
  tail call void @free(ptr noundef %672) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %971

673:                                              ; preds = %662
  store ptr null, ptr %429, align 8, !tbaa !25
  %674 = load i32, ptr %651, align 8, !tbaa !21
  %675 = load i32, ptr %642, align 4, !tbaa !19
  store i32 %675, ptr %32, align 8, !tbaa !18
  %676 = icmp eq i32 %674, 0
  br i1 %676, label %677, label %686

677:                                              ; preds = %673
  %678 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 %675, ptr %678, align 8, !tbaa !26
  %679 = load ptr, ptr %659, align 8, !tbaa !22
  %680 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store ptr %679, ptr %680, align 8, !tbaa !27
  %681 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %679, ptr %681, align 8, !tbaa !28
  br label %722

682:                                              ; preds = %639
  %683 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %684 = load i32, ptr %683, align 8, !tbaa !21
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %722, label %686

686:                                              ; preds = %682, %673, %655
  %687 = load i32, ptr %430, align 8, !tbaa !30
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %791, label %689

689:                                              ; preds = %686
  %690 = tail call ptr @__errno_location() #17
  %691 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %692 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %693 = load ptr, ptr %429, align 8, !tbaa !25
  br label %694

694:                                              ; preds = %716, %689
  %695 = phi ptr [ %693, %689 ], [ %720, %716 ]
  store i32 0, ptr %690, align 4, !tbaa !4
  store i32 0, ptr %691, align 4, !tbaa !17
  %696 = load i32, ptr %430, align 8, !tbaa !30
  %697 = tail call i32 @llvm.umin.i32(i32 %696, i32 1073741824)
  %698 = zext nneg i32 %697 to i64
  %699 = load i32, ptr %692, align 4, !tbaa !31
  %700 = tail call i64 @write(i32 noundef %699, ptr noundef %695, i64 noundef %698) #15
  %701 = trunc i64 %700 to i32
  %702 = icmp slt i32 %701, 0
  br i1 %702, label %703, label %711

703:                                              ; preds = %694
  %704 = load i32, ptr %690, align 4, !tbaa !4
  %705 = icmp eq i32 %704, 11
  br i1 %705, label %706, label %708

706:                                              ; preds = %703
  store i32 1, ptr %691, align 4, !tbaa !17
  %707 = load i32, ptr %690, align 4, !tbaa !4
  br label %708

708:                                              ; preds = %706, %703
  %709 = phi i32 [ %704, %703 ], [ %707, %706 ]
  %710 = tail call ptr @strerror(i32 noundef %709) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %710) #15
  br label %971

711:                                              ; preds = %694
  %712 = load i32, ptr %430, align 8, !tbaa !30
  %713 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %712, i32 %701), !nosanitize !32
  %714 = extractvalue { i32, i1 } %713, 1, !nosanitize !32
  br i1 %714, label %715, label %716, !prof !33, !nosanitize !32

715:                                              ; preds = %711
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

716:                                              ; preds = %711
  %717 = extractvalue { i32, i1 } %713, 0, !nosanitize !32
  store i32 %717, ptr %430, align 8, !tbaa !30
  %718 = load ptr, ptr %429, align 8, !tbaa !25
  %719 = and i64 %700, 2147483647
  %720 = getelementptr inbounds nuw i8, ptr %718, i64 %719
  store ptr %720, ptr %429, align 8, !tbaa !25
  %721 = icmp eq i32 %717, 0
  br i1 %721, label %791, label %694, !llvm.loop !34

722:                                              ; preds = %682, %677
  %723 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %724 = load i32, ptr %723, align 8, !tbaa !36
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %731, label %726

726:                                              ; preds = %722
  %727 = load i32, ptr %430, align 8, !tbaa !30
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %791, label %729

729:                                              ; preds = %726
  %730 = tail call i32 @deflateReset(ptr noundef nonnull %429) #15
  store i32 0, ptr %723, align 8, !tbaa !36
  br label %731

731:                                              ; preds = %729, %722
  %732 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %733 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %734 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %735 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %736 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %737 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %738 = load i32, ptr %732, align 8, !tbaa !26
  br label %739

739:                                              ; preds = %789, %731
  %740 = phi i32 [ %738, %731 ], [ %786, %789 ]
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %742, label %780

742:                                              ; preds = %739
  %743 = load ptr, ptr %733, align 8, !tbaa !27
  %744 = load ptr, ptr %734, align 8, !tbaa !28
  %745 = icmp ugt ptr %743, %744
  br i1 %745, label %746, label %777

746:                                              ; preds = %742
  %747 = tail call ptr @__errno_location() #17
  br label %748

748:                                              ; preds = %768, %746
  %749 = phi ptr [ %744, %746 ], [ %771, %768 ]
  %750 = phi ptr [ %743, %746 ], [ %772, %768 ]
  store i32 0, ptr %747, align 4, !tbaa !4
  store i32 0, ptr %735, align 4, !tbaa !17
  %751 = ptrtoint ptr %750 to i64
  %752 = ptrtoint ptr %749 to i64
  %753 = sub i64 %751, %752
  %754 = tail call i64 @llvm.smin.i64(i64 %753, i64 1073741824)
  %755 = and i64 %754, 4294967295
  %756 = load i32, ptr %736, align 4, !tbaa !31
  %757 = tail call i64 @write(i32 noundef %756, ptr noundef %749, i64 noundef %755) #15
  %758 = and i64 %757, 2147483648
  %759 = icmp eq i64 %758, 0
  br i1 %759, label %768, label %760

760:                                              ; preds = %748
  %761 = load i32, ptr %747, align 4, !tbaa !4
  %762 = icmp eq i32 %761, 11
  br i1 %762, label %763, label %765

763:                                              ; preds = %760
  store i32 1, ptr %735, align 4, !tbaa !17
  %764 = load i32, ptr %747, align 4, !tbaa !4
  br label %765

765:                                              ; preds = %763, %760
  %766 = phi i32 [ %761, %760 ], [ %764, %763 ]
  %767 = tail call ptr @strerror(i32 noundef %766) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %767) #15
  br label %971

768:                                              ; preds = %748
  %769 = load ptr, ptr %734, align 8, !tbaa !28
  %770 = and i64 %757, 2147483647
  %771 = getelementptr inbounds nuw i8, ptr %769, i64 %770
  store ptr %771, ptr %734, align 8, !tbaa !28
  %772 = load ptr, ptr %733, align 8, !tbaa !27
  %773 = icmp ugt ptr %772, %771
  br i1 %773, label %748, label %774, !llvm.loop !37

774:                                              ; preds = %768
  %775 = load i32, ptr %732, align 8, !tbaa !26
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %777, label %780

777:                                              ; preds = %774, %742
  %778 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %778, ptr %732, align 8, !tbaa !26
  %779 = load ptr, ptr %737, align 8, !tbaa !22
  store ptr %779, ptr %733, align 8, !tbaa !27
  store ptr %779, ptr %734, align 8, !tbaa !28
  br label %780

780:                                              ; preds = %777, %774, %739
  %781 = phi i32 [ %775, %774 ], [ %778, %777 ], [ %740, %739 ]
  %782 = tail call i32 @deflate(ptr noundef nonnull %429, i32 noundef 0) #15
  %783 = icmp eq i32 %782, -2
  br i1 %783, label %784, label %785

784:                                              ; preds = %780
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %971

785:                                              ; preds = %780
  %786 = load i32, ptr %732, align 8, !tbaa !26
  %787 = icmp ult i32 %781, %786
  br i1 %787, label %788, label %789, !prof !33, !nosanitize !32

788:                                              ; preds = %785
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

789:                                              ; preds = %785
  %790 = icmp eq i32 %781, %786
  br i1 %790, label %791, label %739, !llvm.loop !38

791:                                              ; preds = %789, %726, %716, %686, %636
  store ptr %0, ptr %429, align 8, !tbaa !42
  %792 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %793 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %794 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %795 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %796 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %797 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %798 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %799 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %800 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %801 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %802 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %803 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %804 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %805 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %806

806:                                              ; preds = %969, %791
  %807 = phi i64 [ %20, %791 ], [ %957, %969 ]
  %808 = tail call i64 @llvm.umin.i64(i64 %807, i64 4294967295)
  %809 = trunc nuw i64 %808 to i32
  store i32 %809, ptr %430, align 8, !tbaa !41
  %810 = load i32, ptr %32, align 8, !tbaa !18
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %812, label %843

812:                                              ; preds = %806
  %813 = load i32, ptr %793, align 4, !tbaa !19
  %814 = shl i32 %813, 1
  %815 = zext i32 %814 to i64
  %816 = tail call noalias ptr @malloc(i64 noundef %815) #16
  store ptr %816, ptr %794, align 8, !tbaa !20
  %817 = icmp eq ptr %816, null
  br i1 %817, label %818, label %819

818:                                              ; preds = %812
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %942

819:                                              ; preds = %812
  %820 = load i32, ptr %792, align 8, !tbaa !21
  %821 = icmp eq i32 %820, 0
  %822 = load i32, ptr %793, align 4, !tbaa !19
  br i1 %821, label %824, label %823

823:                                              ; preds = %819
  store i32 %822, ptr %32, align 8, !tbaa !18
  br label %846

824:                                              ; preds = %819
  %825 = zext i32 %822 to i64
  %826 = tail call noalias ptr @malloc(i64 noundef %825) #16
  store ptr %826, ptr %795, align 8, !tbaa !22
  %827 = icmp eq ptr %826, null
  br i1 %827, label %828, label %829

828:                                              ; preds = %824
  tail call void @free(ptr noundef nonnull %816) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %942

829:                                              ; preds = %824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %796, i8 0, i64 24, i1 false)
  %830 = load i32, ptr %797, align 8, !tbaa !23
  %831 = load i32, ptr %798, align 4, !tbaa !24
  %832 = tail call i32 @deflateInit2_(ptr noundef nonnull %429, i32 noundef %830, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %831, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %837, label %834

834:                                              ; preds = %829
  %835 = load ptr, ptr %795, align 8, !tbaa !22
  tail call void @free(ptr noundef %835) #15
  %836 = load ptr, ptr %794, align 8, !tbaa !20
  tail call void @free(ptr noundef %836) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %942

837:                                              ; preds = %829
  store ptr null, ptr %429, align 8, !tbaa !25
  %838 = load i32, ptr %792, align 8, !tbaa !21
  %839 = load i32, ptr %793, align 4, !tbaa !19
  store i32 %839, ptr %32, align 8, !tbaa !18
  %840 = icmp eq i32 %838, 0
  br i1 %840, label %841, label %846

841:                                              ; preds = %837
  store i32 %839, ptr %801, align 8, !tbaa !26
  %842 = load ptr, ptr %795, align 8, !tbaa !22
  store ptr %842, ptr %802, align 8, !tbaa !27
  store ptr %842, ptr %803, align 8, !tbaa !28
  br label %880

843:                                              ; preds = %806
  %844 = load i32, ptr %792, align 8, !tbaa !21
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %880, label %846

846:                                              ; preds = %843, %837, %823
  %847 = load i32, ptr %430, align 8, !tbaa !30
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %942, label %849

849:                                              ; preds = %846
  %850 = tail call ptr @__errno_location() #17
  %851 = load ptr, ptr %429, align 8, !tbaa !25
  br label %852

852:                                              ; preds = %874, %849
  %853 = phi ptr [ %851, %849 ], [ %878, %874 ]
  store i32 0, ptr %850, align 4, !tbaa !4
  store i32 0, ptr %799, align 4, !tbaa !17
  %854 = load i32, ptr %430, align 8, !tbaa !30
  %855 = tail call i32 @llvm.umin.i32(i32 %854, i32 1073741824)
  %856 = zext nneg i32 %855 to i64
  %857 = load i32, ptr %800, align 4, !tbaa !31
  %858 = tail call i64 @write(i32 noundef %857, ptr noundef %853, i64 noundef %856) #15
  %859 = trunc i64 %858 to i32
  %860 = icmp slt i32 %859, 0
  br i1 %860, label %861, label %869

861:                                              ; preds = %852
  %862 = load i32, ptr %850, align 4, !tbaa !4
  %863 = icmp eq i32 %862, 11
  br i1 %863, label %864, label %866

864:                                              ; preds = %861
  store i32 1, ptr %799, align 4, !tbaa !17
  %865 = load i32, ptr %850, align 4, !tbaa !4
  br label %866

866:                                              ; preds = %864, %861
  %867 = phi i32 [ %862, %861 ], [ %865, %864 ]
  %868 = tail call ptr @strerror(i32 noundef %867) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %868) #15
  br label %942

869:                                              ; preds = %852
  %870 = load i32, ptr %430, align 8, !tbaa !30
  %871 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %870, i32 %859), !nosanitize !32
  %872 = extractvalue { i32, i1 } %871, 1, !nosanitize !32
  br i1 %872, label %873, label %874, !prof !33, !nosanitize !32

873:                                              ; preds = %869
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

874:                                              ; preds = %869
  %875 = extractvalue { i32, i1 } %871, 0, !nosanitize !32
  store i32 %875, ptr %430, align 8, !tbaa !30
  %876 = load ptr, ptr %429, align 8, !tbaa !25
  %877 = and i64 %858, 2147483647
  %878 = getelementptr inbounds nuw i8, ptr %876, i64 %877
  store ptr %878, ptr %429, align 8, !tbaa !25
  %879 = icmp eq i32 %875, 0
  br i1 %879, label %942, label %852, !llvm.loop !34

880:                                              ; preds = %843, %841
  %881 = load i32, ptr %804, align 8, !tbaa !36
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %888, label %883

883:                                              ; preds = %880
  %884 = load i32, ptr %430, align 8, !tbaa !30
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %942, label %886

886:                                              ; preds = %883
  %887 = tail call i32 @deflateReset(ptr noundef nonnull %429) #15
  store i32 0, ptr %804, align 8, !tbaa !36
  br label %888

888:                                              ; preds = %886, %880
  %889 = load i32, ptr %801, align 8, !tbaa !26
  br label %890

890:                                              ; preds = %940, %888
  %891 = phi i32 [ %889, %888 ], [ %937, %940 ]
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %893, label %931

893:                                              ; preds = %890
  %894 = load ptr, ptr %802, align 8, !tbaa !27
  %895 = load ptr, ptr %803, align 8, !tbaa !28
  %896 = icmp ugt ptr %894, %895
  br i1 %896, label %897, label %928

897:                                              ; preds = %893
  %898 = tail call ptr @__errno_location() #17
  br label %899

899:                                              ; preds = %919, %897
  %900 = phi ptr [ %895, %897 ], [ %922, %919 ]
  %901 = phi ptr [ %894, %897 ], [ %923, %919 ]
  store i32 0, ptr %898, align 4, !tbaa !4
  store i32 0, ptr %799, align 4, !tbaa !17
  %902 = ptrtoint ptr %901 to i64
  %903 = ptrtoint ptr %900 to i64
  %904 = sub i64 %902, %903
  %905 = tail call i64 @llvm.smin.i64(i64 %904, i64 1073741824)
  %906 = and i64 %905, 4294967295
  %907 = load i32, ptr %800, align 4, !tbaa !31
  %908 = tail call i64 @write(i32 noundef %907, ptr noundef %900, i64 noundef %906) #15
  %909 = and i64 %908, 2147483648
  %910 = icmp eq i64 %909, 0
  br i1 %910, label %919, label %911

911:                                              ; preds = %899
  %912 = load i32, ptr %898, align 4, !tbaa !4
  %913 = icmp eq i32 %912, 11
  br i1 %913, label %914, label %916

914:                                              ; preds = %911
  store i32 1, ptr %799, align 4, !tbaa !17
  %915 = load i32, ptr %898, align 4, !tbaa !4
  br label %916

916:                                              ; preds = %914, %911
  %917 = phi i32 [ %912, %911 ], [ %915, %914 ]
  %918 = tail call ptr @strerror(i32 noundef %917) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %918) #15
  br label %942

919:                                              ; preds = %899
  %920 = load ptr, ptr %803, align 8, !tbaa !28
  %921 = and i64 %908, 2147483647
  %922 = getelementptr inbounds nuw i8, ptr %920, i64 %921
  store ptr %922, ptr %803, align 8, !tbaa !28
  %923 = load ptr, ptr %802, align 8, !tbaa !27
  %924 = icmp ugt ptr %923, %922
  br i1 %924, label %899, label %925, !llvm.loop !37

925:                                              ; preds = %919
  %926 = load i32, ptr %801, align 8, !tbaa !26
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %928, label %931

928:                                              ; preds = %925, %893
  %929 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %929, ptr %801, align 8, !tbaa !26
  %930 = load ptr, ptr %795, align 8, !tbaa !22
  store ptr %930, ptr %802, align 8, !tbaa !27
  store ptr %930, ptr %803, align 8, !tbaa !28
  br label %931

931:                                              ; preds = %928, %925, %890
  %932 = phi i32 [ %926, %925 ], [ %929, %928 ], [ %891, %890 ]
  %933 = tail call i32 @deflate(ptr noundef nonnull %429, i32 noundef 0) #15
  %934 = icmp eq i32 %933, -2
  br i1 %934, label %935, label %936

935:                                              ; preds = %931
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %942

936:                                              ; preds = %931
  %937 = load i32, ptr %801, align 8, !tbaa !26
  %938 = icmp ult i32 %932, %937
  br i1 %938, label %939, label %940, !prof !33, !nosanitize !32

939:                                              ; preds = %936
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

940:                                              ; preds = %936
  %941 = icmp eq i32 %932, %937
  br i1 %941, label %942, label %890, !llvm.loop !38

942:                                              ; preds = %940, %935, %916, %883, %874, %866, %846, %834, %828, %818
  %943 = phi i1 [ false, %883 ], [ true, %866 ], [ false, %846 ], [ true, %828 ], [ true, %916 ], [ true, %935 ], [ false, %940 ], [ true, %818 ], [ true, %834 ], [ false, %874 ]
  %944 = load i32, ptr %430, align 8, !tbaa !41
  %945 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %809, i32 %944), !nosanitize !32
  %946 = extractvalue { i32, i1 } %945, 1, !nosanitize !32
  br i1 %946, label %947, label %948, !prof !33, !nosanitize !32

947:                                              ; preds = %942
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

948:                                              ; preds = %942
  %949 = extractvalue { i32, i1 } %945, 0, !nosanitize !32
  %950 = zext i32 %949 to i64
  %951 = load i64, ptr %805, align 8, !tbaa !39
  %952 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %951, i64 %950), !nosanitize !32
  %953 = extractvalue { i64, i1 } %952, 1, !nosanitize !32
  br i1 %953, label %479, label %954, !prof !33, !nosanitize !32

954:                                              ; preds = %948
  %955 = extractvalue { i64, i1 } %952, 0, !nosanitize !32
  store i64 %955, ptr %805, align 8, !tbaa !39
  %956 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %807, i64 %950), !nosanitize !32
  %957 = extractvalue { i64, i1 } %956, 0, !nosanitize !32
  %958 = extractvalue { i64, i1 } %956, 1, !nosanitize !32
  br i1 %958, label %959, label %960, !prof !33, !nosanitize !32

959:                                              ; preds = %954
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

960:                                              ; preds = %954
  br i1 %943, label %961, label %969

961:                                              ; preds = %960
  %962 = load i32, ptr %799, align 4, !tbaa !17
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %971, label %964

964:                                              ; preds = %961
  %965 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 %957), !nosanitize !32
  %966 = extractvalue { i64, i1 } %965, 0, !nosanitize !32
  %967 = extractvalue { i64, i1 } %965, 1, !nosanitize !32
  br i1 %967, label %968, label %971, !prof !33, !nosanitize !32

968:                                              ; preds = %964
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

969:                                              ; preds = %960
  %970 = icmp eq i64 %957, 0
  br i1 %970, label %971, label %806, !llvm.loop !43

971:                                              ; preds = %969, %964, %961, %784, %765, %708, %670, %661, %649, %631, %628, %492, %420, %232, %213, %156, %118, %109, %97, %65, %56, %44
  %972 = phi i64 [ 0, %670 ], [ %20, %492 ], [ %20, %969 ], [ 0, %961 ], [ 0, %628 ], [ 0, %56 ], [ %966, %964 ], [ 0, %44 ], [ 0, %65 ], [ 0, %97 ], [ 0, %118 ], [ 0, %156 ], [ 0, %109 ], [ 0, %213 ], [ 0, %232 ], [ %633, %631 ], [ 0, %708 ], [ 0, %661 ], [ 0, %765 ], [ 0, %784 ], [ 0, %649 ], [ 0, %420 ]
  %973 = udiv i64 %972, %1
  br label %974

974:                                              ; preds = %971, %29, %28, %14, %6, %4
  %975 = phi i64 [ 0, %6 ], [ 0, %4 ], [ 0, %28 ], [ 0, %14 ], [ %973, %971 ], [ 0, %29 ]
  ret i64 %975
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzputc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1335, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %1335

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %1335, label %18

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
  br i1 %25, label %180, label %26

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
  br label %1335

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
  br label %1335

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
  br label %1335

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
  br i1 %77, label %180, label %78

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
  br label %1335

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
  br i1 %110, label %180, label %83, !llvm.loop !34

111:                                              ; preds = %71, %66
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %113 = load i32, ptr %112, align 8, !tbaa !36
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = load i32, ptr %23, align 8, !tbaa !30
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %180, label %118

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
  br label %1335

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
  br label %1335

174:                                              ; preds = %169
  %175 = load i32, ptr %121, align 8, !tbaa !26
  %176 = icmp ult i32 %170, %175
  br i1 %176, label %177, label %178, !prof !33, !nosanitize !32

177:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

178:                                              ; preds = %174
  %179 = icmp eq i32 %170, %175
  br i1 %179, label %180, label %128, !llvm.loop !38

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

197:                                              ; preds = %363, %180
  %198 = phi i64 [ %196, %180 ], [ %360, %363 ]
  %199 = phi i1 [ false, %180 ], [ true, %363 ]
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
  store i32 %203, ptr %23, align 8, !tbaa !30
  store ptr %211, ptr %6, align 8, !tbaa !25
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
  br label %343

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
  br label %343

230:                                              ; preds = %225
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %186, i8 0, i64 24, i1 false)
  %231 = load i32, ptr %187, align 8, !tbaa !23
  %232 = load i32, ptr %188, align 4, !tbaa !24
  %233 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %231, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %232, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %230
  %236 = load ptr, ptr %185, align 8, !tbaa !22
  tail call void @free(ptr noundef %236) #15
  %237 = load ptr, ptr %182, align 8, !tbaa !20
  tail call void @free(ptr noundef %237) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %343

238:                                              ; preds = %230
  store ptr null, ptr %6, align 8, !tbaa !25
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
  %249 = load i32, ptr %23, align 8, !tbaa !30
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %343, label %251

251:                                              ; preds = %247
  %252 = tail call ptr @__errno_location() #17
  br label %253

253:                                              ; preds = %275, %251
  %254 = phi ptr [ %248, %251 ], [ %279, %275 ]
  store i32 0, ptr %252, align 4, !tbaa !4
  store i32 0, ptr %189, align 4, !tbaa !17
  %255 = load i32, ptr %23, align 8, !tbaa !30
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
  br label %343

270:                                              ; preds = %253
  %271 = load i32, ptr %23, align 8, !tbaa !30
  %272 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %271, i32 %260), !nosanitize !32
  %273 = extractvalue { i32, i1 } %272, 1, !nosanitize !32
  br i1 %273, label %274, label %275, !prof !33, !nosanitize !32

274:                                              ; preds = %270
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

275:                                              ; preds = %270
  %276 = extractvalue { i32, i1 } %272, 0, !nosanitize !32
  store i32 %276, ptr %23, align 8, !tbaa !30
  %277 = load ptr, ptr %6, align 8, !tbaa !25
  %278 = and i64 %259, 2147483647
  %279 = getelementptr inbounds nuw i8, ptr %277, i64 %278
  store ptr %279, ptr %6, align 8, !tbaa !25
  %280 = icmp eq i32 %276, 0
  br i1 %280, label %343, label %253, !llvm.loop !34

281:                                              ; preds = %244, %242
  %282 = load i32, ptr %194, align 8, !tbaa !36
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %289, label %284

284:                                              ; preds = %281
  %285 = load i32, ptr %23, align 8, !tbaa !30
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %343, label %287

287:                                              ; preds = %284
  %288 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
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
  br label %343

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
  %334 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %335 = icmp eq i32 %334, -2
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %343

337:                                              ; preds = %332
  %338 = load i32, ptr %191, align 8, !tbaa !26
  %339 = icmp ult i32 %333, %338
  br i1 %339, label %340, label %341, !prof !33, !nosanitize !32

340:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

341:                                              ; preds = %337
  %342 = icmp eq i32 %333, %338
  br i1 %342, label %343, label %291, !llvm.loop !38

343:                                              ; preds = %341, %336, %317, %284, %275, %267, %247, %235, %229, %219
  %344 = phi i1 [ false, %284 ], [ true, %267 ], [ false, %247 ], [ true, %229 ], [ true, %317 ], [ true, %336 ], [ false, %341 ], [ true, %219 ], [ true, %235 ], [ false, %275 ]
  %345 = load i32, ptr %23, align 8, !tbaa !30
  %346 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %203, i32 %345), !nosanitize !32
  %347 = extractvalue { i32, i1 } %346, 1, !nosanitize !32
  br i1 %347, label %348, label %349, !prof !33, !nosanitize !32

348:                                              ; preds = %356, %343
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

349:                                              ; preds = %343
  %350 = extractvalue { i32, i1 } %346, 0, !nosanitize !32
  %351 = zext i32 %350 to i64
  %352 = load i64, ptr %195, align 8, !tbaa !39
  %353 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %352, i64 %351), !nosanitize !32
  %354 = extractvalue { i64, i1 } %353, 1, !nosanitize !32
  br i1 %354, label %355, label %356, !prof !33, !nosanitize !32

355:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !32
  unreachable, !nosanitize !32

356:                                              ; preds = %349
  %357 = extractvalue { i64, i1 } %353, 0, !nosanitize !32
  store i64 %357, ptr %195, align 8, !tbaa !39
  %358 = load i64, ptr %19, align 8, !tbaa !29
  %359 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %358, i64 %351), !nosanitize !32
  %360 = extractvalue { i64, i1 } %359, 0, !nosanitize !32
  %361 = extractvalue { i64, i1 } %359, 1, !nosanitize !32
  br i1 %361, label %348, label %362, !prof !33, !nosanitize !32

362:                                              ; preds = %356
  store i64 %360, ptr %19, align 8, !tbaa !29
  br i1 %344, label %1335, label %363

363:                                              ; preds = %362
  %364 = icmp eq i64 %360, 0
  br i1 %364, label %365, label %197, !llvm.loop !40

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
  store i8 %390, ptr %393, align 1, !tbaa !44
  %394 = load i32, ptr %370, align 8, !tbaa !30
  %395 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %394, i32 1), !nosanitize !32
  %396 = extractvalue { i32, i1 } %395, 1, !nosanitize !32
  br i1 %396, label %397, label %398, !prof !33, !nosanitize !32

397:                                              ; preds = %398, %391
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

398:                                              ; preds = %391
  %399 = extractvalue { i32, i1 } %395, 0, !nosanitize !32
  store i32 %399, ptr %370, align 8, !tbaa !30
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %401 = load i64, ptr %400, align 8, !tbaa !39
  %402 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %401, i64 1), !nosanitize !32
  %403 = extractvalue { i64, i1 } %402, 1, !nosanitize !32
  br i1 %403, label %397, label %404, !prof !33, !nosanitize !32

404:                                              ; preds = %398
  %405 = extractvalue { i64, i1 } %402, 0, !nosanitize !32
  store i64 %405, ptr %400, align 8, !tbaa !39
  %406 = and i32 %1, 255
  br label %1335

407:                                              ; preds = %380
  store i8 %390, ptr %3, align 1, !tbaa !44
  br label %450

408:                                              ; preds = %365
  %409 = trunc i32 %1 to i8
  store i8 %409, ptr %3, align 1, !tbaa !44
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
  br label %1335

418:                                              ; preds = %408
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %420 = load i32, ptr %419, align 8, !tbaa !21
  %421 = icmp eq i32 %420, 0
  %422 = load i32, ptr %410, align 4, !tbaa !19
  br i1 %421, label %424, label %423

423:                                              ; preds = %418
  store i32 %422, ptr %366, align 8, !tbaa !18
  br label %450

424:                                              ; preds = %418
  %425 = zext i32 %422 to i64
  %426 = tail call noalias ptr @malloc(i64 noundef %425) #16
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %426, ptr %427, align 8, !tbaa !22
  %428 = icmp eq ptr %426, null
  br i1 %428, label %429, label %430

429:                                              ; preds = %424
  tail call void @free(ptr noundef nonnull %414) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1335

430:                                              ; preds = %424
  %431 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %431, i8 0, i64 24, i1 false)
  %433 = load i32, ptr %432, align 8, !tbaa !23
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %435 = load i32, ptr %434, align 4, !tbaa !24
  %436 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %433, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %435, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %441, label %438

438:                                              ; preds = %430
  %439 = load ptr, ptr %427, align 8, !tbaa !22
  tail call void @free(ptr noundef %439) #15
  %440 = load ptr, ptr %415, align 8, !tbaa !20
  tail call void @free(ptr noundef %440) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1335

441:                                              ; preds = %430
  store ptr null, ptr %6, align 8, !tbaa !25
  %442 = load i32, ptr %419, align 8, !tbaa !21
  %443 = load i32, ptr %410, align 4, !tbaa !19
  store i32 %443, ptr %366, align 8, !tbaa !18
  %444 = icmp eq i32 %442, 0
  br i1 %444, label %445, label %450

445:                                              ; preds = %441
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %443, ptr %446, align 8, !tbaa !26
  %447 = load ptr, ptr %427, align 8, !tbaa !22
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %447, ptr %448, align 8, !tbaa !27
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %447, ptr %449, align 8, !tbaa !28
  br label %450

450:                                              ; preds = %445, %441, %423, %407
  %451 = phi i32 [ %443, %445 ], [ %443, %441 ], [ %422, %423 ], [ %367, %407 ]
  %452 = load i64, ptr %19, align 8, !tbaa !29
  %453 = icmp eq i64 %452, 0
  br i1 %453, label %796, label %454

454:                                              ; preds = %450
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %456 = load i32, ptr %455, align 8, !tbaa !30
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %610, label %458

458:                                              ; preds = %454
  %459 = icmp eq i32 %451, 0
  br i1 %459, label %460, label %501

460:                                              ; preds = %458
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %462 = load i32, ptr %461, align 4, !tbaa !19
  %463 = shl i32 %462, 1
  %464 = zext i32 %463 to i64
  %465 = tail call noalias ptr @malloc(i64 noundef %464) #16
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %465, ptr %466, align 8, !tbaa !20
  %467 = icmp eq ptr %465, null
  br i1 %467, label %468, label %469

468:                                              ; preds = %460
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1335

469:                                              ; preds = %460
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %471 = load i32, ptr %470, align 8, !tbaa !21
  %472 = icmp eq i32 %471, 0
  %473 = load i32, ptr %461, align 4, !tbaa !19
  br i1 %472, label %475, label %474

474:                                              ; preds = %469
  store i32 %473, ptr %366, align 8, !tbaa !18
  br label %505

475:                                              ; preds = %469
  %476 = zext i32 %473 to i64
  %477 = tail call noalias ptr @malloc(i64 noundef %476) #16
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %477, ptr %478, align 8, !tbaa !22
  %479 = icmp eq ptr %477, null
  br i1 %479, label %480, label %481

480:                                              ; preds = %475
  tail call void @free(ptr noundef nonnull %465) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1335

481:                                              ; preds = %475
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %482, i8 0, i64 24, i1 false)
  %484 = load i32, ptr %483, align 8, !tbaa !23
  %485 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %486 = load i32, ptr %485, align 4, !tbaa !24
  %487 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %484, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %486, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %492, label %489

489:                                              ; preds = %481
  %490 = load ptr, ptr %478, align 8, !tbaa !22
  tail call void @free(ptr noundef %490) #15
  %491 = load ptr, ptr %466, align 8, !tbaa !20
  tail call void @free(ptr noundef %491) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1335

492:                                              ; preds = %481
  store ptr null, ptr %6, align 8, !tbaa !25
  %493 = load i32, ptr %470, align 8, !tbaa !21
  %494 = load i32, ptr %461, align 4, !tbaa !19
  store i32 %494, ptr %366, align 8, !tbaa !18
  %495 = icmp eq i32 %493, 0
  br i1 %495, label %496, label %505

496:                                              ; preds = %492
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %494, ptr %497, align 8, !tbaa !26
  %498 = load ptr, ptr %478, align 8, !tbaa !22
  %499 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %498, ptr %499, align 8, !tbaa !27
  %500 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %498, ptr %500, align 8, !tbaa !28
  br label %541

501:                                              ; preds = %458
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %503 = load i32, ptr %502, align 8, !tbaa !21
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %541, label %505

505:                                              ; preds = %501, %492, %474
  %506 = load i32, ptr %455, align 8, !tbaa !30
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %610, label %508

508:                                              ; preds = %505
  %509 = tail call ptr @__errno_location() #17
  %510 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %511 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %512 = load ptr, ptr %6, align 8, !tbaa !25
  br label %513

513:                                              ; preds = %535, %508
  %514 = phi ptr [ %512, %508 ], [ %539, %535 ]
  store i32 0, ptr %509, align 4, !tbaa !4
  store i32 0, ptr %510, align 4, !tbaa !17
  %515 = load i32, ptr %455, align 8, !tbaa !30
  %516 = tail call i32 @llvm.umin.i32(i32 %515, i32 1073741824)
  %517 = zext nneg i32 %516 to i64
  %518 = load i32, ptr %511, align 4, !tbaa !31
  %519 = tail call i64 @write(i32 noundef %518, ptr noundef %514, i64 noundef %517) #15
  %520 = trunc i64 %519 to i32
  %521 = icmp slt i32 %520, 0
  br i1 %521, label %522, label %530

522:                                              ; preds = %513
  %523 = load i32, ptr %509, align 4, !tbaa !4
  %524 = icmp eq i32 %523, 11
  br i1 %524, label %525, label %527

525:                                              ; preds = %522
  store i32 1, ptr %510, align 4, !tbaa !17
  %526 = load i32, ptr %509, align 4, !tbaa !4
  br label %527

527:                                              ; preds = %525, %522
  %528 = phi i32 [ %523, %522 ], [ %526, %525 ]
  %529 = tail call ptr @strerror(i32 noundef %528) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %529) #15
  br label %1335

530:                                              ; preds = %513
  %531 = load i32, ptr %455, align 8, !tbaa !30
  %532 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %531, i32 %520), !nosanitize !32
  %533 = extractvalue { i32, i1 } %532, 1, !nosanitize !32
  br i1 %533, label %534, label %535, !prof !33, !nosanitize !32

534:                                              ; preds = %530
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

535:                                              ; preds = %530
  %536 = extractvalue { i32, i1 } %532, 0, !nosanitize !32
  store i32 %536, ptr %455, align 8, !tbaa !30
  %537 = load ptr, ptr %6, align 8, !tbaa !25
  %538 = and i64 %519, 2147483647
  %539 = getelementptr inbounds nuw i8, ptr %537, i64 %538
  store ptr %539, ptr %6, align 8, !tbaa !25
  %540 = icmp eq i32 %536, 0
  br i1 %540, label %610, label %513, !llvm.loop !34

541:                                              ; preds = %501, %496
  %542 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %543 = load i32, ptr %542, align 8, !tbaa !36
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %550, label %545

545:                                              ; preds = %541
  %546 = load i32, ptr %455, align 8, !tbaa !30
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %610, label %548

548:                                              ; preds = %545
  %549 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %542, align 8, !tbaa !36
  br label %550

550:                                              ; preds = %548, %541
  %551 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %552 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %553 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %554 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %555 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %556 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %557 = load i32, ptr %551, align 8, !tbaa !26
  br label %558

558:                                              ; preds = %608, %550
  %559 = phi i32 [ %557, %550 ], [ %605, %608 ]
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %599

561:                                              ; preds = %558
  %562 = load ptr, ptr %552, align 8, !tbaa !27
  %563 = load ptr, ptr %553, align 8, !tbaa !28
  %564 = icmp ugt ptr %562, %563
  br i1 %564, label %565, label %596

565:                                              ; preds = %561
  %566 = tail call ptr @__errno_location() #17
  br label %567

567:                                              ; preds = %587, %565
  %568 = phi ptr [ %563, %565 ], [ %590, %587 ]
  %569 = phi ptr [ %562, %565 ], [ %591, %587 ]
  store i32 0, ptr %566, align 4, !tbaa !4
  store i32 0, ptr %554, align 4, !tbaa !17
  %570 = ptrtoint ptr %569 to i64
  %571 = ptrtoint ptr %568 to i64
  %572 = sub i64 %570, %571
  %573 = tail call i64 @llvm.smin.i64(i64 %572, i64 1073741824)
  %574 = and i64 %573, 4294967295
  %575 = load i32, ptr %555, align 4, !tbaa !31
  %576 = tail call i64 @write(i32 noundef %575, ptr noundef %568, i64 noundef %574) #15
  %577 = and i64 %576, 2147483648
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %587, label %579

579:                                              ; preds = %567
  %580 = load i32, ptr %566, align 4, !tbaa !4
  %581 = icmp eq i32 %580, 11
  br i1 %581, label %582, label %584

582:                                              ; preds = %579
  store i32 1, ptr %554, align 4, !tbaa !17
  %583 = load i32, ptr %566, align 4, !tbaa !4
  br label %584

584:                                              ; preds = %582, %579
  %585 = phi i32 [ %580, %579 ], [ %583, %582 ]
  %586 = tail call ptr @strerror(i32 noundef %585) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %586) #15
  br label %1335

587:                                              ; preds = %567
  %588 = load ptr, ptr %553, align 8, !tbaa !28
  %589 = and i64 %576, 2147483647
  %590 = getelementptr inbounds nuw i8, ptr %588, i64 %589
  store ptr %590, ptr %553, align 8, !tbaa !28
  %591 = load ptr, ptr %552, align 8, !tbaa !27
  %592 = icmp ugt ptr %591, %590
  br i1 %592, label %567, label %593, !llvm.loop !37

593:                                              ; preds = %587
  %594 = load i32, ptr %551, align 8, !tbaa !26
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %596, label %599

596:                                              ; preds = %593, %561
  %597 = load i32, ptr %366, align 8, !tbaa !18
  store i32 %597, ptr %551, align 8, !tbaa !26
  %598 = load ptr, ptr %556, align 8, !tbaa !22
  store ptr %598, ptr %552, align 8, !tbaa !27
  store ptr %598, ptr %553, align 8, !tbaa !28
  br label %599

599:                                              ; preds = %596, %593, %558
  %600 = phi i32 [ %594, %593 ], [ %597, %596 ], [ %559, %558 ]
  %601 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %602 = icmp eq i32 %601, -2
  br i1 %602, label %603, label %604

603:                                              ; preds = %599
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %1335

604:                                              ; preds = %599
  %605 = load i32, ptr %551, align 8, !tbaa !26
  %606 = icmp ult i32 %600, %605
  br i1 %606, label %607, label %608, !prof !33, !nosanitize !32

607:                                              ; preds = %604
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

608:                                              ; preds = %604
  %609 = icmp eq i32 %600, %605
  br i1 %609, label %610, label %558, !llvm.loop !38

610:                                              ; preds = %608, %545, %535, %505, %454
  %611 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %612 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %613 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %614 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %615 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %616 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %617 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %618 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %619 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %620 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %621 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %622 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %623 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %624 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %625 = load i64, ptr %19, align 8, !tbaa !29
  br label %626

626:                                              ; preds = %792, %610
  %627 = phi i64 [ %625, %610 ], [ %789, %792 ]
  %628 = phi i1 [ false, %610 ], [ true, %792 ]
  %629 = load i32, ptr %366, align 8, !tbaa !18
  %630 = zext i32 %629 to i64
  %631 = tail call i64 @llvm.smin.i64(i64 %627, i64 %630)
  %632 = trunc i64 %631 to i32
  %633 = load ptr, ptr %611, align 8, !tbaa !20
  br i1 %628, label %638, label %634

634:                                              ; preds = %626
  %635 = and i64 %631, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %633, i8 0, i64 %635, i1 false)
  %636 = load ptr, ptr %611, align 8, !tbaa !20
  %637 = load i32, ptr %366, align 8, !tbaa !18
  br label %638

638:                                              ; preds = %634, %626
  %639 = phi i32 [ %637, %634 ], [ %629, %626 ]
  %640 = phi ptr [ %636, %634 ], [ %633, %626 ]
  store i32 %632, ptr %455, align 8, !tbaa !30
  store ptr %640, ptr %6, align 8, !tbaa !25
  %641 = icmp eq i32 %639, 0
  br i1 %641, label %642, label %673

642:                                              ; preds = %638
  %643 = load i32, ptr %613, align 4, !tbaa !19
  %644 = shl i32 %643, 1
  %645 = zext i32 %644 to i64
  %646 = tail call noalias ptr @malloc(i64 noundef %645) #16
  store ptr %646, ptr %611, align 8, !tbaa !20
  %647 = icmp eq ptr %646, null
  br i1 %647, label %648, label %649

648:                                              ; preds = %642
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %772

649:                                              ; preds = %642
  %650 = load i32, ptr %612, align 8, !tbaa !21
  %651 = icmp eq i32 %650, 0
  %652 = load i32, ptr %613, align 4, !tbaa !19
  br i1 %651, label %654, label %653

653:                                              ; preds = %649
  store i32 %652, ptr %366, align 8, !tbaa !18
  br label %676

654:                                              ; preds = %649
  %655 = zext i32 %652 to i64
  %656 = tail call noalias ptr @malloc(i64 noundef %655) #16
  store ptr %656, ptr %614, align 8, !tbaa !22
  %657 = icmp eq ptr %656, null
  br i1 %657, label %658, label %659

658:                                              ; preds = %654
  tail call void @free(ptr noundef nonnull %646) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %772

659:                                              ; preds = %654
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %615, i8 0, i64 24, i1 false)
  %660 = load i32, ptr %616, align 8, !tbaa !23
  %661 = load i32, ptr %617, align 4, !tbaa !24
  %662 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %660, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %661, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %667, label %664

664:                                              ; preds = %659
  %665 = load ptr, ptr %614, align 8, !tbaa !22
  tail call void @free(ptr noundef %665) #15
  %666 = load ptr, ptr %611, align 8, !tbaa !20
  tail call void @free(ptr noundef %666) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %772

667:                                              ; preds = %659
  store ptr null, ptr %6, align 8, !tbaa !25
  %668 = load i32, ptr %612, align 8, !tbaa !21
  %669 = load i32, ptr %613, align 4, !tbaa !19
  store i32 %669, ptr %366, align 8, !tbaa !18
  %670 = icmp eq i32 %668, 0
  br i1 %670, label %671, label %676

671:                                              ; preds = %667
  store i32 %669, ptr %620, align 8, !tbaa !26
  %672 = load ptr, ptr %614, align 8, !tbaa !22
  store ptr %672, ptr %621, align 8, !tbaa !27
  store ptr %672, ptr %622, align 8, !tbaa !28
  br label %710

673:                                              ; preds = %638
  %674 = load i32, ptr %612, align 8, !tbaa !21
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %710, label %676

676:                                              ; preds = %673, %667, %653
  %677 = phi ptr [ %640, %673 ], [ null, %667 ], [ %640, %653 ]
  %678 = load i32, ptr %455, align 8, !tbaa !30
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %772, label %680

680:                                              ; preds = %676
  %681 = tail call ptr @__errno_location() #17
  br label %682

682:                                              ; preds = %704, %680
  %683 = phi ptr [ %677, %680 ], [ %708, %704 ]
  store i32 0, ptr %681, align 4, !tbaa !4
  store i32 0, ptr %618, align 4, !tbaa !17
  %684 = load i32, ptr %455, align 8, !tbaa !30
  %685 = tail call i32 @llvm.umin.i32(i32 %684, i32 1073741824)
  %686 = zext nneg i32 %685 to i64
  %687 = load i32, ptr %619, align 4, !tbaa !31
  %688 = tail call i64 @write(i32 noundef %687, ptr noundef %683, i64 noundef %686) #15
  %689 = trunc i64 %688 to i32
  %690 = icmp slt i32 %689, 0
  br i1 %690, label %691, label %699

691:                                              ; preds = %682
  %692 = load i32, ptr %681, align 4, !tbaa !4
  %693 = icmp eq i32 %692, 11
  br i1 %693, label %694, label %696

694:                                              ; preds = %691
  store i32 1, ptr %618, align 4, !tbaa !17
  %695 = load i32, ptr %681, align 4, !tbaa !4
  br label %696

696:                                              ; preds = %694, %691
  %697 = phi i32 [ %692, %691 ], [ %695, %694 ]
  %698 = tail call ptr @strerror(i32 noundef %697) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %698) #15
  br label %772

699:                                              ; preds = %682
  %700 = load i32, ptr %455, align 8, !tbaa !30
  %701 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %700, i32 %689), !nosanitize !32
  %702 = extractvalue { i32, i1 } %701, 1, !nosanitize !32
  br i1 %702, label %703, label %704, !prof !33, !nosanitize !32

703:                                              ; preds = %699
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

704:                                              ; preds = %699
  %705 = extractvalue { i32, i1 } %701, 0, !nosanitize !32
  store i32 %705, ptr %455, align 8, !tbaa !30
  %706 = load ptr, ptr %6, align 8, !tbaa !25
  %707 = and i64 %688, 2147483647
  %708 = getelementptr inbounds nuw i8, ptr %706, i64 %707
  store ptr %708, ptr %6, align 8, !tbaa !25
  %709 = icmp eq i32 %705, 0
  br i1 %709, label %772, label %682, !llvm.loop !34

710:                                              ; preds = %673, %671
  %711 = load i32, ptr %623, align 8, !tbaa !36
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %718, label %713

713:                                              ; preds = %710
  %714 = load i32, ptr %455, align 8, !tbaa !30
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %772, label %716

716:                                              ; preds = %713
  %717 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %623, align 8, !tbaa !36
  br label %718

718:                                              ; preds = %716, %710
  %719 = load i32, ptr %620, align 8, !tbaa !26
  br label %720

720:                                              ; preds = %770, %718
  %721 = phi i32 [ %719, %718 ], [ %767, %770 ]
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %761

723:                                              ; preds = %720
  %724 = load ptr, ptr %621, align 8, !tbaa !27
  %725 = load ptr, ptr %622, align 8, !tbaa !28
  %726 = icmp ugt ptr %724, %725
  br i1 %726, label %727, label %758

727:                                              ; preds = %723
  %728 = tail call ptr @__errno_location() #17
  br label %729

729:                                              ; preds = %749, %727
  %730 = phi ptr [ %725, %727 ], [ %752, %749 ]
  %731 = phi ptr [ %724, %727 ], [ %753, %749 ]
  store i32 0, ptr %728, align 4, !tbaa !4
  store i32 0, ptr %618, align 4, !tbaa !17
  %732 = ptrtoint ptr %731 to i64
  %733 = ptrtoint ptr %730 to i64
  %734 = sub i64 %732, %733
  %735 = tail call i64 @llvm.smin.i64(i64 %734, i64 1073741824)
  %736 = and i64 %735, 4294967295
  %737 = load i32, ptr %619, align 4, !tbaa !31
  %738 = tail call i64 @write(i32 noundef %737, ptr noundef %730, i64 noundef %736) #15
  %739 = and i64 %738, 2147483648
  %740 = icmp eq i64 %739, 0
  br i1 %740, label %749, label %741

741:                                              ; preds = %729
  %742 = load i32, ptr %728, align 4, !tbaa !4
  %743 = icmp eq i32 %742, 11
  br i1 %743, label %744, label %746

744:                                              ; preds = %741
  store i32 1, ptr %618, align 4, !tbaa !17
  %745 = load i32, ptr %728, align 4, !tbaa !4
  br label %746

746:                                              ; preds = %744, %741
  %747 = phi i32 [ %742, %741 ], [ %745, %744 ]
  %748 = tail call ptr @strerror(i32 noundef %747) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %748) #15
  br label %772

749:                                              ; preds = %729
  %750 = load ptr, ptr %622, align 8, !tbaa !28
  %751 = and i64 %738, 2147483647
  %752 = getelementptr inbounds nuw i8, ptr %750, i64 %751
  store ptr %752, ptr %622, align 8, !tbaa !28
  %753 = load ptr, ptr %621, align 8, !tbaa !27
  %754 = icmp ugt ptr %753, %752
  br i1 %754, label %729, label %755, !llvm.loop !37

755:                                              ; preds = %749
  %756 = load i32, ptr %620, align 8, !tbaa !26
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %761

758:                                              ; preds = %755, %723
  %759 = load i32, ptr %366, align 8, !tbaa !18
  store i32 %759, ptr %620, align 8, !tbaa !26
  %760 = load ptr, ptr %614, align 8, !tbaa !22
  store ptr %760, ptr %621, align 8, !tbaa !27
  store ptr %760, ptr %622, align 8, !tbaa !28
  br label %761

761:                                              ; preds = %758, %755, %720
  %762 = phi i32 [ %756, %755 ], [ %759, %758 ], [ %721, %720 ]
  %763 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %764 = icmp eq i32 %763, -2
  br i1 %764, label %765, label %766

765:                                              ; preds = %761
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %772

766:                                              ; preds = %761
  %767 = load i32, ptr %620, align 8, !tbaa !26
  %768 = icmp ult i32 %762, %767
  br i1 %768, label %769, label %770, !prof !33, !nosanitize !32

769:                                              ; preds = %766
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

770:                                              ; preds = %766
  %771 = icmp eq i32 %762, %767
  br i1 %771, label %772, label %720, !llvm.loop !38

772:                                              ; preds = %770, %765, %746, %713, %704, %696, %676, %664, %658, %648
  %773 = phi i1 [ false, %713 ], [ true, %696 ], [ false, %676 ], [ true, %658 ], [ true, %746 ], [ true, %765 ], [ false, %770 ], [ true, %648 ], [ true, %664 ], [ false, %704 ]
  %774 = load i32, ptr %455, align 8, !tbaa !30
  %775 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %632, i32 %774), !nosanitize !32
  %776 = extractvalue { i32, i1 } %775, 1, !nosanitize !32
  br i1 %776, label %777, label %778, !prof !33, !nosanitize !32

777:                                              ; preds = %785, %772
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

778:                                              ; preds = %772
  %779 = extractvalue { i32, i1 } %775, 0, !nosanitize !32
  %780 = zext i32 %779 to i64
  %781 = load i64, ptr %624, align 8, !tbaa !39
  %782 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %781, i64 %780), !nosanitize !32
  %783 = extractvalue { i64, i1 } %782, 1, !nosanitize !32
  br i1 %783, label %784, label %785, !prof !33, !nosanitize !32

784:                                              ; preds = %778
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !32
  unreachable, !nosanitize !32

785:                                              ; preds = %778
  %786 = extractvalue { i64, i1 } %782, 0, !nosanitize !32
  store i64 %786, ptr %624, align 8, !tbaa !39
  %787 = load i64, ptr %19, align 8, !tbaa !29
  %788 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %787, i64 %780), !nosanitize !32
  %789 = extractvalue { i64, i1 } %788, 0, !nosanitize !32
  %790 = extractvalue { i64, i1 } %788, 1, !nosanitize !32
  br i1 %790, label %777, label %791, !prof !33, !nosanitize !32

791:                                              ; preds = %785
  store i64 %789, ptr %19, align 8, !tbaa !29
  br i1 %773, label %1335, label %792

792:                                              ; preds = %791
  %793 = icmp eq i64 %789, 0
  br i1 %793, label %794, label %626, !llvm.loop !40

794:                                              ; preds = %792
  %795 = load i32, ptr %366, align 8, !tbaa !18
  br label %796

796:                                              ; preds = %794, %450
  %797 = phi i32 [ %795, %794 ], [ %451, %450 ]
  %798 = icmp ugt i32 %797, 1
  %799 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %798, label %800, label %992

800:                                              ; preds = %796
  %801 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %802 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %803 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %804 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %805 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %806 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %807 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %808 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %809 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %810 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %811 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %812 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %813 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %814 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %815

815:                                              ; preds = %932, %800
  %816 = phi ptr [ %3, %800 ], [ %854, %932 ]
  %817 = load i32, ptr %799, align 8, !tbaa !41
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %822, label %819

819:                                              ; preds = %815
  %820 = load ptr, ptr %6, align 8, !tbaa !42
  %821 = load ptr, ptr %801, align 8, !tbaa !20
  br label %824

822:                                              ; preds = %815
  %823 = load ptr, ptr %801, align 8, !tbaa !20
  store ptr %823, ptr %6, align 8, !tbaa !42
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
  %834 = icmp ult i32 %833, %832
  br i1 %834, label %835, label %836, !prof !33, !nosanitize !32

835:                                              ; preds = %824
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

836:                                              ; preds = %824
  %837 = icmp ne i32 %833, %832
  %838 = zext i1 %837 to i64
  %839 = zext i1 %837 to i32
  %840 = and i64 %831, 4294967295
  %841 = getelementptr inbounds nuw i8, ptr %825, i64 %840
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %841, ptr align 1 %816, i64 %838, i1 false)
  %842 = load i32, ptr %799, align 8, !tbaa !41
  %843 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %842, i32 %839), !nosanitize !32
  %844 = extractvalue { i32, i1 } %843, 1, !nosanitize !32
  br i1 %844, label %845, label %846, !prof !33, !nosanitize !32

845:                                              ; preds = %1304, %846, %836
  call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

846:                                              ; preds = %836
  %847 = extractvalue { i32, i1 } %843, 0, !nosanitize !32
  store i32 %847, ptr %799, align 8, !tbaa !41
  %848 = load i64, ptr %802, align 8, !tbaa !39
  %849 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %848, i64 %838), !nosanitize !32
  %850 = extractvalue { i64, i1 } %849, 1, !nosanitize !32
  br i1 %850, label %845, label %851, !prof !33, !nosanitize !32

851:                                              ; preds = %846
  %852 = extractvalue { i64, i1 } %849, 0, !nosanitize !32
  store i64 %852, ptr %802, align 8, !tbaa !39
  %853 = zext i1 %837 to i64
  %854 = getelementptr inbounds nuw i8, ptr %816, i64 %853
  br i1 %837, label %1326, label %855

855:                                              ; preds = %851
  %856 = load i32, ptr %366, align 8, !tbaa !18
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %889

858:                                              ; preds = %855
  %859 = load i32, ptr %804, align 4, !tbaa !19
  %860 = shl i32 %859, 1
  %861 = zext i32 %860 to i64
  %862 = tail call noalias ptr @malloc(i64 noundef %861) #16
  store ptr %862, ptr %801, align 8, !tbaa !20
  %863 = icmp eq ptr %862, null
  br i1 %863, label %864, label %865

864:                                              ; preds = %858
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %989

865:                                              ; preds = %858
  %866 = load i32, ptr %803, align 8, !tbaa !21
  %867 = icmp eq i32 %866, 0
  %868 = load i32, ptr %804, align 4, !tbaa !19
  br i1 %867, label %870, label %869

869:                                              ; preds = %865
  store i32 %868, ptr %366, align 8, !tbaa !18
  br label %892

870:                                              ; preds = %865
  %871 = zext i32 %868 to i64
  %872 = tail call noalias ptr @malloc(i64 noundef %871) #16
  store ptr %872, ptr %805, align 8, !tbaa !22
  %873 = icmp eq ptr %872, null
  br i1 %873, label %874, label %875

874:                                              ; preds = %870
  tail call void @free(ptr noundef nonnull %862) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %989

875:                                              ; preds = %870
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %806, i8 0, i64 24, i1 false)
  %876 = load i32, ptr %807, align 8, !tbaa !23
  %877 = load i32, ptr %808, align 4, !tbaa !24
  %878 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %876, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %877, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %883, label %880

880:                                              ; preds = %875
  %881 = load ptr, ptr %805, align 8, !tbaa !22
  tail call void @free(ptr noundef %881) #15
  %882 = load ptr, ptr %801, align 8, !tbaa !20
  tail call void @free(ptr noundef %882) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %989

883:                                              ; preds = %875
  store ptr null, ptr %6, align 8, !tbaa !25
  %884 = load i32, ptr %803, align 8, !tbaa !21
  %885 = load i32, ptr %804, align 4, !tbaa !19
  store i32 %885, ptr %366, align 8, !tbaa !18
  %886 = icmp eq i32 %884, 0
  br i1 %886, label %887, label %892

887:                                              ; preds = %883
  store i32 %885, ptr %811, align 8, !tbaa !26
  %888 = load ptr, ptr %805, align 8, !tbaa !22
  store ptr %888, ptr %812, align 8, !tbaa !27
  store ptr %888, ptr %813, align 8, !tbaa !28
  br label %926

889:                                              ; preds = %855
  %890 = load i32, ptr %803, align 8, !tbaa !21
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %926, label %892

892:                                              ; preds = %889, %883, %869
  %893 = load i32, ptr %799, align 8, !tbaa !30
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %932, label %895

895:                                              ; preds = %892
  %896 = tail call ptr @__errno_location() #17
  %897 = load ptr, ptr %6, align 8, !tbaa !25
  br label %898

898:                                              ; preds = %920, %895
  %899 = phi ptr [ %897, %895 ], [ %924, %920 ]
  store i32 0, ptr %896, align 4, !tbaa !4
  store i32 0, ptr %809, align 4, !tbaa !17
  %900 = load i32, ptr %799, align 8, !tbaa !30
  %901 = tail call i32 @llvm.umin.i32(i32 %900, i32 1073741824)
  %902 = zext nneg i32 %901 to i64
  %903 = load i32, ptr %810, align 4, !tbaa !31
  %904 = tail call i64 @write(i32 noundef %903, ptr noundef %899, i64 noundef %902) #15
  %905 = trunc i64 %904 to i32
  %906 = icmp slt i32 %905, 0
  br i1 %906, label %907, label %915

907:                                              ; preds = %898
  %908 = load i32, ptr %896, align 4, !tbaa !4
  %909 = icmp eq i32 %908, 11
  br i1 %909, label %910, label %912

910:                                              ; preds = %907
  store i32 1, ptr %809, align 4, !tbaa !17
  %911 = load i32, ptr %896, align 4, !tbaa !4
  br label %912

912:                                              ; preds = %910, %907
  %913 = phi i32 [ %908, %907 ], [ %911, %910 ]
  %914 = tail call ptr @strerror(i32 noundef %913) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %914) #15
  br label %989

915:                                              ; preds = %898
  %916 = load i32, ptr %799, align 8, !tbaa !30
  %917 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %916, i32 %905), !nosanitize !32
  %918 = extractvalue { i32, i1 } %917, 1, !nosanitize !32
  br i1 %918, label %919, label %920, !prof !33, !nosanitize !32

919:                                              ; preds = %915
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

920:                                              ; preds = %915
  %921 = extractvalue { i32, i1 } %917, 0, !nosanitize !32
  store i32 %921, ptr %799, align 8, !tbaa !30
  %922 = load ptr, ptr %6, align 8, !tbaa !25
  %923 = and i64 %904, 2147483647
  %924 = getelementptr inbounds nuw i8, ptr %922, i64 %923
  store ptr %924, ptr %6, align 8, !tbaa !25
  %925 = icmp eq i32 %921, 0
  br i1 %925, label %932, label %898, !llvm.loop !34

926:                                              ; preds = %889, %887
  %927 = load i32, ptr %814, align 8, !tbaa !36
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %935, label %929

929:                                              ; preds = %926
  %930 = load i32, ptr %799, align 8, !tbaa !30
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %932, label %933

932:                                              ; preds = %987, %929, %920, %892
  br label %815

933:                                              ; preds = %929
  %934 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %814, align 8, !tbaa !36
  br label %935

935:                                              ; preds = %933, %926
  %936 = load i32, ptr %811, align 8, !tbaa !26
  br label %937

937:                                              ; preds = %987, %935
  %938 = phi i32 [ %936, %935 ], [ %984, %987 ]
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %940, label %978

940:                                              ; preds = %937
  %941 = load ptr, ptr %812, align 8, !tbaa !27
  %942 = load ptr, ptr %813, align 8, !tbaa !28
  %943 = icmp ugt ptr %941, %942
  br i1 %943, label %944, label %975

944:                                              ; preds = %940
  %945 = tail call ptr @__errno_location() #17
  br label %946

946:                                              ; preds = %966, %944
  %947 = phi ptr [ %942, %944 ], [ %969, %966 ]
  %948 = phi ptr [ %941, %944 ], [ %970, %966 ]
  store i32 0, ptr %945, align 4, !tbaa !4
  store i32 0, ptr %809, align 4, !tbaa !17
  %949 = ptrtoint ptr %948 to i64
  %950 = ptrtoint ptr %947 to i64
  %951 = sub i64 %949, %950
  %952 = tail call i64 @llvm.smin.i64(i64 %951, i64 1073741824)
  %953 = and i64 %952, 4294967295
  %954 = load i32, ptr %810, align 4, !tbaa !31
  %955 = tail call i64 @write(i32 noundef %954, ptr noundef %947, i64 noundef %953) #15
  %956 = and i64 %955, 2147483648
  %957 = icmp eq i64 %956, 0
  br i1 %957, label %966, label %958

958:                                              ; preds = %946
  %959 = load i32, ptr %945, align 4, !tbaa !4
  %960 = icmp eq i32 %959, 11
  br i1 %960, label %961, label %963

961:                                              ; preds = %958
  store i32 1, ptr %809, align 4, !tbaa !17
  %962 = load i32, ptr %945, align 4, !tbaa !4
  br label %963

963:                                              ; preds = %961, %958
  %964 = phi i32 [ %959, %958 ], [ %962, %961 ]
  %965 = tail call ptr @strerror(i32 noundef %964) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %965) #15
  br label %989

966:                                              ; preds = %946
  %967 = load ptr, ptr %813, align 8, !tbaa !28
  %968 = and i64 %955, 2147483647
  %969 = getelementptr inbounds nuw i8, ptr %967, i64 %968
  store ptr %969, ptr %813, align 8, !tbaa !28
  %970 = load ptr, ptr %812, align 8, !tbaa !27
  %971 = icmp ugt ptr %970, %969
  br i1 %971, label %946, label %972, !llvm.loop !37

972:                                              ; preds = %966
  %973 = load i32, ptr %811, align 8, !tbaa !26
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %975, label %978

975:                                              ; preds = %972, %940
  %976 = load i32, ptr %366, align 8, !tbaa !18
  store i32 %976, ptr %811, align 8, !tbaa !26
  %977 = load ptr, ptr %805, align 8, !tbaa !22
  store ptr %977, ptr %812, align 8, !tbaa !27
  store ptr %977, ptr %813, align 8, !tbaa !28
  br label %978

978:                                              ; preds = %975, %972, %937
  %979 = phi i32 [ %973, %972 ], [ %976, %975 ], [ %938, %937 ]
  %980 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %981 = icmp eq i32 %980, -2
  br i1 %981, label %982, label %983

982:                                              ; preds = %978
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %989

983:                                              ; preds = %978
  %984 = load i32, ptr %811, align 8, !tbaa !26
  %985 = icmp ult i32 %979, %984
  br i1 %985, label %986, label %987, !prof !33, !nosanitize !32

986:                                              ; preds = %983
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

987:                                              ; preds = %983
  %988 = icmp eq i32 %979, %984
  br i1 %988, label %932, label %937, !llvm.loop !38

989:                                              ; preds = %982, %963, %912, %880, %874, %864
  %990 = load i32, ptr %809, align 4, !tbaa !17
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %1335, label %1328

992:                                              ; preds = %796
  %993 = load i32, ptr %799, align 8, !tbaa !41
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1147, label %995

995:                                              ; preds = %992
  %996 = icmp eq i32 %797, 0
  br i1 %996, label %997, label %1038

997:                                              ; preds = %995
  %998 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %999 = load i32, ptr %998, align 4, !tbaa !19
  %1000 = shl i32 %999, 1
  %1001 = zext i32 %1000 to i64
  %1002 = tail call noalias ptr @malloc(i64 noundef %1001) #16
  %1003 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1002, ptr %1003, align 8, !tbaa !20
  %1004 = icmp eq ptr %1002, null
  br i1 %1004, label %1005, label %1006

1005:                                             ; preds = %997
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1335

1006:                                             ; preds = %997
  %1007 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %1008 = load i32, ptr %1007, align 8, !tbaa !21
  %1009 = icmp eq i32 %1008, 0
  %1010 = load i32, ptr %998, align 4, !tbaa !19
  br i1 %1009, label %1012, label %1011

1011:                                             ; preds = %1006
  store i32 %1010, ptr %366, align 8, !tbaa !18
  br label %1042

1012:                                             ; preds = %1006
  %1013 = zext i32 %1010 to i64
  %1014 = tail call noalias ptr @malloc(i64 noundef %1013) #16
  %1015 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1014, ptr %1015, align 8, !tbaa !22
  %1016 = icmp eq ptr %1014, null
  br i1 %1016, label %1017, label %1018

1017:                                             ; preds = %1012
  tail call void @free(ptr noundef nonnull %1002) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1335

1018:                                             ; preds = %1012
  %1019 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %1020 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1019, i8 0, i64 24, i1 false)
  %1021 = load i32, ptr %1020, align 8, !tbaa !23
  %1022 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1023 = load i32, ptr %1022, align 4, !tbaa !24
  %1024 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %1021, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %1023, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1029, label %1026

1026:                                             ; preds = %1018
  %1027 = load ptr, ptr %1015, align 8, !tbaa !22
  tail call void @free(ptr noundef %1027) #15
  %1028 = load ptr, ptr %1003, align 8, !tbaa !20
  tail call void @free(ptr noundef %1028) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1335

1029:                                             ; preds = %1018
  store ptr null, ptr %6, align 8, !tbaa !25
  %1030 = load i32, ptr %1007, align 8, !tbaa !21
  %1031 = load i32, ptr %998, align 4, !tbaa !19
  store i32 %1031, ptr %366, align 8, !tbaa !18
  %1032 = icmp eq i32 %1030, 0
  br i1 %1032, label %1033, label %1042

1033:                                             ; preds = %1029
  %1034 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %1031, ptr %1034, align 8, !tbaa !26
  %1035 = load ptr, ptr %1015, align 8, !tbaa !22
  %1036 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1035, ptr %1036, align 8, !tbaa !27
  %1037 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1035, ptr %1037, align 8, !tbaa !28
  br label %1078

1038:                                             ; preds = %995
  %1039 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %1040 = load i32, ptr %1039, align 8, !tbaa !21
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1078, label %1042

1042:                                             ; preds = %1038, %1029, %1011
  %1043 = load i32, ptr %799, align 8, !tbaa !30
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1147, label %1045

1045:                                             ; preds = %1042
  %1046 = tail call ptr @__errno_location() #17
  %1047 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1048 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1049 = load ptr, ptr %6, align 8, !tbaa !25
  br label %1050

1050:                                             ; preds = %1072, %1045
  %1051 = phi ptr [ %1049, %1045 ], [ %1076, %1072 ]
  store i32 0, ptr %1046, align 4, !tbaa !4
  store i32 0, ptr %1047, align 4, !tbaa !17
  %1052 = load i32, ptr %799, align 8, !tbaa !30
  %1053 = tail call i32 @llvm.umin.i32(i32 %1052, i32 1073741824)
  %1054 = zext nneg i32 %1053 to i64
  %1055 = load i32, ptr %1048, align 4, !tbaa !31
  %1056 = tail call i64 @write(i32 noundef %1055, ptr noundef %1051, i64 noundef %1054) #15
  %1057 = trunc i64 %1056 to i32
  %1058 = icmp slt i32 %1057, 0
  br i1 %1058, label %1059, label %1067

1059:                                             ; preds = %1050
  %1060 = load i32, ptr %1046, align 4, !tbaa !4
  %1061 = icmp eq i32 %1060, 11
  br i1 %1061, label %1062, label %1064

1062:                                             ; preds = %1059
  store i32 1, ptr %1047, align 4, !tbaa !17
  %1063 = load i32, ptr %1046, align 4, !tbaa !4
  br label %1064

1064:                                             ; preds = %1062, %1059
  %1065 = phi i32 [ %1060, %1059 ], [ %1063, %1062 ]
  %1066 = tail call ptr @strerror(i32 noundef %1065) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1066) #15
  br label %1335

1067:                                             ; preds = %1050
  %1068 = load i32, ptr %799, align 8, !tbaa !30
  %1069 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1068, i32 %1057), !nosanitize !32
  %1070 = extractvalue { i32, i1 } %1069, 1, !nosanitize !32
  br i1 %1070, label %1071, label %1072, !prof !33, !nosanitize !32

1071:                                             ; preds = %1067
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1072:                                             ; preds = %1067
  %1073 = extractvalue { i32, i1 } %1069, 0, !nosanitize !32
  store i32 %1073, ptr %799, align 8, !tbaa !30
  %1074 = load ptr, ptr %6, align 8, !tbaa !25
  %1075 = and i64 %1056, 2147483647
  %1076 = getelementptr inbounds nuw i8, ptr %1074, i64 %1075
  store ptr %1076, ptr %6, align 8, !tbaa !25
  %1077 = icmp eq i32 %1073, 0
  br i1 %1077, label %1147, label %1050, !llvm.loop !34

1078:                                             ; preds = %1038, %1033
  %1079 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1080 = load i32, ptr %1079, align 8, !tbaa !36
  %1081 = icmp eq i32 %1080, 0
  br i1 %1081, label %1087, label %1082

1082:                                             ; preds = %1078
  %1083 = load i32, ptr %799, align 8, !tbaa !30
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1147, label %1085

1085:                                             ; preds = %1082
  %1086 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %1079, align 8, !tbaa !36
  br label %1087

1087:                                             ; preds = %1085, %1078
  %1088 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %1089 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %1090 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1091 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1092 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1093 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1094 = load i32, ptr %1088, align 8, !tbaa !26
  br label %1095

1095:                                             ; preds = %1145, %1087
  %1096 = phi i32 [ %1094, %1087 ], [ %1142, %1145 ]
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1098, label %1136

1098:                                             ; preds = %1095
  %1099 = load ptr, ptr %1089, align 8, !tbaa !27
  %1100 = load ptr, ptr %1090, align 8, !tbaa !28
  %1101 = icmp ugt ptr %1099, %1100
  br i1 %1101, label %1102, label %1133

1102:                                             ; preds = %1098
  %1103 = tail call ptr @__errno_location() #17
  br label %1104

1104:                                             ; preds = %1124, %1102
  %1105 = phi ptr [ %1100, %1102 ], [ %1127, %1124 ]
  %1106 = phi ptr [ %1099, %1102 ], [ %1128, %1124 ]
  store i32 0, ptr %1103, align 4, !tbaa !4
  store i32 0, ptr %1091, align 4, !tbaa !17
  %1107 = ptrtoint ptr %1106 to i64
  %1108 = ptrtoint ptr %1105 to i64
  %1109 = sub i64 %1107, %1108
  %1110 = tail call i64 @llvm.smin.i64(i64 %1109, i64 1073741824)
  %1111 = and i64 %1110, 4294967295
  %1112 = load i32, ptr %1092, align 4, !tbaa !31
  %1113 = tail call i64 @write(i32 noundef %1112, ptr noundef %1105, i64 noundef %1111) #15
  %1114 = and i64 %1113, 2147483648
  %1115 = icmp eq i64 %1114, 0
  br i1 %1115, label %1124, label %1116

1116:                                             ; preds = %1104
  %1117 = load i32, ptr %1103, align 4, !tbaa !4
  %1118 = icmp eq i32 %1117, 11
  br i1 %1118, label %1119, label %1121

1119:                                             ; preds = %1116
  store i32 1, ptr %1091, align 4, !tbaa !17
  %1120 = load i32, ptr %1103, align 4, !tbaa !4
  br label %1121

1121:                                             ; preds = %1119, %1116
  %1122 = phi i32 [ %1117, %1116 ], [ %1120, %1119 ]
  %1123 = tail call ptr @strerror(i32 noundef %1122) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1123) #15
  br label %1335

1124:                                             ; preds = %1104
  %1125 = load ptr, ptr %1090, align 8, !tbaa !28
  %1126 = and i64 %1113, 2147483647
  %1127 = getelementptr inbounds nuw i8, ptr %1125, i64 %1126
  store ptr %1127, ptr %1090, align 8, !tbaa !28
  %1128 = load ptr, ptr %1089, align 8, !tbaa !27
  %1129 = icmp ugt ptr %1128, %1127
  br i1 %1129, label %1104, label %1130, !llvm.loop !37

1130:                                             ; preds = %1124
  %1131 = load i32, ptr %1088, align 8, !tbaa !26
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1133, label %1136

1133:                                             ; preds = %1130, %1098
  %1134 = load i32, ptr %366, align 8, !tbaa !18
  store i32 %1134, ptr %1088, align 8, !tbaa !26
  %1135 = load ptr, ptr %1093, align 8, !tbaa !22
  store ptr %1135, ptr %1089, align 8, !tbaa !27
  store ptr %1135, ptr %1090, align 8, !tbaa !28
  br label %1136

1136:                                             ; preds = %1133, %1130, %1095
  %1137 = phi i32 [ %1131, %1130 ], [ %1134, %1133 ], [ %1096, %1095 ]
  %1138 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %1139 = icmp eq i32 %1138, -2
  br i1 %1139, label %1140, label %1141

1140:                                             ; preds = %1136
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %1335

1141:                                             ; preds = %1136
  %1142 = load i32, ptr %1088, align 8, !tbaa !26
  %1143 = icmp ult i32 %1137, %1142
  br i1 %1143, label %1144, label %1145, !prof !33, !nosanitize !32

1144:                                             ; preds = %1141
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1145:                                             ; preds = %1141
  %1146 = icmp eq i32 %1137, %1142
  br i1 %1146, label %1147, label %1095, !llvm.loop !38

1147:                                             ; preds = %1145, %1082, %1072, %1042, %992
  store ptr %3, ptr %6, align 8, !tbaa !42
  %1148 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %1149 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %1150 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %1151 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1152 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %1153 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %1154 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1155 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1156 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1157 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %1158 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %1159 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1160 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1161 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %1162

1162:                                             ; preds = %1324, %1147
  %1163 = phi i64 [ 1, %1147 ], [ %1313, %1324 ]
  %1164 = call i64 @llvm.umin.i64(i64 %1163, i64 4294967295)
  %1165 = trunc nuw i64 %1164 to i32
  store i32 %1165, ptr %799, align 8, !tbaa !41
  %1166 = load i32, ptr %366, align 8, !tbaa !18
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1168, label %1199

1168:                                             ; preds = %1162
  %1169 = load i32, ptr %1149, align 4, !tbaa !19
  %1170 = shl i32 %1169, 1
  %1171 = zext i32 %1170 to i64
  %1172 = call noalias ptr @malloc(i64 noundef %1171) #16
  store ptr %1172, ptr %1150, align 8, !tbaa !20
  %1173 = icmp eq ptr %1172, null
  br i1 %1173, label %1174, label %1175

1174:                                             ; preds = %1168
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1298

1175:                                             ; preds = %1168
  %1176 = load i32, ptr %1148, align 8, !tbaa !21
  %1177 = icmp eq i32 %1176, 0
  %1178 = load i32, ptr %1149, align 4, !tbaa !19
  br i1 %1177, label %1180, label %1179

1179:                                             ; preds = %1175
  store i32 %1178, ptr %366, align 8, !tbaa !18
  br label %1202

1180:                                             ; preds = %1175
  %1181 = zext i32 %1178 to i64
  %1182 = call noalias ptr @malloc(i64 noundef %1181) #16
  store ptr %1182, ptr %1151, align 8, !tbaa !22
  %1183 = icmp eq ptr %1182, null
  br i1 %1183, label %1184, label %1185

1184:                                             ; preds = %1180
  call void @free(ptr noundef nonnull %1172) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1298

1185:                                             ; preds = %1180
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1152, i8 0, i64 24, i1 false)
  %1186 = load i32, ptr %1153, align 8, !tbaa !23
  %1187 = load i32, ptr %1154, align 4, !tbaa !24
  %1188 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %1186, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %1187, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1193, label %1190

1190:                                             ; preds = %1185
  %1191 = load ptr, ptr %1151, align 8, !tbaa !22
  call void @free(ptr noundef %1191) #15
  %1192 = load ptr, ptr %1150, align 8, !tbaa !20
  call void @free(ptr noundef %1192) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1298

1193:                                             ; preds = %1185
  store ptr null, ptr %6, align 8, !tbaa !25
  %1194 = load i32, ptr %1148, align 8, !tbaa !21
  %1195 = load i32, ptr %1149, align 4, !tbaa !19
  store i32 %1195, ptr %366, align 8, !tbaa !18
  %1196 = icmp eq i32 %1194, 0
  br i1 %1196, label %1197, label %1202

1197:                                             ; preds = %1193
  store i32 %1195, ptr %1157, align 8, !tbaa !26
  %1198 = load ptr, ptr %1151, align 8, !tbaa !22
  store ptr %1198, ptr %1158, align 8, !tbaa !27
  store ptr %1198, ptr %1159, align 8, !tbaa !28
  br label %1236

1199:                                             ; preds = %1162
  %1200 = load i32, ptr %1148, align 8, !tbaa !21
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1236, label %1202

1202:                                             ; preds = %1199, %1193, %1179
  %1203 = load i32, ptr %799, align 8, !tbaa !30
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1298, label %1205

1205:                                             ; preds = %1202
  %1206 = tail call ptr @__errno_location() #17
  %1207 = load ptr, ptr %6, align 8, !tbaa !25
  br label %1208

1208:                                             ; preds = %1230, %1205
  %1209 = phi ptr [ %1207, %1205 ], [ %1234, %1230 ]
  store i32 0, ptr %1206, align 4, !tbaa !4
  store i32 0, ptr %1155, align 4, !tbaa !17
  %1210 = load i32, ptr %799, align 8, !tbaa !30
  %1211 = call i32 @llvm.umin.i32(i32 %1210, i32 1073741824)
  %1212 = zext nneg i32 %1211 to i64
  %1213 = load i32, ptr %1156, align 4, !tbaa !31
  %1214 = call i64 @write(i32 noundef %1213, ptr noundef %1209, i64 noundef %1212) #15
  %1215 = trunc i64 %1214 to i32
  %1216 = icmp slt i32 %1215, 0
  br i1 %1216, label %1217, label %1225

1217:                                             ; preds = %1208
  %1218 = load i32, ptr %1206, align 4, !tbaa !4
  %1219 = icmp eq i32 %1218, 11
  br i1 %1219, label %1220, label %1222

1220:                                             ; preds = %1217
  store i32 1, ptr %1155, align 4, !tbaa !17
  %1221 = load i32, ptr %1206, align 4, !tbaa !4
  br label %1222

1222:                                             ; preds = %1220, %1217
  %1223 = phi i32 [ %1218, %1217 ], [ %1221, %1220 ]
  %1224 = call ptr @strerror(i32 noundef %1223) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1224) #15
  br label %1298

1225:                                             ; preds = %1208
  %1226 = load i32, ptr %799, align 8, !tbaa !30
  %1227 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1226, i32 %1215), !nosanitize !32
  %1228 = extractvalue { i32, i1 } %1227, 1, !nosanitize !32
  br i1 %1228, label %1229, label %1230, !prof !33, !nosanitize !32

1229:                                             ; preds = %1225
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1230:                                             ; preds = %1225
  %1231 = extractvalue { i32, i1 } %1227, 0, !nosanitize !32
  store i32 %1231, ptr %799, align 8, !tbaa !30
  %1232 = load ptr, ptr %6, align 8, !tbaa !25
  %1233 = and i64 %1214, 2147483647
  %1234 = getelementptr inbounds nuw i8, ptr %1232, i64 %1233
  store ptr %1234, ptr %6, align 8, !tbaa !25
  %1235 = icmp eq i32 %1231, 0
  br i1 %1235, label %1298, label %1208, !llvm.loop !34

1236:                                             ; preds = %1199, %1197
  %1237 = load i32, ptr %1160, align 8, !tbaa !36
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1244, label %1239

1239:                                             ; preds = %1236
  %1240 = load i32, ptr %799, align 8, !tbaa !30
  %1241 = icmp eq i32 %1240, 0
  br i1 %1241, label %1298, label %1242

1242:                                             ; preds = %1239
  %1243 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %1160, align 8, !tbaa !36
  br label %1244

1244:                                             ; preds = %1242, %1236
  %1245 = load i32, ptr %1157, align 8, !tbaa !26
  br label %1246

1246:                                             ; preds = %1296, %1244
  %1247 = phi i32 [ %1245, %1244 ], [ %1293, %1296 ]
  %1248 = icmp eq i32 %1247, 0
  br i1 %1248, label %1249, label %1287

1249:                                             ; preds = %1246
  %1250 = load ptr, ptr %1158, align 8, !tbaa !27
  %1251 = load ptr, ptr %1159, align 8, !tbaa !28
  %1252 = icmp ugt ptr %1250, %1251
  br i1 %1252, label %1253, label %1284

1253:                                             ; preds = %1249
  %1254 = tail call ptr @__errno_location() #17
  br label %1255

1255:                                             ; preds = %1275, %1253
  %1256 = phi ptr [ %1251, %1253 ], [ %1278, %1275 ]
  %1257 = phi ptr [ %1250, %1253 ], [ %1279, %1275 ]
  store i32 0, ptr %1254, align 4, !tbaa !4
  store i32 0, ptr %1155, align 4, !tbaa !17
  %1258 = ptrtoint ptr %1257 to i64
  %1259 = ptrtoint ptr %1256 to i64
  %1260 = sub i64 %1258, %1259
  %1261 = call i64 @llvm.smin.i64(i64 %1260, i64 1073741824)
  %1262 = and i64 %1261, 4294967295
  %1263 = load i32, ptr %1156, align 4, !tbaa !31
  %1264 = call i64 @write(i32 noundef %1263, ptr noundef %1256, i64 noundef %1262) #15
  %1265 = and i64 %1264, 2147483648
  %1266 = icmp eq i64 %1265, 0
  br i1 %1266, label %1275, label %1267

1267:                                             ; preds = %1255
  %1268 = load i32, ptr %1254, align 4, !tbaa !4
  %1269 = icmp eq i32 %1268, 11
  br i1 %1269, label %1270, label %1272

1270:                                             ; preds = %1267
  store i32 1, ptr %1155, align 4, !tbaa !17
  %1271 = load i32, ptr %1254, align 4, !tbaa !4
  br label %1272

1272:                                             ; preds = %1270, %1267
  %1273 = phi i32 [ %1268, %1267 ], [ %1271, %1270 ]
  %1274 = call ptr @strerror(i32 noundef %1273) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1274) #15
  br label %1298

1275:                                             ; preds = %1255
  %1276 = load ptr, ptr %1159, align 8, !tbaa !28
  %1277 = and i64 %1264, 2147483647
  %1278 = getelementptr inbounds nuw i8, ptr %1276, i64 %1277
  store ptr %1278, ptr %1159, align 8, !tbaa !28
  %1279 = load ptr, ptr %1158, align 8, !tbaa !27
  %1280 = icmp ugt ptr %1279, %1278
  br i1 %1280, label %1255, label %1281, !llvm.loop !37

1281:                                             ; preds = %1275
  %1282 = load i32, ptr %1157, align 8, !tbaa !26
  %1283 = icmp eq i32 %1282, 0
  br i1 %1283, label %1284, label %1287

1284:                                             ; preds = %1281, %1249
  %1285 = load i32, ptr %366, align 8, !tbaa !18
  store i32 %1285, ptr %1157, align 8, !tbaa !26
  %1286 = load ptr, ptr %1151, align 8, !tbaa !22
  store ptr %1286, ptr %1158, align 8, !tbaa !27
  store ptr %1286, ptr %1159, align 8, !tbaa !28
  br label %1287

1287:                                             ; preds = %1284, %1281, %1246
  %1288 = phi i32 [ %1282, %1281 ], [ %1285, %1284 ], [ %1247, %1246 ]
  %1289 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %1290 = icmp eq i32 %1289, -2
  br i1 %1290, label %1291, label %1292

1291:                                             ; preds = %1287
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %1298

1292:                                             ; preds = %1287
  %1293 = load i32, ptr %1157, align 8, !tbaa !26
  %1294 = icmp ult i32 %1288, %1293
  br i1 %1294, label %1295, label %1296, !prof !33, !nosanitize !32

1295:                                             ; preds = %1292
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1296:                                             ; preds = %1292
  %1297 = icmp eq i32 %1288, %1293
  br i1 %1297, label %1298, label %1246, !llvm.loop !38

1298:                                             ; preds = %1296, %1291, %1272, %1239, %1230, %1222, %1202, %1190, %1184, %1174
  %1299 = phi i1 [ false, %1239 ], [ true, %1222 ], [ false, %1202 ], [ true, %1184 ], [ true, %1272 ], [ true, %1291 ], [ false, %1296 ], [ true, %1174 ], [ true, %1190 ], [ false, %1230 ]
  %1300 = load i32, ptr %799, align 8, !tbaa !41
  %1301 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1165, i32 %1300), !nosanitize !32
  %1302 = extractvalue { i32, i1 } %1301, 1, !nosanitize !32
  br i1 %1302, label %1303, label %1304, !prof !33, !nosanitize !32

1303:                                             ; preds = %1298
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1304:                                             ; preds = %1298
  %1305 = extractvalue { i32, i1 } %1301, 0, !nosanitize !32
  %1306 = zext i32 %1305 to i64
  %1307 = load i64, ptr %1161, align 8, !tbaa !39
  %1308 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1307, i64 %1306), !nosanitize !32
  %1309 = extractvalue { i64, i1 } %1308, 1, !nosanitize !32
  br i1 %1309, label %845, label %1310, !prof !33, !nosanitize !32

1310:                                             ; preds = %1304
  %1311 = extractvalue { i64, i1 } %1308, 0, !nosanitize !32
  store i64 %1311, ptr %1161, align 8, !tbaa !39
  %1312 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1163, i64 %1306), !nosanitize !32
  %1313 = extractvalue { i64, i1 } %1312, 0, !nosanitize !32
  %1314 = extractvalue { i64, i1 } %1312, 1, !nosanitize !32
  br i1 %1314, label %1315, label %1316, !prof !33, !nosanitize !32

1315:                                             ; preds = %1310
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1316:                                             ; preds = %1310
  br i1 %1299, label %1317, label %1324

1317:                                             ; preds = %1316
  %1318 = load i32, ptr %1155, align 4, !tbaa !17
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %1335, label %1320

1320:                                             ; preds = %1317
  %1321 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 1, i64 %1313), !nosanitize !32
  %1322 = extractvalue { i64, i1 } %1321, 1, !nosanitize !32
  br i1 %1322, label %1323, label %1328, !prof !33, !nosanitize !32

1323:                                             ; preds = %1320
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1324:                                             ; preds = %1316
  %1325 = icmp eq i64 %1313, 0
  br i1 %1325, label %1326, label %1162, !llvm.loop !43

1326:                                             ; preds = %1324, %851
  %1327 = and i32 %1, 255
  br label %1335

1328:                                             ; preds = %1320, %989
  %1329 = phi { i64, i1 } [ %1321, %1320 ], [ zeroinitializer, %989 ]
  %1330 = freeze { i64, i1 } %1329
  %1331 = extractvalue { i64, i1 } %1330, 0
  %1332 = icmp eq i64 %1331, 1
  %1333 = and i32 %1, 255
  %1334 = select i1 %1332, i32 %1333, i32 -1
  br label %1335

1335:                                             ; preds = %1328, %1326, %1317, %1140, %1121, %1064, %1026, %1017, %1005, %989, %791, %603, %584, %527, %489, %480, %468, %438, %429, %417, %404, %362, %173, %154, %97, %59, %50, %38, %14, %5, %2
  %1336 = phi i32 [ -1, %14 ], [ -1, %2 ], [ -1, %5 ], [ %406, %404 ], [ -1, %1005 ], [ -1, %791 ], [ %1334, %1328 ], [ %1327, %1326 ], [ -1, %38 ], [ -1, %59 ], [ -1, %97 ], [ -1, %50 ], [ -1, %154 ], [ -1, %173 ], [ -1, %1026 ], [ -1, %1140 ], [ -1, %1317 ], [ -1, %989 ], [ -1, %429 ], [ -1, %417 ], [ -1, %438 ], [ -1, %468 ], [ -1, %489 ], [ -1, %527 ], [ -1, %480 ], [ -1, %584 ], [ -1, %603 ], [ -1, %1064 ], [ -1, %1017 ], [ -1, %1121 ], [ -1, %362 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %1336
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gzputs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %969, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %969

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %969, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %18 = icmp ult i64 %17, 2147483648
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.2) #15
  br label %969

20:                                               ; preds = %16
  %21 = icmp eq i64 %17, 0
  br i1 %21, label %962, label %22

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
  br label %962

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
  br label %962

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
  br label %962

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
  br i1 %72, label %416, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %76 = load i32, ptr %75, align 8, !tbaa !30
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %230, label %78

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
  br label %962

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
  br label %962

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
  br label %962

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
  br i1 %127, label %230, label %128

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
  br label %962

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
  br i1 %160, label %230, label %133, !llvm.loop !34

161:                                              ; preds = %121, %116
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %163 = load i32, ptr %162, align 8, !tbaa !36
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %161
  %166 = load i32, ptr %75, align 8, !tbaa !30
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %230, label %168

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
  br label %962

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
  br label %962

224:                                              ; preds = %219
  %225 = load i32, ptr %171, align 8, !tbaa !26
  %226 = icmp ult i32 %220, %225
  br i1 %226, label %227, label %228, !prof !33, !nosanitize !32

227:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

228:                                              ; preds = %224
  %229 = icmp eq i32 %220, %225
  br i1 %229, label %230, label %178, !llvm.loop !38

230:                                              ; preds = %228, %165, %155, %125, %73
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
  %245 = load i64, ptr %70, align 8, !tbaa !29
  br label %246

246:                                              ; preds = %412, %230
  %247 = phi i64 [ %245, %230 ], [ %409, %412 ]
  %248 = phi i1 [ false, %230 ], [ true, %412 ]
  %249 = load i32, ptr %23, align 8, !tbaa !18
  %250 = zext i32 %249 to i64
  %251 = tail call i64 @llvm.smin.i64(i64 %247, i64 %250)
  %252 = trunc i64 %251 to i32
  %253 = load ptr, ptr %231, align 8, !tbaa !20
  br i1 %248, label %258, label %254

254:                                              ; preds = %246
  %255 = and i64 %251, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %253, i8 0, i64 %255, i1 false)
  %256 = load ptr, ptr %231, align 8, !tbaa !20
  %257 = load i32, ptr %23, align 8, !tbaa !18
  br label %258

258:                                              ; preds = %254, %246
  %259 = phi i32 [ %257, %254 ], [ %249, %246 ]
  %260 = phi ptr [ %256, %254 ], [ %253, %246 ]
  store i32 %252, ptr %75, align 8, !tbaa !30
  store ptr %260, ptr %74, align 8, !tbaa !25
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
  br label %392

269:                                              ; preds = %262
  %270 = load i32, ptr %232, align 8, !tbaa !21
  %271 = icmp eq i32 %270, 0
  %272 = load i32, ptr %233, align 4, !tbaa !19
  br i1 %271, label %274, label %273

273:                                              ; preds = %269
  store i32 %272, ptr %23, align 8, !tbaa !18
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
  br label %392

279:                                              ; preds = %274
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %235, i8 0, i64 24, i1 false)
  %280 = load i32, ptr %236, align 8, !tbaa !23
  %281 = load i32, ptr %237, align 4, !tbaa !24
  %282 = tail call i32 @deflateInit2_(ptr noundef nonnull %74, i32 noundef %280, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %281, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %279
  %285 = load ptr, ptr %234, align 8, !tbaa !22
  tail call void @free(ptr noundef %285) #15
  %286 = load ptr, ptr %231, align 8, !tbaa !20
  tail call void @free(ptr noundef %286) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %392

287:                                              ; preds = %279
  store ptr null, ptr %74, align 8, !tbaa !25
  %288 = load i32, ptr %232, align 8, !tbaa !21
  %289 = load i32, ptr %233, align 4, !tbaa !19
  store i32 %289, ptr %23, align 8, !tbaa !18
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
  %298 = load i32, ptr %75, align 8, !tbaa !30
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %392, label %300

300:                                              ; preds = %296
  %301 = tail call ptr @__errno_location() #17
  br label %302

302:                                              ; preds = %324, %300
  %303 = phi ptr [ %297, %300 ], [ %328, %324 ]
  store i32 0, ptr %301, align 4, !tbaa !4
  store i32 0, ptr %238, align 4, !tbaa !17
  %304 = load i32, ptr %75, align 8, !tbaa !30
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
  br label %392

319:                                              ; preds = %302
  %320 = load i32, ptr %75, align 8, !tbaa !30
  %321 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %320, i32 %309), !nosanitize !32
  %322 = extractvalue { i32, i1 } %321, 1, !nosanitize !32
  br i1 %322, label %323, label %324, !prof !33, !nosanitize !32

323:                                              ; preds = %319
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

324:                                              ; preds = %319
  %325 = extractvalue { i32, i1 } %321, 0, !nosanitize !32
  store i32 %325, ptr %75, align 8, !tbaa !30
  %326 = load ptr, ptr %74, align 8, !tbaa !25
  %327 = and i64 %308, 2147483647
  %328 = getelementptr inbounds nuw i8, ptr %326, i64 %327
  store ptr %328, ptr %74, align 8, !tbaa !25
  %329 = icmp eq i32 %325, 0
  br i1 %329, label %392, label %302, !llvm.loop !34

330:                                              ; preds = %293, %291
  %331 = load i32, ptr %243, align 8, !tbaa !36
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %338, label %333

333:                                              ; preds = %330
  %334 = load i32, ptr %75, align 8, !tbaa !30
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %392, label %336

336:                                              ; preds = %333
  %337 = tail call i32 @deflateReset(ptr noundef nonnull %74) #15
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
  br label %392

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
  %379 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %379, ptr %240, align 8, !tbaa !26
  %380 = load ptr, ptr %234, align 8, !tbaa !22
  store ptr %380, ptr %241, align 8, !tbaa !27
  store ptr %380, ptr %242, align 8, !tbaa !28
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
  %387 = load i32, ptr %240, align 8, !tbaa !26
  %388 = icmp ult i32 %382, %387
  br i1 %388, label %389, label %390, !prof !33, !nosanitize !32

389:                                              ; preds = %386
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

390:                                              ; preds = %386
  %391 = icmp eq i32 %382, %387
  br i1 %391, label %392, label %340, !llvm.loop !38

392:                                              ; preds = %390, %385, %366, %333, %324, %316, %296, %284, %278, %268
  %393 = phi i1 [ false, %333 ], [ true, %316 ], [ false, %296 ], [ true, %278 ], [ true, %366 ], [ true, %385 ], [ false, %390 ], [ true, %268 ], [ true, %284 ], [ false, %324 ]
  %394 = load i32, ptr %75, align 8, !tbaa !30
  %395 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %252, i32 %394), !nosanitize !32
  %396 = extractvalue { i32, i1 } %395, 1, !nosanitize !32
  br i1 %396, label %397, label %398, !prof !33, !nosanitize !32

397:                                              ; preds = %405, %392
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

398:                                              ; preds = %392
  %399 = extractvalue { i32, i1 } %395, 0, !nosanitize !32
  %400 = zext i32 %399 to i64
  %401 = load i64, ptr %244, align 8, !tbaa !39
  %402 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %401, i64 %400), !nosanitize !32
  %403 = extractvalue { i64, i1 } %402, 1, !nosanitize !32
  br i1 %403, label %404, label %405, !prof !33, !nosanitize !32

404:                                              ; preds = %398
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !32
  unreachable, !nosanitize !32

405:                                              ; preds = %398
  %406 = extractvalue { i64, i1 } %402, 0, !nosanitize !32
  store i64 %406, ptr %244, align 8, !tbaa !39
  %407 = load i64, ptr %70, align 8, !tbaa !29
  %408 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %407, i64 %400), !nosanitize !32
  %409 = extractvalue { i64, i1 } %408, 0, !nosanitize !32
  %410 = extractvalue { i64, i1 } %408, 1, !nosanitize !32
  br i1 %410, label %397, label %411, !prof !33, !nosanitize !32

411:                                              ; preds = %405
  store i64 %409, ptr %70, align 8, !tbaa !29
  br i1 %393, label %962, label %412

412:                                              ; preds = %411
  %413 = icmp eq i64 %409, 0
  br i1 %413, label %414, label %246, !llvm.loop !40

414:                                              ; preds = %412
  %415 = load i32, ptr %23, align 8, !tbaa !18
  br label %416

416:                                              ; preds = %414, %68
  %417 = phi i32 [ %415, %414 ], [ %69, %68 ]
  %418 = zext i32 %417 to i64
  %419 = icmp ult i64 %17, %418
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %419, label %422, label %627

422:                                              ; preds = %416
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %430 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %431 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %437

437:                                              ; preds = %562, %422
  %438 = phi i64 [ %17, %422 ], [ %480, %562 ]
  %439 = phi ptr [ %1, %422 ], [ %478, %562 ]
  %440 = load i32, ptr %421, align 8, !tbaa !41
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %445, label %442

442:                                              ; preds = %437
  %443 = load ptr, ptr %420, align 8, !tbaa !42
  %444 = load ptr, ptr %423, align 8, !tbaa !20
  br label %447

445:                                              ; preds = %437
  %446 = load ptr, ptr %423, align 8, !tbaa !20
  store ptr %446, ptr %420, align 8, !tbaa !42
  br label %447

447:                                              ; preds = %445, %442
  %448 = phi ptr [ %444, %442 ], [ %446, %445 ]
  %449 = phi ptr [ %443, %442 ], [ %446, %445 ]
  %450 = zext i32 %440 to i64
  %451 = getelementptr inbounds nuw i8, ptr %449, i64 %450
  %452 = ptrtoint ptr %451 to i64
  %453 = ptrtoint ptr %448 to i64
  %454 = sub i64 %452, %453
  %455 = trunc i64 %454 to i32
  %456 = load i32, ptr %23, align 8, !tbaa !18
  %457 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %456, i32 %455), !nosanitize !32
  %458 = extractvalue { i32, i1 } %457, 1, !nosanitize !32
  br i1 %458, label %459, label %460, !prof !33, !nosanitize !32

459:                                              ; preds = %447
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

460:                                              ; preds = %447
  %461 = extractvalue { i32, i1 } %457, 0, !nosanitize !32
  %462 = zext i32 %461 to i64
  %463 = tail call i64 @llvm.umin.i64(i64 %438, i64 %462)
  %464 = trunc nuw i64 %463 to i32
  %465 = and i64 %454, 4294967295
  %466 = getelementptr inbounds nuw i8, ptr %448, i64 %465
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %466, ptr align 1 %439, i64 %463, i1 false)
  %467 = load i32, ptr %421, align 8, !tbaa !41
  %468 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %467, i32 %464), !nosanitize !32
  %469 = extractvalue { i32, i1 } %468, 1, !nosanitize !32
  br i1 %469, label %470, label %471, !prof !33, !nosanitize !32

470:                                              ; preds = %939, %471, %460
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

471:                                              ; preds = %460
  %472 = extractvalue { i32, i1 } %468, 0, !nosanitize !32
  store i32 %472, ptr %421, align 8, !tbaa !41
  %473 = load i64, ptr %424, align 8, !tbaa !39
  %474 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %473, i64 %463), !nosanitize !32
  %475 = extractvalue { i64, i1 } %474, 1, !nosanitize !32
  br i1 %475, label %470, label %476, !prof !33, !nosanitize !32

476:                                              ; preds = %471
  %477 = extractvalue { i64, i1 } %474, 0, !nosanitize !32
  store i64 %477, ptr %424, align 8, !tbaa !39
  %478 = getelementptr inbounds nuw i8, ptr %439, i64 %463
  %479 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %438, i64 %463), !nosanitize !32
  %480 = extractvalue { i64, i1 } %479, 0, !nosanitize !32
  %481 = extractvalue { i64, i1 } %479, 1, !nosanitize !32
  br i1 %481, label %482, label %483, !prof !33, !nosanitize !32

482:                                              ; preds = %476
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

483:                                              ; preds = %476
  %484 = icmp eq i64 %480, 0
  br i1 %484, label %962, label %485

485:                                              ; preds = %483
  %486 = load i32, ptr %23, align 8, !tbaa !18
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %519

488:                                              ; preds = %485
  %489 = load i32, ptr %426, align 4, !tbaa !19
  %490 = shl i32 %489, 1
  %491 = zext i32 %490 to i64
  %492 = tail call noalias ptr @malloc(i64 noundef %491) #16
  store ptr %492, ptr %423, align 8, !tbaa !20
  %493 = icmp eq ptr %492, null
  br i1 %493, label %494, label %495

494:                                              ; preds = %488
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %619

495:                                              ; preds = %488
  %496 = load i32, ptr %425, align 8, !tbaa !21
  %497 = icmp eq i32 %496, 0
  %498 = load i32, ptr %426, align 4, !tbaa !19
  br i1 %497, label %500, label %499

499:                                              ; preds = %495
  store i32 %498, ptr %23, align 8, !tbaa !18
  br label %522

500:                                              ; preds = %495
  %501 = zext i32 %498 to i64
  %502 = tail call noalias ptr @malloc(i64 noundef %501) #16
  store ptr %502, ptr %427, align 8, !tbaa !22
  %503 = icmp eq ptr %502, null
  br i1 %503, label %504, label %505

504:                                              ; preds = %500
  tail call void @free(ptr noundef nonnull %492) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %619

505:                                              ; preds = %500
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %428, i8 0, i64 24, i1 false)
  %506 = load i32, ptr %429, align 8, !tbaa !23
  %507 = load i32, ptr %430, align 4, !tbaa !24
  %508 = tail call i32 @deflateInit2_(ptr noundef nonnull %420, i32 noundef %506, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %507, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %513, label %510

510:                                              ; preds = %505
  %511 = load ptr, ptr %427, align 8, !tbaa !22
  tail call void @free(ptr noundef %511) #15
  %512 = load ptr, ptr %423, align 8, !tbaa !20
  tail call void @free(ptr noundef %512) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %619

513:                                              ; preds = %505
  store ptr null, ptr %420, align 8, !tbaa !25
  %514 = load i32, ptr %425, align 8, !tbaa !21
  %515 = load i32, ptr %426, align 4, !tbaa !19
  store i32 %515, ptr %23, align 8, !tbaa !18
  %516 = icmp eq i32 %514, 0
  br i1 %516, label %517, label %522

517:                                              ; preds = %513
  store i32 %515, ptr %433, align 8, !tbaa !26
  %518 = load ptr, ptr %427, align 8, !tbaa !22
  store ptr %518, ptr %434, align 8, !tbaa !27
  store ptr %518, ptr %435, align 8, !tbaa !28
  br label %556

519:                                              ; preds = %485
  %520 = load i32, ptr %425, align 8, !tbaa !21
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %556, label %522

522:                                              ; preds = %519, %513, %499
  %523 = load i32, ptr %421, align 8, !tbaa !30
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %562, label %525

525:                                              ; preds = %522
  %526 = tail call ptr @__errno_location() #17
  %527 = load ptr, ptr %420, align 8, !tbaa !25
  br label %528

528:                                              ; preds = %550, %525
  %529 = phi ptr [ %527, %525 ], [ %554, %550 ]
  store i32 0, ptr %526, align 4, !tbaa !4
  store i32 0, ptr %431, align 4, !tbaa !17
  %530 = load i32, ptr %421, align 8, !tbaa !30
  %531 = tail call i32 @llvm.umin.i32(i32 %530, i32 1073741824)
  %532 = zext nneg i32 %531 to i64
  %533 = load i32, ptr %432, align 4, !tbaa !31
  %534 = tail call i64 @write(i32 noundef %533, ptr noundef %529, i64 noundef %532) #15
  %535 = trunc i64 %534 to i32
  %536 = icmp slt i32 %535, 0
  br i1 %536, label %537, label %545

537:                                              ; preds = %528
  %538 = load i32, ptr %526, align 4, !tbaa !4
  %539 = icmp eq i32 %538, 11
  br i1 %539, label %540, label %542

540:                                              ; preds = %537
  store i32 1, ptr %431, align 4, !tbaa !17
  %541 = load i32, ptr %526, align 4, !tbaa !4
  br label %542

542:                                              ; preds = %540, %537
  %543 = phi i32 [ %538, %537 ], [ %541, %540 ]
  %544 = tail call ptr @strerror(i32 noundef %543) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %544) #15
  br label %619

545:                                              ; preds = %528
  %546 = load i32, ptr %421, align 8, !tbaa !30
  %547 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %546, i32 %535), !nosanitize !32
  %548 = extractvalue { i32, i1 } %547, 1, !nosanitize !32
  br i1 %548, label %549, label %550, !prof !33, !nosanitize !32

549:                                              ; preds = %545
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

550:                                              ; preds = %545
  %551 = extractvalue { i32, i1 } %547, 0, !nosanitize !32
  store i32 %551, ptr %421, align 8, !tbaa !30
  %552 = load ptr, ptr %420, align 8, !tbaa !25
  %553 = and i64 %534, 2147483647
  %554 = getelementptr inbounds nuw i8, ptr %552, i64 %553
  store ptr %554, ptr %420, align 8, !tbaa !25
  %555 = icmp eq i32 %551, 0
  br i1 %555, label %562, label %528, !llvm.loop !34

556:                                              ; preds = %519, %517
  %557 = load i32, ptr %436, align 8, !tbaa !36
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %565, label %559

559:                                              ; preds = %556
  %560 = load i32, ptr %421, align 8, !tbaa !30
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %617, %559, %550, %522
  br label %437

563:                                              ; preds = %559
  %564 = tail call i32 @deflateReset(ptr noundef nonnull %420) #15
  store i32 0, ptr %436, align 8, !tbaa !36
  br label %565

565:                                              ; preds = %563, %556
  %566 = load i32, ptr %433, align 8, !tbaa !26
  br label %567

567:                                              ; preds = %617, %565
  %568 = phi i32 [ %566, %565 ], [ %614, %617 ]
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %608

570:                                              ; preds = %567
  %571 = load ptr, ptr %434, align 8, !tbaa !27
  %572 = load ptr, ptr %435, align 8, !tbaa !28
  %573 = icmp ugt ptr %571, %572
  br i1 %573, label %574, label %605

574:                                              ; preds = %570
  %575 = tail call ptr @__errno_location() #17
  br label %576

576:                                              ; preds = %596, %574
  %577 = phi ptr [ %572, %574 ], [ %599, %596 ]
  %578 = phi ptr [ %571, %574 ], [ %600, %596 ]
  store i32 0, ptr %575, align 4, !tbaa !4
  store i32 0, ptr %431, align 4, !tbaa !17
  %579 = ptrtoint ptr %578 to i64
  %580 = ptrtoint ptr %577 to i64
  %581 = sub i64 %579, %580
  %582 = tail call i64 @llvm.smin.i64(i64 %581, i64 1073741824)
  %583 = and i64 %582, 4294967295
  %584 = load i32, ptr %432, align 4, !tbaa !31
  %585 = tail call i64 @write(i32 noundef %584, ptr noundef %577, i64 noundef %583) #15
  %586 = and i64 %585, 2147483648
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %596, label %588

588:                                              ; preds = %576
  %589 = load i32, ptr %575, align 4, !tbaa !4
  %590 = icmp eq i32 %589, 11
  br i1 %590, label %591, label %593

591:                                              ; preds = %588
  store i32 1, ptr %431, align 4, !tbaa !17
  %592 = load i32, ptr %575, align 4, !tbaa !4
  br label %593

593:                                              ; preds = %591, %588
  %594 = phi i32 [ %589, %588 ], [ %592, %591 ]
  %595 = tail call ptr @strerror(i32 noundef %594) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %595) #15
  br label %619

596:                                              ; preds = %576
  %597 = load ptr, ptr %435, align 8, !tbaa !28
  %598 = and i64 %585, 2147483647
  %599 = getelementptr inbounds nuw i8, ptr %597, i64 %598
  store ptr %599, ptr %435, align 8, !tbaa !28
  %600 = load ptr, ptr %434, align 8, !tbaa !27
  %601 = icmp ugt ptr %600, %599
  br i1 %601, label %576, label %602, !llvm.loop !37

602:                                              ; preds = %596
  %603 = load i32, ptr %433, align 8, !tbaa !26
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %602, %570
  %606 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %606, ptr %433, align 8, !tbaa !26
  %607 = load ptr, ptr %427, align 8, !tbaa !22
  store ptr %607, ptr %434, align 8, !tbaa !27
  store ptr %607, ptr %435, align 8, !tbaa !28
  br label %608

608:                                              ; preds = %605, %602, %567
  %609 = phi i32 [ %603, %602 ], [ %606, %605 ], [ %568, %567 ]
  %610 = tail call i32 @deflate(ptr noundef nonnull %420, i32 noundef 0) #15
  %611 = icmp eq i32 %610, -2
  br i1 %611, label %612, label %613

612:                                              ; preds = %608
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %619

613:                                              ; preds = %608
  %614 = load i32, ptr %433, align 8, !tbaa !26
  %615 = icmp ult i32 %609, %614
  br i1 %615, label %616, label %617, !prof !33, !nosanitize !32

616:                                              ; preds = %613
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

617:                                              ; preds = %613
  %618 = icmp eq i32 %609, %614
  br i1 %618, label %562, label %567, !llvm.loop !38

619:                                              ; preds = %612, %593, %542, %510, %504, %494
  %620 = load i32, ptr %431, align 4, !tbaa !17
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %962, label %622

622:                                              ; preds = %619
  %623 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %17, i64 %480), !nosanitize !32
  %624 = extractvalue { i64, i1 } %623, 0, !nosanitize !32
  %625 = extractvalue { i64, i1 } %623, 1, !nosanitize !32
  br i1 %625, label %626, label %962, !prof !33, !nosanitize !32

626:                                              ; preds = %622
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

627:                                              ; preds = %416
  %628 = load i32, ptr %421, align 8, !tbaa !41
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %782, label %630

630:                                              ; preds = %627
  %631 = icmp eq i32 %417, 0
  br i1 %631, label %632, label %673

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
  br label %962

641:                                              ; preds = %632
  %642 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %643 = load i32, ptr %642, align 8, !tbaa !21
  %644 = icmp eq i32 %643, 0
  %645 = load i32, ptr %633, align 4, !tbaa !19
  br i1 %644, label %647, label %646

646:                                              ; preds = %641
  store i32 %645, ptr %23, align 8, !tbaa !18
  br label %677

647:                                              ; preds = %641
  %648 = zext i32 %645 to i64
  %649 = tail call noalias ptr @malloc(i64 noundef %648) #16
  %650 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %649, ptr %650, align 8, !tbaa !22
  %651 = icmp eq ptr %649, null
  br i1 %651, label %652, label %653

652:                                              ; preds = %647
  tail call void @free(ptr noundef nonnull %637) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %962

653:                                              ; preds = %647
  %654 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %655 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %654, i8 0, i64 24, i1 false)
  %656 = load i32, ptr %655, align 8, !tbaa !23
  %657 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %658 = load i32, ptr %657, align 4, !tbaa !24
  %659 = tail call i32 @deflateInit2_(ptr noundef nonnull %420, i32 noundef %656, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %658, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %664, label %661

661:                                              ; preds = %653
  %662 = load ptr, ptr %650, align 8, !tbaa !22
  tail call void @free(ptr noundef %662) #15
  %663 = load ptr, ptr %638, align 8, !tbaa !20
  tail call void @free(ptr noundef %663) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %962

664:                                              ; preds = %653
  store ptr null, ptr %420, align 8, !tbaa !25
  %665 = load i32, ptr %642, align 8, !tbaa !21
  %666 = load i32, ptr %633, align 4, !tbaa !19
  store i32 %666, ptr %23, align 8, !tbaa !18
  %667 = icmp eq i32 %665, 0
  br i1 %667, label %668, label %677

668:                                              ; preds = %664
  %669 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %666, ptr %669, align 8, !tbaa !26
  %670 = load ptr, ptr %650, align 8, !tbaa !22
  %671 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %670, ptr %671, align 8, !tbaa !27
  %672 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %670, ptr %672, align 8, !tbaa !28
  br label %713

673:                                              ; preds = %630
  %674 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %675 = load i32, ptr %674, align 8, !tbaa !21
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %713, label %677

677:                                              ; preds = %673, %664, %646
  %678 = load i32, ptr %421, align 8, !tbaa !30
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %782, label %680

680:                                              ; preds = %677
  %681 = tail call ptr @__errno_location() #17
  %682 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %683 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %684 = load ptr, ptr %420, align 8, !tbaa !25
  br label %685

685:                                              ; preds = %707, %680
  %686 = phi ptr [ %684, %680 ], [ %711, %707 ]
  store i32 0, ptr %681, align 4, !tbaa !4
  store i32 0, ptr %682, align 4, !tbaa !17
  %687 = load i32, ptr %421, align 8, !tbaa !30
  %688 = tail call i32 @llvm.umin.i32(i32 %687, i32 1073741824)
  %689 = zext nneg i32 %688 to i64
  %690 = load i32, ptr %683, align 4, !tbaa !31
  %691 = tail call i64 @write(i32 noundef %690, ptr noundef %686, i64 noundef %689) #15
  %692 = trunc i64 %691 to i32
  %693 = icmp slt i32 %692, 0
  br i1 %693, label %694, label %702

694:                                              ; preds = %685
  %695 = load i32, ptr %681, align 4, !tbaa !4
  %696 = icmp eq i32 %695, 11
  br i1 %696, label %697, label %699

697:                                              ; preds = %694
  store i32 1, ptr %682, align 4, !tbaa !17
  %698 = load i32, ptr %681, align 4, !tbaa !4
  br label %699

699:                                              ; preds = %697, %694
  %700 = phi i32 [ %695, %694 ], [ %698, %697 ]
  %701 = tail call ptr @strerror(i32 noundef %700) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %701) #15
  br label %962

702:                                              ; preds = %685
  %703 = load i32, ptr %421, align 8, !tbaa !30
  %704 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %703, i32 %692), !nosanitize !32
  %705 = extractvalue { i32, i1 } %704, 1, !nosanitize !32
  br i1 %705, label %706, label %707, !prof !33, !nosanitize !32

706:                                              ; preds = %702
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

707:                                              ; preds = %702
  %708 = extractvalue { i32, i1 } %704, 0, !nosanitize !32
  store i32 %708, ptr %421, align 8, !tbaa !30
  %709 = load ptr, ptr %420, align 8, !tbaa !25
  %710 = and i64 %691, 2147483647
  %711 = getelementptr inbounds nuw i8, ptr %709, i64 %710
  store ptr %711, ptr %420, align 8, !tbaa !25
  %712 = icmp eq i32 %708, 0
  br i1 %712, label %782, label %685, !llvm.loop !34

713:                                              ; preds = %673, %668
  %714 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %715 = load i32, ptr %714, align 8, !tbaa !36
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %722, label %717

717:                                              ; preds = %713
  %718 = load i32, ptr %421, align 8, !tbaa !30
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %782, label %720

720:                                              ; preds = %717
  %721 = tail call i32 @deflateReset(ptr noundef nonnull %420) #15
  store i32 0, ptr %714, align 8, !tbaa !36
  br label %722

722:                                              ; preds = %720, %713
  %723 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %724 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %725 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %726 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %727 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %728 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %729 = load i32, ptr %723, align 8, !tbaa !26
  br label %730

730:                                              ; preds = %780, %722
  %731 = phi i32 [ %729, %722 ], [ %777, %780 ]
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %733, label %771

733:                                              ; preds = %730
  %734 = load ptr, ptr %724, align 8, !tbaa !27
  %735 = load ptr, ptr %725, align 8, !tbaa !28
  %736 = icmp ugt ptr %734, %735
  br i1 %736, label %737, label %768

737:                                              ; preds = %733
  %738 = tail call ptr @__errno_location() #17
  br label %739

739:                                              ; preds = %759, %737
  %740 = phi ptr [ %735, %737 ], [ %762, %759 ]
  %741 = phi ptr [ %734, %737 ], [ %763, %759 ]
  store i32 0, ptr %738, align 4, !tbaa !4
  store i32 0, ptr %726, align 4, !tbaa !17
  %742 = ptrtoint ptr %741 to i64
  %743 = ptrtoint ptr %740 to i64
  %744 = sub i64 %742, %743
  %745 = tail call i64 @llvm.smin.i64(i64 %744, i64 1073741824)
  %746 = and i64 %745, 4294967295
  %747 = load i32, ptr %727, align 4, !tbaa !31
  %748 = tail call i64 @write(i32 noundef %747, ptr noundef %740, i64 noundef %746) #15
  %749 = and i64 %748, 2147483648
  %750 = icmp eq i64 %749, 0
  br i1 %750, label %759, label %751

751:                                              ; preds = %739
  %752 = load i32, ptr %738, align 4, !tbaa !4
  %753 = icmp eq i32 %752, 11
  br i1 %753, label %754, label %756

754:                                              ; preds = %751
  store i32 1, ptr %726, align 4, !tbaa !17
  %755 = load i32, ptr %738, align 4, !tbaa !4
  br label %756

756:                                              ; preds = %754, %751
  %757 = phi i32 [ %752, %751 ], [ %755, %754 ]
  %758 = tail call ptr @strerror(i32 noundef %757) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %758) #15
  br label %962

759:                                              ; preds = %739
  %760 = load ptr, ptr %725, align 8, !tbaa !28
  %761 = and i64 %748, 2147483647
  %762 = getelementptr inbounds nuw i8, ptr %760, i64 %761
  store ptr %762, ptr %725, align 8, !tbaa !28
  %763 = load ptr, ptr %724, align 8, !tbaa !27
  %764 = icmp ugt ptr %763, %762
  br i1 %764, label %739, label %765, !llvm.loop !37

765:                                              ; preds = %759
  %766 = load i32, ptr %723, align 8, !tbaa !26
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %768, label %771

768:                                              ; preds = %765, %733
  %769 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %769, ptr %723, align 8, !tbaa !26
  %770 = load ptr, ptr %728, align 8, !tbaa !22
  store ptr %770, ptr %724, align 8, !tbaa !27
  store ptr %770, ptr %725, align 8, !tbaa !28
  br label %771

771:                                              ; preds = %768, %765, %730
  %772 = phi i32 [ %766, %765 ], [ %769, %768 ], [ %731, %730 ]
  %773 = tail call i32 @deflate(ptr noundef nonnull %420, i32 noundef 0) #15
  %774 = icmp eq i32 %773, -2
  br i1 %774, label %775, label %776

775:                                              ; preds = %771
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %962

776:                                              ; preds = %771
  %777 = load i32, ptr %723, align 8, !tbaa !26
  %778 = icmp ult i32 %772, %777
  br i1 %778, label %779, label %780, !prof !33, !nosanitize !32

779:                                              ; preds = %776
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

780:                                              ; preds = %776
  %781 = icmp eq i32 %772, %777
  br i1 %781, label %782, label %730, !llvm.loop !38

782:                                              ; preds = %780, %717, %707, %677, %627
  store ptr %1, ptr %420, align 8, !tbaa !42
  %783 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %784 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %785 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %786 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %787 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %788 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %789 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %790 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %791 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %792 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %793 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %794 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %795 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %796 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %797

797:                                              ; preds = %960, %782
  %798 = phi i64 [ %17, %782 ], [ %948, %960 ]
  %799 = tail call i64 @llvm.umin.i64(i64 %798, i64 4294967295)
  %800 = trunc nuw i64 %799 to i32
  store i32 %800, ptr %421, align 8, !tbaa !41
  %801 = load i32, ptr %23, align 8, !tbaa !18
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %834

803:                                              ; preds = %797
  %804 = load i32, ptr %784, align 4, !tbaa !19
  %805 = shl i32 %804, 1
  %806 = zext i32 %805 to i64
  %807 = tail call noalias ptr @malloc(i64 noundef %806) #16
  store ptr %807, ptr %785, align 8, !tbaa !20
  %808 = icmp eq ptr %807, null
  br i1 %808, label %809, label %810

809:                                              ; preds = %803
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %933

810:                                              ; preds = %803
  %811 = load i32, ptr %783, align 8, !tbaa !21
  %812 = icmp eq i32 %811, 0
  %813 = load i32, ptr %784, align 4, !tbaa !19
  br i1 %812, label %815, label %814

814:                                              ; preds = %810
  store i32 %813, ptr %23, align 8, !tbaa !18
  br label %837

815:                                              ; preds = %810
  %816 = zext i32 %813 to i64
  %817 = tail call noalias ptr @malloc(i64 noundef %816) #16
  store ptr %817, ptr %786, align 8, !tbaa !22
  %818 = icmp eq ptr %817, null
  br i1 %818, label %819, label %820

819:                                              ; preds = %815
  tail call void @free(ptr noundef nonnull %807) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %933

820:                                              ; preds = %815
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %787, i8 0, i64 24, i1 false)
  %821 = load i32, ptr %788, align 8, !tbaa !23
  %822 = load i32, ptr %789, align 4, !tbaa !24
  %823 = tail call i32 @deflateInit2_(ptr noundef nonnull %420, i32 noundef %821, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %822, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %828, label %825

825:                                              ; preds = %820
  %826 = load ptr, ptr %786, align 8, !tbaa !22
  tail call void @free(ptr noundef %826) #15
  %827 = load ptr, ptr %785, align 8, !tbaa !20
  tail call void @free(ptr noundef %827) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %933

828:                                              ; preds = %820
  store ptr null, ptr %420, align 8, !tbaa !25
  %829 = load i32, ptr %783, align 8, !tbaa !21
  %830 = load i32, ptr %784, align 4, !tbaa !19
  store i32 %830, ptr %23, align 8, !tbaa !18
  %831 = icmp eq i32 %829, 0
  br i1 %831, label %832, label %837

832:                                              ; preds = %828
  store i32 %830, ptr %792, align 8, !tbaa !26
  %833 = load ptr, ptr %786, align 8, !tbaa !22
  store ptr %833, ptr %793, align 8, !tbaa !27
  store ptr %833, ptr %794, align 8, !tbaa !28
  br label %871

834:                                              ; preds = %797
  %835 = load i32, ptr %783, align 8, !tbaa !21
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %871, label %837

837:                                              ; preds = %834, %828, %814
  %838 = load i32, ptr %421, align 8, !tbaa !30
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %933, label %840

840:                                              ; preds = %837
  %841 = tail call ptr @__errno_location() #17
  %842 = load ptr, ptr %420, align 8, !tbaa !25
  br label %843

843:                                              ; preds = %865, %840
  %844 = phi ptr [ %842, %840 ], [ %869, %865 ]
  store i32 0, ptr %841, align 4, !tbaa !4
  store i32 0, ptr %790, align 4, !tbaa !17
  %845 = load i32, ptr %421, align 8, !tbaa !30
  %846 = tail call i32 @llvm.umin.i32(i32 %845, i32 1073741824)
  %847 = zext nneg i32 %846 to i64
  %848 = load i32, ptr %791, align 4, !tbaa !31
  %849 = tail call i64 @write(i32 noundef %848, ptr noundef %844, i64 noundef %847) #15
  %850 = trunc i64 %849 to i32
  %851 = icmp slt i32 %850, 0
  br i1 %851, label %852, label %860

852:                                              ; preds = %843
  %853 = load i32, ptr %841, align 4, !tbaa !4
  %854 = icmp eq i32 %853, 11
  br i1 %854, label %855, label %857

855:                                              ; preds = %852
  store i32 1, ptr %790, align 4, !tbaa !17
  %856 = load i32, ptr %841, align 4, !tbaa !4
  br label %857

857:                                              ; preds = %855, %852
  %858 = phi i32 [ %853, %852 ], [ %856, %855 ]
  %859 = tail call ptr @strerror(i32 noundef %858) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %859) #15
  br label %933

860:                                              ; preds = %843
  %861 = load i32, ptr %421, align 8, !tbaa !30
  %862 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %861, i32 %850), !nosanitize !32
  %863 = extractvalue { i32, i1 } %862, 1, !nosanitize !32
  br i1 %863, label %864, label %865, !prof !33, !nosanitize !32

864:                                              ; preds = %860
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

865:                                              ; preds = %860
  %866 = extractvalue { i32, i1 } %862, 0, !nosanitize !32
  store i32 %866, ptr %421, align 8, !tbaa !30
  %867 = load ptr, ptr %420, align 8, !tbaa !25
  %868 = and i64 %849, 2147483647
  %869 = getelementptr inbounds nuw i8, ptr %867, i64 %868
  store ptr %869, ptr %420, align 8, !tbaa !25
  %870 = icmp eq i32 %866, 0
  br i1 %870, label %933, label %843, !llvm.loop !34

871:                                              ; preds = %834, %832
  %872 = load i32, ptr %795, align 8, !tbaa !36
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %879, label %874

874:                                              ; preds = %871
  %875 = load i32, ptr %421, align 8, !tbaa !30
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %933, label %877

877:                                              ; preds = %874
  %878 = tail call i32 @deflateReset(ptr noundef nonnull %420) #15
  store i32 0, ptr %795, align 8, !tbaa !36
  br label %879

879:                                              ; preds = %877, %871
  %880 = load i32, ptr %792, align 8, !tbaa !26
  br label %881

881:                                              ; preds = %931, %879
  %882 = phi i32 [ %880, %879 ], [ %928, %931 ]
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %884, label %922

884:                                              ; preds = %881
  %885 = load ptr, ptr %793, align 8, !tbaa !27
  %886 = load ptr, ptr %794, align 8, !tbaa !28
  %887 = icmp ugt ptr %885, %886
  br i1 %887, label %888, label %919

888:                                              ; preds = %884
  %889 = tail call ptr @__errno_location() #17
  br label %890

890:                                              ; preds = %910, %888
  %891 = phi ptr [ %886, %888 ], [ %913, %910 ]
  %892 = phi ptr [ %885, %888 ], [ %914, %910 ]
  store i32 0, ptr %889, align 4, !tbaa !4
  store i32 0, ptr %790, align 4, !tbaa !17
  %893 = ptrtoint ptr %892 to i64
  %894 = ptrtoint ptr %891 to i64
  %895 = sub i64 %893, %894
  %896 = tail call i64 @llvm.smin.i64(i64 %895, i64 1073741824)
  %897 = and i64 %896, 4294967295
  %898 = load i32, ptr %791, align 4, !tbaa !31
  %899 = tail call i64 @write(i32 noundef %898, ptr noundef %891, i64 noundef %897) #15
  %900 = and i64 %899, 2147483648
  %901 = icmp eq i64 %900, 0
  br i1 %901, label %910, label %902

902:                                              ; preds = %890
  %903 = load i32, ptr %889, align 4, !tbaa !4
  %904 = icmp eq i32 %903, 11
  br i1 %904, label %905, label %907

905:                                              ; preds = %902
  store i32 1, ptr %790, align 4, !tbaa !17
  %906 = load i32, ptr %889, align 4, !tbaa !4
  br label %907

907:                                              ; preds = %905, %902
  %908 = phi i32 [ %903, %902 ], [ %906, %905 ]
  %909 = tail call ptr @strerror(i32 noundef %908) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %909) #15
  br label %933

910:                                              ; preds = %890
  %911 = load ptr, ptr %794, align 8, !tbaa !28
  %912 = and i64 %899, 2147483647
  %913 = getelementptr inbounds nuw i8, ptr %911, i64 %912
  store ptr %913, ptr %794, align 8, !tbaa !28
  %914 = load ptr, ptr %793, align 8, !tbaa !27
  %915 = icmp ugt ptr %914, %913
  br i1 %915, label %890, label %916, !llvm.loop !37

916:                                              ; preds = %910
  %917 = load i32, ptr %792, align 8, !tbaa !26
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %919, label %922

919:                                              ; preds = %916, %884
  %920 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %920, ptr %792, align 8, !tbaa !26
  %921 = load ptr, ptr %786, align 8, !tbaa !22
  store ptr %921, ptr %793, align 8, !tbaa !27
  store ptr %921, ptr %794, align 8, !tbaa !28
  br label %922

922:                                              ; preds = %919, %916, %881
  %923 = phi i32 [ %917, %916 ], [ %920, %919 ], [ %882, %881 ]
  %924 = tail call i32 @deflate(ptr noundef nonnull %420, i32 noundef 0) #15
  %925 = icmp eq i32 %924, -2
  br i1 %925, label %926, label %927

926:                                              ; preds = %922
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %933

927:                                              ; preds = %922
  %928 = load i32, ptr %792, align 8, !tbaa !26
  %929 = icmp ult i32 %923, %928
  br i1 %929, label %930, label %931, !prof !33, !nosanitize !32

930:                                              ; preds = %927
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

931:                                              ; preds = %927
  %932 = icmp eq i32 %923, %928
  br i1 %932, label %933, label %881, !llvm.loop !38

933:                                              ; preds = %931, %926, %907, %874, %865, %857, %837, %825, %819, %809
  %934 = phi i1 [ false, %874 ], [ true, %857 ], [ false, %837 ], [ true, %819 ], [ true, %907 ], [ true, %926 ], [ false, %931 ], [ true, %809 ], [ true, %825 ], [ false, %865 ]
  %935 = load i32, ptr %421, align 8, !tbaa !41
  %936 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %800, i32 %935), !nosanitize !32
  %937 = extractvalue { i32, i1 } %936, 1, !nosanitize !32
  br i1 %937, label %938, label %939, !prof !33, !nosanitize !32

938:                                              ; preds = %933
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

939:                                              ; preds = %933
  %940 = extractvalue { i32, i1 } %936, 0, !nosanitize !32
  %941 = zext i32 %940 to i64
  %942 = load i64, ptr %796, align 8, !tbaa !39
  %943 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %942, i64 %941), !nosanitize !32
  %944 = extractvalue { i64, i1 } %943, 1, !nosanitize !32
  br i1 %944, label %470, label %945, !prof !33, !nosanitize !32

945:                                              ; preds = %939
  %946 = extractvalue { i64, i1 } %943, 0, !nosanitize !32
  store i64 %946, ptr %796, align 8, !tbaa !39
  %947 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %798, i64 %941), !nosanitize !32
  %948 = extractvalue { i64, i1 } %947, 0, !nosanitize !32
  %949 = extractvalue { i64, i1 } %947, 1, !nosanitize !32
  br i1 %949, label %950, label %951, !prof !33, !nosanitize !32

950:                                              ; preds = %945
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

951:                                              ; preds = %945
  br i1 %934, label %952, label %960

952:                                              ; preds = %951
  %953 = load i32, ptr %790, align 4, !tbaa !17
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %962, label %955

955:                                              ; preds = %952
  %956 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %17, i64 %948), !nosanitize !32
  %957 = extractvalue { i64, i1 } %956, 0, !nosanitize !32
  %958 = extractvalue { i64, i1 } %956, 1, !nosanitize !32
  br i1 %958, label %959, label %962, !prof !33, !nosanitize !32

959:                                              ; preds = %955
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

960:                                              ; preds = %951
  %961 = icmp eq i64 %948, 0
  br i1 %961, label %962, label %797, !llvm.loop !43

962:                                              ; preds = %960, %955, %952, %775, %756, %699, %661, %652, %640, %622, %619, %483, %411, %223, %204, %147, %109, %100, %88, %56, %47, %35, %20
  %963 = phi i64 [ 0, %661 ], [ 0, %20 ], [ %17, %960 ], [ 0, %952 ], [ 0, %619 ], [ 0, %47 ], [ %17, %483 ], [ 0, %35 ], [ 0, %56 ], [ 0, %88 ], [ 0, %109 ], [ 0, %147 ], [ 0, %100 ], [ 0, %204 ], [ 0, %223 ], [ %624, %622 ], [ 0, %699 ], [ 0, %652 ], [ 0, %756 ], [ 0, %775 ], [ 0, %640 ], [ %957, %955 ], [ 0, %411 ]
  %964 = icmp ne i64 %17, 0
  %965 = icmp eq i64 %963, 0
  %966 = select i1 %964, i1 %965, i1 false
  %967 = trunc i64 %963 to i32
  %968 = select i1 %966, i32 -1, i32 %967
  br label %969

969:                                              ; preds = %962, %19, %12, %4, %2
  %970 = phi i32 [ %968, %962 ], [ -1, %2 ], [ -1, %19 ], [ -1, %12 ], [ -1, %4 ]
  ret i32 %970
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gzvprintf(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %665, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
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
  br label %665

65:                                               ; preds = %56, %52, %35, %18
  %66 = phi i32 [ %54, %56 ], [ %54, %52 ], [ %34, %35 ], [ %20, %18 ]
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %68 = load i64, ptr %67, align 8, !tbaa !29
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %412, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %72 = load i32, ptr %71, align 8, !tbaa !30
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %226, label %74

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
  br label %410

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
  br label %410

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
  br label %410

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
  br i1 %123, label %226, label %124

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
  br label %410

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
  br i1 %156, label %226, label %129, !llvm.loop !34

157:                                              ; preds = %117, %112
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %159 = load i32, ptr %158, align 8, !tbaa !36
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = load i32, ptr %71, align 8, !tbaa !30
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %226, label %164

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
  br label %410

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
  br label %410

220:                                              ; preds = %215
  %221 = load i32, ptr %167, align 8, !tbaa !26
  %222 = icmp ult i32 %216, %221
  br i1 %222, label %223, label %224, !prof !33, !nosanitize !32

223:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

224:                                              ; preds = %220
  %225 = icmp eq i32 %216, %221
  br i1 %225, label %226, label %174, !llvm.loop !38

226:                                              ; preds = %224, %161, %151, %121, %70
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %241 = load i64, ptr %67, align 8, !tbaa !29
  br label %242

242:                                              ; preds = %408, %226
  %243 = phi i64 [ %241, %226 ], [ %405, %408 ]
  %244 = phi i1 [ false, %226 ], [ true, %408 ]
  %245 = load i32, ptr %19, align 8, !tbaa !18
  %246 = zext i32 %245 to i64
  %247 = tail call i64 @llvm.smin.i64(i64 %243, i64 %246)
  %248 = trunc i64 %247 to i32
  %249 = load ptr, ptr %227, align 8, !tbaa !20
  br i1 %244, label %254, label %250

250:                                              ; preds = %242
  %251 = and i64 %247, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %249, i8 0, i64 %251, i1 false)
  %252 = load ptr, ptr %227, align 8, !tbaa !20
  %253 = load i32, ptr %19, align 8, !tbaa !18
  br label %254

254:                                              ; preds = %250, %242
  %255 = phi i32 [ %253, %250 ], [ %245, %242 ]
  %256 = phi ptr [ %252, %250 ], [ %249, %242 ]
  store i32 %248, ptr %71, align 8, !tbaa !30
  store ptr %256, ptr %6, align 8, !tbaa !25
  %257 = icmp eq i32 %255, 0
  br i1 %257, label %258, label %289

258:                                              ; preds = %254
  %259 = load i32, ptr %229, align 4, !tbaa !19
  %260 = shl i32 %259, 1
  %261 = zext i32 %260 to i64
  %262 = tail call noalias ptr @malloc(i64 noundef %261) #16
  store ptr %262, ptr %227, align 8, !tbaa !20
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %388

265:                                              ; preds = %258
  %266 = load i32, ptr %228, align 8, !tbaa !21
  %267 = icmp eq i32 %266, 0
  %268 = load i32, ptr %229, align 4, !tbaa !19
  br i1 %267, label %270, label %269

269:                                              ; preds = %265
  store i32 %268, ptr %19, align 8, !tbaa !18
  br label %292

270:                                              ; preds = %265
  %271 = zext i32 %268 to i64
  %272 = tail call noalias ptr @malloc(i64 noundef %271) #16
  store ptr %272, ptr %230, align 8, !tbaa !22
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %275

274:                                              ; preds = %270
  tail call void @free(ptr noundef nonnull %262) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %388

275:                                              ; preds = %270
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %231, i8 0, i64 24, i1 false)
  %276 = load i32, ptr %232, align 8, !tbaa !23
  %277 = load i32, ptr %233, align 4, !tbaa !24
  %278 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %276, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %277, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %275
  %281 = load ptr, ptr %230, align 8, !tbaa !22
  tail call void @free(ptr noundef %281) #15
  %282 = load ptr, ptr %227, align 8, !tbaa !20
  tail call void @free(ptr noundef %282) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %388

283:                                              ; preds = %275
  store ptr null, ptr %6, align 8, !tbaa !25
  %284 = load i32, ptr %228, align 8, !tbaa !21
  %285 = load i32, ptr %229, align 4, !tbaa !19
  store i32 %285, ptr %19, align 8, !tbaa !18
  %286 = icmp eq i32 %284, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %283
  store i32 %285, ptr %236, align 8, !tbaa !26
  %288 = load ptr, ptr %230, align 8, !tbaa !22
  store ptr %288, ptr %237, align 8, !tbaa !27
  store ptr %288, ptr %238, align 8, !tbaa !28
  br label %326

289:                                              ; preds = %254
  %290 = load i32, ptr %228, align 8, !tbaa !21
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %326, label %292

292:                                              ; preds = %289, %283, %269
  %293 = phi ptr [ %256, %289 ], [ null, %283 ], [ %256, %269 ]
  %294 = load i32, ptr %71, align 8, !tbaa !30
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %388, label %296

296:                                              ; preds = %292
  %297 = tail call ptr @__errno_location() #17
  br label %298

298:                                              ; preds = %320, %296
  %299 = phi ptr [ %293, %296 ], [ %324, %320 ]
  store i32 0, ptr %297, align 4, !tbaa !4
  store i32 0, ptr %234, align 4, !tbaa !17
  %300 = load i32, ptr %71, align 8, !tbaa !30
  %301 = tail call i32 @llvm.umin.i32(i32 %300, i32 1073741824)
  %302 = zext nneg i32 %301 to i64
  %303 = load i32, ptr %235, align 4, !tbaa !31
  %304 = tail call i64 @write(i32 noundef %303, ptr noundef %299, i64 noundef %302) #15
  %305 = trunc i64 %304 to i32
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %298
  %308 = load i32, ptr %297, align 4, !tbaa !4
  %309 = icmp eq i32 %308, 11
  br i1 %309, label %310, label %312

310:                                              ; preds = %307
  store i32 1, ptr %234, align 4, !tbaa !17
  %311 = load i32, ptr %297, align 4, !tbaa !4
  br label %312

312:                                              ; preds = %310, %307
  %313 = phi i32 [ %308, %307 ], [ %311, %310 ]
  %314 = tail call ptr @strerror(i32 noundef %313) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %314) #15
  br label %388

315:                                              ; preds = %298
  %316 = load i32, ptr %71, align 8, !tbaa !30
  %317 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %316, i32 %305), !nosanitize !32
  %318 = extractvalue { i32, i1 } %317, 1, !nosanitize !32
  br i1 %318, label %319, label %320, !prof !33, !nosanitize !32

319:                                              ; preds = %315
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

320:                                              ; preds = %315
  %321 = extractvalue { i32, i1 } %317, 0, !nosanitize !32
  store i32 %321, ptr %71, align 8, !tbaa !30
  %322 = load ptr, ptr %6, align 8, !tbaa !25
  %323 = and i64 %304, 2147483647
  %324 = getelementptr inbounds nuw i8, ptr %322, i64 %323
  store ptr %324, ptr %6, align 8, !tbaa !25
  %325 = icmp eq i32 %321, 0
  br i1 %325, label %388, label %298, !llvm.loop !34

326:                                              ; preds = %289, %287
  %327 = load i32, ptr %239, align 8, !tbaa !36
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %326
  %330 = load i32, ptr %71, align 8, !tbaa !30
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %388, label %332

332:                                              ; preds = %329
  %333 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %239, align 8, !tbaa !36
  br label %334

334:                                              ; preds = %332, %326
  %335 = load i32, ptr %236, align 8, !tbaa !26
  br label %336

336:                                              ; preds = %386, %334
  %337 = phi i32 [ %335, %334 ], [ %383, %386 ]
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %377

339:                                              ; preds = %336
  %340 = load ptr, ptr %237, align 8, !tbaa !27
  %341 = load ptr, ptr %238, align 8, !tbaa !28
  %342 = icmp ugt ptr %340, %341
  br i1 %342, label %343, label %374

343:                                              ; preds = %339
  %344 = tail call ptr @__errno_location() #17
  br label %345

345:                                              ; preds = %365, %343
  %346 = phi ptr [ %341, %343 ], [ %368, %365 ]
  %347 = phi ptr [ %340, %343 ], [ %369, %365 ]
  store i32 0, ptr %344, align 4, !tbaa !4
  store i32 0, ptr %234, align 4, !tbaa !17
  %348 = ptrtoint ptr %347 to i64
  %349 = ptrtoint ptr %346 to i64
  %350 = sub i64 %348, %349
  %351 = tail call i64 @llvm.smin.i64(i64 %350, i64 1073741824)
  %352 = and i64 %351, 4294967295
  %353 = load i32, ptr %235, align 4, !tbaa !31
  %354 = tail call i64 @write(i32 noundef %353, ptr noundef %346, i64 noundef %352) #15
  %355 = and i64 %354, 2147483648
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %365, label %357

357:                                              ; preds = %345
  %358 = load i32, ptr %344, align 4, !tbaa !4
  %359 = icmp eq i32 %358, 11
  br i1 %359, label %360, label %362

360:                                              ; preds = %357
  store i32 1, ptr %234, align 4, !tbaa !17
  %361 = load i32, ptr %344, align 4, !tbaa !4
  br label %362

362:                                              ; preds = %360, %357
  %363 = phi i32 [ %358, %357 ], [ %361, %360 ]
  %364 = tail call ptr @strerror(i32 noundef %363) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %364) #15
  br label %388

365:                                              ; preds = %345
  %366 = load ptr, ptr %238, align 8, !tbaa !28
  %367 = and i64 %354, 2147483647
  %368 = getelementptr inbounds nuw i8, ptr %366, i64 %367
  store ptr %368, ptr %238, align 8, !tbaa !28
  %369 = load ptr, ptr %237, align 8, !tbaa !27
  %370 = icmp ugt ptr %369, %368
  br i1 %370, label %345, label %371, !llvm.loop !37

371:                                              ; preds = %365
  %372 = load i32, ptr %236, align 8, !tbaa !26
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %371, %339
  %375 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %375, ptr %236, align 8, !tbaa !26
  %376 = load ptr, ptr %230, align 8, !tbaa !22
  store ptr %376, ptr %237, align 8, !tbaa !27
  store ptr %376, ptr %238, align 8, !tbaa !28
  br label %377

377:                                              ; preds = %374, %371, %336
  %378 = phi i32 [ %372, %371 ], [ %375, %374 ], [ %337, %336 ]
  %379 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %380 = icmp eq i32 %379, -2
  br i1 %380, label %381, label %382

381:                                              ; preds = %377
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %388

382:                                              ; preds = %377
  %383 = load i32, ptr %236, align 8, !tbaa !26
  %384 = icmp ult i32 %378, %383
  br i1 %384, label %385, label %386, !prof !33, !nosanitize !32

385:                                              ; preds = %382
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

386:                                              ; preds = %382
  %387 = icmp eq i32 %378, %383
  br i1 %387, label %388, label %336, !llvm.loop !38

388:                                              ; preds = %386, %381, %362, %329, %320, %312, %292, %280, %274, %264
  %389 = phi i1 [ false, %329 ], [ true, %312 ], [ false, %292 ], [ true, %274 ], [ true, %362 ], [ true, %381 ], [ false, %386 ], [ true, %264 ], [ true, %280 ], [ false, %320 ]
  %390 = load i32, ptr %71, align 8, !tbaa !30
  %391 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %248, i32 %390), !nosanitize !32
  %392 = extractvalue { i32, i1 } %391, 1, !nosanitize !32
  br i1 %392, label %393, label %394, !prof !33, !nosanitize !32

393:                                              ; preds = %401, %388
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

394:                                              ; preds = %388
  %395 = extractvalue { i32, i1 } %391, 0, !nosanitize !32
  %396 = zext i32 %395 to i64
  %397 = load i64, ptr %240, align 8, !tbaa !39
  %398 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %397, i64 %396), !nosanitize !32
  %399 = extractvalue { i64, i1 } %398, 1, !nosanitize !32
  br i1 %399, label %400, label %401, !prof !33, !nosanitize !32

400:                                              ; preds = %394
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !32
  unreachable, !nosanitize !32

401:                                              ; preds = %394
  %402 = extractvalue { i64, i1 } %398, 0, !nosanitize !32
  store i64 %402, ptr %240, align 8, !tbaa !39
  %403 = load i64, ptr %67, align 8, !tbaa !29
  %404 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %403, i64 %396), !nosanitize !32
  %405 = extractvalue { i64, i1 } %404, 0, !nosanitize !32
  %406 = extractvalue { i64, i1 } %404, 1, !nosanitize !32
  br i1 %406, label %393, label %407, !prof !33, !nosanitize !32

407:                                              ; preds = %401
  store i64 %405, ptr %67, align 8, !tbaa !29
  br i1 %389, label %410, label %408

408:                                              ; preds = %407
  %409 = icmp eq i64 %405, 0
  br i1 %409, label %412, label %242, !llvm.loop !40

410:                                              ; preds = %407, %219, %200, %143, %105, %96, %84
  %411 = load i32, ptr %11, align 8, !tbaa !16
  br label %665

412:                                              ; preds = %408, %65
  %413 = load ptr, ptr %6, align 8, !tbaa !25
  %414 = icmp eq ptr %413, null
  br i1 %414, label %590, label %415

415:                                              ; preds = %412
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %417 = load i32, ptr %416, align 8, !tbaa !30
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds nuw i8, ptr %413, i64 %418
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %421 = load ptr, ptr %420, align 8, !tbaa !20
  %422 = load i32, ptr %19, align 8, !tbaa !18
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds nuw i8, ptr %421, i64 %423
  %425 = icmp ugt ptr %419, %424
  br i1 %425, label %426, label %590

426:                                              ; preds = %415
  %427 = icmp eq i32 %422, 0
  br i1 %427, label %428, label %468

428:                                              ; preds = %426
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %430 = load i32, ptr %429, align 4, !tbaa !19
  %431 = shl i32 %430, 1
  %432 = zext i32 %431 to i64
  %433 = tail call noalias ptr @malloc(i64 noundef %432) #16
  store ptr %433, ptr %420, align 8, !tbaa !20
  %434 = icmp eq ptr %433, null
  br i1 %434, label %435, label %436

435:                                              ; preds = %428
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %577

436:                                              ; preds = %428
  %437 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %438 = load i32, ptr %437, align 8, !tbaa !21
  %439 = icmp eq i32 %438, 0
  %440 = load i32, ptr %429, align 4, !tbaa !19
  br i1 %439, label %442, label %441

441:                                              ; preds = %436
  store i32 %440, ptr %19, align 8, !tbaa !18
  br label %472

442:                                              ; preds = %436
  %443 = zext i32 %440 to i64
  %444 = tail call noalias ptr @malloc(i64 noundef %443) #16
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %444, ptr %445, align 8, !tbaa !22
  %446 = icmp eq ptr %444, null
  br i1 %446, label %447, label %448

447:                                              ; preds = %442
  tail call void @free(ptr noundef nonnull %433) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %577

448:                                              ; preds = %442
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %449, i8 0, i64 24, i1 false)
  %451 = load i32, ptr %450, align 8, !tbaa !23
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %453 = load i32, ptr %452, align 4, !tbaa !24
  %454 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %451, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %453, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %459, label %456

456:                                              ; preds = %448
  %457 = load ptr, ptr %445, align 8, !tbaa !22
  tail call void @free(ptr noundef %457) #15
  %458 = load ptr, ptr %420, align 8, !tbaa !20
  tail call void @free(ptr noundef %458) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %577

459:                                              ; preds = %448
  store ptr null, ptr %6, align 8, !tbaa !25
  %460 = load i32, ptr %437, align 8, !tbaa !21
  %461 = load i32, ptr %429, align 4, !tbaa !19
  store i32 %461, ptr %19, align 8, !tbaa !18
  %462 = icmp eq i32 %460, 0
  br i1 %462, label %463, label %472

463:                                              ; preds = %459
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %461, ptr %464, align 8, !tbaa !26
  %465 = load ptr, ptr %445, align 8, !tbaa !22
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %465, ptr %466, align 8, !tbaa !27
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %465, ptr %467, align 8, !tbaa !28
  br label %508

468:                                              ; preds = %426
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %470 = load i32, ptr %469, align 8, !tbaa !21
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %508, label %472

472:                                              ; preds = %468, %459, %441
  %473 = phi ptr [ %413, %468 ], [ null, %459 ], [ %413, %441 ]
  %474 = load i32, ptr %416, align 8, !tbaa !30
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %580, label %476

476:                                              ; preds = %472
  %477 = tail call ptr @__errno_location() #17
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %480

480:                                              ; preds = %502, %476
  %481 = phi ptr [ %473, %476 ], [ %506, %502 ]
  store i32 0, ptr %477, align 4, !tbaa !4
  store i32 0, ptr %478, align 4, !tbaa !17
  %482 = load i32, ptr %416, align 8, !tbaa !30
  %483 = tail call i32 @llvm.umin.i32(i32 %482, i32 1073741824)
  %484 = zext nneg i32 %483 to i64
  %485 = load i32, ptr %479, align 4, !tbaa !31
  %486 = tail call i64 @write(i32 noundef %485, ptr noundef %481, i64 noundef %484) #15
  %487 = trunc i64 %486 to i32
  %488 = icmp slt i32 %487, 0
  br i1 %488, label %489, label %497

489:                                              ; preds = %480
  %490 = load i32, ptr %477, align 4, !tbaa !4
  %491 = icmp eq i32 %490, 11
  br i1 %491, label %492, label %494

492:                                              ; preds = %489
  store i32 1, ptr %478, align 4, !tbaa !17
  %493 = load i32, ptr %477, align 4, !tbaa !4
  br label %494

494:                                              ; preds = %492, %489
  %495 = phi i32 [ %490, %489 ], [ %493, %492 ]
  %496 = tail call ptr @strerror(i32 noundef %495) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %496) #15
  br label %577

497:                                              ; preds = %480
  %498 = load i32, ptr %416, align 8, !tbaa !30
  %499 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %498, i32 %487), !nosanitize !32
  %500 = extractvalue { i32, i1 } %499, 1, !nosanitize !32
  br i1 %500, label %501, label %502, !prof !33, !nosanitize !32

501:                                              ; preds = %497
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

502:                                              ; preds = %497
  %503 = extractvalue { i32, i1 } %499, 0, !nosanitize !32
  store i32 %503, ptr %416, align 8, !tbaa !30
  %504 = load ptr, ptr %6, align 8, !tbaa !25
  %505 = and i64 %486, 2147483647
  %506 = getelementptr inbounds nuw i8, ptr %504, i64 %505
  store ptr %506, ptr %6, align 8, !tbaa !25
  %507 = icmp eq i32 %503, 0
  br i1 %507, label %577, label %480, !llvm.loop !34

508:                                              ; preds = %468, %463
  %509 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %510 = load i32, ptr %509, align 8, !tbaa !36
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %517, label %512

512:                                              ; preds = %508
  %513 = load i32, ptr %416, align 8, !tbaa !30
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %580, label %515

515:                                              ; preds = %512
  %516 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %509, align 8, !tbaa !36
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
  store i32 0, ptr %533, align 4, !tbaa !4
  store i32 0, ptr %521, align 4, !tbaa !17
  %537 = ptrtoint ptr %536 to i64
  %538 = ptrtoint ptr %535 to i64
  %539 = sub i64 %537, %538
  %540 = tail call i64 @llvm.smin.i64(i64 %539, i64 1073741824)
  %541 = and i64 %540, 4294967295
  %542 = load i32, ptr %522, align 4, !tbaa !31
  %543 = tail call i64 @write(i32 noundef %542, ptr noundef %535, i64 noundef %541) #15
  %544 = and i64 %543, 2147483648
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %554, label %546

546:                                              ; preds = %534
  %547 = load i32, ptr %533, align 4, !tbaa !4
  %548 = icmp eq i32 %547, 11
  br i1 %548, label %549, label %551

549:                                              ; preds = %546
  store i32 1, ptr %521, align 4, !tbaa !17
  %550 = load i32, ptr %533, align 4, !tbaa !4
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
  br i1 %559, label %534, label %560, !llvm.loop !37

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
  br i1 %573, label %574, label %575, !prof !33, !nosanitize !32

574:                                              ; preds = %571
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

575:                                              ; preds = %571
  %576 = icmp eq i32 %567, %572
  br i1 %576, label %577, label %525, !llvm.loop !38

577:                                              ; preds = %575, %570, %551, %502, %494, %456, %447, %435
  %578 = load i32, ptr %416, align 8, !tbaa !30
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %582

580:                                              ; preds = %577, %512, %472
  %581 = load ptr, ptr %420, align 8, !tbaa !20
  store ptr %581, ptr %6, align 8, !tbaa !25
  br label %590

582:                                              ; preds = %577
  %583 = load ptr, ptr %420, align 8, !tbaa !20
  %584 = load ptr, ptr %6, align 8, !tbaa !25
  %585 = zext i32 %578 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %583, ptr align 1 %584, i64 %585, i1 false)
  %586 = load ptr, ptr %420, align 8, !tbaa !20
  store ptr %586, ptr %6, align 8, !tbaa !25
  %587 = load i32, ptr %416, align 8, !tbaa !30
  %588 = load i32, ptr %19, align 8, !tbaa !18
  %589 = icmp ule i32 %587, %588
  br label %590

590:                                              ; preds = %582, %580, %415, %412
  %591 = phi i1 [ %589, %582 ], [ true, %580 ], [ true, %415 ], [ true, %412 ]
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
  %624 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %623, i32 1), !nosanitize !32
  %625 = extractvalue { i32, i1 } %624, 1, !nosanitize !32
  br i1 %625, label %626, label %627, !prof !33, !nosanitize !32

626:                                              ; preds = %615
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

627:                                              ; preds = %615
  %628 = extractvalue { i32, i1 } %624, 0, !nosanitize !32
  %629 = zext i32 %628 to i64
  %630 = getelementptr inbounds nuw i8, ptr %622, i64 %629
  store i8 0, ptr %630, align 1, !tbaa !44
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
  %642 = load i8, ptr %641, align 1, !tbaa !44
  %643 = icmp eq i8 %642, 0
  br i1 %643, label %644, label %665

644:                                              ; preds = %638
  %645 = load i32, ptr %607, align 8, !tbaa !30
  %646 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %645, i32 %633), !nosanitize !32
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !32
  br i1 %647, label %648, label %649, !prof !33, !nosanitize !32

648:                                              ; preds = %649, %644
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

649:                                              ; preds = %644
  %650 = extractvalue { i32, i1 } %646, 0, !nosanitize !32
  store i32 %650, ptr %607, align 8, !tbaa !30
  %651 = sext i32 %633 to i64
  %652 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %653 = load i64, ptr %652, align 8, !tbaa !39
  %654 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %653, i64 %651), !nosanitize !32
  %655 = extractvalue { i64, i1 } %654, 1, !nosanitize !32
  br i1 %655, label %648, label %656, !prof !33, !nosanitize !32

656:                                              ; preds = %649
  %657 = extractvalue { i64, i1 } %654, 0, !nosanitize !32
  store i64 %657, ptr %652, align 8, !tbaa !39
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

665:                                              ; preds = %664, %660, %638, %635, %627, %604, %410, %63, %14, %5, %3
  %666 = phi i32 [ %605, %604 ], [ -2, %3 ], [ %64, %63 ], [ %411, %410 ], [ -2, %5 ], [ %633, %664 ], [ 0, %627 ], [ -2, %14 ], [ 0, %638 ], [ 0, %635 ], [ %658, %660 ]
  ret i32 %666
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
  br label %168

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
  br label %168

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
  br label %168

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
  br i1 %66, label %175, label %67

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
  br label %168

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
  br i1 %98, label %168, label %71, !llvm.loop !34

99:                                               ; preds = %59, %54
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %101 = load i32, ptr %100, align 8, !tbaa !36
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = load i32, ptr %6, align 8, !tbaa !30
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %175, label %106

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
  br label %168

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
  br label %168

162:                                              ; preds = %157
  %163 = load i32, ptr %109, align 8, !tbaa !26
  %164 = icmp ult i32 %158, %163
  br i1 %164, label %165, label %166, !prof !33, !nosanitize !32

165:                                              ; preds = %162
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

166:                                              ; preds = %162
  %167 = icmp eq i32 %158, %163
  br i1 %167, label %168, label %116, !llvm.loop !38

168:                                              ; preds = %166, %161, %142, %93, %85, %47, %38, %26
  %169 = load i32, ptr %6, align 8, !tbaa !30
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr %10, align 8, !tbaa !20
  %173 = load ptr, ptr %2, align 8, !tbaa !25
  %174 = zext i32 %169 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %172, ptr align 1 %173, i64 %174, i1 false)
  br label %175

175:                                              ; preds = %171, %168, %103, %63
  %176 = load ptr, ptr %10, align 8, !tbaa !20
  store ptr %176, ptr %2, align 8, !tbaa !25
  br label %177

177:                                              ; preds = %175, %5, %1
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @gzprintf(ptr noundef %0, ptr noundef readonly captures(none) %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.va_start.p0(ptr nonnull %3)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %665, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
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
  br label %665

65:                                               ; preds = %56, %52, %35, %18
  %66 = phi i32 [ %54, %56 ], [ %54, %52 ], [ %34, %35 ], [ %20, %18 ]
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %68 = load i64, ptr %67, align 8, !tbaa !29
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %412, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %72 = load i32, ptr %71, align 8, !tbaa !30
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %226, label %74

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
  br label %410

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
  br label %410

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
  br label %410

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
  br i1 %123, label %226, label %124

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
  br label %410

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
  br i1 %156, label %226, label %129, !llvm.loop !34

157:                                              ; preds = %117, %112
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %159 = load i32, ptr %158, align 8, !tbaa !36
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = load i32, ptr %71, align 8, !tbaa !30
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %226, label %164

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
  br label %410

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
  br label %410

220:                                              ; preds = %215
  %221 = load i32, ptr %167, align 8, !tbaa !26
  %222 = icmp ult i32 %216, %221
  br i1 %222, label %223, label %224, !prof !33, !nosanitize !32

223:                                              ; preds = %220
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

224:                                              ; preds = %220
  %225 = icmp eq i32 %216, %221
  br i1 %225, label %226, label %174, !llvm.loop !38

226:                                              ; preds = %224, %161, %151, %121, %70
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %241 = load i64, ptr %67, align 8, !tbaa !29
  br label %242

242:                                              ; preds = %408, %226
  %243 = phi i64 [ %241, %226 ], [ %405, %408 ]
  %244 = phi i1 [ false, %226 ], [ true, %408 ]
  %245 = load i32, ptr %19, align 8, !tbaa !18
  %246 = zext i32 %245 to i64
  %247 = call i64 @llvm.smin.i64(i64 %243, i64 %246)
  %248 = trunc i64 %247 to i32
  %249 = load ptr, ptr %227, align 8, !tbaa !20
  br i1 %244, label %254, label %250

250:                                              ; preds = %242
  %251 = and i64 %247, 4294967295
  call void @llvm.memset.p0.i64(ptr align 1 %249, i8 0, i64 %251, i1 false)
  %252 = load ptr, ptr %227, align 8, !tbaa !20
  %253 = load i32, ptr %19, align 8, !tbaa !18
  br label %254

254:                                              ; preds = %250, %242
  %255 = phi i32 [ %253, %250 ], [ %245, %242 ]
  %256 = phi ptr [ %252, %250 ], [ %249, %242 ]
  store i32 %248, ptr %71, align 8, !tbaa !30
  store ptr %256, ptr %6, align 8, !tbaa !25
  %257 = icmp eq i32 %255, 0
  br i1 %257, label %258, label %289

258:                                              ; preds = %254
  %259 = load i32, ptr %229, align 4, !tbaa !19
  %260 = shl i32 %259, 1
  %261 = zext i32 %260 to i64
  %262 = call noalias ptr @malloc(i64 noundef %261) #16
  store ptr %262, ptr %227, align 8, !tbaa !20
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %388

265:                                              ; preds = %258
  %266 = load i32, ptr %228, align 8, !tbaa !21
  %267 = icmp eq i32 %266, 0
  %268 = load i32, ptr %229, align 4, !tbaa !19
  br i1 %267, label %270, label %269

269:                                              ; preds = %265
  store i32 %268, ptr %19, align 8, !tbaa !18
  br label %292

270:                                              ; preds = %265
  %271 = zext i32 %268 to i64
  %272 = call noalias ptr @malloc(i64 noundef %271) #16
  store ptr %272, ptr %230, align 8, !tbaa !22
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %275

274:                                              ; preds = %270
  call void @free(ptr noundef nonnull %262) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %388

275:                                              ; preds = %270
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %231, i8 0, i64 24, i1 false)
  %276 = load i32, ptr %232, align 8, !tbaa !23
  %277 = load i32, ptr %233, align 4, !tbaa !24
  %278 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %276, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %277, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %275
  %281 = load ptr, ptr %230, align 8, !tbaa !22
  call void @free(ptr noundef %281) #15
  %282 = load ptr, ptr %227, align 8, !tbaa !20
  call void @free(ptr noundef %282) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %388

283:                                              ; preds = %275
  store ptr null, ptr %6, align 8, !tbaa !25
  %284 = load i32, ptr %228, align 8, !tbaa !21
  %285 = load i32, ptr %229, align 4, !tbaa !19
  store i32 %285, ptr %19, align 8, !tbaa !18
  %286 = icmp eq i32 %284, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %283
  store i32 %285, ptr %236, align 8, !tbaa !26
  %288 = load ptr, ptr %230, align 8, !tbaa !22
  store ptr %288, ptr %237, align 8, !tbaa !27
  store ptr %288, ptr %238, align 8, !tbaa !28
  br label %326

289:                                              ; preds = %254
  %290 = load i32, ptr %228, align 8, !tbaa !21
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %326, label %292

292:                                              ; preds = %289, %283, %269
  %293 = phi ptr [ %256, %289 ], [ null, %283 ], [ %256, %269 ]
  %294 = load i32, ptr %71, align 8, !tbaa !30
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %388, label %296

296:                                              ; preds = %292
  %297 = tail call ptr @__errno_location() #17
  br label %298

298:                                              ; preds = %320, %296
  %299 = phi ptr [ %293, %296 ], [ %324, %320 ]
  store i32 0, ptr %297, align 4, !tbaa !4
  store i32 0, ptr %234, align 4, !tbaa !17
  %300 = load i32, ptr %71, align 8, !tbaa !30
  %301 = call i32 @llvm.umin.i32(i32 %300, i32 1073741824)
  %302 = zext nneg i32 %301 to i64
  %303 = load i32, ptr %235, align 4, !tbaa !31
  %304 = call i64 @write(i32 noundef %303, ptr noundef %299, i64 noundef %302) #15
  %305 = trunc i64 %304 to i32
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %298
  %308 = load i32, ptr %297, align 4, !tbaa !4
  %309 = icmp eq i32 %308, 11
  br i1 %309, label %310, label %312

310:                                              ; preds = %307
  store i32 1, ptr %234, align 4, !tbaa !17
  %311 = load i32, ptr %297, align 4, !tbaa !4
  br label %312

312:                                              ; preds = %310, %307
  %313 = phi i32 [ %308, %307 ], [ %311, %310 ]
  %314 = call ptr @strerror(i32 noundef %313) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %314) #15
  br label %388

315:                                              ; preds = %298
  %316 = load i32, ptr %71, align 8, !tbaa !30
  %317 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %316, i32 %305), !nosanitize !32
  %318 = extractvalue { i32, i1 } %317, 1, !nosanitize !32
  br i1 %318, label %319, label %320, !prof !33, !nosanitize !32

319:                                              ; preds = %315
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

320:                                              ; preds = %315
  %321 = extractvalue { i32, i1 } %317, 0, !nosanitize !32
  store i32 %321, ptr %71, align 8, !tbaa !30
  %322 = load ptr, ptr %6, align 8, !tbaa !25
  %323 = and i64 %304, 2147483647
  %324 = getelementptr inbounds nuw i8, ptr %322, i64 %323
  store ptr %324, ptr %6, align 8, !tbaa !25
  %325 = icmp eq i32 %321, 0
  br i1 %325, label %388, label %298, !llvm.loop !34

326:                                              ; preds = %289, %287
  %327 = load i32, ptr %239, align 8, !tbaa !36
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %326
  %330 = load i32, ptr %71, align 8, !tbaa !30
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %388, label %332

332:                                              ; preds = %329
  %333 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %239, align 8, !tbaa !36
  br label %334

334:                                              ; preds = %332, %326
  %335 = load i32, ptr %236, align 8, !tbaa !26
  br label %336

336:                                              ; preds = %386, %334
  %337 = phi i32 [ %335, %334 ], [ %383, %386 ]
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %377

339:                                              ; preds = %336
  %340 = load ptr, ptr %237, align 8, !tbaa !27
  %341 = load ptr, ptr %238, align 8, !tbaa !28
  %342 = icmp ugt ptr %340, %341
  br i1 %342, label %343, label %374

343:                                              ; preds = %339
  %344 = tail call ptr @__errno_location() #17
  br label %345

345:                                              ; preds = %365, %343
  %346 = phi ptr [ %341, %343 ], [ %368, %365 ]
  %347 = phi ptr [ %340, %343 ], [ %369, %365 ]
  store i32 0, ptr %344, align 4, !tbaa !4
  store i32 0, ptr %234, align 4, !tbaa !17
  %348 = ptrtoint ptr %347 to i64
  %349 = ptrtoint ptr %346 to i64
  %350 = sub i64 %348, %349
  %351 = call i64 @llvm.smin.i64(i64 %350, i64 1073741824)
  %352 = and i64 %351, 4294967295
  %353 = load i32, ptr %235, align 4, !tbaa !31
  %354 = call i64 @write(i32 noundef %353, ptr noundef %346, i64 noundef %352) #15
  %355 = and i64 %354, 2147483648
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %365, label %357

357:                                              ; preds = %345
  %358 = load i32, ptr %344, align 4, !tbaa !4
  %359 = icmp eq i32 %358, 11
  br i1 %359, label %360, label %362

360:                                              ; preds = %357
  store i32 1, ptr %234, align 4, !tbaa !17
  %361 = load i32, ptr %344, align 4, !tbaa !4
  br label %362

362:                                              ; preds = %360, %357
  %363 = phi i32 [ %358, %357 ], [ %361, %360 ]
  %364 = call ptr @strerror(i32 noundef %363) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %364) #15
  br label %388

365:                                              ; preds = %345
  %366 = load ptr, ptr %238, align 8, !tbaa !28
  %367 = and i64 %354, 2147483647
  %368 = getelementptr inbounds nuw i8, ptr %366, i64 %367
  store ptr %368, ptr %238, align 8, !tbaa !28
  %369 = load ptr, ptr %237, align 8, !tbaa !27
  %370 = icmp ugt ptr %369, %368
  br i1 %370, label %345, label %371, !llvm.loop !37

371:                                              ; preds = %365
  %372 = load i32, ptr %236, align 8, !tbaa !26
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %371, %339
  %375 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %375, ptr %236, align 8, !tbaa !26
  %376 = load ptr, ptr %230, align 8, !tbaa !22
  store ptr %376, ptr %237, align 8, !tbaa !27
  store ptr %376, ptr %238, align 8, !tbaa !28
  br label %377

377:                                              ; preds = %374, %371, %336
  %378 = phi i32 [ %372, %371 ], [ %375, %374 ], [ %337, %336 ]
  %379 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %380 = icmp eq i32 %379, -2
  br i1 %380, label %381, label %382

381:                                              ; preds = %377
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %388

382:                                              ; preds = %377
  %383 = load i32, ptr %236, align 8, !tbaa !26
  %384 = icmp ult i32 %378, %383
  br i1 %384, label %385, label %386, !prof !33, !nosanitize !32

385:                                              ; preds = %382
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

386:                                              ; preds = %382
  %387 = icmp eq i32 %378, %383
  br i1 %387, label %388, label %336, !llvm.loop !38

388:                                              ; preds = %386, %381, %362, %329, %320, %312, %292, %280, %274, %264
  %389 = phi i1 [ false, %329 ], [ true, %312 ], [ false, %292 ], [ true, %274 ], [ true, %362 ], [ true, %381 ], [ false, %386 ], [ true, %264 ], [ true, %280 ], [ false, %320 ]
  %390 = load i32, ptr %71, align 8, !tbaa !30
  %391 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %248, i32 %390), !nosanitize !32
  %392 = extractvalue { i32, i1 } %391, 1, !nosanitize !32
  br i1 %392, label %393, label %394, !prof !33, !nosanitize !32

393:                                              ; preds = %401, %388
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

394:                                              ; preds = %388
  %395 = extractvalue { i32, i1 } %391, 0, !nosanitize !32
  %396 = zext i32 %395 to i64
  %397 = load i64, ptr %240, align 8, !tbaa !39
  %398 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %397, i64 %396), !nosanitize !32
  %399 = extractvalue { i64, i1 } %398, 1, !nosanitize !32
  br i1 %399, label %400, label %401, !prof !33, !nosanitize !32

400:                                              ; preds = %394
  call void @llvm.ubsantrap(i8 0) #19, !nosanitize !32
  unreachable, !nosanitize !32

401:                                              ; preds = %394
  %402 = extractvalue { i64, i1 } %398, 0, !nosanitize !32
  store i64 %402, ptr %240, align 8, !tbaa !39
  %403 = load i64, ptr %67, align 8, !tbaa !29
  %404 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %403, i64 %396), !nosanitize !32
  %405 = extractvalue { i64, i1 } %404, 0, !nosanitize !32
  %406 = extractvalue { i64, i1 } %404, 1, !nosanitize !32
  br i1 %406, label %393, label %407, !prof !33, !nosanitize !32

407:                                              ; preds = %401
  store i64 %405, ptr %67, align 8, !tbaa !29
  br i1 %389, label %410, label %408

408:                                              ; preds = %407
  %409 = icmp eq i64 %405, 0
  br i1 %409, label %412, label %242, !llvm.loop !40

410:                                              ; preds = %407, %219, %200, %143, %105, %96, %84
  %411 = load i32, ptr %11, align 8, !tbaa !16
  br label %665

412:                                              ; preds = %408, %65
  %413 = load ptr, ptr %6, align 8, !tbaa !25
  %414 = icmp eq ptr %413, null
  br i1 %414, label %590, label %415

415:                                              ; preds = %412
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %417 = load i32, ptr %416, align 8, !tbaa !30
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds nuw i8, ptr %413, i64 %418
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %421 = load ptr, ptr %420, align 8, !tbaa !20
  %422 = load i32, ptr %19, align 8, !tbaa !18
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds nuw i8, ptr %421, i64 %423
  %425 = icmp ugt ptr %419, %424
  br i1 %425, label %426, label %590

426:                                              ; preds = %415
  %427 = icmp eq i32 %422, 0
  br i1 %427, label %428, label %468

428:                                              ; preds = %426
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %430 = load i32, ptr %429, align 4, !tbaa !19
  %431 = shl i32 %430, 1
  %432 = zext i32 %431 to i64
  %433 = call noalias ptr @malloc(i64 noundef %432) #16
  store ptr %433, ptr %420, align 8, !tbaa !20
  %434 = icmp eq ptr %433, null
  br i1 %434, label %435, label %436

435:                                              ; preds = %428
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %577

436:                                              ; preds = %428
  %437 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %438 = load i32, ptr %437, align 8, !tbaa !21
  %439 = icmp eq i32 %438, 0
  %440 = load i32, ptr %429, align 4, !tbaa !19
  br i1 %439, label %442, label %441

441:                                              ; preds = %436
  store i32 %440, ptr %19, align 8, !tbaa !18
  br label %472

442:                                              ; preds = %436
  %443 = zext i32 %440 to i64
  %444 = call noalias ptr @malloc(i64 noundef %443) #16
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %444, ptr %445, align 8, !tbaa !22
  %446 = icmp eq ptr %444, null
  br i1 %446, label %447, label %448

447:                                              ; preds = %442
  call void @free(ptr noundef nonnull %433) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %577

448:                                              ; preds = %442
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %449, i8 0, i64 24, i1 false)
  %451 = load i32, ptr %450, align 8, !tbaa !23
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %453 = load i32, ptr %452, align 4, !tbaa !24
  %454 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %451, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %453, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %459, label %456

456:                                              ; preds = %448
  %457 = load ptr, ptr %445, align 8, !tbaa !22
  call void @free(ptr noundef %457) #15
  %458 = load ptr, ptr %420, align 8, !tbaa !20
  call void @free(ptr noundef %458) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %577

459:                                              ; preds = %448
  store ptr null, ptr %6, align 8, !tbaa !25
  %460 = load i32, ptr %437, align 8, !tbaa !21
  %461 = load i32, ptr %429, align 4, !tbaa !19
  store i32 %461, ptr %19, align 8, !tbaa !18
  %462 = icmp eq i32 %460, 0
  br i1 %462, label %463, label %472

463:                                              ; preds = %459
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %461, ptr %464, align 8, !tbaa !26
  %465 = load ptr, ptr %445, align 8, !tbaa !22
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %465, ptr %466, align 8, !tbaa !27
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %465, ptr %467, align 8, !tbaa !28
  br label %508

468:                                              ; preds = %426
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %470 = load i32, ptr %469, align 8, !tbaa !21
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %508, label %472

472:                                              ; preds = %468, %459, %441
  %473 = phi ptr [ %413, %468 ], [ null, %459 ], [ %413, %441 ]
  %474 = load i32, ptr %416, align 8, !tbaa !30
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %580, label %476

476:                                              ; preds = %472
  %477 = tail call ptr @__errno_location() #17
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %480

480:                                              ; preds = %502, %476
  %481 = phi ptr [ %473, %476 ], [ %506, %502 ]
  store i32 0, ptr %477, align 4, !tbaa !4
  store i32 0, ptr %478, align 4, !tbaa !17
  %482 = load i32, ptr %416, align 8, !tbaa !30
  %483 = call i32 @llvm.umin.i32(i32 %482, i32 1073741824)
  %484 = zext nneg i32 %483 to i64
  %485 = load i32, ptr %479, align 4, !tbaa !31
  %486 = call i64 @write(i32 noundef %485, ptr noundef %481, i64 noundef %484) #15
  %487 = trunc i64 %486 to i32
  %488 = icmp slt i32 %487, 0
  br i1 %488, label %489, label %497

489:                                              ; preds = %480
  %490 = load i32, ptr %477, align 4, !tbaa !4
  %491 = icmp eq i32 %490, 11
  br i1 %491, label %492, label %494

492:                                              ; preds = %489
  store i32 1, ptr %478, align 4, !tbaa !17
  %493 = load i32, ptr %477, align 4, !tbaa !4
  br label %494

494:                                              ; preds = %492, %489
  %495 = phi i32 [ %490, %489 ], [ %493, %492 ]
  %496 = call ptr @strerror(i32 noundef %495) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %496) #15
  br label %577

497:                                              ; preds = %480
  %498 = load i32, ptr %416, align 8, !tbaa !30
  %499 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %498, i32 %487), !nosanitize !32
  %500 = extractvalue { i32, i1 } %499, 1, !nosanitize !32
  br i1 %500, label %501, label %502, !prof !33, !nosanitize !32

501:                                              ; preds = %497
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

502:                                              ; preds = %497
  %503 = extractvalue { i32, i1 } %499, 0, !nosanitize !32
  store i32 %503, ptr %416, align 8, !tbaa !30
  %504 = load ptr, ptr %6, align 8, !tbaa !25
  %505 = and i64 %486, 2147483647
  %506 = getelementptr inbounds nuw i8, ptr %504, i64 %505
  store ptr %506, ptr %6, align 8, !tbaa !25
  %507 = icmp eq i32 %503, 0
  br i1 %507, label %577, label %480, !llvm.loop !34

508:                                              ; preds = %468, %463
  %509 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %510 = load i32, ptr %509, align 8, !tbaa !36
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %517, label %512

512:                                              ; preds = %508
  %513 = load i32, ptr %416, align 8, !tbaa !30
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %580, label %515

515:                                              ; preds = %512
  %516 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %509, align 8, !tbaa !36
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
  store i32 0, ptr %533, align 4, !tbaa !4
  store i32 0, ptr %521, align 4, !tbaa !17
  %537 = ptrtoint ptr %536 to i64
  %538 = ptrtoint ptr %535 to i64
  %539 = sub i64 %537, %538
  %540 = call i64 @llvm.smin.i64(i64 %539, i64 1073741824)
  %541 = and i64 %540, 4294967295
  %542 = load i32, ptr %522, align 4, !tbaa !31
  %543 = call i64 @write(i32 noundef %542, ptr noundef %535, i64 noundef %541) #15
  %544 = and i64 %543, 2147483648
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %554, label %546

546:                                              ; preds = %534
  %547 = load i32, ptr %533, align 4, !tbaa !4
  %548 = icmp eq i32 %547, 11
  br i1 %548, label %549, label %551

549:                                              ; preds = %546
  store i32 1, ptr %521, align 4, !tbaa !17
  %550 = load i32, ptr %533, align 4, !tbaa !4
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
  br i1 %559, label %534, label %560, !llvm.loop !37

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
  br i1 %573, label %574, label %575, !prof !33, !nosanitize !32

574:                                              ; preds = %571
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

575:                                              ; preds = %571
  %576 = icmp eq i32 %567, %572
  br i1 %576, label %577, label %525, !llvm.loop !38

577:                                              ; preds = %575, %570, %551, %502, %494, %456, %447, %435
  %578 = load i32, ptr %416, align 8, !tbaa !30
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %582

580:                                              ; preds = %577, %512, %472
  %581 = load ptr, ptr %420, align 8, !tbaa !20
  store ptr %581, ptr %6, align 8, !tbaa !25
  br label %590

582:                                              ; preds = %577
  %583 = load ptr, ptr %420, align 8, !tbaa !20
  %584 = load ptr, ptr %6, align 8, !tbaa !25
  %585 = zext i32 %578 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %583, ptr align 1 %584, i64 %585, i1 false)
  %586 = load ptr, ptr %420, align 8, !tbaa !20
  store ptr %586, ptr %6, align 8, !tbaa !25
  %587 = load i32, ptr %416, align 8, !tbaa !30
  %588 = load i32, ptr %19, align 8, !tbaa !18
  %589 = icmp ule i32 %587, %588
  br label %590

590:                                              ; preds = %582, %580, %415, %412
  %591 = phi i1 [ %589, %582 ], [ true, %580 ], [ true, %415 ], [ true, %412 ]
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
  %624 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %623, i32 1), !nosanitize !32
  %625 = extractvalue { i32, i1 } %624, 1, !nosanitize !32
  br i1 %625, label %626, label %627, !prof !33, !nosanitize !32

626:                                              ; preds = %615
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

627:                                              ; preds = %615
  %628 = extractvalue { i32, i1 } %624, 0, !nosanitize !32
  %629 = zext i32 %628 to i64
  %630 = getelementptr inbounds nuw i8, ptr %622, i64 %629
  store i8 0, ptr %630, align 1, !tbaa !44
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
  %642 = load i8, ptr %641, align 1, !tbaa !44
  %643 = icmp eq i8 %642, 0
  br i1 %643, label %644, label %665

644:                                              ; preds = %638
  %645 = load i32, ptr %607, align 8, !tbaa !30
  %646 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %645, i32 %633), !nosanitize !32
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !32
  br i1 %647, label %648, label %649, !prof !33, !nosanitize !32

648:                                              ; preds = %649, %644
  call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

649:                                              ; preds = %644
  %650 = extractvalue { i32, i1 } %646, 0, !nosanitize !32
  store i32 %650, ptr %607, align 8, !tbaa !30
  %651 = sext i32 %633 to i64
  %652 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %653 = load i64, ptr %652, align 8, !tbaa !39
  %654 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %653, i64 %651), !nosanitize !32
  %655 = extractvalue { i64, i1 } %654, 1, !nosanitize !32
  br i1 %655, label %648, label %656, !prof !33, !nosanitize !32

656:                                              ; preds = %649
  %657 = extractvalue { i64, i1 } %654, 0, !nosanitize !32
  store i64 %657, ptr %652, align 8, !tbaa !39
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

665:                                              ; preds = %664, %660, %638, %635, %627, %604, %410, %63, %14, %5, %2
  %666 = phi i32 [ %605, %604 ], [ -2, %2 ], [ %64, %63 ], [ %411, %410 ], [ -2, %5 ], [ %633, %664 ], [ 0, %627 ], [ -2, %14 ], [ 0, %638 ], [ 0, %635 ], [ %658, %660 ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %666
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nounwind uwtable
define dso_local i32 @gzflush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %538, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %538

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %538, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %17 = icmp ugt i32 %1, 4
  br i1 %17, label %538, label %18

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
  br i1 %26, label %181, label %27

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
  br label %536

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
  br label %536

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
  br label %536

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
  br i1 %78, label %181, label %79

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
  br label %536

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
  br i1 %111, label %181, label %84, !llvm.loop !34

112:                                              ; preds = %72, %67
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %114 = load i32, ptr %113, align 8, !tbaa !36
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = load i32, ptr %24, align 8, !tbaa !30
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %181, label %119

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
  br label %536

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
  br label %536

175:                                              ; preds = %170
  %176 = load i32, ptr %122, align 8, !tbaa !26
  %177 = icmp ult i32 %171, %176
  br i1 %177, label %178, label %179, !prof !33, !nosanitize !32

178:                                              ; preds = %175
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

179:                                              ; preds = %175
  %180 = icmp eq i32 %171, %176
  br i1 %180, label %181, label %129, !llvm.loop !38

181:                                              ; preds = %179, %116, %106, %76, %22
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %197 = load i64, ptr %19, align 8, !tbaa !29
  br label %198

198:                                              ; preds = %364, %181
  %199 = phi i64 [ %197, %181 ], [ %361, %364 ]
  %200 = phi i1 [ false, %181 ], [ true, %364 ]
  %201 = load i32, ptr %182, align 8, !tbaa !18
  %202 = zext i32 %201 to i64
  %203 = tail call i64 @llvm.smin.i64(i64 %199, i64 %202)
  %204 = trunc i64 %203 to i32
  %205 = load ptr, ptr %183, align 8, !tbaa !20
  br i1 %200, label %210, label %206

206:                                              ; preds = %198
  %207 = and i64 %203, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %205, i8 0, i64 %207, i1 false)
  %208 = load ptr, ptr %183, align 8, !tbaa !20
  %209 = load i32, ptr %182, align 8, !tbaa !18
  br label %210

210:                                              ; preds = %206, %198
  %211 = phi i32 [ %209, %206 ], [ %201, %198 ]
  %212 = phi ptr [ %208, %206 ], [ %205, %198 ]
  store i32 %204, ptr %24, align 8, !tbaa !30
  store ptr %212, ptr %23, align 8, !tbaa !25
  %213 = icmp eq i32 %211, 0
  br i1 %213, label %214, label %245

214:                                              ; preds = %210
  %215 = load i32, ptr %185, align 4, !tbaa !19
  %216 = shl i32 %215, 1
  %217 = zext i32 %216 to i64
  %218 = tail call noalias ptr @malloc(i64 noundef %217) #16
  store ptr %218, ptr %183, align 8, !tbaa !20
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %344

221:                                              ; preds = %214
  %222 = load i32, ptr %184, align 8, !tbaa !21
  %223 = icmp eq i32 %222, 0
  %224 = load i32, ptr %185, align 4, !tbaa !19
  br i1 %223, label %226, label %225

225:                                              ; preds = %221
  store i32 %224, ptr %182, align 8, !tbaa !18
  br label %248

226:                                              ; preds = %221
  %227 = zext i32 %224 to i64
  %228 = tail call noalias ptr @malloc(i64 noundef %227) #16
  store ptr %228, ptr %186, align 8, !tbaa !22
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  tail call void @free(ptr noundef nonnull %218) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %344

231:                                              ; preds = %226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %187, i8 0, i64 24, i1 false)
  %232 = load i32, ptr %188, align 8, !tbaa !23
  %233 = load i32, ptr %189, align 4, !tbaa !24
  %234 = tail call i32 @deflateInit2_(ptr noundef nonnull %23, i32 noundef %232, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %233, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %231
  %237 = load ptr, ptr %186, align 8, !tbaa !22
  tail call void @free(ptr noundef %237) #15
  %238 = load ptr, ptr %183, align 8, !tbaa !20
  tail call void @free(ptr noundef %238) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %344

239:                                              ; preds = %231
  store ptr null, ptr %23, align 8, !tbaa !25
  %240 = load i32, ptr %184, align 8, !tbaa !21
  %241 = load i32, ptr %185, align 4, !tbaa !19
  store i32 %241, ptr %182, align 8, !tbaa !18
  %242 = icmp eq i32 %240, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %239
  store i32 %241, ptr %192, align 8, !tbaa !26
  %244 = load ptr, ptr %186, align 8, !tbaa !22
  store ptr %244, ptr %193, align 8, !tbaa !27
  store ptr %244, ptr %194, align 8, !tbaa !28
  br label %282

245:                                              ; preds = %210
  %246 = load i32, ptr %184, align 8, !tbaa !21
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %282, label %248

248:                                              ; preds = %245, %239, %225
  %249 = phi ptr [ %212, %245 ], [ null, %239 ], [ %212, %225 ]
  %250 = load i32, ptr %24, align 8, !tbaa !30
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %344, label %252

252:                                              ; preds = %248
  %253 = tail call ptr @__errno_location() #17
  br label %254

254:                                              ; preds = %276, %252
  %255 = phi ptr [ %249, %252 ], [ %280, %276 ]
  store i32 0, ptr %253, align 4, !tbaa !4
  store i32 0, ptr %190, align 4, !tbaa !17
  %256 = load i32, ptr %24, align 8, !tbaa !30
  %257 = tail call i32 @llvm.umin.i32(i32 %256, i32 1073741824)
  %258 = zext nneg i32 %257 to i64
  %259 = load i32, ptr %191, align 4, !tbaa !31
  %260 = tail call i64 @write(i32 noundef %259, ptr noundef %255, i64 noundef %258) #15
  %261 = trunc i64 %260 to i32
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %271

263:                                              ; preds = %254
  %264 = load i32, ptr %253, align 4, !tbaa !4
  %265 = icmp eq i32 %264, 11
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  store i32 1, ptr %190, align 4, !tbaa !17
  %267 = load i32, ptr %253, align 4, !tbaa !4
  br label %268

268:                                              ; preds = %266, %263
  %269 = phi i32 [ %264, %263 ], [ %267, %266 ]
  %270 = tail call ptr @strerror(i32 noundef %269) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %270) #15
  br label %344

271:                                              ; preds = %254
  %272 = load i32, ptr %24, align 8, !tbaa !30
  %273 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %272, i32 %261), !nosanitize !32
  %274 = extractvalue { i32, i1 } %273, 1, !nosanitize !32
  br i1 %274, label %275, label %276, !prof !33, !nosanitize !32

275:                                              ; preds = %271
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

276:                                              ; preds = %271
  %277 = extractvalue { i32, i1 } %273, 0, !nosanitize !32
  store i32 %277, ptr %24, align 8, !tbaa !30
  %278 = load ptr, ptr %23, align 8, !tbaa !25
  %279 = and i64 %260, 2147483647
  %280 = getelementptr inbounds nuw i8, ptr %278, i64 %279
  store ptr %280, ptr %23, align 8, !tbaa !25
  %281 = icmp eq i32 %277, 0
  br i1 %281, label %344, label %254, !llvm.loop !34

282:                                              ; preds = %245, %243
  %283 = load i32, ptr %195, align 8, !tbaa !36
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %290, label %285

285:                                              ; preds = %282
  %286 = load i32, ptr %24, align 8, !tbaa !30
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %344, label %288

288:                                              ; preds = %285
  %289 = tail call i32 @deflateReset(ptr noundef nonnull %23) #15
  store i32 0, ptr %195, align 8, !tbaa !36
  br label %290

290:                                              ; preds = %288, %282
  %291 = load i32, ptr %192, align 8, !tbaa !26
  br label %292

292:                                              ; preds = %342, %290
  %293 = phi i32 [ %291, %290 ], [ %339, %342 ]
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %333

295:                                              ; preds = %292
  %296 = load ptr, ptr %193, align 8, !tbaa !27
  %297 = load ptr, ptr %194, align 8, !tbaa !28
  %298 = icmp ugt ptr %296, %297
  br i1 %298, label %299, label %330

299:                                              ; preds = %295
  %300 = tail call ptr @__errno_location() #17
  br label %301

301:                                              ; preds = %321, %299
  %302 = phi ptr [ %297, %299 ], [ %324, %321 ]
  %303 = phi ptr [ %296, %299 ], [ %325, %321 ]
  store i32 0, ptr %300, align 4, !tbaa !4
  store i32 0, ptr %190, align 4, !tbaa !17
  %304 = ptrtoint ptr %303 to i64
  %305 = ptrtoint ptr %302 to i64
  %306 = sub i64 %304, %305
  %307 = tail call i64 @llvm.smin.i64(i64 %306, i64 1073741824)
  %308 = and i64 %307, 4294967295
  %309 = load i32, ptr %191, align 4, !tbaa !31
  %310 = tail call i64 @write(i32 noundef %309, ptr noundef %302, i64 noundef %308) #15
  %311 = and i64 %310, 2147483648
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %321, label %313

313:                                              ; preds = %301
  %314 = load i32, ptr %300, align 4, !tbaa !4
  %315 = icmp eq i32 %314, 11
  br i1 %315, label %316, label %318

316:                                              ; preds = %313
  store i32 1, ptr %190, align 4, !tbaa !17
  %317 = load i32, ptr %300, align 4, !tbaa !4
  br label %318

318:                                              ; preds = %316, %313
  %319 = phi i32 [ %314, %313 ], [ %317, %316 ]
  %320 = tail call ptr @strerror(i32 noundef %319) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %320) #15
  br label %344

321:                                              ; preds = %301
  %322 = load ptr, ptr %194, align 8, !tbaa !28
  %323 = and i64 %310, 2147483647
  %324 = getelementptr inbounds nuw i8, ptr %322, i64 %323
  store ptr %324, ptr %194, align 8, !tbaa !28
  %325 = load ptr, ptr %193, align 8, !tbaa !27
  %326 = icmp ugt ptr %325, %324
  br i1 %326, label %301, label %327, !llvm.loop !37

327:                                              ; preds = %321
  %328 = load i32, ptr %192, align 8, !tbaa !26
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %327, %295
  %331 = load i32, ptr %182, align 8, !tbaa !18
  store i32 %331, ptr %192, align 8, !tbaa !26
  %332 = load ptr, ptr %186, align 8, !tbaa !22
  store ptr %332, ptr %193, align 8, !tbaa !27
  store ptr %332, ptr %194, align 8, !tbaa !28
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
  %339 = load i32, ptr %192, align 8, !tbaa !26
  %340 = icmp ult i32 %334, %339
  br i1 %340, label %341, label %342, !prof !33, !nosanitize !32

341:                                              ; preds = %338
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

342:                                              ; preds = %338
  %343 = icmp eq i32 %334, %339
  br i1 %343, label %344, label %292, !llvm.loop !38

344:                                              ; preds = %342, %337, %318, %285, %276, %268, %248, %236, %230, %220
  %345 = phi i1 [ false, %285 ], [ true, %268 ], [ false, %248 ], [ true, %230 ], [ true, %318 ], [ true, %337 ], [ false, %342 ], [ true, %220 ], [ true, %236 ], [ false, %276 ]
  %346 = load i32, ptr %24, align 8, !tbaa !30
  %347 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %204, i32 %346), !nosanitize !32
  %348 = extractvalue { i32, i1 } %347, 1, !nosanitize !32
  br i1 %348, label %349, label %350, !prof !33, !nosanitize !32

349:                                              ; preds = %357, %344
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

350:                                              ; preds = %344
  %351 = extractvalue { i32, i1 } %347, 0, !nosanitize !32
  %352 = zext i32 %351 to i64
  %353 = load i64, ptr %196, align 8, !tbaa !39
  %354 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %353, i64 %352), !nosanitize !32
  %355 = extractvalue { i64, i1 } %354, 1, !nosanitize !32
  br i1 %355, label %356, label %357, !prof !33, !nosanitize !32

356:                                              ; preds = %350
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !32
  unreachable, !nosanitize !32

357:                                              ; preds = %350
  %358 = extractvalue { i64, i1 } %354, 0, !nosanitize !32
  store i64 %358, ptr %196, align 8, !tbaa !39
  %359 = load i64, ptr %19, align 8, !tbaa !29
  %360 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %359, i64 %352), !nosanitize !32
  %361 = extractvalue { i64, i1 } %360, 0, !nosanitize !32
  %362 = extractvalue { i64, i1 } %360, 1, !nosanitize !32
  br i1 %362, label %349, label %363, !prof !33, !nosanitize !32

363:                                              ; preds = %357
  store i64 %361, ptr %19, align 8, !tbaa !29
  br i1 %345, label %536, label %364

364:                                              ; preds = %363
  %365 = icmp eq i64 %361, 0
  br i1 %365, label %366, label %198, !llvm.loop !40

366:                                              ; preds = %364, %18
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %369 = load i32, ptr %368, align 8, !tbaa !18
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %412

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
  br label %536

380:                                              ; preds = %371
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %382 = load i32, ptr %381, align 8, !tbaa !21
  %383 = icmp eq i32 %382, 0
  %384 = load i32, ptr %372, align 4, !tbaa !19
  br i1 %383, label %386, label %385

385:                                              ; preds = %380
  store i32 %384, ptr %368, align 8, !tbaa !18
  br label %416

386:                                              ; preds = %380
  %387 = zext i32 %384 to i64
  %388 = tail call noalias ptr @malloc(i64 noundef %387) #16
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %388, ptr %389, align 8, !tbaa !22
  %390 = icmp eq ptr %388, null
  br i1 %390, label %391, label %392

391:                                              ; preds = %386
  tail call void @free(ptr noundef nonnull %376) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %536

392:                                              ; preds = %386
  %393 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %393, i8 0, i64 24, i1 false)
  %395 = load i32, ptr %394, align 8, !tbaa !23
  %396 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %397 = load i32, ptr %396, align 4, !tbaa !24
  %398 = tail call i32 @deflateInit2_(ptr noundef nonnull %367, i32 noundef %395, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %397, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %403, label %400

400:                                              ; preds = %392
  %401 = load ptr, ptr %389, align 8, !tbaa !22
  tail call void @free(ptr noundef %401) #15
  %402 = load ptr, ptr %377, align 8, !tbaa !20
  tail call void @free(ptr noundef %402) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %536

403:                                              ; preds = %392
  store ptr null, ptr %367, align 8, !tbaa !25
  %404 = load i32, ptr %381, align 8, !tbaa !21
  %405 = load i32, ptr %372, align 4, !tbaa !19
  store i32 %405, ptr %368, align 8, !tbaa !18
  %406 = icmp eq i32 %404, 0
  br i1 %406, label %407, label %416

407:                                              ; preds = %403
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %405, ptr %408, align 8, !tbaa !26
  %409 = load ptr, ptr %389, align 8, !tbaa !22
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %409, ptr %410, align 8, !tbaa !27
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %409, ptr %411, align 8, !tbaa !28
  br label %453

412:                                              ; preds = %366
  %413 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %414 = load i32, ptr %413, align 8, !tbaa !21
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %453, label %416

416:                                              ; preds = %412, %403, %385
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %418 = load i32, ptr %417, align 8, !tbaa !30
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %536, label %420

420:                                              ; preds = %416
  %421 = tail call ptr @__errno_location() #17
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %424 = load ptr, ptr %367, align 8, !tbaa !25
  br label %425

425:                                              ; preds = %447, %420
  %426 = phi ptr [ %424, %420 ], [ %451, %447 ]
  store i32 0, ptr %421, align 4, !tbaa !4
  store i32 0, ptr %422, align 4, !tbaa !17
  %427 = load i32, ptr %417, align 8, !tbaa !30
  %428 = tail call i32 @llvm.umin.i32(i32 %427, i32 1073741824)
  %429 = zext nneg i32 %428 to i64
  %430 = load i32, ptr %423, align 4, !tbaa !31
  %431 = tail call i64 @write(i32 noundef %430, ptr noundef %426, i64 noundef %429) #15
  %432 = trunc i64 %431 to i32
  %433 = icmp slt i32 %432, 0
  br i1 %433, label %434, label %442

434:                                              ; preds = %425
  %435 = load i32, ptr %421, align 4, !tbaa !4
  %436 = icmp eq i32 %435, 11
  br i1 %436, label %437, label %439

437:                                              ; preds = %434
  store i32 1, ptr %422, align 4, !tbaa !17
  %438 = load i32, ptr %421, align 4, !tbaa !4
  br label %439

439:                                              ; preds = %437, %434
  %440 = phi i32 [ %435, %434 ], [ %438, %437 ]
  %441 = tail call ptr @strerror(i32 noundef %440) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %441) #15
  br label %536

442:                                              ; preds = %425
  %443 = load i32, ptr %417, align 8, !tbaa !30
  %444 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %443, i32 %432), !nosanitize !32
  %445 = extractvalue { i32, i1 } %444, 1, !nosanitize !32
  br i1 %445, label %446, label %447, !prof !33, !nosanitize !32

446:                                              ; preds = %442
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

447:                                              ; preds = %442
  %448 = extractvalue { i32, i1 } %444, 0, !nosanitize !32
  store i32 %448, ptr %417, align 8, !tbaa !30
  %449 = load ptr, ptr %367, align 8, !tbaa !25
  %450 = and i64 %431, 2147483647
  %451 = getelementptr inbounds nuw i8, ptr %449, i64 %450
  store ptr %451, ptr %367, align 8, !tbaa !25
  %452 = icmp eq i32 %448, 0
  br i1 %452, label %536, label %425, !llvm.loop !34

453:                                              ; preds = %412, %407
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %455 = load i32, ptr %454, align 8, !tbaa !36
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %464, label %457

457:                                              ; preds = %453
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %459 = load i32, ptr %458, align 8, !tbaa !30
  %460 = or i32 %459, %1
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %536, label %462

462:                                              ; preds = %457
  %463 = tail call i32 @deflateReset(ptr noundef nonnull %367) #15
  store i32 0, ptr %454, align 8, !tbaa !36
  br label %464

464:                                              ; preds = %462, %453
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %466 = icmp ne i32 %1, 0
  %467 = icmp ne i32 %1, 4
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %473 = load i32, ptr %465, align 8, !tbaa !26
  br label %474

474:                                              ; preds = %531, %464
  %475 = phi i32 [ %473, %464 ], [ %528, %531 ]
  %476 = phi i32 [ 0, %464 ], [ %524, %531 ]
  %477 = icmp eq i32 %475, 0
  br i1 %477, label %482, label %478

478:                                              ; preds = %474
  %479 = icmp eq i32 %476, 1
  %480 = or i1 %467, %479
  %481 = and i1 %466, %480
  br i1 %481, label %482, label %522

482:                                              ; preds = %478, %474
  %483 = load ptr, ptr %468, align 8, !tbaa !27
  %484 = load ptr, ptr %469, align 8, !tbaa !28
  %485 = icmp ugt ptr %483, %484
  br i1 %485, label %486, label %516

486:                                              ; preds = %482
  %487 = tail call ptr @__errno_location() #17
  br label %488

488:                                              ; preds = %508, %486
  %489 = phi ptr [ %484, %486 ], [ %511, %508 ]
  %490 = phi ptr [ %483, %486 ], [ %512, %508 ]
  store i32 0, ptr %487, align 4, !tbaa !4
  store i32 0, ptr %470, align 4, !tbaa !17
  %491 = ptrtoint ptr %490 to i64
  %492 = ptrtoint ptr %489 to i64
  %493 = sub i64 %491, %492
  %494 = tail call i64 @llvm.smin.i64(i64 %493, i64 1073741824)
  %495 = and i64 %494, 4294967295
  %496 = load i32, ptr %471, align 4, !tbaa !31
  %497 = tail call i64 @write(i32 noundef %496, ptr noundef %489, i64 noundef %495) #15
  %498 = and i64 %497, 2147483648
  %499 = icmp eq i64 %498, 0
  br i1 %499, label %508, label %500

500:                                              ; preds = %488
  %501 = load i32, ptr %487, align 4, !tbaa !4
  %502 = icmp eq i32 %501, 11
  br i1 %502, label %503, label %505

503:                                              ; preds = %500
  store i32 1, ptr %470, align 4, !tbaa !17
  %504 = load i32, ptr %487, align 4, !tbaa !4
  br label %505

505:                                              ; preds = %503, %500
  %506 = phi i32 [ %501, %500 ], [ %504, %503 ]
  %507 = tail call ptr @strerror(i32 noundef %506) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %507) #15
  br label %536

508:                                              ; preds = %488
  %509 = load ptr, ptr %469, align 8, !tbaa !28
  %510 = and i64 %497, 2147483647
  %511 = getelementptr inbounds nuw i8, ptr %509, i64 %510
  store ptr %511, ptr %469, align 8, !tbaa !28
  %512 = load ptr, ptr %468, align 8, !tbaa !27
  %513 = icmp ugt ptr %512, %511
  br i1 %513, label %488, label %514, !llvm.loop !37

514:                                              ; preds = %508
  %515 = load i32, ptr %465, align 8, !tbaa !26
  br label %516

516:                                              ; preds = %514, %482
  %517 = phi i32 [ %515, %514 ], [ %475, %482 ]
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %522

519:                                              ; preds = %516
  %520 = load i32, ptr %368, align 8, !tbaa !18
  store i32 %520, ptr %465, align 8, !tbaa !26
  %521 = load ptr, ptr %472, align 8, !tbaa !22
  store ptr %521, ptr %468, align 8, !tbaa !27
  store ptr %521, ptr %469, align 8, !tbaa !28
  br label %522

522:                                              ; preds = %519, %516, %478
  %523 = phi i32 [ %517, %516 ], [ %520, %519 ], [ %475, %478 ]
  %524 = tail call i32 @deflate(ptr noundef nonnull %367, i32 noundef range(i32 0, 6) %1) #15
  %525 = icmp eq i32 %524, -2
  br i1 %525, label %526, label %527

526:                                              ; preds = %522
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %536

527:                                              ; preds = %522
  %528 = load i32, ptr %465, align 8, !tbaa !26
  %529 = icmp ult i32 %523, %528
  br i1 %529, label %530, label %531, !prof !33, !nosanitize !32

530:                                              ; preds = %527
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

531:                                              ; preds = %527
  %532 = icmp eq i32 %523, %528
  br i1 %532, label %533, label %474, !llvm.loop !38

533:                                              ; preds = %531
  %534 = icmp eq i32 %1, 4
  br i1 %534, label %535, label %536

535:                                              ; preds = %533
  store i32 1, ptr %454, align 8, !tbaa !36
  br label %536

536:                                              ; preds = %535, %533, %526, %505, %457, %447, %439, %416, %400, %391, %379, %363, %174, %155, %98, %60, %51, %39
  %537 = load i32, ptr %9, align 8, !tbaa !16
  br label %538

538:                                              ; preds = %536, %16, %12, %4, %2
  %539 = phi i32 [ -2, %12 ], [ -2, %2 ], [ -2, %4 ], [ -2, %16 ], [ %537, %536 ]
  ret i32 %539
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gzsetparams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %490, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %490

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %490, label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %20 = load i32, ptr %19, align 8, !tbaa !21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %490

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
  br i1 %29, label %490, label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !29
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %374, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %36 = load i32, ptr %35, align 8, !tbaa !30
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %189, label %38

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
  br label %372

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
  br label %372

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
  br label %372

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
  br i1 %86, label %189, label %87

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
  br label %372

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
  br i1 %119, label %189, label %92, !llvm.loop !34

120:                                              ; preds = %81, %76
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %122 = load i32, ptr %121, align 8, !tbaa !36
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %120
  %125 = load i32, ptr %35, align 8, !tbaa !30
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %189, label %127

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
  br label %372

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
  br label %372

183:                                              ; preds = %178
  %184 = load i32, ptr %130, align 8, !tbaa !26
  %185 = icmp ult i32 %179, %184
  br i1 %185, label %186, label %187, !prof !33, !nosanitize !32

186:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

187:                                              ; preds = %183
  %188 = icmp eq i32 %179, %184
  br i1 %188, label %189, label %137, !llvm.loop !38

189:                                              ; preds = %187, %124, %114, %84, %34
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %202 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %203 = load i64, ptr %31, align 8, !tbaa !29
  br label %204

204:                                              ; preds = %370, %189
  %205 = phi i64 [ %203, %189 ], [ %367, %370 ]
  %206 = phi i1 [ false, %189 ], [ true, %370 ]
  %207 = load i32, ptr %190, align 8, !tbaa !18
  %208 = zext i32 %207 to i64
  %209 = tail call i64 @llvm.smin.i64(i64 %205, i64 %208)
  %210 = trunc i64 %209 to i32
  %211 = load ptr, ptr %191, align 8, !tbaa !20
  br i1 %206, label %216, label %212

212:                                              ; preds = %204
  %213 = and i64 %209, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %211, i8 0, i64 %213, i1 false)
  %214 = load ptr, ptr %191, align 8, !tbaa !20
  %215 = load i32, ptr %190, align 8, !tbaa !18
  br label %216

216:                                              ; preds = %212, %204
  %217 = phi i32 [ %215, %212 ], [ %207, %204 ]
  %218 = phi ptr [ %214, %212 ], [ %211, %204 ]
  store i32 %210, ptr %35, align 8, !tbaa !30
  store ptr %218, ptr %6, align 8, !tbaa !25
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %220, label %251

220:                                              ; preds = %216
  %221 = load i32, ptr %192, align 4, !tbaa !19
  %222 = shl i32 %221, 1
  %223 = zext i32 %222 to i64
  %224 = tail call noalias ptr @malloc(i64 noundef %223) #16
  store ptr %224, ptr %191, align 8, !tbaa !20
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %220
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %350

227:                                              ; preds = %220
  %228 = load i32, ptr %19, align 8, !tbaa !21
  %229 = icmp eq i32 %228, 0
  %230 = load i32, ptr %192, align 4, !tbaa !19
  br i1 %229, label %232, label %231

231:                                              ; preds = %227
  store i32 %230, ptr %190, align 8, !tbaa !18
  br label %254

232:                                              ; preds = %227
  %233 = zext i32 %230 to i64
  %234 = tail call noalias ptr @malloc(i64 noundef %233) #16
  store ptr %234, ptr %193, align 8, !tbaa !22
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  tail call void @free(ptr noundef nonnull %224) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %350

237:                                              ; preds = %232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %194, i8 0, i64 24, i1 false)
  %238 = load i32, ptr %23, align 8, !tbaa !23
  %239 = load i32, ptr %195, align 4, !tbaa !24
  %240 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %238, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %239, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %237
  %243 = load ptr, ptr %193, align 8, !tbaa !22
  tail call void @free(ptr noundef %243) #15
  %244 = load ptr, ptr %191, align 8, !tbaa !20
  tail call void @free(ptr noundef %244) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %350

245:                                              ; preds = %237
  store ptr null, ptr %6, align 8, !tbaa !25
  %246 = load i32, ptr %19, align 8, !tbaa !21
  %247 = load i32, ptr %192, align 4, !tbaa !19
  store i32 %247, ptr %190, align 8, !tbaa !18
  %248 = icmp eq i32 %246, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %245
  store i32 %247, ptr %198, align 8, !tbaa !26
  %250 = load ptr, ptr %193, align 8, !tbaa !22
  store ptr %250, ptr %199, align 8, !tbaa !27
  store ptr %250, ptr %200, align 8, !tbaa !28
  br label %288

251:                                              ; preds = %216
  %252 = load i32, ptr %19, align 8, !tbaa !21
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %288, label %254

254:                                              ; preds = %251, %245, %231
  %255 = phi ptr [ %218, %251 ], [ null, %245 ], [ %218, %231 ]
  %256 = load i32, ptr %35, align 8, !tbaa !30
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %350, label %258

258:                                              ; preds = %254
  %259 = tail call ptr @__errno_location() #17
  br label %260

260:                                              ; preds = %282, %258
  %261 = phi ptr [ %255, %258 ], [ %286, %282 ]
  store i32 0, ptr %259, align 4, !tbaa !4
  store i32 0, ptr %196, align 4, !tbaa !17
  %262 = load i32, ptr %35, align 8, !tbaa !30
  %263 = tail call i32 @llvm.umin.i32(i32 %262, i32 1073741824)
  %264 = zext nneg i32 %263 to i64
  %265 = load i32, ptr %197, align 4, !tbaa !31
  %266 = tail call i64 @write(i32 noundef %265, ptr noundef %261, i64 noundef %264) #15
  %267 = trunc i64 %266 to i32
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %277

269:                                              ; preds = %260
  %270 = load i32, ptr %259, align 4, !tbaa !4
  %271 = icmp eq i32 %270, 11
  br i1 %271, label %272, label %274

272:                                              ; preds = %269
  store i32 1, ptr %196, align 4, !tbaa !17
  %273 = load i32, ptr %259, align 4, !tbaa !4
  br label %274

274:                                              ; preds = %272, %269
  %275 = phi i32 [ %270, %269 ], [ %273, %272 ]
  %276 = tail call ptr @strerror(i32 noundef %275) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %276) #15
  br label %350

277:                                              ; preds = %260
  %278 = load i32, ptr %35, align 8, !tbaa !30
  %279 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %278, i32 %267), !nosanitize !32
  %280 = extractvalue { i32, i1 } %279, 1, !nosanitize !32
  br i1 %280, label %281, label %282, !prof !33, !nosanitize !32

281:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

282:                                              ; preds = %277
  %283 = extractvalue { i32, i1 } %279, 0, !nosanitize !32
  store i32 %283, ptr %35, align 8, !tbaa !30
  %284 = load ptr, ptr %6, align 8, !tbaa !25
  %285 = and i64 %266, 2147483647
  %286 = getelementptr inbounds nuw i8, ptr %284, i64 %285
  store ptr %286, ptr %6, align 8, !tbaa !25
  %287 = icmp eq i32 %283, 0
  br i1 %287, label %350, label %260, !llvm.loop !34

288:                                              ; preds = %251, %249
  %289 = load i32, ptr %201, align 8, !tbaa !36
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %288
  %292 = load i32, ptr %35, align 8, !tbaa !30
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %350, label %294

294:                                              ; preds = %291
  %295 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %201, align 8, !tbaa !36
  br label %296

296:                                              ; preds = %294, %288
  %297 = load i32, ptr %198, align 8, !tbaa !26
  br label %298

298:                                              ; preds = %348, %296
  %299 = phi i32 [ %297, %296 ], [ %345, %348 ]
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %339

301:                                              ; preds = %298
  %302 = load ptr, ptr %199, align 8, !tbaa !27
  %303 = load ptr, ptr %200, align 8, !tbaa !28
  %304 = icmp ugt ptr %302, %303
  br i1 %304, label %305, label %336

305:                                              ; preds = %301
  %306 = tail call ptr @__errno_location() #17
  br label %307

307:                                              ; preds = %327, %305
  %308 = phi ptr [ %303, %305 ], [ %330, %327 ]
  %309 = phi ptr [ %302, %305 ], [ %331, %327 ]
  store i32 0, ptr %306, align 4, !tbaa !4
  store i32 0, ptr %196, align 4, !tbaa !17
  %310 = ptrtoint ptr %309 to i64
  %311 = ptrtoint ptr %308 to i64
  %312 = sub i64 %310, %311
  %313 = tail call i64 @llvm.smin.i64(i64 %312, i64 1073741824)
  %314 = and i64 %313, 4294967295
  %315 = load i32, ptr %197, align 4, !tbaa !31
  %316 = tail call i64 @write(i32 noundef %315, ptr noundef %308, i64 noundef %314) #15
  %317 = and i64 %316, 2147483648
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %327, label %319

319:                                              ; preds = %307
  %320 = load i32, ptr %306, align 4, !tbaa !4
  %321 = icmp eq i32 %320, 11
  br i1 %321, label %322, label %324

322:                                              ; preds = %319
  store i32 1, ptr %196, align 4, !tbaa !17
  %323 = load i32, ptr %306, align 4, !tbaa !4
  br label %324

324:                                              ; preds = %322, %319
  %325 = phi i32 [ %320, %319 ], [ %323, %322 ]
  %326 = tail call ptr @strerror(i32 noundef %325) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %326) #15
  br label %350

327:                                              ; preds = %307
  %328 = load ptr, ptr %200, align 8, !tbaa !28
  %329 = and i64 %316, 2147483647
  %330 = getelementptr inbounds nuw i8, ptr %328, i64 %329
  store ptr %330, ptr %200, align 8, !tbaa !28
  %331 = load ptr, ptr %199, align 8, !tbaa !27
  %332 = icmp ugt ptr %331, %330
  br i1 %332, label %307, label %333, !llvm.loop !37

333:                                              ; preds = %327
  %334 = load i32, ptr %198, align 8, !tbaa !26
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %333, %301
  %337 = load i32, ptr %190, align 8, !tbaa !18
  store i32 %337, ptr %198, align 8, !tbaa !26
  %338 = load ptr, ptr %193, align 8, !tbaa !22
  store ptr %338, ptr %199, align 8, !tbaa !27
  store ptr %338, ptr %200, align 8, !tbaa !28
  br label %339

339:                                              ; preds = %336, %333, %298
  %340 = phi i32 [ %334, %333 ], [ %337, %336 ], [ %299, %298 ]
  %341 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %342 = icmp eq i32 %341, -2
  br i1 %342, label %343, label %344

343:                                              ; preds = %339
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %350

344:                                              ; preds = %339
  %345 = load i32, ptr %198, align 8, !tbaa !26
  %346 = icmp ult i32 %340, %345
  br i1 %346, label %347, label %348, !prof !33, !nosanitize !32

347:                                              ; preds = %344
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

348:                                              ; preds = %344
  %349 = icmp eq i32 %340, %345
  br i1 %349, label %350, label %298, !llvm.loop !38

350:                                              ; preds = %348, %343, %324, %291, %282, %274, %254, %242, %236, %226
  %351 = phi i1 [ false, %291 ], [ true, %274 ], [ false, %254 ], [ true, %236 ], [ true, %324 ], [ true, %343 ], [ false, %348 ], [ true, %226 ], [ true, %242 ], [ false, %282 ]
  %352 = load i32, ptr %35, align 8, !tbaa !30
  %353 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %210, i32 %352), !nosanitize !32
  %354 = extractvalue { i32, i1 } %353, 1, !nosanitize !32
  br i1 %354, label %355, label %356, !prof !33, !nosanitize !32

355:                                              ; preds = %363, %350
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

356:                                              ; preds = %350
  %357 = extractvalue { i32, i1 } %353, 0, !nosanitize !32
  %358 = zext i32 %357 to i64
  %359 = load i64, ptr %202, align 8, !tbaa !39
  %360 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %359, i64 %358), !nosanitize !32
  %361 = extractvalue { i64, i1 } %360, 1, !nosanitize !32
  br i1 %361, label %362, label %363, !prof !33, !nosanitize !32

362:                                              ; preds = %356
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !32
  unreachable, !nosanitize !32

363:                                              ; preds = %356
  %364 = extractvalue { i64, i1 } %360, 0, !nosanitize !32
  store i64 %364, ptr %202, align 8, !tbaa !39
  %365 = load i64, ptr %31, align 8, !tbaa !29
  %366 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %365, i64 %358), !nosanitize !32
  %367 = extractvalue { i64, i1 } %366, 0, !nosanitize !32
  %368 = extractvalue { i64, i1 } %366, 1, !nosanitize !32
  br i1 %368, label %355, label %369, !prof !33, !nosanitize !32

369:                                              ; preds = %363
  store i64 %367, ptr %31, align 8, !tbaa !29
  br i1 %351, label %372, label %370

370:                                              ; preds = %369
  %371 = icmp eq i64 %367, 0
  br i1 %371, label %374, label %204, !llvm.loop !40

372:                                              ; preds = %369, %182, %163, %106, %69, %61, %50
  %373 = load i32, ptr %11, align 8, !tbaa !16
  br label %490

374:                                              ; preds = %370, %30
  %375 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %376 = load i32, ptr %375, align 8, !tbaa !18
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %488, label %378

378:                                              ; preds = %374
  %379 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %380 = load i32, ptr %379, align 8, !tbaa !30
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %486, label %382

382:                                              ; preds = %378
  %383 = load i32, ptr %19, align 8, !tbaa !21
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %418, label %385

385:                                              ; preds = %382
  %386 = tail call ptr @__errno_location() #17
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %388 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %389 = load ptr, ptr %6, align 8, !tbaa !25
  br label %390

390:                                              ; preds = %412, %385
  %391 = phi ptr [ %389, %385 ], [ %416, %412 ]
  store i32 0, ptr %386, align 4, !tbaa !4
  store i32 0, ptr %387, align 4, !tbaa !17
  %392 = load i32, ptr %379, align 8, !tbaa !30
  %393 = tail call i32 @llvm.umin.i32(i32 %392, i32 1073741824)
  %394 = zext nneg i32 %393 to i64
  %395 = load i32, ptr %388, align 4, !tbaa !31
  %396 = tail call i64 @write(i32 noundef %395, ptr noundef %391, i64 noundef %394) #15
  %397 = trunc i64 %396 to i32
  %398 = icmp slt i32 %397, 0
  br i1 %398, label %399, label %407

399:                                              ; preds = %390
  %400 = load i32, ptr %386, align 4, !tbaa !4
  %401 = icmp eq i32 %400, 11
  br i1 %401, label %402, label %404

402:                                              ; preds = %399
  store i32 1, ptr %387, align 4, !tbaa !17
  %403 = load i32, ptr %386, align 4, !tbaa !4
  br label %404

404:                                              ; preds = %402, %399
  %405 = phi i32 [ %400, %399 ], [ %403, %402 ]
  %406 = tail call ptr @strerror(i32 noundef %405) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %406) #15
  br label %484

407:                                              ; preds = %390
  %408 = load i32, ptr %379, align 8, !tbaa !30
  %409 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %408, i32 %397), !nosanitize !32
  %410 = extractvalue { i32, i1 } %409, 1, !nosanitize !32
  br i1 %410, label %411, label %412, !prof !33, !nosanitize !32

411:                                              ; preds = %407
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

412:                                              ; preds = %407
  %413 = extractvalue { i32, i1 } %409, 0, !nosanitize !32
  store i32 %413, ptr %379, align 8, !tbaa !30
  %414 = load ptr, ptr %6, align 8, !tbaa !25
  %415 = and i64 %396, 2147483647
  %416 = getelementptr inbounds nuw i8, ptr %414, i64 %415
  store ptr %416, ptr %6, align 8, !tbaa !25
  %417 = icmp eq i32 %413, 0
  br i1 %417, label %486, label %390, !llvm.loop !34

418:                                              ; preds = %382
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %420 = load i32, ptr %419, align 8, !tbaa !36
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %424, label %422

422:                                              ; preds = %418
  %423 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %419, align 8, !tbaa !36
  br label %424

424:                                              ; preds = %422, %418
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %430 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %431 = load i32, ptr %425, align 8, !tbaa !26
  br label %432

432:                                              ; preds = %482, %424
  %433 = phi i32 [ %431, %424 ], [ %479, %482 ]
  %434 = load ptr, ptr %426, align 8, !tbaa !27
  %435 = load ptr, ptr %427, align 8, !tbaa !28
  %436 = icmp ugt ptr %434, %435
  br i1 %436, label %437, label %467

437:                                              ; preds = %432
  %438 = tail call ptr @__errno_location() #17
  br label %439

439:                                              ; preds = %459, %437
  %440 = phi ptr [ %435, %437 ], [ %462, %459 ]
  %441 = phi ptr [ %434, %437 ], [ %463, %459 ]
  store i32 0, ptr %438, align 4, !tbaa !4
  store i32 0, ptr %428, align 4, !tbaa !17
  %442 = ptrtoint ptr %441 to i64
  %443 = ptrtoint ptr %440 to i64
  %444 = sub i64 %442, %443
  %445 = tail call i64 @llvm.smin.i64(i64 %444, i64 1073741824)
  %446 = and i64 %445, 4294967295
  %447 = load i32, ptr %429, align 4, !tbaa !31
  %448 = tail call i64 @write(i32 noundef %447, ptr noundef %440, i64 noundef %446) #15
  %449 = and i64 %448, 2147483648
  %450 = icmp eq i64 %449, 0
  br i1 %450, label %459, label %451

451:                                              ; preds = %439
  %452 = load i32, ptr %438, align 4, !tbaa !4
  %453 = icmp eq i32 %452, 11
  br i1 %453, label %454, label %456

454:                                              ; preds = %451
  store i32 1, ptr %428, align 4, !tbaa !17
  %455 = load i32, ptr %438, align 4, !tbaa !4
  br label %456

456:                                              ; preds = %454, %451
  %457 = phi i32 [ %452, %451 ], [ %455, %454 ]
  %458 = tail call ptr @strerror(i32 noundef %457) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %458) #15
  br label %484

459:                                              ; preds = %439
  %460 = load ptr, ptr %427, align 8, !tbaa !28
  %461 = and i64 %448, 2147483647
  %462 = getelementptr inbounds nuw i8, ptr %460, i64 %461
  store ptr %462, ptr %427, align 8, !tbaa !28
  %463 = load ptr, ptr %426, align 8, !tbaa !27
  %464 = icmp ugt ptr %463, %462
  br i1 %464, label %439, label %465, !llvm.loop !37

465:                                              ; preds = %459
  %466 = load i32, ptr %425, align 8, !tbaa !26
  br label %467

467:                                              ; preds = %465, %432
  %468 = phi i32 [ %466, %465 ], [ %433, %432 ]
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %473

470:                                              ; preds = %467
  %471 = load i32, ptr %375, align 8, !tbaa !18
  store i32 %471, ptr %425, align 8, !tbaa !26
  %472 = load ptr, ptr %430, align 8, !tbaa !22
  store ptr %472, ptr %426, align 8, !tbaa !27
  store ptr %472, ptr %427, align 8, !tbaa !28
  br label %473

473:                                              ; preds = %470, %467
  %474 = phi i32 [ %468, %467 ], [ %471, %470 ]
  %475 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 5) #15
  %476 = icmp eq i32 %475, -2
  br i1 %476, label %477, label %478

477:                                              ; preds = %473
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %484

478:                                              ; preds = %473
  %479 = load i32, ptr %425, align 8, !tbaa !26
  %480 = icmp ult i32 %474, %479
  br i1 %480, label %481, label %482, !prof !33, !nosanitize !32

481:                                              ; preds = %478
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

482:                                              ; preds = %478
  %483 = icmp eq i32 %474, %479
  br i1 %483, label %486, label %432, !llvm.loop !38

484:                                              ; preds = %477, %456, %404
  %485 = load i32, ptr %11, align 8, !tbaa !16
  br label %490

486:                                              ; preds = %482, %412, %378
  %487 = tail call i32 @deflateParams(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2) #15
  br label %488

488:                                              ; preds = %486, %374
  store i32 %1, ptr %23, align 8, !tbaa !23
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %2, ptr %489, align 4, !tbaa !24
  br label %490

490:                                              ; preds = %488, %484, %372, %26, %18, %14, %5, %3
  %491 = phi i32 [ 0, %488 ], [ -2, %3 ], [ -2, %5 ], [ %373, %372 ], [ %485, %484 ], [ -2, %18 ], [ -2, %14 ], [ 0, %26 ]
  ret i32 %491
}

declare i32 @deflateParams(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gzclose_w(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %544, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !8
  %6 = icmp eq i32 %5, 31153
  br i1 %6, label %7, label %544

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
  br i1 %15, label %170, label %16

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
  br label %355

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
  br label %355

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
  br label %355

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
  br i1 %67, label %170, label %68

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
  br label %355

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
  br i1 %100, label %170, label %73, !llvm.loop !34

101:                                              ; preds = %61, %56
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %103 = load i32, ptr %102, align 8, !tbaa !36
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = load i32, ptr %13, align 8, !tbaa !30
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %170, label %108

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
  br label %355

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
  br label %355

164:                                              ; preds = %159
  %165 = load i32, ptr %111, align 8, !tbaa !26
  %166 = icmp ult i32 %160, %165
  br i1 %166, label %167, label %168, !prof !33, !nosanitize !32

167:                                              ; preds = %164
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

168:                                              ; preds = %164
  %169 = icmp eq i32 %160, %165
  br i1 %169, label %170, label %118, !llvm.loop !38

170:                                              ; preds = %168, %105, %95, %65, %11
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %186 = load i64, ptr %8, align 8, !tbaa !29
  br label %187

187:                                              ; preds = %353, %170
  %188 = phi i64 [ %186, %170 ], [ %350, %353 ]
  %189 = phi i1 [ false, %170 ], [ true, %353 ]
  %190 = load i32, ptr %171, align 8, !tbaa !18
  %191 = zext i32 %190 to i64
  %192 = tail call i64 @llvm.smin.i64(i64 %188, i64 %191)
  %193 = trunc i64 %192 to i32
  %194 = load ptr, ptr %172, align 8, !tbaa !20
  br i1 %189, label %199, label %195

195:                                              ; preds = %187
  %196 = and i64 %192, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %194, i8 0, i64 %196, i1 false)
  %197 = load ptr, ptr %172, align 8, !tbaa !20
  %198 = load i32, ptr %171, align 8, !tbaa !18
  br label %199

199:                                              ; preds = %195, %187
  %200 = phi i32 [ %198, %195 ], [ %190, %187 ]
  %201 = phi ptr [ %197, %195 ], [ %194, %187 ]
  store i32 %193, ptr %13, align 8, !tbaa !30
  store ptr %201, ptr %12, align 8, !tbaa !25
  %202 = icmp eq i32 %200, 0
  br i1 %202, label %203, label %234

203:                                              ; preds = %199
  %204 = load i32, ptr %174, align 4, !tbaa !19
  %205 = shl i32 %204, 1
  %206 = zext i32 %205 to i64
  %207 = tail call noalias ptr @malloc(i64 noundef %206) #16
  store ptr %207, ptr %172, align 8, !tbaa !20
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %333

210:                                              ; preds = %203
  %211 = load i32, ptr %173, align 8, !tbaa !21
  %212 = icmp eq i32 %211, 0
  %213 = load i32, ptr %174, align 4, !tbaa !19
  br i1 %212, label %215, label %214

214:                                              ; preds = %210
  store i32 %213, ptr %171, align 8, !tbaa !18
  br label %237

215:                                              ; preds = %210
  %216 = zext i32 %213 to i64
  %217 = tail call noalias ptr @malloc(i64 noundef %216) #16
  store ptr %217, ptr %175, align 8, !tbaa !22
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  tail call void @free(ptr noundef nonnull %207) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %333

220:                                              ; preds = %215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %176, i8 0, i64 24, i1 false)
  %221 = load i32, ptr %177, align 8, !tbaa !23
  %222 = load i32, ptr %178, align 4, !tbaa !24
  %223 = tail call i32 @deflateInit2_(ptr noundef nonnull %12, i32 noundef %221, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %222, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %220
  %226 = load ptr, ptr %175, align 8, !tbaa !22
  tail call void @free(ptr noundef %226) #15
  %227 = load ptr, ptr %172, align 8, !tbaa !20
  tail call void @free(ptr noundef %227) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %333

228:                                              ; preds = %220
  store ptr null, ptr %12, align 8, !tbaa !25
  %229 = load i32, ptr %173, align 8, !tbaa !21
  %230 = load i32, ptr %174, align 4, !tbaa !19
  store i32 %230, ptr %171, align 8, !tbaa !18
  %231 = icmp eq i32 %229, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %228
  store i32 %230, ptr %181, align 8, !tbaa !26
  %233 = load ptr, ptr %175, align 8, !tbaa !22
  store ptr %233, ptr %182, align 8, !tbaa !27
  store ptr %233, ptr %183, align 8, !tbaa !28
  br label %271

234:                                              ; preds = %199
  %235 = load i32, ptr %173, align 8, !tbaa !21
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %271, label %237

237:                                              ; preds = %234, %228, %214
  %238 = phi ptr [ %201, %234 ], [ null, %228 ], [ %201, %214 ]
  %239 = load i32, ptr %13, align 8, !tbaa !30
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %333, label %241

241:                                              ; preds = %237
  %242 = tail call ptr @__errno_location() #17
  br label %243

243:                                              ; preds = %265, %241
  %244 = phi ptr [ %238, %241 ], [ %269, %265 ]
  store i32 0, ptr %242, align 4, !tbaa !4
  store i32 0, ptr %179, align 4, !tbaa !17
  %245 = load i32, ptr %13, align 8, !tbaa !30
  %246 = tail call i32 @llvm.umin.i32(i32 %245, i32 1073741824)
  %247 = zext nneg i32 %246 to i64
  %248 = load i32, ptr %180, align 4, !tbaa !31
  %249 = tail call i64 @write(i32 noundef %248, ptr noundef %244, i64 noundef %247) #15
  %250 = trunc i64 %249 to i32
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %243
  %253 = load i32, ptr %242, align 4, !tbaa !4
  %254 = icmp eq i32 %253, 11
  br i1 %254, label %255, label %257

255:                                              ; preds = %252
  store i32 1, ptr %179, align 4, !tbaa !17
  %256 = load i32, ptr %242, align 4, !tbaa !4
  br label %257

257:                                              ; preds = %255, %252
  %258 = phi i32 [ %253, %252 ], [ %256, %255 ]
  %259 = tail call ptr @strerror(i32 noundef %258) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %259) #15
  br label %333

260:                                              ; preds = %243
  %261 = load i32, ptr %13, align 8, !tbaa !30
  %262 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %261, i32 %250), !nosanitize !32
  %263 = extractvalue { i32, i1 } %262, 1, !nosanitize !32
  br i1 %263, label %264, label %265, !prof !33, !nosanitize !32

264:                                              ; preds = %260
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

265:                                              ; preds = %260
  %266 = extractvalue { i32, i1 } %262, 0, !nosanitize !32
  store i32 %266, ptr %13, align 8, !tbaa !30
  %267 = load ptr, ptr %12, align 8, !tbaa !25
  %268 = and i64 %249, 2147483647
  %269 = getelementptr inbounds nuw i8, ptr %267, i64 %268
  store ptr %269, ptr %12, align 8, !tbaa !25
  %270 = icmp eq i32 %266, 0
  br i1 %270, label %333, label %243, !llvm.loop !34

271:                                              ; preds = %234, %232
  %272 = load i32, ptr %184, align 8, !tbaa !36
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %279, label %274

274:                                              ; preds = %271
  %275 = load i32, ptr %13, align 8, !tbaa !30
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %333, label %277

277:                                              ; preds = %274
  %278 = tail call i32 @deflateReset(ptr noundef nonnull %12) #15
  store i32 0, ptr %184, align 8, !tbaa !36
  br label %279

279:                                              ; preds = %277, %271
  %280 = load i32, ptr %181, align 8, !tbaa !26
  br label %281

281:                                              ; preds = %331, %279
  %282 = phi i32 [ %280, %279 ], [ %328, %331 ]
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %322

284:                                              ; preds = %281
  %285 = load ptr, ptr %182, align 8, !tbaa !27
  %286 = load ptr, ptr %183, align 8, !tbaa !28
  %287 = icmp ugt ptr %285, %286
  br i1 %287, label %288, label %319

288:                                              ; preds = %284
  %289 = tail call ptr @__errno_location() #17
  br label %290

290:                                              ; preds = %310, %288
  %291 = phi ptr [ %286, %288 ], [ %313, %310 ]
  %292 = phi ptr [ %285, %288 ], [ %314, %310 ]
  store i32 0, ptr %289, align 4, !tbaa !4
  store i32 0, ptr %179, align 4, !tbaa !17
  %293 = ptrtoint ptr %292 to i64
  %294 = ptrtoint ptr %291 to i64
  %295 = sub i64 %293, %294
  %296 = tail call i64 @llvm.smin.i64(i64 %295, i64 1073741824)
  %297 = and i64 %296, 4294967295
  %298 = load i32, ptr %180, align 4, !tbaa !31
  %299 = tail call i64 @write(i32 noundef %298, ptr noundef %291, i64 noundef %297) #15
  %300 = and i64 %299, 2147483648
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %310, label %302

302:                                              ; preds = %290
  %303 = load i32, ptr %289, align 4, !tbaa !4
  %304 = icmp eq i32 %303, 11
  br i1 %304, label %305, label %307

305:                                              ; preds = %302
  store i32 1, ptr %179, align 4, !tbaa !17
  %306 = load i32, ptr %289, align 4, !tbaa !4
  br label %307

307:                                              ; preds = %305, %302
  %308 = phi i32 [ %303, %302 ], [ %306, %305 ]
  %309 = tail call ptr @strerror(i32 noundef %308) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %309) #15
  br label %333

310:                                              ; preds = %290
  %311 = load ptr, ptr %183, align 8, !tbaa !28
  %312 = and i64 %299, 2147483647
  %313 = getelementptr inbounds nuw i8, ptr %311, i64 %312
  store ptr %313, ptr %183, align 8, !tbaa !28
  %314 = load ptr, ptr %182, align 8, !tbaa !27
  %315 = icmp ugt ptr %314, %313
  br i1 %315, label %290, label %316, !llvm.loop !37

316:                                              ; preds = %310
  %317 = load i32, ptr %181, align 8, !tbaa !26
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %316, %284
  %320 = load i32, ptr %171, align 8, !tbaa !18
  store i32 %320, ptr %181, align 8, !tbaa !26
  %321 = load ptr, ptr %175, align 8, !tbaa !22
  store ptr %321, ptr %182, align 8, !tbaa !27
  store ptr %321, ptr %183, align 8, !tbaa !28
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
  %328 = load i32, ptr %181, align 8, !tbaa !26
  %329 = icmp ult i32 %323, %328
  br i1 %329, label %330, label %331, !prof !33, !nosanitize !32

330:                                              ; preds = %327
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

331:                                              ; preds = %327
  %332 = icmp eq i32 %323, %328
  br i1 %332, label %333, label %281, !llvm.loop !38

333:                                              ; preds = %331, %326, %307, %274, %265, %257, %237, %225, %219, %209
  %334 = phi i1 [ false, %274 ], [ true, %257 ], [ false, %237 ], [ true, %219 ], [ true, %307 ], [ true, %326 ], [ false, %331 ], [ true, %209 ], [ true, %225 ], [ false, %265 ]
  %335 = load i32, ptr %13, align 8, !tbaa !30
  %336 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %193, i32 %335), !nosanitize !32
  %337 = extractvalue { i32, i1 } %336, 1, !nosanitize !32
  br i1 %337, label %338, label %339, !prof !33, !nosanitize !32

338:                                              ; preds = %346, %333
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

339:                                              ; preds = %333
  %340 = extractvalue { i32, i1 } %336, 0, !nosanitize !32
  %341 = zext i32 %340 to i64
  %342 = load i64, ptr %185, align 8, !tbaa !39
  %343 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %342, i64 %341), !nosanitize !32
  %344 = extractvalue { i64, i1 } %343, 1, !nosanitize !32
  br i1 %344, label %345, label %346, !prof !33, !nosanitize !32

345:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !32
  unreachable, !nosanitize !32

346:                                              ; preds = %339
  %347 = extractvalue { i64, i1 } %343, 0, !nosanitize !32
  store i64 %347, ptr %185, align 8, !tbaa !39
  %348 = load i64, ptr %8, align 8, !tbaa !29
  %349 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %348, i64 %341), !nosanitize !32
  %350 = extractvalue { i64, i1 } %349, 0, !nosanitize !32
  %351 = extractvalue { i64, i1 } %349, 1, !nosanitize !32
  br i1 %351, label %338, label %352, !prof !33, !nosanitize !32

352:                                              ; preds = %346
  store i64 %350, ptr %8, align 8, !tbaa !29
  br i1 %334, label %355, label %353

353:                                              ; preds = %352
  %354 = icmp eq i64 %350, 0
  br i1 %354, label %358, label %187, !llvm.loop !40

355:                                              ; preds = %352, %163, %144, %87, %49, %40, %28
  %356 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %357 = load i32, ptr %356, align 8, !tbaa !16
  br label %358

358:                                              ; preds = %355, %353, %7
  %359 = phi i32 [ %357, %355 ], [ 0, %7 ], [ 0, %353 ]
  %360 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %362 = load i32, ptr %361, align 8, !tbaa !18
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %405

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
  br label %518

373:                                              ; preds = %364
  %374 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %375 = load i32, ptr %374, align 8, !tbaa !21
  %376 = icmp eq i32 %375, 0
  %377 = load i32, ptr %365, align 4, !tbaa !19
  br i1 %376, label %379, label %378

378:                                              ; preds = %373
  store i32 %377, ptr %361, align 8, !tbaa !18
  br label %409

379:                                              ; preds = %373
  %380 = zext i32 %377 to i64
  %381 = tail call noalias ptr @malloc(i64 noundef %380) #16
  %382 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %381, ptr %382, align 8, !tbaa !22
  %383 = icmp eq ptr %381, null
  br i1 %383, label %384, label %385

384:                                              ; preds = %379
  tail call void @free(ptr noundef nonnull %369) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %518

385:                                              ; preds = %379
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %386, i8 0, i64 24, i1 false)
  %388 = load i32, ptr %387, align 8, !tbaa !23
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %390 = load i32, ptr %389, align 4, !tbaa !24
  %391 = tail call i32 @deflateInit2_(ptr noundef nonnull %360, i32 noundef %388, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %390, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %396, label %393

393:                                              ; preds = %385
  %394 = load ptr, ptr %382, align 8, !tbaa !22
  tail call void @free(ptr noundef %394) #15
  %395 = load ptr, ptr %370, align 8, !tbaa !20
  tail call void @free(ptr noundef %395) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %518

396:                                              ; preds = %385
  store ptr null, ptr %360, align 8, !tbaa !25
  %397 = load i32, ptr %374, align 8, !tbaa !21
  %398 = load i32, ptr %365, align 4, !tbaa !19
  store i32 %398, ptr %361, align 8, !tbaa !18
  %399 = icmp eq i32 %397, 0
  br i1 %399, label %400, label %409

400:                                              ; preds = %396
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %398, ptr %401, align 8, !tbaa !26
  %402 = load ptr, ptr %382, align 8, !tbaa !22
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %402, ptr %403, align 8, !tbaa !27
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %402, ptr %404, align 8, !tbaa !28
  br label %446

405:                                              ; preds = %358
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %407 = load i32, ptr %406, align 8, !tbaa !21
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %446, label %409

409:                                              ; preds = %405, %396, %378
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %411 = load i32, ptr %410, align 8, !tbaa !30
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %521, label %413

413:                                              ; preds = %409
  %414 = tail call ptr @__errno_location() #17
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %417 = load ptr, ptr %360, align 8, !tbaa !25
  br label %418

418:                                              ; preds = %440, %413
  %419 = phi ptr [ %417, %413 ], [ %444, %440 ]
  store i32 0, ptr %414, align 4, !tbaa !4
  store i32 0, ptr %415, align 4, !tbaa !17
  %420 = load i32, ptr %410, align 8, !tbaa !30
  %421 = tail call i32 @llvm.umin.i32(i32 %420, i32 1073741824)
  %422 = zext nneg i32 %421 to i64
  %423 = load i32, ptr %416, align 4, !tbaa !31
  %424 = tail call i64 @write(i32 noundef %423, ptr noundef %419, i64 noundef %422) #15
  %425 = trunc i64 %424 to i32
  %426 = icmp slt i32 %425, 0
  br i1 %426, label %427, label %435

427:                                              ; preds = %418
  %428 = load i32, ptr %414, align 4, !tbaa !4
  %429 = icmp eq i32 %428, 11
  br i1 %429, label %430, label %432

430:                                              ; preds = %427
  store i32 1, ptr %415, align 4, !tbaa !17
  %431 = load i32, ptr %414, align 4, !tbaa !4
  br label %432

432:                                              ; preds = %430, %427
  %433 = phi i32 [ %428, %427 ], [ %431, %430 ]
  %434 = tail call ptr @strerror(i32 noundef %433) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %434) #15
  br label %518

435:                                              ; preds = %418
  %436 = load i32, ptr %410, align 8, !tbaa !30
  %437 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %436, i32 %425), !nosanitize !32
  %438 = extractvalue { i32, i1 } %437, 1, !nosanitize !32
  br i1 %438, label %439, label %440, !prof !33, !nosanitize !32

439:                                              ; preds = %435
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

440:                                              ; preds = %435
  %441 = extractvalue { i32, i1 } %437, 0, !nosanitize !32
  store i32 %441, ptr %410, align 8, !tbaa !30
  %442 = load ptr, ptr %360, align 8, !tbaa !25
  %443 = and i64 %424, 2147483647
  %444 = getelementptr inbounds nuw i8, ptr %442, i64 %443
  store ptr %444, ptr %360, align 8, !tbaa !25
  %445 = icmp eq i32 %441, 0
  br i1 %445, label %521, label %418, !llvm.loop !34

446:                                              ; preds = %405, %400
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %448 = load i32, ptr %447, align 8, !tbaa !36
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %452, label %450

450:                                              ; preds = %446
  %451 = tail call i32 @deflateReset(ptr noundef nonnull %360) #15
  store i32 0, ptr %447, align 8, !tbaa !36
  br label %452

452:                                              ; preds = %450, %446
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %459 = load i32, ptr %453, align 8, !tbaa !26
  br label %460

460:                                              ; preds = %515, %452
  %461 = phi i32 [ %459, %452 ], [ %512, %515 ]
  %462 = phi i32 [ 0, %452 ], [ %508, %515 ]
  %463 = icmp eq i32 %461, 0
  %464 = icmp eq i32 %462, 1
  %465 = or i1 %463, %464
  br i1 %465, label %466, label %506

466:                                              ; preds = %460
  %467 = load ptr, ptr %454, align 8, !tbaa !27
  %468 = load ptr, ptr %455, align 8, !tbaa !28
  %469 = icmp ugt ptr %467, %468
  br i1 %469, label %470, label %500

470:                                              ; preds = %466
  %471 = tail call ptr @__errno_location() #17
  br label %472

472:                                              ; preds = %492, %470
  %473 = phi ptr [ %468, %470 ], [ %495, %492 ]
  %474 = phi ptr [ %467, %470 ], [ %496, %492 ]
  store i32 0, ptr %471, align 4, !tbaa !4
  store i32 0, ptr %456, align 4, !tbaa !17
  %475 = ptrtoint ptr %474 to i64
  %476 = ptrtoint ptr %473 to i64
  %477 = sub i64 %475, %476
  %478 = tail call i64 @llvm.smin.i64(i64 %477, i64 1073741824)
  %479 = and i64 %478, 4294967295
  %480 = load i32, ptr %457, align 4, !tbaa !31
  %481 = tail call i64 @write(i32 noundef %480, ptr noundef %473, i64 noundef %479) #15
  %482 = and i64 %481, 2147483648
  %483 = icmp eq i64 %482, 0
  br i1 %483, label %492, label %484

484:                                              ; preds = %472
  %485 = load i32, ptr %471, align 4, !tbaa !4
  %486 = icmp eq i32 %485, 11
  br i1 %486, label %487, label %489

487:                                              ; preds = %484
  store i32 1, ptr %456, align 4, !tbaa !17
  %488 = load i32, ptr %471, align 4, !tbaa !4
  br label %489

489:                                              ; preds = %487, %484
  %490 = phi i32 [ %485, %484 ], [ %488, %487 ]
  %491 = tail call ptr @strerror(i32 noundef %490) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %491) #15
  br label %518

492:                                              ; preds = %472
  %493 = load ptr, ptr %455, align 8, !tbaa !28
  %494 = and i64 %481, 2147483647
  %495 = getelementptr inbounds nuw i8, ptr %493, i64 %494
  store ptr %495, ptr %455, align 8, !tbaa !28
  %496 = load ptr, ptr %454, align 8, !tbaa !27
  %497 = icmp ugt ptr %496, %495
  br i1 %497, label %472, label %498, !llvm.loop !37

498:                                              ; preds = %492
  %499 = load i32, ptr %453, align 8, !tbaa !26
  br label %500

500:                                              ; preds = %498, %466
  %501 = phi i32 [ %499, %498 ], [ %461, %466 ]
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %506

503:                                              ; preds = %500
  %504 = load i32, ptr %361, align 8, !tbaa !18
  store i32 %504, ptr %453, align 8, !tbaa !26
  %505 = load ptr, ptr %458, align 8, !tbaa !22
  store ptr %505, ptr %454, align 8, !tbaa !27
  store ptr %505, ptr %455, align 8, !tbaa !28
  br label %506

506:                                              ; preds = %503, %500, %460
  %507 = phi i32 [ %501, %500 ], [ %504, %503 ], [ %461, %460 ]
  %508 = tail call i32 @deflate(ptr noundef nonnull %360, i32 noundef 4) #15
  %509 = icmp eq i32 %508, -2
  br i1 %509, label %510, label %511

510:                                              ; preds = %506
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %518

511:                                              ; preds = %506
  %512 = load i32, ptr %453, align 8, !tbaa !26
  %513 = icmp ult i32 %507, %512
  br i1 %513, label %514, label %515, !prof !33, !nosanitize !32

514:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

515:                                              ; preds = %511
  %516 = icmp eq i32 %507, %512
  br i1 %516, label %517, label %460, !llvm.loop !38

517:                                              ; preds = %515
  store i32 1, ptr %447, align 8, !tbaa !36
  br label %521

518:                                              ; preds = %510, %489, %432, %393, %384, %372
  %519 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %520 = load i32, ptr %519, align 8, !tbaa !16
  br label %521

521:                                              ; preds = %518, %517, %440, %409
  %522 = phi i32 [ %520, %518 ], [ %359, %409 ], [ %359, %517 ], [ %359, %440 ]
  %523 = load i32, ptr %361, align 8, !tbaa !18
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %536, label %525

525:                                              ; preds = %521
  %526 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %527 = load i32, ptr %526, align 8, !tbaa !21
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %533

529:                                              ; preds = %525
  %530 = tail call i32 @deflateEnd(ptr noundef nonnull %360) #15
  %531 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %532 = load ptr, ptr %531, align 8, !tbaa !22
  tail call void @free(ptr noundef %532) #15
  br label %533

533:                                              ; preds = %529, %525
  %534 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %535 = load ptr, ptr %534, align 8, !tbaa !20
  tail call void @free(ptr noundef %535) #15
  br label %536

536:                                              ; preds = %533, %521
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %537 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %538 = load ptr, ptr %537, align 8, !tbaa !45
  tail call void @free(ptr noundef %538) #15
  %539 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %540 = load i32, ptr %539, align 4, !tbaa !31
  %541 = tail call i32 @close(i32 noundef %540) #15
  %542 = icmp eq i32 %541, -1
  %543 = select i1 %542, i32 -1, i32 %522
  tail call void @free(ptr noundef nonnull %0) #15
  br label %544

544:                                              ; preds = %536, %3, %1
  %545 = phi i32 [ %543, %536 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %545
}

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
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
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { nomerge noreturn nounwind }
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
