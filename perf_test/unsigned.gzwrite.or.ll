; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.gzwrite.ll'
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
  br i1 %4, label %952, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !8
  %8 = icmp eq i32 %7, 31153
  br i1 %8, label %9, label %952

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %11 = load i32, ptr %10, align 8, !tbaa !16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %15 = load i32, ptr %14, align 4, !tbaa !17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %952, label %17

17:                                               ; preds = %13, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %18 = icmp slt i32 %2, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str) #15
  br label %952

20:                                               ; preds = %17
  %21 = zext nneg i32 %2 to i64
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %949, label %23

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
  br label %949

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
  br label %949

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
  br label %949

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
  br i1 %73, label %410, label %74

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
  br label %949

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
  br label %949

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
  br label %949

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
  br label %949

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
  br label %949

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
  br label %949

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

247:                                              ; preds = %406, %231
  %248 = phi i64 [ %246, %231 ], [ %405, %406 ]
  %249 = phi i1 [ false, %231 ], [ true, %406 ]
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

398:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

399:                                              ; preds = %393
  %400 = extractvalue { i32, i1 } %396, 0, !nosanitize !32
  %401 = zext i32 %400 to i64
  %402 = load i64, ptr %245, align 8, !tbaa !39
  %403 = add nsw i64 %402, %401
  store i64 %403, ptr %245, align 8, !tbaa !39
  %404 = load i64, ptr %71, align 8, !tbaa !29
  %405 = sub nsw i64 %404, %401
  store i64 %405, ptr %71, align 8, !tbaa !29
  br i1 %394, label %949, label %406

406:                                              ; preds = %399
  %407 = icmp eq i64 %404, %401
  br i1 %407, label %408, label %247, !llvm.loop !40

408:                                              ; preds = %406
  %409 = load i32, ptr %24, align 8, !tbaa !18
  br label %410

410:                                              ; preds = %408, %69
  %411 = phi i32 [ %409, %408 ], [ %70, %69 ]
  %412 = icmp ult i32 %2, %411
  %413 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %412, label %415, label %617

415:                                              ; preds = %410
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %430

430:                                              ; preds = %552, %415
  %431 = phi i64 [ %21, %415 ], [ %470, %552 ]
  %432 = phi ptr [ %1, %415 ], [ %468, %552 ]
  %433 = load i32, ptr %414, align 8, !tbaa !41
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %438, label %435

435:                                              ; preds = %430
  %436 = load ptr, ptr %413, align 8, !tbaa !42
  %437 = load ptr, ptr %416, align 8, !tbaa !20
  br label %440

438:                                              ; preds = %430
  %439 = load ptr, ptr %416, align 8, !tbaa !20
  store ptr %439, ptr %413, align 8, !tbaa !42
  br label %440

440:                                              ; preds = %438, %435
  %441 = phi ptr [ %437, %435 ], [ %439, %438 ]
  %442 = phi ptr [ %436, %435 ], [ %439, %438 ]
  %443 = zext i32 %433 to i64
  %444 = getelementptr inbounds nuw i8, ptr %442, i64 %443
  %445 = ptrtoint ptr %444 to i64
  %446 = ptrtoint ptr %441 to i64
  %447 = sub i64 %445, %446
  %448 = trunc i64 %447 to i32
  %449 = load i32, ptr %24, align 8, !tbaa !18
  %450 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %449, i32 %448), !nosanitize !32
  %451 = extractvalue { i32, i1 } %450, 1, !nosanitize !32
  br i1 %451, label %452, label %453, !prof !33, !nosanitize !32

452:                                              ; preds = %440
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

453:                                              ; preds = %440
  %454 = extractvalue { i32, i1 } %450, 0, !nosanitize !32
  %455 = zext i32 %454 to i64
  %456 = tail call i64 @llvm.umin.i64(i64 %431, i64 %455)
  %457 = trunc nuw i64 %456 to i32
  %458 = and i64 %447, 4294967295
  %459 = getelementptr inbounds nuw i8, ptr %441, i64 %458
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %459, ptr align 1 %432, i64 %456, i1 false)
  %460 = load i32, ptr %414, align 8, !tbaa !41
  %461 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %460, i32 %457), !nosanitize !32
  %462 = extractvalue { i32, i1 } %461, 1, !nosanitize !32
  br i1 %462, label %463, label %464, !prof !33, !nosanitize !32

463:                                              ; preds = %453
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

464:                                              ; preds = %453
  %465 = extractvalue { i32, i1 } %461, 0, !nosanitize !32
  store i32 %465, ptr %414, align 8, !tbaa !41
  %466 = load i64, ptr %417, align 8, !tbaa !39
  %467 = add nsw i64 %466, %456
  store i64 %467, ptr %417, align 8, !tbaa !39
  %468 = getelementptr inbounds nuw i8, ptr %432, i64 %456
  %469 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %431, i64 %456), !nosanitize !32
  %470 = extractvalue { i64, i1 } %469, 0, !nosanitize !32
  %471 = extractvalue { i64, i1 } %469, 1, !nosanitize !32
  br i1 %471, label %472, label %473, !prof !33, !nosanitize !32

472:                                              ; preds = %464
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

473:                                              ; preds = %464
  %474 = icmp eq i64 %470, 0
  br i1 %474, label %949, label %475

475:                                              ; preds = %473
  %476 = load i32, ptr %24, align 8, !tbaa !18
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %509

478:                                              ; preds = %475
  %479 = load i32, ptr %419, align 4, !tbaa !19
  %480 = shl i32 %479, 1
  %481 = zext i32 %480 to i64
  %482 = tail call noalias ptr @malloc(i64 noundef %481) #16
  store ptr %482, ptr %416, align 8, !tbaa !20
  %483 = icmp eq ptr %482, null
  br i1 %483, label %484, label %485

484:                                              ; preds = %478
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %609

485:                                              ; preds = %478
  %486 = load i32, ptr %418, align 8, !tbaa !21
  %487 = icmp eq i32 %486, 0
  %488 = load i32, ptr %419, align 4, !tbaa !19
  br i1 %487, label %490, label %489

489:                                              ; preds = %485
  store i32 %488, ptr %24, align 8, !tbaa !18
  br label %512

490:                                              ; preds = %485
  %491 = zext i32 %488 to i64
  %492 = tail call noalias ptr @malloc(i64 noundef %491) #16
  store ptr %492, ptr %420, align 8, !tbaa !22
  %493 = icmp eq ptr %492, null
  br i1 %493, label %494, label %495

494:                                              ; preds = %490
  tail call void @free(ptr noundef nonnull %482) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %609

495:                                              ; preds = %490
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %421, i8 0, i64 24, i1 false)
  %496 = load i32, ptr %422, align 8, !tbaa !23
  %497 = load i32, ptr %423, align 4, !tbaa !24
  %498 = tail call i32 @deflateInit2_(ptr noundef nonnull %413, i32 noundef %496, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %497, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %503, label %500

500:                                              ; preds = %495
  %501 = load ptr, ptr %420, align 8, !tbaa !22
  tail call void @free(ptr noundef %501) #15
  %502 = load ptr, ptr %416, align 8, !tbaa !20
  tail call void @free(ptr noundef %502) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %609

503:                                              ; preds = %495
  store ptr null, ptr %413, align 8, !tbaa !25
  %504 = load i32, ptr %418, align 8, !tbaa !21
  %505 = load i32, ptr %419, align 4, !tbaa !19
  store i32 %505, ptr %24, align 8, !tbaa !18
  %506 = icmp eq i32 %504, 0
  br i1 %506, label %507, label %512

507:                                              ; preds = %503
  store i32 %505, ptr %426, align 8, !tbaa !26
  %508 = load ptr, ptr %420, align 8, !tbaa !22
  store ptr %508, ptr %427, align 8, !tbaa !27
  store ptr %508, ptr %428, align 8, !tbaa !28
  br label %546

509:                                              ; preds = %475
  %510 = load i32, ptr %418, align 8, !tbaa !21
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %546, label %512

512:                                              ; preds = %509, %503, %489
  %513 = load i32, ptr %414, align 8, !tbaa !30
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %552, label %515

515:                                              ; preds = %512
  %516 = tail call ptr @__errno_location() #17
  %517 = load ptr, ptr %413, align 8, !tbaa !25
  br label %518

518:                                              ; preds = %540, %515
  %519 = phi ptr [ %517, %515 ], [ %544, %540 ]
  store i32 0, ptr %516, align 4, !tbaa !4
  store i32 0, ptr %424, align 4, !tbaa !17
  %520 = load i32, ptr %414, align 8, !tbaa !30
  %521 = tail call i32 @llvm.umin.i32(i32 %520, i32 1073741824)
  %522 = zext nneg i32 %521 to i64
  %523 = load i32, ptr %425, align 4, !tbaa !31
  %524 = tail call i64 @write(i32 noundef %523, ptr noundef %519, i64 noundef %522) #15
  %525 = trunc i64 %524 to i32
  %526 = icmp slt i32 %525, 0
  br i1 %526, label %527, label %535

527:                                              ; preds = %518
  %528 = load i32, ptr %516, align 4, !tbaa !4
  %529 = icmp eq i32 %528, 11
  br i1 %529, label %530, label %532

530:                                              ; preds = %527
  store i32 1, ptr %424, align 4, !tbaa !17
  %531 = load i32, ptr %516, align 4, !tbaa !4
  br label %532

532:                                              ; preds = %530, %527
  %533 = phi i32 [ %528, %527 ], [ %531, %530 ]
  %534 = tail call ptr @strerror(i32 noundef %533) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %534) #15
  br label %609

535:                                              ; preds = %518
  %536 = load i32, ptr %414, align 8, !tbaa !30
  %537 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %536, i32 %525), !nosanitize !32
  %538 = extractvalue { i32, i1 } %537, 1, !nosanitize !32
  br i1 %538, label %539, label %540, !prof !33, !nosanitize !32

539:                                              ; preds = %535
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

540:                                              ; preds = %535
  %541 = extractvalue { i32, i1 } %537, 0, !nosanitize !32
  store i32 %541, ptr %414, align 8, !tbaa !30
  %542 = load ptr, ptr %413, align 8, !tbaa !25
  %543 = and i64 %524, 2147483647
  %544 = getelementptr inbounds nuw i8, ptr %542, i64 %543
  store ptr %544, ptr %413, align 8, !tbaa !25
  %545 = icmp eq i32 %541, 0
  br i1 %545, label %552, label %518, !llvm.loop !34

546:                                              ; preds = %509, %507
  %547 = load i32, ptr %429, align 8, !tbaa !36
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %555, label %549

549:                                              ; preds = %546
  %550 = load i32, ptr %414, align 8, !tbaa !30
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %553

552:                                              ; preds = %607, %549, %540, %512
  br label %430

553:                                              ; preds = %549
  %554 = tail call i32 @deflateReset(ptr noundef nonnull %413) #15
  store i32 0, ptr %429, align 8, !tbaa !36
  br label %555

555:                                              ; preds = %553, %546
  %556 = load i32, ptr %426, align 8, !tbaa !26
  br label %557

557:                                              ; preds = %607, %555
  %558 = phi i32 [ %556, %555 ], [ %604, %607 ]
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %598

560:                                              ; preds = %557
  %561 = load ptr, ptr %427, align 8, !tbaa !27
  %562 = load ptr, ptr %428, align 8, !tbaa !28
  %563 = icmp ugt ptr %561, %562
  br i1 %563, label %564, label %595

564:                                              ; preds = %560
  %565 = tail call ptr @__errno_location() #17
  br label %566

566:                                              ; preds = %586, %564
  %567 = phi ptr [ %562, %564 ], [ %589, %586 ]
  %568 = phi ptr [ %561, %564 ], [ %590, %586 ]
  store i32 0, ptr %565, align 4, !tbaa !4
  store i32 0, ptr %424, align 4, !tbaa !17
  %569 = ptrtoint ptr %568 to i64
  %570 = ptrtoint ptr %567 to i64
  %571 = sub i64 %569, %570
  %572 = tail call i64 @llvm.smin.i64(i64 %571, i64 1073741824)
  %573 = and i64 %572, 4294967295
  %574 = load i32, ptr %425, align 4, !tbaa !31
  %575 = tail call i64 @write(i32 noundef %574, ptr noundef %567, i64 noundef %573) #15
  %576 = and i64 %575, 2147483648
  %577 = icmp eq i64 %576, 0
  br i1 %577, label %586, label %578

578:                                              ; preds = %566
  %579 = load i32, ptr %565, align 4, !tbaa !4
  %580 = icmp eq i32 %579, 11
  br i1 %580, label %581, label %583

581:                                              ; preds = %578
  store i32 1, ptr %424, align 4, !tbaa !17
  %582 = load i32, ptr %565, align 4, !tbaa !4
  br label %583

583:                                              ; preds = %581, %578
  %584 = phi i32 [ %579, %578 ], [ %582, %581 ]
  %585 = tail call ptr @strerror(i32 noundef %584) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %585) #15
  br label %609

586:                                              ; preds = %566
  %587 = load ptr, ptr %428, align 8, !tbaa !28
  %588 = and i64 %575, 2147483647
  %589 = getelementptr inbounds nuw i8, ptr %587, i64 %588
  store ptr %589, ptr %428, align 8, !tbaa !28
  %590 = load ptr, ptr %427, align 8, !tbaa !27
  %591 = icmp ugt ptr %590, %589
  br i1 %591, label %566, label %592, !llvm.loop !37

592:                                              ; preds = %586
  %593 = load i32, ptr %426, align 8, !tbaa !26
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %595, label %598

595:                                              ; preds = %592, %560
  %596 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %596, ptr %426, align 8, !tbaa !26
  %597 = load ptr, ptr %420, align 8, !tbaa !22
  store ptr %597, ptr %427, align 8, !tbaa !27
  store ptr %597, ptr %428, align 8, !tbaa !28
  br label %598

598:                                              ; preds = %595, %592, %557
  %599 = phi i32 [ %593, %592 ], [ %596, %595 ], [ %558, %557 ]
  %600 = tail call i32 @deflate(ptr noundef nonnull %413, i32 noundef 0) #15
  %601 = icmp eq i32 %600, -2
  br i1 %601, label %602, label %603

602:                                              ; preds = %598
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %609

603:                                              ; preds = %598
  %604 = load i32, ptr %426, align 8, !tbaa !26
  %605 = icmp ult i32 %599, %604
  br i1 %605, label %606, label %607, !prof !33, !nosanitize !32

606:                                              ; preds = %603
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

607:                                              ; preds = %603
  %608 = icmp eq i32 %599, %604
  br i1 %608, label %552, label %557, !llvm.loop !38

609:                                              ; preds = %602, %583, %532, %500, %494, %484
  %610 = load i32, ptr %424, align 4, !tbaa !17
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %949, label %612

612:                                              ; preds = %609
  %613 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %21, i64 %470), !nosanitize !32
  %614 = extractvalue { i64, i1 } %613, 0, !nosanitize !32
  %615 = extractvalue { i64, i1 } %613, 1, !nosanitize !32
  br i1 %615, label %616, label %949, !prof !33, !nosanitize !32

616:                                              ; preds = %612
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

617:                                              ; preds = %410
  %618 = load i32, ptr %414, align 8, !tbaa !41
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %772, label %620

620:                                              ; preds = %617
  %621 = icmp eq i32 %411, 0
  br i1 %621, label %622, label %663

622:                                              ; preds = %620
  %623 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %624 = load i32, ptr %623, align 4, !tbaa !19
  %625 = shl i32 %624, 1
  %626 = zext i32 %625 to i64
  %627 = tail call noalias ptr @malloc(i64 noundef %626) #16
  %628 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %627, ptr %628, align 8, !tbaa !20
  %629 = icmp eq ptr %627, null
  br i1 %629, label %630, label %631

630:                                              ; preds = %622
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %949

631:                                              ; preds = %622
  %632 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %633 = load i32, ptr %632, align 8, !tbaa !21
  %634 = icmp eq i32 %633, 0
  %635 = load i32, ptr %623, align 4, !tbaa !19
  br i1 %634, label %637, label %636

636:                                              ; preds = %631
  store i32 %635, ptr %24, align 8, !tbaa !18
  br label %667

637:                                              ; preds = %631
  %638 = zext i32 %635 to i64
  %639 = tail call noalias ptr @malloc(i64 noundef %638) #16
  %640 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %639, ptr %640, align 8, !tbaa !22
  %641 = icmp eq ptr %639, null
  br i1 %641, label %642, label %643

642:                                              ; preds = %637
  tail call void @free(ptr noundef nonnull %627) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %949

643:                                              ; preds = %637
  %644 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %645 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %644, i8 0, i64 24, i1 false)
  %646 = load i32, ptr %645, align 8, !tbaa !23
  %647 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %648 = load i32, ptr %647, align 4, !tbaa !24
  %649 = tail call i32 @deflateInit2_(ptr noundef nonnull %413, i32 noundef %646, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %648, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %654, label %651

651:                                              ; preds = %643
  %652 = load ptr, ptr %640, align 8, !tbaa !22
  tail call void @free(ptr noundef %652) #15
  %653 = load ptr, ptr %628, align 8, !tbaa !20
  tail call void @free(ptr noundef %653) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %949

654:                                              ; preds = %643
  store ptr null, ptr %413, align 8, !tbaa !25
  %655 = load i32, ptr %632, align 8, !tbaa !21
  %656 = load i32, ptr %623, align 4, !tbaa !19
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

663:                                              ; preds = %620
  %664 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %665 = load i32, ptr %664, align 8, !tbaa !21
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %703, label %667

667:                                              ; preds = %663, %654, %636
  %668 = load i32, ptr %414, align 8, !tbaa !30
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %772, label %670

670:                                              ; preds = %667
  %671 = tail call ptr @__errno_location() #17
  %672 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %673 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %674 = load ptr, ptr %413, align 8, !tbaa !25
  br label %675

675:                                              ; preds = %697, %670
  %676 = phi ptr [ %674, %670 ], [ %701, %697 ]
  store i32 0, ptr %671, align 4, !tbaa !4
  store i32 0, ptr %672, align 4, !tbaa !17
  %677 = load i32, ptr %414, align 8, !tbaa !30
  %678 = tail call i32 @llvm.umin.i32(i32 %677, i32 1073741824)
  %679 = zext nneg i32 %678 to i64
  %680 = load i32, ptr %673, align 4, !tbaa !31
  %681 = tail call i64 @write(i32 noundef %680, ptr noundef %676, i64 noundef %679) #15
  %682 = trunc i64 %681 to i32
  %683 = icmp slt i32 %682, 0
  br i1 %683, label %684, label %692

684:                                              ; preds = %675
  %685 = load i32, ptr %671, align 4, !tbaa !4
  %686 = icmp eq i32 %685, 11
  br i1 %686, label %687, label %689

687:                                              ; preds = %684
  store i32 1, ptr %672, align 4, !tbaa !17
  %688 = load i32, ptr %671, align 4, !tbaa !4
  br label %689

689:                                              ; preds = %687, %684
  %690 = phi i32 [ %685, %684 ], [ %688, %687 ]
  %691 = tail call ptr @strerror(i32 noundef %690) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %691) #15
  br label %949

692:                                              ; preds = %675
  %693 = load i32, ptr %414, align 8, !tbaa !30
  %694 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %693, i32 %682), !nosanitize !32
  %695 = extractvalue { i32, i1 } %694, 1, !nosanitize !32
  br i1 %695, label %696, label %697, !prof !33, !nosanitize !32

696:                                              ; preds = %692
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

697:                                              ; preds = %692
  %698 = extractvalue { i32, i1 } %694, 0, !nosanitize !32
  store i32 %698, ptr %414, align 8, !tbaa !30
  %699 = load ptr, ptr %413, align 8, !tbaa !25
  %700 = and i64 %681, 2147483647
  %701 = getelementptr inbounds nuw i8, ptr %699, i64 %700
  store ptr %701, ptr %413, align 8, !tbaa !25
  %702 = icmp eq i32 %698, 0
  br i1 %702, label %772, label %675, !llvm.loop !34

703:                                              ; preds = %663, %658
  %704 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %705 = load i32, ptr %704, align 8, !tbaa !36
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %712, label %707

707:                                              ; preds = %703
  %708 = load i32, ptr %414, align 8, !tbaa !30
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %772, label %710

710:                                              ; preds = %707
  %711 = tail call i32 @deflateReset(ptr noundef nonnull %413) #15
  store i32 0, ptr %704, align 8, !tbaa !36
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
  store i32 0, ptr %728, align 4, !tbaa !4
  store i32 0, ptr %716, align 4, !tbaa !17
  %732 = ptrtoint ptr %731 to i64
  %733 = ptrtoint ptr %730 to i64
  %734 = sub i64 %732, %733
  %735 = tail call i64 @llvm.smin.i64(i64 %734, i64 1073741824)
  %736 = and i64 %735, 4294967295
  %737 = load i32, ptr %717, align 4, !tbaa !31
  %738 = tail call i64 @write(i32 noundef %737, ptr noundef %730, i64 noundef %736) #15
  %739 = and i64 %738, 2147483648
  %740 = icmp eq i64 %739, 0
  br i1 %740, label %749, label %741

741:                                              ; preds = %729
  %742 = load i32, ptr %728, align 4, !tbaa !4
  %743 = icmp eq i32 %742, 11
  br i1 %743, label %744, label %746

744:                                              ; preds = %741
  store i32 1, ptr %716, align 4, !tbaa !17
  %745 = load i32, ptr %728, align 4, !tbaa !4
  br label %746

746:                                              ; preds = %744, %741
  %747 = phi i32 [ %742, %741 ], [ %745, %744 ]
  %748 = tail call ptr @strerror(i32 noundef %747) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %748) #15
  br label %949

749:                                              ; preds = %729
  %750 = load ptr, ptr %715, align 8, !tbaa !28
  %751 = and i64 %738, 2147483647
  %752 = getelementptr inbounds nuw i8, ptr %750, i64 %751
  store ptr %752, ptr %715, align 8, !tbaa !28
  %753 = load ptr, ptr %714, align 8, !tbaa !27
  %754 = icmp ugt ptr %753, %752
  br i1 %754, label %729, label %755, !llvm.loop !37

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
  %763 = tail call i32 @deflate(ptr noundef nonnull %413, i32 noundef 0) #15
  %764 = icmp eq i32 %763, -2
  br i1 %764, label %765, label %766

765:                                              ; preds = %761
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %949

766:                                              ; preds = %761
  %767 = load i32, ptr %713, align 8, !tbaa !26
  %768 = icmp ult i32 %762, %767
  br i1 %768, label %769, label %770, !prof !33, !nosanitize !32

769:                                              ; preds = %766
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

770:                                              ; preds = %766
  %771 = icmp eq i32 %762, %767
  br i1 %771, label %772, label %720, !llvm.loop !38

772:                                              ; preds = %770, %707, %697, %667, %617
  store ptr %1, ptr %413, align 8, !tbaa !42
  %773 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %774 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %775 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %776 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %777 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %778 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %779 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %780 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %781 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %782 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %783 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %784 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %785 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %786 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %787

787:                                              ; preds = %947, %772
  %788 = phi i64 [ %21, %772 ], [ %935, %947 ]
  %789 = tail call i64 @llvm.umin.i64(i64 %788, i64 4294967295)
  %790 = trunc nuw i64 %789 to i32
  store i32 %790, ptr %414, align 8, !tbaa !41
  %791 = load i32, ptr %24, align 8, !tbaa !18
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
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %923

800:                                              ; preds = %793
  %801 = load i32, ptr %773, align 8, !tbaa !21
  %802 = icmp eq i32 %801, 0
  %803 = load i32, ptr %774, align 4, !tbaa !19
  br i1 %802, label %805, label %804

804:                                              ; preds = %800
  store i32 %803, ptr %24, align 8, !tbaa !18
  br label %827

805:                                              ; preds = %800
  %806 = zext i32 %803 to i64
  %807 = tail call noalias ptr @malloc(i64 noundef %806) #16
  store ptr %807, ptr %776, align 8, !tbaa !22
  %808 = icmp eq ptr %807, null
  br i1 %808, label %809, label %810

809:                                              ; preds = %805
  tail call void @free(ptr noundef nonnull %797) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %923

810:                                              ; preds = %805
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %777, i8 0, i64 24, i1 false)
  %811 = load i32, ptr %778, align 8, !tbaa !23
  %812 = load i32, ptr %779, align 4, !tbaa !24
  %813 = tail call i32 @deflateInit2_(ptr noundef nonnull %413, i32 noundef %811, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %812, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %818, label %815

815:                                              ; preds = %810
  %816 = load ptr, ptr %776, align 8, !tbaa !22
  tail call void @free(ptr noundef %816) #15
  %817 = load ptr, ptr %775, align 8, !tbaa !20
  tail call void @free(ptr noundef %817) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %923

818:                                              ; preds = %810
  store ptr null, ptr %413, align 8, !tbaa !25
  %819 = load i32, ptr %773, align 8, !tbaa !21
  %820 = load i32, ptr %774, align 4, !tbaa !19
  store i32 %820, ptr %24, align 8, !tbaa !18
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
  %828 = load i32, ptr %414, align 8, !tbaa !30
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %923, label %830

830:                                              ; preds = %827
  %831 = tail call ptr @__errno_location() #17
  %832 = load ptr, ptr %413, align 8, !tbaa !25
  br label %833

833:                                              ; preds = %855, %830
  %834 = phi ptr [ %832, %830 ], [ %859, %855 ]
  store i32 0, ptr %831, align 4, !tbaa !4
  store i32 0, ptr %780, align 4, !tbaa !17
  %835 = load i32, ptr %414, align 8, !tbaa !30
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
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %849) #15
  br label %923

850:                                              ; preds = %833
  %851 = load i32, ptr %414, align 8, !tbaa !30
  %852 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %851, i32 %840), !nosanitize !32
  %853 = extractvalue { i32, i1 } %852, 1, !nosanitize !32
  br i1 %853, label %854, label %855, !prof !33, !nosanitize !32

854:                                              ; preds = %850
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

855:                                              ; preds = %850
  %856 = extractvalue { i32, i1 } %852, 0, !nosanitize !32
  store i32 %856, ptr %414, align 8, !tbaa !30
  %857 = load ptr, ptr %413, align 8, !tbaa !25
  %858 = and i64 %839, 2147483647
  %859 = getelementptr inbounds nuw i8, ptr %857, i64 %858
  store ptr %859, ptr %413, align 8, !tbaa !25
  %860 = icmp eq i32 %856, 0
  br i1 %860, label %923, label %833, !llvm.loop !34

861:                                              ; preds = %824, %822
  %862 = load i32, ptr %785, align 8, !tbaa !36
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %869, label %864

864:                                              ; preds = %861
  %865 = load i32, ptr %414, align 8, !tbaa !30
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %923, label %867

867:                                              ; preds = %864
  %868 = tail call i32 @deflateReset(ptr noundef nonnull %413) #15
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
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %899) #15
  br label %923

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
  %910 = load i32, ptr %24, align 8, !tbaa !18
  store i32 %910, ptr %782, align 8, !tbaa !26
  %911 = load ptr, ptr %776, align 8, !tbaa !22
  store ptr %911, ptr %783, align 8, !tbaa !27
  store ptr %911, ptr %784, align 8, !tbaa !28
  br label %912

912:                                              ; preds = %909, %906, %871
  %913 = phi i32 [ %907, %906 ], [ %910, %909 ], [ %872, %871 ]
  %914 = tail call i32 @deflate(ptr noundef nonnull %413, i32 noundef 0) #15
  %915 = icmp eq i32 %914, -2
  br i1 %915, label %916, label %917

916:                                              ; preds = %912
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %923

917:                                              ; preds = %912
  %918 = load i32, ptr %782, align 8, !tbaa !26
  %919 = icmp ult i32 %913, %918
  br i1 %919, label %920, label %921, !prof !33, !nosanitize !32

920:                                              ; preds = %917
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

921:                                              ; preds = %917
  %922 = icmp eq i32 %913, %918
  br i1 %922, label %923, label %871, !llvm.loop !38

923:                                              ; preds = %921, %916, %897, %864, %855, %847, %827, %815, %809, %799
  %924 = phi i1 [ false, %864 ], [ true, %847 ], [ false, %827 ], [ true, %809 ], [ true, %897 ], [ true, %916 ], [ false, %921 ], [ true, %799 ], [ true, %815 ], [ false, %855 ]
  %925 = load i32, ptr %414, align 8, !tbaa !41
  %926 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %790, i32 %925), !nosanitize !32
  %927 = extractvalue { i32, i1 } %926, 1, !nosanitize !32
  br i1 %927, label %928, label %929, !prof !33, !nosanitize !32

928:                                              ; preds = %923
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

929:                                              ; preds = %923
  %930 = extractvalue { i32, i1 } %926, 0, !nosanitize !32
  %931 = zext i32 %930 to i64
  %932 = load i64, ptr %786, align 8, !tbaa !39
  %933 = add nsw i64 %932, %931
  store i64 %933, ptr %786, align 8, !tbaa !39
  %934 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %788, i64 %931), !nosanitize !32
  %935 = extractvalue { i64, i1 } %934, 0, !nosanitize !32
  %936 = extractvalue { i64, i1 } %934, 1, !nosanitize !32
  br i1 %936, label %937, label %938, !prof !33, !nosanitize !32

937:                                              ; preds = %929
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

938:                                              ; preds = %929
  br i1 %924, label %939, label %947

939:                                              ; preds = %938
  %940 = load i32, ptr %780, align 4, !tbaa !17
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %949, label %942

942:                                              ; preds = %939
  %943 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %21, i64 %935), !nosanitize !32
  %944 = extractvalue { i64, i1 } %943, 0, !nosanitize !32
  %945 = extractvalue { i64, i1 } %943, 1, !nosanitize !32
  br i1 %945, label %946, label %949, !prof !33, !nosanitize !32

946:                                              ; preds = %942
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

947:                                              ; preds = %938
  %948 = icmp eq i64 %935, 0
  br i1 %948, label %949, label %787, !llvm.loop !43

949:                                              ; preds = %947, %942, %939, %765, %746, %689, %651, %642, %630, %612, %609, %473, %399, %224, %205, %148, %110, %101, %89, %57, %48, %36, %20
  %950 = phi i64 [ 0, %651 ], [ 0, %20 ], [ %21, %947 ], [ 0, %939 ], [ 0, %609 ], [ 0, %48 ], [ %21, %473 ], [ 0, %36 ], [ 0, %57 ], [ 0, %89 ], [ 0, %110 ], [ 0, %148 ], [ 0, %101 ], [ 0, %205 ], [ 0, %224 ], [ %614, %612 ], [ 0, %689 ], [ 0, %642 ], [ 0, %746 ], [ 0, %765 ], [ 0, %630 ], [ %944, %942 ], [ 0, %399 ]
  %951 = trunc i64 %950 to i32
  br label %952

952:                                              ; preds = %949, %19, %13, %5, %3
  %953 = phi i32 [ %951, %949 ], [ 0, %3 ], [ 0, %19 ], [ 0, %13 ], [ 0, %5 ]
  ret i32 %953
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfwrite(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %961, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %961

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %961, label %18

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
  br label %961

29:                                               ; preds = %25, %23
  %30 = icmp eq i64 %20, 0
  br i1 %30, label %961, label %31

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
  br label %958

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
  br label %958

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
  br label %958

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
  br i1 %81, label %418, label %82

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
  br label %958

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
  br label %958

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
  br label %958

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
  br label %958

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
  br label %958

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
  br label %958

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

255:                                              ; preds = %414, %239
  %256 = phi i64 [ %254, %239 ], [ %413, %414 ]
  %257 = phi i1 [ false, %239 ], [ true, %414 ]
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

406:                                              ; preds = %401
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

407:                                              ; preds = %401
  %408 = extractvalue { i32, i1 } %404, 0, !nosanitize !32
  %409 = zext i32 %408 to i64
  %410 = load i64, ptr %253, align 8, !tbaa !39
  %411 = add nsw i64 %410, %409
  store i64 %411, ptr %253, align 8, !tbaa !39
  %412 = load i64, ptr %79, align 8, !tbaa !29
  %413 = sub nsw i64 %412, %409
  store i64 %413, ptr %79, align 8, !tbaa !29
  br i1 %402, label %958, label %414

414:                                              ; preds = %407
  %415 = icmp eq i64 %412, %409
  br i1 %415, label %416, label %255, !llvm.loop !40

416:                                              ; preds = %414
  %417 = load i32, ptr %32, align 8, !tbaa !18
  br label %418

418:                                              ; preds = %416, %77
  %419 = phi i32 [ %417, %416 ], [ %78, %77 ]
  %420 = zext i32 %419 to i64
  %421 = icmp ult i64 %20, %420
  %422 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %423 = getelementptr inbounds nuw i8, ptr %3, i64 144
  br i1 %421, label %424, label %626

424:                                              ; preds = %418
  %425 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %426 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %427 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %428 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %429 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %430 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %431 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %432 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %433 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %434 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %435 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %436 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %437 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %438 = getelementptr inbounds nuw i8, ptr %3, i64 104
  br label %439

439:                                              ; preds = %561, %424
  %440 = phi i64 [ %20, %424 ], [ %479, %561 ]
  %441 = phi ptr [ %0, %424 ], [ %477, %561 ]
  %442 = load i32, ptr %423, align 8, !tbaa !41
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %447, label %444

444:                                              ; preds = %439
  %445 = load ptr, ptr %422, align 8, !tbaa !42
  %446 = load ptr, ptr %425, align 8, !tbaa !20
  br label %449

447:                                              ; preds = %439
  %448 = load ptr, ptr %425, align 8, !tbaa !20
  store ptr %448, ptr %422, align 8, !tbaa !42
  br label %449

449:                                              ; preds = %447, %444
  %450 = phi ptr [ %446, %444 ], [ %448, %447 ]
  %451 = phi ptr [ %445, %444 ], [ %448, %447 ]
  %452 = zext i32 %442 to i64
  %453 = getelementptr inbounds nuw i8, ptr %451, i64 %452
  %454 = ptrtoint ptr %453 to i64
  %455 = ptrtoint ptr %450 to i64
  %456 = sub i64 %454, %455
  %457 = trunc i64 %456 to i32
  %458 = load i32, ptr %32, align 8, !tbaa !18
  %459 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %458, i32 %457), !nosanitize !32
  %460 = extractvalue { i32, i1 } %459, 1, !nosanitize !32
  br i1 %460, label %461, label %462, !prof !33, !nosanitize !32

461:                                              ; preds = %449
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

462:                                              ; preds = %449
  %463 = extractvalue { i32, i1 } %459, 0, !nosanitize !32
  %464 = zext i32 %463 to i64
  %465 = tail call i64 @llvm.umin.i64(i64 %440, i64 %464)
  %466 = trunc nuw i64 %465 to i32
  %467 = and i64 %456, 4294967295
  %468 = getelementptr inbounds nuw i8, ptr %450, i64 %467
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %468, ptr align 1 %441, i64 %465, i1 false)
  %469 = load i32, ptr %423, align 8, !tbaa !41
  %470 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %469, i32 %466), !nosanitize !32
  %471 = extractvalue { i32, i1 } %470, 1, !nosanitize !32
  br i1 %471, label %472, label %473, !prof !33, !nosanitize !32

472:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

473:                                              ; preds = %462
  %474 = extractvalue { i32, i1 } %470, 0, !nosanitize !32
  store i32 %474, ptr %423, align 8, !tbaa !41
  %475 = load i64, ptr %426, align 8, !tbaa !39
  %476 = add nsw i64 %475, %465
  store i64 %476, ptr %426, align 8, !tbaa !39
  %477 = getelementptr inbounds nuw i8, ptr %441, i64 %465
  %478 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %440, i64 %465), !nosanitize !32
  %479 = extractvalue { i64, i1 } %478, 0, !nosanitize !32
  %480 = extractvalue { i64, i1 } %478, 1, !nosanitize !32
  br i1 %480, label %481, label %482, !prof !33, !nosanitize !32

481:                                              ; preds = %473
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

482:                                              ; preds = %473
  %483 = icmp eq i64 %479, 0
  br i1 %483, label %958, label %484

484:                                              ; preds = %482
  %485 = load i32, ptr %32, align 8, !tbaa !18
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %518

487:                                              ; preds = %484
  %488 = load i32, ptr %428, align 4, !tbaa !19
  %489 = shl i32 %488, 1
  %490 = zext i32 %489 to i64
  %491 = tail call noalias ptr @malloc(i64 noundef %490) #16
  store ptr %491, ptr %425, align 8, !tbaa !20
  %492 = icmp eq ptr %491, null
  br i1 %492, label %493, label %494

493:                                              ; preds = %487
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %618

494:                                              ; preds = %487
  %495 = load i32, ptr %427, align 8, !tbaa !21
  %496 = icmp eq i32 %495, 0
  %497 = load i32, ptr %428, align 4, !tbaa !19
  br i1 %496, label %499, label %498

498:                                              ; preds = %494
  store i32 %497, ptr %32, align 8, !tbaa !18
  br label %521

499:                                              ; preds = %494
  %500 = zext i32 %497 to i64
  %501 = tail call noalias ptr @malloc(i64 noundef %500) #16
  store ptr %501, ptr %429, align 8, !tbaa !22
  %502 = icmp eq ptr %501, null
  br i1 %502, label %503, label %504

503:                                              ; preds = %499
  tail call void @free(ptr noundef nonnull %491) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %618

504:                                              ; preds = %499
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %430, i8 0, i64 24, i1 false)
  %505 = load i32, ptr %431, align 8, !tbaa !23
  %506 = load i32, ptr %432, align 4, !tbaa !24
  %507 = tail call i32 @deflateInit2_(ptr noundef nonnull %422, i32 noundef %505, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %506, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %512, label %509

509:                                              ; preds = %504
  %510 = load ptr, ptr %429, align 8, !tbaa !22
  tail call void @free(ptr noundef %510) #15
  %511 = load ptr, ptr %425, align 8, !tbaa !20
  tail call void @free(ptr noundef %511) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %618

512:                                              ; preds = %504
  store ptr null, ptr %422, align 8, !tbaa !25
  %513 = load i32, ptr %427, align 8, !tbaa !21
  %514 = load i32, ptr %428, align 4, !tbaa !19
  store i32 %514, ptr %32, align 8, !tbaa !18
  %515 = icmp eq i32 %513, 0
  br i1 %515, label %516, label %521

516:                                              ; preds = %512
  store i32 %514, ptr %435, align 8, !tbaa !26
  %517 = load ptr, ptr %429, align 8, !tbaa !22
  store ptr %517, ptr %436, align 8, !tbaa !27
  store ptr %517, ptr %437, align 8, !tbaa !28
  br label %555

518:                                              ; preds = %484
  %519 = load i32, ptr %427, align 8, !tbaa !21
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %555, label %521

521:                                              ; preds = %518, %512, %498
  %522 = load i32, ptr %423, align 8, !tbaa !30
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %561, label %524

524:                                              ; preds = %521
  %525 = tail call ptr @__errno_location() #17
  %526 = load ptr, ptr %422, align 8, !tbaa !25
  br label %527

527:                                              ; preds = %549, %524
  %528 = phi ptr [ %526, %524 ], [ %553, %549 ]
  store i32 0, ptr %525, align 4, !tbaa !4
  store i32 0, ptr %433, align 4, !tbaa !17
  %529 = load i32, ptr %423, align 8, !tbaa !30
  %530 = tail call i32 @llvm.umin.i32(i32 %529, i32 1073741824)
  %531 = zext nneg i32 %530 to i64
  %532 = load i32, ptr %434, align 4, !tbaa !31
  %533 = tail call i64 @write(i32 noundef %532, ptr noundef %528, i64 noundef %531) #15
  %534 = trunc i64 %533 to i32
  %535 = icmp slt i32 %534, 0
  br i1 %535, label %536, label %544

536:                                              ; preds = %527
  %537 = load i32, ptr %525, align 4, !tbaa !4
  %538 = icmp eq i32 %537, 11
  br i1 %538, label %539, label %541

539:                                              ; preds = %536
  store i32 1, ptr %433, align 4, !tbaa !17
  %540 = load i32, ptr %525, align 4, !tbaa !4
  br label %541

541:                                              ; preds = %539, %536
  %542 = phi i32 [ %537, %536 ], [ %540, %539 ]
  %543 = tail call ptr @strerror(i32 noundef %542) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %543) #15
  br label %618

544:                                              ; preds = %527
  %545 = load i32, ptr %423, align 8, !tbaa !30
  %546 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %545, i32 %534), !nosanitize !32
  %547 = extractvalue { i32, i1 } %546, 1, !nosanitize !32
  br i1 %547, label %548, label %549, !prof !33, !nosanitize !32

548:                                              ; preds = %544
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

549:                                              ; preds = %544
  %550 = extractvalue { i32, i1 } %546, 0, !nosanitize !32
  store i32 %550, ptr %423, align 8, !tbaa !30
  %551 = load ptr, ptr %422, align 8, !tbaa !25
  %552 = and i64 %533, 2147483647
  %553 = getelementptr inbounds nuw i8, ptr %551, i64 %552
  store ptr %553, ptr %422, align 8, !tbaa !25
  %554 = icmp eq i32 %550, 0
  br i1 %554, label %561, label %527, !llvm.loop !34

555:                                              ; preds = %518, %516
  %556 = load i32, ptr %438, align 8, !tbaa !36
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %564, label %558

558:                                              ; preds = %555
  %559 = load i32, ptr %423, align 8, !tbaa !30
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %562

561:                                              ; preds = %616, %558, %549, %521
  br label %439

562:                                              ; preds = %558
  %563 = tail call i32 @deflateReset(ptr noundef nonnull %422) #15
  store i32 0, ptr %438, align 8, !tbaa !36
  br label %564

564:                                              ; preds = %562, %555
  %565 = load i32, ptr %435, align 8, !tbaa !26
  br label %566

566:                                              ; preds = %616, %564
  %567 = phi i32 [ %565, %564 ], [ %613, %616 ]
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %607

569:                                              ; preds = %566
  %570 = load ptr, ptr %436, align 8, !tbaa !27
  %571 = load ptr, ptr %437, align 8, !tbaa !28
  %572 = icmp ugt ptr %570, %571
  br i1 %572, label %573, label %604

573:                                              ; preds = %569
  %574 = tail call ptr @__errno_location() #17
  br label %575

575:                                              ; preds = %595, %573
  %576 = phi ptr [ %571, %573 ], [ %598, %595 ]
  %577 = phi ptr [ %570, %573 ], [ %599, %595 ]
  store i32 0, ptr %574, align 4, !tbaa !4
  store i32 0, ptr %433, align 4, !tbaa !17
  %578 = ptrtoint ptr %577 to i64
  %579 = ptrtoint ptr %576 to i64
  %580 = sub i64 %578, %579
  %581 = tail call i64 @llvm.smin.i64(i64 %580, i64 1073741824)
  %582 = and i64 %581, 4294967295
  %583 = load i32, ptr %434, align 4, !tbaa !31
  %584 = tail call i64 @write(i32 noundef %583, ptr noundef %576, i64 noundef %582) #15
  %585 = and i64 %584, 2147483648
  %586 = icmp eq i64 %585, 0
  br i1 %586, label %595, label %587

587:                                              ; preds = %575
  %588 = load i32, ptr %574, align 4, !tbaa !4
  %589 = icmp eq i32 %588, 11
  br i1 %589, label %590, label %592

590:                                              ; preds = %587
  store i32 1, ptr %433, align 4, !tbaa !17
  %591 = load i32, ptr %574, align 4, !tbaa !4
  br label %592

592:                                              ; preds = %590, %587
  %593 = phi i32 [ %588, %587 ], [ %591, %590 ]
  %594 = tail call ptr @strerror(i32 noundef %593) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %594) #15
  br label %618

595:                                              ; preds = %575
  %596 = load ptr, ptr %437, align 8, !tbaa !28
  %597 = and i64 %584, 2147483647
  %598 = getelementptr inbounds nuw i8, ptr %596, i64 %597
  store ptr %598, ptr %437, align 8, !tbaa !28
  %599 = load ptr, ptr %436, align 8, !tbaa !27
  %600 = icmp ugt ptr %599, %598
  br i1 %600, label %575, label %601, !llvm.loop !37

601:                                              ; preds = %595
  %602 = load i32, ptr %435, align 8, !tbaa !26
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %607

604:                                              ; preds = %601, %569
  %605 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %605, ptr %435, align 8, !tbaa !26
  %606 = load ptr, ptr %429, align 8, !tbaa !22
  store ptr %606, ptr %436, align 8, !tbaa !27
  store ptr %606, ptr %437, align 8, !tbaa !28
  br label %607

607:                                              ; preds = %604, %601, %566
  %608 = phi i32 [ %602, %601 ], [ %605, %604 ], [ %567, %566 ]
  %609 = tail call i32 @deflate(ptr noundef nonnull %422, i32 noundef 0) #15
  %610 = icmp eq i32 %609, -2
  br i1 %610, label %611, label %612

611:                                              ; preds = %607
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %618

612:                                              ; preds = %607
  %613 = load i32, ptr %435, align 8, !tbaa !26
  %614 = icmp ult i32 %608, %613
  br i1 %614, label %615, label %616, !prof !33, !nosanitize !32

615:                                              ; preds = %612
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

616:                                              ; preds = %612
  %617 = icmp eq i32 %608, %613
  br i1 %617, label %561, label %566, !llvm.loop !38

618:                                              ; preds = %611, %592, %541, %509, %503, %493
  %619 = load i32, ptr %433, align 4, !tbaa !17
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %958, label %621

621:                                              ; preds = %618
  %622 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 %479), !nosanitize !32
  %623 = extractvalue { i64, i1 } %622, 0, !nosanitize !32
  %624 = extractvalue { i64, i1 } %622, 1, !nosanitize !32
  br i1 %624, label %625, label %958, !prof !33, !nosanitize !32

625:                                              ; preds = %621
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

626:                                              ; preds = %418
  %627 = load i32, ptr %423, align 8, !tbaa !41
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %781, label %629

629:                                              ; preds = %626
  %630 = icmp eq i32 %419, 0
  br i1 %630, label %631, label %672

631:                                              ; preds = %629
  %632 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %633 = load i32, ptr %632, align 4, !tbaa !19
  %634 = shl i32 %633, 1
  %635 = zext i32 %634 to i64
  %636 = tail call noalias ptr @malloc(i64 noundef %635) #16
  %637 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %636, ptr %637, align 8, !tbaa !20
  %638 = icmp eq ptr %636, null
  br i1 %638, label %639, label %640

639:                                              ; preds = %631
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %958

640:                                              ; preds = %631
  %641 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %642 = load i32, ptr %641, align 8, !tbaa !21
  %643 = icmp eq i32 %642, 0
  %644 = load i32, ptr %632, align 4, !tbaa !19
  br i1 %643, label %646, label %645

645:                                              ; preds = %640
  store i32 %644, ptr %32, align 8, !tbaa !18
  br label %676

646:                                              ; preds = %640
  %647 = zext i32 %644 to i64
  %648 = tail call noalias ptr @malloc(i64 noundef %647) #16
  %649 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %648, ptr %649, align 8, !tbaa !22
  %650 = icmp eq ptr %648, null
  br i1 %650, label %651, label %652

651:                                              ; preds = %646
  tail call void @free(ptr noundef nonnull %636) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %958

652:                                              ; preds = %646
  %653 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %654 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %653, i8 0, i64 24, i1 false)
  %655 = load i32, ptr %654, align 8, !tbaa !23
  %656 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %657 = load i32, ptr %656, align 4, !tbaa !24
  %658 = tail call i32 @deflateInit2_(ptr noundef nonnull %422, i32 noundef %655, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %657, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %663, label %660

660:                                              ; preds = %652
  %661 = load ptr, ptr %649, align 8, !tbaa !22
  tail call void @free(ptr noundef %661) #15
  %662 = load ptr, ptr %637, align 8, !tbaa !20
  tail call void @free(ptr noundef %662) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %958

663:                                              ; preds = %652
  store ptr null, ptr %422, align 8, !tbaa !25
  %664 = load i32, ptr %641, align 8, !tbaa !21
  %665 = load i32, ptr %632, align 4, !tbaa !19
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

672:                                              ; preds = %629
  %673 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %674 = load i32, ptr %673, align 8, !tbaa !21
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %712, label %676

676:                                              ; preds = %672, %663, %645
  %677 = load i32, ptr %423, align 8, !tbaa !30
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %781, label %679

679:                                              ; preds = %676
  %680 = tail call ptr @__errno_location() #17
  %681 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %682 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %683 = load ptr, ptr %422, align 8, !tbaa !25
  br label %684

684:                                              ; preds = %706, %679
  %685 = phi ptr [ %683, %679 ], [ %710, %706 ]
  store i32 0, ptr %680, align 4, !tbaa !4
  store i32 0, ptr %681, align 4, !tbaa !17
  %686 = load i32, ptr %423, align 8, !tbaa !30
  %687 = tail call i32 @llvm.umin.i32(i32 %686, i32 1073741824)
  %688 = zext nneg i32 %687 to i64
  %689 = load i32, ptr %682, align 4, !tbaa !31
  %690 = tail call i64 @write(i32 noundef %689, ptr noundef %685, i64 noundef %688) #15
  %691 = trunc i64 %690 to i32
  %692 = icmp slt i32 %691, 0
  br i1 %692, label %693, label %701

693:                                              ; preds = %684
  %694 = load i32, ptr %680, align 4, !tbaa !4
  %695 = icmp eq i32 %694, 11
  br i1 %695, label %696, label %698

696:                                              ; preds = %693
  store i32 1, ptr %681, align 4, !tbaa !17
  %697 = load i32, ptr %680, align 4, !tbaa !4
  br label %698

698:                                              ; preds = %696, %693
  %699 = phi i32 [ %694, %693 ], [ %697, %696 ]
  %700 = tail call ptr @strerror(i32 noundef %699) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %700) #15
  br label %958

701:                                              ; preds = %684
  %702 = load i32, ptr %423, align 8, !tbaa !30
  %703 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %702, i32 %691), !nosanitize !32
  %704 = extractvalue { i32, i1 } %703, 1, !nosanitize !32
  br i1 %704, label %705, label %706, !prof !33, !nosanitize !32

705:                                              ; preds = %701
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

706:                                              ; preds = %701
  %707 = extractvalue { i32, i1 } %703, 0, !nosanitize !32
  store i32 %707, ptr %423, align 8, !tbaa !30
  %708 = load ptr, ptr %422, align 8, !tbaa !25
  %709 = and i64 %690, 2147483647
  %710 = getelementptr inbounds nuw i8, ptr %708, i64 %709
  store ptr %710, ptr %422, align 8, !tbaa !25
  %711 = icmp eq i32 %707, 0
  br i1 %711, label %781, label %684, !llvm.loop !34

712:                                              ; preds = %672, %667
  %713 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %714 = load i32, ptr %713, align 8, !tbaa !36
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %721, label %716

716:                                              ; preds = %712
  %717 = load i32, ptr %423, align 8, !tbaa !30
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %781, label %719

719:                                              ; preds = %716
  %720 = tail call i32 @deflateReset(ptr noundef nonnull %422) #15
  store i32 0, ptr %713, align 8, !tbaa !36
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
  store i32 0, ptr %737, align 4, !tbaa !4
  store i32 0, ptr %725, align 4, !tbaa !17
  %741 = ptrtoint ptr %740 to i64
  %742 = ptrtoint ptr %739 to i64
  %743 = sub i64 %741, %742
  %744 = tail call i64 @llvm.smin.i64(i64 %743, i64 1073741824)
  %745 = and i64 %744, 4294967295
  %746 = load i32, ptr %726, align 4, !tbaa !31
  %747 = tail call i64 @write(i32 noundef %746, ptr noundef %739, i64 noundef %745) #15
  %748 = and i64 %747, 2147483648
  %749 = icmp eq i64 %748, 0
  br i1 %749, label %758, label %750

750:                                              ; preds = %738
  %751 = load i32, ptr %737, align 4, !tbaa !4
  %752 = icmp eq i32 %751, 11
  br i1 %752, label %753, label %755

753:                                              ; preds = %750
  store i32 1, ptr %725, align 4, !tbaa !17
  %754 = load i32, ptr %737, align 4, !tbaa !4
  br label %755

755:                                              ; preds = %753, %750
  %756 = phi i32 [ %751, %750 ], [ %754, %753 ]
  %757 = tail call ptr @strerror(i32 noundef %756) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %757) #15
  br label %958

758:                                              ; preds = %738
  %759 = load ptr, ptr %724, align 8, !tbaa !28
  %760 = and i64 %747, 2147483647
  %761 = getelementptr inbounds nuw i8, ptr %759, i64 %760
  store ptr %761, ptr %724, align 8, !tbaa !28
  %762 = load ptr, ptr %723, align 8, !tbaa !27
  %763 = icmp ugt ptr %762, %761
  br i1 %763, label %738, label %764, !llvm.loop !37

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
  %772 = tail call i32 @deflate(ptr noundef nonnull %422, i32 noundef 0) #15
  %773 = icmp eq i32 %772, -2
  br i1 %773, label %774, label %775

774:                                              ; preds = %770
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %958

775:                                              ; preds = %770
  %776 = load i32, ptr %722, align 8, !tbaa !26
  %777 = icmp ult i32 %771, %776
  br i1 %777, label %778, label %779, !prof !33, !nosanitize !32

778:                                              ; preds = %775
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

779:                                              ; preds = %775
  %780 = icmp eq i32 %771, %776
  br i1 %780, label %781, label %729, !llvm.loop !38

781:                                              ; preds = %779, %716, %706, %676, %626
  store ptr %0, ptr %422, align 8, !tbaa !42
  %782 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %783 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %784 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %785 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %786 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %787 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %788 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %789 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %790 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %791 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %792 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %793 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %794 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %795 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %796

796:                                              ; preds = %956, %781
  %797 = phi i64 [ %20, %781 ], [ %944, %956 ]
  %798 = tail call i64 @llvm.umin.i64(i64 %797, i64 4294967295)
  %799 = trunc nuw i64 %798 to i32
  store i32 %799, ptr %423, align 8, !tbaa !41
  %800 = load i32, ptr %32, align 8, !tbaa !18
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %833

802:                                              ; preds = %796
  %803 = load i32, ptr %783, align 4, !tbaa !19
  %804 = shl i32 %803, 1
  %805 = zext i32 %804 to i64
  %806 = tail call noalias ptr @malloc(i64 noundef %805) #16
  store ptr %806, ptr %784, align 8, !tbaa !20
  %807 = icmp eq ptr %806, null
  br i1 %807, label %808, label %809

808:                                              ; preds = %802
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %932

809:                                              ; preds = %802
  %810 = load i32, ptr %782, align 8, !tbaa !21
  %811 = icmp eq i32 %810, 0
  %812 = load i32, ptr %783, align 4, !tbaa !19
  br i1 %811, label %814, label %813

813:                                              ; preds = %809
  store i32 %812, ptr %32, align 8, !tbaa !18
  br label %836

814:                                              ; preds = %809
  %815 = zext i32 %812 to i64
  %816 = tail call noalias ptr @malloc(i64 noundef %815) #16
  store ptr %816, ptr %785, align 8, !tbaa !22
  %817 = icmp eq ptr %816, null
  br i1 %817, label %818, label %819

818:                                              ; preds = %814
  tail call void @free(ptr noundef nonnull %806) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %932

819:                                              ; preds = %814
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %786, i8 0, i64 24, i1 false)
  %820 = load i32, ptr %787, align 8, !tbaa !23
  %821 = load i32, ptr %788, align 4, !tbaa !24
  %822 = tail call i32 @deflateInit2_(ptr noundef nonnull %422, i32 noundef %820, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %821, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %827, label %824

824:                                              ; preds = %819
  %825 = load ptr, ptr %785, align 8, !tbaa !22
  tail call void @free(ptr noundef %825) #15
  %826 = load ptr, ptr %784, align 8, !tbaa !20
  tail call void @free(ptr noundef %826) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %932

827:                                              ; preds = %819
  store ptr null, ptr %422, align 8, !tbaa !25
  %828 = load i32, ptr %782, align 8, !tbaa !21
  %829 = load i32, ptr %783, align 4, !tbaa !19
  store i32 %829, ptr %32, align 8, !tbaa !18
  %830 = icmp eq i32 %828, 0
  br i1 %830, label %831, label %836

831:                                              ; preds = %827
  store i32 %829, ptr %791, align 8, !tbaa !26
  %832 = load ptr, ptr %785, align 8, !tbaa !22
  store ptr %832, ptr %792, align 8, !tbaa !27
  store ptr %832, ptr %793, align 8, !tbaa !28
  br label %870

833:                                              ; preds = %796
  %834 = load i32, ptr %782, align 8, !tbaa !21
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %870, label %836

836:                                              ; preds = %833, %827, %813
  %837 = load i32, ptr %423, align 8, !tbaa !30
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %932, label %839

839:                                              ; preds = %836
  %840 = tail call ptr @__errno_location() #17
  %841 = load ptr, ptr %422, align 8, !tbaa !25
  br label %842

842:                                              ; preds = %864, %839
  %843 = phi ptr [ %841, %839 ], [ %868, %864 ]
  store i32 0, ptr %840, align 4, !tbaa !4
  store i32 0, ptr %789, align 4, !tbaa !17
  %844 = load i32, ptr %423, align 8, !tbaa !30
  %845 = tail call i32 @llvm.umin.i32(i32 %844, i32 1073741824)
  %846 = zext nneg i32 %845 to i64
  %847 = load i32, ptr %790, align 4, !tbaa !31
  %848 = tail call i64 @write(i32 noundef %847, ptr noundef %843, i64 noundef %846) #15
  %849 = trunc i64 %848 to i32
  %850 = icmp slt i32 %849, 0
  br i1 %850, label %851, label %859

851:                                              ; preds = %842
  %852 = load i32, ptr %840, align 4, !tbaa !4
  %853 = icmp eq i32 %852, 11
  br i1 %853, label %854, label %856

854:                                              ; preds = %851
  store i32 1, ptr %789, align 4, !tbaa !17
  %855 = load i32, ptr %840, align 4, !tbaa !4
  br label %856

856:                                              ; preds = %854, %851
  %857 = phi i32 [ %852, %851 ], [ %855, %854 ]
  %858 = tail call ptr @strerror(i32 noundef %857) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %858) #15
  br label %932

859:                                              ; preds = %842
  %860 = load i32, ptr %423, align 8, !tbaa !30
  %861 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %860, i32 %849), !nosanitize !32
  %862 = extractvalue { i32, i1 } %861, 1, !nosanitize !32
  br i1 %862, label %863, label %864, !prof !33, !nosanitize !32

863:                                              ; preds = %859
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

864:                                              ; preds = %859
  %865 = extractvalue { i32, i1 } %861, 0, !nosanitize !32
  store i32 %865, ptr %423, align 8, !tbaa !30
  %866 = load ptr, ptr %422, align 8, !tbaa !25
  %867 = and i64 %848, 2147483647
  %868 = getelementptr inbounds nuw i8, ptr %866, i64 %867
  store ptr %868, ptr %422, align 8, !tbaa !25
  %869 = icmp eq i32 %865, 0
  br i1 %869, label %932, label %842, !llvm.loop !34

870:                                              ; preds = %833, %831
  %871 = load i32, ptr %794, align 8, !tbaa !36
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %878, label %873

873:                                              ; preds = %870
  %874 = load i32, ptr %423, align 8, !tbaa !30
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %932, label %876

876:                                              ; preds = %873
  %877 = tail call i32 @deflateReset(ptr noundef nonnull %422) #15
  store i32 0, ptr %794, align 8, !tbaa !36
  br label %878

878:                                              ; preds = %876, %870
  %879 = load i32, ptr %791, align 8, !tbaa !26
  br label %880

880:                                              ; preds = %930, %878
  %881 = phi i32 [ %879, %878 ], [ %927, %930 ]
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %883, label %921

883:                                              ; preds = %880
  %884 = load ptr, ptr %792, align 8, !tbaa !27
  %885 = load ptr, ptr %793, align 8, !tbaa !28
  %886 = icmp ugt ptr %884, %885
  br i1 %886, label %887, label %918

887:                                              ; preds = %883
  %888 = tail call ptr @__errno_location() #17
  br label %889

889:                                              ; preds = %909, %887
  %890 = phi ptr [ %885, %887 ], [ %912, %909 ]
  %891 = phi ptr [ %884, %887 ], [ %913, %909 ]
  store i32 0, ptr %888, align 4, !tbaa !4
  store i32 0, ptr %789, align 4, !tbaa !17
  %892 = ptrtoint ptr %891 to i64
  %893 = ptrtoint ptr %890 to i64
  %894 = sub i64 %892, %893
  %895 = tail call i64 @llvm.smin.i64(i64 %894, i64 1073741824)
  %896 = and i64 %895, 4294967295
  %897 = load i32, ptr %790, align 4, !tbaa !31
  %898 = tail call i64 @write(i32 noundef %897, ptr noundef %890, i64 noundef %896) #15
  %899 = and i64 %898, 2147483648
  %900 = icmp eq i64 %899, 0
  br i1 %900, label %909, label %901

901:                                              ; preds = %889
  %902 = load i32, ptr %888, align 4, !tbaa !4
  %903 = icmp eq i32 %902, 11
  br i1 %903, label %904, label %906

904:                                              ; preds = %901
  store i32 1, ptr %789, align 4, !tbaa !17
  %905 = load i32, ptr %888, align 4, !tbaa !4
  br label %906

906:                                              ; preds = %904, %901
  %907 = phi i32 [ %902, %901 ], [ %905, %904 ]
  %908 = tail call ptr @strerror(i32 noundef %907) #15
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %908) #15
  br label %932

909:                                              ; preds = %889
  %910 = load ptr, ptr %793, align 8, !tbaa !28
  %911 = and i64 %898, 2147483647
  %912 = getelementptr inbounds nuw i8, ptr %910, i64 %911
  store ptr %912, ptr %793, align 8, !tbaa !28
  %913 = load ptr, ptr %792, align 8, !tbaa !27
  %914 = icmp ugt ptr %913, %912
  br i1 %914, label %889, label %915, !llvm.loop !37

915:                                              ; preds = %909
  %916 = load i32, ptr %791, align 8, !tbaa !26
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %918, label %921

918:                                              ; preds = %915, %883
  %919 = load i32, ptr %32, align 8, !tbaa !18
  store i32 %919, ptr %791, align 8, !tbaa !26
  %920 = load ptr, ptr %785, align 8, !tbaa !22
  store ptr %920, ptr %792, align 8, !tbaa !27
  store ptr %920, ptr %793, align 8, !tbaa !28
  br label %921

921:                                              ; preds = %918, %915, %880
  %922 = phi i32 [ %916, %915 ], [ %919, %918 ], [ %881, %880 ]
  %923 = tail call i32 @deflate(ptr noundef nonnull %422, i32 noundef 0) #15
  %924 = icmp eq i32 %923, -2
  br i1 %924, label %925, label %926

925:                                              ; preds = %921
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %932

926:                                              ; preds = %921
  %927 = load i32, ptr %791, align 8, !tbaa !26
  %928 = icmp ult i32 %922, %927
  br i1 %928, label %929, label %930, !prof !33, !nosanitize !32

929:                                              ; preds = %926
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

930:                                              ; preds = %926
  %931 = icmp eq i32 %922, %927
  br i1 %931, label %932, label %880, !llvm.loop !38

932:                                              ; preds = %930, %925, %906, %873, %864, %856, %836, %824, %818, %808
  %933 = phi i1 [ false, %873 ], [ true, %856 ], [ false, %836 ], [ true, %818 ], [ true, %906 ], [ true, %925 ], [ false, %930 ], [ true, %808 ], [ true, %824 ], [ false, %864 ]
  %934 = load i32, ptr %423, align 8, !tbaa !41
  %935 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %799, i32 %934), !nosanitize !32
  %936 = extractvalue { i32, i1 } %935, 1, !nosanitize !32
  br i1 %936, label %937, label %938, !prof !33, !nosanitize !32

937:                                              ; preds = %932
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

938:                                              ; preds = %932
  %939 = extractvalue { i32, i1 } %935, 0, !nosanitize !32
  %940 = zext i32 %939 to i64
  %941 = load i64, ptr %795, align 8, !tbaa !39
  %942 = add nsw i64 %941, %940
  store i64 %942, ptr %795, align 8, !tbaa !39
  %943 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %797, i64 %940), !nosanitize !32
  %944 = extractvalue { i64, i1 } %943, 0, !nosanitize !32
  %945 = extractvalue { i64, i1 } %943, 1, !nosanitize !32
  br i1 %945, label %946, label %947, !prof !33, !nosanitize !32

946:                                              ; preds = %938
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

947:                                              ; preds = %938
  br i1 %933, label %948, label %956

948:                                              ; preds = %947
  %949 = load i32, ptr %789, align 4, !tbaa !17
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %958, label %951

951:                                              ; preds = %948
  %952 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 %944), !nosanitize !32
  %953 = extractvalue { i64, i1 } %952, 0, !nosanitize !32
  %954 = extractvalue { i64, i1 } %952, 1, !nosanitize !32
  br i1 %954, label %955, label %958, !prof !33, !nosanitize !32

955:                                              ; preds = %951
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

956:                                              ; preds = %947
  %957 = icmp eq i64 %944, 0
  br i1 %957, label %958, label %796, !llvm.loop !43

958:                                              ; preds = %956, %951, %948, %774, %755, %698, %660, %651, %639, %621, %618, %482, %407, %232, %213, %156, %118, %109, %97, %65, %56, %44
  %959 = phi i64 [ 0, %660 ], [ %20, %482 ], [ %20, %956 ], [ 0, %948 ], [ 0, %618 ], [ 0, %56 ], [ %953, %951 ], [ 0, %44 ], [ 0, %65 ], [ 0, %97 ], [ 0, %118 ], [ 0, %156 ], [ 0, %109 ], [ 0, %213 ], [ 0, %232 ], [ %623, %621 ], [ 0, %698 ], [ 0, %651 ], [ 0, %755 ], [ 0, %774 ], [ 0, %639 ], [ 0, %407 ]
  %960 = udiv i64 %959, %1
  br label %961

961:                                              ; preds = %958, %29, %28, %14, %6, %4
  %962 = phi i64 [ 0, %6 ], [ 0, %4 ], [ 0, %28 ], [ 0, %14 ], [ %960, %958 ], [ 0, %29 ]
  ret i64 %962
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
  br i1 %4, label %1312, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %1312

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %1312, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %358, label %22

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
  br label %1312

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
  br label %1312

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
  br label %1312

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
  br label %1312

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
  br label %1312

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
  br label %1312

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

197:                                              ; preds = %356, %180
  %198 = phi i64 [ %196, %180 ], [ %355, %356 ]
  %199 = phi i1 [ false, %180 ], [ true, %356 ]
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

348:                                              ; preds = %343
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

349:                                              ; preds = %343
  %350 = extractvalue { i32, i1 } %346, 0, !nosanitize !32
  %351 = zext i32 %350 to i64
  %352 = load i64, ptr %195, align 8, !tbaa !39
  %353 = add nsw i64 %352, %351
  store i64 %353, ptr %195, align 8, !tbaa !39
  %354 = load i64, ptr %19, align 8, !tbaa !29
  %355 = sub nsw i64 %354, %351
  store i64 %355, ptr %19, align 8, !tbaa !29
  br i1 %344, label %1312, label %356

356:                                              ; preds = %349
  %357 = icmp eq i64 %354, %351
  br i1 %357, label %358, label %197, !llvm.loop !40

358:                                              ; preds = %356, %18
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %360 = load i32, ptr %359, align 8, !tbaa !18
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %398, label %362

362:                                              ; preds = %358
  %363 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %364 = load i32, ptr %363, align 8, !tbaa !30
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %370, label %366

366:                                              ; preds = %362
  %367 = load ptr, ptr %6, align 8, !tbaa !25
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %369 = load ptr, ptr %368, align 8, !tbaa !20
  br label %373

370:                                              ; preds = %362
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %372 = load ptr, ptr %371, align 8, !tbaa !20
  store ptr %372, ptr %6, align 8, !tbaa !25
  br label %373

373:                                              ; preds = %370, %366
  %374 = phi ptr [ %369, %366 ], [ %372, %370 ]
  %375 = phi ptr [ %367, %366 ], [ %372, %370 ]
  %376 = zext i32 %364 to i64
  %377 = getelementptr inbounds nuw i8, ptr %375, i64 %376
  %378 = ptrtoint ptr %377 to i64
  %379 = ptrtoint ptr %374 to i64
  %380 = sub i64 %378, %379
  %381 = trunc i64 %380 to i32
  %382 = icmp ugt i32 %360, %381
  %383 = trunc i32 %1 to i8
  br i1 %382, label %384, label %397

384:                                              ; preds = %373
  %385 = and i64 %380, 4294967295
  %386 = getelementptr inbounds nuw i8, ptr %374, i64 %385
  store i8 %383, ptr %386, align 1, !tbaa !44
  %387 = load i32, ptr %363, align 8, !tbaa !30
  %388 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %387, i32 1), !nosanitize !32
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !32
  br i1 %389, label %390, label %391, !prof !33, !nosanitize !32

390:                                              ; preds = %384
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

391:                                              ; preds = %384
  %392 = extractvalue { i32, i1 } %388, 0, !nosanitize !32
  store i32 %392, ptr %363, align 8, !tbaa !30
  %393 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %394 = load i64, ptr %393, align 8, !tbaa !39
  %395 = add nsw i64 %394, 1
  store i64 %395, ptr %393, align 8, !tbaa !39
  %396 = and i32 %1, 255
  br label %1312

397:                                              ; preds = %373
  store i8 %383, ptr %3, align 1, !tbaa !44
  br label %440

398:                                              ; preds = %358
  %399 = trunc i32 %1 to i8
  store i8 %399, ptr %3, align 1, !tbaa !44
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %401 = load i32, ptr %400, align 4, !tbaa !19
  %402 = shl i32 %401, 1
  %403 = zext i32 %402 to i64
  %404 = tail call noalias ptr @malloc(i64 noundef %403) #16
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %404, ptr %405, align 8, !tbaa !20
  %406 = icmp eq ptr %404, null
  br i1 %406, label %407, label %408

407:                                              ; preds = %398
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1312

408:                                              ; preds = %398
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %410 = load i32, ptr %409, align 8, !tbaa !21
  %411 = icmp eq i32 %410, 0
  %412 = load i32, ptr %400, align 4, !tbaa !19
  br i1 %411, label %414, label %413

413:                                              ; preds = %408
  store i32 %412, ptr %359, align 8, !tbaa !18
  br label %440

414:                                              ; preds = %408
  %415 = zext i32 %412 to i64
  %416 = tail call noalias ptr @malloc(i64 noundef %415) #16
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %416, ptr %417, align 8, !tbaa !22
  %418 = icmp eq ptr %416, null
  br i1 %418, label %419, label %420

419:                                              ; preds = %414
  tail call void @free(ptr noundef nonnull %404) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1312

420:                                              ; preds = %414
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %421, i8 0, i64 24, i1 false)
  %423 = load i32, ptr %422, align 8, !tbaa !23
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %425 = load i32, ptr %424, align 4, !tbaa !24
  %426 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %423, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %425, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %431, label %428

428:                                              ; preds = %420
  %429 = load ptr, ptr %417, align 8, !tbaa !22
  tail call void @free(ptr noundef %429) #15
  %430 = load ptr, ptr %405, align 8, !tbaa !20
  tail call void @free(ptr noundef %430) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1312

431:                                              ; preds = %420
  store ptr null, ptr %6, align 8, !tbaa !25
  %432 = load i32, ptr %409, align 8, !tbaa !21
  %433 = load i32, ptr %400, align 4, !tbaa !19
  store i32 %433, ptr %359, align 8, !tbaa !18
  %434 = icmp eq i32 %432, 0
  br i1 %434, label %435, label %440

435:                                              ; preds = %431
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %433, ptr %436, align 8, !tbaa !26
  %437 = load ptr, ptr %417, align 8, !tbaa !22
  %438 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %437, ptr %438, align 8, !tbaa !27
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %437, ptr %439, align 8, !tbaa !28
  br label %440

440:                                              ; preds = %435, %431, %413, %397
  %441 = phi i32 [ %433, %435 ], [ %433, %431 ], [ %412, %413 ], [ %360, %397 ]
  %442 = load i64, ptr %19, align 8, !tbaa !29
  %443 = icmp eq i64 %442, 0
  br i1 %443, label %779, label %444

444:                                              ; preds = %440
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %446 = load i32, ptr %445, align 8, !tbaa !30
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %600, label %448

448:                                              ; preds = %444
  %449 = icmp eq i32 %441, 0
  br i1 %449, label %450, label %491

450:                                              ; preds = %448
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %452 = load i32, ptr %451, align 4, !tbaa !19
  %453 = shl i32 %452, 1
  %454 = zext i32 %453 to i64
  %455 = tail call noalias ptr @malloc(i64 noundef %454) #16
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %455, ptr %456, align 8, !tbaa !20
  %457 = icmp eq ptr %455, null
  br i1 %457, label %458, label %459

458:                                              ; preds = %450
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1312

459:                                              ; preds = %450
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %461 = load i32, ptr %460, align 8, !tbaa !21
  %462 = icmp eq i32 %461, 0
  %463 = load i32, ptr %451, align 4, !tbaa !19
  br i1 %462, label %465, label %464

464:                                              ; preds = %459
  store i32 %463, ptr %359, align 8, !tbaa !18
  br label %495

465:                                              ; preds = %459
  %466 = zext i32 %463 to i64
  %467 = tail call noalias ptr @malloc(i64 noundef %466) #16
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %467, ptr %468, align 8, !tbaa !22
  %469 = icmp eq ptr %467, null
  br i1 %469, label %470, label %471

470:                                              ; preds = %465
  tail call void @free(ptr noundef nonnull %455) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1312

471:                                              ; preds = %465
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %472, i8 0, i64 24, i1 false)
  %474 = load i32, ptr %473, align 8, !tbaa !23
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %476 = load i32, ptr %475, align 4, !tbaa !24
  %477 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %474, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %476, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %482, label %479

479:                                              ; preds = %471
  %480 = load ptr, ptr %468, align 8, !tbaa !22
  tail call void @free(ptr noundef %480) #15
  %481 = load ptr, ptr %456, align 8, !tbaa !20
  tail call void @free(ptr noundef %481) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1312

482:                                              ; preds = %471
  store ptr null, ptr %6, align 8, !tbaa !25
  %483 = load i32, ptr %460, align 8, !tbaa !21
  %484 = load i32, ptr %451, align 4, !tbaa !19
  store i32 %484, ptr %359, align 8, !tbaa !18
  %485 = icmp eq i32 %483, 0
  br i1 %485, label %486, label %495

486:                                              ; preds = %482
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %484, ptr %487, align 8, !tbaa !26
  %488 = load ptr, ptr %468, align 8, !tbaa !22
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %488, ptr %489, align 8, !tbaa !27
  %490 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %488, ptr %490, align 8, !tbaa !28
  br label %531

491:                                              ; preds = %448
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %493 = load i32, ptr %492, align 8, !tbaa !21
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %531, label %495

495:                                              ; preds = %491, %482, %464
  %496 = load i32, ptr %445, align 8, !tbaa !30
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %600, label %498

498:                                              ; preds = %495
  %499 = tail call ptr @__errno_location() #17
  %500 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %501 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %502 = load ptr, ptr %6, align 8, !tbaa !25
  br label %503

503:                                              ; preds = %525, %498
  %504 = phi ptr [ %502, %498 ], [ %529, %525 ]
  store i32 0, ptr %499, align 4, !tbaa !4
  store i32 0, ptr %500, align 4, !tbaa !17
  %505 = load i32, ptr %445, align 8, !tbaa !30
  %506 = tail call i32 @llvm.umin.i32(i32 %505, i32 1073741824)
  %507 = zext nneg i32 %506 to i64
  %508 = load i32, ptr %501, align 4, !tbaa !31
  %509 = tail call i64 @write(i32 noundef %508, ptr noundef %504, i64 noundef %507) #15
  %510 = trunc i64 %509 to i32
  %511 = icmp slt i32 %510, 0
  br i1 %511, label %512, label %520

512:                                              ; preds = %503
  %513 = load i32, ptr %499, align 4, !tbaa !4
  %514 = icmp eq i32 %513, 11
  br i1 %514, label %515, label %517

515:                                              ; preds = %512
  store i32 1, ptr %500, align 4, !tbaa !17
  %516 = load i32, ptr %499, align 4, !tbaa !4
  br label %517

517:                                              ; preds = %515, %512
  %518 = phi i32 [ %513, %512 ], [ %516, %515 ]
  %519 = tail call ptr @strerror(i32 noundef %518) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %519) #15
  br label %1312

520:                                              ; preds = %503
  %521 = load i32, ptr %445, align 8, !tbaa !30
  %522 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %521, i32 %510), !nosanitize !32
  %523 = extractvalue { i32, i1 } %522, 1, !nosanitize !32
  br i1 %523, label %524, label %525, !prof !33, !nosanitize !32

524:                                              ; preds = %520
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

525:                                              ; preds = %520
  %526 = extractvalue { i32, i1 } %522, 0, !nosanitize !32
  store i32 %526, ptr %445, align 8, !tbaa !30
  %527 = load ptr, ptr %6, align 8, !tbaa !25
  %528 = and i64 %509, 2147483647
  %529 = getelementptr inbounds nuw i8, ptr %527, i64 %528
  store ptr %529, ptr %6, align 8, !tbaa !25
  %530 = icmp eq i32 %526, 0
  br i1 %530, label %600, label %503, !llvm.loop !34

531:                                              ; preds = %491, %486
  %532 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %533 = load i32, ptr %532, align 8, !tbaa !36
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %540, label %535

535:                                              ; preds = %531
  %536 = load i32, ptr %445, align 8, !tbaa !30
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %600, label %538

538:                                              ; preds = %535
  %539 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %532, align 8, !tbaa !36
  br label %540

540:                                              ; preds = %538, %531
  %541 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %542 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %543 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %544 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %545 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %546 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %547 = load i32, ptr %541, align 8, !tbaa !26
  br label %548

548:                                              ; preds = %598, %540
  %549 = phi i32 [ %547, %540 ], [ %595, %598 ]
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %589

551:                                              ; preds = %548
  %552 = load ptr, ptr %542, align 8, !tbaa !27
  %553 = load ptr, ptr %543, align 8, !tbaa !28
  %554 = icmp ugt ptr %552, %553
  br i1 %554, label %555, label %586

555:                                              ; preds = %551
  %556 = tail call ptr @__errno_location() #17
  br label %557

557:                                              ; preds = %577, %555
  %558 = phi ptr [ %553, %555 ], [ %580, %577 ]
  %559 = phi ptr [ %552, %555 ], [ %581, %577 ]
  store i32 0, ptr %556, align 4, !tbaa !4
  store i32 0, ptr %544, align 4, !tbaa !17
  %560 = ptrtoint ptr %559 to i64
  %561 = ptrtoint ptr %558 to i64
  %562 = sub i64 %560, %561
  %563 = tail call i64 @llvm.smin.i64(i64 %562, i64 1073741824)
  %564 = and i64 %563, 4294967295
  %565 = load i32, ptr %545, align 4, !tbaa !31
  %566 = tail call i64 @write(i32 noundef %565, ptr noundef %558, i64 noundef %564) #15
  %567 = and i64 %566, 2147483648
  %568 = icmp eq i64 %567, 0
  br i1 %568, label %577, label %569

569:                                              ; preds = %557
  %570 = load i32, ptr %556, align 4, !tbaa !4
  %571 = icmp eq i32 %570, 11
  br i1 %571, label %572, label %574

572:                                              ; preds = %569
  store i32 1, ptr %544, align 4, !tbaa !17
  %573 = load i32, ptr %556, align 4, !tbaa !4
  br label %574

574:                                              ; preds = %572, %569
  %575 = phi i32 [ %570, %569 ], [ %573, %572 ]
  %576 = tail call ptr @strerror(i32 noundef %575) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %576) #15
  br label %1312

577:                                              ; preds = %557
  %578 = load ptr, ptr %543, align 8, !tbaa !28
  %579 = and i64 %566, 2147483647
  %580 = getelementptr inbounds nuw i8, ptr %578, i64 %579
  store ptr %580, ptr %543, align 8, !tbaa !28
  %581 = load ptr, ptr %542, align 8, !tbaa !27
  %582 = icmp ugt ptr %581, %580
  br i1 %582, label %557, label %583, !llvm.loop !37

583:                                              ; preds = %577
  %584 = load i32, ptr %541, align 8, !tbaa !26
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %589

586:                                              ; preds = %583, %551
  %587 = load i32, ptr %359, align 8, !tbaa !18
  store i32 %587, ptr %541, align 8, !tbaa !26
  %588 = load ptr, ptr %546, align 8, !tbaa !22
  store ptr %588, ptr %542, align 8, !tbaa !27
  store ptr %588, ptr %543, align 8, !tbaa !28
  br label %589

589:                                              ; preds = %586, %583, %548
  %590 = phi i32 [ %584, %583 ], [ %587, %586 ], [ %549, %548 ]
  %591 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %592 = icmp eq i32 %591, -2
  br i1 %592, label %593, label %594

593:                                              ; preds = %589
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %1312

594:                                              ; preds = %589
  %595 = load i32, ptr %541, align 8, !tbaa !26
  %596 = icmp ult i32 %590, %595
  br i1 %596, label %597, label %598, !prof !33, !nosanitize !32

597:                                              ; preds = %594
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

598:                                              ; preds = %594
  %599 = icmp eq i32 %590, %595
  br i1 %599, label %600, label %548, !llvm.loop !38

600:                                              ; preds = %598, %535, %525, %495, %444
  %601 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %602 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %603 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %604 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %605 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %606 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %607 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %608 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %609 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %610 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %611 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %612 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %613 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %614 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %615 = load i64, ptr %19, align 8, !tbaa !29
  br label %616

616:                                              ; preds = %775, %600
  %617 = phi i64 [ %615, %600 ], [ %774, %775 ]
  %618 = phi i1 [ false, %600 ], [ true, %775 ]
  %619 = load i32, ptr %359, align 8, !tbaa !18
  %620 = zext i32 %619 to i64
  %621 = tail call i64 @llvm.smin.i64(i64 %617, i64 %620)
  %622 = trunc i64 %621 to i32
  %623 = load ptr, ptr %601, align 8, !tbaa !20
  br i1 %618, label %628, label %624

624:                                              ; preds = %616
  %625 = and i64 %621, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %623, i8 0, i64 %625, i1 false)
  %626 = load ptr, ptr %601, align 8, !tbaa !20
  %627 = load i32, ptr %359, align 8, !tbaa !18
  br label %628

628:                                              ; preds = %624, %616
  %629 = phi i32 [ %627, %624 ], [ %619, %616 ]
  %630 = phi ptr [ %626, %624 ], [ %623, %616 ]
  store i32 %622, ptr %445, align 8, !tbaa !30
  store ptr %630, ptr %6, align 8, !tbaa !25
  %631 = icmp eq i32 %629, 0
  br i1 %631, label %632, label %663

632:                                              ; preds = %628
  %633 = load i32, ptr %603, align 4, !tbaa !19
  %634 = shl i32 %633, 1
  %635 = zext i32 %634 to i64
  %636 = tail call noalias ptr @malloc(i64 noundef %635) #16
  store ptr %636, ptr %601, align 8, !tbaa !20
  %637 = icmp eq ptr %636, null
  br i1 %637, label %638, label %639

638:                                              ; preds = %632
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %762

639:                                              ; preds = %632
  %640 = load i32, ptr %602, align 8, !tbaa !21
  %641 = icmp eq i32 %640, 0
  %642 = load i32, ptr %603, align 4, !tbaa !19
  br i1 %641, label %644, label %643

643:                                              ; preds = %639
  store i32 %642, ptr %359, align 8, !tbaa !18
  br label %666

644:                                              ; preds = %639
  %645 = zext i32 %642 to i64
  %646 = tail call noalias ptr @malloc(i64 noundef %645) #16
  store ptr %646, ptr %604, align 8, !tbaa !22
  %647 = icmp eq ptr %646, null
  br i1 %647, label %648, label %649

648:                                              ; preds = %644
  tail call void @free(ptr noundef nonnull %636) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %762

649:                                              ; preds = %644
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %605, i8 0, i64 24, i1 false)
  %650 = load i32, ptr %606, align 8, !tbaa !23
  %651 = load i32, ptr %607, align 4, !tbaa !24
  %652 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %650, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %651, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %657, label %654

654:                                              ; preds = %649
  %655 = load ptr, ptr %604, align 8, !tbaa !22
  tail call void @free(ptr noundef %655) #15
  %656 = load ptr, ptr %601, align 8, !tbaa !20
  tail call void @free(ptr noundef %656) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %762

657:                                              ; preds = %649
  store ptr null, ptr %6, align 8, !tbaa !25
  %658 = load i32, ptr %602, align 8, !tbaa !21
  %659 = load i32, ptr %603, align 4, !tbaa !19
  store i32 %659, ptr %359, align 8, !tbaa !18
  %660 = icmp eq i32 %658, 0
  br i1 %660, label %661, label %666

661:                                              ; preds = %657
  store i32 %659, ptr %610, align 8, !tbaa !26
  %662 = load ptr, ptr %604, align 8, !tbaa !22
  store ptr %662, ptr %611, align 8, !tbaa !27
  store ptr %662, ptr %612, align 8, !tbaa !28
  br label %700

663:                                              ; preds = %628
  %664 = load i32, ptr %602, align 8, !tbaa !21
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %700, label %666

666:                                              ; preds = %663, %657, %643
  %667 = phi ptr [ %630, %663 ], [ null, %657 ], [ %630, %643 ]
  %668 = load i32, ptr %445, align 8, !tbaa !30
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %762, label %670

670:                                              ; preds = %666
  %671 = tail call ptr @__errno_location() #17
  br label %672

672:                                              ; preds = %694, %670
  %673 = phi ptr [ %667, %670 ], [ %698, %694 ]
  store i32 0, ptr %671, align 4, !tbaa !4
  store i32 0, ptr %608, align 4, !tbaa !17
  %674 = load i32, ptr %445, align 8, !tbaa !30
  %675 = tail call i32 @llvm.umin.i32(i32 %674, i32 1073741824)
  %676 = zext nneg i32 %675 to i64
  %677 = load i32, ptr %609, align 4, !tbaa !31
  %678 = tail call i64 @write(i32 noundef %677, ptr noundef %673, i64 noundef %676) #15
  %679 = trunc i64 %678 to i32
  %680 = icmp slt i32 %679, 0
  br i1 %680, label %681, label %689

681:                                              ; preds = %672
  %682 = load i32, ptr %671, align 4, !tbaa !4
  %683 = icmp eq i32 %682, 11
  br i1 %683, label %684, label %686

684:                                              ; preds = %681
  store i32 1, ptr %608, align 4, !tbaa !17
  %685 = load i32, ptr %671, align 4, !tbaa !4
  br label %686

686:                                              ; preds = %684, %681
  %687 = phi i32 [ %682, %681 ], [ %685, %684 ]
  %688 = tail call ptr @strerror(i32 noundef %687) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %688) #15
  br label %762

689:                                              ; preds = %672
  %690 = load i32, ptr %445, align 8, !tbaa !30
  %691 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %690, i32 %679), !nosanitize !32
  %692 = extractvalue { i32, i1 } %691, 1, !nosanitize !32
  br i1 %692, label %693, label %694, !prof !33, !nosanitize !32

693:                                              ; preds = %689
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

694:                                              ; preds = %689
  %695 = extractvalue { i32, i1 } %691, 0, !nosanitize !32
  store i32 %695, ptr %445, align 8, !tbaa !30
  %696 = load ptr, ptr %6, align 8, !tbaa !25
  %697 = and i64 %678, 2147483647
  %698 = getelementptr inbounds nuw i8, ptr %696, i64 %697
  store ptr %698, ptr %6, align 8, !tbaa !25
  %699 = icmp eq i32 %695, 0
  br i1 %699, label %762, label %672, !llvm.loop !34

700:                                              ; preds = %663, %661
  %701 = load i32, ptr %613, align 8, !tbaa !36
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %708, label %703

703:                                              ; preds = %700
  %704 = load i32, ptr %445, align 8, !tbaa !30
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %762, label %706

706:                                              ; preds = %703
  %707 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %613, align 8, !tbaa !36
  br label %708

708:                                              ; preds = %706, %700
  %709 = load i32, ptr %610, align 8, !tbaa !26
  br label %710

710:                                              ; preds = %760, %708
  %711 = phi i32 [ %709, %708 ], [ %757, %760 ]
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %713, label %751

713:                                              ; preds = %710
  %714 = load ptr, ptr %611, align 8, !tbaa !27
  %715 = load ptr, ptr %612, align 8, !tbaa !28
  %716 = icmp ugt ptr %714, %715
  br i1 %716, label %717, label %748

717:                                              ; preds = %713
  %718 = tail call ptr @__errno_location() #17
  br label %719

719:                                              ; preds = %739, %717
  %720 = phi ptr [ %715, %717 ], [ %742, %739 ]
  %721 = phi ptr [ %714, %717 ], [ %743, %739 ]
  store i32 0, ptr %718, align 4, !tbaa !4
  store i32 0, ptr %608, align 4, !tbaa !17
  %722 = ptrtoint ptr %721 to i64
  %723 = ptrtoint ptr %720 to i64
  %724 = sub i64 %722, %723
  %725 = tail call i64 @llvm.smin.i64(i64 %724, i64 1073741824)
  %726 = and i64 %725, 4294967295
  %727 = load i32, ptr %609, align 4, !tbaa !31
  %728 = tail call i64 @write(i32 noundef %727, ptr noundef %720, i64 noundef %726) #15
  %729 = and i64 %728, 2147483648
  %730 = icmp eq i64 %729, 0
  br i1 %730, label %739, label %731

731:                                              ; preds = %719
  %732 = load i32, ptr %718, align 4, !tbaa !4
  %733 = icmp eq i32 %732, 11
  br i1 %733, label %734, label %736

734:                                              ; preds = %731
  store i32 1, ptr %608, align 4, !tbaa !17
  %735 = load i32, ptr %718, align 4, !tbaa !4
  br label %736

736:                                              ; preds = %734, %731
  %737 = phi i32 [ %732, %731 ], [ %735, %734 ]
  %738 = tail call ptr @strerror(i32 noundef %737) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %738) #15
  br label %762

739:                                              ; preds = %719
  %740 = load ptr, ptr %612, align 8, !tbaa !28
  %741 = and i64 %728, 2147483647
  %742 = getelementptr inbounds nuw i8, ptr %740, i64 %741
  store ptr %742, ptr %612, align 8, !tbaa !28
  %743 = load ptr, ptr %611, align 8, !tbaa !27
  %744 = icmp ugt ptr %743, %742
  br i1 %744, label %719, label %745, !llvm.loop !37

745:                                              ; preds = %739
  %746 = load i32, ptr %610, align 8, !tbaa !26
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %748, label %751

748:                                              ; preds = %745, %713
  %749 = load i32, ptr %359, align 8, !tbaa !18
  store i32 %749, ptr %610, align 8, !tbaa !26
  %750 = load ptr, ptr %604, align 8, !tbaa !22
  store ptr %750, ptr %611, align 8, !tbaa !27
  store ptr %750, ptr %612, align 8, !tbaa !28
  br label %751

751:                                              ; preds = %748, %745, %710
  %752 = phi i32 [ %746, %745 ], [ %749, %748 ], [ %711, %710 ]
  %753 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %754 = icmp eq i32 %753, -2
  br i1 %754, label %755, label %756

755:                                              ; preds = %751
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %762

756:                                              ; preds = %751
  %757 = load i32, ptr %610, align 8, !tbaa !26
  %758 = icmp ult i32 %752, %757
  br i1 %758, label %759, label %760, !prof !33, !nosanitize !32

759:                                              ; preds = %756
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

760:                                              ; preds = %756
  %761 = icmp eq i32 %752, %757
  br i1 %761, label %762, label %710, !llvm.loop !38

762:                                              ; preds = %760, %755, %736, %703, %694, %686, %666, %654, %648, %638
  %763 = phi i1 [ false, %703 ], [ true, %686 ], [ false, %666 ], [ true, %648 ], [ true, %736 ], [ true, %755 ], [ false, %760 ], [ true, %638 ], [ true, %654 ], [ false, %694 ]
  %764 = load i32, ptr %445, align 8, !tbaa !30
  %765 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %622, i32 %764), !nosanitize !32
  %766 = extractvalue { i32, i1 } %765, 1, !nosanitize !32
  br i1 %766, label %767, label %768, !prof !33, !nosanitize !32

767:                                              ; preds = %762
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

768:                                              ; preds = %762
  %769 = extractvalue { i32, i1 } %765, 0, !nosanitize !32
  %770 = zext i32 %769 to i64
  %771 = load i64, ptr %614, align 8, !tbaa !39
  %772 = add nsw i64 %771, %770
  store i64 %772, ptr %614, align 8, !tbaa !39
  %773 = load i64, ptr %19, align 8, !tbaa !29
  %774 = sub nsw i64 %773, %770
  store i64 %774, ptr %19, align 8, !tbaa !29
  br i1 %763, label %1312, label %775

775:                                              ; preds = %768
  %776 = icmp eq i64 %773, %770
  br i1 %776, label %777, label %616, !llvm.loop !40

777:                                              ; preds = %775
  %778 = load i32, ptr %359, align 8, !tbaa !18
  br label %779

779:                                              ; preds = %777, %440
  %780 = phi i32 [ %778, %777 ], [ %441, %440 ]
  %781 = icmp ugt i32 %780, 1
  %782 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %781, label %783, label %972

783:                                              ; preds = %779
  %784 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %785 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %786 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %787 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %788 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %789 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %790 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %791 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %792 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %793 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %794 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %795 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %796 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %797 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %798

798:                                              ; preds = %912, %783
  %799 = phi ptr [ %3, %783 ], [ %834, %912 ]
  %800 = load i32, ptr %782, align 8, !tbaa !41
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %805, label %802

802:                                              ; preds = %798
  %803 = load ptr, ptr %6, align 8, !tbaa !42
  %804 = load ptr, ptr %784, align 8, !tbaa !20
  br label %807

805:                                              ; preds = %798
  %806 = load ptr, ptr %784, align 8, !tbaa !20
  store ptr %806, ptr %6, align 8, !tbaa !42
  br label %807

807:                                              ; preds = %805, %802
  %808 = phi ptr [ %804, %802 ], [ %806, %805 ]
  %809 = phi ptr [ %803, %802 ], [ %806, %805 ]
  %810 = zext i32 %800 to i64
  %811 = getelementptr inbounds nuw i8, ptr %809, i64 %810
  %812 = ptrtoint ptr %811 to i64
  %813 = ptrtoint ptr %808 to i64
  %814 = sub i64 %812, %813
  %815 = trunc i64 %814 to i32
  %816 = load i32, ptr %359, align 8, !tbaa !18
  %817 = icmp ult i32 %816, %815
  br i1 %817, label %818, label %819, !prof !33, !nosanitize !32

818:                                              ; preds = %807
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

819:                                              ; preds = %807
  %820 = icmp ne i32 %816, %815
  %821 = zext i1 %820 to i64
  %822 = zext i1 %820 to i32
  %823 = and i64 %814, 4294967295
  %824 = getelementptr inbounds nuw i8, ptr %808, i64 %823
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %824, ptr align 1 %799, i64 %821, i1 false)
  %825 = load i32, ptr %782, align 8, !tbaa !41
  %826 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %825, i32 %822), !nosanitize !32
  %827 = extractvalue { i32, i1 } %826, 1, !nosanitize !32
  br i1 %827, label %828, label %829, !prof !33, !nosanitize !32

828:                                              ; preds = %819
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

829:                                              ; preds = %819
  %830 = extractvalue { i32, i1 } %826, 0, !nosanitize !32
  store i32 %830, ptr %782, align 8, !tbaa !41
  %831 = load i64, ptr %785, align 8, !tbaa !39
  %832 = add nsw i64 %831, %821
  store i64 %832, ptr %785, align 8, !tbaa !39
  %833 = zext i1 %820 to i64
  %834 = getelementptr inbounds nuw i8, ptr %799, i64 %833
  br i1 %820, label %1303, label %835

835:                                              ; preds = %829
  %836 = load i32, ptr %359, align 8, !tbaa !18
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %869

838:                                              ; preds = %835
  %839 = load i32, ptr %787, align 4, !tbaa !19
  %840 = shl i32 %839, 1
  %841 = zext i32 %840 to i64
  %842 = tail call noalias ptr @malloc(i64 noundef %841) #16
  store ptr %842, ptr %784, align 8, !tbaa !20
  %843 = icmp eq ptr %842, null
  br i1 %843, label %844, label %845

844:                                              ; preds = %838
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %969

845:                                              ; preds = %838
  %846 = load i32, ptr %786, align 8, !tbaa !21
  %847 = icmp eq i32 %846, 0
  %848 = load i32, ptr %787, align 4, !tbaa !19
  br i1 %847, label %850, label %849

849:                                              ; preds = %845
  store i32 %848, ptr %359, align 8, !tbaa !18
  br label %872

850:                                              ; preds = %845
  %851 = zext i32 %848 to i64
  %852 = tail call noalias ptr @malloc(i64 noundef %851) #16
  store ptr %852, ptr %788, align 8, !tbaa !22
  %853 = icmp eq ptr %852, null
  br i1 %853, label %854, label %855

854:                                              ; preds = %850
  tail call void @free(ptr noundef nonnull %842) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %969

855:                                              ; preds = %850
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %789, i8 0, i64 24, i1 false)
  %856 = load i32, ptr %790, align 8, !tbaa !23
  %857 = load i32, ptr %791, align 4, !tbaa !24
  %858 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %856, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %857, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %863, label %860

860:                                              ; preds = %855
  %861 = load ptr, ptr %788, align 8, !tbaa !22
  tail call void @free(ptr noundef %861) #15
  %862 = load ptr, ptr %784, align 8, !tbaa !20
  tail call void @free(ptr noundef %862) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %969

863:                                              ; preds = %855
  store ptr null, ptr %6, align 8, !tbaa !25
  %864 = load i32, ptr %786, align 8, !tbaa !21
  %865 = load i32, ptr %787, align 4, !tbaa !19
  store i32 %865, ptr %359, align 8, !tbaa !18
  %866 = icmp eq i32 %864, 0
  br i1 %866, label %867, label %872

867:                                              ; preds = %863
  store i32 %865, ptr %794, align 8, !tbaa !26
  %868 = load ptr, ptr %788, align 8, !tbaa !22
  store ptr %868, ptr %795, align 8, !tbaa !27
  store ptr %868, ptr %796, align 8, !tbaa !28
  br label %906

869:                                              ; preds = %835
  %870 = load i32, ptr %786, align 8, !tbaa !21
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %906, label %872

872:                                              ; preds = %869, %863, %849
  %873 = load i32, ptr %782, align 8, !tbaa !30
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %912, label %875

875:                                              ; preds = %872
  %876 = tail call ptr @__errno_location() #17
  %877 = load ptr, ptr %6, align 8, !tbaa !25
  br label %878

878:                                              ; preds = %900, %875
  %879 = phi ptr [ %877, %875 ], [ %904, %900 ]
  store i32 0, ptr %876, align 4, !tbaa !4
  store i32 0, ptr %792, align 4, !tbaa !17
  %880 = load i32, ptr %782, align 8, !tbaa !30
  %881 = tail call i32 @llvm.umin.i32(i32 %880, i32 1073741824)
  %882 = zext nneg i32 %881 to i64
  %883 = load i32, ptr %793, align 4, !tbaa !31
  %884 = tail call i64 @write(i32 noundef %883, ptr noundef %879, i64 noundef %882) #15
  %885 = trunc i64 %884 to i32
  %886 = icmp slt i32 %885, 0
  br i1 %886, label %887, label %895

887:                                              ; preds = %878
  %888 = load i32, ptr %876, align 4, !tbaa !4
  %889 = icmp eq i32 %888, 11
  br i1 %889, label %890, label %892

890:                                              ; preds = %887
  store i32 1, ptr %792, align 4, !tbaa !17
  %891 = load i32, ptr %876, align 4, !tbaa !4
  br label %892

892:                                              ; preds = %890, %887
  %893 = phi i32 [ %888, %887 ], [ %891, %890 ]
  %894 = tail call ptr @strerror(i32 noundef %893) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %894) #15
  br label %969

895:                                              ; preds = %878
  %896 = load i32, ptr %782, align 8, !tbaa !30
  %897 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %896, i32 %885), !nosanitize !32
  %898 = extractvalue { i32, i1 } %897, 1, !nosanitize !32
  br i1 %898, label %899, label %900, !prof !33, !nosanitize !32

899:                                              ; preds = %895
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

900:                                              ; preds = %895
  %901 = extractvalue { i32, i1 } %897, 0, !nosanitize !32
  store i32 %901, ptr %782, align 8, !tbaa !30
  %902 = load ptr, ptr %6, align 8, !tbaa !25
  %903 = and i64 %884, 2147483647
  %904 = getelementptr inbounds nuw i8, ptr %902, i64 %903
  store ptr %904, ptr %6, align 8, !tbaa !25
  %905 = icmp eq i32 %901, 0
  br i1 %905, label %912, label %878, !llvm.loop !34

906:                                              ; preds = %869, %867
  %907 = load i32, ptr %797, align 8, !tbaa !36
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %915, label %909

909:                                              ; preds = %906
  %910 = load i32, ptr %782, align 8, !tbaa !30
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %912, label %913

912:                                              ; preds = %967, %909, %900, %872
  br label %798

913:                                              ; preds = %909
  %914 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %797, align 8, !tbaa !36
  br label %915

915:                                              ; preds = %913, %906
  %916 = load i32, ptr %794, align 8, !tbaa !26
  br label %917

917:                                              ; preds = %967, %915
  %918 = phi i32 [ %916, %915 ], [ %964, %967 ]
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %920, label %958

920:                                              ; preds = %917
  %921 = load ptr, ptr %795, align 8, !tbaa !27
  %922 = load ptr, ptr %796, align 8, !tbaa !28
  %923 = icmp ugt ptr %921, %922
  br i1 %923, label %924, label %955

924:                                              ; preds = %920
  %925 = tail call ptr @__errno_location() #17
  br label %926

926:                                              ; preds = %946, %924
  %927 = phi ptr [ %922, %924 ], [ %949, %946 ]
  %928 = phi ptr [ %921, %924 ], [ %950, %946 ]
  store i32 0, ptr %925, align 4, !tbaa !4
  store i32 0, ptr %792, align 4, !tbaa !17
  %929 = ptrtoint ptr %928 to i64
  %930 = ptrtoint ptr %927 to i64
  %931 = sub i64 %929, %930
  %932 = tail call i64 @llvm.smin.i64(i64 %931, i64 1073741824)
  %933 = and i64 %932, 4294967295
  %934 = load i32, ptr %793, align 4, !tbaa !31
  %935 = tail call i64 @write(i32 noundef %934, ptr noundef %927, i64 noundef %933) #15
  %936 = and i64 %935, 2147483648
  %937 = icmp eq i64 %936, 0
  br i1 %937, label %946, label %938

938:                                              ; preds = %926
  %939 = load i32, ptr %925, align 4, !tbaa !4
  %940 = icmp eq i32 %939, 11
  br i1 %940, label %941, label %943

941:                                              ; preds = %938
  store i32 1, ptr %792, align 4, !tbaa !17
  %942 = load i32, ptr %925, align 4, !tbaa !4
  br label %943

943:                                              ; preds = %941, %938
  %944 = phi i32 [ %939, %938 ], [ %942, %941 ]
  %945 = tail call ptr @strerror(i32 noundef %944) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %945) #15
  br label %969

946:                                              ; preds = %926
  %947 = load ptr, ptr %796, align 8, !tbaa !28
  %948 = and i64 %935, 2147483647
  %949 = getelementptr inbounds nuw i8, ptr %947, i64 %948
  store ptr %949, ptr %796, align 8, !tbaa !28
  %950 = load ptr, ptr %795, align 8, !tbaa !27
  %951 = icmp ugt ptr %950, %949
  br i1 %951, label %926, label %952, !llvm.loop !37

952:                                              ; preds = %946
  %953 = load i32, ptr %794, align 8, !tbaa !26
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %955, label %958

955:                                              ; preds = %952, %920
  %956 = load i32, ptr %359, align 8, !tbaa !18
  store i32 %956, ptr %794, align 8, !tbaa !26
  %957 = load ptr, ptr %788, align 8, !tbaa !22
  store ptr %957, ptr %795, align 8, !tbaa !27
  store ptr %957, ptr %796, align 8, !tbaa !28
  br label %958

958:                                              ; preds = %955, %952, %917
  %959 = phi i32 [ %953, %952 ], [ %956, %955 ], [ %918, %917 ]
  %960 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %961 = icmp eq i32 %960, -2
  br i1 %961, label %962, label %963

962:                                              ; preds = %958
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %969

963:                                              ; preds = %958
  %964 = load i32, ptr %794, align 8, !tbaa !26
  %965 = icmp ult i32 %959, %964
  br i1 %965, label %966, label %967, !prof !33, !nosanitize !32

966:                                              ; preds = %963
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

967:                                              ; preds = %963
  %968 = icmp eq i32 %959, %964
  br i1 %968, label %912, label %917, !llvm.loop !38

969:                                              ; preds = %962, %943, %892, %860, %854, %844
  %970 = load i32, ptr %792, align 4, !tbaa !17
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %1312, label %1305

972:                                              ; preds = %779
  %973 = load i32, ptr %782, align 8, !tbaa !41
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %1127, label %975

975:                                              ; preds = %972
  %976 = icmp eq i32 %780, 0
  br i1 %976, label %977, label %1018

977:                                              ; preds = %975
  %978 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %979 = load i32, ptr %978, align 4, !tbaa !19
  %980 = shl i32 %979, 1
  %981 = zext i32 %980 to i64
  %982 = tail call noalias ptr @malloc(i64 noundef %981) #16
  %983 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %982, ptr %983, align 8, !tbaa !20
  %984 = icmp eq ptr %982, null
  br i1 %984, label %985, label %986

985:                                              ; preds = %977
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1312

986:                                              ; preds = %977
  %987 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %988 = load i32, ptr %987, align 8, !tbaa !21
  %989 = icmp eq i32 %988, 0
  %990 = load i32, ptr %978, align 4, !tbaa !19
  br i1 %989, label %992, label %991

991:                                              ; preds = %986
  store i32 %990, ptr %359, align 8, !tbaa !18
  br label %1022

992:                                              ; preds = %986
  %993 = zext i32 %990 to i64
  %994 = tail call noalias ptr @malloc(i64 noundef %993) #16
  %995 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %994, ptr %995, align 8, !tbaa !22
  %996 = icmp eq ptr %994, null
  br i1 %996, label %997, label %998

997:                                              ; preds = %992
  tail call void @free(ptr noundef nonnull %982) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1312

998:                                              ; preds = %992
  %999 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %1000 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %999, i8 0, i64 24, i1 false)
  %1001 = load i32, ptr %1000, align 8, !tbaa !23
  %1002 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1003 = load i32, ptr %1002, align 4, !tbaa !24
  %1004 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %1001, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %1003, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1009, label %1006

1006:                                             ; preds = %998
  %1007 = load ptr, ptr %995, align 8, !tbaa !22
  tail call void @free(ptr noundef %1007) #15
  %1008 = load ptr, ptr %983, align 8, !tbaa !20
  tail call void @free(ptr noundef %1008) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1312

1009:                                             ; preds = %998
  store ptr null, ptr %6, align 8, !tbaa !25
  %1010 = load i32, ptr %987, align 8, !tbaa !21
  %1011 = load i32, ptr %978, align 4, !tbaa !19
  store i32 %1011, ptr %359, align 8, !tbaa !18
  %1012 = icmp eq i32 %1010, 0
  br i1 %1012, label %1013, label %1022

1013:                                             ; preds = %1009
  %1014 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %1011, ptr %1014, align 8, !tbaa !26
  %1015 = load ptr, ptr %995, align 8, !tbaa !22
  %1016 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1015, ptr %1016, align 8, !tbaa !27
  %1017 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1015, ptr %1017, align 8, !tbaa !28
  br label %1058

1018:                                             ; preds = %975
  %1019 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %1020 = load i32, ptr %1019, align 8, !tbaa !21
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1058, label %1022

1022:                                             ; preds = %1018, %1009, %991
  %1023 = load i32, ptr %782, align 8, !tbaa !30
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1127, label %1025

1025:                                             ; preds = %1022
  %1026 = tail call ptr @__errno_location() #17
  %1027 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1028 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1029 = load ptr, ptr %6, align 8, !tbaa !25
  br label %1030

1030:                                             ; preds = %1052, %1025
  %1031 = phi ptr [ %1029, %1025 ], [ %1056, %1052 ]
  store i32 0, ptr %1026, align 4, !tbaa !4
  store i32 0, ptr %1027, align 4, !tbaa !17
  %1032 = load i32, ptr %782, align 8, !tbaa !30
  %1033 = tail call i32 @llvm.umin.i32(i32 %1032, i32 1073741824)
  %1034 = zext nneg i32 %1033 to i64
  %1035 = load i32, ptr %1028, align 4, !tbaa !31
  %1036 = tail call i64 @write(i32 noundef %1035, ptr noundef %1031, i64 noundef %1034) #15
  %1037 = trunc i64 %1036 to i32
  %1038 = icmp slt i32 %1037, 0
  br i1 %1038, label %1039, label %1047

1039:                                             ; preds = %1030
  %1040 = load i32, ptr %1026, align 4, !tbaa !4
  %1041 = icmp eq i32 %1040, 11
  br i1 %1041, label %1042, label %1044

1042:                                             ; preds = %1039
  store i32 1, ptr %1027, align 4, !tbaa !17
  %1043 = load i32, ptr %1026, align 4, !tbaa !4
  br label %1044

1044:                                             ; preds = %1042, %1039
  %1045 = phi i32 [ %1040, %1039 ], [ %1043, %1042 ]
  %1046 = tail call ptr @strerror(i32 noundef %1045) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1046) #15
  br label %1312

1047:                                             ; preds = %1030
  %1048 = load i32, ptr %782, align 8, !tbaa !30
  %1049 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1048, i32 %1037), !nosanitize !32
  %1050 = extractvalue { i32, i1 } %1049, 1, !nosanitize !32
  br i1 %1050, label %1051, label %1052, !prof !33, !nosanitize !32

1051:                                             ; preds = %1047
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1052:                                             ; preds = %1047
  %1053 = extractvalue { i32, i1 } %1049, 0, !nosanitize !32
  store i32 %1053, ptr %782, align 8, !tbaa !30
  %1054 = load ptr, ptr %6, align 8, !tbaa !25
  %1055 = and i64 %1036, 2147483647
  %1056 = getelementptr inbounds nuw i8, ptr %1054, i64 %1055
  store ptr %1056, ptr %6, align 8, !tbaa !25
  %1057 = icmp eq i32 %1053, 0
  br i1 %1057, label %1127, label %1030, !llvm.loop !34

1058:                                             ; preds = %1018, %1013
  %1059 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1060 = load i32, ptr %1059, align 8, !tbaa !36
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1067, label %1062

1062:                                             ; preds = %1058
  %1063 = load i32, ptr %782, align 8, !tbaa !30
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1127, label %1065

1065:                                             ; preds = %1062
  %1066 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %1059, align 8, !tbaa !36
  br label %1067

1067:                                             ; preds = %1065, %1058
  %1068 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %1069 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %1070 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1071 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1072 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1073 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1074 = load i32, ptr %1068, align 8, !tbaa !26
  br label %1075

1075:                                             ; preds = %1125, %1067
  %1076 = phi i32 [ %1074, %1067 ], [ %1122, %1125 ]
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1078, label %1116

1078:                                             ; preds = %1075
  %1079 = load ptr, ptr %1069, align 8, !tbaa !27
  %1080 = load ptr, ptr %1070, align 8, !tbaa !28
  %1081 = icmp ugt ptr %1079, %1080
  br i1 %1081, label %1082, label %1113

1082:                                             ; preds = %1078
  %1083 = tail call ptr @__errno_location() #17
  br label %1084

1084:                                             ; preds = %1104, %1082
  %1085 = phi ptr [ %1080, %1082 ], [ %1107, %1104 ]
  %1086 = phi ptr [ %1079, %1082 ], [ %1108, %1104 ]
  store i32 0, ptr %1083, align 4, !tbaa !4
  store i32 0, ptr %1071, align 4, !tbaa !17
  %1087 = ptrtoint ptr %1086 to i64
  %1088 = ptrtoint ptr %1085 to i64
  %1089 = sub i64 %1087, %1088
  %1090 = tail call i64 @llvm.smin.i64(i64 %1089, i64 1073741824)
  %1091 = and i64 %1090, 4294967295
  %1092 = load i32, ptr %1072, align 4, !tbaa !31
  %1093 = tail call i64 @write(i32 noundef %1092, ptr noundef %1085, i64 noundef %1091) #15
  %1094 = and i64 %1093, 2147483648
  %1095 = icmp eq i64 %1094, 0
  br i1 %1095, label %1104, label %1096

1096:                                             ; preds = %1084
  %1097 = load i32, ptr %1083, align 4, !tbaa !4
  %1098 = icmp eq i32 %1097, 11
  br i1 %1098, label %1099, label %1101

1099:                                             ; preds = %1096
  store i32 1, ptr %1071, align 4, !tbaa !17
  %1100 = load i32, ptr %1083, align 4, !tbaa !4
  br label %1101

1101:                                             ; preds = %1099, %1096
  %1102 = phi i32 [ %1097, %1096 ], [ %1100, %1099 ]
  %1103 = tail call ptr @strerror(i32 noundef %1102) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1103) #15
  br label %1312

1104:                                             ; preds = %1084
  %1105 = load ptr, ptr %1070, align 8, !tbaa !28
  %1106 = and i64 %1093, 2147483647
  %1107 = getelementptr inbounds nuw i8, ptr %1105, i64 %1106
  store ptr %1107, ptr %1070, align 8, !tbaa !28
  %1108 = load ptr, ptr %1069, align 8, !tbaa !27
  %1109 = icmp ugt ptr %1108, %1107
  br i1 %1109, label %1084, label %1110, !llvm.loop !37

1110:                                             ; preds = %1104
  %1111 = load i32, ptr %1068, align 8, !tbaa !26
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1113, label %1116

1113:                                             ; preds = %1110, %1078
  %1114 = load i32, ptr %359, align 8, !tbaa !18
  store i32 %1114, ptr %1068, align 8, !tbaa !26
  %1115 = load ptr, ptr %1073, align 8, !tbaa !22
  store ptr %1115, ptr %1069, align 8, !tbaa !27
  store ptr %1115, ptr %1070, align 8, !tbaa !28
  br label %1116

1116:                                             ; preds = %1113, %1110, %1075
  %1117 = phi i32 [ %1111, %1110 ], [ %1114, %1113 ], [ %1076, %1075 ]
  %1118 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %1119 = icmp eq i32 %1118, -2
  br i1 %1119, label %1120, label %1121

1120:                                             ; preds = %1116
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %1312

1121:                                             ; preds = %1116
  %1122 = load i32, ptr %1068, align 8, !tbaa !26
  %1123 = icmp ult i32 %1117, %1122
  br i1 %1123, label %1124, label %1125, !prof !33, !nosanitize !32

1124:                                             ; preds = %1121
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1125:                                             ; preds = %1121
  %1126 = icmp eq i32 %1117, %1122
  br i1 %1126, label %1127, label %1075, !llvm.loop !38

1127:                                             ; preds = %1125, %1062, %1052, %1022, %972
  store ptr %3, ptr %6, align 8, !tbaa !42
  %1128 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %1129 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %1130 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %1131 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1132 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %1133 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %1134 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1135 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1136 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %1137 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %1138 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %1139 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1140 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1141 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %1142

1142:                                             ; preds = %1301, %1127
  %1143 = phi i64 [ 1, %1127 ], [ %1290, %1301 ]
  %1144 = call i64 @llvm.umin.i64(i64 %1143, i64 4294967295)
  %1145 = trunc nuw i64 %1144 to i32
  store i32 %1145, ptr %782, align 8, !tbaa !41
  %1146 = load i32, ptr %359, align 8, !tbaa !18
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1148, label %1179

1148:                                             ; preds = %1142
  %1149 = load i32, ptr %1129, align 4, !tbaa !19
  %1150 = shl i32 %1149, 1
  %1151 = zext i32 %1150 to i64
  %1152 = call noalias ptr @malloc(i64 noundef %1151) #16
  store ptr %1152, ptr %1130, align 8, !tbaa !20
  %1153 = icmp eq ptr %1152, null
  br i1 %1153, label %1154, label %1155

1154:                                             ; preds = %1148
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1278

1155:                                             ; preds = %1148
  %1156 = load i32, ptr %1128, align 8, !tbaa !21
  %1157 = icmp eq i32 %1156, 0
  %1158 = load i32, ptr %1129, align 4, !tbaa !19
  br i1 %1157, label %1160, label %1159

1159:                                             ; preds = %1155
  store i32 %1158, ptr %359, align 8, !tbaa !18
  br label %1182

1160:                                             ; preds = %1155
  %1161 = zext i32 %1158 to i64
  %1162 = call noalias ptr @malloc(i64 noundef %1161) #16
  store ptr %1162, ptr %1131, align 8, !tbaa !22
  %1163 = icmp eq ptr %1162, null
  br i1 %1163, label %1164, label %1165

1164:                                             ; preds = %1160
  call void @free(ptr noundef nonnull %1152) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1278

1165:                                             ; preds = %1160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1132, i8 0, i64 24, i1 false)
  %1166 = load i32, ptr %1133, align 8, !tbaa !23
  %1167 = load i32, ptr %1134, align 4, !tbaa !24
  %1168 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %1166, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %1167, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %1169 = icmp eq i32 %1168, 0
  br i1 %1169, label %1173, label %1170

1170:                                             ; preds = %1165
  %1171 = load ptr, ptr %1131, align 8, !tbaa !22
  call void @free(ptr noundef %1171) #15
  %1172 = load ptr, ptr %1130, align 8, !tbaa !20
  call void @free(ptr noundef %1172) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %1278

1173:                                             ; preds = %1165
  store ptr null, ptr %6, align 8, !tbaa !25
  %1174 = load i32, ptr %1128, align 8, !tbaa !21
  %1175 = load i32, ptr %1129, align 4, !tbaa !19
  store i32 %1175, ptr %359, align 8, !tbaa !18
  %1176 = icmp eq i32 %1174, 0
  br i1 %1176, label %1177, label %1182

1177:                                             ; preds = %1173
  store i32 %1175, ptr %1137, align 8, !tbaa !26
  %1178 = load ptr, ptr %1131, align 8, !tbaa !22
  store ptr %1178, ptr %1138, align 8, !tbaa !27
  store ptr %1178, ptr %1139, align 8, !tbaa !28
  br label %1216

1179:                                             ; preds = %1142
  %1180 = load i32, ptr %1128, align 8, !tbaa !21
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1216, label %1182

1182:                                             ; preds = %1179, %1173, %1159
  %1183 = load i32, ptr %782, align 8, !tbaa !30
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1278, label %1185

1185:                                             ; preds = %1182
  %1186 = tail call ptr @__errno_location() #17
  %1187 = load ptr, ptr %6, align 8, !tbaa !25
  br label %1188

1188:                                             ; preds = %1210, %1185
  %1189 = phi ptr [ %1187, %1185 ], [ %1214, %1210 ]
  store i32 0, ptr %1186, align 4, !tbaa !4
  store i32 0, ptr %1135, align 4, !tbaa !17
  %1190 = load i32, ptr %782, align 8, !tbaa !30
  %1191 = call i32 @llvm.umin.i32(i32 %1190, i32 1073741824)
  %1192 = zext nneg i32 %1191 to i64
  %1193 = load i32, ptr %1136, align 4, !tbaa !31
  %1194 = call i64 @write(i32 noundef %1193, ptr noundef %1189, i64 noundef %1192) #15
  %1195 = trunc i64 %1194 to i32
  %1196 = icmp slt i32 %1195, 0
  br i1 %1196, label %1197, label %1205

1197:                                             ; preds = %1188
  %1198 = load i32, ptr %1186, align 4, !tbaa !4
  %1199 = icmp eq i32 %1198, 11
  br i1 %1199, label %1200, label %1202

1200:                                             ; preds = %1197
  store i32 1, ptr %1135, align 4, !tbaa !17
  %1201 = load i32, ptr %1186, align 4, !tbaa !4
  br label %1202

1202:                                             ; preds = %1200, %1197
  %1203 = phi i32 [ %1198, %1197 ], [ %1201, %1200 ]
  %1204 = call ptr @strerror(i32 noundef %1203) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1204) #15
  br label %1278

1205:                                             ; preds = %1188
  %1206 = load i32, ptr %782, align 8, !tbaa !30
  %1207 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1206, i32 %1195), !nosanitize !32
  %1208 = extractvalue { i32, i1 } %1207, 1, !nosanitize !32
  br i1 %1208, label %1209, label %1210, !prof !33, !nosanitize !32

1209:                                             ; preds = %1205
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1210:                                             ; preds = %1205
  %1211 = extractvalue { i32, i1 } %1207, 0, !nosanitize !32
  store i32 %1211, ptr %782, align 8, !tbaa !30
  %1212 = load ptr, ptr %6, align 8, !tbaa !25
  %1213 = and i64 %1194, 2147483647
  %1214 = getelementptr inbounds nuw i8, ptr %1212, i64 %1213
  store ptr %1214, ptr %6, align 8, !tbaa !25
  %1215 = icmp eq i32 %1211, 0
  br i1 %1215, label %1278, label %1188, !llvm.loop !34

1216:                                             ; preds = %1179, %1177
  %1217 = load i32, ptr %1140, align 8, !tbaa !36
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1224, label %1219

1219:                                             ; preds = %1216
  %1220 = load i32, ptr %782, align 8, !tbaa !30
  %1221 = icmp eq i32 %1220, 0
  br i1 %1221, label %1278, label %1222

1222:                                             ; preds = %1219
  %1223 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %1140, align 8, !tbaa !36
  br label %1224

1224:                                             ; preds = %1222, %1216
  %1225 = load i32, ptr %1137, align 8, !tbaa !26
  br label %1226

1226:                                             ; preds = %1276, %1224
  %1227 = phi i32 [ %1225, %1224 ], [ %1273, %1276 ]
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1229, label %1267

1229:                                             ; preds = %1226
  %1230 = load ptr, ptr %1138, align 8, !tbaa !27
  %1231 = load ptr, ptr %1139, align 8, !tbaa !28
  %1232 = icmp ugt ptr %1230, %1231
  br i1 %1232, label %1233, label %1264

1233:                                             ; preds = %1229
  %1234 = tail call ptr @__errno_location() #17
  br label %1235

1235:                                             ; preds = %1255, %1233
  %1236 = phi ptr [ %1231, %1233 ], [ %1258, %1255 ]
  %1237 = phi ptr [ %1230, %1233 ], [ %1259, %1255 ]
  store i32 0, ptr %1234, align 4, !tbaa !4
  store i32 0, ptr %1135, align 4, !tbaa !17
  %1238 = ptrtoint ptr %1237 to i64
  %1239 = ptrtoint ptr %1236 to i64
  %1240 = sub i64 %1238, %1239
  %1241 = call i64 @llvm.smin.i64(i64 %1240, i64 1073741824)
  %1242 = and i64 %1241, 4294967295
  %1243 = load i32, ptr %1136, align 4, !tbaa !31
  %1244 = call i64 @write(i32 noundef %1243, ptr noundef %1236, i64 noundef %1242) #15
  %1245 = and i64 %1244, 2147483648
  %1246 = icmp eq i64 %1245, 0
  br i1 %1246, label %1255, label %1247

1247:                                             ; preds = %1235
  %1248 = load i32, ptr %1234, align 4, !tbaa !4
  %1249 = icmp eq i32 %1248, 11
  br i1 %1249, label %1250, label %1252

1250:                                             ; preds = %1247
  store i32 1, ptr %1135, align 4, !tbaa !17
  %1251 = load i32, ptr %1234, align 4, !tbaa !4
  br label %1252

1252:                                             ; preds = %1250, %1247
  %1253 = phi i32 [ %1248, %1247 ], [ %1251, %1250 ]
  %1254 = call ptr @strerror(i32 noundef %1253) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1254) #15
  br label %1278

1255:                                             ; preds = %1235
  %1256 = load ptr, ptr %1139, align 8, !tbaa !28
  %1257 = and i64 %1244, 2147483647
  %1258 = getelementptr inbounds nuw i8, ptr %1256, i64 %1257
  store ptr %1258, ptr %1139, align 8, !tbaa !28
  %1259 = load ptr, ptr %1138, align 8, !tbaa !27
  %1260 = icmp ugt ptr %1259, %1258
  br i1 %1260, label %1235, label %1261, !llvm.loop !37

1261:                                             ; preds = %1255
  %1262 = load i32, ptr %1137, align 8, !tbaa !26
  %1263 = icmp eq i32 %1262, 0
  br i1 %1263, label %1264, label %1267

1264:                                             ; preds = %1261, %1229
  %1265 = load i32, ptr %359, align 8, !tbaa !18
  store i32 %1265, ptr %1137, align 8, !tbaa !26
  %1266 = load ptr, ptr %1131, align 8, !tbaa !22
  store ptr %1266, ptr %1138, align 8, !tbaa !27
  store ptr %1266, ptr %1139, align 8, !tbaa !28
  br label %1267

1267:                                             ; preds = %1264, %1261, %1226
  %1268 = phi i32 [ %1262, %1261 ], [ %1265, %1264 ], [ %1227, %1226 ]
  %1269 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %1270 = icmp eq i32 %1269, -2
  br i1 %1270, label %1271, label %1272

1271:                                             ; preds = %1267
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %1278

1272:                                             ; preds = %1267
  %1273 = load i32, ptr %1137, align 8, !tbaa !26
  %1274 = icmp ult i32 %1268, %1273
  br i1 %1274, label %1275, label %1276, !prof !33, !nosanitize !32

1275:                                             ; preds = %1272
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1276:                                             ; preds = %1272
  %1277 = icmp eq i32 %1268, %1273
  br i1 %1277, label %1278, label %1226, !llvm.loop !38

1278:                                             ; preds = %1276, %1271, %1252, %1219, %1210, %1202, %1182, %1170, %1164, %1154
  %1279 = phi i1 [ false, %1219 ], [ true, %1202 ], [ false, %1182 ], [ true, %1164 ], [ true, %1252 ], [ true, %1271 ], [ false, %1276 ], [ true, %1154 ], [ true, %1170 ], [ false, %1210 ]
  %1280 = load i32, ptr %782, align 8, !tbaa !41
  %1281 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1145, i32 %1280), !nosanitize !32
  %1282 = extractvalue { i32, i1 } %1281, 1, !nosanitize !32
  br i1 %1282, label %1283, label %1284, !prof !33, !nosanitize !32

1283:                                             ; preds = %1278
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1284:                                             ; preds = %1278
  %1285 = extractvalue { i32, i1 } %1281, 0, !nosanitize !32
  %1286 = zext i32 %1285 to i64
  %1287 = load i64, ptr %1141, align 8, !tbaa !39
  %1288 = add nsw i64 %1287, %1286
  store i64 %1288, ptr %1141, align 8, !tbaa !39
  %1289 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1143, i64 %1286), !nosanitize !32
  %1290 = extractvalue { i64, i1 } %1289, 0, !nosanitize !32
  %1291 = extractvalue { i64, i1 } %1289, 1, !nosanitize !32
  br i1 %1291, label %1292, label %1293, !prof !33, !nosanitize !32

1292:                                             ; preds = %1284
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1293:                                             ; preds = %1284
  br i1 %1279, label %1294, label %1301

1294:                                             ; preds = %1293
  %1295 = load i32, ptr %1135, align 4, !tbaa !17
  %1296 = icmp eq i32 %1295, 0
  br i1 %1296, label %1312, label %1297

1297:                                             ; preds = %1294
  %1298 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 1, i64 %1290), !nosanitize !32
  %1299 = extractvalue { i64, i1 } %1298, 1, !nosanitize !32
  br i1 %1299, label %1300, label %1305, !prof !33, !nosanitize !32

1300:                                             ; preds = %1297
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

1301:                                             ; preds = %1293
  %1302 = icmp eq i64 %1290, 0
  br i1 %1302, label %1303, label %1142, !llvm.loop !43

1303:                                             ; preds = %1301, %829
  %1304 = and i32 %1, 255
  br label %1312

1305:                                             ; preds = %1297, %969
  %1306 = phi { i64, i1 } [ %1298, %1297 ], [ zeroinitializer, %969 ]
  %1307 = freeze { i64, i1 } %1306
  %1308 = extractvalue { i64, i1 } %1307, 0
  %1309 = icmp eq i64 %1308, 1
  %1310 = and i32 %1, 255
  %1311 = select i1 %1309, i32 %1310, i32 -1
  br label %1312

1312:                                             ; preds = %1305, %1303, %1294, %1120, %1101, %1044, %1006, %997, %985, %969, %768, %593, %574, %517, %479, %470, %458, %428, %419, %407, %391, %349, %173, %154, %97, %59, %50, %38, %14, %5, %2
  %1313 = phi i32 [ -1, %14 ], [ -1, %2 ], [ -1, %5 ], [ %396, %391 ], [ -1, %985 ], [ -1, %768 ], [ %1311, %1305 ], [ %1304, %1303 ], [ -1, %38 ], [ -1, %59 ], [ -1, %97 ], [ -1, %50 ], [ -1, %154 ], [ -1, %173 ], [ -1, %1006 ], [ -1, %1120 ], [ -1, %1294 ], [ -1, %969 ], [ -1, %419 ], [ -1, %407 ], [ -1, %428 ], [ -1, %458 ], [ -1, %479 ], [ -1, %517 ], [ -1, %470 ], [ -1, %574 ], [ -1, %593 ], [ -1, %1044 ], [ -1, %997 ], [ -1, %1101 ], [ -1, %349 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %1313
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gzputs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %956, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %956

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %956, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %18 = icmp ult i64 %17, 2147483648
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.2) #15
  br label %956

20:                                               ; preds = %16
  %21 = icmp eq i64 %17, 0
  br i1 %21, label %949, label %22

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
  br label %949

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
  br label %949

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
  br label %949

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
  br i1 %72, label %409, label %73

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
  br label %949

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
  br label %949

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
  br label %949

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
  br label %949

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
  br label %949

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
  br label %949

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

246:                                              ; preds = %405, %230
  %247 = phi i64 [ %245, %230 ], [ %404, %405 ]
  %248 = phi i1 [ false, %230 ], [ true, %405 ]
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

397:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

398:                                              ; preds = %392
  %399 = extractvalue { i32, i1 } %395, 0, !nosanitize !32
  %400 = zext i32 %399 to i64
  %401 = load i64, ptr %244, align 8, !tbaa !39
  %402 = add nsw i64 %401, %400
  store i64 %402, ptr %244, align 8, !tbaa !39
  %403 = load i64, ptr %70, align 8, !tbaa !29
  %404 = sub nsw i64 %403, %400
  store i64 %404, ptr %70, align 8, !tbaa !29
  br i1 %393, label %949, label %405

405:                                              ; preds = %398
  %406 = icmp eq i64 %403, %400
  br i1 %406, label %407, label %246, !llvm.loop !40

407:                                              ; preds = %405
  %408 = load i32, ptr %23, align 8, !tbaa !18
  br label %409

409:                                              ; preds = %407, %68
  %410 = phi i32 [ %408, %407 ], [ %69, %68 ]
  %411 = zext i32 %410 to i64
  %412 = icmp ult i64 %17, %411
  %413 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %412, label %415, label %617

415:                                              ; preds = %409
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %430

430:                                              ; preds = %552, %415
  %431 = phi i64 [ %17, %415 ], [ %470, %552 ]
  %432 = phi ptr [ %1, %415 ], [ %468, %552 ]
  %433 = load i32, ptr %414, align 8, !tbaa !41
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %438, label %435

435:                                              ; preds = %430
  %436 = load ptr, ptr %413, align 8, !tbaa !42
  %437 = load ptr, ptr %416, align 8, !tbaa !20
  br label %440

438:                                              ; preds = %430
  %439 = load ptr, ptr %416, align 8, !tbaa !20
  store ptr %439, ptr %413, align 8, !tbaa !42
  br label %440

440:                                              ; preds = %438, %435
  %441 = phi ptr [ %437, %435 ], [ %439, %438 ]
  %442 = phi ptr [ %436, %435 ], [ %439, %438 ]
  %443 = zext i32 %433 to i64
  %444 = getelementptr inbounds nuw i8, ptr %442, i64 %443
  %445 = ptrtoint ptr %444 to i64
  %446 = ptrtoint ptr %441 to i64
  %447 = sub i64 %445, %446
  %448 = trunc i64 %447 to i32
  %449 = load i32, ptr %23, align 8, !tbaa !18
  %450 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %449, i32 %448), !nosanitize !32
  %451 = extractvalue { i32, i1 } %450, 1, !nosanitize !32
  br i1 %451, label %452, label %453, !prof !33, !nosanitize !32

452:                                              ; preds = %440
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

453:                                              ; preds = %440
  %454 = extractvalue { i32, i1 } %450, 0, !nosanitize !32
  %455 = zext i32 %454 to i64
  %456 = tail call i64 @llvm.umin.i64(i64 %431, i64 %455)
  %457 = trunc nuw i64 %456 to i32
  %458 = and i64 %447, 4294967295
  %459 = getelementptr inbounds nuw i8, ptr %441, i64 %458
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %459, ptr align 1 %432, i64 %456, i1 false)
  %460 = load i32, ptr %414, align 8, !tbaa !41
  %461 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %460, i32 %457), !nosanitize !32
  %462 = extractvalue { i32, i1 } %461, 1, !nosanitize !32
  br i1 %462, label %463, label %464, !prof !33, !nosanitize !32

463:                                              ; preds = %453
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

464:                                              ; preds = %453
  %465 = extractvalue { i32, i1 } %461, 0, !nosanitize !32
  store i32 %465, ptr %414, align 8, !tbaa !41
  %466 = load i64, ptr %417, align 8, !tbaa !39
  %467 = add nsw i64 %466, %456
  store i64 %467, ptr %417, align 8, !tbaa !39
  %468 = getelementptr inbounds nuw i8, ptr %432, i64 %456
  %469 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %431, i64 %456), !nosanitize !32
  %470 = extractvalue { i64, i1 } %469, 0, !nosanitize !32
  %471 = extractvalue { i64, i1 } %469, 1, !nosanitize !32
  br i1 %471, label %472, label %473, !prof !33, !nosanitize !32

472:                                              ; preds = %464
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

473:                                              ; preds = %464
  %474 = icmp eq i64 %470, 0
  br i1 %474, label %949, label %475

475:                                              ; preds = %473
  %476 = load i32, ptr %23, align 8, !tbaa !18
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %509

478:                                              ; preds = %475
  %479 = load i32, ptr %419, align 4, !tbaa !19
  %480 = shl i32 %479, 1
  %481 = zext i32 %480 to i64
  %482 = tail call noalias ptr @malloc(i64 noundef %481) #16
  store ptr %482, ptr %416, align 8, !tbaa !20
  %483 = icmp eq ptr %482, null
  br i1 %483, label %484, label %485

484:                                              ; preds = %478
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %609

485:                                              ; preds = %478
  %486 = load i32, ptr %418, align 8, !tbaa !21
  %487 = icmp eq i32 %486, 0
  %488 = load i32, ptr %419, align 4, !tbaa !19
  br i1 %487, label %490, label %489

489:                                              ; preds = %485
  store i32 %488, ptr %23, align 8, !tbaa !18
  br label %512

490:                                              ; preds = %485
  %491 = zext i32 %488 to i64
  %492 = tail call noalias ptr @malloc(i64 noundef %491) #16
  store ptr %492, ptr %420, align 8, !tbaa !22
  %493 = icmp eq ptr %492, null
  br i1 %493, label %494, label %495

494:                                              ; preds = %490
  tail call void @free(ptr noundef nonnull %482) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %609

495:                                              ; preds = %490
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %421, i8 0, i64 24, i1 false)
  %496 = load i32, ptr %422, align 8, !tbaa !23
  %497 = load i32, ptr %423, align 4, !tbaa !24
  %498 = tail call i32 @deflateInit2_(ptr noundef nonnull %413, i32 noundef %496, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %497, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %503, label %500

500:                                              ; preds = %495
  %501 = load ptr, ptr %420, align 8, !tbaa !22
  tail call void @free(ptr noundef %501) #15
  %502 = load ptr, ptr %416, align 8, !tbaa !20
  tail call void @free(ptr noundef %502) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %609

503:                                              ; preds = %495
  store ptr null, ptr %413, align 8, !tbaa !25
  %504 = load i32, ptr %418, align 8, !tbaa !21
  %505 = load i32, ptr %419, align 4, !tbaa !19
  store i32 %505, ptr %23, align 8, !tbaa !18
  %506 = icmp eq i32 %504, 0
  br i1 %506, label %507, label %512

507:                                              ; preds = %503
  store i32 %505, ptr %426, align 8, !tbaa !26
  %508 = load ptr, ptr %420, align 8, !tbaa !22
  store ptr %508, ptr %427, align 8, !tbaa !27
  store ptr %508, ptr %428, align 8, !tbaa !28
  br label %546

509:                                              ; preds = %475
  %510 = load i32, ptr %418, align 8, !tbaa !21
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %546, label %512

512:                                              ; preds = %509, %503, %489
  %513 = load i32, ptr %414, align 8, !tbaa !30
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %552, label %515

515:                                              ; preds = %512
  %516 = tail call ptr @__errno_location() #17
  %517 = load ptr, ptr %413, align 8, !tbaa !25
  br label %518

518:                                              ; preds = %540, %515
  %519 = phi ptr [ %517, %515 ], [ %544, %540 ]
  store i32 0, ptr %516, align 4, !tbaa !4
  store i32 0, ptr %424, align 4, !tbaa !17
  %520 = load i32, ptr %414, align 8, !tbaa !30
  %521 = tail call i32 @llvm.umin.i32(i32 %520, i32 1073741824)
  %522 = zext nneg i32 %521 to i64
  %523 = load i32, ptr %425, align 4, !tbaa !31
  %524 = tail call i64 @write(i32 noundef %523, ptr noundef %519, i64 noundef %522) #15
  %525 = trunc i64 %524 to i32
  %526 = icmp slt i32 %525, 0
  br i1 %526, label %527, label %535

527:                                              ; preds = %518
  %528 = load i32, ptr %516, align 4, !tbaa !4
  %529 = icmp eq i32 %528, 11
  br i1 %529, label %530, label %532

530:                                              ; preds = %527
  store i32 1, ptr %424, align 4, !tbaa !17
  %531 = load i32, ptr %516, align 4, !tbaa !4
  br label %532

532:                                              ; preds = %530, %527
  %533 = phi i32 [ %528, %527 ], [ %531, %530 ]
  %534 = tail call ptr @strerror(i32 noundef %533) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %534) #15
  br label %609

535:                                              ; preds = %518
  %536 = load i32, ptr %414, align 8, !tbaa !30
  %537 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %536, i32 %525), !nosanitize !32
  %538 = extractvalue { i32, i1 } %537, 1, !nosanitize !32
  br i1 %538, label %539, label %540, !prof !33, !nosanitize !32

539:                                              ; preds = %535
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

540:                                              ; preds = %535
  %541 = extractvalue { i32, i1 } %537, 0, !nosanitize !32
  store i32 %541, ptr %414, align 8, !tbaa !30
  %542 = load ptr, ptr %413, align 8, !tbaa !25
  %543 = and i64 %524, 2147483647
  %544 = getelementptr inbounds nuw i8, ptr %542, i64 %543
  store ptr %544, ptr %413, align 8, !tbaa !25
  %545 = icmp eq i32 %541, 0
  br i1 %545, label %552, label %518, !llvm.loop !34

546:                                              ; preds = %509, %507
  %547 = load i32, ptr %429, align 8, !tbaa !36
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %555, label %549

549:                                              ; preds = %546
  %550 = load i32, ptr %414, align 8, !tbaa !30
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %553

552:                                              ; preds = %607, %549, %540, %512
  br label %430

553:                                              ; preds = %549
  %554 = tail call i32 @deflateReset(ptr noundef nonnull %413) #15
  store i32 0, ptr %429, align 8, !tbaa !36
  br label %555

555:                                              ; preds = %553, %546
  %556 = load i32, ptr %426, align 8, !tbaa !26
  br label %557

557:                                              ; preds = %607, %555
  %558 = phi i32 [ %556, %555 ], [ %604, %607 ]
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %598

560:                                              ; preds = %557
  %561 = load ptr, ptr %427, align 8, !tbaa !27
  %562 = load ptr, ptr %428, align 8, !tbaa !28
  %563 = icmp ugt ptr %561, %562
  br i1 %563, label %564, label %595

564:                                              ; preds = %560
  %565 = tail call ptr @__errno_location() #17
  br label %566

566:                                              ; preds = %586, %564
  %567 = phi ptr [ %562, %564 ], [ %589, %586 ]
  %568 = phi ptr [ %561, %564 ], [ %590, %586 ]
  store i32 0, ptr %565, align 4, !tbaa !4
  store i32 0, ptr %424, align 4, !tbaa !17
  %569 = ptrtoint ptr %568 to i64
  %570 = ptrtoint ptr %567 to i64
  %571 = sub i64 %569, %570
  %572 = tail call i64 @llvm.smin.i64(i64 %571, i64 1073741824)
  %573 = and i64 %572, 4294967295
  %574 = load i32, ptr %425, align 4, !tbaa !31
  %575 = tail call i64 @write(i32 noundef %574, ptr noundef %567, i64 noundef %573) #15
  %576 = and i64 %575, 2147483648
  %577 = icmp eq i64 %576, 0
  br i1 %577, label %586, label %578

578:                                              ; preds = %566
  %579 = load i32, ptr %565, align 4, !tbaa !4
  %580 = icmp eq i32 %579, 11
  br i1 %580, label %581, label %583

581:                                              ; preds = %578
  store i32 1, ptr %424, align 4, !tbaa !17
  %582 = load i32, ptr %565, align 4, !tbaa !4
  br label %583

583:                                              ; preds = %581, %578
  %584 = phi i32 [ %579, %578 ], [ %582, %581 ]
  %585 = tail call ptr @strerror(i32 noundef %584) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %585) #15
  br label %609

586:                                              ; preds = %566
  %587 = load ptr, ptr %428, align 8, !tbaa !28
  %588 = and i64 %575, 2147483647
  %589 = getelementptr inbounds nuw i8, ptr %587, i64 %588
  store ptr %589, ptr %428, align 8, !tbaa !28
  %590 = load ptr, ptr %427, align 8, !tbaa !27
  %591 = icmp ugt ptr %590, %589
  br i1 %591, label %566, label %592, !llvm.loop !37

592:                                              ; preds = %586
  %593 = load i32, ptr %426, align 8, !tbaa !26
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %595, label %598

595:                                              ; preds = %592, %560
  %596 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %596, ptr %426, align 8, !tbaa !26
  %597 = load ptr, ptr %420, align 8, !tbaa !22
  store ptr %597, ptr %427, align 8, !tbaa !27
  store ptr %597, ptr %428, align 8, !tbaa !28
  br label %598

598:                                              ; preds = %595, %592, %557
  %599 = phi i32 [ %593, %592 ], [ %596, %595 ], [ %558, %557 ]
  %600 = tail call i32 @deflate(ptr noundef nonnull %413, i32 noundef 0) #15
  %601 = icmp eq i32 %600, -2
  br i1 %601, label %602, label %603

602:                                              ; preds = %598
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %609

603:                                              ; preds = %598
  %604 = load i32, ptr %426, align 8, !tbaa !26
  %605 = icmp ult i32 %599, %604
  br i1 %605, label %606, label %607, !prof !33, !nosanitize !32

606:                                              ; preds = %603
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

607:                                              ; preds = %603
  %608 = icmp eq i32 %599, %604
  br i1 %608, label %552, label %557, !llvm.loop !38

609:                                              ; preds = %602, %583, %532, %500, %494, %484
  %610 = load i32, ptr %424, align 4, !tbaa !17
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %949, label %612

612:                                              ; preds = %609
  %613 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %17, i64 %470), !nosanitize !32
  %614 = extractvalue { i64, i1 } %613, 0, !nosanitize !32
  %615 = extractvalue { i64, i1 } %613, 1, !nosanitize !32
  br i1 %615, label %616, label %949, !prof !33, !nosanitize !32

616:                                              ; preds = %612
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

617:                                              ; preds = %409
  %618 = load i32, ptr %414, align 8, !tbaa !41
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %772, label %620

620:                                              ; preds = %617
  %621 = icmp eq i32 %410, 0
  br i1 %621, label %622, label %663

622:                                              ; preds = %620
  %623 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %624 = load i32, ptr %623, align 4, !tbaa !19
  %625 = shl i32 %624, 1
  %626 = zext i32 %625 to i64
  %627 = tail call noalias ptr @malloc(i64 noundef %626) #16
  %628 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %627, ptr %628, align 8, !tbaa !20
  %629 = icmp eq ptr %627, null
  br i1 %629, label %630, label %631

630:                                              ; preds = %622
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %949

631:                                              ; preds = %622
  %632 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %633 = load i32, ptr %632, align 8, !tbaa !21
  %634 = icmp eq i32 %633, 0
  %635 = load i32, ptr %623, align 4, !tbaa !19
  br i1 %634, label %637, label %636

636:                                              ; preds = %631
  store i32 %635, ptr %23, align 8, !tbaa !18
  br label %667

637:                                              ; preds = %631
  %638 = zext i32 %635 to i64
  %639 = tail call noalias ptr @malloc(i64 noundef %638) #16
  %640 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %639, ptr %640, align 8, !tbaa !22
  %641 = icmp eq ptr %639, null
  br i1 %641, label %642, label %643

642:                                              ; preds = %637
  tail call void @free(ptr noundef nonnull %627) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %949

643:                                              ; preds = %637
  %644 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %645 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %644, i8 0, i64 24, i1 false)
  %646 = load i32, ptr %645, align 8, !tbaa !23
  %647 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %648 = load i32, ptr %647, align 4, !tbaa !24
  %649 = tail call i32 @deflateInit2_(ptr noundef nonnull %413, i32 noundef %646, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %648, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %654, label %651

651:                                              ; preds = %643
  %652 = load ptr, ptr %640, align 8, !tbaa !22
  tail call void @free(ptr noundef %652) #15
  %653 = load ptr, ptr %628, align 8, !tbaa !20
  tail call void @free(ptr noundef %653) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %949

654:                                              ; preds = %643
  store ptr null, ptr %413, align 8, !tbaa !25
  %655 = load i32, ptr %632, align 8, !tbaa !21
  %656 = load i32, ptr %623, align 4, !tbaa !19
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

663:                                              ; preds = %620
  %664 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %665 = load i32, ptr %664, align 8, !tbaa !21
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %703, label %667

667:                                              ; preds = %663, %654, %636
  %668 = load i32, ptr %414, align 8, !tbaa !30
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %772, label %670

670:                                              ; preds = %667
  %671 = tail call ptr @__errno_location() #17
  %672 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %673 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %674 = load ptr, ptr %413, align 8, !tbaa !25
  br label %675

675:                                              ; preds = %697, %670
  %676 = phi ptr [ %674, %670 ], [ %701, %697 ]
  store i32 0, ptr %671, align 4, !tbaa !4
  store i32 0, ptr %672, align 4, !tbaa !17
  %677 = load i32, ptr %414, align 8, !tbaa !30
  %678 = tail call i32 @llvm.umin.i32(i32 %677, i32 1073741824)
  %679 = zext nneg i32 %678 to i64
  %680 = load i32, ptr %673, align 4, !tbaa !31
  %681 = tail call i64 @write(i32 noundef %680, ptr noundef %676, i64 noundef %679) #15
  %682 = trunc i64 %681 to i32
  %683 = icmp slt i32 %682, 0
  br i1 %683, label %684, label %692

684:                                              ; preds = %675
  %685 = load i32, ptr %671, align 4, !tbaa !4
  %686 = icmp eq i32 %685, 11
  br i1 %686, label %687, label %689

687:                                              ; preds = %684
  store i32 1, ptr %672, align 4, !tbaa !17
  %688 = load i32, ptr %671, align 4, !tbaa !4
  br label %689

689:                                              ; preds = %687, %684
  %690 = phi i32 [ %685, %684 ], [ %688, %687 ]
  %691 = tail call ptr @strerror(i32 noundef %690) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %691) #15
  br label %949

692:                                              ; preds = %675
  %693 = load i32, ptr %414, align 8, !tbaa !30
  %694 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %693, i32 %682), !nosanitize !32
  %695 = extractvalue { i32, i1 } %694, 1, !nosanitize !32
  br i1 %695, label %696, label %697, !prof !33, !nosanitize !32

696:                                              ; preds = %692
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

697:                                              ; preds = %692
  %698 = extractvalue { i32, i1 } %694, 0, !nosanitize !32
  store i32 %698, ptr %414, align 8, !tbaa !30
  %699 = load ptr, ptr %413, align 8, !tbaa !25
  %700 = and i64 %681, 2147483647
  %701 = getelementptr inbounds nuw i8, ptr %699, i64 %700
  store ptr %701, ptr %413, align 8, !tbaa !25
  %702 = icmp eq i32 %698, 0
  br i1 %702, label %772, label %675, !llvm.loop !34

703:                                              ; preds = %663, %658
  %704 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %705 = load i32, ptr %704, align 8, !tbaa !36
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %712, label %707

707:                                              ; preds = %703
  %708 = load i32, ptr %414, align 8, !tbaa !30
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %772, label %710

710:                                              ; preds = %707
  %711 = tail call i32 @deflateReset(ptr noundef nonnull %413) #15
  store i32 0, ptr %704, align 8, !tbaa !36
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
  store i32 0, ptr %728, align 4, !tbaa !4
  store i32 0, ptr %716, align 4, !tbaa !17
  %732 = ptrtoint ptr %731 to i64
  %733 = ptrtoint ptr %730 to i64
  %734 = sub i64 %732, %733
  %735 = tail call i64 @llvm.smin.i64(i64 %734, i64 1073741824)
  %736 = and i64 %735, 4294967295
  %737 = load i32, ptr %717, align 4, !tbaa !31
  %738 = tail call i64 @write(i32 noundef %737, ptr noundef %730, i64 noundef %736) #15
  %739 = and i64 %738, 2147483648
  %740 = icmp eq i64 %739, 0
  br i1 %740, label %749, label %741

741:                                              ; preds = %729
  %742 = load i32, ptr %728, align 4, !tbaa !4
  %743 = icmp eq i32 %742, 11
  br i1 %743, label %744, label %746

744:                                              ; preds = %741
  store i32 1, ptr %716, align 4, !tbaa !17
  %745 = load i32, ptr %728, align 4, !tbaa !4
  br label %746

746:                                              ; preds = %744, %741
  %747 = phi i32 [ %742, %741 ], [ %745, %744 ]
  %748 = tail call ptr @strerror(i32 noundef %747) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %748) #15
  br label %949

749:                                              ; preds = %729
  %750 = load ptr, ptr %715, align 8, !tbaa !28
  %751 = and i64 %738, 2147483647
  %752 = getelementptr inbounds nuw i8, ptr %750, i64 %751
  store ptr %752, ptr %715, align 8, !tbaa !28
  %753 = load ptr, ptr %714, align 8, !tbaa !27
  %754 = icmp ugt ptr %753, %752
  br i1 %754, label %729, label %755, !llvm.loop !37

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
  %763 = tail call i32 @deflate(ptr noundef nonnull %413, i32 noundef 0) #15
  %764 = icmp eq i32 %763, -2
  br i1 %764, label %765, label %766

765:                                              ; preds = %761
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %949

766:                                              ; preds = %761
  %767 = load i32, ptr %713, align 8, !tbaa !26
  %768 = icmp ult i32 %762, %767
  br i1 %768, label %769, label %770, !prof !33, !nosanitize !32

769:                                              ; preds = %766
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

770:                                              ; preds = %766
  %771 = icmp eq i32 %762, %767
  br i1 %771, label %772, label %720, !llvm.loop !38

772:                                              ; preds = %770, %707, %697, %667, %617
  store ptr %1, ptr %413, align 8, !tbaa !42
  %773 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %774 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %775 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %776 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %777 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %778 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %779 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %780 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %781 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %782 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %783 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %784 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %785 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %786 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %787

787:                                              ; preds = %947, %772
  %788 = phi i64 [ %17, %772 ], [ %935, %947 ]
  %789 = tail call i64 @llvm.umin.i64(i64 %788, i64 4294967295)
  %790 = trunc nuw i64 %789 to i32
  store i32 %790, ptr %414, align 8, !tbaa !41
  %791 = load i32, ptr %23, align 8, !tbaa !18
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
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %923

800:                                              ; preds = %793
  %801 = load i32, ptr %773, align 8, !tbaa !21
  %802 = icmp eq i32 %801, 0
  %803 = load i32, ptr %774, align 4, !tbaa !19
  br i1 %802, label %805, label %804

804:                                              ; preds = %800
  store i32 %803, ptr %23, align 8, !tbaa !18
  br label %827

805:                                              ; preds = %800
  %806 = zext i32 %803 to i64
  %807 = tail call noalias ptr @malloc(i64 noundef %806) #16
  store ptr %807, ptr %776, align 8, !tbaa !22
  %808 = icmp eq ptr %807, null
  br i1 %808, label %809, label %810

809:                                              ; preds = %805
  tail call void @free(ptr noundef nonnull %797) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %923

810:                                              ; preds = %805
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %777, i8 0, i64 24, i1 false)
  %811 = load i32, ptr %778, align 8, !tbaa !23
  %812 = load i32, ptr %779, align 4, !tbaa !24
  %813 = tail call i32 @deflateInit2_(ptr noundef nonnull %413, i32 noundef %811, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %812, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %818, label %815

815:                                              ; preds = %810
  %816 = load ptr, ptr %776, align 8, !tbaa !22
  tail call void @free(ptr noundef %816) #15
  %817 = load ptr, ptr %775, align 8, !tbaa !20
  tail call void @free(ptr noundef %817) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %923

818:                                              ; preds = %810
  store ptr null, ptr %413, align 8, !tbaa !25
  %819 = load i32, ptr %773, align 8, !tbaa !21
  %820 = load i32, ptr %774, align 4, !tbaa !19
  store i32 %820, ptr %23, align 8, !tbaa !18
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
  %828 = load i32, ptr %414, align 8, !tbaa !30
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %923, label %830

830:                                              ; preds = %827
  %831 = tail call ptr @__errno_location() #17
  %832 = load ptr, ptr %413, align 8, !tbaa !25
  br label %833

833:                                              ; preds = %855, %830
  %834 = phi ptr [ %832, %830 ], [ %859, %855 ]
  store i32 0, ptr %831, align 4, !tbaa !4
  store i32 0, ptr %780, align 4, !tbaa !17
  %835 = load i32, ptr %414, align 8, !tbaa !30
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
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %849) #15
  br label %923

850:                                              ; preds = %833
  %851 = load i32, ptr %414, align 8, !tbaa !30
  %852 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %851, i32 %840), !nosanitize !32
  %853 = extractvalue { i32, i1 } %852, 1, !nosanitize !32
  br i1 %853, label %854, label %855, !prof !33, !nosanitize !32

854:                                              ; preds = %850
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

855:                                              ; preds = %850
  %856 = extractvalue { i32, i1 } %852, 0, !nosanitize !32
  store i32 %856, ptr %414, align 8, !tbaa !30
  %857 = load ptr, ptr %413, align 8, !tbaa !25
  %858 = and i64 %839, 2147483647
  %859 = getelementptr inbounds nuw i8, ptr %857, i64 %858
  store ptr %859, ptr %413, align 8, !tbaa !25
  %860 = icmp eq i32 %856, 0
  br i1 %860, label %923, label %833, !llvm.loop !34

861:                                              ; preds = %824, %822
  %862 = load i32, ptr %785, align 8, !tbaa !36
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %869, label %864

864:                                              ; preds = %861
  %865 = load i32, ptr %414, align 8, !tbaa !30
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %923, label %867

867:                                              ; preds = %864
  %868 = tail call i32 @deflateReset(ptr noundef nonnull %413) #15
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
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %899) #15
  br label %923

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
  %910 = load i32, ptr %23, align 8, !tbaa !18
  store i32 %910, ptr %782, align 8, !tbaa !26
  %911 = load ptr, ptr %776, align 8, !tbaa !22
  store ptr %911, ptr %783, align 8, !tbaa !27
  store ptr %911, ptr %784, align 8, !tbaa !28
  br label %912

912:                                              ; preds = %909, %906, %871
  %913 = phi i32 [ %907, %906 ], [ %910, %909 ], [ %872, %871 ]
  %914 = tail call i32 @deflate(ptr noundef nonnull %413, i32 noundef 0) #15
  %915 = icmp eq i32 %914, -2
  br i1 %915, label %916, label %917

916:                                              ; preds = %912
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %923

917:                                              ; preds = %912
  %918 = load i32, ptr %782, align 8, !tbaa !26
  %919 = icmp ult i32 %913, %918
  br i1 %919, label %920, label %921, !prof !33, !nosanitize !32

920:                                              ; preds = %917
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

921:                                              ; preds = %917
  %922 = icmp eq i32 %913, %918
  br i1 %922, label %923, label %871, !llvm.loop !38

923:                                              ; preds = %921, %916, %897, %864, %855, %847, %827, %815, %809, %799
  %924 = phi i1 [ false, %864 ], [ true, %847 ], [ false, %827 ], [ true, %809 ], [ true, %897 ], [ true, %916 ], [ false, %921 ], [ true, %799 ], [ true, %815 ], [ false, %855 ]
  %925 = load i32, ptr %414, align 8, !tbaa !41
  %926 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %790, i32 %925), !nosanitize !32
  %927 = extractvalue { i32, i1 } %926, 1, !nosanitize !32
  br i1 %927, label %928, label %929, !prof !33, !nosanitize !32

928:                                              ; preds = %923
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

929:                                              ; preds = %923
  %930 = extractvalue { i32, i1 } %926, 0, !nosanitize !32
  %931 = zext i32 %930 to i64
  %932 = load i64, ptr %786, align 8, !tbaa !39
  %933 = add nsw i64 %932, %931
  store i64 %933, ptr %786, align 8, !tbaa !39
  %934 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %788, i64 %931), !nosanitize !32
  %935 = extractvalue { i64, i1 } %934, 0, !nosanitize !32
  %936 = extractvalue { i64, i1 } %934, 1, !nosanitize !32
  br i1 %936, label %937, label %938, !prof !33, !nosanitize !32

937:                                              ; preds = %929
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

938:                                              ; preds = %929
  br i1 %924, label %939, label %947

939:                                              ; preds = %938
  %940 = load i32, ptr %780, align 4, !tbaa !17
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %949, label %942

942:                                              ; preds = %939
  %943 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %17, i64 %935), !nosanitize !32
  %944 = extractvalue { i64, i1 } %943, 0, !nosanitize !32
  %945 = extractvalue { i64, i1 } %943, 1, !nosanitize !32
  br i1 %945, label %946, label %949, !prof !33, !nosanitize !32

946:                                              ; preds = %942
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

947:                                              ; preds = %938
  %948 = icmp eq i64 %935, 0
  br i1 %948, label %949, label %787, !llvm.loop !43

949:                                              ; preds = %947, %942, %939, %765, %746, %689, %651, %642, %630, %612, %609, %473, %398, %223, %204, %147, %109, %100, %88, %56, %47, %35, %20
  %950 = phi i64 [ 0, %651 ], [ 0, %20 ], [ %17, %947 ], [ 0, %939 ], [ 0, %609 ], [ 0, %47 ], [ %17, %473 ], [ 0, %35 ], [ 0, %56 ], [ 0, %88 ], [ 0, %109 ], [ 0, %147 ], [ 0, %100 ], [ 0, %204 ], [ 0, %223 ], [ %614, %612 ], [ 0, %689 ], [ 0, %642 ], [ 0, %746 ], [ 0, %765 ], [ 0, %630 ], [ %944, %942 ], [ 0, %398 ]
  %951 = icmp ne i64 %17, 0
  %952 = icmp eq i64 %950, 0
  %953 = select i1 %951, i1 %952, i1 false
  %954 = trunc i64 %950 to i32
  %955 = select i1 %953, i32 -1, i32 %954
  br label %956

956:                                              ; preds = %949, %19, %12, %4, %2
  %957 = phi i32 [ %955, %949 ], [ -1, %2 ], [ -1, %19 ], [ -1, %12 ], [ -1, %4 ]
  ret i32 %957
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gzvprintf(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %655, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %655

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %655, label %18

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
  br label %655

65:                                               ; preds = %56, %52, %35, %18
  %66 = phi i32 [ %54, %56 ], [ %54, %52 ], [ %34, %35 ], [ %20, %18 ]
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %68 = load i64, ptr %67, align 8, !tbaa !29
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %405, label %70

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
  br label %403

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
  br label %403

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
  br label %403

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
  br label %403

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
  br label %403

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
  br label %403

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

242:                                              ; preds = %401, %226
  %243 = phi i64 [ %241, %226 ], [ %400, %401 ]
  %244 = phi i1 [ false, %226 ], [ true, %401 ]
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

393:                                              ; preds = %388
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

394:                                              ; preds = %388
  %395 = extractvalue { i32, i1 } %391, 0, !nosanitize !32
  %396 = zext i32 %395 to i64
  %397 = load i64, ptr %240, align 8, !tbaa !39
  %398 = add nsw i64 %397, %396
  store i64 %398, ptr %240, align 8, !tbaa !39
  %399 = load i64, ptr %67, align 8, !tbaa !29
  %400 = sub nsw i64 %399, %396
  store i64 %400, ptr %67, align 8, !tbaa !29
  br i1 %389, label %403, label %401

401:                                              ; preds = %394
  %402 = icmp eq i64 %399, %396
  br i1 %402, label %405, label %242, !llvm.loop !40

403:                                              ; preds = %394, %219, %200, %143, %105, %96, %84
  %404 = load i32, ptr %11, align 8, !tbaa !16
  br label %655

405:                                              ; preds = %401, %65
  %406 = load ptr, ptr %6, align 8, !tbaa !25
  %407 = icmp eq ptr %406, null
  br i1 %407, label %583, label %408

408:                                              ; preds = %405
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %410 = load i32, ptr %409, align 8, !tbaa !30
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds nuw i8, ptr %406, i64 %411
  %413 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %414 = load ptr, ptr %413, align 8, !tbaa !20
  %415 = load i32, ptr %19, align 8, !tbaa !18
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds nuw i8, ptr %414, i64 %416
  %418 = icmp ugt ptr %412, %417
  br i1 %418, label %419, label %583

419:                                              ; preds = %408
  %420 = icmp eq i32 %415, 0
  br i1 %420, label %421, label %461

421:                                              ; preds = %419
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %423 = load i32, ptr %422, align 4, !tbaa !19
  %424 = shl i32 %423, 1
  %425 = zext i32 %424 to i64
  %426 = tail call noalias ptr @malloc(i64 noundef %425) #16
  store ptr %426, ptr %413, align 8, !tbaa !20
  %427 = icmp eq ptr %426, null
  br i1 %427, label %428, label %429

428:                                              ; preds = %421
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %570

429:                                              ; preds = %421
  %430 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %431 = load i32, ptr %430, align 8, !tbaa !21
  %432 = icmp eq i32 %431, 0
  %433 = load i32, ptr %422, align 4, !tbaa !19
  br i1 %432, label %435, label %434

434:                                              ; preds = %429
  store i32 %433, ptr %19, align 8, !tbaa !18
  br label %465

435:                                              ; preds = %429
  %436 = zext i32 %433 to i64
  %437 = tail call noalias ptr @malloc(i64 noundef %436) #16
  %438 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %437, ptr %438, align 8, !tbaa !22
  %439 = icmp eq ptr %437, null
  br i1 %439, label %440, label %441

440:                                              ; preds = %435
  tail call void @free(ptr noundef nonnull %426) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %570

441:                                              ; preds = %435
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %442, i8 0, i64 24, i1 false)
  %444 = load i32, ptr %443, align 8, !tbaa !23
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %446 = load i32, ptr %445, align 4, !tbaa !24
  %447 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %444, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %446, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %452, label %449

449:                                              ; preds = %441
  %450 = load ptr, ptr %438, align 8, !tbaa !22
  tail call void @free(ptr noundef %450) #15
  %451 = load ptr, ptr %413, align 8, !tbaa !20
  tail call void @free(ptr noundef %451) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %570

452:                                              ; preds = %441
  store ptr null, ptr %6, align 8, !tbaa !25
  %453 = load i32, ptr %430, align 8, !tbaa !21
  %454 = load i32, ptr %422, align 4, !tbaa !19
  store i32 %454, ptr %19, align 8, !tbaa !18
  %455 = icmp eq i32 %453, 0
  br i1 %455, label %456, label %465

456:                                              ; preds = %452
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %454, ptr %457, align 8, !tbaa !26
  %458 = load ptr, ptr %438, align 8, !tbaa !22
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %458, ptr %459, align 8, !tbaa !27
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %458, ptr %460, align 8, !tbaa !28
  br label %501

461:                                              ; preds = %419
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %463 = load i32, ptr %462, align 8, !tbaa !21
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %501, label %465

465:                                              ; preds = %461, %452, %434
  %466 = phi ptr [ %406, %461 ], [ null, %452 ], [ %406, %434 ]
  %467 = load i32, ptr %409, align 8, !tbaa !30
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %573, label %469

469:                                              ; preds = %465
  %470 = tail call ptr @__errno_location() #17
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %473

473:                                              ; preds = %495, %469
  %474 = phi ptr [ %466, %469 ], [ %499, %495 ]
  store i32 0, ptr %470, align 4, !tbaa !4
  store i32 0, ptr %471, align 4, !tbaa !17
  %475 = load i32, ptr %409, align 8, !tbaa !30
  %476 = tail call i32 @llvm.umin.i32(i32 %475, i32 1073741824)
  %477 = zext nneg i32 %476 to i64
  %478 = load i32, ptr %472, align 4, !tbaa !31
  %479 = tail call i64 @write(i32 noundef %478, ptr noundef %474, i64 noundef %477) #15
  %480 = trunc i64 %479 to i32
  %481 = icmp slt i32 %480, 0
  br i1 %481, label %482, label %490

482:                                              ; preds = %473
  %483 = load i32, ptr %470, align 4, !tbaa !4
  %484 = icmp eq i32 %483, 11
  br i1 %484, label %485, label %487

485:                                              ; preds = %482
  store i32 1, ptr %471, align 4, !tbaa !17
  %486 = load i32, ptr %470, align 4, !tbaa !4
  br label %487

487:                                              ; preds = %485, %482
  %488 = phi i32 [ %483, %482 ], [ %486, %485 ]
  %489 = tail call ptr @strerror(i32 noundef %488) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %489) #15
  br label %570

490:                                              ; preds = %473
  %491 = load i32, ptr %409, align 8, !tbaa !30
  %492 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %491, i32 %480), !nosanitize !32
  %493 = extractvalue { i32, i1 } %492, 1, !nosanitize !32
  br i1 %493, label %494, label %495, !prof !33, !nosanitize !32

494:                                              ; preds = %490
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

495:                                              ; preds = %490
  %496 = extractvalue { i32, i1 } %492, 0, !nosanitize !32
  store i32 %496, ptr %409, align 8, !tbaa !30
  %497 = load ptr, ptr %6, align 8, !tbaa !25
  %498 = and i64 %479, 2147483647
  %499 = getelementptr inbounds nuw i8, ptr %497, i64 %498
  store ptr %499, ptr %6, align 8, !tbaa !25
  %500 = icmp eq i32 %496, 0
  br i1 %500, label %570, label %473, !llvm.loop !34

501:                                              ; preds = %461, %456
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %503 = load i32, ptr %502, align 8, !tbaa !36
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %510, label %505

505:                                              ; preds = %501
  %506 = load i32, ptr %409, align 8, !tbaa !30
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %573, label %508

508:                                              ; preds = %505
  %509 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %502, align 8, !tbaa !36
  br label %510

510:                                              ; preds = %508, %501
  %511 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %512 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %513 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %514 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %515 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %516 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %517 = load i32, ptr %511, align 8, !tbaa !26
  br label %518

518:                                              ; preds = %568, %510
  %519 = phi i32 [ %517, %510 ], [ %565, %568 ]
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %559

521:                                              ; preds = %518
  %522 = load ptr, ptr %512, align 8, !tbaa !27
  %523 = load ptr, ptr %513, align 8, !tbaa !28
  %524 = icmp ugt ptr %522, %523
  br i1 %524, label %525, label %556

525:                                              ; preds = %521
  %526 = tail call ptr @__errno_location() #17
  br label %527

527:                                              ; preds = %547, %525
  %528 = phi ptr [ %523, %525 ], [ %550, %547 ]
  %529 = phi ptr [ %522, %525 ], [ %551, %547 ]
  store i32 0, ptr %526, align 4, !tbaa !4
  store i32 0, ptr %514, align 4, !tbaa !17
  %530 = ptrtoint ptr %529 to i64
  %531 = ptrtoint ptr %528 to i64
  %532 = sub i64 %530, %531
  %533 = tail call i64 @llvm.smin.i64(i64 %532, i64 1073741824)
  %534 = and i64 %533, 4294967295
  %535 = load i32, ptr %515, align 4, !tbaa !31
  %536 = tail call i64 @write(i32 noundef %535, ptr noundef %528, i64 noundef %534) #15
  %537 = and i64 %536, 2147483648
  %538 = icmp eq i64 %537, 0
  br i1 %538, label %547, label %539

539:                                              ; preds = %527
  %540 = load i32, ptr %526, align 4, !tbaa !4
  %541 = icmp eq i32 %540, 11
  br i1 %541, label %542, label %544

542:                                              ; preds = %539
  store i32 1, ptr %514, align 4, !tbaa !17
  %543 = load i32, ptr %526, align 4, !tbaa !4
  br label %544

544:                                              ; preds = %542, %539
  %545 = phi i32 [ %540, %539 ], [ %543, %542 ]
  %546 = tail call ptr @strerror(i32 noundef %545) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %546) #15
  br label %570

547:                                              ; preds = %527
  %548 = load ptr, ptr %513, align 8, !tbaa !28
  %549 = and i64 %536, 2147483647
  %550 = getelementptr inbounds nuw i8, ptr %548, i64 %549
  store ptr %550, ptr %513, align 8, !tbaa !28
  %551 = load ptr, ptr %512, align 8, !tbaa !27
  %552 = icmp ugt ptr %551, %550
  br i1 %552, label %527, label %553, !llvm.loop !37

553:                                              ; preds = %547
  %554 = load i32, ptr %511, align 8, !tbaa !26
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %559

556:                                              ; preds = %553, %521
  %557 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %557, ptr %511, align 8, !tbaa !26
  %558 = load ptr, ptr %516, align 8, !tbaa !22
  store ptr %558, ptr %512, align 8, !tbaa !27
  store ptr %558, ptr %513, align 8, !tbaa !28
  br label %559

559:                                              ; preds = %556, %553, %518
  %560 = phi i32 [ %554, %553 ], [ %557, %556 ], [ %519, %518 ]
  %561 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %562 = icmp eq i32 %561, -2
  br i1 %562, label %563, label %564

563:                                              ; preds = %559
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %570

564:                                              ; preds = %559
  %565 = load i32, ptr %511, align 8, !tbaa !26
  %566 = icmp ult i32 %560, %565
  br i1 %566, label %567, label %568, !prof !33, !nosanitize !32

567:                                              ; preds = %564
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

568:                                              ; preds = %564
  %569 = icmp eq i32 %560, %565
  br i1 %569, label %570, label %518, !llvm.loop !38

570:                                              ; preds = %568, %563, %544, %495, %487, %449, %440, %428
  %571 = load i32, ptr %409, align 8, !tbaa !30
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %575

573:                                              ; preds = %570, %505, %465
  %574 = load ptr, ptr %413, align 8, !tbaa !20
  store ptr %574, ptr %6, align 8, !tbaa !25
  br label %583

575:                                              ; preds = %570
  %576 = load ptr, ptr %413, align 8, !tbaa !20
  %577 = load ptr, ptr %6, align 8, !tbaa !25
  %578 = zext i32 %571 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %576, ptr align 1 %577, i64 %578, i1 false)
  %579 = load ptr, ptr %413, align 8, !tbaa !20
  store ptr %579, ptr %6, align 8, !tbaa !25
  %580 = load i32, ptr %409, align 8, !tbaa !30
  %581 = load i32, ptr %19, align 8, !tbaa !18
  %582 = icmp ule i32 %580, %581
  br label %583

583:                                              ; preds = %575, %573, %408, %405
  %584 = phi i1 [ %582, %575 ], [ true, %573 ], [ true, %408 ], [ true, %405 ]
  %585 = load i32, ptr %11, align 8, !tbaa !16
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %599, label %587

587:                                              ; preds = %583
  br i1 %584, label %593, label %588

588:                                              ; preds = %587
  %589 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %590 = load i32, ptr %589, align 4, !tbaa !17
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %593, label %592

592:                                              ; preds = %588
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #15
  br label %593

593:                                              ; preds = %592, %588, %587
  %594 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %595 = load i32, ptr %594, align 4, !tbaa !17
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %597, label %599

597:                                              ; preds = %593
  %598 = load i32, ptr %11, align 8, !tbaa !16
  br label %655

599:                                              ; preds = %593, %583
  %600 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %601 = load i32, ptr %600, align 8, !tbaa !30
  %602 = icmp eq i32 %601, 0
  %603 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %604 = load ptr, ptr %603, align 8, !tbaa !20
  br i1 %602, label %607, label %605

605:                                              ; preds = %599
  %606 = load ptr, ptr %6, align 8, !tbaa !25
  br label %608

607:                                              ; preds = %599
  store ptr %604, ptr %6, align 8, !tbaa !25
  br label %608

608:                                              ; preds = %607, %605
  %609 = phi ptr [ %606, %605 ], [ %604, %607 ]
  %610 = ptrtoint ptr %609 to i64
  %611 = ptrtoint ptr %604 to i64
  %612 = sub i64 %610, %611
  %613 = getelementptr inbounds i8, ptr %604, i64 %612
  %614 = zext i32 %601 to i64
  %615 = getelementptr inbounds nuw i8, ptr %613, i64 %614
  %616 = load i32, ptr %19, align 8, !tbaa !18
  %617 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %616, i32 1), !nosanitize !32
  %618 = extractvalue { i32, i1 } %617, 1, !nosanitize !32
  br i1 %618, label %619, label %620, !prof !33, !nosanitize !32

619:                                              ; preds = %608
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

620:                                              ; preds = %608
  %621 = extractvalue { i32, i1 } %617, 0, !nosanitize !32
  %622 = zext i32 %621 to i64
  %623 = getelementptr inbounds nuw i8, ptr %615, i64 %622
  store i8 0, ptr %623, align 1, !tbaa !44
  %624 = load i32, ptr %19, align 8, !tbaa !18
  %625 = zext i32 %624 to i64
  %626 = tail call i32 @vsnprintf(ptr noundef %615, i64 noundef %625, ptr noundef %1, ptr noundef %2) #15
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %655, label %628

628:                                              ; preds = %620
  %629 = load i32, ptr %19, align 8, !tbaa !18
  %630 = icmp ult i32 %626, %629
  br i1 %630, label %631, label %655

631:                                              ; preds = %628
  %632 = add i32 %629, -1
  %633 = zext i32 %632 to i64
  %634 = getelementptr inbounds nuw i8, ptr %615, i64 %633
  %635 = load i8, ptr %634, align 1, !tbaa !44
  %636 = icmp eq i8 %635, 0
  br i1 %636, label %637, label %655

637:                                              ; preds = %631
  %638 = load i32, ptr %600, align 8, !tbaa !30
  %639 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %638, i32 %626), !nosanitize !32
  %640 = extractvalue { i32, i1 } %639, 1, !nosanitize !32
  br i1 %640, label %641, label %642, !prof !33, !nosanitize !32

641:                                              ; preds = %637
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

642:                                              ; preds = %637
  %643 = extractvalue { i32, i1 } %639, 0, !nosanitize !32
  store i32 %643, ptr %600, align 8, !tbaa !30
  %644 = sext i32 %626 to i64
  %645 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %646 = load i64, ptr %645, align 8, !tbaa !39
  %647 = add nsw i64 %646, %644
  store i64 %647, ptr %645, align 8, !tbaa !39
  tail call fastcc void @gz_vacate(ptr noundef %0)
  %648 = load i32, ptr %11, align 8, !tbaa !16
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %654, label %650

650:                                              ; preds = %642
  %651 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %652 = load i32, ptr %651, align 4, !tbaa !17
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %655, label %654

654:                                              ; preds = %650, %642
  br label %655

655:                                              ; preds = %654, %650, %631, %628, %620, %597, %403, %63, %14, %5, %3
  %656 = phi i32 [ %598, %597 ], [ -2, %3 ], [ %64, %63 ], [ %404, %403 ], [ -2, %5 ], [ %626, %654 ], [ 0, %620 ], [ -2, %14 ], [ 0, %631 ], [ 0, %628 ], [ %648, %650 ]
  ret i32 %656
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
  br i1 %4, label %655, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %655

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %655, label %18

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
  br label %655

65:                                               ; preds = %56, %52, %35, %18
  %66 = phi i32 [ %54, %56 ], [ %54, %52 ], [ %34, %35 ], [ %20, %18 ]
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %68 = load i64, ptr %67, align 8, !tbaa !29
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %405, label %70

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
  br label %403

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
  br label %403

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
  br label %403

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
  br label %403

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
  br label %403

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
  br label %403

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

242:                                              ; preds = %401, %226
  %243 = phi i64 [ %241, %226 ], [ %400, %401 ]
  %244 = phi i1 [ false, %226 ], [ true, %401 ]
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

393:                                              ; preds = %388
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

394:                                              ; preds = %388
  %395 = extractvalue { i32, i1 } %391, 0, !nosanitize !32
  %396 = zext i32 %395 to i64
  %397 = load i64, ptr %240, align 8, !tbaa !39
  %398 = add nsw i64 %397, %396
  store i64 %398, ptr %240, align 8, !tbaa !39
  %399 = load i64, ptr %67, align 8, !tbaa !29
  %400 = sub nsw i64 %399, %396
  store i64 %400, ptr %67, align 8, !tbaa !29
  br i1 %389, label %403, label %401

401:                                              ; preds = %394
  %402 = icmp eq i64 %399, %396
  br i1 %402, label %405, label %242, !llvm.loop !40

403:                                              ; preds = %394, %219, %200, %143, %105, %96, %84
  %404 = load i32, ptr %11, align 8, !tbaa !16
  br label %655

405:                                              ; preds = %401, %65
  %406 = load ptr, ptr %6, align 8, !tbaa !25
  %407 = icmp eq ptr %406, null
  br i1 %407, label %583, label %408

408:                                              ; preds = %405
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %410 = load i32, ptr %409, align 8, !tbaa !30
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds nuw i8, ptr %406, i64 %411
  %413 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %414 = load ptr, ptr %413, align 8, !tbaa !20
  %415 = load i32, ptr %19, align 8, !tbaa !18
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds nuw i8, ptr %414, i64 %416
  %418 = icmp ugt ptr %412, %417
  br i1 %418, label %419, label %583

419:                                              ; preds = %408
  %420 = icmp eq i32 %415, 0
  br i1 %420, label %421, label %461

421:                                              ; preds = %419
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %423 = load i32, ptr %422, align 4, !tbaa !19
  %424 = shl i32 %423, 1
  %425 = zext i32 %424 to i64
  %426 = call noalias ptr @malloc(i64 noundef %425) #16
  store ptr %426, ptr %413, align 8, !tbaa !20
  %427 = icmp eq ptr %426, null
  br i1 %427, label %428, label %429

428:                                              ; preds = %421
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %570

429:                                              ; preds = %421
  %430 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %431 = load i32, ptr %430, align 8, !tbaa !21
  %432 = icmp eq i32 %431, 0
  %433 = load i32, ptr %422, align 4, !tbaa !19
  br i1 %432, label %435, label %434

434:                                              ; preds = %429
  store i32 %433, ptr %19, align 8, !tbaa !18
  br label %465

435:                                              ; preds = %429
  %436 = zext i32 %433 to i64
  %437 = call noalias ptr @malloc(i64 noundef %436) #16
  %438 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %437, ptr %438, align 8, !tbaa !22
  %439 = icmp eq ptr %437, null
  br i1 %439, label %440, label %441

440:                                              ; preds = %435
  call void @free(ptr noundef nonnull %426) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %570

441:                                              ; preds = %435
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %442, i8 0, i64 24, i1 false)
  %444 = load i32, ptr %443, align 8, !tbaa !23
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %446 = load i32, ptr %445, align 4, !tbaa !24
  %447 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %444, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %446, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %452, label %449

449:                                              ; preds = %441
  %450 = load ptr, ptr %438, align 8, !tbaa !22
  call void @free(ptr noundef %450) #15
  %451 = load ptr, ptr %413, align 8, !tbaa !20
  call void @free(ptr noundef %451) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %570

452:                                              ; preds = %441
  store ptr null, ptr %6, align 8, !tbaa !25
  %453 = load i32, ptr %430, align 8, !tbaa !21
  %454 = load i32, ptr %422, align 4, !tbaa !19
  store i32 %454, ptr %19, align 8, !tbaa !18
  %455 = icmp eq i32 %453, 0
  br i1 %455, label %456, label %465

456:                                              ; preds = %452
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %454, ptr %457, align 8, !tbaa !26
  %458 = load ptr, ptr %438, align 8, !tbaa !22
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %458, ptr %459, align 8, !tbaa !27
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %458, ptr %460, align 8, !tbaa !28
  br label %501

461:                                              ; preds = %419
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %463 = load i32, ptr %462, align 8, !tbaa !21
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %501, label %465

465:                                              ; preds = %461, %452, %434
  %466 = phi ptr [ %406, %461 ], [ null, %452 ], [ %406, %434 ]
  %467 = load i32, ptr %409, align 8, !tbaa !30
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %573, label %469

469:                                              ; preds = %465
  %470 = tail call ptr @__errno_location() #17
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %473

473:                                              ; preds = %495, %469
  %474 = phi ptr [ %466, %469 ], [ %499, %495 ]
  store i32 0, ptr %470, align 4, !tbaa !4
  store i32 0, ptr %471, align 4, !tbaa !17
  %475 = load i32, ptr %409, align 8, !tbaa !30
  %476 = call i32 @llvm.umin.i32(i32 %475, i32 1073741824)
  %477 = zext nneg i32 %476 to i64
  %478 = load i32, ptr %472, align 4, !tbaa !31
  %479 = call i64 @write(i32 noundef %478, ptr noundef %474, i64 noundef %477) #15
  %480 = trunc i64 %479 to i32
  %481 = icmp slt i32 %480, 0
  br i1 %481, label %482, label %490

482:                                              ; preds = %473
  %483 = load i32, ptr %470, align 4, !tbaa !4
  %484 = icmp eq i32 %483, 11
  br i1 %484, label %485, label %487

485:                                              ; preds = %482
  store i32 1, ptr %471, align 4, !tbaa !17
  %486 = load i32, ptr %470, align 4, !tbaa !4
  br label %487

487:                                              ; preds = %485, %482
  %488 = phi i32 [ %483, %482 ], [ %486, %485 ]
  %489 = call ptr @strerror(i32 noundef %488) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %489) #15
  br label %570

490:                                              ; preds = %473
  %491 = load i32, ptr %409, align 8, !tbaa !30
  %492 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %491, i32 %480), !nosanitize !32
  %493 = extractvalue { i32, i1 } %492, 1, !nosanitize !32
  br i1 %493, label %494, label %495, !prof !33, !nosanitize !32

494:                                              ; preds = %490
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

495:                                              ; preds = %490
  %496 = extractvalue { i32, i1 } %492, 0, !nosanitize !32
  store i32 %496, ptr %409, align 8, !tbaa !30
  %497 = load ptr, ptr %6, align 8, !tbaa !25
  %498 = and i64 %479, 2147483647
  %499 = getelementptr inbounds nuw i8, ptr %497, i64 %498
  store ptr %499, ptr %6, align 8, !tbaa !25
  %500 = icmp eq i32 %496, 0
  br i1 %500, label %570, label %473, !llvm.loop !34

501:                                              ; preds = %461, %456
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %503 = load i32, ptr %502, align 8, !tbaa !36
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %510, label %505

505:                                              ; preds = %501
  %506 = load i32, ptr %409, align 8, !tbaa !30
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %573, label %508

508:                                              ; preds = %505
  %509 = call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %502, align 8, !tbaa !36
  br label %510

510:                                              ; preds = %508, %501
  %511 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %512 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %513 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %514 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %515 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %516 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %517 = load i32, ptr %511, align 8, !tbaa !26
  br label %518

518:                                              ; preds = %568, %510
  %519 = phi i32 [ %517, %510 ], [ %565, %568 ]
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %559

521:                                              ; preds = %518
  %522 = load ptr, ptr %512, align 8, !tbaa !27
  %523 = load ptr, ptr %513, align 8, !tbaa !28
  %524 = icmp ugt ptr %522, %523
  br i1 %524, label %525, label %556

525:                                              ; preds = %521
  %526 = tail call ptr @__errno_location() #17
  br label %527

527:                                              ; preds = %547, %525
  %528 = phi ptr [ %523, %525 ], [ %550, %547 ]
  %529 = phi ptr [ %522, %525 ], [ %551, %547 ]
  store i32 0, ptr %526, align 4, !tbaa !4
  store i32 0, ptr %514, align 4, !tbaa !17
  %530 = ptrtoint ptr %529 to i64
  %531 = ptrtoint ptr %528 to i64
  %532 = sub i64 %530, %531
  %533 = call i64 @llvm.smin.i64(i64 %532, i64 1073741824)
  %534 = and i64 %533, 4294967295
  %535 = load i32, ptr %515, align 4, !tbaa !31
  %536 = call i64 @write(i32 noundef %535, ptr noundef %528, i64 noundef %534) #15
  %537 = and i64 %536, 2147483648
  %538 = icmp eq i64 %537, 0
  br i1 %538, label %547, label %539

539:                                              ; preds = %527
  %540 = load i32, ptr %526, align 4, !tbaa !4
  %541 = icmp eq i32 %540, 11
  br i1 %541, label %542, label %544

542:                                              ; preds = %539
  store i32 1, ptr %514, align 4, !tbaa !17
  %543 = load i32, ptr %526, align 4, !tbaa !4
  br label %544

544:                                              ; preds = %542, %539
  %545 = phi i32 [ %540, %539 ], [ %543, %542 ]
  %546 = call ptr @strerror(i32 noundef %545) #15
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %546) #15
  br label %570

547:                                              ; preds = %527
  %548 = load ptr, ptr %513, align 8, !tbaa !28
  %549 = and i64 %536, 2147483647
  %550 = getelementptr inbounds nuw i8, ptr %548, i64 %549
  store ptr %550, ptr %513, align 8, !tbaa !28
  %551 = load ptr, ptr %512, align 8, !tbaa !27
  %552 = icmp ugt ptr %551, %550
  br i1 %552, label %527, label %553, !llvm.loop !37

553:                                              ; preds = %547
  %554 = load i32, ptr %511, align 8, !tbaa !26
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %559

556:                                              ; preds = %553, %521
  %557 = load i32, ptr %19, align 8, !tbaa !18
  store i32 %557, ptr %511, align 8, !tbaa !26
  %558 = load ptr, ptr %516, align 8, !tbaa !22
  store ptr %558, ptr %512, align 8, !tbaa !27
  store ptr %558, ptr %513, align 8, !tbaa !28
  br label %559

559:                                              ; preds = %556, %553, %518
  %560 = phi i32 [ %554, %553 ], [ %557, %556 ], [ %519, %518 ]
  %561 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #15
  %562 = icmp eq i32 %561, -2
  br i1 %562, label %563, label %564

563:                                              ; preds = %559
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %570

564:                                              ; preds = %559
  %565 = load i32, ptr %511, align 8, !tbaa !26
  %566 = icmp ult i32 %560, %565
  br i1 %566, label %567, label %568, !prof !33, !nosanitize !32

567:                                              ; preds = %564
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

568:                                              ; preds = %564
  %569 = icmp eq i32 %560, %565
  br i1 %569, label %570, label %518, !llvm.loop !38

570:                                              ; preds = %568, %563, %544, %495, %487, %449, %440, %428
  %571 = load i32, ptr %409, align 8, !tbaa !30
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %575

573:                                              ; preds = %570, %505, %465
  %574 = load ptr, ptr %413, align 8, !tbaa !20
  store ptr %574, ptr %6, align 8, !tbaa !25
  br label %583

575:                                              ; preds = %570
  %576 = load ptr, ptr %413, align 8, !tbaa !20
  %577 = load ptr, ptr %6, align 8, !tbaa !25
  %578 = zext i32 %571 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %576, ptr align 1 %577, i64 %578, i1 false)
  %579 = load ptr, ptr %413, align 8, !tbaa !20
  store ptr %579, ptr %6, align 8, !tbaa !25
  %580 = load i32, ptr %409, align 8, !tbaa !30
  %581 = load i32, ptr %19, align 8, !tbaa !18
  %582 = icmp ule i32 %580, %581
  br label %583

583:                                              ; preds = %575, %573, %408, %405
  %584 = phi i1 [ %582, %575 ], [ true, %573 ], [ true, %408 ], [ true, %405 ]
  %585 = load i32, ptr %11, align 8, !tbaa !16
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %599, label %587

587:                                              ; preds = %583
  br i1 %584, label %593, label %588

588:                                              ; preds = %587
  %589 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %590 = load i32, ptr %589, align 4, !tbaa !17
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %593, label %592

592:                                              ; preds = %588
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #15
  br label %593

593:                                              ; preds = %592, %588, %587
  %594 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %595 = load i32, ptr %594, align 4, !tbaa !17
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %597, label %599

597:                                              ; preds = %593
  %598 = load i32, ptr %11, align 8, !tbaa !16
  br label %655

599:                                              ; preds = %593, %583
  %600 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %601 = load i32, ptr %600, align 8, !tbaa !30
  %602 = icmp eq i32 %601, 0
  %603 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %604 = load ptr, ptr %603, align 8, !tbaa !20
  br i1 %602, label %607, label %605

605:                                              ; preds = %599
  %606 = load ptr, ptr %6, align 8, !tbaa !25
  br label %608

607:                                              ; preds = %599
  store ptr %604, ptr %6, align 8, !tbaa !25
  br label %608

608:                                              ; preds = %607, %605
  %609 = phi ptr [ %606, %605 ], [ %604, %607 ]
  %610 = ptrtoint ptr %609 to i64
  %611 = ptrtoint ptr %604 to i64
  %612 = sub i64 %610, %611
  %613 = getelementptr inbounds i8, ptr %604, i64 %612
  %614 = zext i32 %601 to i64
  %615 = getelementptr inbounds nuw i8, ptr %613, i64 %614
  %616 = load i32, ptr %19, align 8, !tbaa !18
  %617 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %616, i32 1), !nosanitize !32
  %618 = extractvalue { i32, i1 } %617, 1, !nosanitize !32
  br i1 %618, label %619, label %620, !prof !33, !nosanitize !32

619:                                              ; preds = %608
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

620:                                              ; preds = %608
  %621 = extractvalue { i32, i1 } %617, 0, !nosanitize !32
  %622 = zext i32 %621 to i64
  %623 = getelementptr inbounds nuw i8, ptr %615, i64 %622
  store i8 0, ptr %623, align 1, !tbaa !44
  %624 = load i32, ptr %19, align 8, !tbaa !18
  %625 = zext i32 %624 to i64
  %626 = call i32 @vsnprintf(ptr noundef %615, i64 noundef %625, ptr noundef readonly %1, ptr noundef nonnull %3) #15
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %655, label %628

628:                                              ; preds = %620
  %629 = load i32, ptr %19, align 8, !tbaa !18
  %630 = icmp ult i32 %626, %629
  br i1 %630, label %631, label %655

631:                                              ; preds = %628
  %632 = add i32 %629, -1
  %633 = zext i32 %632 to i64
  %634 = getelementptr inbounds nuw i8, ptr %615, i64 %633
  %635 = load i8, ptr %634, align 1, !tbaa !44
  %636 = icmp eq i8 %635, 0
  br i1 %636, label %637, label %655

637:                                              ; preds = %631
  %638 = load i32, ptr %600, align 8, !tbaa !30
  %639 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %638, i32 %626), !nosanitize !32
  %640 = extractvalue { i32, i1 } %639, 1, !nosanitize !32
  br i1 %640, label %641, label %642, !prof !33, !nosanitize !32

641:                                              ; preds = %637
  call void @llvm.ubsantrap(i8 0) #18, !nosanitize !32
  unreachable, !nosanitize !32

642:                                              ; preds = %637
  %643 = extractvalue { i32, i1 } %639, 0, !nosanitize !32
  store i32 %643, ptr %600, align 8, !tbaa !30
  %644 = sext i32 %626 to i64
  %645 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %646 = load i64, ptr %645, align 8, !tbaa !39
  %647 = add nsw i64 %646, %644
  store i64 %647, ptr %645, align 8, !tbaa !39
  call fastcc void @gz_vacate(ptr noundef %0)
  %648 = load i32, ptr %11, align 8, !tbaa !16
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %654, label %650

650:                                              ; preds = %642
  %651 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %652 = load i32, ptr %651, align 4, !tbaa !17
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %655, label %654

654:                                              ; preds = %650, %642
  br label %655

655:                                              ; preds = %654, %650, %631, %628, %620, %597, %403, %63, %14, %5, %2
  %656 = phi i32 [ %598, %597 ], [ -2, %2 ], [ %64, %63 ], [ %404, %403 ], [ -2, %5 ], [ %626, %654 ], [ 0, %620 ], [ -2, %14 ], [ 0, %631 ], [ 0, %628 ], [ %648, %650 ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %656
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nounwind uwtable
define dso_local i32 @gzflush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %531, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %531

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %531, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %17 = icmp ugt i32 %1, 4
  br i1 %17, label %531, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %359, label %22

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
  br label %529

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
  br label %529

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
  br label %529

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
  br label %529

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
  br label %529

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
  br label %529

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

198:                                              ; preds = %357, %181
  %199 = phi i64 [ %197, %181 ], [ %356, %357 ]
  %200 = phi i1 [ false, %181 ], [ true, %357 ]
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

349:                                              ; preds = %344
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

350:                                              ; preds = %344
  %351 = extractvalue { i32, i1 } %347, 0, !nosanitize !32
  %352 = zext i32 %351 to i64
  %353 = load i64, ptr %196, align 8, !tbaa !39
  %354 = add nsw i64 %353, %352
  store i64 %354, ptr %196, align 8, !tbaa !39
  %355 = load i64, ptr %19, align 8, !tbaa !29
  %356 = sub nsw i64 %355, %352
  store i64 %356, ptr %19, align 8, !tbaa !29
  br i1 %345, label %529, label %357

357:                                              ; preds = %350
  %358 = icmp eq i64 %355, %352
  br i1 %358, label %359, label %198, !llvm.loop !40

359:                                              ; preds = %357, %18
  %360 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %362 = load i32, ptr %361, align 8, !tbaa !18
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %405

364:                                              ; preds = %359
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
  br label %529

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
  br label %529

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
  br label %529

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

405:                                              ; preds = %359
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %407 = load i32, ptr %406, align 8, !tbaa !21
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %446, label %409

409:                                              ; preds = %405, %396, %378
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %411 = load i32, ptr %410, align 8, !tbaa !30
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %529, label %413

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
  br label %529

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
  br i1 %445, label %529, label %418, !llvm.loop !34

446:                                              ; preds = %405, %400
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %448 = load i32, ptr %447, align 8, !tbaa !36
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %457, label %450

450:                                              ; preds = %446
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %452 = load i32, ptr %451, align 8, !tbaa !30
  %453 = or i32 %452, %1
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %529, label %455

455:                                              ; preds = %450
  %456 = tail call i32 @deflateReset(ptr noundef nonnull %360) #15
  store i32 0, ptr %447, align 8, !tbaa !36
  br label %457

457:                                              ; preds = %455, %446
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %459 = icmp ne i32 %1, 0
  %460 = icmp ne i32 %1, 4
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %466 = load i32, ptr %458, align 8, !tbaa !26
  br label %467

467:                                              ; preds = %524, %457
  %468 = phi i32 [ %466, %457 ], [ %521, %524 ]
  %469 = phi i32 [ 0, %457 ], [ %517, %524 ]
  %470 = icmp eq i32 %468, 0
  br i1 %470, label %475, label %471

471:                                              ; preds = %467
  %472 = icmp eq i32 %469, 1
  %473 = or i1 %460, %472
  %474 = and i1 %459, %473
  br i1 %474, label %475, label %515

475:                                              ; preds = %471, %467
  %476 = load ptr, ptr %461, align 8, !tbaa !27
  %477 = load ptr, ptr %462, align 8, !tbaa !28
  %478 = icmp ugt ptr %476, %477
  br i1 %478, label %479, label %509

479:                                              ; preds = %475
  %480 = tail call ptr @__errno_location() #17
  br label %481

481:                                              ; preds = %501, %479
  %482 = phi ptr [ %477, %479 ], [ %504, %501 ]
  %483 = phi ptr [ %476, %479 ], [ %505, %501 ]
  store i32 0, ptr %480, align 4, !tbaa !4
  store i32 0, ptr %463, align 4, !tbaa !17
  %484 = ptrtoint ptr %483 to i64
  %485 = ptrtoint ptr %482 to i64
  %486 = sub i64 %484, %485
  %487 = tail call i64 @llvm.smin.i64(i64 %486, i64 1073741824)
  %488 = and i64 %487, 4294967295
  %489 = load i32, ptr %464, align 4, !tbaa !31
  %490 = tail call i64 @write(i32 noundef %489, ptr noundef %482, i64 noundef %488) #15
  %491 = and i64 %490, 2147483648
  %492 = icmp eq i64 %491, 0
  br i1 %492, label %501, label %493

493:                                              ; preds = %481
  %494 = load i32, ptr %480, align 4, !tbaa !4
  %495 = icmp eq i32 %494, 11
  br i1 %495, label %496, label %498

496:                                              ; preds = %493
  store i32 1, ptr %463, align 4, !tbaa !17
  %497 = load i32, ptr %480, align 4, !tbaa !4
  br label %498

498:                                              ; preds = %496, %493
  %499 = phi i32 [ %494, %493 ], [ %497, %496 ]
  %500 = tail call ptr @strerror(i32 noundef %499) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %500) #15
  br label %529

501:                                              ; preds = %481
  %502 = load ptr, ptr %462, align 8, !tbaa !28
  %503 = and i64 %490, 2147483647
  %504 = getelementptr inbounds nuw i8, ptr %502, i64 %503
  store ptr %504, ptr %462, align 8, !tbaa !28
  %505 = load ptr, ptr %461, align 8, !tbaa !27
  %506 = icmp ugt ptr %505, %504
  br i1 %506, label %481, label %507, !llvm.loop !37

507:                                              ; preds = %501
  %508 = load i32, ptr %458, align 8, !tbaa !26
  br label %509

509:                                              ; preds = %507, %475
  %510 = phi i32 [ %508, %507 ], [ %468, %475 ]
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %515

512:                                              ; preds = %509
  %513 = load i32, ptr %361, align 8, !tbaa !18
  store i32 %513, ptr %458, align 8, !tbaa !26
  %514 = load ptr, ptr %465, align 8, !tbaa !22
  store ptr %514, ptr %461, align 8, !tbaa !27
  store ptr %514, ptr %462, align 8, !tbaa !28
  br label %515

515:                                              ; preds = %512, %509, %471
  %516 = phi i32 [ %510, %509 ], [ %513, %512 ], [ %468, %471 ]
  %517 = tail call i32 @deflate(ptr noundef nonnull %360, i32 noundef range(i32 0, 6) %1) #15
  %518 = icmp eq i32 %517, -2
  br i1 %518, label %519, label %520

519:                                              ; preds = %515
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %529

520:                                              ; preds = %515
  %521 = load i32, ptr %458, align 8, !tbaa !26
  %522 = icmp ult i32 %516, %521
  br i1 %522, label %523, label %524, !prof !33, !nosanitize !32

523:                                              ; preds = %520
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

524:                                              ; preds = %520
  %525 = icmp eq i32 %516, %521
  br i1 %525, label %526, label %467, !llvm.loop !38

526:                                              ; preds = %524
  %527 = icmp eq i32 %1, 4
  br i1 %527, label %528, label %529

528:                                              ; preds = %526
  store i32 1, ptr %447, align 8, !tbaa !36
  br label %529

529:                                              ; preds = %528, %526, %519, %498, %450, %440, %432, %409, %393, %384, %372, %350, %174, %155, %98, %60, %51, %39
  %530 = load i32, ptr %9, align 8, !tbaa !16
  br label %531

531:                                              ; preds = %529, %16, %12, %4, %2
  %532 = phi i32 [ -2, %12 ], [ -2, %2 ], [ -2, %4 ], [ -2, %16 ], [ %530, %529 ]
  ret i32 %532
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gzsetparams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %483, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %483

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %483, label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %20 = load i32, ptr %19, align 8, !tbaa !21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %483

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
  br i1 %29, label %483, label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !29
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %367, label %34

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
  br label %365

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
  br label %365

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
  br label %365

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
  br label %365

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
  br label %365

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
  br label %365

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

204:                                              ; preds = %363, %189
  %205 = phi i64 [ %203, %189 ], [ %362, %363 ]
  %206 = phi i1 [ false, %189 ], [ true, %363 ]
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

355:                                              ; preds = %350
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

356:                                              ; preds = %350
  %357 = extractvalue { i32, i1 } %353, 0, !nosanitize !32
  %358 = zext i32 %357 to i64
  %359 = load i64, ptr %202, align 8, !tbaa !39
  %360 = add nsw i64 %359, %358
  store i64 %360, ptr %202, align 8, !tbaa !39
  %361 = load i64, ptr %31, align 8, !tbaa !29
  %362 = sub nsw i64 %361, %358
  store i64 %362, ptr %31, align 8, !tbaa !29
  br i1 %351, label %365, label %363

363:                                              ; preds = %356
  %364 = icmp eq i64 %361, %358
  br i1 %364, label %367, label %204, !llvm.loop !40

365:                                              ; preds = %356, %182, %163, %106, %69, %61, %50
  %366 = load i32, ptr %11, align 8, !tbaa !16
  br label %483

367:                                              ; preds = %363, %30
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %369 = load i32, ptr %368, align 8, !tbaa !18
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %481, label %371

371:                                              ; preds = %367
  %372 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %373 = load i32, ptr %372, align 8, !tbaa !30
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %479, label %375

375:                                              ; preds = %371
  %376 = load i32, ptr %19, align 8, !tbaa !21
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %411, label %378

378:                                              ; preds = %375
  %379 = tail call ptr @__errno_location() #17
  %380 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %382 = load ptr, ptr %6, align 8, !tbaa !25
  br label %383

383:                                              ; preds = %405, %378
  %384 = phi ptr [ %382, %378 ], [ %409, %405 ]
  store i32 0, ptr %379, align 4, !tbaa !4
  store i32 0, ptr %380, align 4, !tbaa !17
  %385 = load i32, ptr %372, align 8, !tbaa !30
  %386 = tail call i32 @llvm.umin.i32(i32 %385, i32 1073741824)
  %387 = zext nneg i32 %386 to i64
  %388 = load i32, ptr %381, align 4, !tbaa !31
  %389 = tail call i64 @write(i32 noundef %388, ptr noundef %384, i64 noundef %387) #15
  %390 = trunc i64 %389 to i32
  %391 = icmp slt i32 %390, 0
  br i1 %391, label %392, label %400

392:                                              ; preds = %383
  %393 = load i32, ptr %379, align 4, !tbaa !4
  %394 = icmp eq i32 %393, 11
  br i1 %394, label %395, label %397

395:                                              ; preds = %392
  store i32 1, ptr %380, align 4, !tbaa !17
  %396 = load i32, ptr %379, align 4, !tbaa !4
  br label %397

397:                                              ; preds = %395, %392
  %398 = phi i32 [ %393, %392 ], [ %396, %395 ]
  %399 = tail call ptr @strerror(i32 noundef %398) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %399) #15
  br label %477

400:                                              ; preds = %383
  %401 = load i32, ptr %372, align 8, !tbaa !30
  %402 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %401, i32 %390), !nosanitize !32
  %403 = extractvalue { i32, i1 } %402, 1, !nosanitize !32
  br i1 %403, label %404, label %405, !prof !33, !nosanitize !32

404:                                              ; preds = %400
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

405:                                              ; preds = %400
  %406 = extractvalue { i32, i1 } %402, 0, !nosanitize !32
  store i32 %406, ptr %372, align 8, !tbaa !30
  %407 = load ptr, ptr %6, align 8, !tbaa !25
  %408 = and i64 %389, 2147483647
  %409 = getelementptr inbounds nuw i8, ptr %407, i64 %408
  store ptr %409, ptr %6, align 8, !tbaa !25
  %410 = icmp eq i32 %406, 0
  br i1 %410, label %479, label %383, !llvm.loop !34

411:                                              ; preds = %375
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %413 = load i32, ptr %412, align 8, !tbaa !36
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %417, label %415

415:                                              ; preds = %411
  %416 = tail call i32 @deflateReset(ptr noundef nonnull %6) #15
  store i32 0, ptr %412, align 8, !tbaa !36
  br label %417

417:                                              ; preds = %415, %411
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %424 = load i32, ptr %418, align 8, !tbaa !26
  br label %425

425:                                              ; preds = %475, %417
  %426 = phi i32 [ %424, %417 ], [ %472, %475 ]
  %427 = load ptr, ptr %419, align 8, !tbaa !27
  %428 = load ptr, ptr %420, align 8, !tbaa !28
  %429 = icmp ugt ptr %427, %428
  br i1 %429, label %430, label %460

430:                                              ; preds = %425
  %431 = tail call ptr @__errno_location() #17
  br label %432

432:                                              ; preds = %452, %430
  %433 = phi ptr [ %428, %430 ], [ %455, %452 ]
  %434 = phi ptr [ %427, %430 ], [ %456, %452 ]
  store i32 0, ptr %431, align 4, !tbaa !4
  store i32 0, ptr %421, align 4, !tbaa !17
  %435 = ptrtoint ptr %434 to i64
  %436 = ptrtoint ptr %433 to i64
  %437 = sub i64 %435, %436
  %438 = tail call i64 @llvm.smin.i64(i64 %437, i64 1073741824)
  %439 = and i64 %438, 4294967295
  %440 = load i32, ptr %422, align 4, !tbaa !31
  %441 = tail call i64 @write(i32 noundef %440, ptr noundef %433, i64 noundef %439) #15
  %442 = and i64 %441, 2147483648
  %443 = icmp eq i64 %442, 0
  br i1 %443, label %452, label %444

444:                                              ; preds = %432
  %445 = load i32, ptr %431, align 4, !tbaa !4
  %446 = icmp eq i32 %445, 11
  br i1 %446, label %447, label %449

447:                                              ; preds = %444
  store i32 1, ptr %421, align 4, !tbaa !17
  %448 = load i32, ptr %431, align 4, !tbaa !4
  br label %449

449:                                              ; preds = %447, %444
  %450 = phi i32 [ %445, %444 ], [ %448, %447 ]
  %451 = tail call ptr @strerror(i32 noundef %450) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %451) #15
  br label %477

452:                                              ; preds = %432
  %453 = load ptr, ptr %420, align 8, !tbaa !28
  %454 = and i64 %441, 2147483647
  %455 = getelementptr inbounds nuw i8, ptr %453, i64 %454
  store ptr %455, ptr %420, align 8, !tbaa !28
  %456 = load ptr, ptr %419, align 8, !tbaa !27
  %457 = icmp ugt ptr %456, %455
  br i1 %457, label %432, label %458, !llvm.loop !37

458:                                              ; preds = %452
  %459 = load i32, ptr %418, align 8, !tbaa !26
  br label %460

460:                                              ; preds = %458, %425
  %461 = phi i32 [ %459, %458 ], [ %426, %425 ]
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %466

463:                                              ; preds = %460
  %464 = load i32, ptr %368, align 8, !tbaa !18
  store i32 %464, ptr %418, align 8, !tbaa !26
  %465 = load ptr, ptr %423, align 8, !tbaa !22
  store ptr %465, ptr %419, align 8, !tbaa !27
  store ptr %465, ptr %420, align 8, !tbaa !28
  br label %466

466:                                              ; preds = %463, %460
  %467 = phi i32 [ %461, %460 ], [ %464, %463 ]
  %468 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 5) #15
  %469 = icmp eq i32 %468, -2
  br i1 %469, label %470, label %471

470:                                              ; preds = %466
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %477

471:                                              ; preds = %466
  %472 = load i32, ptr %418, align 8, !tbaa !26
  %473 = icmp ult i32 %467, %472
  br i1 %473, label %474, label %475, !prof !33, !nosanitize !32

474:                                              ; preds = %471
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

475:                                              ; preds = %471
  %476 = icmp eq i32 %467, %472
  br i1 %476, label %479, label %425, !llvm.loop !38

477:                                              ; preds = %470, %449, %397
  %478 = load i32, ptr %11, align 8, !tbaa !16
  br label %483

479:                                              ; preds = %475, %405, %371
  %480 = tail call i32 @deflateParams(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2) #15
  br label %481

481:                                              ; preds = %479, %367
  store i32 %1, ptr %23, align 8, !tbaa !23
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %2, ptr %482, align 4, !tbaa !24
  br label %483

483:                                              ; preds = %481, %477, %365, %26, %18, %14, %5, %3
  %484 = phi i32 [ 0, %481 ], [ -2, %3 ], [ -2, %5 ], [ %366, %365 ], [ %478, %477 ], [ -2, %18 ], [ -2, %14 ], [ 0, %26 ]
  ret i32 %484
}

declare i32 @deflateParams(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gzclose_w(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %537, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !8
  %6 = icmp eq i32 %5, 31153
  br i1 %6, label %7, label %537

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %9 = load i64, ptr %8, align 8, !tbaa !29
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %351, label %11

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
  br label %348

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
  br label %348

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
  br label %348

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
  br label %348

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
  br label %348

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
  br label %348

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

187:                                              ; preds = %346, %170
  %188 = phi i64 [ %186, %170 ], [ %345, %346 ]
  %189 = phi i1 [ false, %170 ], [ true, %346 ]
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

338:                                              ; preds = %333
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

339:                                              ; preds = %333
  %340 = extractvalue { i32, i1 } %336, 0, !nosanitize !32
  %341 = zext i32 %340 to i64
  %342 = load i64, ptr %185, align 8, !tbaa !39
  %343 = add nsw i64 %342, %341
  store i64 %343, ptr %185, align 8, !tbaa !39
  %344 = load i64, ptr %8, align 8, !tbaa !29
  %345 = sub nsw i64 %344, %341
  store i64 %345, ptr %8, align 8, !tbaa !29
  br i1 %334, label %348, label %346

346:                                              ; preds = %339
  %347 = icmp eq i64 %344, %341
  br i1 %347, label %351, label %187, !llvm.loop !40

348:                                              ; preds = %339, %163, %144, %87, %49, %40, %28
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %350 = load i32, ptr %349, align 8, !tbaa !16
  br label %351

351:                                              ; preds = %348, %346, %7
  %352 = phi i32 [ %350, %348 ], [ 0, %7 ], [ 0, %346 ]
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %354 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %355 = load i32, ptr %354, align 8, !tbaa !18
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %398

357:                                              ; preds = %351
  %358 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %359 = load i32, ptr %358, align 4, !tbaa !19
  %360 = shl i32 %359, 1
  %361 = zext i32 %360 to i64
  %362 = tail call noalias ptr @malloc(i64 noundef %361) #16
  %363 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %362, ptr %363, align 8, !tbaa !20
  %364 = icmp eq ptr %362, null
  br i1 %364, label %365, label %366

365:                                              ; preds = %357
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %511

366:                                              ; preds = %357
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %368 = load i32, ptr %367, align 8, !tbaa !21
  %369 = icmp eq i32 %368, 0
  %370 = load i32, ptr %358, align 4, !tbaa !19
  br i1 %369, label %372, label %371

371:                                              ; preds = %366
  store i32 %370, ptr %354, align 8, !tbaa !18
  br label %402

372:                                              ; preds = %366
  %373 = zext i32 %370 to i64
  %374 = tail call noalias ptr @malloc(i64 noundef %373) #16
  %375 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %374, ptr %375, align 8, !tbaa !22
  %376 = icmp eq ptr %374, null
  br i1 %376, label %377, label %378

377:                                              ; preds = %372
  tail call void @free(ptr noundef nonnull %362) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %511

378:                                              ; preds = %372
  %379 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %380 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %379, i8 0, i64 24, i1 false)
  %381 = load i32, ptr %380, align 8, !tbaa !23
  %382 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %383 = load i32, ptr %382, align 4, !tbaa !24
  %384 = tail call i32 @deflateInit2_(ptr noundef nonnull %353, i32 noundef %381, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %383, ptr noundef nonnull @.str.5, i32 noundef 112) #15
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %389, label %386

386:                                              ; preds = %378
  %387 = load ptr, ptr %375, align 8, !tbaa !22
  tail call void @free(ptr noundef %387) #15
  %388 = load ptr, ptr %363, align 8, !tbaa !20
  tail call void @free(ptr noundef %388) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #15
  br label %511

389:                                              ; preds = %378
  store ptr null, ptr %353, align 8, !tbaa !25
  %390 = load i32, ptr %367, align 8, !tbaa !21
  %391 = load i32, ptr %358, align 4, !tbaa !19
  store i32 %391, ptr %354, align 8, !tbaa !18
  %392 = icmp eq i32 %390, 0
  br i1 %392, label %393, label %402

393:                                              ; preds = %389
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %391, ptr %394, align 8, !tbaa !26
  %395 = load ptr, ptr %375, align 8, !tbaa !22
  %396 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %395, ptr %396, align 8, !tbaa !27
  %397 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %395, ptr %397, align 8, !tbaa !28
  br label %439

398:                                              ; preds = %351
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %400 = load i32, ptr %399, align 8, !tbaa !21
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %439, label %402

402:                                              ; preds = %398, %389, %371
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %404 = load i32, ptr %403, align 8, !tbaa !30
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %514, label %406

406:                                              ; preds = %402
  %407 = tail call ptr @__errno_location() #17
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %410 = load ptr, ptr %353, align 8, !tbaa !25
  br label %411

411:                                              ; preds = %433, %406
  %412 = phi ptr [ %410, %406 ], [ %437, %433 ]
  store i32 0, ptr %407, align 4, !tbaa !4
  store i32 0, ptr %408, align 4, !tbaa !17
  %413 = load i32, ptr %403, align 8, !tbaa !30
  %414 = tail call i32 @llvm.umin.i32(i32 %413, i32 1073741824)
  %415 = zext nneg i32 %414 to i64
  %416 = load i32, ptr %409, align 4, !tbaa !31
  %417 = tail call i64 @write(i32 noundef %416, ptr noundef %412, i64 noundef %415) #15
  %418 = trunc i64 %417 to i32
  %419 = icmp slt i32 %418, 0
  br i1 %419, label %420, label %428

420:                                              ; preds = %411
  %421 = load i32, ptr %407, align 4, !tbaa !4
  %422 = icmp eq i32 %421, 11
  br i1 %422, label %423, label %425

423:                                              ; preds = %420
  store i32 1, ptr %408, align 4, !tbaa !17
  %424 = load i32, ptr %407, align 4, !tbaa !4
  br label %425

425:                                              ; preds = %423, %420
  %426 = phi i32 [ %421, %420 ], [ %424, %423 ]
  %427 = tail call ptr @strerror(i32 noundef %426) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %427) #15
  br label %511

428:                                              ; preds = %411
  %429 = load i32, ptr %403, align 8, !tbaa !30
  %430 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %429, i32 %418), !nosanitize !32
  %431 = extractvalue { i32, i1 } %430, 1, !nosanitize !32
  br i1 %431, label %432, label %433, !prof !33, !nosanitize !32

432:                                              ; preds = %428
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

433:                                              ; preds = %428
  %434 = extractvalue { i32, i1 } %430, 0, !nosanitize !32
  store i32 %434, ptr %403, align 8, !tbaa !30
  %435 = load ptr, ptr %353, align 8, !tbaa !25
  %436 = and i64 %417, 2147483647
  %437 = getelementptr inbounds nuw i8, ptr %435, i64 %436
  store ptr %437, ptr %353, align 8, !tbaa !25
  %438 = icmp eq i32 %434, 0
  br i1 %438, label %514, label %411, !llvm.loop !34

439:                                              ; preds = %398, %393
  %440 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %441 = load i32, ptr %440, align 8, !tbaa !36
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %445, label %443

443:                                              ; preds = %439
  %444 = tail call i32 @deflateReset(ptr noundef nonnull %353) #15
  store i32 0, ptr %440, align 8, !tbaa !36
  br label %445

445:                                              ; preds = %443, %439
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %452 = load i32, ptr %446, align 8, !tbaa !26
  br label %453

453:                                              ; preds = %508, %445
  %454 = phi i32 [ %452, %445 ], [ %505, %508 ]
  %455 = phi i32 [ 0, %445 ], [ %501, %508 ]
  %456 = icmp eq i32 %454, 0
  %457 = icmp eq i32 %455, 1
  %458 = or i1 %456, %457
  br i1 %458, label %459, label %499

459:                                              ; preds = %453
  %460 = load ptr, ptr %447, align 8, !tbaa !27
  %461 = load ptr, ptr %448, align 8, !tbaa !28
  %462 = icmp ugt ptr %460, %461
  br i1 %462, label %463, label %493

463:                                              ; preds = %459
  %464 = tail call ptr @__errno_location() #17
  br label %465

465:                                              ; preds = %485, %463
  %466 = phi ptr [ %461, %463 ], [ %488, %485 ]
  %467 = phi ptr [ %460, %463 ], [ %489, %485 ]
  store i32 0, ptr %464, align 4, !tbaa !4
  store i32 0, ptr %449, align 4, !tbaa !17
  %468 = ptrtoint ptr %467 to i64
  %469 = ptrtoint ptr %466 to i64
  %470 = sub i64 %468, %469
  %471 = tail call i64 @llvm.smin.i64(i64 %470, i64 1073741824)
  %472 = and i64 %471, 4294967295
  %473 = load i32, ptr %450, align 4, !tbaa !31
  %474 = tail call i64 @write(i32 noundef %473, ptr noundef %466, i64 noundef %472) #15
  %475 = and i64 %474, 2147483648
  %476 = icmp eq i64 %475, 0
  br i1 %476, label %485, label %477

477:                                              ; preds = %465
  %478 = load i32, ptr %464, align 4, !tbaa !4
  %479 = icmp eq i32 %478, 11
  br i1 %479, label %480, label %482

480:                                              ; preds = %477
  store i32 1, ptr %449, align 4, !tbaa !17
  %481 = load i32, ptr %464, align 4, !tbaa !4
  br label %482

482:                                              ; preds = %480, %477
  %483 = phi i32 [ %478, %477 ], [ %481, %480 ]
  %484 = tail call ptr @strerror(i32 noundef %483) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %484) #15
  br label %511

485:                                              ; preds = %465
  %486 = load ptr, ptr %448, align 8, !tbaa !28
  %487 = and i64 %474, 2147483647
  %488 = getelementptr inbounds nuw i8, ptr %486, i64 %487
  store ptr %488, ptr %448, align 8, !tbaa !28
  %489 = load ptr, ptr %447, align 8, !tbaa !27
  %490 = icmp ugt ptr %489, %488
  br i1 %490, label %465, label %491, !llvm.loop !37

491:                                              ; preds = %485
  %492 = load i32, ptr %446, align 8, !tbaa !26
  br label %493

493:                                              ; preds = %491, %459
  %494 = phi i32 [ %492, %491 ], [ %454, %459 ]
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %499

496:                                              ; preds = %493
  %497 = load i32, ptr %354, align 8, !tbaa !18
  store i32 %497, ptr %446, align 8, !tbaa !26
  %498 = load ptr, ptr %451, align 8, !tbaa !22
  store ptr %498, ptr %447, align 8, !tbaa !27
  store ptr %498, ptr %448, align 8, !tbaa !28
  br label %499

499:                                              ; preds = %496, %493, %453
  %500 = phi i32 [ %494, %493 ], [ %497, %496 ], [ %454, %453 ]
  %501 = tail call i32 @deflate(ptr noundef nonnull %353, i32 noundef 4) #15
  %502 = icmp eq i32 %501, -2
  br i1 %502, label %503, label %504

503:                                              ; preds = %499
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #15
  br label %511

504:                                              ; preds = %499
  %505 = load i32, ptr %446, align 8, !tbaa !26
  %506 = icmp ult i32 %500, %505
  br i1 %506, label %507, label %508, !prof !33, !nosanitize !32

507:                                              ; preds = %504
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !32
  unreachable, !nosanitize !32

508:                                              ; preds = %504
  %509 = icmp eq i32 %500, %505
  br i1 %509, label %510, label %453, !llvm.loop !38

510:                                              ; preds = %508
  store i32 1, ptr %440, align 8, !tbaa !36
  br label %514

511:                                              ; preds = %503, %482, %425, %386, %377, %365
  %512 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %513 = load i32, ptr %512, align 8, !tbaa !16
  br label %514

514:                                              ; preds = %511, %510, %433, %402
  %515 = phi i32 [ %513, %511 ], [ %352, %402 ], [ %352, %510 ], [ %352, %433 ]
  %516 = load i32, ptr %354, align 8, !tbaa !18
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %529, label %518

518:                                              ; preds = %514
  %519 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %520 = load i32, ptr %519, align 8, !tbaa !21
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %526

522:                                              ; preds = %518
  %523 = tail call i32 @deflateEnd(ptr noundef nonnull %353) #15
  %524 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %525 = load ptr, ptr %524, align 8, !tbaa !22
  tail call void @free(ptr noundef %525) #15
  br label %526

526:                                              ; preds = %522, %518
  %527 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %528 = load ptr, ptr %527, align 8, !tbaa !20
  tail call void @free(ptr noundef %528) #15
  br label %529

529:                                              ; preds = %526, %514
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %530 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %531 = load ptr, ptr %530, align 8, !tbaa !45
  tail call void @free(ptr noundef %531) #15
  %532 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %533 = load i32, ptr %532, align 4, !tbaa !31
  %534 = tail call i32 @close(i32 noundef %533) #15
  %535 = icmp eq i32 %534, -1
  %536 = select i1 %535, i32 -1, i32 %515
  tail call void @free(ptr noundef nonnull %0) #15
  br label %537

537:                                              ; preds = %529, %3, %1
  %538 = phi i32 [ %536, %529 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %538
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
