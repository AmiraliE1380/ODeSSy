; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/both.gzread.or.ll'
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
  br i1 %4, label %1094, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !8
  %8 = icmp eq i32 %7, 7247
  br i1 %8, label %9, label %1094

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
  br i1 %15, label %1094, label %16

16:                                               ; preds = %12, %9, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str) #13
  br label %1094

19:                                               ; preds = %16
  %20 = zext nneg i32 %2 to i64
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %.loopexit94, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load i64, ptr %23, align 8, !tbaa !18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %.loopexit98, label %26

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
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %45

45:                                               ; preds = %462, %26
  %46 = phi i64 [ %463, %462 ], [ %24, %26 ]
  %47 = load i32, ptr %0, align 8, !tbaa !19
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %71, label %49

49:                                               ; preds = %45
  %50 = zext i32 %47 to i64
  %51 = tail call i64 @llvm.smin.i64(i64 %46, i64 %50)
  %52 = trunc i64 %51 to i32
  %53 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %47, i32 %52), !nosanitize !20
  %54 = extractvalue { i32, i1 } %53, 1, !nosanitize !20
  br i1 %54, label %55, label %56, !prof !21, !nosanitize !20

55:                                               ; preds = %65, %49
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

56:                                               ; preds = %49
  %57 = extractvalue { i32, i1 } %53, 0, !nosanitize !20
  store i32 %57, ptr %0, align 8, !tbaa !19
  %58 = load ptr, ptr %27, align 8, !tbaa !22
  %59 = and i64 %51, 4294967295
  %60 = getelementptr inbounds nuw i8, ptr %58, i64 %59
  store ptr %60, ptr %27, align 8, !tbaa !22
  %61 = load i64, ptr %28, align 8, !tbaa !23
  %62 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %61, i64 %59), !nosanitize !20
  %63 = extractvalue { i64, i1 } %62, 1, !nosanitize !20
  br i1 %63, label %64, label %65, !prof !21, !nosanitize !20

64:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

65:                                               ; preds = %56
  %66 = extractvalue { i64, i1 } %62, 0, !nosanitize !20
  store i64 %66, ptr %28, align 8, !tbaa !23
  %67 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %46, i64 %59), !nosanitize !20
  %68 = extractvalue { i64, i1 } %67, 1, !nosanitize !20
  br i1 %68, label %55, label %69, !prof !21, !nosanitize !20

69:                                               ; preds = %65
  %70 = extractvalue { i64, i1 } %67, 0, !nosanitize !20
  store i64 %70, ptr %23, align 8, !tbaa !18
  br label %462

71:                                               ; preds = %45
  %72 = load i32, ptr %29, align 8, !tbaa !24
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %.preheader1009, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %30, align 8, !tbaa !25
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %.loopexit98, label %.preheader1009

.preheader1009:                                   ; preds = %74, %71
  br label %77

77:                                               ; preds = %.backedge, %.preheader1009
  %78 = load i32, ptr %31, align 8, !tbaa !26
  switch i32 %78, label %449 [
    i32 0, label %79
    i32 1, label %310
    i32 2, label %352
  ]

79:                                               ; preds = %77
  %80 = load i32, ptr %32, align 8, !tbaa !27
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  %83 = load i32, ptr %42, align 4, !tbaa !28
  %84 = zext i32 %83 to i64
  %85 = tail call noalias ptr @malloc(i64 noundef %84) #16
  store ptr %85, ptr %37, align 8, !tbaa !29
  %86 = load i32, ptr %42, align 4, !tbaa !28
  %87 = shl i32 %86, 1
  %88 = zext i32 %87 to i64
  %89 = tail call noalias ptr @malloc(i64 noundef %88) #16
  store ptr %89, ptr %34, align 8, !tbaa !30
  %90 = icmp eq ptr %85, null
  %91 = icmp eq ptr %89, null
  %92 = or i1 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  tail call void @free(ptr noundef %89) #13
  tail call void @free(ptr noundef %85) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit94

94:                                               ; preds = %82
  %95 = load i32, ptr %42, align 4, !tbaa !28
  store i32 %95, ptr %32, align 8, !tbaa !27
  store i32 0, ptr %30, align 8, !tbaa !25
  store ptr null, ptr %36, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %96 = tail call i32 @inflateInit2_(ptr noundef nonnull %36, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %34, align 8, !tbaa !30
  tail call void @free(ptr noundef %99) #13
  %100 = load ptr, ptr %37, align 8, !tbaa !29
  tail call void @free(ptr noundef %100) #13
  store i32 0, ptr %32, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit94

101:                                              ; preds = %94, %79
  %102 = load i32, ptr %44, align 8, !tbaa !32
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %40, align 4, !tbaa !33
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104, %101
  %108 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  %109 = load i32, ptr %40, align 4, !tbaa !33
  %110 = icmp ne i32 %109, -1
  %111 = zext i1 %110 to i32
  store i32 %111, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %307

112:                                              ; preds = %104
  %113 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %113, label %.loopexit95 [
    i32 0, label %114
    i32 -5, label %114
  ]

114:                                              ; preds = %112, %112
  %115 = load i32, ptr %29, align 8, !tbaa !24
  %116 = icmp eq i32 %115, 0
  %117 = load i32, ptr %30, align 8, !tbaa !34
  br i1 %116, label %118, label %275

118:                                              ; preds = %114
  %119 = icmp eq i32 %117, 0
  br i1 %119, label %221, label %120

120:                                              ; preds = %118
  %121 = load ptr, ptr %37, align 8, !tbaa !29
  %122 = load ptr, ptr %36, align 8, !tbaa !35
  %123 = icmp eq ptr %122, %121
  br i1 %123, label %221, label %124

124:                                              ; preds = %120
  %125 = ptrtoaddr ptr %122 to i64
  %126 = ptrtoaddr ptr %121 to i64
  %127 = zext i32 %117 to i64
  %128 = icmp ult i32 %117, 4
  %129 = sub i64 %126, %125
  %130 = icmp ult i64 %129, 32
  %131 = or i1 %128, %130
  br i1 %131, label %171, label %132

132:                                              ; preds = %124
  %133 = icmp ult i32 %117, 32
  br i1 %133, label %155, label %134

134:                                              ; preds = %132
  %135 = and i64 %127, 4294967264
  br label %136

136:                                              ; preds = %136, %134
  %137 = phi i64 [ 0, %134 ], [ %144, %136 ]
  %138 = getelementptr i8, ptr %121, i64 %137
  %139 = getelementptr i8, ptr %122, i64 %137
  %140 = getelementptr i8, ptr %139, i64 16
  %141 = load <16 x i8>, ptr %139, align 1, !tbaa !36
  %142 = load <16 x i8>, ptr %140, align 1, !tbaa !36
  %143 = getelementptr i8, ptr %138, i64 16
  store <16 x i8> %141, ptr %138, align 1, !tbaa !36
  store <16 x i8> %142, ptr %143, align 1, !tbaa !36
  %144 = add nuw nsw i64 %137, 32
  %145 = icmp eq i64 %144, %135
  br i1 %145, label %146, label %136, !llvm.loop !37

146:                                              ; preds = %136
  %147 = icmp eq i64 %135, %127
  br i1 %147, label %.loopexit87, label %148

148:                                              ; preds = %146
  %149 = trunc nuw i64 %135 to i32
  %150 = sub i32 %117, %149
  %151 = getelementptr i8, ptr %122, i64 %135
  %152 = getelementptr i8, ptr %121, i64 %135
  %153 = and i64 %127, 28
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %171, label %155, !prof !41

155:                                              ; preds = %148, %132
  %156 = phi i64 [ %135, %148 ], [ 0, %132 ]
  %157 = and i64 %127, 4294967292
  br label %158

158:                                              ; preds = %158, %155
  %159 = phi i64 [ %156, %155 ], [ %163, %158 ]
  %160 = getelementptr i8, ptr %121, i64 %159
  %161 = getelementptr i8, ptr %122, i64 %159
  %162 = load <4 x i8>, ptr %161, align 1, !tbaa !36
  store <4 x i8> %162, ptr %160, align 1, !tbaa !36
  %163 = add nuw i64 %159, 4
  %164 = icmp eq i64 %163, %157
  br i1 %164, label %165, label %158, !llvm.loop !42

165:                                              ; preds = %158
  %166 = getelementptr i8, ptr %121, i64 %157
  %167 = getelementptr i8, ptr %122, i64 %157
  %168 = trunc nuw i64 %157 to i32
  %169 = sub i32 %117, %168
  %170 = icmp eq i64 %157, %127
  br i1 %170, label %.loopexit87, label %171

171:                                              ; preds = %165, %148, %124
  %172 = phi ptr [ %121, %124 ], [ %152, %148 ], [ %166, %165 ]
  %173 = phi ptr [ %122, %124 ], [ %151, %148 ], [ %167, %165 ]
  %174 = phi i32 [ %117, %124 ], [ %150, %148 ], [ %169, %165 ]
  %175 = add i32 %174, -1
  %176 = and i32 %174, 7
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %.loopexit89, label %.preheader88

.preheader88:                                     ; preds = %171, %.preheader88
  %178 = phi ptr [ %182, %.preheader88 ], [ %172, %171 ]
  %179 = phi ptr [ %183, %.preheader88 ], [ %173, %171 ]
  %180 = phi i32 [ %184, %.preheader88 ], [ 0, %171 ]
  %181 = load i8, ptr %179, align 1, !tbaa !36
  store i8 %181, ptr %178, align 1, !tbaa !36
  %182 = getelementptr inbounds nuw i8, ptr %178, i64 1
  %183 = getelementptr inbounds nuw i8, ptr %179, i64 1
  %184 = add nuw nsw i32 %180, 1
  %185 = icmp eq i32 %184, %176
  br i1 %185, label %.loopexit89.loopexit, label %.preheader88, !llvm.loop !43

.loopexit89.loopexit:                             ; preds = %.preheader88
  %186 = and i32 %174, -8
  br label %.loopexit89

.loopexit89:                                      ; preds = %.loopexit89.loopexit, %171
  %187 = phi ptr [ %172, %171 ], [ %182, %.loopexit89.loopexit ]
  %188 = phi ptr [ %173, %171 ], [ %183, %.loopexit89.loopexit ]
  %189 = phi i32 [ %174, %171 ], [ %186, %.loopexit89.loopexit ]
  %190 = icmp ult i32 %175, 7
  br i1 %190, label %.loopexit87, label %.preheader86

.preheader86:                                     ; preds = %.loopexit89, %.preheader86
  %191 = phi ptr [ %217, %.preheader86 ], [ %187, %.loopexit89 ]
  %192 = phi ptr [ %218, %.preheader86 ], [ %188, %.loopexit89 ]
  %193 = phi i32 [ %216, %.preheader86 ], [ %189, %.loopexit89 ]
  %194 = load i8, ptr %192, align 1, !tbaa !36
  store i8 %194, ptr %191, align 1, !tbaa !36
  %195 = getelementptr inbounds nuw i8, ptr %191, i64 1
  %196 = getelementptr inbounds nuw i8, ptr %192, i64 1
  %197 = load i8, ptr %196, align 1, !tbaa !36
  store i8 %197, ptr %195, align 1, !tbaa !36
  %198 = getelementptr inbounds nuw i8, ptr %191, i64 2
  %199 = getelementptr inbounds nuw i8, ptr %192, i64 2
  %200 = load i8, ptr %199, align 1, !tbaa !36
  store i8 %200, ptr %198, align 1, !tbaa !36
  %201 = getelementptr inbounds nuw i8, ptr %191, i64 3
  %202 = getelementptr inbounds nuw i8, ptr %192, i64 3
  %203 = load i8, ptr %202, align 1, !tbaa !36
  store i8 %203, ptr %201, align 1, !tbaa !36
  %204 = getelementptr inbounds nuw i8, ptr %191, i64 4
  %205 = getelementptr inbounds nuw i8, ptr %192, i64 4
  %206 = load i8, ptr %205, align 1, !tbaa !36
  store i8 %206, ptr %204, align 1, !tbaa !36
  %207 = getelementptr inbounds nuw i8, ptr %191, i64 5
  %208 = getelementptr inbounds nuw i8, ptr %192, i64 5
  %209 = load i8, ptr %208, align 1, !tbaa !36
  store i8 %209, ptr %207, align 1, !tbaa !36
  %210 = getelementptr inbounds nuw i8, ptr %191, i64 6
  %211 = getelementptr inbounds nuw i8, ptr %192, i64 6
  %212 = load i8, ptr %211, align 1, !tbaa !36
  store i8 %212, ptr %210, align 1, !tbaa !36
  %213 = getelementptr inbounds nuw i8, ptr %191, i64 7
  %214 = getelementptr inbounds nuw i8, ptr %192, i64 7
  %215 = load i8, ptr %214, align 1, !tbaa !36
  store i8 %215, ptr %213, align 1, !tbaa !36
  %216 = add i32 %193, -8
  %217 = getelementptr inbounds nuw i8, ptr %191, i64 8
  %218 = getelementptr inbounds nuw i8, ptr %192, i64 8
  %219 = icmp eq i32 %216, 0
  br i1 %219, label %.loopexit87, label %.preheader86, !llvm.loop !45

.loopexit87:                                      ; preds = %.preheader86, %.loopexit89, %165, %146
  %220 = load i32, ptr %30, align 8, !tbaa !34
  br label %221

221:                                              ; preds = %.loopexit87, %120, %118
  %222 = phi i32 [ %220, %.loopexit87 ], [ %117, %120 ], [ 0, %118 ]
  %223 = load i32, ptr %32, align 8, !tbaa !27
  %224 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %223, i32 %222), !nosanitize !20
  %225 = extractvalue { i32, i1 } %224, 1, !nosanitize !20
  br i1 %225, label %226, label %227, !prof !21, !nosanitize !20

226:                                              ; preds = %221
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

227:                                              ; preds = %221
  %228 = extractvalue { i32, i1 } %224, 0, !nosanitize !20
  %229 = load ptr, ptr %37, align 8, !tbaa !29
  %230 = zext i32 %222 to i64
  %231 = getelementptr inbounds nuw i8, ptr %229, i64 %230
  store i32 0, ptr %38, align 4, !tbaa !17
  %232 = tail call ptr @__errno_location() #17
  store i32 0, ptr %232, align 4, !tbaa !4
  br label %233

233:                                              ; preds = %252, %227
  %234 = phi i32 [ 0, %227 ], [ %253, %252 ]
  %235 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %228, i32 %234), !nosanitize !20
  %236 = extractvalue { i32, i1 } %235, 1, !nosanitize !20
  br i1 %236, label %237, label %238, !prof !21, !nosanitize !20

237:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

238:                                              ; preds = %233
  %239 = extractvalue { i32, i1 } %235, 0, !nosanitize !20
  %240 = tail call i32 @llvm.umin.i32(i32 %239, i32 1073741824)
  %241 = load i32, ptr %39, align 4, !tbaa !46
  %242 = zext i32 %234 to i64
  %243 = getelementptr inbounds nuw i8, ptr %231, i64 %242
  %244 = zext nneg i32 %240 to i64
  %245 = tail call i64 @read(i32 noundef %241, ptr noundef %243, i64 noundef %244) #13
  %246 = trunc i64 %245 to i32
  %247 = icmp slt i32 %246, 1
  br i1 %247, label %255, label %248

248:                                              ; preds = %238
  %249 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 %246), !nosanitize !20
  %250 = extractvalue { i32, i1 } %249, 1, !nosanitize !20
  br i1 %250, label %251, label %252, !prof !21, !nosanitize !20

251:                                              ; preds = %248
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

252:                                              ; preds = %248
  %253 = extractvalue { i32, i1 } %249, 0, !nosanitize !20
  %254 = icmp ult i32 %253, %228
  br i1 %254, label %233, label %.loopexit85, !llvm.loop !47

255:                                              ; preds = %238
  %256 = icmp slt i32 %246, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %255
  %258 = load i32, ptr %232, align 4, !tbaa !4
  %259 = icmp eq i32 %258, 11
  br i1 %259, label %260, label %.loopexit96

260:                                              ; preds = %257
  store i32 1, ptr %38, align 4, !tbaa !17
  %261 = icmp eq i32 %234, 0
  br i1 %261, label %262, label %.loopexit85

262:                                              ; preds = %260
  %263 = load i32, ptr %232, align 4, !tbaa !4
  br label %.loopexit96

264:                                              ; preds = %255
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit85

.loopexit96:                                      ; preds = %257, %262
  %265 = phi i32 [ %263, %262 ], [ %258, %257 ]
  %266 = tail call ptr @strerror(i32 noundef %265) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %266) #13
  br label %.loopexit94

.loopexit85:                                      ; preds = %252, %264, %260
  %267 = phi i32 [ %234, %260 ], [ %234, %264 ], [ %253, %252 ]
  %268 = load i32, ptr %30, align 8, !tbaa !34
  %269 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %268, i32 %267), !nosanitize !20
  %270 = extractvalue { i32, i1 } %269, 1, !nosanitize !20
  br i1 %270, label %271, label %272, !prof !21, !nosanitize !20

271:                                              ; preds = %.loopexit85
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

272:                                              ; preds = %.loopexit85
  %273 = extractvalue { i32, i1 } %269, 0, !nosanitize !20
  store i32 %273, ptr %30, align 8, !tbaa !34
  %274 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %274, ptr %36, align 8, !tbaa !35
  br label %275

275:                                              ; preds = %272, %114
  %276 = phi i32 [ %273, %272 ], [ %117, %114 ]
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %307, label %278

278:                                              ; preds = %275
  %279 = load i32, ptr %38, align 4, !tbaa !17
  %280 = icmp ne i32 %279, 0
  %281 = icmp ult i32 %276, 4
  %282 = and i1 %281, %280
  br i1 %282, label %307, label %283

283:                                              ; preds = %278
  %284 = icmp ugt i32 %276, 3
  %285 = load ptr, ptr %36, align 8, !tbaa !35
  br i1 %284, label %286, label %303

286:                                              ; preds = %283
  %287 = load i8, ptr %285, align 1, !tbaa !36
  %288 = icmp eq i8 %287, 31
  br i1 %288, label %289, label %303

289:                                              ; preds = %286
  %290 = getelementptr inbounds nuw i8, ptr %285, i64 1
  %291 = load i8, ptr %290, align 1, !tbaa !36
  %292 = icmp eq i8 %291, -117
  br i1 %292, label %293, label %303

293:                                              ; preds = %289
  %294 = getelementptr inbounds nuw i8, ptr %285, i64 2
  %295 = load i8, ptr %294, align 1, !tbaa !36
  %296 = icmp eq i8 %295, 8
  br i1 %296, label %297, label %303

297:                                              ; preds = %293
  %298 = getelementptr inbounds nuw i8, ptr %285, i64 3
  %299 = load i8, ptr %298, align 1, !tbaa !36
  %300 = icmp ult i8 %299, 32
  br i1 %300, label %301, label %303

301:                                              ; preds = %297
  %302 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  store i32 1, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %450

303:                                              ; preds = %297, %293, %289, %286, %283
  %304 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %304, ptr %27, align 8, !tbaa !22
  %305 = zext i32 %276 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %304, ptr align 1 %285, i64 %305, i1 false)
  %306 = load i32, ptr %30, align 8, !tbaa !34
  store i32 %306, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %31, align 8, !tbaa !26
  br label %452

307:                                              ; preds = %278, %275, %107
  %308 = load i32, ptr %31, align 8, !tbaa !26
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %.loopexit97, label %450

310:                                              ; preds = %77
  %311 = load ptr, ptr %34, align 8, !tbaa !30
  %312 = load i32, ptr %32, align 8, !tbaa !27
  %313 = shl i32 %312, 1
  store i32 0, ptr %38, align 4, !tbaa !17
  %314 = tail call ptr @__errno_location() #17
  store i32 0, ptr %314, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %315

315:                                              ; preds = %335, %310
  %316 = phi i32 [ %336, %335 ], [ 0, %310 ]
  %317 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %313, i32 %316), !nosanitize !20
  %318 = extractvalue { i32, i1 } %317, 1, !nosanitize !20
  br i1 %318, label %319, label %320, !prof !21, !nosanitize !20

319:                                              ; preds = %315
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

320:                                              ; preds = %315
  %321 = extractvalue { i32, i1 } %317, 0, !nosanitize !20
  %322 = tail call i32 @llvm.umin.i32(i32 %321, i32 1073741824)
  %323 = load i32, ptr %39, align 4, !tbaa !46
  %324 = zext i32 %316 to i64
  %325 = getelementptr inbounds nuw i8, ptr %311, i64 %324
  %326 = zext nneg i32 %322 to i64
  %327 = tail call i64 @read(i32 noundef %323, ptr noundef %325, i64 noundef %326) #13
  %328 = trunc i64 %327 to i32
  %329 = icmp slt i32 %328, 1
  br i1 %329, label %338, label %330

330:                                              ; preds = %320
  %331 = load i32, ptr %0, align 4, !tbaa !4
  %332 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %331, i32 %328), !nosanitize !20
  %333 = extractvalue { i32, i1 } %332, 1, !nosanitize !20
  br i1 %333, label %334, label %335, !prof !21, !nosanitize !20

334:                                              ; preds = %330
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

335:                                              ; preds = %330
  %336 = extractvalue { i32, i1 } %332, 0, !nosanitize !20
  store i32 %336, ptr %0, align 4, !tbaa !4
  %337 = icmp ult i32 %336, %313
  br i1 %337, label %315, label %.loopexit93, !llvm.loop !47

338:                                              ; preds = %320
  %339 = icmp slt i32 %328, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %338
  %341 = load i32, ptr %314, align 4, !tbaa !4
  %342 = icmp eq i32 %341, 11
  br i1 %342, label %343, label %.loopexit99

343:                                              ; preds = %340
  store i32 1, ptr %38, align 4, !tbaa !17
  %344 = load i32, ptr %0, align 4, !tbaa !4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %.loopexit93

346:                                              ; preds = %343
  %347 = load i32, ptr %314, align 4, !tbaa !4
  br label %.loopexit99

348:                                              ; preds = %338
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit93

.loopexit99:                                      ; preds = %340, %346
  %349 = phi i32 [ %347, %346 ], [ %341, %340 ]
  %350 = tail call ptr @strerror(i32 noundef %349) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %350) #13
  br label %.loopexit94

.loopexit93:                                      ; preds = %335, %348, %343
  %351 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %351, ptr %27, align 8, !tbaa !22
  br label %.loopexit97

352:                                              ; preds = %77
  %353 = load i32, ptr %32, align 8, !tbaa !27
  %354 = shl i32 %353, 1
  store i32 %354, ptr %33, align 8, !tbaa !48
  %355 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %355, ptr %35, align 8, !tbaa !49
  br label %356

356:                                              ; preds = %433, %352
  %357 = phi i32 [ 0, %352 ], [ %418, %433 ]
  %358 = load i32, ptr %30, align 8, !tbaa !34
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %417

360:                                              ; preds = %356
  %361 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %361, label %.loopexit90 [
    i32 0, label %362
    i32 -5, label %362
  ]

362:                                              ; preds = %360, %360
  %363 = load i32, ptr %29, align 8, !tbaa !24
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %413

365:                                              ; preds = %362
  %366 = load i32, ptr %32, align 8, !tbaa !27
  %367 = load ptr, ptr %37, align 8, !tbaa !29
  store i32 0, ptr %38, align 4, !tbaa !17
  %368 = tail call ptr @__errno_location() #17
  store i32 0, ptr %368, align 4, !tbaa !4
  br label %369

369:                                              ; preds = %388, %365
  %370 = phi i32 [ 0, %365 ], [ %389, %388 ]
  %371 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %366, i32 %370), !nosanitize !20
  %372 = extractvalue { i32, i1 } %371, 1, !nosanitize !20
  br i1 %372, label %373, label %374, !prof !21, !nosanitize !20

373:                                              ; preds = %369
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

374:                                              ; preds = %369
  %375 = extractvalue { i32, i1 } %371, 0, !nosanitize !20
  %376 = tail call i32 @llvm.umin.i32(i32 %375, i32 1073741824)
  %377 = load i32, ptr %39, align 4, !tbaa !46
  %378 = zext i32 %370 to i64
  %379 = getelementptr inbounds nuw i8, ptr %367, i64 %378
  %380 = zext nneg i32 %376 to i64
  %381 = tail call i64 @read(i32 noundef %377, ptr noundef %379, i64 noundef %380) #13
  %382 = trunc i64 %381 to i32
  %383 = icmp slt i32 %382, 1
  br i1 %383, label %391, label %384

384:                                              ; preds = %374
  %385 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %370, i32 %382), !nosanitize !20
  %386 = extractvalue { i32, i1 } %385, 1, !nosanitize !20
  br i1 %386, label %387, label %388, !prof !21, !nosanitize !20

387:                                              ; preds = %384
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

388:                                              ; preds = %384
  %389 = extractvalue { i32, i1 } %385, 0, !nosanitize !20
  %390 = icmp ult i32 %389, %366
  br i1 %390, label %369, label %.loopexit84, !llvm.loop !47

391:                                              ; preds = %374
  %392 = icmp slt i32 %382, 0
  br i1 %392, label %393, label %400

393:                                              ; preds = %391
  %394 = load i32, ptr %368, align 4, !tbaa !4
  %395 = icmp eq i32 %394, 11
  br i1 %395, label %396, label %.loopexit92

396:                                              ; preds = %393
  store i32 1, ptr %38, align 4, !tbaa !17
  %397 = icmp eq i32 %370, 0
  br i1 %397, label %398, label %.loopexit84

398:                                              ; preds = %396
  %399 = load i32, ptr %368, align 4, !tbaa !4
  br label %.loopexit92

400:                                              ; preds = %391
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit84

.loopexit92:                                      ; preds = %393, %398
  %401 = phi i32 [ %399, %398 ], [ %394, %393 ]
  %402 = tail call ptr @strerror(i32 noundef %401) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %402) #13
  %403 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit90

.loopexit84:                                      ; preds = %388, %400, %396
  %404 = phi i32 [ %370, %396 ], [ %370, %400 ], [ %389, %388 ]
  %405 = load i32, ptr %30, align 8, !tbaa !34
  %406 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %405, i32 %404), !nosanitize !20
  %407 = extractvalue { i32, i1 } %406, 1, !nosanitize !20
  br i1 %407, label %408, label %409, !prof !21, !nosanitize !20

408:                                              ; preds = %.loopexit84
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

409:                                              ; preds = %.loopexit84
  %410 = extractvalue { i32, i1 } %406, 0, !nosanitize !20
  store i32 %410, ptr %30, align 8, !tbaa !34
  %411 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %411, ptr %36, align 8, !tbaa !35
  %412 = icmp eq i32 %410, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %409, %362
  %414 = load i32, ptr %38, align 4, !tbaa !17
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %.loopexit90

416:                                              ; preds = %413
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit90

417:                                              ; preds = %409, %356
  %418 = tail call i32 @inflate(ptr noundef nonnull %36, i32 noundef 0) #13
  %419 = load i32, ptr %33, align 8, !tbaa !48
  %420 = icmp ult i32 %419, %354
  br i1 %420, label %421, label %422

421:                                              ; preds = %417
  store i32 0, ptr %40, align 4, !tbaa !33
  br label %422

422:                                              ; preds = %421, %417
  switch i32 %418, label %433 [
    i32 -2, label %423
    i32 2, label %423
    i32 -4, label %424
    i32 -3, label %425
  ]

423:                                              ; preds = %422, %422
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit90

424:                                              ; preds = %422
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit90

425:                                              ; preds = %422
  %426 = load i32, ptr %40, align 4, !tbaa !33
  %427 = icmp eq i32 %426, 1
  br i1 %427, label %428, label %429

428:                                              ; preds = %425
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !24
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %.loopexit90

429:                                              ; preds = %425
  %430 = load ptr, ptr %41, align 8, !tbaa !50
  %431 = icmp eq ptr %430, null
  %432 = select i1 %431, ptr @.str.6, ptr %430
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %432) #13
  br label %.loopexit90

433:                                              ; preds = %422
  %434 = icmp ne i32 %419, 0
  %435 = icmp ne i32 %418, 1
  %436 = select i1 %434, i1 %435, i1 false
  br i1 %436, label %356, label %.loopexit90, !llvm.loop !51

.loopexit90:                                      ; preds = %433, %360, %429, %428, %424, %423, %416, %413, %.loopexit92
  %437 = phi i32 [ %403, %.loopexit92 ], [ %357, %413 ], [ %357, %416 ], [ %418, %423 ], [ -4, %424 ], [ 0, %428 ], [ -3, %429 ], [ %361, %360 ], [ %418, %433 ]
  %438 = load i32, ptr %33, align 8, !tbaa !48
  %439 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %354, i32 %438), !nosanitize !20
  %440 = extractvalue { i32, i1 } %439, 1, !nosanitize !20
  br i1 %440, label %441, label %442, !prof !21, !nosanitize !20

441:                                              ; preds = %.loopexit90
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

442:                                              ; preds = %.loopexit90
  %443 = extractvalue { i32, i1 } %439, 0, !nosanitize !20
  store i32 %443, ptr %0, align 8, !tbaa !19
  %444 = load ptr, ptr %35, align 8, !tbaa !49
  %445 = zext i32 %443 to i64
  %446 = sub nsw i64 0, %445
  %447 = getelementptr inbounds i8, ptr %444, i64 %446
  store ptr %447, ptr %27, align 8, !tbaa !22
  switch i32 %437, label %.loopexit94 [
    i32 1, label %448
    i32 0, label %450
  ]

448:                                              ; preds = %442
  store i32 0, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %450

449:                                              ; preds = %77
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit94

450:                                              ; preds = %448, %442, %307, %301
  %451 = load i32, ptr %0, align 8, !tbaa !19
  br label %452

452:                                              ; preds = %450, %303
  %453 = phi i32 [ %451, %450 ], [ %306, %303 ]
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %.loopexit97

455:                                              ; preds = %452
  %456 = load i32, ptr %29, align 8, !tbaa !24
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %.backedge, label %458

458:                                              ; preds = %455
  %459 = load i32, ptr %30, align 8, !tbaa !34
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %.loopexit97, label %.backedge

.backedge:                                        ; preds = %458, %455
  br label %77, !llvm.loop !52

.loopexit97:                                      ; preds = %458, %452, %307, %.loopexit93
  %461 = load i64, ptr %23, align 8, !tbaa !18
  br label %462

462:                                              ; preds = %.loopexit97, %69
  %463 = phi i64 [ %461, %.loopexit97 ], [ %70, %69 ]
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %.loopexit98, label %45, !llvm.loop !53

.loopexit98:                                      ; preds = %462, %74, %22
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %483

483:                                              ; preds = %1074, %.loopexit98
  %484 = phi ptr [ %1, %.loopexit98 ], [ %1069, %1074 ]
  %485 = phi i64 [ %20, %.loopexit98 ], [ %1070, %1074 ]
  %486 = phi i64 [ 0, %.loopexit98 ], [ %1071, %1074 ]
  %487 = tail call i64 @llvm.umin.i64(i64 %485, i64 4294967295)
  %488 = trunc nuw i64 %487 to i32
  %489 = load i32, ptr %0, align 8, !tbaa !19
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %506, label %491

491:                                              ; preds = %483
  %492 = tail call i32 @llvm.umin.i32(i32 %489, i32 %488)
  %493 = load ptr, ptr %465, align 8, !tbaa !22
  %494 = zext i32 %492 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %484, ptr align 1 %493, i64 %494, i1 false)
  %495 = load ptr, ptr %465, align 8, !tbaa !22
  %496 = getelementptr inbounds nuw i8, ptr %495, i64 %494
  store ptr %496, ptr %465, align 8, !tbaa !22
  %497 = load i32, ptr %0, align 8, !tbaa !19
  %498 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %497, i32 %492), !nosanitize !20
  %499 = extractvalue { i32, i1 } %498, 1, !nosanitize !20
  br i1 %499, label %500, label %501, !prof !21, !nosanitize !20

500:                                              ; preds = %491
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

501:                                              ; preds = %491
  %502 = extractvalue { i32, i1 } %498, 0, !nosanitize !20
  store i32 %502, ptr %0, align 8, !tbaa !19
  %503 = load i32, ptr %10, align 8, !tbaa !16
  %504 = icmp ne i32 %503, 0
  %505 = sext i1 %504 to i32
  br label %1050

506:                                              ; preds = %483
  %507 = load i32, ptr %466, align 8, !tbaa !24
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %512, label %509

509:                                              ; preds = %506
  %510 = load i32, ptr %467, align 8, !tbaa !25
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %.loopexit82, label %512

512:                                              ; preds = %509, %506
  %513 = load i32, ptr %468, align 8, !tbaa !26
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %.preheader893, label %515

515:                                              ; preds = %512
  %516 = load i32, ptr %469, align 8, !tbaa !27
  %517 = shl i32 %516, 1
  %518 = icmp ugt i32 %517, %488
  br i1 %518, label %.preheader893, label %909

.preheader893:                                    ; preds = %515, %512
  br label %519

519:                                              ; preds = %.preheader893, %904
  %520 = phi i32 [ %905, %904 ], [ %513, %.preheader893 ]
  switch i32 %520, label %892 [
    i32 0, label %521
    i32 1, label %752
    i32 2, label %795
  ]

521:                                              ; preds = %519
  %522 = load i32, ptr %469, align 8, !tbaa !27
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %543

524:                                              ; preds = %521
  %525 = load i32, ptr %480, align 4, !tbaa !28
  %526 = zext i32 %525 to i64
  %527 = tail call noalias ptr @malloc(i64 noundef %526) #16
  store ptr %527, ptr %473, align 8, !tbaa !29
  %528 = load i32, ptr %480, align 4, !tbaa !28
  %529 = shl i32 %528, 1
  %530 = zext i32 %529 to i64
  %531 = tail call noalias ptr @malloc(i64 noundef %530) #16
  store ptr %531, ptr %479, align 8, !tbaa !30
  %532 = icmp eq ptr %527, null
  %533 = icmp eq ptr %531, null
  %534 = or i1 %532, %533
  br i1 %534, label %535, label %536

535:                                              ; preds = %524
  tail call void @free(ptr noundef %531) #13
  tail call void @free(ptr noundef %527) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit76

536:                                              ; preds = %524
  %537 = load i32, ptr %480, align 4, !tbaa !28
  store i32 %537, ptr %469, align 8, !tbaa !27
  store i32 0, ptr %467, align 8, !tbaa !25
  store ptr null, ptr %472, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %481, i8 0, i64 24, i1 false)
  %538 = tail call i32 @inflateInit2_(ptr noundef nonnull %472, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %543, label %540

540:                                              ; preds = %536
  %541 = load ptr, ptr %479, align 8, !tbaa !30
  tail call void @free(ptr noundef %541) #13
  %542 = load ptr, ptr %473, align 8, !tbaa !29
  tail call void @free(ptr noundef %542) #13
  store i32 0, ptr %469, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit76

543:                                              ; preds = %536, %521
  %544 = load i32, ptr %482, align 8, !tbaa !32
  %545 = icmp eq i32 %544, -1
  br i1 %545, label %549, label %546

546:                                              ; preds = %543
  %547 = load i32, ptr %476, align 4, !tbaa !33
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %554

549:                                              ; preds = %546, %543
  %550 = tail call i32 @inflateReset(ptr noundef nonnull %472) #13
  store i32 2, ptr %468, align 8, !tbaa !26
  %551 = load i32, ptr %476, align 4, !tbaa !33
  %552 = icmp ne i32 %551, -1
  %553 = zext i1 %552 to i32
  store i32 %553, ptr %476, align 4, !tbaa !33
  store i32 0, ptr %482, align 8, !tbaa !32
  br label %749

554:                                              ; preds = %546
  %555 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %555, label %.loopexit76 [
    i32 0, label %556
    i32 -5, label %556
  ]

556:                                              ; preds = %554, %554
  %557 = load i32, ptr %466, align 8, !tbaa !24
  %558 = icmp eq i32 %557, 0
  %559 = load i32, ptr %467, align 8, !tbaa !34
  br i1 %558, label %560, label %717

560:                                              ; preds = %556
  %561 = icmp eq i32 %559, 0
  br i1 %561, label %663, label %562

562:                                              ; preds = %560
  %563 = load ptr, ptr %473, align 8, !tbaa !29
  %564 = load ptr, ptr %472, align 8, !tbaa !35
  %565 = icmp eq ptr %564, %563
  br i1 %565, label %663, label %566

566:                                              ; preds = %562
  %567 = ptrtoaddr ptr %564 to i64
  %568 = ptrtoaddr ptr %563 to i64
  %569 = zext i32 %559 to i64
  %570 = icmp ult i32 %559, 4
  %571 = sub i64 %568, %567
  %572 = icmp ult i64 %571, 32
  %573 = or i1 %570, %572
  br i1 %573, label %613, label %574

574:                                              ; preds = %566
  %575 = icmp ult i32 %559, 32
  br i1 %575, label %597, label %576

576:                                              ; preds = %574
  %577 = and i64 %569, 4294967264
  br label %578

578:                                              ; preds = %578, %576
  %579 = phi i64 [ 0, %576 ], [ %586, %578 ]
  %580 = getelementptr i8, ptr %563, i64 %579
  %581 = getelementptr i8, ptr %564, i64 %579
  %582 = getelementptr i8, ptr %581, i64 16
  %583 = load <16 x i8>, ptr %581, align 1, !tbaa !36
  %584 = load <16 x i8>, ptr %582, align 1, !tbaa !36
  %585 = getelementptr i8, ptr %580, i64 16
  store <16 x i8> %583, ptr %580, align 1, !tbaa !36
  store <16 x i8> %584, ptr %585, align 1, !tbaa !36
  %586 = add nuw nsw i64 %579, 32
  %587 = icmp eq i64 %586, %577
  br i1 %587, label %588, label %578, !llvm.loop !54

588:                                              ; preds = %578
  %589 = icmp eq i64 %577, %569
  br i1 %589, label %.loopexit69, label %590

590:                                              ; preds = %588
  %591 = trunc nuw i64 %577 to i32
  %592 = sub i32 %559, %591
  %593 = getelementptr i8, ptr %564, i64 %577
  %594 = getelementptr i8, ptr %563, i64 %577
  %595 = and i64 %569, 28
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %613, label %597, !prof !41

597:                                              ; preds = %590, %574
  %598 = phi i64 [ %577, %590 ], [ 0, %574 ]
  %599 = and i64 %569, 4294967292
  br label %600

600:                                              ; preds = %600, %597
  %601 = phi i64 [ %598, %597 ], [ %605, %600 ]
  %602 = getelementptr i8, ptr %563, i64 %601
  %603 = getelementptr i8, ptr %564, i64 %601
  %604 = load <4 x i8>, ptr %603, align 1, !tbaa !36
  store <4 x i8> %604, ptr %602, align 1, !tbaa !36
  %605 = add nuw i64 %601, 4
  %606 = icmp eq i64 %605, %599
  br i1 %606, label %607, label %600, !llvm.loop !55

607:                                              ; preds = %600
  %608 = getelementptr i8, ptr %563, i64 %599
  %609 = getelementptr i8, ptr %564, i64 %599
  %610 = trunc nuw i64 %599 to i32
  %611 = sub i32 %559, %610
  %612 = icmp eq i64 %599, %569
  br i1 %612, label %.loopexit69, label %613

613:                                              ; preds = %607, %590, %566
  %614 = phi ptr [ %563, %566 ], [ %594, %590 ], [ %608, %607 ]
  %615 = phi ptr [ %564, %566 ], [ %593, %590 ], [ %609, %607 ]
  %616 = phi i32 [ %559, %566 ], [ %592, %590 ], [ %611, %607 ]
  %617 = add i32 %616, -1
  %618 = and i32 %616, 7
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %.loopexit71, label %.preheader70

.preheader70:                                     ; preds = %613, %.preheader70
  %620 = phi ptr [ %624, %.preheader70 ], [ %614, %613 ]
  %621 = phi ptr [ %625, %.preheader70 ], [ %615, %613 ]
  %622 = phi i32 [ %626, %.preheader70 ], [ 0, %613 ]
  %623 = load i8, ptr %621, align 1, !tbaa !36
  store i8 %623, ptr %620, align 1, !tbaa !36
  %624 = getelementptr inbounds nuw i8, ptr %620, i64 1
  %625 = getelementptr inbounds nuw i8, ptr %621, i64 1
  %626 = add nuw nsw i32 %622, 1
  %627 = icmp eq i32 %626, %618
  br i1 %627, label %.loopexit71.loopexit, label %.preheader70, !llvm.loop !56

.loopexit71.loopexit:                             ; preds = %.preheader70
  %628 = and i32 %616, -8
  br label %.loopexit71

.loopexit71:                                      ; preds = %.loopexit71.loopexit, %613
  %629 = phi ptr [ %614, %613 ], [ %624, %.loopexit71.loopexit ]
  %630 = phi ptr [ %615, %613 ], [ %625, %.loopexit71.loopexit ]
  %631 = phi i32 [ %616, %613 ], [ %628, %.loopexit71.loopexit ]
  %632 = icmp ult i32 %617, 7
  br i1 %632, label %.loopexit69, label %.preheader

.preheader:                                       ; preds = %.loopexit71, %.preheader
  %633 = phi ptr [ %659, %.preheader ], [ %629, %.loopexit71 ]
  %634 = phi ptr [ %660, %.preheader ], [ %630, %.loopexit71 ]
  %635 = phi i32 [ %658, %.preheader ], [ %631, %.loopexit71 ]
  %636 = load i8, ptr %634, align 1, !tbaa !36
  store i8 %636, ptr %633, align 1, !tbaa !36
  %637 = getelementptr inbounds nuw i8, ptr %633, i64 1
  %638 = getelementptr inbounds nuw i8, ptr %634, i64 1
  %639 = load i8, ptr %638, align 1, !tbaa !36
  store i8 %639, ptr %637, align 1, !tbaa !36
  %640 = getelementptr inbounds nuw i8, ptr %633, i64 2
  %641 = getelementptr inbounds nuw i8, ptr %634, i64 2
  %642 = load i8, ptr %641, align 1, !tbaa !36
  store i8 %642, ptr %640, align 1, !tbaa !36
  %643 = getelementptr inbounds nuw i8, ptr %633, i64 3
  %644 = getelementptr inbounds nuw i8, ptr %634, i64 3
  %645 = load i8, ptr %644, align 1, !tbaa !36
  store i8 %645, ptr %643, align 1, !tbaa !36
  %646 = getelementptr inbounds nuw i8, ptr %633, i64 4
  %647 = getelementptr inbounds nuw i8, ptr %634, i64 4
  %648 = load i8, ptr %647, align 1, !tbaa !36
  store i8 %648, ptr %646, align 1, !tbaa !36
  %649 = getelementptr inbounds nuw i8, ptr %633, i64 5
  %650 = getelementptr inbounds nuw i8, ptr %634, i64 5
  %651 = load i8, ptr %650, align 1, !tbaa !36
  store i8 %651, ptr %649, align 1, !tbaa !36
  %652 = getelementptr inbounds nuw i8, ptr %633, i64 6
  %653 = getelementptr inbounds nuw i8, ptr %634, i64 6
  %654 = load i8, ptr %653, align 1, !tbaa !36
  store i8 %654, ptr %652, align 1, !tbaa !36
  %655 = getelementptr inbounds nuw i8, ptr %633, i64 7
  %656 = getelementptr inbounds nuw i8, ptr %634, i64 7
  %657 = load i8, ptr %656, align 1, !tbaa !36
  store i8 %657, ptr %655, align 1, !tbaa !36
  %658 = add i32 %635, -8
  %659 = getelementptr inbounds nuw i8, ptr %633, i64 8
  %660 = getelementptr inbounds nuw i8, ptr %634, i64 8
  %661 = icmp eq i32 %658, 0
  br i1 %661, label %.loopexit69, label %.preheader, !llvm.loop !57

.loopexit69:                                      ; preds = %.preheader, %.loopexit71, %607, %588
  %662 = load i32, ptr %467, align 8, !tbaa !34
  br label %663

663:                                              ; preds = %.loopexit69, %562, %560
  %664 = phi i32 [ %662, %.loopexit69 ], [ %559, %562 ], [ 0, %560 ]
  %665 = load i32, ptr %469, align 8, !tbaa !27
  %666 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %665, i32 %664), !nosanitize !20
  %667 = extractvalue { i32, i1 } %666, 1, !nosanitize !20
  br i1 %667, label %668, label %669, !prof !21, !nosanitize !20

668:                                              ; preds = %663
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

669:                                              ; preds = %663
  %670 = extractvalue { i32, i1 } %666, 0, !nosanitize !20
  %671 = load ptr, ptr %473, align 8, !tbaa !29
  %672 = zext i32 %664 to i64
  %673 = getelementptr inbounds nuw i8, ptr %671, i64 %672
  store i32 0, ptr %474, align 4, !tbaa !17
  %674 = tail call ptr @__errno_location() #17
  store i32 0, ptr %674, align 4, !tbaa !4
  br label %675

675:                                              ; preds = %694, %669
  %676 = phi i32 [ 0, %669 ], [ %695, %694 ]
  %677 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %670, i32 %676), !nosanitize !20
  %678 = extractvalue { i32, i1 } %677, 1, !nosanitize !20
  br i1 %678, label %679, label %680, !prof !21, !nosanitize !20

679:                                              ; preds = %675
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

680:                                              ; preds = %675
  %681 = extractvalue { i32, i1 } %677, 0, !nosanitize !20
  %682 = tail call i32 @llvm.umin.i32(i32 %681, i32 1073741824)
  %683 = load i32, ptr %475, align 4, !tbaa !46
  %684 = zext i32 %676 to i64
  %685 = getelementptr inbounds nuw i8, ptr %673, i64 %684
  %686 = zext nneg i32 %682 to i64
  %687 = tail call i64 @read(i32 noundef %683, ptr noundef %685, i64 noundef %686) #13
  %688 = trunc i64 %687 to i32
  %689 = icmp slt i32 %688, 1
  br i1 %689, label %697, label %690

690:                                              ; preds = %680
  %691 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %676, i32 %688), !nosanitize !20
  %692 = extractvalue { i32, i1 } %691, 1, !nosanitize !20
  br i1 %692, label %693, label %694, !prof !21, !nosanitize !20

693:                                              ; preds = %690
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

694:                                              ; preds = %690
  %695 = extractvalue { i32, i1 } %691, 0, !nosanitize !20
  %696 = icmp ult i32 %695, %670
  br i1 %696, label %675, label %.loopexit68, !llvm.loop !47

697:                                              ; preds = %680
  %698 = icmp slt i32 %688, 0
  br i1 %698, label %699, label %706

699:                                              ; preds = %697
  %700 = load i32, ptr %674, align 4, !tbaa !4
  %701 = icmp eq i32 %700, 11
  br i1 %701, label %702, label %.loopexit77

702:                                              ; preds = %699
  store i32 1, ptr %474, align 4, !tbaa !17
  %703 = icmp eq i32 %676, 0
  br i1 %703, label %704, label %.loopexit68

704:                                              ; preds = %702
  %705 = load i32, ptr %674, align 4, !tbaa !4
  br label %.loopexit77

706:                                              ; preds = %697
  store i32 1, ptr %466, align 8, !tbaa !24
  br label %.loopexit68

.loopexit77:                                      ; preds = %699, %704
  %707 = phi i32 [ %705, %704 ], [ %700, %699 ]
  %708 = tail call ptr @strerror(i32 noundef %707) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %708) #13
  br label %.loopexit76

.loopexit68:                                      ; preds = %694, %706, %702
  %709 = phi i32 [ %676, %702 ], [ %676, %706 ], [ %695, %694 ]
  %710 = load i32, ptr %467, align 8, !tbaa !34
  %711 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %710, i32 %709), !nosanitize !20
  %712 = extractvalue { i32, i1 } %711, 1, !nosanitize !20
  br i1 %712, label %713, label %714, !prof !21, !nosanitize !20

713:                                              ; preds = %.loopexit68
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

714:                                              ; preds = %.loopexit68
  %715 = extractvalue { i32, i1 } %711, 0, !nosanitize !20
  store i32 %715, ptr %467, align 8, !tbaa !34
  %716 = load ptr, ptr %473, align 8, !tbaa !29
  store ptr %716, ptr %472, align 8, !tbaa !35
  br label %717

717:                                              ; preds = %714, %556
  %718 = phi i32 [ %715, %714 ], [ %559, %556 ]
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %749, label %720

720:                                              ; preds = %717
  %721 = load i32, ptr %474, align 4, !tbaa !17
  %722 = icmp ne i32 %721, 0
  %723 = icmp ult i32 %718, 4
  %724 = and i1 %723, %722
  br i1 %724, label %749, label %725

725:                                              ; preds = %720
  %726 = icmp ugt i32 %718, 3
  %727 = load ptr, ptr %472, align 8, !tbaa !35
  br i1 %726, label %728, label %745

728:                                              ; preds = %725
  %729 = load i8, ptr %727, align 1, !tbaa !36
  %730 = icmp eq i8 %729, 31
  br i1 %730, label %731, label %745

731:                                              ; preds = %728
  %732 = getelementptr inbounds nuw i8, ptr %727, i64 1
  %733 = load i8, ptr %732, align 1, !tbaa !36
  %734 = icmp eq i8 %733, -117
  br i1 %734, label %735, label %745

735:                                              ; preds = %731
  %736 = getelementptr inbounds nuw i8, ptr %727, i64 2
  %737 = load i8, ptr %736, align 1, !tbaa !36
  %738 = icmp eq i8 %737, 8
  br i1 %738, label %739, label %745

739:                                              ; preds = %735
  %740 = getelementptr inbounds nuw i8, ptr %727, i64 3
  %741 = load i8, ptr %740, align 1, !tbaa !36
  %742 = icmp ult i8 %741, 32
  br i1 %742, label %743, label %745

743:                                              ; preds = %739
  %744 = tail call i32 @inflateReset(ptr noundef nonnull %472) #13
  store i32 2, ptr %468, align 8, !tbaa !26
  store i32 1, ptr %476, align 4, !tbaa !33
  store i32 0, ptr %482, align 8, !tbaa !32
  br label %893

745:                                              ; preds = %739, %735, %731, %728, %725
  %746 = load ptr, ptr %479, align 8, !tbaa !30
  store ptr %746, ptr %465, align 8, !tbaa !22
  %747 = zext i32 %718 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %746, ptr align 1 %727, i64 %747, i1 false)
  %748 = load i32, ptr %467, align 8, !tbaa !34
  store i32 %748, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %467, align 8, !tbaa !34
  store i32 1, ptr %468, align 8, !tbaa !26
  br label %895

749:                                              ; preds = %720, %717, %549
  %750 = load i32, ptr %468, align 8, !tbaa !26
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %.loopexit78, label %893

752:                                              ; preds = %519
  %753 = load ptr, ptr %479, align 8, !tbaa !30
  %754 = load i32, ptr %469, align 8, !tbaa !27
  %755 = shl i32 %754, 1
  store i32 0, ptr %474, align 4, !tbaa !17
  %756 = tail call ptr @__errno_location() #17
  store i32 0, ptr %756, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %757

757:                                              ; preds = %777, %752
  %758 = phi i32 [ %778, %777 ], [ 0, %752 ]
  %759 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %755, i32 %758), !nosanitize !20
  %760 = extractvalue { i32, i1 } %759, 1, !nosanitize !20
  br i1 %760, label %761, label %762, !prof !21, !nosanitize !20

761:                                              ; preds = %757
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

762:                                              ; preds = %757
  %763 = extractvalue { i32, i1 } %759, 0, !nosanitize !20
  %764 = tail call i32 @llvm.umin.i32(i32 %763, i32 1073741824)
  %765 = load i32, ptr %475, align 4, !tbaa !46
  %766 = zext i32 %758 to i64
  %767 = getelementptr inbounds nuw i8, ptr %753, i64 %766
  %768 = zext nneg i32 %764 to i64
  %769 = tail call i64 @read(i32 noundef %765, ptr noundef %767, i64 noundef %768) #13
  %770 = trunc i64 %769 to i32
  %771 = icmp slt i32 %770, 1
  br i1 %771, label %780, label %772

772:                                              ; preds = %762
  %773 = load i32, ptr %0, align 4, !tbaa !4
  %774 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %773, i32 %770), !nosanitize !20
  %775 = extractvalue { i32, i1 } %774, 1, !nosanitize !20
  br i1 %775, label %776, label %777, !prof !21, !nosanitize !20

776:                                              ; preds = %772
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

777:                                              ; preds = %772
  %778 = extractvalue { i32, i1 } %774, 0, !nosanitize !20
  store i32 %778, ptr %0, align 4, !tbaa !4
  %779 = icmp ult i32 %778, %755
  br i1 %779, label %757, label %.loopexit75, !llvm.loop !47

780:                                              ; preds = %762
  %781 = icmp slt i32 %770, 0
  br i1 %781, label %782, label %790

782:                                              ; preds = %780
  %783 = load i32, ptr %756, align 4, !tbaa !4
  %784 = icmp eq i32 %783, 11
  br i1 %784, label %785, label %791

785:                                              ; preds = %782
  store i32 1, ptr %474, align 4, !tbaa !17
  %786 = load i32, ptr %0, align 4, !tbaa !4
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %788, label %.loopexit75

788:                                              ; preds = %785
  %789 = load i32, ptr %756, align 4, !tbaa !4
  br label %791

790:                                              ; preds = %780
  store i32 1, ptr %466, align 8, !tbaa !24
  br label %.loopexit75

791:                                              ; preds = %788, %782
  %792 = phi i32 [ %789, %788 ], [ %783, %782 ]
  %793 = tail call ptr @strerror(i32 noundef %792) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %793) #13
  br label %.loopexit76

.loopexit75:                                      ; preds = %777, %790, %785
  %794 = load ptr, ptr %479, align 8, !tbaa !30
  store ptr %794, ptr %465, align 8, !tbaa !22
  br label %.loopexit78

795:                                              ; preds = %519
  %796 = load i32, ptr %469, align 8, !tbaa !27
  %797 = shl i32 %796, 1
  store i32 %797, ptr %470, align 8, !tbaa !48
  %798 = load ptr, ptr %479, align 8, !tbaa !30
  store ptr %798, ptr %471, align 8, !tbaa !49
  br label %799

799:                                              ; preds = %876, %795
  %800 = phi i32 [ 0, %795 ], [ %861, %876 ]
  %801 = load i32, ptr %467, align 8, !tbaa !34
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %860

803:                                              ; preds = %799
  %804 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %804, label %.loopexit72 [
    i32 0, label %805
    i32 -5, label %805
  ]

805:                                              ; preds = %803, %803
  %806 = load i32, ptr %466, align 8, !tbaa !24
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %808, label %856

808:                                              ; preds = %805
  %809 = load i32, ptr %469, align 8, !tbaa !27
  %810 = load ptr, ptr %473, align 8, !tbaa !29
  store i32 0, ptr %474, align 4, !tbaa !17
  %811 = tail call ptr @__errno_location() #17
  store i32 0, ptr %811, align 4, !tbaa !4
  br label %812

812:                                              ; preds = %831, %808
  %813 = phi i32 [ 0, %808 ], [ %832, %831 ]
  %814 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %809, i32 %813), !nosanitize !20
  %815 = extractvalue { i32, i1 } %814, 1, !nosanitize !20
  br i1 %815, label %816, label %817, !prof !21, !nosanitize !20

816:                                              ; preds = %812
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

817:                                              ; preds = %812
  %818 = extractvalue { i32, i1 } %814, 0, !nosanitize !20
  %819 = tail call i32 @llvm.umin.i32(i32 %818, i32 1073741824)
  %820 = load i32, ptr %475, align 4, !tbaa !46
  %821 = zext i32 %813 to i64
  %822 = getelementptr inbounds nuw i8, ptr %810, i64 %821
  %823 = zext nneg i32 %819 to i64
  %824 = tail call i64 @read(i32 noundef %820, ptr noundef %822, i64 noundef %823) #13
  %825 = trunc i64 %824 to i32
  %826 = icmp slt i32 %825, 1
  br i1 %826, label %834, label %827

827:                                              ; preds = %817
  %828 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %813, i32 %825), !nosanitize !20
  %829 = extractvalue { i32, i1 } %828, 1, !nosanitize !20
  br i1 %829, label %830, label %831, !prof !21, !nosanitize !20

830:                                              ; preds = %827
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

831:                                              ; preds = %827
  %832 = extractvalue { i32, i1 } %828, 0, !nosanitize !20
  %833 = icmp ult i32 %832, %809
  br i1 %833, label %812, label %.loopexit, !llvm.loop !47

834:                                              ; preds = %817
  %835 = icmp slt i32 %825, 0
  br i1 %835, label %836, label %843

836:                                              ; preds = %834
  %837 = load i32, ptr %811, align 4, !tbaa !4
  %838 = icmp eq i32 %837, 11
  br i1 %838, label %839, label %.loopexit73

839:                                              ; preds = %836
  store i32 1, ptr %474, align 4, !tbaa !17
  %840 = icmp eq i32 %813, 0
  br i1 %840, label %841, label %.loopexit

841:                                              ; preds = %839
  %842 = load i32, ptr %811, align 4, !tbaa !4
  br label %.loopexit73

843:                                              ; preds = %834
  store i32 1, ptr %466, align 8, !tbaa !24
  br label %.loopexit

.loopexit73:                                      ; preds = %836, %841
  %844 = phi i32 [ %842, %841 ], [ %837, %836 ]
  %845 = tail call ptr @strerror(i32 noundef %844) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %845) #13
  %846 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit72

.loopexit:                                        ; preds = %831, %843, %839
  %847 = phi i32 [ %813, %839 ], [ %813, %843 ], [ %832, %831 ]
  %848 = load i32, ptr %467, align 8, !tbaa !34
  %849 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %848, i32 %847), !nosanitize !20
  %850 = extractvalue { i32, i1 } %849, 1, !nosanitize !20
  br i1 %850, label %851, label %852, !prof !21, !nosanitize !20

851:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

852:                                              ; preds = %.loopexit
  %853 = extractvalue { i32, i1 } %849, 0, !nosanitize !20
  store i32 %853, ptr %467, align 8, !tbaa !34
  %854 = load ptr, ptr %473, align 8, !tbaa !29
  store ptr %854, ptr %472, align 8, !tbaa !35
  %855 = icmp eq i32 %853, 0
  br i1 %855, label %856, label %860

856:                                              ; preds = %852, %805
  %857 = load i32, ptr %474, align 4, !tbaa !17
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %859, label %.loopexit72

859:                                              ; preds = %856
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit72

860:                                              ; preds = %852, %799
  %861 = tail call i32 @inflate(ptr noundef nonnull %472, i32 noundef 0) #13
  %862 = load i32, ptr %470, align 8, !tbaa !48
  %863 = icmp ult i32 %862, %797
  br i1 %863, label %864, label %865

864:                                              ; preds = %860
  store i32 0, ptr %476, align 4, !tbaa !33
  br label %865

865:                                              ; preds = %864, %860
  switch i32 %861, label %876 [
    i32 -2, label %866
    i32 2, label %866
    i32 -4, label %867
    i32 -3, label %868
  ]

866:                                              ; preds = %865, %865
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit72

867:                                              ; preds = %865
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit72

868:                                              ; preds = %865
  %869 = load i32, ptr %476, align 4, !tbaa !33
  %870 = icmp eq i32 %869, 1
  br i1 %870, label %871, label %872

871:                                              ; preds = %868
  store i32 0, ptr %467, align 8, !tbaa !34
  store i32 1, ptr %466, align 8, !tbaa !24
  store i32 0, ptr %468, align 8, !tbaa !26
  br label %.loopexit72

872:                                              ; preds = %868
  %873 = load ptr, ptr %477, align 8, !tbaa !50
  %874 = icmp eq ptr %873, null
  %875 = select i1 %874, ptr @.str.6, ptr %873
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %875) #13
  br label %.loopexit72

876:                                              ; preds = %865
  %877 = icmp ne i32 %862, 0
  %878 = icmp ne i32 %861, 1
  %879 = select i1 %877, i1 %878, i1 false
  br i1 %879, label %799, label %.loopexit72, !llvm.loop !51

.loopexit72:                                      ; preds = %876, %803, %872, %871, %867, %866, %859, %856, %.loopexit73
  %880 = phi i32 [ %846, %.loopexit73 ], [ %800, %856 ], [ %800, %859 ], [ %861, %866 ], [ -4, %867 ], [ 0, %871 ], [ -3, %872 ], [ %861, %876 ], [ %804, %803 ]
  %881 = load i32, ptr %470, align 8, !tbaa !48
  %882 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %797, i32 %881), !nosanitize !20
  %883 = extractvalue { i32, i1 } %882, 1, !nosanitize !20
  br i1 %883, label %884, label %885, !prof !21, !nosanitize !20

884:                                              ; preds = %.loopexit72
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

885:                                              ; preds = %.loopexit72
  %886 = extractvalue { i32, i1 } %882, 0, !nosanitize !20
  store i32 %886, ptr %0, align 8, !tbaa !19
  %887 = load ptr, ptr %471, align 8, !tbaa !49
  %888 = zext i32 %886 to i64
  %889 = sub nsw i64 0, %888
  %890 = getelementptr inbounds i8, ptr %887, i64 %889
  store ptr %890, ptr %465, align 8, !tbaa !22
  switch i32 %880, label %.loopexit76 [
    i32 1, label %891
    i32 0, label %893
  ]

891:                                              ; preds = %885
  store i32 0, ptr %476, align 4, !tbaa !33
  store i32 0, ptr %468, align 8, !tbaa !26
  br label %893

892:                                              ; preds = %519
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit76

893:                                              ; preds = %891, %885, %749, %743
  %894 = load i32, ptr %0, align 8, !tbaa !19
  br label %895

895:                                              ; preds = %893, %745
  %896 = phi i32 [ %894, %893 ], [ %748, %745 ]
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %898, label %.loopexit78

898:                                              ; preds = %895
  %899 = load i32, ptr %466, align 8, !tbaa !24
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %904, label %901

901:                                              ; preds = %898
  %902 = load i32, ptr %467, align 8, !tbaa !34
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %.loopexit78, label %904

904:                                              ; preds = %901, %898
  %905 = load i32, ptr %468, align 8, !tbaa !26
  br label %519, !llvm.loop !52

.loopexit76:                                      ; preds = %885, %554, %892, %791, %.loopexit77, %540, %535
  %906 = load i32, ptr %0, align 8, !tbaa !19
  %907 = icmp eq i32 %906, 0
  %908 = sext i1 %907 to i32
  br label %.loopexit78

909:                                              ; preds = %515
  %910 = icmp eq i32 %513, 1
  br i1 %910, label %911, label %948

911:                                              ; preds = %909
  store i32 0, ptr %474, align 4, !tbaa !17
  %912 = tail call ptr @__errno_location() #17
  store i32 0, ptr %912, align 4, !tbaa !4
  br label %913

913:                                              ; preds = %932, %911
  %914 = phi i32 [ 0, %911 ], [ %933, %932 ]
  %915 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %488, i32 %914), !nosanitize !20
  %916 = extractvalue { i32, i1 } %915, 1, !nosanitize !20
  br i1 %916, label %917, label %918, !prof !21, !nosanitize !20

917:                                              ; preds = %913
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

918:                                              ; preds = %913
  %919 = extractvalue { i32, i1 } %915, 0, !nosanitize !20
  %920 = tail call i32 @llvm.umin.i32(i32 %919, i32 1073741824)
  %921 = load i32, ptr %475, align 4, !tbaa !46
  %922 = zext i32 %914 to i64
  %923 = getelementptr inbounds nuw i8, ptr %484, i64 %922
  %924 = zext nneg i32 %920 to i64
  %925 = tail call i64 @read(i32 noundef %921, ptr noundef %923, i64 noundef %924) #13
  %926 = trunc i64 %925 to i32
  %927 = icmp slt i32 %926, 1
  br i1 %927, label %935, label %928

928:                                              ; preds = %918
  %929 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %914, i32 %926), !nosanitize !20
  %930 = extractvalue { i32, i1 } %929, 1, !nosanitize !20
  br i1 %930, label %931, label %932, !prof !21, !nosanitize !20

931:                                              ; preds = %928
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

932:                                              ; preds = %928
  %933 = extractvalue { i32, i1 } %929, 0, !nosanitize !20
  %934 = icmp ult i32 %933, %488
  br i1 %934, label %913, label %1048, !llvm.loop !47

935:                                              ; preds = %918
  %936 = icmp slt i32 %926, 0
  br i1 %936, label %937, label %947

937:                                              ; preds = %935
  %938 = load i32, ptr %912, align 4, !tbaa !4
  %939 = icmp eq i32 %938, 11
  br i1 %939, label %940, label %944

940:                                              ; preds = %937
  store i32 1, ptr %474, align 4, !tbaa !17
  %941 = icmp eq i32 %914, 0
  br i1 %941, label %942, label %1050

942:                                              ; preds = %940
  %943 = load i32, ptr %912, align 4, !tbaa !4
  br label %944

944:                                              ; preds = %942, %937
  %945 = phi i32 [ %943, %942 ], [ %938, %937 ]
  %946 = tail call ptr @strerror(i32 noundef %945) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %946) #13
  br label %1050

947:                                              ; preds = %935
  store i32 1, ptr %466, align 8, !tbaa !24
  br label %1050

948:                                              ; preds = %909
  store i32 %488, ptr %470, align 8, !tbaa !58
  store ptr %484, ptr %471, align 8, !tbaa !59
  br label %949

949:                                              ; preds = %1026, %948
  %950 = phi i32 [ 0, %948 ], [ %1011, %1026 ]
  %951 = load i32, ptr %467, align 8, !tbaa !34
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %953, label %1010

953:                                              ; preds = %949
  %954 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %954, label %.loopexit79 [
    i32 0, label %955
    i32 -5, label %955
  ]

955:                                              ; preds = %953, %953
  %956 = load i32, ptr %466, align 8, !tbaa !24
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %958, label %1006

958:                                              ; preds = %955
  %959 = load i32, ptr %469, align 8, !tbaa !27
  %960 = load ptr, ptr %473, align 8, !tbaa !29
  store i32 0, ptr %474, align 4, !tbaa !17
  %961 = tail call ptr @__errno_location() #17
  store i32 0, ptr %961, align 4, !tbaa !4
  br label %962

962:                                              ; preds = %981, %958
  %963 = phi i32 [ 0, %958 ], [ %982, %981 ]
  %964 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %959, i32 %963), !nosanitize !20
  %965 = extractvalue { i32, i1 } %964, 1, !nosanitize !20
  br i1 %965, label %966, label %967, !prof !21, !nosanitize !20

966:                                              ; preds = %962
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

967:                                              ; preds = %962
  %968 = extractvalue { i32, i1 } %964, 0, !nosanitize !20
  %969 = tail call i32 @llvm.umin.i32(i32 %968, i32 1073741824)
  %970 = load i32, ptr %475, align 4, !tbaa !46
  %971 = zext i32 %963 to i64
  %972 = getelementptr inbounds nuw i8, ptr %960, i64 %971
  %973 = zext nneg i32 %969 to i64
  %974 = tail call i64 @read(i32 noundef %970, ptr noundef %972, i64 noundef %973) #13
  %975 = trunc i64 %974 to i32
  %976 = icmp slt i32 %975, 1
  br i1 %976, label %984, label %977

977:                                              ; preds = %967
  %978 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %963, i32 %975), !nosanitize !20
  %979 = extractvalue { i32, i1 } %978, 1, !nosanitize !20
  br i1 %979, label %980, label %981, !prof !21, !nosanitize !20

980:                                              ; preds = %977
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

981:                                              ; preds = %977
  %982 = extractvalue { i32, i1 } %978, 0, !nosanitize !20
  %983 = icmp ult i32 %982, %959
  br i1 %983, label %962, label %.loopexit74, !llvm.loop !47

984:                                              ; preds = %967
  %985 = icmp slt i32 %975, 0
  br i1 %985, label %986, label %993

986:                                              ; preds = %984
  %987 = load i32, ptr %961, align 4, !tbaa !4
  %988 = icmp eq i32 %987, 11
  br i1 %988, label %989, label %.loopexit81

989:                                              ; preds = %986
  store i32 1, ptr %474, align 4, !tbaa !17
  %990 = icmp eq i32 %963, 0
  br i1 %990, label %991, label %.loopexit74

991:                                              ; preds = %989
  %992 = load i32, ptr %961, align 4, !tbaa !4
  br label %.loopexit81

993:                                              ; preds = %984
  store i32 1, ptr %466, align 8, !tbaa !24
  br label %.loopexit74

.loopexit81:                                      ; preds = %986, %991
  %994 = phi i32 [ %992, %991 ], [ %987, %986 ]
  %995 = tail call ptr @strerror(i32 noundef %994) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %995) #13
  %996 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit79

.loopexit74:                                      ; preds = %981, %993, %989
  %997 = phi i32 [ %963, %989 ], [ %963, %993 ], [ %982, %981 ]
  %998 = load i32, ptr %467, align 8, !tbaa !34
  %999 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %998, i32 %997), !nosanitize !20
  %1000 = extractvalue { i32, i1 } %999, 1, !nosanitize !20
  br i1 %1000, label %1001, label %1002, !prof !21, !nosanitize !20

1001:                                             ; preds = %.loopexit74
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1002:                                             ; preds = %.loopexit74
  %1003 = extractvalue { i32, i1 } %999, 0, !nosanitize !20
  store i32 %1003, ptr %467, align 8, !tbaa !34
  %1004 = load ptr, ptr %473, align 8, !tbaa !29
  store ptr %1004, ptr %472, align 8, !tbaa !35
  %1005 = icmp eq i32 %1003, 0
  br i1 %1005, label %1006, label %1010

1006:                                             ; preds = %1002, %955
  %1007 = load i32, ptr %474, align 4, !tbaa !17
  %1008 = icmp eq i32 %1007, 0
  br i1 %1008, label %1009, label %.loopexit79

1009:                                             ; preds = %1006
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit79

1010:                                             ; preds = %1002, %949
  %1011 = tail call i32 @inflate(ptr noundef nonnull %472, i32 noundef 0) #13
  %1012 = load i32, ptr %470, align 8, !tbaa !48
  %1013 = icmp ult i32 %1012, %488
  br i1 %1013, label %1014, label %1015

1014:                                             ; preds = %1010
  store i32 0, ptr %476, align 4, !tbaa !33
  br label %1015

1015:                                             ; preds = %1014, %1010
  switch i32 %1011, label %1026 [
    i32 -2, label %1016
    i32 2, label %1016
    i32 -4, label %1017
    i32 -3, label %1018
  ]

1016:                                             ; preds = %1015, %1015
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit79

1017:                                             ; preds = %1015
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit79

1018:                                             ; preds = %1015
  %1019 = load i32, ptr %476, align 4, !tbaa !33
  %1020 = icmp eq i32 %1019, 1
  br i1 %1020, label %1021, label %1022

1021:                                             ; preds = %1018
  store i32 0, ptr %467, align 8, !tbaa !34
  store i32 1, ptr %466, align 8, !tbaa !24
  store i32 0, ptr %468, align 8, !tbaa !26
  br label %.loopexit79

1022:                                             ; preds = %1018
  %1023 = load ptr, ptr %477, align 8, !tbaa !50
  %1024 = icmp eq ptr %1023, null
  %1025 = select i1 %1024, ptr @.str.6, ptr %1023
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1025) #13
  br label %.loopexit79

1026:                                             ; preds = %1015
  %1027 = icmp ne i32 %1012, 0
  %1028 = icmp ne i32 %1011, 1
  %1029 = select i1 %1027, i1 %1028, i1 false
  br i1 %1029, label %949, label %.loopexit79, !llvm.loop !51

.loopexit79:                                      ; preds = %1026, %953, %1022, %1021, %1017, %1016, %1009, %1006, %.loopexit81
  %1030 = phi i32 [ %996, %.loopexit81 ], [ %950, %1006 ], [ %950, %1009 ], [ %1011, %1016 ], [ -4, %1017 ], [ 0, %1021 ], [ -3, %1022 ], [ %954, %953 ], [ %1011, %1026 ]
  %1031 = load i32, ptr %470, align 8, !tbaa !48
  %1032 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %488, i32 %1031), !nosanitize !20
  %1033 = extractvalue { i32, i1 } %1032, 1, !nosanitize !20
  br i1 %1033, label %1034, label %1035, !prof !21, !nosanitize !20

1034:                                             ; preds = %.loopexit79
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1035:                                             ; preds = %.loopexit79
  %1036 = extractvalue { i32, i1 } %1032, 0, !nosanitize !20
  %1037 = load ptr, ptr %471, align 8, !tbaa !49
  %1038 = zext i32 %1036 to i64
  %1039 = sub nsw i64 0, %1038
  %1040 = getelementptr inbounds i8, ptr %1037, i64 %1039
  store ptr %1040, ptr %465, align 8, !tbaa !22
  %1041 = icmp eq i32 %1030, 1
  br i1 %1041, label %1042, label %1043

1042:                                             ; preds = %1035
  store i32 0, ptr %476, align 4, !tbaa !33
  store i32 0, ptr %468, align 8, !tbaa !26
  br label %1046

1043:                                             ; preds = %1035
  %1044 = icmp ne i32 %1030, 0
  %1045 = sext i1 %1044 to i32
  br label %1046

1046:                                             ; preds = %1043, %1042
  %1047 = phi i32 [ 0, %1042 ], [ %1045, %1043 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1050

1048:                                             ; preds = %932
  %1049 = zext i32 %933 to i64
  br label %1050

1050:                                             ; preds = %1048, %1046, %947, %944, %940, %501
  %1051 = phi i64 [ %1049, %1048 ], [ %922, %947 ], [ %922, %944 ], [ %922, %940 ], [ %494, %501 ], [ %1038, %1046 ]
  %1052 = phi i32 [ 0, %1048 ], [ 0, %947 ], [ -1, %944 ], [ 0, %940 ], [ %505, %501 ], [ %1047, %1046 ]
  %1053 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %485, i64 %1051), !nosanitize !20
  %1054 = extractvalue { i64, i1 } %1053, 0, !nosanitize !20
  %1055 = extractvalue { i64, i1 } %1053, 1, !nosanitize !20
  br i1 %1055, label %1056, label %1057, !prof !21, !nosanitize !20

1056:                                             ; preds = %1050
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1057:                                             ; preds = %1050
  %1058 = getelementptr inbounds nuw i8, ptr %484, i64 %1051
  %1059 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %486, i64 %1051), !nosanitize !20
  %1060 = extractvalue { i64, i1 } %1059, 0, !nosanitize !20
  %1061 = extractvalue { i64, i1 } %1059, 1, !nosanitize !20
  br i1 %1061, label %1062, label %1063, !prof !21, !nosanitize !20

1062:                                             ; preds = %1063, %1057
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1063:                                             ; preds = %1057
  %1064 = load i64, ptr %478, align 8, !tbaa !23
  %1065 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1064, i64 %1051), !nosanitize !20
  %1066 = extractvalue { i64, i1 } %1065, 1, !nosanitize !20
  br i1 %1066, label %1062, label %1067, !prof !21, !nosanitize !20

1067:                                             ; preds = %1063
  %1068 = extractvalue { i64, i1 } %1065, 0, !nosanitize !20
  store i64 %1068, ptr %478, align 8, !tbaa !23
  br label %.loopexit78

.loopexit78:                                      ; preds = %901, %895, %749, %1067, %.loopexit76, %.loopexit75
  %1069 = phi ptr [ %1058, %1067 ], [ %484, %.loopexit76 ], [ %484, %.loopexit75 ], [ %484, %749 ], [ %484, %895 ], [ %484, %901 ]
  %1070 = phi i64 [ %1054, %1067 ], [ %485, %.loopexit76 ], [ %485, %.loopexit75 ], [ %485, %749 ], [ %485, %895 ], [ %485, %901 ]
  %1071 = phi i64 [ %1060, %1067 ], [ %486, %.loopexit76 ], [ %486, %.loopexit75 ], [ %486, %749 ], [ %486, %895 ], [ %486, %901 ]
  %1072 = phi i32 [ %1052, %1067 ], [ %908, %.loopexit76 ], [ 0, %.loopexit75 ], [ 0, %749 ], [ 0, %895 ], [ 0, %901 ]
  %1073 = icmp eq i64 %1070, 0
  br i1 %1073, label %.loopexit83, label %1074

1074:                                             ; preds = %.loopexit78
  %1075 = icmp eq i32 %1072, 0
  br i1 %1075, label %483, label %1076, !llvm.loop !60

1076:                                             ; preds = %1074
  %1077 = load i32, ptr %466, align 8, !tbaa !24
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %.loopexit83, label %.loopexit82

.loopexit82:                                      ; preds = %509, %1076
  %1079 = phi i64 [ %1071, %1076 ], [ %486, %509 ]
  %1080 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1080, align 4, !tbaa !61
  br label %.loopexit83

.loopexit83:                                      ; preds = %.loopexit78, %.loopexit82, %1076
  %1081 = phi i64 [ %1071, %1076 ], [ %1079, %.loopexit82 ], [ %1071, %.loopexit78 ]
  %1082 = trunc i64 %1081 to i32
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %.loopexit94, label %1094

.loopexit94:                                      ; preds = %442, %.loopexit83, %449, %.loopexit99, %.loopexit96, %98, %93, %19
  %1084 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit95

.loopexit95:                                      ; preds = %112, %.loopexit94
  %1085 = phi i32 [ %1084, %.loopexit94 ], [ %113, %112 ]
  switch i32 %1085, label %1094 [
    i32 0, label %1086
    i32 -5, label %1086
  ]

1086:                                             ; preds = %.loopexit95, %.loopexit95
  %1087 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1088 = load i32, ptr %1087, align 4, !tbaa !17
  %1089 = icmp eq i32 %1088, 0
  br i1 %1089, label %1094, label %1090

1090:                                             ; preds = %1086
  %1091 = tail call ptr @__errno_location() #17
  %1092 = load i32, ptr %1091, align 4, !tbaa !4
  %1093 = tail call ptr @strerror(i32 noundef %1092) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1093) #13
  br label %1094

1094:                                             ; preds = %1090, %1086, %.loopexit95, %.loopexit83, %18, %12, %5, %3
  %1095 = phi i32 [ -1, %5 ], [ -1, %3 ], [ -1, %18 ], [ -1, %12 ], [ -1, %1090 ], [ -1, %.loopexit95 ], [ 0, %1086 ], [ %1082, %.loopexit83 ]
  ret i32 %1095
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
  br i1 %5, label %1091, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %1091

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
  br i1 %16, label %1091, label %17

17:                                               ; preds = %13, %10, %10
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef 0, ptr noundef null) #13
  %18 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !nosanitize !20
  %19 = extractvalue { i64, i1 } %18, 0, !nosanitize !20
  %20 = extractvalue { i64, i1 } %18, 1, !nosanitize !20
  br i1 %20, label %21, label %22, !prof !21, !nosanitize !20

21:                                               ; preds = %17
  tail call void @llvm.ubsantrap(i8 12) #14, !nosanitize !20
  unreachable, !nosanitize !20

22:                                               ; preds = %17
  %23 = icmp eq i64 %1, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = udiv i64 %19, %1
  %26 = icmp eq i64 %25, %2
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.1) #13
  br label %1091

28:                                               ; preds = %24, %22
  %29 = icmp eq i64 %19, 0
  br i1 %29, label %1091, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !18
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %.loopexit97, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %52 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %53

53:                                               ; preds = %470, %34
  %54 = phi i64 [ %471, %470 ], [ %32, %34 ]
  %55 = load i32, ptr %3, align 8, !tbaa !19
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %53
  %58 = zext i32 %55 to i64
  %59 = tail call i64 @llvm.smin.i64(i64 %54, i64 %58)
  %60 = trunc i64 %59 to i32
  %61 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 %60), !nosanitize !20
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !20
  br i1 %62, label %63, label %64, !prof !21, !nosanitize !20

63:                                               ; preds = %73, %57
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

64:                                               ; preds = %57
  %65 = extractvalue { i32, i1 } %61, 0, !nosanitize !20
  store i32 %65, ptr %3, align 8, !tbaa !19
  %66 = load ptr, ptr %35, align 8, !tbaa !22
  %67 = and i64 %59, 4294967295
  %68 = getelementptr inbounds nuw i8, ptr %66, i64 %67
  store ptr %68, ptr %35, align 8, !tbaa !22
  %69 = load i64, ptr %36, align 8, !tbaa !23
  %70 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %69, i64 %67), !nosanitize !20
  %71 = extractvalue { i64, i1 } %70, 1, !nosanitize !20
  br i1 %71, label %72, label %73, !prof !21, !nosanitize !20

72:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

73:                                               ; preds = %64
  %74 = extractvalue { i64, i1 } %70, 0, !nosanitize !20
  store i64 %74, ptr %36, align 8, !tbaa !23
  %75 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %54, i64 %67), !nosanitize !20
  %76 = extractvalue { i64, i1 } %75, 1, !nosanitize !20
  br i1 %76, label %63, label %77, !prof !21, !nosanitize !20

77:                                               ; preds = %73
  %78 = extractvalue { i64, i1 } %75, 0, !nosanitize !20
  store i64 %78, ptr %31, align 8, !tbaa !18
  br label %470

79:                                               ; preds = %53
  %80 = load i32, ptr %37, align 8, !tbaa !24
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %.preheader983, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr %38, align 8, !tbaa !25
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %.loopexit97, label %.preheader983

.preheader983:                                    ; preds = %82, %79
  br label %85

85:                                               ; preds = %.backedge, %.preheader983
  %86 = load i32, ptr %39, align 8, !tbaa !26
  switch i32 %86, label %457 [
    i32 0, label %87
    i32 1, label %318
    i32 2, label %360
  ]

87:                                               ; preds = %85
  %88 = load i32, ptr %40, align 8, !tbaa !27
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  %91 = load i32, ptr %50, align 4, !tbaa !28
  %92 = zext i32 %91 to i64
  %93 = tail call noalias ptr @malloc(i64 noundef %92) #16
  store ptr %93, ptr %45, align 8, !tbaa !29
  %94 = load i32, ptr %50, align 4, !tbaa !28
  %95 = shl i32 %94, 1
  %96 = zext i32 %95 to i64
  %97 = tail call noalias ptr @malloc(i64 noundef %96) #16
  store ptr %97, ptr %42, align 8, !tbaa !30
  %98 = icmp eq ptr %93, null
  %99 = icmp eq ptr %97, null
  %100 = or i1 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  tail call void @free(ptr noundef %97) #13
  tail call void @free(ptr noundef %93) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit83

102:                                              ; preds = %90
  %103 = load i32, ptr %50, align 4, !tbaa !28
  store i32 %103, ptr %40, align 8, !tbaa !27
  store i32 0, ptr %38, align 8, !tbaa !25
  store ptr null, ptr %44, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %104 = tail call i32 @inflateInit2_(ptr noundef nonnull %44, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %42, align 8, !tbaa !30
  tail call void @free(ptr noundef %107) #13
  %108 = load ptr, ptr %45, align 8, !tbaa !29
  tail call void @free(ptr noundef %108) #13
  store i32 0, ptr %40, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit83

109:                                              ; preds = %102, %87
  %110 = load i32, ptr %52, align 8, !tbaa !32
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, ptr %48, align 4, !tbaa !33
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112, %109
  %116 = tail call i32 @inflateReset(ptr noundef nonnull %44) #13
  store i32 2, ptr %39, align 8, !tbaa !26
  %117 = load i32, ptr %48, align 4, !tbaa !33
  %118 = icmp ne i32 %117, -1
  %119 = zext i1 %118 to i32
  store i32 %119, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %52, align 8, !tbaa !32
  br label %315

120:                                              ; preds = %112
  %121 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %121, label %.loopexit83 [
    i32 0, label %122
    i32 -5, label %122
  ]

122:                                              ; preds = %120, %120
  %123 = load i32, ptr %37, align 8, !tbaa !24
  %124 = icmp eq i32 %123, 0
  %125 = load i32, ptr %38, align 8, !tbaa !34
  br i1 %124, label %126, label %283

126:                                              ; preds = %122
  %127 = icmp eq i32 %125, 0
  br i1 %127, label %229, label %128

128:                                              ; preds = %126
  %129 = load ptr, ptr %45, align 8, !tbaa !29
  %130 = load ptr, ptr %44, align 8, !tbaa !35
  %131 = icmp eq ptr %130, %129
  br i1 %131, label %229, label %132

132:                                              ; preds = %128
  %133 = ptrtoaddr ptr %130 to i64
  %134 = ptrtoaddr ptr %129 to i64
  %135 = zext i32 %125 to i64
  %136 = icmp ult i32 %125, 4
  %137 = sub i64 %134, %133
  %138 = icmp ult i64 %137, 32
  %139 = or i1 %136, %138
  br i1 %139, label %179, label %140

140:                                              ; preds = %132
  %141 = icmp ult i32 %125, 32
  br i1 %141, label %163, label %142

142:                                              ; preds = %140
  %143 = and i64 %135, 4294967264
  br label %144

144:                                              ; preds = %144, %142
  %145 = phi i64 [ 0, %142 ], [ %152, %144 ]
  %146 = getelementptr i8, ptr %129, i64 %145
  %147 = getelementptr i8, ptr %130, i64 %145
  %148 = getelementptr i8, ptr %147, i64 16
  %149 = load <16 x i8>, ptr %147, align 1, !tbaa !36
  %150 = load <16 x i8>, ptr %148, align 1, !tbaa !36
  %151 = getelementptr i8, ptr %146, i64 16
  store <16 x i8> %149, ptr %146, align 1, !tbaa !36
  store <16 x i8> %150, ptr %151, align 1, !tbaa !36
  %152 = add nuw nsw i64 %145, 32
  %153 = icmp eq i64 %152, %143
  br i1 %153, label %154, label %144, !llvm.loop !62

154:                                              ; preds = %144
  %155 = icmp eq i64 %143, %135
  br i1 %155, label %.loopexit87, label %156

156:                                              ; preds = %154
  %157 = trunc nuw i64 %143 to i32
  %158 = sub i32 %125, %157
  %159 = getelementptr i8, ptr %130, i64 %143
  %160 = getelementptr i8, ptr %129, i64 %143
  %161 = and i64 %135, 28
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %179, label %163, !prof !41

163:                                              ; preds = %156, %140
  %164 = phi i64 [ %143, %156 ], [ 0, %140 ]
  %165 = and i64 %135, 4294967292
  br label %166

166:                                              ; preds = %166, %163
  %167 = phi i64 [ %164, %163 ], [ %171, %166 ]
  %168 = getelementptr i8, ptr %129, i64 %167
  %169 = getelementptr i8, ptr %130, i64 %167
  %170 = load <4 x i8>, ptr %169, align 1, !tbaa !36
  store <4 x i8> %170, ptr %168, align 1, !tbaa !36
  %171 = add nuw i64 %167, 4
  %172 = icmp eq i64 %171, %165
  br i1 %172, label %173, label %166, !llvm.loop !63

173:                                              ; preds = %166
  %174 = getelementptr i8, ptr %129, i64 %165
  %175 = getelementptr i8, ptr %130, i64 %165
  %176 = trunc nuw i64 %165 to i32
  %177 = sub i32 %125, %176
  %178 = icmp eq i64 %165, %135
  br i1 %178, label %.loopexit87, label %179

179:                                              ; preds = %173, %156, %132
  %180 = phi ptr [ %129, %132 ], [ %160, %156 ], [ %174, %173 ]
  %181 = phi ptr [ %130, %132 ], [ %159, %156 ], [ %175, %173 ]
  %182 = phi i32 [ %125, %132 ], [ %158, %156 ], [ %177, %173 ]
  %183 = add i32 %182, -1
  %184 = and i32 %182, 7
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %.loopexit89, label %.preheader88

.preheader88:                                     ; preds = %179, %.preheader88
  %186 = phi ptr [ %190, %.preheader88 ], [ %180, %179 ]
  %187 = phi ptr [ %191, %.preheader88 ], [ %181, %179 ]
  %188 = phi i32 [ %192, %.preheader88 ], [ 0, %179 ]
  %189 = load i8, ptr %187, align 1, !tbaa !36
  store i8 %189, ptr %186, align 1, !tbaa !36
  %190 = getelementptr inbounds nuw i8, ptr %186, i64 1
  %191 = getelementptr inbounds nuw i8, ptr %187, i64 1
  %192 = add nuw nsw i32 %188, 1
  %193 = icmp eq i32 %192, %184
  br i1 %193, label %.loopexit89.loopexit, label %.preheader88, !llvm.loop !64

.loopexit89.loopexit:                             ; preds = %.preheader88
  %194 = and i32 %182, -8
  br label %.loopexit89

.loopexit89:                                      ; preds = %.loopexit89.loopexit, %179
  %195 = phi ptr [ %180, %179 ], [ %190, %.loopexit89.loopexit ]
  %196 = phi ptr [ %181, %179 ], [ %191, %.loopexit89.loopexit ]
  %197 = phi i32 [ %182, %179 ], [ %194, %.loopexit89.loopexit ]
  %198 = icmp ult i32 %183, 7
  br i1 %198, label %.loopexit87, label %.preheader86

.preheader86:                                     ; preds = %.loopexit89, %.preheader86
  %199 = phi ptr [ %225, %.preheader86 ], [ %195, %.loopexit89 ]
  %200 = phi ptr [ %226, %.preheader86 ], [ %196, %.loopexit89 ]
  %201 = phi i32 [ %224, %.preheader86 ], [ %197, %.loopexit89 ]
  %202 = load i8, ptr %200, align 1, !tbaa !36
  store i8 %202, ptr %199, align 1, !tbaa !36
  %203 = getelementptr inbounds nuw i8, ptr %199, i64 1
  %204 = getelementptr inbounds nuw i8, ptr %200, i64 1
  %205 = load i8, ptr %204, align 1, !tbaa !36
  store i8 %205, ptr %203, align 1, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %199, i64 2
  %207 = getelementptr inbounds nuw i8, ptr %200, i64 2
  %208 = load i8, ptr %207, align 1, !tbaa !36
  store i8 %208, ptr %206, align 1, !tbaa !36
  %209 = getelementptr inbounds nuw i8, ptr %199, i64 3
  %210 = getelementptr inbounds nuw i8, ptr %200, i64 3
  %211 = load i8, ptr %210, align 1, !tbaa !36
  store i8 %211, ptr %209, align 1, !tbaa !36
  %212 = getelementptr inbounds nuw i8, ptr %199, i64 4
  %213 = getelementptr inbounds nuw i8, ptr %200, i64 4
  %214 = load i8, ptr %213, align 1, !tbaa !36
  store i8 %214, ptr %212, align 1, !tbaa !36
  %215 = getelementptr inbounds nuw i8, ptr %199, i64 5
  %216 = getelementptr inbounds nuw i8, ptr %200, i64 5
  %217 = load i8, ptr %216, align 1, !tbaa !36
  store i8 %217, ptr %215, align 1, !tbaa !36
  %218 = getelementptr inbounds nuw i8, ptr %199, i64 6
  %219 = getelementptr inbounds nuw i8, ptr %200, i64 6
  %220 = load i8, ptr %219, align 1, !tbaa !36
  store i8 %220, ptr %218, align 1, !tbaa !36
  %221 = getelementptr inbounds nuw i8, ptr %199, i64 7
  %222 = getelementptr inbounds nuw i8, ptr %200, i64 7
  %223 = load i8, ptr %222, align 1, !tbaa !36
  store i8 %223, ptr %221, align 1, !tbaa !36
  %224 = add i32 %201, -8
  %225 = getelementptr inbounds nuw i8, ptr %199, i64 8
  %226 = getelementptr inbounds nuw i8, ptr %200, i64 8
  %227 = icmp eq i32 %224, 0
  br i1 %227, label %.loopexit87, label %.preheader86, !llvm.loop !65

.loopexit87:                                      ; preds = %.preheader86, %.loopexit89, %173, %154
  %228 = load i32, ptr %38, align 8, !tbaa !34
  br label %229

229:                                              ; preds = %.loopexit87, %128, %126
  %230 = phi i32 [ %228, %.loopexit87 ], [ %125, %128 ], [ 0, %126 ]
  %231 = load i32, ptr %40, align 8, !tbaa !27
  %232 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %231, i32 %230), !nosanitize !20
  %233 = extractvalue { i32, i1 } %232, 1, !nosanitize !20
  br i1 %233, label %234, label %235, !prof !21, !nosanitize !20

234:                                              ; preds = %229
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

235:                                              ; preds = %229
  %236 = extractvalue { i32, i1 } %232, 0, !nosanitize !20
  %237 = load ptr, ptr %45, align 8, !tbaa !29
  %238 = zext i32 %230 to i64
  %239 = getelementptr inbounds nuw i8, ptr %237, i64 %238
  store i32 0, ptr %46, align 4, !tbaa !17
  %240 = tail call ptr @__errno_location() #17
  store i32 0, ptr %240, align 4, !tbaa !4
  br label %241

241:                                              ; preds = %260, %235
  %242 = phi i32 [ 0, %235 ], [ %261, %260 ]
  %243 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %236, i32 %242), !nosanitize !20
  %244 = extractvalue { i32, i1 } %243, 1, !nosanitize !20
  br i1 %244, label %245, label %246, !prof !21, !nosanitize !20

245:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

246:                                              ; preds = %241
  %247 = extractvalue { i32, i1 } %243, 0, !nosanitize !20
  %248 = tail call i32 @llvm.umin.i32(i32 %247, i32 1073741824)
  %249 = load i32, ptr %47, align 4, !tbaa !46
  %250 = zext i32 %242 to i64
  %251 = getelementptr inbounds nuw i8, ptr %239, i64 %250
  %252 = zext nneg i32 %248 to i64
  %253 = tail call i64 @read(i32 noundef %249, ptr noundef %251, i64 noundef %252) #13
  %254 = trunc i64 %253 to i32
  %255 = icmp slt i32 %254, 1
  br i1 %255, label %263, label %256

256:                                              ; preds = %246
  %257 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %242, i32 %254), !nosanitize !20
  %258 = extractvalue { i32, i1 } %257, 1, !nosanitize !20
  br i1 %258, label %259, label %260, !prof !21, !nosanitize !20

259:                                              ; preds = %256
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

260:                                              ; preds = %256
  %261 = extractvalue { i32, i1 } %257, 0, !nosanitize !20
  %262 = icmp ult i32 %261, %236
  br i1 %262, label %241, label %.loopexit85, !llvm.loop !47

263:                                              ; preds = %246
  %264 = icmp slt i32 %254, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %263
  %266 = load i32, ptr %240, align 4, !tbaa !4
  %267 = icmp eq i32 %266, 11
  br i1 %267, label %268, label %.loopexit95

268:                                              ; preds = %265
  store i32 1, ptr %46, align 4, !tbaa !17
  %269 = icmp eq i32 %242, 0
  br i1 %269, label %270, label %.loopexit85

270:                                              ; preds = %268
  %271 = load i32, ptr %240, align 4, !tbaa !4
  br label %.loopexit95

272:                                              ; preds = %263
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %.loopexit85

.loopexit95:                                      ; preds = %265, %270
  %273 = phi i32 [ %271, %270 ], [ %266, %265 ]
  %274 = tail call ptr @strerror(i32 noundef %273) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %274) #13
  br label %.loopexit83

.loopexit85:                                      ; preds = %260, %272, %268
  %275 = phi i32 [ %242, %268 ], [ %242, %272 ], [ %261, %260 ]
  %276 = load i32, ptr %38, align 8, !tbaa !34
  %277 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %276, i32 %275), !nosanitize !20
  %278 = extractvalue { i32, i1 } %277, 1, !nosanitize !20
  br i1 %278, label %279, label %280, !prof !21, !nosanitize !20

279:                                              ; preds = %.loopexit85
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

280:                                              ; preds = %.loopexit85
  %281 = extractvalue { i32, i1 } %277, 0, !nosanitize !20
  store i32 %281, ptr %38, align 8, !tbaa !34
  %282 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %282, ptr %44, align 8, !tbaa !35
  br label %283

283:                                              ; preds = %280, %122
  %284 = phi i32 [ %281, %280 ], [ %125, %122 ]
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %315, label %286

286:                                              ; preds = %283
  %287 = load i32, ptr %46, align 4, !tbaa !17
  %288 = icmp ne i32 %287, 0
  %289 = icmp ult i32 %284, 4
  %290 = and i1 %289, %288
  br i1 %290, label %315, label %291

291:                                              ; preds = %286
  %292 = icmp ugt i32 %284, 3
  %293 = load ptr, ptr %44, align 8, !tbaa !35
  br i1 %292, label %294, label %311

294:                                              ; preds = %291
  %295 = load i8, ptr %293, align 1, !tbaa !36
  %296 = icmp eq i8 %295, 31
  br i1 %296, label %297, label %311

297:                                              ; preds = %294
  %298 = getelementptr inbounds nuw i8, ptr %293, i64 1
  %299 = load i8, ptr %298, align 1, !tbaa !36
  %300 = icmp eq i8 %299, -117
  br i1 %300, label %301, label %311

301:                                              ; preds = %297
  %302 = getelementptr inbounds nuw i8, ptr %293, i64 2
  %303 = load i8, ptr %302, align 1, !tbaa !36
  %304 = icmp eq i8 %303, 8
  br i1 %304, label %305, label %311

305:                                              ; preds = %301
  %306 = getelementptr inbounds nuw i8, ptr %293, i64 3
  %307 = load i8, ptr %306, align 1, !tbaa !36
  %308 = icmp ult i8 %307, 32
  br i1 %308, label %309, label %311

309:                                              ; preds = %305
  %310 = tail call i32 @inflateReset(ptr noundef nonnull %44) #13
  store i32 2, ptr %39, align 8, !tbaa !26
  store i32 1, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %52, align 8, !tbaa !32
  br label %458

311:                                              ; preds = %305, %301, %297, %294, %291
  %312 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %312, ptr %35, align 8, !tbaa !22
  %313 = zext i32 %284 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %312, ptr align 1 %293, i64 %313, i1 false)
  %314 = load i32, ptr %38, align 8, !tbaa !34
  store i32 %314, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !26
  br label %460

315:                                              ; preds = %286, %283, %115
  %316 = load i32, ptr %39, align 8, !tbaa !26
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %.loopexit96, label %458

318:                                              ; preds = %85
  %319 = load ptr, ptr %42, align 8, !tbaa !30
  %320 = load i32, ptr %40, align 8, !tbaa !27
  %321 = shl i32 %320, 1
  store i32 0, ptr %46, align 4, !tbaa !17
  %322 = tail call ptr @__errno_location() #17
  store i32 0, ptr %322, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %323

323:                                              ; preds = %343, %318
  %324 = phi i32 [ %344, %343 ], [ 0, %318 ]
  %325 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %321, i32 %324), !nosanitize !20
  %326 = extractvalue { i32, i1 } %325, 1, !nosanitize !20
  br i1 %326, label %327, label %328, !prof !21, !nosanitize !20

327:                                              ; preds = %323
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

328:                                              ; preds = %323
  %329 = extractvalue { i32, i1 } %325, 0, !nosanitize !20
  %330 = tail call i32 @llvm.umin.i32(i32 %329, i32 1073741824)
  %331 = load i32, ptr %47, align 4, !tbaa !46
  %332 = zext i32 %324 to i64
  %333 = getelementptr inbounds nuw i8, ptr %319, i64 %332
  %334 = zext nneg i32 %330 to i64
  %335 = tail call i64 @read(i32 noundef %331, ptr noundef %333, i64 noundef %334) #13
  %336 = trunc i64 %335 to i32
  %337 = icmp slt i32 %336, 1
  br i1 %337, label %346, label %338

338:                                              ; preds = %328
  %339 = load i32, ptr %3, align 4, !tbaa !4
  %340 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %339, i32 %336), !nosanitize !20
  %341 = extractvalue { i32, i1 } %340, 1, !nosanitize !20
  br i1 %341, label %342, label %343, !prof !21, !nosanitize !20

342:                                              ; preds = %338
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

343:                                              ; preds = %338
  %344 = extractvalue { i32, i1 } %340, 0, !nosanitize !20
  store i32 %344, ptr %3, align 4, !tbaa !4
  %345 = icmp ult i32 %344, %321
  br i1 %345, label %323, label %.loopexit93, !llvm.loop !47

346:                                              ; preds = %328
  %347 = icmp slt i32 %336, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %346
  %349 = load i32, ptr %322, align 4, !tbaa !4
  %350 = icmp eq i32 %349, 11
  br i1 %350, label %351, label %.loopexit98

351:                                              ; preds = %348
  store i32 1, ptr %46, align 4, !tbaa !17
  %352 = load i32, ptr %3, align 4, !tbaa !4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %.loopexit93

354:                                              ; preds = %351
  %355 = load i32, ptr %322, align 4, !tbaa !4
  br label %.loopexit98

356:                                              ; preds = %346
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %.loopexit93

.loopexit98:                                      ; preds = %348, %354
  %357 = phi i32 [ %355, %354 ], [ %349, %348 ]
  %358 = tail call ptr @strerror(i32 noundef %357) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %358) #13
  br label %.loopexit83

.loopexit93:                                      ; preds = %343, %356, %351
  %359 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %359, ptr %35, align 8, !tbaa !22
  br label %.loopexit96

360:                                              ; preds = %85
  %361 = load i32, ptr %40, align 8, !tbaa !27
  %362 = shl i32 %361, 1
  store i32 %362, ptr %41, align 8, !tbaa !48
  %363 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %363, ptr %43, align 8, !tbaa !49
  br label %364

364:                                              ; preds = %441, %360
  %365 = phi i32 [ 0, %360 ], [ %426, %441 ]
  %366 = load i32, ptr %38, align 8, !tbaa !34
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %425

368:                                              ; preds = %364
  %369 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %369, label %.loopexit90 [
    i32 0, label %370
    i32 -5, label %370
  ]

370:                                              ; preds = %368, %368
  %371 = load i32, ptr %37, align 8, !tbaa !24
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %421

373:                                              ; preds = %370
  %374 = load i32, ptr %40, align 8, !tbaa !27
  %375 = load ptr, ptr %45, align 8, !tbaa !29
  store i32 0, ptr %46, align 4, !tbaa !17
  %376 = tail call ptr @__errno_location() #17
  store i32 0, ptr %376, align 4, !tbaa !4
  br label %377

377:                                              ; preds = %396, %373
  %378 = phi i32 [ 0, %373 ], [ %397, %396 ]
  %379 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %374, i32 %378), !nosanitize !20
  %380 = extractvalue { i32, i1 } %379, 1, !nosanitize !20
  br i1 %380, label %381, label %382, !prof !21, !nosanitize !20

381:                                              ; preds = %377
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

382:                                              ; preds = %377
  %383 = extractvalue { i32, i1 } %379, 0, !nosanitize !20
  %384 = tail call i32 @llvm.umin.i32(i32 %383, i32 1073741824)
  %385 = load i32, ptr %47, align 4, !tbaa !46
  %386 = zext i32 %378 to i64
  %387 = getelementptr inbounds nuw i8, ptr %375, i64 %386
  %388 = zext nneg i32 %384 to i64
  %389 = tail call i64 @read(i32 noundef %385, ptr noundef %387, i64 noundef %388) #13
  %390 = trunc i64 %389 to i32
  %391 = icmp slt i32 %390, 1
  br i1 %391, label %399, label %392

392:                                              ; preds = %382
  %393 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %378, i32 %390), !nosanitize !20
  %394 = extractvalue { i32, i1 } %393, 1, !nosanitize !20
  br i1 %394, label %395, label %396, !prof !21, !nosanitize !20

395:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

396:                                              ; preds = %392
  %397 = extractvalue { i32, i1 } %393, 0, !nosanitize !20
  %398 = icmp ult i32 %397, %374
  br i1 %398, label %377, label %.loopexit84, !llvm.loop !47

399:                                              ; preds = %382
  %400 = icmp slt i32 %390, 0
  br i1 %400, label %401, label %408

401:                                              ; preds = %399
  %402 = load i32, ptr %376, align 4, !tbaa !4
  %403 = icmp eq i32 %402, 11
  br i1 %403, label %404, label %.loopexit92

404:                                              ; preds = %401
  store i32 1, ptr %46, align 4, !tbaa !17
  %405 = icmp eq i32 %378, 0
  br i1 %405, label %406, label %.loopexit84

406:                                              ; preds = %404
  %407 = load i32, ptr %376, align 4, !tbaa !4
  br label %.loopexit92

408:                                              ; preds = %399
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %.loopexit84

.loopexit92:                                      ; preds = %401, %406
  %409 = phi i32 [ %407, %406 ], [ %402, %401 ]
  %410 = tail call ptr @strerror(i32 noundef %409) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %410) #13
  %411 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit90

.loopexit84:                                      ; preds = %396, %408, %404
  %412 = phi i32 [ %378, %404 ], [ %378, %408 ], [ %397, %396 ]
  %413 = load i32, ptr %38, align 8, !tbaa !34
  %414 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %413, i32 %412), !nosanitize !20
  %415 = extractvalue { i32, i1 } %414, 1, !nosanitize !20
  br i1 %415, label %416, label %417, !prof !21, !nosanitize !20

416:                                              ; preds = %.loopexit84
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

417:                                              ; preds = %.loopexit84
  %418 = extractvalue { i32, i1 } %414, 0, !nosanitize !20
  store i32 %418, ptr %38, align 8, !tbaa !34
  %419 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %419, ptr %44, align 8, !tbaa !35
  %420 = icmp eq i32 %418, 0
  br i1 %420, label %421, label %425

421:                                              ; preds = %417, %370
  %422 = load i32, ptr %46, align 4, !tbaa !17
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %.loopexit90

424:                                              ; preds = %421
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit90

425:                                              ; preds = %417, %364
  %426 = tail call i32 @inflate(ptr noundef nonnull %44, i32 noundef 0) #13
  %427 = load i32, ptr %41, align 8, !tbaa !48
  %428 = icmp ult i32 %427, %362
  br i1 %428, label %429, label %430

429:                                              ; preds = %425
  store i32 0, ptr %48, align 4, !tbaa !33
  br label %430

430:                                              ; preds = %429, %425
  switch i32 %426, label %441 [
    i32 -2, label %431
    i32 2, label %431
    i32 -4, label %432
    i32 -3, label %433
  ]

431:                                              ; preds = %430, %430
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit90

432:                                              ; preds = %430
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit90

433:                                              ; preds = %430
  %434 = load i32, ptr %48, align 4, !tbaa !33
  %435 = icmp eq i32 %434, 1
  br i1 %435, label %436, label %437

436:                                              ; preds = %433
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %37, align 8, !tbaa !24
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %.loopexit90

437:                                              ; preds = %433
  %438 = load ptr, ptr %49, align 8, !tbaa !50
  %439 = icmp eq ptr %438, null
  %440 = select i1 %439, ptr @.str.6, ptr %438
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %440) #13
  br label %.loopexit90

441:                                              ; preds = %430
  %442 = icmp ne i32 %427, 0
  %443 = icmp ne i32 %426, 1
  %444 = select i1 %442, i1 %443, i1 false
  br i1 %444, label %364, label %.loopexit90, !llvm.loop !51

.loopexit90:                                      ; preds = %441, %368, %437, %436, %432, %431, %424, %421, %.loopexit92
  %445 = phi i32 [ %411, %.loopexit92 ], [ %365, %421 ], [ %365, %424 ], [ %426, %431 ], [ -4, %432 ], [ 0, %436 ], [ -3, %437 ], [ %369, %368 ], [ %426, %441 ]
  %446 = load i32, ptr %41, align 8, !tbaa !48
  %447 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %362, i32 %446), !nosanitize !20
  %448 = extractvalue { i32, i1 } %447, 1, !nosanitize !20
  br i1 %448, label %449, label %450, !prof !21, !nosanitize !20

449:                                              ; preds = %.loopexit90
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

450:                                              ; preds = %.loopexit90
  %451 = extractvalue { i32, i1 } %447, 0, !nosanitize !20
  store i32 %451, ptr %3, align 8, !tbaa !19
  %452 = load ptr, ptr %43, align 8, !tbaa !49
  %453 = zext i32 %451 to i64
  %454 = sub nsw i64 0, %453
  %455 = getelementptr inbounds i8, ptr %452, i64 %454
  store ptr %455, ptr %35, align 8, !tbaa !22
  switch i32 %445, label %.loopexit83 [
    i32 1, label %456
    i32 0, label %458
  ]

456:                                              ; preds = %450
  store i32 0, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %458

457:                                              ; preds = %85
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit83

458:                                              ; preds = %456, %450, %315, %309
  %459 = load i32, ptr %3, align 8, !tbaa !19
  br label %460

460:                                              ; preds = %458, %311
  %461 = phi i32 [ %459, %458 ], [ %314, %311 ]
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %.loopexit96

463:                                              ; preds = %460
  %464 = load i32, ptr %37, align 8, !tbaa !24
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %.backedge, label %466

466:                                              ; preds = %463
  %467 = load i32, ptr %38, align 8, !tbaa !34
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %.loopexit96, label %.backedge

.backedge:                                        ; preds = %466, %463
  br label %85, !llvm.loop !52

.loopexit96:                                      ; preds = %466, %460, %315, %.loopexit93
  %469 = load i64, ptr %31, align 8, !tbaa !18
  br label %470

470:                                              ; preds = %.loopexit96, %77
  %471 = phi i64 [ %469, %.loopexit96 ], [ %78, %77 ]
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %.loopexit97, label %53, !llvm.loop !53

.loopexit97:                                      ; preds = %470, %82, %30
  %473 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %474 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %475 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %476 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %477 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %478 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %479 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %480 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %481 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %482 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %483 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %484 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %485 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %486 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %487 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %488 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %489 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %490 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %491

491:                                              ; preds = %1082, %.loopexit97
  %492 = phi ptr [ %0, %.loopexit97 ], [ %1077, %1082 ]
  %493 = phi i64 [ %19, %.loopexit97 ], [ %1078, %1082 ]
  %494 = phi i64 [ 0, %.loopexit97 ], [ %1079, %1082 ]
  %495 = tail call i64 @llvm.umin.i64(i64 %493, i64 4294967295)
  %496 = trunc nuw i64 %495 to i32
  %497 = load i32, ptr %3, align 8, !tbaa !19
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %514, label %499

499:                                              ; preds = %491
  %500 = tail call i32 @llvm.umin.i32(i32 %497, i32 %496)
  %501 = load ptr, ptr %473, align 8, !tbaa !22
  %502 = zext i32 %500 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %492, ptr align 1 %501, i64 %502, i1 false)
  %503 = load ptr, ptr %473, align 8, !tbaa !22
  %504 = getelementptr inbounds nuw i8, ptr %503, i64 %502
  store ptr %504, ptr %473, align 8, !tbaa !22
  %505 = load i32, ptr %3, align 8, !tbaa !19
  %506 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %505, i32 %500), !nosanitize !20
  %507 = extractvalue { i32, i1 } %506, 1, !nosanitize !20
  br i1 %507, label %508, label %509, !prof !21, !nosanitize !20

508:                                              ; preds = %499
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

509:                                              ; preds = %499
  %510 = extractvalue { i32, i1 } %506, 0, !nosanitize !20
  store i32 %510, ptr %3, align 8, !tbaa !19
  %511 = load i32, ptr %11, align 8, !tbaa !16
  %512 = icmp ne i32 %511, 0
  %513 = sext i1 %512 to i32
  br label %1058

514:                                              ; preds = %491
  %515 = load i32, ptr %474, align 8, !tbaa !24
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %520, label %517

517:                                              ; preds = %514
  %518 = load i32, ptr %475, align 8, !tbaa !25
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %.loopexit82, label %520

520:                                              ; preds = %517, %514
  %521 = load i32, ptr %476, align 8, !tbaa !26
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %.preheader867, label %523

523:                                              ; preds = %520
  %524 = load i32, ptr %477, align 8, !tbaa !27
  %525 = shl i32 %524, 1
  %526 = icmp ugt i32 %525, %496
  br i1 %526, label %.preheader867, label %917

.preheader867:                                    ; preds = %523, %520
  br label %527

527:                                              ; preds = %.preheader867, %912
  %528 = phi i32 [ %913, %912 ], [ %521, %.preheader867 ]
  switch i32 %528, label %900 [
    i32 0, label %529
    i32 1, label %760
    i32 2, label %803
  ]

529:                                              ; preds = %527
  %530 = load i32, ptr %477, align 8, !tbaa !27
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %551

532:                                              ; preds = %529
  %533 = load i32, ptr %488, align 4, !tbaa !28
  %534 = zext i32 %533 to i64
  %535 = tail call noalias ptr @malloc(i64 noundef %534) #16
  store ptr %535, ptr %481, align 8, !tbaa !29
  %536 = load i32, ptr %488, align 4, !tbaa !28
  %537 = shl i32 %536, 1
  %538 = zext i32 %537 to i64
  %539 = tail call noalias ptr @malloc(i64 noundef %538) #16
  store ptr %539, ptr %487, align 8, !tbaa !30
  %540 = icmp eq ptr %535, null
  %541 = icmp eq ptr %539, null
  %542 = or i1 %540, %541
  br i1 %542, label %543, label %544

543:                                              ; preds = %532
  tail call void @free(ptr noundef %539) #13
  tail call void @free(ptr noundef %535) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit76

544:                                              ; preds = %532
  %545 = load i32, ptr %488, align 4, !tbaa !28
  store i32 %545, ptr %477, align 8, !tbaa !27
  store i32 0, ptr %475, align 8, !tbaa !25
  store ptr null, ptr %480, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %489, i8 0, i64 24, i1 false)
  %546 = tail call i32 @inflateInit2_(ptr noundef nonnull %480, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %551, label %548

548:                                              ; preds = %544
  %549 = load ptr, ptr %487, align 8, !tbaa !30
  tail call void @free(ptr noundef %549) #13
  %550 = load ptr, ptr %481, align 8, !tbaa !29
  tail call void @free(ptr noundef %550) #13
  store i32 0, ptr %477, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit76

551:                                              ; preds = %544, %529
  %552 = load i32, ptr %490, align 8, !tbaa !32
  %553 = icmp eq i32 %552, -1
  br i1 %553, label %557, label %554

554:                                              ; preds = %551
  %555 = load i32, ptr %484, align 4, !tbaa !33
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %562

557:                                              ; preds = %554, %551
  %558 = tail call i32 @inflateReset(ptr noundef nonnull %480) #13
  store i32 2, ptr %476, align 8, !tbaa !26
  %559 = load i32, ptr %484, align 4, !tbaa !33
  %560 = icmp ne i32 %559, -1
  %561 = zext i1 %560 to i32
  store i32 %561, ptr %484, align 4, !tbaa !33
  store i32 0, ptr %490, align 8, !tbaa !32
  br label %757

562:                                              ; preds = %554
  %563 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %563, label %.loopexit76 [
    i32 0, label %564
    i32 -5, label %564
  ]

564:                                              ; preds = %562, %562
  %565 = load i32, ptr %474, align 8, !tbaa !24
  %566 = icmp eq i32 %565, 0
  %567 = load i32, ptr %475, align 8, !tbaa !34
  br i1 %566, label %568, label %725

568:                                              ; preds = %564
  %569 = icmp eq i32 %567, 0
  br i1 %569, label %671, label %570

570:                                              ; preds = %568
  %571 = load ptr, ptr %481, align 8, !tbaa !29
  %572 = load ptr, ptr %480, align 8, !tbaa !35
  %573 = icmp eq ptr %572, %571
  br i1 %573, label %671, label %574

574:                                              ; preds = %570
  %575 = ptrtoaddr ptr %572 to i64
  %576 = ptrtoaddr ptr %571 to i64
  %577 = zext i32 %567 to i64
  %578 = icmp ult i32 %567, 4
  %579 = sub i64 %576, %575
  %580 = icmp ult i64 %579, 32
  %581 = or i1 %578, %580
  br i1 %581, label %621, label %582

582:                                              ; preds = %574
  %583 = icmp ult i32 %567, 32
  br i1 %583, label %605, label %584

584:                                              ; preds = %582
  %585 = and i64 %577, 4294967264
  br label %586

586:                                              ; preds = %586, %584
  %587 = phi i64 [ 0, %584 ], [ %594, %586 ]
  %588 = getelementptr i8, ptr %571, i64 %587
  %589 = getelementptr i8, ptr %572, i64 %587
  %590 = getelementptr i8, ptr %589, i64 16
  %591 = load <16 x i8>, ptr %589, align 1, !tbaa !36
  %592 = load <16 x i8>, ptr %590, align 1, !tbaa !36
  %593 = getelementptr i8, ptr %588, i64 16
  store <16 x i8> %591, ptr %588, align 1, !tbaa !36
  store <16 x i8> %592, ptr %593, align 1, !tbaa !36
  %594 = add nuw nsw i64 %587, 32
  %595 = icmp eq i64 %594, %585
  br i1 %595, label %596, label %586, !llvm.loop !66

596:                                              ; preds = %586
  %597 = icmp eq i64 %585, %577
  br i1 %597, label %.loopexit69, label %598

598:                                              ; preds = %596
  %599 = trunc nuw i64 %585 to i32
  %600 = sub i32 %567, %599
  %601 = getelementptr i8, ptr %572, i64 %585
  %602 = getelementptr i8, ptr %571, i64 %585
  %603 = and i64 %577, 28
  %604 = icmp eq i64 %603, 0
  br i1 %604, label %621, label %605, !prof !41

605:                                              ; preds = %598, %582
  %606 = phi i64 [ %585, %598 ], [ 0, %582 ]
  %607 = and i64 %577, 4294967292
  br label %608

608:                                              ; preds = %608, %605
  %609 = phi i64 [ %606, %605 ], [ %613, %608 ]
  %610 = getelementptr i8, ptr %571, i64 %609
  %611 = getelementptr i8, ptr %572, i64 %609
  %612 = load <4 x i8>, ptr %611, align 1, !tbaa !36
  store <4 x i8> %612, ptr %610, align 1, !tbaa !36
  %613 = add nuw i64 %609, 4
  %614 = icmp eq i64 %613, %607
  br i1 %614, label %615, label %608, !llvm.loop !67

615:                                              ; preds = %608
  %616 = getelementptr i8, ptr %571, i64 %607
  %617 = getelementptr i8, ptr %572, i64 %607
  %618 = trunc nuw i64 %607 to i32
  %619 = sub i32 %567, %618
  %620 = icmp eq i64 %607, %577
  br i1 %620, label %.loopexit69, label %621

621:                                              ; preds = %615, %598, %574
  %622 = phi ptr [ %571, %574 ], [ %602, %598 ], [ %616, %615 ]
  %623 = phi ptr [ %572, %574 ], [ %601, %598 ], [ %617, %615 ]
  %624 = phi i32 [ %567, %574 ], [ %600, %598 ], [ %619, %615 ]
  %625 = add i32 %624, -1
  %626 = and i32 %624, 7
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %.loopexit71, label %.preheader70

.preheader70:                                     ; preds = %621, %.preheader70
  %628 = phi ptr [ %632, %.preheader70 ], [ %622, %621 ]
  %629 = phi ptr [ %633, %.preheader70 ], [ %623, %621 ]
  %630 = phi i32 [ %634, %.preheader70 ], [ 0, %621 ]
  %631 = load i8, ptr %629, align 1, !tbaa !36
  store i8 %631, ptr %628, align 1, !tbaa !36
  %632 = getelementptr inbounds nuw i8, ptr %628, i64 1
  %633 = getelementptr inbounds nuw i8, ptr %629, i64 1
  %634 = add nuw nsw i32 %630, 1
  %635 = icmp eq i32 %634, %626
  br i1 %635, label %.loopexit71.loopexit, label %.preheader70, !llvm.loop !68

.loopexit71.loopexit:                             ; preds = %.preheader70
  %636 = and i32 %624, -8
  br label %.loopexit71

.loopexit71:                                      ; preds = %.loopexit71.loopexit, %621
  %637 = phi ptr [ %622, %621 ], [ %632, %.loopexit71.loopexit ]
  %638 = phi ptr [ %623, %621 ], [ %633, %.loopexit71.loopexit ]
  %639 = phi i32 [ %624, %621 ], [ %636, %.loopexit71.loopexit ]
  %640 = icmp ult i32 %625, 7
  br i1 %640, label %.loopexit69, label %.preheader

.preheader:                                       ; preds = %.loopexit71, %.preheader
  %641 = phi ptr [ %667, %.preheader ], [ %637, %.loopexit71 ]
  %642 = phi ptr [ %668, %.preheader ], [ %638, %.loopexit71 ]
  %643 = phi i32 [ %666, %.preheader ], [ %639, %.loopexit71 ]
  %644 = load i8, ptr %642, align 1, !tbaa !36
  store i8 %644, ptr %641, align 1, !tbaa !36
  %645 = getelementptr inbounds nuw i8, ptr %641, i64 1
  %646 = getelementptr inbounds nuw i8, ptr %642, i64 1
  %647 = load i8, ptr %646, align 1, !tbaa !36
  store i8 %647, ptr %645, align 1, !tbaa !36
  %648 = getelementptr inbounds nuw i8, ptr %641, i64 2
  %649 = getelementptr inbounds nuw i8, ptr %642, i64 2
  %650 = load i8, ptr %649, align 1, !tbaa !36
  store i8 %650, ptr %648, align 1, !tbaa !36
  %651 = getelementptr inbounds nuw i8, ptr %641, i64 3
  %652 = getelementptr inbounds nuw i8, ptr %642, i64 3
  %653 = load i8, ptr %652, align 1, !tbaa !36
  store i8 %653, ptr %651, align 1, !tbaa !36
  %654 = getelementptr inbounds nuw i8, ptr %641, i64 4
  %655 = getelementptr inbounds nuw i8, ptr %642, i64 4
  %656 = load i8, ptr %655, align 1, !tbaa !36
  store i8 %656, ptr %654, align 1, !tbaa !36
  %657 = getelementptr inbounds nuw i8, ptr %641, i64 5
  %658 = getelementptr inbounds nuw i8, ptr %642, i64 5
  %659 = load i8, ptr %658, align 1, !tbaa !36
  store i8 %659, ptr %657, align 1, !tbaa !36
  %660 = getelementptr inbounds nuw i8, ptr %641, i64 6
  %661 = getelementptr inbounds nuw i8, ptr %642, i64 6
  %662 = load i8, ptr %661, align 1, !tbaa !36
  store i8 %662, ptr %660, align 1, !tbaa !36
  %663 = getelementptr inbounds nuw i8, ptr %641, i64 7
  %664 = getelementptr inbounds nuw i8, ptr %642, i64 7
  %665 = load i8, ptr %664, align 1, !tbaa !36
  store i8 %665, ptr %663, align 1, !tbaa !36
  %666 = add i32 %643, -8
  %667 = getelementptr inbounds nuw i8, ptr %641, i64 8
  %668 = getelementptr inbounds nuw i8, ptr %642, i64 8
  %669 = icmp eq i32 %666, 0
  br i1 %669, label %.loopexit69, label %.preheader, !llvm.loop !69

.loopexit69:                                      ; preds = %.preheader, %.loopexit71, %615, %596
  %670 = load i32, ptr %475, align 8, !tbaa !34
  br label %671

671:                                              ; preds = %.loopexit69, %570, %568
  %672 = phi i32 [ %670, %.loopexit69 ], [ %567, %570 ], [ 0, %568 ]
  %673 = load i32, ptr %477, align 8, !tbaa !27
  %674 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %673, i32 %672), !nosanitize !20
  %675 = extractvalue { i32, i1 } %674, 1, !nosanitize !20
  br i1 %675, label %676, label %677, !prof !21, !nosanitize !20

676:                                              ; preds = %671
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

677:                                              ; preds = %671
  %678 = extractvalue { i32, i1 } %674, 0, !nosanitize !20
  %679 = load ptr, ptr %481, align 8, !tbaa !29
  %680 = zext i32 %672 to i64
  %681 = getelementptr inbounds nuw i8, ptr %679, i64 %680
  store i32 0, ptr %482, align 4, !tbaa !17
  %682 = tail call ptr @__errno_location() #17
  store i32 0, ptr %682, align 4, !tbaa !4
  br label %683

683:                                              ; preds = %702, %677
  %684 = phi i32 [ 0, %677 ], [ %703, %702 ]
  %685 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %678, i32 %684), !nosanitize !20
  %686 = extractvalue { i32, i1 } %685, 1, !nosanitize !20
  br i1 %686, label %687, label %688, !prof !21, !nosanitize !20

687:                                              ; preds = %683
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

688:                                              ; preds = %683
  %689 = extractvalue { i32, i1 } %685, 0, !nosanitize !20
  %690 = tail call i32 @llvm.umin.i32(i32 %689, i32 1073741824)
  %691 = load i32, ptr %483, align 4, !tbaa !46
  %692 = zext i32 %684 to i64
  %693 = getelementptr inbounds nuw i8, ptr %681, i64 %692
  %694 = zext nneg i32 %690 to i64
  %695 = tail call i64 @read(i32 noundef %691, ptr noundef %693, i64 noundef %694) #13
  %696 = trunc i64 %695 to i32
  %697 = icmp slt i32 %696, 1
  br i1 %697, label %705, label %698

698:                                              ; preds = %688
  %699 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %684, i32 %696), !nosanitize !20
  %700 = extractvalue { i32, i1 } %699, 1, !nosanitize !20
  br i1 %700, label %701, label %702, !prof !21, !nosanitize !20

701:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

702:                                              ; preds = %698
  %703 = extractvalue { i32, i1 } %699, 0, !nosanitize !20
  %704 = icmp ult i32 %703, %678
  br i1 %704, label %683, label %.loopexit68, !llvm.loop !47

705:                                              ; preds = %688
  %706 = icmp slt i32 %696, 0
  br i1 %706, label %707, label %714

707:                                              ; preds = %705
  %708 = load i32, ptr %682, align 4, !tbaa !4
  %709 = icmp eq i32 %708, 11
  br i1 %709, label %710, label %.loopexit77

710:                                              ; preds = %707
  store i32 1, ptr %482, align 4, !tbaa !17
  %711 = icmp eq i32 %684, 0
  br i1 %711, label %712, label %.loopexit68

712:                                              ; preds = %710
  %713 = load i32, ptr %682, align 4, !tbaa !4
  br label %.loopexit77

714:                                              ; preds = %705
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit68

.loopexit77:                                      ; preds = %707, %712
  %715 = phi i32 [ %713, %712 ], [ %708, %707 ]
  %716 = tail call ptr @strerror(i32 noundef %715) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %716) #13
  br label %.loopexit76

.loopexit68:                                      ; preds = %702, %714, %710
  %717 = phi i32 [ %684, %710 ], [ %684, %714 ], [ %703, %702 ]
  %718 = load i32, ptr %475, align 8, !tbaa !34
  %719 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %718, i32 %717), !nosanitize !20
  %720 = extractvalue { i32, i1 } %719, 1, !nosanitize !20
  br i1 %720, label %721, label %722, !prof !21, !nosanitize !20

721:                                              ; preds = %.loopexit68
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

722:                                              ; preds = %.loopexit68
  %723 = extractvalue { i32, i1 } %719, 0, !nosanitize !20
  store i32 %723, ptr %475, align 8, !tbaa !34
  %724 = load ptr, ptr %481, align 8, !tbaa !29
  store ptr %724, ptr %480, align 8, !tbaa !35
  br label %725

725:                                              ; preds = %722, %564
  %726 = phi i32 [ %723, %722 ], [ %567, %564 ]
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %757, label %728

728:                                              ; preds = %725
  %729 = load i32, ptr %482, align 4, !tbaa !17
  %730 = icmp ne i32 %729, 0
  %731 = icmp ult i32 %726, 4
  %732 = and i1 %731, %730
  br i1 %732, label %757, label %733

733:                                              ; preds = %728
  %734 = icmp ugt i32 %726, 3
  %735 = load ptr, ptr %480, align 8, !tbaa !35
  br i1 %734, label %736, label %753

736:                                              ; preds = %733
  %737 = load i8, ptr %735, align 1, !tbaa !36
  %738 = icmp eq i8 %737, 31
  br i1 %738, label %739, label %753

739:                                              ; preds = %736
  %740 = getelementptr inbounds nuw i8, ptr %735, i64 1
  %741 = load i8, ptr %740, align 1, !tbaa !36
  %742 = icmp eq i8 %741, -117
  br i1 %742, label %743, label %753

743:                                              ; preds = %739
  %744 = getelementptr inbounds nuw i8, ptr %735, i64 2
  %745 = load i8, ptr %744, align 1, !tbaa !36
  %746 = icmp eq i8 %745, 8
  br i1 %746, label %747, label %753

747:                                              ; preds = %743
  %748 = getelementptr inbounds nuw i8, ptr %735, i64 3
  %749 = load i8, ptr %748, align 1, !tbaa !36
  %750 = icmp ult i8 %749, 32
  br i1 %750, label %751, label %753

751:                                              ; preds = %747
  %752 = tail call i32 @inflateReset(ptr noundef nonnull %480) #13
  store i32 2, ptr %476, align 8, !tbaa !26
  store i32 1, ptr %484, align 4, !tbaa !33
  store i32 0, ptr %490, align 8, !tbaa !32
  br label %901

753:                                              ; preds = %747, %743, %739, %736, %733
  %754 = load ptr, ptr %487, align 8, !tbaa !30
  store ptr %754, ptr %473, align 8, !tbaa !22
  %755 = zext i32 %726 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %754, ptr align 1 %735, i64 %755, i1 false)
  %756 = load i32, ptr %475, align 8, !tbaa !34
  store i32 %756, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %475, align 8, !tbaa !34
  store i32 1, ptr %476, align 8, !tbaa !26
  br label %903

757:                                              ; preds = %728, %725, %557
  %758 = load i32, ptr %476, align 8, !tbaa !26
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %.loopexit78, label %901

760:                                              ; preds = %527
  %761 = load ptr, ptr %487, align 8, !tbaa !30
  %762 = load i32, ptr %477, align 8, !tbaa !27
  %763 = shl i32 %762, 1
  store i32 0, ptr %482, align 4, !tbaa !17
  %764 = tail call ptr @__errno_location() #17
  store i32 0, ptr %764, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %765

765:                                              ; preds = %785, %760
  %766 = phi i32 [ %786, %785 ], [ 0, %760 ]
  %767 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %763, i32 %766), !nosanitize !20
  %768 = extractvalue { i32, i1 } %767, 1, !nosanitize !20
  br i1 %768, label %769, label %770, !prof !21, !nosanitize !20

769:                                              ; preds = %765
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

770:                                              ; preds = %765
  %771 = extractvalue { i32, i1 } %767, 0, !nosanitize !20
  %772 = tail call i32 @llvm.umin.i32(i32 %771, i32 1073741824)
  %773 = load i32, ptr %483, align 4, !tbaa !46
  %774 = zext i32 %766 to i64
  %775 = getelementptr inbounds nuw i8, ptr %761, i64 %774
  %776 = zext nneg i32 %772 to i64
  %777 = tail call i64 @read(i32 noundef %773, ptr noundef %775, i64 noundef %776) #13
  %778 = trunc i64 %777 to i32
  %779 = icmp slt i32 %778, 1
  br i1 %779, label %788, label %780

780:                                              ; preds = %770
  %781 = load i32, ptr %3, align 4, !tbaa !4
  %782 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %781, i32 %778), !nosanitize !20
  %783 = extractvalue { i32, i1 } %782, 1, !nosanitize !20
  br i1 %783, label %784, label %785, !prof !21, !nosanitize !20

784:                                              ; preds = %780
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

785:                                              ; preds = %780
  %786 = extractvalue { i32, i1 } %782, 0, !nosanitize !20
  store i32 %786, ptr %3, align 4, !tbaa !4
  %787 = icmp ult i32 %786, %763
  br i1 %787, label %765, label %.loopexit75, !llvm.loop !47

788:                                              ; preds = %770
  %789 = icmp slt i32 %778, 0
  br i1 %789, label %790, label %798

790:                                              ; preds = %788
  %791 = load i32, ptr %764, align 4, !tbaa !4
  %792 = icmp eq i32 %791, 11
  br i1 %792, label %793, label %799

793:                                              ; preds = %790
  store i32 1, ptr %482, align 4, !tbaa !17
  %794 = load i32, ptr %3, align 4, !tbaa !4
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %796, label %.loopexit75

796:                                              ; preds = %793
  %797 = load i32, ptr %764, align 4, !tbaa !4
  br label %799

798:                                              ; preds = %788
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit75

799:                                              ; preds = %796, %790
  %800 = phi i32 [ %797, %796 ], [ %791, %790 ]
  %801 = tail call ptr @strerror(i32 noundef %800) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %801) #13
  br label %.loopexit76

.loopexit75:                                      ; preds = %785, %798, %793
  %802 = load ptr, ptr %487, align 8, !tbaa !30
  store ptr %802, ptr %473, align 8, !tbaa !22
  br label %.loopexit78

803:                                              ; preds = %527
  %804 = load i32, ptr %477, align 8, !tbaa !27
  %805 = shl i32 %804, 1
  store i32 %805, ptr %478, align 8, !tbaa !48
  %806 = load ptr, ptr %487, align 8, !tbaa !30
  store ptr %806, ptr %479, align 8, !tbaa !49
  br label %807

807:                                              ; preds = %884, %803
  %808 = phi i32 [ 0, %803 ], [ %869, %884 ]
  %809 = load i32, ptr %475, align 8, !tbaa !34
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %811, label %868

811:                                              ; preds = %807
  %812 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %812, label %.loopexit72 [
    i32 0, label %813
    i32 -5, label %813
  ]

813:                                              ; preds = %811, %811
  %814 = load i32, ptr %474, align 8, !tbaa !24
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %816, label %864

816:                                              ; preds = %813
  %817 = load i32, ptr %477, align 8, !tbaa !27
  %818 = load ptr, ptr %481, align 8, !tbaa !29
  store i32 0, ptr %482, align 4, !tbaa !17
  %819 = tail call ptr @__errno_location() #17
  store i32 0, ptr %819, align 4, !tbaa !4
  br label %820

820:                                              ; preds = %839, %816
  %821 = phi i32 [ 0, %816 ], [ %840, %839 ]
  %822 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %817, i32 %821), !nosanitize !20
  %823 = extractvalue { i32, i1 } %822, 1, !nosanitize !20
  br i1 %823, label %824, label %825, !prof !21, !nosanitize !20

824:                                              ; preds = %820
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

825:                                              ; preds = %820
  %826 = extractvalue { i32, i1 } %822, 0, !nosanitize !20
  %827 = tail call i32 @llvm.umin.i32(i32 %826, i32 1073741824)
  %828 = load i32, ptr %483, align 4, !tbaa !46
  %829 = zext i32 %821 to i64
  %830 = getelementptr inbounds nuw i8, ptr %818, i64 %829
  %831 = zext nneg i32 %827 to i64
  %832 = tail call i64 @read(i32 noundef %828, ptr noundef %830, i64 noundef %831) #13
  %833 = trunc i64 %832 to i32
  %834 = icmp slt i32 %833, 1
  br i1 %834, label %842, label %835

835:                                              ; preds = %825
  %836 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %821, i32 %833), !nosanitize !20
  %837 = extractvalue { i32, i1 } %836, 1, !nosanitize !20
  br i1 %837, label %838, label %839, !prof !21, !nosanitize !20

838:                                              ; preds = %835
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

839:                                              ; preds = %835
  %840 = extractvalue { i32, i1 } %836, 0, !nosanitize !20
  %841 = icmp ult i32 %840, %817
  br i1 %841, label %820, label %.loopexit, !llvm.loop !47

842:                                              ; preds = %825
  %843 = icmp slt i32 %833, 0
  br i1 %843, label %844, label %851

844:                                              ; preds = %842
  %845 = load i32, ptr %819, align 4, !tbaa !4
  %846 = icmp eq i32 %845, 11
  br i1 %846, label %847, label %.loopexit73

847:                                              ; preds = %844
  store i32 1, ptr %482, align 4, !tbaa !17
  %848 = icmp eq i32 %821, 0
  br i1 %848, label %849, label %.loopexit

849:                                              ; preds = %847
  %850 = load i32, ptr %819, align 4, !tbaa !4
  br label %.loopexit73

851:                                              ; preds = %842
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit

.loopexit73:                                      ; preds = %844, %849
  %852 = phi i32 [ %850, %849 ], [ %845, %844 ]
  %853 = tail call ptr @strerror(i32 noundef %852) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %853) #13
  %854 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit72

.loopexit:                                        ; preds = %839, %851, %847
  %855 = phi i32 [ %821, %847 ], [ %821, %851 ], [ %840, %839 ]
  %856 = load i32, ptr %475, align 8, !tbaa !34
  %857 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %856, i32 %855), !nosanitize !20
  %858 = extractvalue { i32, i1 } %857, 1, !nosanitize !20
  br i1 %858, label %859, label %860, !prof !21, !nosanitize !20

859:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

860:                                              ; preds = %.loopexit
  %861 = extractvalue { i32, i1 } %857, 0, !nosanitize !20
  store i32 %861, ptr %475, align 8, !tbaa !34
  %862 = load ptr, ptr %481, align 8, !tbaa !29
  store ptr %862, ptr %480, align 8, !tbaa !35
  %863 = icmp eq i32 %861, 0
  br i1 %863, label %864, label %868

864:                                              ; preds = %860, %813
  %865 = load i32, ptr %482, align 4, !tbaa !17
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %867, label %.loopexit72

867:                                              ; preds = %864
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit72

868:                                              ; preds = %860, %807
  %869 = tail call i32 @inflate(ptr noundef nonnull %480, i32 noundef 0) #13
  %870 = load i32, ptr %478, align 8, !tbaa !48
  %871 = icmp ult i32 %870, %805
  br i1 %871, label %872, label %873

872:                                              ; preds = %868
  store i32 0, ptr %484, align 4, !tbaa !33
  br label %873

873:                                              ; preds = %872, %868
  switch i32 %869, label %884 [
    i32 -2, label %874
    i32 2, label %874
    i32 -4, label %875
    i32 -3, label %876
  ]

874:                                              ; preds = %873, %873
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit72

875:                                              ; preds = %873
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit72

876:                                              ; preds = %873
  %877 = load i32, ptr %484, align 4, !tbaa !33
  %878 = icmp eq i32 %877, 1
  br i1 %878, label %879, label %880

879:                                              ; preds = %876
  store i32 0, ptr %475, align 8, !tbaa !34
  store i32 1, ptr %474, align 8, !tbaa !24
  store i32 0, ptr %476, align 8, !tbaa !26
  br label %.loopexit72

880:                                              ; preds = %876
  %881 = load ptr, ptr %485, align 8, !tbaa !50
  %882 = icmp eq ptr %881, null
  %883 = select i1 %882, ptr @.str.6, ptr %881
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %883) #13
  br label %.loopexit72

884:                                              ; preds = %873
  %885 = icmp ne i32 %870, 0
  %886 = icmp ne i32 %869, 1
  %887 = select i1 %885, i1 %886, i1 false
  br i1 %887, label %807, label %.loopexit72, !llvm.loop !51

.loopexit72:                                      ; preds = %884, %811, %880, %879, %875, %874, %867, %864, %.loopexit73
  %888 = phi i32 [ %854, %.loopexit73 ], [ %808, %864 ], [ %808, %867 ], [ %869, %874 ], [ -4, %875 ], [ 0, %879 ], [ -3, %880 ], [ %869, %884 ], [ %812, %811 ]
  %889 = load i32, ptr %478, align 8, !tbaa !48
  %890 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %805, i32 %889), !nosanitize !20
  %891 = extractvalue { i32, i1 } %890, 1, !nosanitize !20
  br i1 %891, label %892, label %893, !prof !21, !nosanitize !20

892:                                              ; preds = %.loopexit72
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

893:                                              ; preds = %.loopexit72
  %894 = extractvalue { i32, i1 } %890, 0, !nosanitize !20
  store i32 %894, ptr %3, align 8, !tbaa !19
  %895 = load ptr, ptr %479, align 8, !tbaa !49
  %896 = zext i32 %894 to i64
  %897 = sub nsw i64 0, %896
  %898 = getelementptr inbounds i8, ptr %895, i64 %897
  store ptr %898, ptr %473, align 8, !tbaa !22
  switch i32 %888, label %.loopexit76 [
    i32 1, label %899
    i32 0, label %901
  ]

899:                                              ; preds = %893
  store i32 0, ptr %484, align 4, !tbaa !33
  store i32 0, ptr %476, align 8, !tbaa !26
  br label %901

900:                                              ; preds = %527
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit76

901:                                              ; preds = %899, %893, %757, %751
  %902 = load i32, ptr %3, align 8, !tbaa !19
  br label %903

903:                                              ; preds = %901, %753
  %904 = phi i32 [ %902, %901 ], [ %756, %753 ]
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %906, label %.loopexit78

906:                                              ; preds = %903
  %907 = load i32, ptr %474, align 8, !tbaa !24
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %912, label %909

909:                                              ; preds = %906
  %910 = load i32, ptr %475, align 8, !tbaa !34
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %.loopexit78, label %912

912:                                              ; preds = %909, %906
  %913 = load i32, ptr %476, align 8, !tbaa !26
  br label %527, !llvm.loop !52

.loopexit76:                                      ; preds = %893, %562, %900, %799, %.loopexit77, %548, %543
  %914 = load i32, ptr %3, align 8, !tbaa !19
  %915 = icmp eq i32 %914, 0
  %916 = sext i1 %915 to i32
  br label %.loopexit78

917:                                              ; preds = %523
  %918 = icmp eq i32 %521, 1
  br i1 %918, label %919, label %956

919:                                              ; preds = %917
  store i32 0, ptr %482, align 4, !tbaa !17
  %920 = tail call ptr @__errno_location() #17
  store i32 0, ptr %920, align 4, !tbaa !4
  br label %921

921:                                              ; preds = %940, %919
  %922 = phi i32 [ 0, %919 ], [ %941, %940 ]
  %923 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %496, i32 %922), !nosanitize !20
  %924 = extractvalue { i32, i1 } %923, 1, !nosanitize !20
  br i1 %924, label %925, label %926, !prof !21, !nosanitize !20

925:                                              ; preds = %921
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

926:                                              ; preds = %921
  %927 = extractvalue { i32, i1 } %923, 0, !nosanitize !20
  %928 = tail call i32 @llvm.umin.i32(i32 %927, i32 1073741824)
  %929 = load i32, ptr %483, align 4, !tbaa !46
  %930 = zext i32 %922 to i64
  %931 = getelementptr inbounds nuw i8, ptr %492, i64 %930
  %932 = zext nneg i32 %928 to i64
  %933 = tail call i64 @read(i32 noundef %929, ptr noundef %931, i64 noundef %932) #13
  %934 = trunc i64 %933 to i32
  %935 = icmp slt i32 %934, 1
  br i1 %935, label %943, label %936

936:                                              ; preds = %926
  %937 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %922, i32 %934), !nosanitize !20
  %938 = extractvalue { i32, i1 } %937, 1, !nosanitize !20
  br i1 %938, label %939, label %940, !prof !21, !nosanitize !20

939:                                              ; preds = %936
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

940:                                              ; preds = %936
  %941 = extractvalue { i32, i1 } %937, 0, !nosanitize !20
  %942 = icmp ult i32 %941, %496
  br i1 %942, label %921, label %1056, !llvm.loop !47

943:                                              ; preds = %926
  %944 = icmp slt i32 %934, 0
  br i1 %944, label %945, label %955

945:                                              ; preds = %943
  %946 = load i32, ptr %920, align 4, !tbaa !4
  %947 = icmp eq i32 %946, 11
  br i1 %947, label %948, label %952

948:                                              ; preds = %945
  store i32 1, ptr %482, align 4, !tbaa !17
  %949 = icmp eq i32 %922, 0
  br i1 %949, label %950, label %1058

950:                                              ; preds = %948
  %951 = load i32, ptr %920, align 4, !tbaa !4
  br label %952

952:                                              ; preds = %950, %945
  %953 = phi i32 [ %951, %950 ], [ %946, %945 ]
  %954 = tail call ptr @strerror(i32 noundef %953) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %954) #13
  br label %1058

955:                                              ; preds = %943
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %1058

956:                                              ; preds = %917
  store i32 %496, ptr %478, align 8, !tbaa !58
  store ptr %492, ptr %479, align 8, !tbaa !59
  br label %957

957:                                              ; preds = %1034, %956
  %958 = phi i32 [ 0, %956 ], [ %1019, %1034 ]
  %959 = load i32, ptr %475, align 8, !tbaa !34
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %961, label %1018

961:                                              ; preds = %957
  %962 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %962, label %.loopexit79 [
    i32 0, label %963
    i32 -5, label %963
  ]

963:                                              ; preds = %961, %961
  %964 = load i32, ptr %474, align 8, !tbaa !24
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %966, label %1014

966:                                              ; preds = %963
  %967 = load i32, ptr %477, align 8, !tbaa !27
  %968 = load ptr, ptr %481, align 8, !tbaa !29
  store i32 0, ptr %482, align 4, !tbaa !17
  %969 = tail call ptr @__errno_location() #17
  store i32 0, ptr %969, align 4, !tbaa !4
  br label %970

970:                                              ; preds = %989, %966
  %971 = phi i32 [ 0, %966 ], [ %990, %989 ]
  %972 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %967, i32 %971), !nosanitize !20
  %973 = extractvalue { i32, i1 } %972, 1, !nosanitize !20
  br i1 %973, label %974, label %975, !prof !21, !nosanitize !20

974:                                              ; preds = %970
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

975:                                              ; preds = %970
  %976 = extractvalue { i32, i1 } %972, 0, !nosanitize !20
  %977 = tail call i32 @llvm.umin.i32(i32 %976, i32 1073741824)
  %978 = load i32, ptr %483, align 4, !tbaa !46
  %979 = zext i32 %971 to i64
  %980 = getelementptr inbounds nuw i8, ptr %968, i64 %979
  %981 = zext nneg i32 %977 to i64
  %982 = tail call i64 @read(i32 noundef %978, ptr noundef %980, i64 noundef %981) #13
  %983 = trunc i64 %982 to i32
  %984 = icmp slt i32 %983, 1
  br i1 %984, label %992, label %985

985:                                              ; preds = %975
  %986 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %971, i32 %983), !nosanitize !20
  %987 = extractvalue { i32, i1 } %986, 1, !nosanitize !20
  br i1 %987, label %988, label %989, !prof !21, !nosanitize !20

988:                                              ; preds = %985
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

989:                                              ; preds = %985
  %990 = extractvalue { i32, i1 } %986, 0, !nosanitize !20
  %991 = icmp ult i32 %990, %967
  br i1 %991, label %970, label %.loopexit74, !llvm.loop !47

992:                                              ; preds = %975
  %993 = icmp slt i32 %983, 0
  br i1 %993, label %994, label %1001

994:                                              ; preds = %992
  %995 = load i32, ptr %969, align 4, !tbaa !4
  %996 = icmp eq i32 %995, 11
  br i1 %996, label %997, label %.loopexit81

997:                                              ; preds = %994
  store i32 1, ptr %482, align 4, !tbaa !17
  %998 = icmp eq i32 %971, 0
  br i1 %998, label %999, label %.loopexit74

999:                                              ; preds = %997
  %1000 = load i32, ptr %969, align 4, !tbaa !4
  br label %.loopexit81

1001:                                             ; preds = %992
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit74

.loopexit81:                                      ; preds = %994, %999
  %1002 = phi i32 [ %1000, %999 ], [ %995, %994 ]
  %1003 = tail call ptr @strerror(i32 noundef %1002) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %1003) #13
  %1004 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit79

.loopexit74:                                      ; preds = %989, %1001, %997
  %1005 = phi i32 [ %971, %997 ], [ %971, %1001 ], [ %990, %989 ]
  %1006 = load i32, ptr %475, align 8, !tbaa !34
  %1007 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1006, i32 %1005), !nosanitize !20
  %1008 = extractvalue { i32, i1 } %1007, 1, !nosanitize !20
  br i1 %1008, label %1009, label %1010, !prof !21, !nosanitize !20

1009:                                             ; preds = %.loopexit74
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1010:                                             ; preds = %.loopexit74
  %1011 = extractvalue { i32, i1 } %1007, 0, !nosanitize !20
  store i32 %1011, ptr %475, align 8, !tbaa !34
  %1012 = load ptr, ptr %481, align 8, !tbaa !29
  store ptr %1012, ptr %480, align 8, !tbaa !35
  %1013 = icmp eq i32 %1011, 0
  br i1 %1013, label %1014, label %1018

1014:                                             ; preds = %1010, %963
  %1015 = load i32, ptr %482, align 4, !tbaa !17
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1017, label %.loopexit79

1017:                                             ; preds = %1014
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit79

1018:                                             ; preds = %1010, %957
  %1019 = tail call i32 @inflate(ptr noundef nonnull %480, i32 noundef 0) #13
  %1020 = load i32, ptr %478, align 8, !tbaa !48
  %1021 = icmp ult i32 %1020, %496
  br i1 %1021, label %1022, label %1023

1022:                                             ; preds = %1018
  store i32 0, ptr %484, align 4, !tbaa !33
  br label %1023

1023:                                             ; preds = %1022, %1018
  switch i32 %1019, label %1034 [
    i32 -2, label %1024
    i32 2, label %1024
    i32 -4, label %1025
    i32 -3, label %1026
  ]

1024:                                             ; preds = %1023, %1023
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit79

1025:                                             ; preds = %1023
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit79

1026:                                             ; preds = %1023
  %1027 = load i32, ptr %484, align 4, !tbaa !33
  %1028 = icmp eq i32 %1027, 1
  br i1 %1028, label %1029, label %1030

1029:                                             ; preds = %1026
  store i32 0, ptr %475, align 8, !tbaa !34
  store i32 1, ptr %474, align 8, !tbaa !24
  store i32 0, ptr %476, align 8, !tbaa !26
  br label %.loopexit79

1030:                                             ; preds = %1026
  %1031 = load ptr, ptr %485, align 8, !tbaa !50
  %1032 = icmp eq ptr %1031, null
  %1033 = select i1 %1032, ptr @.str.6, ptr %1031
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %1033) #13
  br label %.loopexit79

1034:                                             ; preds = %1023
  %1035 = icmp ne i32 %1020, 0
  %1036 = icmp ne i32 %1019, 1
  %1037 = select i1 %1035, i1 %1036, i1 false
  br i1 %1037, label %957, label %.loopexit79, !llvm.loop !51

.loopexit79:                                      ; preds = %1034, %961, %1030, %1029, %1025, %1024, %1017, %1014, %.loopexit81
  %1038 = phi i32 [ %1004, %.loopexit81 ], [ %958, %1014 ], [ %958, %1017 ], [ %1019, %1024 ], [ -4, %1025 ], [ 0, %1029 ], [ -3, %1030 ], [ %962, %961 ], [ %1019, %1034 ]
  %1039 = load i32, ptr %478, align 8, !tbaa !48
  %1040 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %496, i32 %1039), !nosanitize !20
  %1041 = extractvalue { i32, i1 } %1040, 1, !nosanitize !20
  br i1 %1041, label %1042, label %1043, !prof !21, !nosanitize !20

1042:                                             ; preds = %.loopexit79
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1043:                                             ; preds = %.loopexit79
  %1044 = extractvalue { i32, i1 } %1040, 0, !nosanitize !20
  %1045 = load ptr, ptr %479, align 8, !tbaa !49
  %1046 = zext i32 %1044 to i64
  %1047 = sub nsw i64 0, %1046
  %1048 = getelementptr inbounds i8, ptr %1045, i64 %1047
  store ptr %1048, ptr %473, align 8, !tbaa !22
  %1049 = icmp eq i32 %1038, 1
  br i1 %1049, label %1050, label %1051

1050:                                             ; preds = %1043
  store i32 0, ptr %484, align 4, !tbaa !33
  store i32 0, ptr %476, align 8, !tbaa !26
  br label %1054

1051:                                             ; preds = %1043
  %1052 = icmp ne i32 %1038, 0
  %1053 = sext i1 %1052 to i32
  br label %1054

1054:                                             ; preds = %1051, %1050
  %1055 = phi i32 [ 0, %1050 ], [ %1053, %1051 ]
  store i32 0, ptr %3, align 8, !tbaa !19
  br label %1058

1056:                                             ; preds = %940
  %1057 = zext i32 %941 to i64
  br label %1058

1058:                                             ; preds = %1056, %1054, %955, %952, %948, %509
  %1059 = phi i64 [ %1057, %1056 ], [ %930, %955 ], [ %930, %952 ], [ %930, %948 ], [ %502, %509 ], [ %1046, %1054 ]
  %1060 = phi i32 [ 0, %1056 ], [ 0, %955 ], [ -1, %952 ], [ 0, %948 ], [ %513, %509 ], [ %1055, %1054 ]
  %1061 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %493, i64 %1059), !nosanitize !20
  %1062 = extractvalue { i64, i1 } %1061, 0, !nosanitize !20
  %1063 = extractvalue { i64, i1 } %1061, 1, !nosanitize !20
  br i1 %1063, label %1064, label %1065, !prof !21, !nosanitize !20

1064:                                             ; preds = %1058
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1065:                                             ; preds = %1058
  %1066 = getelementptr inbounds nuw i8, ptr %492, i64 %1059
  %1067 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %494, i64 %1059), !nosanitize !20
  %1068 = extractvalue { i64, i1 } %1067, 0, !nosanitize !20
  %1069 = extractvalue { i64, i1 } %1067, 1, !nosanitize !20
  br i1 %1069, label %1070, label %1071, !prof !21, !nosanitize !20

1070:                                             ; preds = %1071, %1065
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1071:                                             ; preds = %1065
  %1072 = load i64, ptr %486, align 8, !tbaa !23
  %1073 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1072, i64 %1059), !nosanitize !20
  %1074 = extractvalue { i64, i1 } %1073, 1, !nosanitize !20
  br i1 %1074, label %1070, label %1075, !prof !21, !nosanitize !20

1075:                                             ; preds = %1071
  %1076 = extractvalue { i64, i1 } %1073, 0, !nosanitize !20
  store i64 %1076, ptr %486, align 8, !tbaa !23
  br label %.loopexit78

.loopexit78:                                      ; preds = %909, %903, %757, %1075, %.loopexit76, %.loopexit75
  %1077 = phi ptr [ %1066, %1075 ], [ %492, %.loopexit76 ], [ %492, %.loopexit75 ], [ %492, %757 ], [ %492, %903 ], [ %492, %909 ]
  %1078 = phi i64 [ %1062, %1075 ], [ %493, %.loopexit76 ], [ %493, %.loopexit75 ], [ %493, %757 ], [ %493, %903 ], [ %493, %909 ]
  %1079 = phi i64 [ %1068, %1075 ], [ %494, %.loopexit76 ], [ %494, %.loopexit75 ], [ %494, %757 ], [ %494, %903 ], [ %494, %909 ]
  %1080 = phi i32 [ %1060, %1075 ], [ %916, %.loopexit76 ], [ 0, %.loopexit75 ], [ 0, %757 ], [ 0, %903 ], [ 0, %909 ]
  %1081 = icmp eq i64 %1078, 0
  br i1 %1081, label %.loopexit83, label %1082

1082:                                             ; preds = %.loopexit78
  %1083 = icmp eq i32 %1080, 0
  br i1 %1083, label %491, label %1084, !llvm.loop !60

1084:                                             ; preds = %1082
  %1085 = load i32, ptr %474, align 8, !tbaa !24
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %.loopexit83, label %.loopexit82

.loopexit82:                                      ; preds = %517, %1084
  %1087 = phi i64 [ %1079, %1084 ], [ %494, %517 ]
  %1088 = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 1, ptr %1088, align 4, !tbaa !61
  br label %.loopexit83

.loopexit83:                                      ; preds = %450, %120, %.loopexit78, %.loopexit82, %1084, %457, %.loopexit98, %.loopexit95, %106, %101
  %1089 = phi i64 [ 0, %101 ], [ 0, %.loopexit95 ], [ %1087, %.loopexit82 ], [ %1079, %1084 ], [ 0, %106 ], [ %1079, %.loopexit78 ], [ 0, %457 ], [ 0, %.loopexit98 ], [ 0, %120 ], [ 0, %450 ]
  %1090 = udiv i64 %1089, %1
  br label %1091

1091:                                             ; preds = %.loopexit83, %28, %27, %13, %6, %4
  %1092 = phi i64 [ 0, %6 ], [ 0, %4 ], [ 0, %27 ], [ 0, %13 ], [ %1090, %.loopexit83 ], [ 0, %28 ]
  ret i64 %1092
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1095, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1095

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
  br i1 %14, label %1095, label %15

15:                                               ; preds = %11, %8, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %16 = load i32, ptr %0, align 8, !tbaa !19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %15
  %19 = add i32 %16, -1
  store i32 %19, ptr %0, align 8, !tbaa !19
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load i64, ptr %20, align 8, !tbaa !23
  %22 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %21, i64 1), !nosanitize !20
  %23 = extractvalue { i64, i1 } %22, 1, !nosanitize !20
  br i1 %23, label %24, label %25, !prof !21, !nosanitize !20

24:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

25:                                               ; preds = %18
  %26 = extractvalue { i64, i1 } %22, 0, !nosanitize !20
  store i64 %26, ptr %20, align 8, !tbaa !23
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 1
  store ptr %29, ptr %27, align 8, !tbaa !22
  %30 = load i8, ptr %28, align 1, !tbaa !36
  %31 = zext i8 %30 to i32
  br label %1095

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %.loopexit96, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %55

55:                                               ; preds = %472, %36
  %56 = phi i64 [ %473, %472 ], [ %34, %36 ]
  %57 = load i32, ptr %0, align 8, !tbaa !19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %55
  %60 = zext i32 %57 to i64
  %61 = tail call i64 @llvm.smin.i64(i64 %56, i64 %60)
  %62 = trunc i64 %61 to i32
  %63 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 %62), !nosanitize !20
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !20
  br i1 %64, label %65, label %66, !prof !21, !nosanitize !20

65:                                               ; preds = %75, %59
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

66:                                               ; preds = %59
  %67 = extractvalue { i32, i1 } %63, 0, !nosanitize !20
  store i32 %67, ptr %0, align 8, !tbaa !19
  %68 = load ptr, ptr %37, align 8, !tbaa !22
  %69 = and i64 %61, 4294967295
  %70 = getelementptr inbounds nuw i8, ptr %68, i64 %69
  store ptr %70, ptr %37, align 8, !tbaa !22
  %71 = load i64, ptr %38, align 8, !tbaa !23
  %72 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %71, i64 %69), !nosanitize !20
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !20
  br i1 %73, label %74, label %75, !prof !21, !nosanitize !20

74:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

75:                                               ; preds = %66
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !20
  store i64 %76, ptr %38, align 8, !tbaa !23
  %77 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %56, i64 %69), !nosanitize !20
  %78 = extractvalue { i64, i1 } %77, 1, !nosanitize !20
  br i1 %78, label %65, label %79, !prof !21, !nosanitize !20

79:                                               ; preds = %75
  %80 = extractvalue { i64, i1 } %77, 0, !nosanitize !20
  store i64 %80, ptr %33, align 8, !tbaa !18
  br label %472

81:                                               ; preds = %55
  %82 = load i32, ptr %39, align 8, !tbaa !24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %.preheader983, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %40, align 8, !tbaa !25
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %.loopexit96, label %.preheader983

.preheader983:                                    ; preds = %84, %81
  br label %87

87:                                               ; preds = %.backedge, %.preheader983
  %88 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %88, label %459 [
    i32 0, label %89
    i32 1, label %320
    i32 2, label %362
  ]

89:                                               ; preds = %87
  %90 = load i32, ptr %42, align 8, !tbaa !27
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %89
  %93 = load i32, ptr %52, align 4, !tbaa !28
  %94 = zext i32 %93 to i64
  %95 = tail call noalias ptr @malloc(i64 noundef %94) #16
  store ptr %95, ptr %47, align 8, !tbaa !29
  %96 = load i32, ptr %52, align 4, !tbaa !28
  %97 = shl i32 %96, 1
  %98 = zext i32 %97 to i64
  %99 = tail call noalias ptr @malloc(i64 noundef %98) #16
  store ptr %99, ptr %44, align 8, !tbaa !30
  %100 = icmp eq ptr %95, null
  %101 = icmp eq ptr %99, null
  %102 = or i1 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  tail call void @free(ptr noundef %99) #13
  tail call void @free(ptr noundef %95) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit93

104:                                              ; preds = %92
  %105 = load i32, ptr %52, align 4, !tbaa !28
  store i32 %105, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %40, align 8, !tbaa !25
  store ptr null, ptr %46, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %106 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %44, align 8, !tbaa !30
  tail call void @free(ptr noundef %109) #13
  %110 = load ptr, ptr %47, align 8, !tbaa !29
  tail call void @free(ptr noundef %110) #13
  store i32 0, ptr %42, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit93

111:                                              ; preds = %104, %89
  %112 = load i32, ptr %54, align 8, !tbaa !32
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, ptr %50, align 4, !tbaa !33
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114, %111
  %118 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  %119 = load i32, ptr %50, align 4, !tbaa !33
  %120 = icmp ne i32 %119, -1
  %121 = zext i1 %120 to i32
  store i32 %121, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %317

122:                                              ; preds = %114
  %123 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %123, label %.loopexit93 [
    i32 0, label %124
    i32 -5, label %124
  ]

124:                                              ; preds = %122, %122
  %125 = load i32, ptr %39, align 8, !tbaa !24
  %126 = icmp eq i32 %125, 0
  %127 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %126, label %128, label %285

128:                                              ; preds = %124
  %129 = icmp eq i32 %127, 0
  br i1 %129, label %231, label %130

130:                                              ; preds = %128
  %131 = load ptr, ptr %47, align 8, !tbaa !29
  %132 = load ptr, ptr %46, align 8, !tbaa !35
  %133 = icmp eq ptr %132, %131
  br i1 %133, label %231, label %134

134:                                              ; preds = %130
  %135 = ptrtoaddr ptr %132 to i64
  %136 = ptrtoaddr ptr %131 to i64
  %137 = zext i32 %127 to i64
  %138 = icmp ult i32 %127, 4
  %139 = sub i64 %136, %135
  %140 = icmp ult i64 %139, 32
  %141 = or i1 %138, %140
  br i1 %141, label %181, label %142

142:                                              ; preds = %134
  %143 = icmp ult i32 %127, 32
  br i1 %143, label %165, label %144

144:                                              ; preds = %142
  %145 = and i64 %137, 4294967264
  br label %146

146:                                              ; preds = %146, %144
  %147 = phi i64 [ 0, %144 ], [ %154, %146 ]
  %148 = getelementptr i8, ptr %131, i64 %147
  %149 = getelementptr i8, ptr %132, i64 %147
  %150 = getelementptr i8, ptr %149, i64 16
  %151 = load <16 x i8>, ptr %149, align 1, !tbaa !36
  %152 = load <16 x i8>, ptr %150, align 1, !tbaa !36
  %153 = getelementptr i8, ptr %148, i64 16
  store <16 x i8> %151, ptr %148, align 1, !tbaa !36
  store <16 x i8> %152, ptr %153, align 1, !tbaa !36
  %154 = add nuw nsw i64 %147, 32
  %155 = icmp eq i64 %154, %145
  br i1 %155, label %156, label %146, !llvm.loop !70

156:                                              ; preds = %146
  %157 = icmp eq i64 %145, %137
  br i1 %157, label %.loopexit86, label %158

158:                                              ; preds = %156
  %159 = trunc nuw i64 %145 to i32
  %160 = sub i32 %127, %159
  %161 = getelementptr i8, ptr %132, i64 %145
  %162 = getelementptr i8, ptr %131, i64 %145
  %163 = and i64 %137, 28
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %181, label %165, !prof !41

165:                                              ; preds = %158, %142
  %166 = phi i64 [ %145, %158 ], [ 0, %142 ]
  %167 = and i64 %137, 4294967292
  br label %168

168:                                              ; preds = %168, %165
  %169 = phi i64 [ %166, %165 ], [ %173, %168 ]
  %170 = getelementptr i8, ptr %131, i64 %169
  %171 = getelementptr i8, ptr %132, i64 %169
  %172 = load <4 x i8>, ptr %171, align 1, !tbaa !36
  store <4 x i8> %172, ptr %170, align 1, !tbaa !36
  %173 = add nuw i64 %169, 4
  %174 = icmp eq i64 %173, %167
  br i1 %174, label %175, label %168, !llvm.loop !71

175:                                              ; preds = %168
  %176 = getelementptr i8, ptr %131, i64 %167
  %177 = getelementptr i8, ptr %132, i64 %167
  %178 = trunc nuw i64 %167 to i32
  %179 = sub i32 %127, %178
  %180 = icmp eq i64 %167, %137
  br i1 %180, label %.loopexit86, label %181

181:                                              ; preds = %175, %158, %134
  %182 = phi ptr [ %131, %134 ], [ %162, %158 ], [ %176, %175 ]
  %183 = phi ptr [ %132, %134 ], [ %161, %158 ], [ %177, %175 ]
  %184 = phi i32 [ %127, %134 ], [ %160, %158 ], [ %179, %175 ]
  %185 = add i32 %184, -1
  %186 = and i32 %184, 7
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %.loopexit88, label %.preheader87

.preheader87:                                     ; preds = %181, %.preheader87
  %188 = phi ptr [ %192, %.preheader87 ], [ %182, %181 ]
  %189 = phi ptr [ %193, %.preheader87 ], [ %183, %181 ]
  %190 = phi i32 [ %194, %.preheader87 ], [ 0, %181 ]
  %191 = load i8, ptr %189, align 1, !tbaa !36
  store i8 %191, ptr %188, align 1, !tbaa !36
  %192 = getelementptr inbounds nuw i8, ptr %188, i64 1
  %193 = getelementptr inbounds nuw i8, ptr %189, i64 1
  %194 = add nuw nsw i32 %190, 1
  %195 = icmp eq i32 %194, %186
  br i1 %195, label %.loopexit88.loopexit, label %.preheader87, !llvm.loop !72

.loopexit88.loopexit:                             ; preds = %.preheader87
  %196 = and i32 %184, -8
  br label %.loopexit88

.loopexit88:                                      ; preds = %.loopexit88.loopexit, %181
  %197 = phi ptr [ %182, %181 ], [ %192, %.loopexit88.loopexit ]
  %198 = phi ptr [ %183, %181 ], [ %193, %.loopexit88.loopexit ]
  %199 = phi i32 [ %184, %181 ], [ %196, %.loopexit88.loopexit ]
  %200 = icmp ult i32 %185, 7
  br i1 %200, label %.loopexit86, label %.preheader85

.preheader85:                                     ; preds = %.loopexit88, %.preheader85
  %201 = phi ptr [ %227, %.preheader85 ], [ %197, %.loopexit88 ]
  %202 = phi ptr [ %228, %.preheader85 ], [ %198, %.loopexit88 ]
  %203 = phi i32 [ %226, %.preheader85 ], [ %199, %.loopexit88 ]
  %204 = load i8, ptr %202, align 1, !tbaa !36
  store i8 %204, ptr %201, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %201, i64 1
  %206 = getelementptr inbounds nuw i8, ptr %202, i64 1
  %207 = load i8, ptr %206, align 1, !tbaa !36
  store i8 %207, ptr %205, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %201, i64 2
  %209 = getelementptr inbounds nuw i8, ptr %202, i64 2
  %210 = load i8, ptr %209, align 1, !tbaa !36
  store i8 %210, ptr %208, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %201, i64 3
  %212 = getelementptr inbounds nuw i8, ptr %202, i64 3
  %213 = load i8, ptr %212, align 1, !tbaa !36
  store i8 %213, ptr %211, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %201, i64 4
  %215 = getelementptr inbounds nuw i8, ptr %202, i64 4
  %216 = load i8, ptr %215, align 1, !tbaa !36
  store i8 %216, ptr %214, align 1, !tbaa !36
  %217 = getelementptr inbounds nuw i8, ptr %201, i64 5
  %218 = getelementptr inbounds nuw i8, ptr %202, i64 5
  %219 = load i8, ptr %218, align 1, !tbaa !36
  store i8 %219, ptr %217, align 1, !tbaa !36
  %220 = getelementptr inbounds nuw i8, ptr %201, i64 6
  %221 = getelementptr inbounds nuw i8, ptr %202, i64 6
  %222 = load i8, ptr %221, align 1, !tbaa !36
  store i8 %222, ptr %220, align 1, !tbaa !36
  %223 = getelementptr inbounds nuw i8, ptr %201, i64 7
  %224 = getelementptr inbounds nuw i8, ptr %202, i64 7
  %225 = load i8, ptr %224, align 1, !tbaa !36
  store i8 %225, ptr %223, align 1, !tbaa !36
  %226 = add i32 %203, -8
  %227 = getelementptr inbounds nuw i8, ptr %201, i64 8
  %228 = getelementptr inbounds nuw i8, ptr %202, i64 8
  %229 = icmp eq i32 %226, 0
  br i1 %229, label %.loopexit86, label %.preheader85, !llvm.loop !73

.loopexit86:                                      ; preds = %.preheader85, %.loopexit88, %175, %156
  %230 = load i32, ptr %40, align 8, !tbaa !34
  br label %231

231:                                              ; preds = %.loopexit86, %130, %128
  %232 = phi i32 [ %230, %.loopexit86 ], [ %127, %130 ], [ 0, %128 ]
  %233 = load i32, ptr %42, align 8, !tbaa !27
  %234 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %233, i32 %232), !nosanitize !20
  %235 = extractvalue { i32, i1 } %234, 1, !nosanitize !20
  br i1 %235, label %236, label %237, !prof !21, !nosanitize !20

236:                                              ; preds = %231
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

237:                                              ; preds = %231
  %238 = extractvalue { i32, i1 } %234, 0, !nosanitize !20
  %239 = load ptr, ptr %47, align 8, !tbaa !29
  %240 = zext i32 %232 to i64
  %241 = getelementptr inbounds nuw i8, ptr %239, i64 %240
  store i32 0, ptr %48, align 4, !tbaa !17
  %242 = tail call ptr @__errno_location() #17
  store i32 0, ptr %242, align 4, !tbaa !4
  br label %243

243:                                              ; preds = %262, %237
  %244 = phi i32 [ 0, %237 ], [ %263, %262 ]
  %245 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %238, i32 %244), !nosanitize !20
  %246 = extractvalue { i32, i1 } %245, 1, !nosanitize !20
  br i1 %246, label %247, label %248, !prof !21, !nosanitize !20

247:                                              ; preds = %243
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

248:                                              ; preds = %243
  %249 = extractvalue { i32, i1 } %245, 0, !nosanitize !20
  %250 = tail call i32 @llvm.umin.i32(i32 %249, i32 1073741824)
  %251 = load i32, ptr %49, align 4, !tbaa !46
  %252 = zext i32 %244 to i64
  %253 = getelementptr inbounds nuw i8, ptr %241, i64 %252
  %254 = zext nneg i32 %250 to i64
  %255 = tail call i64 @read(i32 noundef %251, ptr noundef %253, i64 noundef %254) #13
  %256 = trunc i64 %255 to i32
  %257 = icmp slt i32 %256, 1
  br i1 %257, label %265, label %258

258:                                              ; preds = %248
  %259 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %244, i32 %256), !nosanitize !20
  %260 = extractvalue { i32, i1 } %259, 1, !nosanitize !20
  br i1 %260, label %261, label %262, !prof !21, !nosanitize !20

261:                                              ; preds = %258
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

262:                                              ; preds = %258
  %263 = extractvalue { i32, i1 } %259, 0, !nosanitize !20
  %264 = icmp ult i32 %263, %238
  br i1 %264, label %243, label %.loopexit84, !llvm.loop !47

265:                                              ; preds = %248
  %266 = icmp slt i32 %256, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %265
  %268 = load i32, ptr %242, align 4, !tbaa !4
  %269 = icmp eq i32 %268, 11
  br i1 %269, label %270, label %.loopexit94

270:                                              ; preds = %267
  store i32 1, ptr %48, align 4, !tbaa !17
  %271 = icmp eq i32 %244, 0
  br i1 %271, label %272, label %.loopexit84

272:                                              ; preds = %270
  %273 = load i32, ptr %242, align 4, !tbaa !4
  br label %.loopexit94

274:                                              ; preds = %265
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit84

.loopexit94:                                      ; preds = %267, %272
  %275 = phi i32 [ %273, %272 ], [ %268, %267 ]
  %276 = tail call ptr @strerror(i32 noundef %275) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %276) #13
  br label %.loopexit93

.loopexit84:                                      ; preds = %262, %274, %270
  %277 = phi i32 [ %244, %270 ], [ %244, %274 ], [ %263, %262 ]
  %278 = load i32, ptr %40, align 8, !tbaa !34
  %279 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %278, i32 %277), !nosanitize !20
  %280 = extractvalue { i32, i1 } %279, 1, !nosanitize !20
  br i1 %280, label %281, label %282, !prof !21, !nosanitize !20

281:                                              ; preds = %.loopexit84
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

282:                                              ; preds = %.loopexit84
  %283 = extractvalue { i32, i1 } %279, 0, !nosanitize !20
  store i32 %283, ptr %40, align 8, !tbaa !34
  %284 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %284, ptr %46, align 8, !tbaa !35
  br label %285

285:                                              ; preds = %282, %124
  %286 = phi i32 [ %283, %282 ], [ %127, %124 ]
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %317, label %288

288:                                              ; preds = %285
  %289 = load i32, ptr %48, align 4, !tbaa !17
  %290 = icmp ne i32 %289, 0
  %291 = icmp ult i32 %286, 4
  %292 = and i1 %291, %290
  br i1 %292, label %317, label %293

293:                                              ; preds = %288
  %294 = icmp ugt i32 %286, 3
  %295 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %294, label %296, label %313

296:                                              ; preds = %293
  %297 = load i8, ptr %295, align 1, !tbaa !36
  %298 = icmp eq i8 %297, 31
  br i1 %298, label %299, label %313

299:                                              ; preds = %296
  %300 = getelementptr inbounds nuw i8, ptr %295, i64 1
  %301 = load i8, ptr %300, align 1, !tbaa !36
  %302 = icmp eq i8 %301, -117
  br i1 %302, label %303, label %313

303:                                              ; preds = %299
  %304 = getelementptr inbounds nuw i8, ptr %295, i64 2
  %305 = load i8, ptr %304, align 1, !tbaa !36
  %306 = icmp eq i8 %305, 8
  br i1 %306, label %307, label %313

307:                                              ; preds = %303
  %308 = getelementptr inbounds nuw i8, ptr %295, i64 3
  %309 = load i8, ptr %308, align 1, !tbaa !36
  %310 = icmp ult i8 %309, 32
  br i1 %310, label %311, label %313

311:                                              ; preds = %307
  %312 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %460

313:                                              ; preds = %307, %303, %299, %296, %293
  %314 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %314, ptr %37, align 8, !tbaa !22
  %315 = zext i32 %286 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %314, ptr align 1 %295, i64 %315, i1 false)
  %316 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %316, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %462

317:                                              ; preds = %288, %285, %117
  %318 = load i32, ptr %41, align 8, !tbaa !26
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %.loopexit95, label %460

320:                                              ; preds = %87
  %321 = load ptr, ptr %44, align 8, !tbaa !30
  %322 = load i32, ptr %42, align 8, !tbaa !27
  %323 = shl i32 %322, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %324 = tail call ptr @__errno_location() #17
  store i32 0, ptr %324, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %325

325:                                              ; preds = %345, %320
  %326 = phi i32 [ %346, %345 ], [ 0, %320 ]
  %327 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %323, i32 %326), !nosanitize !20
  %328 = extractvalue { i32, i1 } %327, 1, !nosanitize !20
  br i1 %328, label %329, label %330, !prof !21, !nosanitize !20

329:                                              ; preds = %325
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

330:                                              ; preds = %325
  %331 = extractvalue { i32, i1 } %327, 0, !nosanitize !20
  %332 = tail call i32 @llvm.umin.i32(i32 %331, i32 1073741824)
  %333 = load i32, ptr %49, align 4, !tbaa !46
  %334 = zext i32 %326 to i64
  %335 = getelementptr inbounds nuw i8, ptr %321, i64 %334
  %336 = zext nneg i32 %332 to i64
  %337 = tail call i64 @read(i32 noundef %333, ptr noundef %335, i64 noundef %336) #13
  %338 = trunc i64 %337 to i32
  %339 = icmp slt i32 %338, 1
  br i1 %339, label %348, label %340

340:                                              ; preds = %330
  %341 = load i32, ptr %0, align 4, !tbaa !4
  %342 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %341, i32 %338), !nosanitize !20
  %343 = extractvalue { i32, i1 } %342, 1, !nosanitize !20
  br i1 %343, label %344, label %345, !prof !21, !nosanitize !20

344:                                              ; preds = %340
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

345:                                              ; preds = %340
  %346 = extractvalue { i32, i1 } %342, 0, !nosanitize !20
  store i32 %346, ptr %0, align 4, !tbaa !4
  %347 = icmp ult i32 %346, %323
  br i1 %347, label %325, label %.loopexit92, !llvm.loop !47

348:                                              ; preds = %330
  %349 = icmp slt i32 %338, 0
  br i1 %349, label %350, label %358

350:                                              ; preds = %348
  %351 = load i32, ptr %324, align 4, !tbaa !4
  %352 = icmp eq i32 %351, 11
  br i1 %352, label %353, label %.loopexit97

353:                                              ; preds = %350
  store i32 1, ptr %48, align 4, !tbaa !17
  %354 = load i32, ptr %0, align 4, !tbaa !4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %.loopexit92

356:                                              ; preds = %353
  %357 = load i32, ptr %324, align 4, !tbaa !4
  br label %.loopexit97

358:                                              ; preds = %348
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit92

.loopexit97:                                      ; preds = %350, %356
  %359 = phi i32 [ %357, %356 ], [ %351, %350 ]
  %360 = tail call ptr @strerror(i32 noundef %359) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %360) #13
  br label %.loopexit93

.loopexit92:                                      ; preds = %345, %358, %353
  %361 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %361, ptr %37, align 8, !tbaa !22
  br label %.loopexit95

362:                                              ; preds = %87
  %363 = load i32, ptr %42, align 8, !tbaa !27
  %364 = shl i32 %363, 1
  store i32 %364, ptr %43, align 8, !tbaa !48
  %365 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %365, ptr %45, align 8, !tbaa !49
  br label %366

366:                                              ; preds = %443, %362
  %367 = phi i32 [ 0, %362 ], [ %428, %443 ]
  %368 = load i32, ptr %40, align 8, !tbaa !34
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %427

370:                                              ; preds = %366
  %371 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %371, label %.loopexit89 [
    i32 0, label %372
    i32 -5, label %372
  ]

372:                                              ; preds = %370, %370
  %373 = load i32, ptr %39, align 8, !tbaa !24
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %423

375:                                              ; preds = %372
  %376 = load i32, ptr %42, align 8, !tbaa !27
  %377 = load ptr, ptr %47, align 8, !tbaa !29
  store i32 0, ptr %48, align 4, !tbaa !17
  %378 = tail call ptr @__errno_location() #17
  store i32 0, ptr %378, align 4, !tbaa !4
  br label %379

379:                                              ; preds = %398, %375
  %380 = phi i32 [ 0, %375 ], [ %399, %398 ]
  %381 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %376, i32 %380), !nosanitize !20
  %382 = extractvalue { i32, i1 } %381, 1, !nosanitize !20
  br i1 %382, label %383, label %384, !prof !21, !nosanitize !20

383:                                              ; preds = %379
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

384:                                              ; preds = %379
  %385 = extractvalue { i32, i1 } %381, 0, !nosanitize !20
  %386 = tail call i32 @llvm.umin.i32(i32 %385, i32 1073741824)
  %387 = load i32, ptr %49, align 4, !tbaa !46
  %388 = zext i32 %380 to i64
  %389 = getelementptr inbounds nuw i8, ptr %377, i64 %388
  %390 = zext nneg i32 %386 to i64
  %391 = tail call i64 @read(i32 noundef %387, ptr noundef %389, i64 noundef %390) #13
  %392 = trunc i64 %391 to i32
  %393 = icmp slt i32 %392, 1
  br i1 %393, label %401, label %394

394:                                              ; preds = %384
  %395 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %380, i32 %392), !nosanitize !20
  %396 = extractvalue { i32, i1 } %395, 1, !nosanitize !20
  br i1 %396, label %397, label %398, !prof !21, !nosanitize !20

397:                                              ; preds = %394
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

398:                                              ; preds = %394
  %399 = extractvalue { i32, i1 } %395, 0, !nosanitize !20
  %400 = icmp ult i32 %399, %376
  br i1 %400, label %379, label %.loopexit83, !llvm.loop !47

401:                                              ; preds = %384
  %402 = icmp slt i32 %392, 0
  br i1 %402, label %403, label %410

403:                                              ; preds = %401
  %404 = load i32, ptr %378, align 4, !tbaa !4
  %405 = icmp eq i32 %404, 11
  br i1 %405, label %406, label %.loopexit91

406:                                              ; preds = %403
  store i32 1, ptr %48, align 4, !tbaa !17
  %407 = icmp eq i32 %380, 0
  br i1 %407, label %408, label %.loopexit83

408:                                              ; preds = %406
  %409 = load i32, ptr %378, align 4, !tbaa !4
  br label %.loopexit91

410:                                              ; preds = %401
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit83

.loopexit91:                                      ; preds = %403, %408
  %411 = phi i32 [ %409, %408 ], [ %404, %403 ]
  %412 = tail call ptr @strerror(i32 noundef %411) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %412) #13
  %413 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit89

.loopexit83:                                      ; preds = %398, %410, %406
  %414 = phi i32 [ %380, %406 ], [ %380, %410 ], [ %399, %398 ]
  %415 = load i32, ptr %40, align 8, !tbaa !34
  %416 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %415, i32 %414), !nosanitize !20
  %417 = extractvalue { i32, i1 } %416, 1, !nosanitize !20
  br i1 %417, label %418, label %419, !prof !21, !nosanitize !20

418:                                              ; preds = %.loopexit83
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

419:                                              ; preds = %.loopexit83
  %420 = extractvalue { i32, i1 } %416, 0, !nosanitize !20
  store i32 %420, ptr %40, align 8, !tbaa !34
  %421 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %421, ptr %46, align 8, !tbaa !35
  %422 = icmp eq i32 %420, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %419, %372
  %424 = load i32, ptr %48, align 4, !tbaa !17
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %.loopexit89

426:                                              ; preds = %423
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit89

427:                                              ; preds = %419, %366
  %428 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %429 = load i32, ptr %43, align 8, !tbaa !48
  %430 = icmp ult i32 %429, %364
  br i1 %430, label %431, label %432

431:                                              ; preds = %427
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %432

432:                                              ; preds = %431, %427
  switch i32 %428, label %443 [
    i32 -2, label %433
    i32 2, label %433
    i32 -4, label %434
    i32 -3, label %435
  ]

433:                                              ; preds = %432, %432
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit89

434:                                              ; preds = %432
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit89

435:                                              ; preds = %432
  %436 = load i32, ptr %50, align 4, !tbaa !33
  %437 = icmp eq i32 %436, 1
  br i1 %437, label %438, label %439

438:                                              ; preds = %435
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %.loopexit89

439:                                              ; preds = %435
  %440 = load ptr, ptr %51, align 8, !tbaa !50
  %441 = icmp eq ptr %440, null
  %442 = select i1 %441, ptr @.str.6, ptr %440
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %442) #13
  br label %.loopexit89

443:                                              ; preds = %432
  %444 = icmp ne i32 %429, 0
  %445 = icmp ne i32 %428, 1
  %446 = select i1 %444, i1 %445, i1 false
  br i1 %446, label %366, label %.loopexit89, !llvm.loop !51

.loopexit89:                                      ; preds = %443, %370, %439, %438, %434, %433, %426, %423, %.loopexit91
  %447 = phi i32 [ %413, %.loopexit91 ], [ %367, %423 ], [ %367, %426 ], [ %428, %433 ], [ -4, %434 ], [ 0, %438 ], [ -3, %439 ], [ %371, %370 ], [ %428, %443 ]
  %448 = load i32, ptr %43, align 8, !tbaa !48
  %449 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %364, i32 %448), !nosanitize !20
  %450 = extractvalue { i32, i1 } %449, 1, !nosanitize !20
  br i1 %450, label %451, label %452, !prof !21, !nosanitize !20

451:                                              ; preds = %.loopexit89
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

452:                                              ; preds = %.loopexit89
  %453 = extractvalue { i32, i1 } %449, 0, !nosanitize !20
  store i32 %453, ptr %0, align 8, !tbaa !19
  %454 = load ptr, ptr %45, align 8, !tbaa !49
  %455 = zext i32 %453 to i64
  %456 = sub nsw i64 0, %455
  %457 = getelementptr inbounds i8, ptr %454, i64 %456
  store ptr %457, ptr %37, align 8, !tbaa !22
  switch i32 %447, label %.loopexit93 [
    i32 1, label %458
    i32 0, label %460
  ]

458:                                              ; preds = %452
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %460

459:                                              ; preds = %87
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit93

460:                                              ; preds = %458, %452, %317, %311
  %461 = load i32, ptr %0, align 8, !tbaa !19
  br label %462

462:                                              ; preds = %460, %313
  %463 = phi i32 [ %461, %460 ], [ %316, %313 ]
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %.loopexit95

465:                                              ; preds = %462
  %466 = load i32, ptr %39, align 8, !tbaa !24
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %.backedge, label %468

468:                                              ; preds = %465
  %469 = load i32, ptr %40, align 8, !tbaa !34
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %.loopexit95, label %.backedge

.backedge:                                        ; preds = %468, %465
  br label %87, !llvm.loop !52

.loopexit95:                                      ; preds = %468, %462, %317, %.loopexit92
  %471 = load i64, ptr %33, align 8, !tbaa !18
  br label %472

472:                                              ; preds = %.loopexit95, %79
  %473 = phi i64 [ %471, %.loopexit95 ], [ %80, %79 ]
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %.loopexit96, label %55, !llvm.loop !53

.loopexit96:                                      ; preds = %472, %84, %32
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %485 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %486 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %490 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %493

493:                                              ; preds = %.loopexit77, %.loopexit96
  %494 = phi ptr [ %2, %.loopexit96 ], [ %1083, %.loopexit77 ]
  %495 = phi i64 [ 1, %.loopexit96 ], [ %1082, %.loopexit77 ]
  %496 = phi i64 [ 0, %.loopexit96 ], [ %1081, %.loopexit77 ]
  %497 = call i64 @llvm.umin.i64(i64 %495, i64 4294967295)
  %498 = trunc nuw i64 %497 to i32
  %499 = load i32, ptr %0, align 8, !tbaa !19
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %516, label %501

501:                                              ; preds = %493
  %502 = call i32 @llvm.umin.i32(i32 %499, i32 %498)
  %503 = load ptr, ptr %475, align 8, !tbaa !22
  %504 = zext i32 %502 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %494, ptr align 1 %503, i64 %504, i1 false)
  %505 = load ptr, ptr %475, align 8, !tbaa !22
  %506 = getelementptr inbounds nuw i8, ptr %505, i64 %504
  store ptr %506, ptr %475, align 8, !tbaa !22
  %507 = load i32, ptr %0, align 8, !tbaa !19
  %508 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %507, i32 %502), !nosanitize !20
  %509 = extractvalue { i32, i1 } %508, 1, !nosanitize !20
  br i1 %509, label %510, label %511, !prof !21, !nosanitize !20

510:                                              ; preds = %501
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

511:                                              ; preds = %501
  %512 = extractvalue { i32, i1 } %508, 0, !nosanitize !20
  store i32 %512, ptr %0, align 8, !tbaa !19
  %513 = load i32, ptr %9, align 8, !tbaa !16
  %514 = icmp ne i32 %513, 0
  %515 = sext i1 %514 to i32
  br label %1060

516:                                              ; preds = %493
  %517 = load i32, ptr %476, align 8, !tbaa !24
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %522, label %519

519:                                              ; preds = %516
  %520 = load i32, ptr %477, align 8, !tbaa !25
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %.loopexit81, label %522

522:                                              ; preds = %519, %516
  %523 = load i32, ptr %478, align 8, !tbaa !26
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %.preheader866, label %525

525:                                              ; preds = %522
  %526 = load i32, ptr %479, align 8, !tbaa !27
  %527 = shl i32 %526, 1
  %528 = icmp ugt i32 %527, %498
  br i1 %528, label %.preheader866, label %919

.preheader866:                                    ; preds = %525, %522
  br label %529

529:                                              ; preds = %.preheader866, %914
  %530 = phi i32 [ %915, %914 ], [ %523, %.preheader866 ]
  switch i32 %530, label %902 [
    i32 0, label %531
    i32 1, label %762
    i32 2, label %805
  ]

531:                                              ; preds = %529
  %532 = load i32, ptr %479, align 8, !tbaa !27
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %553

534:                                              ; preds = %531
  %535 = load i32, ptr %490, align 4, !tbaa !28
  %536 = zext i32 %535 to i64
  %537 = call noalias ptr @malloc(i64 noundef %536) #16
  store ptr %537, ptr %483, align 8, !tbaa !29
  %538 = load i32, ptr %490, align 4, !tbaa !28
  %539 = shl i32 %538, 1
  %540 = zext i32 %539 to i64
  %541 = call noalias ptr @malloc(i64 noundef %540) #16
  store ptr %541, ptr %489, align 8, !tbaa !30
  %542 = icmp eq ptr %537, null
  %543 = icmp eq ptr %541, null
  %544 = or i1 %542, %543
  br i1 %544, label %545, label %546

545:                                              ; preds = %534
  call void @free(ptr noundef %541) #13
  call void @free(ptr noundef %537) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit75

546:                                              ; preds = %534
  %547 = load i32, ptr %490, align 4, !tbaa !28
  store i32 %547, ptr %479, align 8, !tbaa !27
  store i32 0, ptr %477, align 8, !tbaa !25
  store ptr null, ptr %482, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %491, i8 0, i64 24, i1 false)
  %548 = call i32 @inflateInit2_(ptr noundef nonnull %482, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %553, label %550

550:                                              ; preds = %546
  %551 = load ptr, ptr %489, align 8, !tbaa !30
  call void @free(ptr noundef %551) #13
  %552 = load ptr, ptr %483, align 8, !tbaa !29
  call void @free(ptr noundef %552) #13
  store i32 0, ptr %479, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit75

553:                                              ; preds = %546, %531
  %554 = load i32, ptr %492, align 8, !tbaa !32
  %555 = icmp eq i32 %554, -1
  br i1 %555, label %559, label %556

556:                                              ; preds = %553
  %557 = load i32, ptr %486, align 4, !tbaa !33
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %564

559:                                              ; preds = %556, %553
  %560 = call i32 @inflateReset(ptr noundef nonnull %482) #13
  store i32 2, ptr %478, align 8, !tbaa !26
  %561 = load i32, ptr %486, align 4, !tbaa !33
  %562 = icmp ne i32 %561, -1
  %563 = zext i1 %562 to i32
  store i32 %563, ptr %486, align 4, !tbaa !33
  store i32 0, ptr %492, align 8, !tbaa !32
  br label %759

564:                                              ; preds = %556
  %565 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %565, label %.loopexit75 [
    i32 0, label %566
    i32 -5, label %566
  ]

566:                                              ; preds = %564, %564
  %567 = load i32, ptr %476, align 8, !tbaa !24
  %568 = icmp eq i32 %567, 0
  %569 = load i32, ptr %477, align 8, !tbaa !34
  br i1 %568, label %570, label %727

570:                                              ; preds = %566
  %571 = icmp eq i32 %569, 0
  br i1 %571, label %673, label %572

572:                                              ; preds = %570
  %573 = load ptr, ptr %483, align 8, !tbaa !29
  %574 = load ptr, ptr %482, align 8, !tbaa !35
  %575 = icmp eq ptr %574, %573
  br i1 %575, label %673, label %576

576:                                              ; preds = %572
  %577 = ptrtoaddr ptr %574 to i64
  %578 = ptrtoaddr ptr %573 to i64
  %579 = zext i32 %569 to i64
  %580 = icmp ult i32 %569, 4
  %581 = sub i64 %578, %577
  %582 = icmp ult i64 %581, 32
  %583 = or i1 %580, %582
  br i1 %583, label %623, label %584

584:                                              ; preds = %576
  %585 = icmp ult i32 %569, 32
  br i1 %585, label %607, label %586

586:                                              ; preds = %584
  %587 = and i64 %579, 4294967264
  br label %588

588:                                              ; preds = %588, %586
  %589 = phi i64 [ 0, %586 ], [ %596, %588 ]
  %590 = getelementptr i8, ptr %573, i64 %589
  %591 = getelementptr i8, ptr %574, i64 %589
  %592 = getelementptr i8, ptr %591, i64 16
  %593 = load <16 x i8>, ptr %591, align 1, !tbaa !36
  %594 = load <16 x i8>, ptr %592, align 1, !tbaa !36
  %595 = getelementptr i8, ptr %590, i64 16
  store <16 x i8> %593, ptr %590, align 1, !tbaa !36
  store <16 x i8> %594, ptr %595, align 1, !tbaa !36
  %596 = add nuw nsw i64 %589, 32
  %597 = icmp eq i64 %596, %587
  br i1 %597, label %598, label %588, !llvm.loop !74

598:                                              ; preds = %588
  %599 = icmp eq i64 %587, %579
  br i1 %599, label %.loopexit68, label %600

600:                                              ; preds = %598
  %601 = trunc nuw i64 %587 to i32
  %602 = sub i32 %569, %601
  %603 = getelementptr i8, ptr %574, i64 %587
  %604 = getelementptr i8, ptr %573, i64 %587
  %605 = and i64 %579, 28
  %606 = icmp eq i64 %605, 0
  br i1 %606, label %623, label %607, !prof !41

607:                                              ; preds = %600, %584
  %608 = phi i64 [ %587, %600 ], [ 0, %584 ]
  %609 = and i64 %579, 4294967292
  br label %610

610:                                              ; preds = %610, %607
  %611 = phi i64 [ %608, %607 ], [ %615, %610 ]
  %612 = getelementptr i8, ptr %573, i64 %611
  %613 = getelementptr i8, ptr %574, i64 %611
  %614 = load <4 x i8>, ptr %613, align 1, !tbaa !36
  store <4 x i8> %614, ptr %612, align 1, !tbaa !36
  %615 = add nuw i64 %611, 4
  %616 = icmp eq i64 %615, %609
  br i1 %616, label %617, label %610, !llvm.loop !75

617:                                              ; preds = %610
  %618 = getelementptr i8, ptr %573, i64 %609
  %619 = getelementptr i8, ptr %574, i64 %609
  %620 = trunc nuw i64 %609 to i32
  %621 = sub i32 %569, %620
  %622 = icmp eq i64 %609, %579
  br i1 %622, label %.loopexit68, label %623

623:                                              ; preds = %617, %600, %576
  %624 = phi ptr [ %573, %576 ], [ %604, %600 ], [ %618, %617 ]
  %625 = phi ptr [ %574, %576 ], [ %603, %600 ], [ %619, %617 ]
  %626 = phi i32 [ %569, %576 ], [ %602, %600 ], [ %621, %617 ]
  %627 = add i32 %626, -1
  %628 = and i32 %626, 7
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %.loopexit70, label %.preheader69

.preheader69:                                     ; preds = %623, %.preheader69
  %630 = phi ptr [ %634, %.preheader69 ], [ %624, %623 ]
  %631 = phi ptr [ %635, %.preheader69 ], [ %625, %623 ]
  %632 = phi i32 [ %636, %.preheader69 ], [ 0, %623 ]
  %633 = load i8, ptr %631, align 1, !tbaa !36
  store i8 %633, ptr %630, align 1, !tbaa !36
  %634 = getelementptr inbounds nuw i8, ptr %630, i64 1
  %635 = getelementptr inbounds nuw i8, ptr %631, i64 1
  %636 = add nuw nsw i32 %632, 1
  %637 = icmp eq i32 %636, %628
  br i1 %637, label %.loopexit70.loopexit, label %.preheader69, !llvm.loop !76

.loopexit70.loopexit:                             ; preds = %.preheader69
  %638 = and i32 %626, -8
  br label %.loopexit70

.loopexit70:                                      ; preds = %.loopexit70.loopexit, %623
  %639 = phi ptr [ %624, %623 ], [ %634, %.loopexit70.loopexit ]
  %640 = phi ptr [ %625, %623 ], [ %635, %.loopexit70.loopexit ]
  %641 = phi i32 [ %626, %623 ], [ %638, %.loopexit70.loopexit ]
  %642 = icmp ult i32 %627, 7
  br i1 %642, label %.loopexit68, label %.preheader

.preheader:                                       ; preds = %.loopexit70, %.preheader
  %643 = phi ptr [ %669, %.preheader ], [ %639, %.loopexit70 ]
  %644 = phi ptr [ %670, %.preheader ], [ %640, %.loopexit70 ]
  %645 = phi i32 [ %668, %.preheader ], [ %641, %.loopexit70 ]
  %646 = load i8, ptr %644, align 1, !tbaa !36
  store i8 %646, ptr %643, align 1, !tbaa !36
  %647 = getelementptr inbounds nuw i8, ptr %643, i64 1
  %648 = getelementptr inbounds nuw i8, ptr %644, i64 1
  %649 = load i8, ptr %648, align 1, !tbaa !36
  store i8 %649, ptr %647, align 1, !tbaa !36
  %650 = getelementptr inbounds nuw i8, ptr %643, i64 2
  %651 = getelementptr inbounds nuw i8, ptr %644, i64 2
  %652 = load i8, ptr %651, align 1, !tbaa !36
  store i8 %652, ptr %650, align 1, !tbaa !36
  %653 = getelementptr inbounds nuw i8, ptr %643, i64 3
  %654 = getelementptr inbounds nuw i8, ptr %644, i64 3
  %655 = load i8, ptr %654, align 1, !tbaa !36
  store i8 %655, ptr %653, align 1, !tbaa !36
  %656 = getelementptr inbounds nuw i8, ptr %643, i64 4
  %657 = getelementptr inbounds nuw i8, ptr %644, i64 4
  %658 = load i8, ptr %657, align 1, !tbaa !36
  store i8 %658, ptr %656, align 1, !tbaa !36
  %659 = getelementptr inbounds nuw i8, ptr %643, i64 5
  %660 = getelementptr inbounds nuw i8, ptr %644, i64 5
  %661 = load i8, ptr %660, align 1, !tbaa !36
  store i8 %661, ptr %659, align 1, !tbaa !36
  %662 = getelementptr inbounds nuw i8, ptr %643, i64 6
  %663 = getelementptr inbounds nuw i8, ptr %644, i64 6
  %664 = load i8, ptr %663, align 1, !tbaa !36
  store i8 %664, ptr %662, align 1, !tbaa !36
  %665 = getelementptr inbounds nuw i8, ptr %643, i64 7
  %666 = getelementptr inbounds nuw i8, ptr %644, i64 7
  %667 = load i8, ptr %666, align 1, !tbaa !36
  store i8 %667, ptr %665, align 1, !tbaa !36
  %668 = add i32 %645, -8
  %669 = getelementptr inbounds nuw i8, ptr %643, i64 8
  %670 = getelementptr inbounds nuw i8, ptr %644, i64 8
  %671 = icmp eq i32 %668, 0
  br i1 %671, label %.loopexit68, label %.preheader, !llvm.loop !77

.loopexit68:                                      ; preds = %.preheader, %.loopexit70, %617, %598
  %672 = load i32, ptr %477, align 8, !tbaa !34
  br label %673

673:                                              ; preds = %.loopexit68, %572, %570
  %674 = phi i32 [ %672, %.loopexit68 ], [ %569, %572 ], [ 0, %570 ]
  %675 = load i32, ptr %479, align 8, !tbaa !27
  %676 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %675, i32 %674), !nosanitize !20
  %677 = extractvalue { i32, i1 } %676, 1, !nosanitize !20
  br i1 %677, label %678, label %679, !prof !21, !nosanitize !20

678:                                              ; preds = %673
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

679:                                              ; preds = %673
  %680 = extractvalue { i32, i1 } %676, 0, !nosanitize !20
  %681 = load ptr, ptr %483, align 8, !tbaa !29
  %682 = zext i32 %674 to i64
  %683 = getelementptr inbounds nuw i8, ptr %681, i64 %682
  store i32 0, ptr %484, align 4, !tbaa !17
  %684 = tail call ptr @__errno_location() #17
  store i32 0, ptr %684, align 4, !tbaa !4
  br label %685

685:                                              ; preds = %704, %679
  %686 = phi i32 [ 0, %679 ], [ %705, %704 ]
  %687 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %680, i32 %686), !nosanitize !20
  %688 = extractvalue { i32, i1 } %687, 1, !nosanitize !20
  br i1 %688, label %689, label %690, !prof !21, !nosanitize !20

689:                                              ; preds = %685
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

690:                                              ; preds = %685
  %691 = extractvalue { i32, i1 } %687, 0, !nosanitize !20
  %692 = call i32 @llvm.umin.i32(i32 %691, i32 1073741824)
  %693 = load i32, ptr %485, align 4, !tbaa !46
  %694 = zext i32 %686 to i64
  %695 = getelementptr inbounds nuw i8, ptr %683, i64 %694
  %696 = zext nneg i32 %692 to i64
  %697 = call i64 @read(i32 noundef %693, ptr noundef %695, i64 noundef %696) #13
  %698 = trunc i64 %697 to i32
  %699 = icmp slt i32 %698, 1
  br i1 %699, label %707, label %700

700:                                              ; preds = %690
  %701 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %686, i32 %698), !nosanitize !20
  %702 = extractvalue { i32, i1 } %701, 1, !nosanitize !20
  br i1 %702, label %703, label %704, !prof !21, !nosanitize !20

703:                                              ; preds = %700
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

704:                                              ; preds = %700
  %705 = extractvalue { i32, i1 } %701, 0, !nosanitize !20
  %706 = icmp ult i32 %705, %680
  br i1 %706, label %685, label %.loopexit67, !llvm.loop !47

707:                                              ; preds = %690
  %708 = icmp slt i32 %698, 0
  br i1 %708, label %709, label %716

709:                                              ; preds = %707
  %710 = load i32, ptr %684, align 4, !tbaa !4
  %711 = icmp eq i32 %710, 11
  br i1 %711, label %712, label %.loopexit76

712:                                              ; preds = %709
  store i32 1, ptr %484, align 4, !tbaa !17
  %713 = icmp eq i32 %686, 0
  br i1 %713, label %714, label %.loopexit67

714:                                              ; preds = %712
  %715 = load i32, ptr %684, align 4, !tbaa !4
  br label %.loopexit76

716:                                              ; preds = %707
  store i32 1, ptr %476, align 8, !tbaa !24
  br label %.loopexit67

.loopexit76:                                      ; preds = %709, %714
  %717 = phi i32 [ %715, %714 ], [ %710, %709 ]
  %718 = call ptr @strerror(i32 noundef %717) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %718) #13
  br label %.loopexit75

.loopexit67:                                      ; preds = %704, %716, %712
  %719 = phi i32 [ %686, %712 ], [ %686, %716 ], [ %705, %704 ]
  %720 = load i32, ptr %477, align 8, !tbaa !34
  %721 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %720, i32 %719), !nosanitize !20
  %722 = extractvalue { i32, i1 } %721, 1, !nosanitize !20
  br i1 %722, label %723, label %724, !prof !21, !nosanitize !20

723:                                              ; preds = %.loopexit67
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

724:                                              ; preds = %.loopexit67
  %725 = extractvalue { i32, i1 } %721, 0, !nosanitize !20
  store i32 %725, ptr %477, align 8, !tbaa !34
  %726 = load ptr, ptr %483, align 8, !tbaa !29
  store ptr %726, ptr %482, align 8, !tbaa !35
  br label %727

727:                                              ; preds = %724, %566
  %728 = phi i32 [ %725, %724 ], [ %569, %566 ]
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %759, label %730

730:                                              ; preds = %727
  %731 = load i32, ptr %484, align 4, !tbaa !17
  %732 = icmp ne i32 %731, 0
  %733 = icmp ult i32 %728, 4
  %734 = and i1 %733, %732
  br i1 %734, label %759, label %735

735:                                              ; preds = %730
  %736 = icmp ugt i32 %728, 3
  %737 = load ptr, ptr %482, align 8, !tbaa !35
  br i1 %736, label %738, label %755

738:                                              ; preds = %735
  %739 = load i8, ptr %737, align 1, !tbaa !36
  %740 = icmp eq i8 %739, 31
  br i1 %740, label %741, label %755

741:                                              ; preds = %738
  %742 = getelementptr inbounds nuw i8, ptr %737, i64 1
  %743 = load i8, ptr %742, align 1, !tbaa !36
  %744 = icmp eq i8 %743, -117
  br i1 %744, label %745, label %755

745:                                              ; preds = %741
  %746 = getelementptr inbounds nuw i8, ptr %737, i64 2
  %747 = load i8, ptr %746, align 1, !tbaa !36
  %748 = icmp eq i8 %747, 8
  br i1 %748, label %749, label %755

749:                                              ; preds = %745
  %750 = getelementptr inbounds nuw i8, ptr %737, i64 3
  %751 = load i8, ptr %750, align 1, !tbaa !36
  %752 = icmp ult i8 %751, 32
  br i1 %752, label %753, label %755

753:                                              ; preds = %749
  %754 = call i32 @inflateReset(ptr noundef nonnull %482) #13
  store i32 2, ptr %478, align 8, !tbaa !26
  store i32 1, ptr %486, align 4, !tbaa !33
  store i32 0, ptr %492, align 8, !tbaa !32
  br label %903

755:                                              ; preds = %749, %745, %741, %738, %735
  %756 = load ptr, ptr %489, align 8, !tbaa !30
  store ptr %756, ptr %475, align 8, !tbaa !22
  %757 = zext i32 %728 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %756, ptr align 1 %737, i64 %757, i1 false)
  %758 = load i32, ptr %477, align 8, !tbaa !34
  store i32 %758, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %477, align 8, !tbaa !34
  store i32 1, ptr %478, align 8, !tbaa !26
  br label %905

759:                                              ; preds = %730, %727, %559
  %760 = load i32, ptr %478, align 8, !tbaa !26
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %.loopexit77, label %903

762:                                              ; preds = %529
  %763 = load ptr, ptr %489, align 8, !tbaa !30
  %764 = load i32, ptr %479, align 8, !tbaa !27
  %765 = shl i32 %764, 1
  store i32 0, ptr %484, align 4, !tbaa !17
  %766 = tail call ptr @__errno_location() #17
  store i32 0, ptr %766, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %767

767:                                              ; preds = %787, %762
  %768 = phi i32 [ %788, %787 ], [ 0, %762 ]
  %769 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %765, i32 %768), !nosanitize !20
  %770 = extractvalue { i32, i1 } %769, 1, !nosanitize !20
  br i1 %770, label %771, label %772, !prof !21, !nosanitize !20

771:                                              ; preds = %767
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

772:                                              ; preds = %767
  %773 = extractvalue { i32, i1 } %769, 0, !nosanitize !20
  %774 = call i32 @llvm.umin.i32(i32 %773, i32 1073741824)
  %775 = load i32, ptr %485, align 4, !tbaa !46
  %776 = zext i32 %768 to i64
  %777 = getelementptr inbounds nuw i8, ptr %763, i64 %776
  %778 = zext nneg i32 %774 to i64
  %779 = call i64 @read(i32 noundef %775, ptr noundef %777, i64 noundef %778) #13
  %780 = trunc i64 %779 to i32
  %781 = icmp slt i32 %780, 1
  br i1 %781, label %790, label %782

782:                                              ; preds = %772
  %783 = load i32, ptr %0, align 4, !tbaa !4
  %784 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %783, i32 %780), !nosanitize !20
  %785 = extractvalue { i32, i1 } %784, 1, !nosanitize !20
  br i1 %785, label %786, label %787, !prof !21, !nosanitize !20

786:                                              ; preds = %782
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

787:                                              ; preds = %782
  %788 = extractvalue { i32, i1 } %784, 0, !nosanitize !20
  store i32 %788, ptr %0, align 4, !tbaa !4
  %789 = icmp ult i32 %788, %765
  br i1 %789, label %767, label %.loopexit74, !llvm.loop !47

790:                                              ; preds = %772
  %791 = icmp slt i32 %780, 0
  br i1 %791, label %792, label %800

792:                                              ; preds = %790
  %793 = load i32, ptr %766, align 4, !tbaa !4
  %794 = icmp eq i32 %793, 11
  br i1 %794, label %795, label %801

795:                                              ; preds = %792
  store i32 1, ptr %484, align 4, !tbaa !17
  %796 = load i32, ptr %0, align 4, !tbaa !4
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %798, label %.loopexit74

798:                                              ; preds = %795
  %799 = load i32, ptr %766, align 4, !tbaa !4
  br label %801

800:                                              ; preds = %790
  store i32 1, ptr %476, align 8, !tbaa !24
  br label %.loopexit74

801:                                              ; preds = %798, %792
  %802 = phi i32 [ %799, %798 ], [ %793, %792 ]
  %803 = call ptr @strerror(i32 noundef %802) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %803) #13
  br label %.loopexit75

.loopexit74:                                      ; preds = %787, %800, %795
  %804 = load ptr, ptr %489, align 8, !tbaa !30
  store ptr %804, ptr %475, align 8, !tbaa !22
  br label %.loopexit77

805:                                              ; preds = %529
  %806 = load i32, ptr %479, align 8, !tbaa !27
  %807 = shl i32 %806, 1
  store i32 %807, ptr %480, align 8, !tbaa !48
  %808 = load ptr, ptr %489, align 8, !tbaa !30
  store ptr %808, ptr %481, align 8, !tbaa !49
  br label %809

809:                                              ; preds = %886, %805
  %810 = phi i32 [ 0, %805 ], [ %871, %886 ]
  %811 = load i32, ptr %477, align 8, !tbaa !34
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %870

813:                                              ; preds = %809
  %814 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %814, label %.loopexit71 [
    i32 0, label %815
    i32 -5, label %815
  ]

815:                                              ; preds = %813, %813
  %816 = load i32, ptr %476, align 8, !tbaa !24
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %818, label %866

818:                                              ; preds = %815
  %819 = load i32, ptr %479, align 8, !tbaa !27
  %820 = load ptr, ptr %483, align 8, !tbaa !29
  store i32 0, ptr %484, align 4, !tbaa !17
  %821 = tail call ptr @__errno_location() #17
  store i32 0, ptr %821, align 4, !tbaa !4
  br label %822

822:                                              ; preds = %841, %818
  %823 = phi i32 [ 0, %818 ], [ %842, %841 ]
  %824 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %819, i32 %823), !nosanitize !20
  %825 = extractvalue { i32, i1 } %824, 1, !nosanitize !20
  br i1 %825, label %826, label %827, !prof !21, !nosanitize !20

826:                                              ; preds = %822
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

827:                                              ; preds = %822
  %828 = extractvalue { i32, i1 } %824, 0, !nosanitize !20
  %829 = call i32 @llvm.umin.i32(i32 %828, i32 1073741824)
  %830 = load i32, ptr %485, align 4, !tbaa !46
  %831 = zext i32 %823 to i64
  %832 = getelementptr inbounds nuw i8, ptr %820, i64 %831
  %833 = zext nneg i32 %829 to i64
  %834 = call i64 @read(i32 noundef %830, ptr noundef %832, i64 noundef %833) #13
  %835 = trunc i64 %834 to i32
  %836 = icmp slt i32 %835, 1
  br i1 %836, label %844, label %837

837:                                              ; preds = %827
  %838 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %823, i32 %835), !nosanitize !20
  %839 = extractvalue { i32, i1 } %838, 1, !nosanitize !20
  br i1 %839, label %840, label %841, !prof !21, !nosanitize !20

840:                                              ; preds = %837
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

841:                                              ; preds = %837
  %842 = extractvalue { i32, i1 } %838, 0, !nosanitize !20
  %843 = icmp ult i32 %842, %819
  br i1 %843, label %822, label %.loopexit, !llvm.loop !47

844:                                              ; preds = %827
  %845 = icmp slt i32 %835, 0
  br i1 %845, label %846, label %853

846:                                              ; preds = %844
  %847 = load i32, ptr %821, align 4, !tbaa !4
  %848 = icmp eq i32 %847, 11
  br i1 %848, label %849, label %.loopexit72

849:                                              ; preds = %846
  store i32 1, ptr %484, align 4, !tbaa !17
  %850 = icmp eq i32 %823, 0
  br i1 %850, label %851, label %.loopexit

851:                                              ; preds = %849
  %852 = load i32, ptr %821, align 4, !tbaa !4
  br label %.loopexit72

853:                                              ; preds = %844
  store i32 1, ptr %476, align 8, !tbaa !24
  br label %.loopexit

.loopexit72:                                      ; preds = %846, %851
  %854 = phi i32 [ %852, %851 ], [ %847, %846 ]
  %855 = call ptr @strerror(i32 noundef %854) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %855) #13
  %856 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit71

.loopexit:                                        ; preds = %841, %853, %849
  %857 = phi i32 [ %823, %849 ], [ %823, %853 ], [ %842, %841 ]
  %858 = load i32, ptr %477, align 8, !tbaa !34
  %859 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %858, i32 %857), !nosanitize !20
  %860 = extractvalue { i32, i1 } %859, 1, !nosanitize !20
  br i1 %860, label %861, label %862, !prof !21, !nosanitize !20

861:                                              ; preds = %.loopexit
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

862:                                              ; preds = %.loopexit
  %863 = extractvalue { i32, i1 } %859, 0, !nosanitize !20
  store i32 %863, ptr %477, align 8, !tbaa !34
  %864 = load ptr, ptr %483, align 8, !tbaa !29
  store ptr %864, ptr %482, align 8, !tbaa !35
  %865 = icmp eq i32 %863, 0
  br i1 %865, label %866, label %870

866:                                              ; preds = %862, %815
  %867 = load i32, ptr %484, align 4, !tbaa !17
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %869, label %.loopexit71

869:                                              ; preds = %866
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit71

870:                                              ; preds = %862, %809
  %871 = call i32 @inflate(ptr noundef nonnull %482, i32 noundef 0) #13
  %872 = load i32, ptr %480, align 8, !tbaa !48
  %873 = icmp ult i32 %872, %807
  br i1 %873, label %874, label %875

874:                                              ; preds = %870
  store i32 0, ptr %486, align 4, !tbaa !33
  br label %875

875:                                              ; preds = %874, %870
  switch i32 %871, label %886 [
    i32 -2, label %876
    i32 2, label %876
    i32 -4, label %877
    i32 -3, label %878
  ]

876:                                              ; preds = %875, %875
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit71

877:                                              ; preds = %875
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit71

878:                                              ; preds = %875
  %879 = load i32, ptr %486, align 4, !tbaa !33
  %880 = icmp eq i32 %879, 1
  br i1 %880, label %881, label %882

881:                                              ; preds = %878
  store i32 0, ptr %477, align 8, !tbaa !34
  store i32 1, ptr %476, align 8, !tbaa !24
  store i32 0, ptr %478, align 8, !tbaa !26
  br label %.loopexit71

882:                                              ; preds = %878
  %883 = load ptr, ptr %487, align 8, !tbaa !50
  %884 = icmp eq ptr %883, null
  %885 = select i1 %884, ptr @.str.6, ptr %883
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %885) #13
  br label %.loopexit71

886:                                              ; preds = %875
  %887 = icmp ne i32 %872, 0
  %888 = icmp ne i32 %871, 1
  %889 = select i1 %887, i1 %888, i1 false
  br i1 %889, label %809, label %.loopexit71, !llvm.loop !51

.loopexit71:                                      ; preds = %886, %813, %882, %881, %877, %876, %869, %866, %.loopexit72
  %890 = phi i32 [ %856, %.loopexit72 ], [ %810, %866 ], [ %810, %869 ], [ %871, %876 ], [ -4, %877 ], [ 0, %881 ], [ -3, %882 ], [ %871, %886 ], [ %814, %813 ]
  %891 = load i32, ptr %480, align 8, !tbaa !48
  %892 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %807, i32 %891), !nosanitize !20
  %893 = extractvalue { i32, i1 } %892, 1, !nosanitize !20
  br i1 %893, label %894, label %895, !prof !21, !nosanitize !20

894:                                              ; preds = %.loopexit71
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

895:                                              ; preds = %.loopexit71
  %896 = extractvalue { i32, i1 } %892, 0, !nosanitize !20
  store i32 %896, ptr %0, align 8, !tbaa !19
  %897 = load ptr, ptr %481, align 8, !tbaa !49
  %898 = zext i32 %896 to i64
  %899 = sub nsw i64 0, %898
  %900 = getelementptr inbounds i8, ptr %897, i64 %899
  store ptr %900, ptr %475, align 8, !tbaa !22
  switch i32 %890, label %.loopexit75 [
    i32 1, label %901
    i32 0, label %903
  ]

901:                                              ; preds = %895
  store i32 0, ptr %486, align 4, !tbaa !33
  store i32 0, ptr %478, align 8, !tbaa !26
  br label %903

902:                                              ; preds = %529
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit75

903:                                              ; preds = %901, %895, %759, %753
  %904 = load i32, ptr %0, align 8, !tbaa !19
  br label %905

905:                                              ; preds = %903, %755
  %906 = phi i32 [ %904, %903 ], [ %758, %755 ]
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %908, label %.loopexit77

908:                                              ; preds = %905
  %909 = load i32, ptr %476, align 8, !tbaa !24
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %914, label %911

911:                                              ; preds = %908
  %912 = load i32, ptr %477, align 8, !tbaa !34
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %.loopexit77, label %914

914:                                              ; preds = %911, %908
  %915 = load i32, ptr %478, align 8, !tbaa !26
  br label %529, !llvm.loop !52

.loopexit75:                                      ; preds = %895, %564, %902, %801, %.loopexit76, %550, %545
  %916 = load i32, ptr %0, align 8, !tbaa !19
  %917 = icmp eq i32 %916, 0
  %918 = sext i1 %917 to i32
  br label %.loopexit77

919:                                              ; preds = %525
  %920 = icmp eq i32 %523, 1
  br i1 %920, label %921, label %958

921:                                              ; preds = %919
  store i32 0, ptr %484, align 4, !tbaa !17
  %922 = tail call ptr @__errno_location() #17
  store i32 0, ptr %922, align 4, !tbaa !4
  br label %923

923:                                              ; preds = %942, %921
  %924 = phi i32 [ 0, %921 ], [ %943, %942 ]
  %925 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %498, i32 %924), !nosanitize !20
  %926 = extractvalue { i32, i1 } %925, 1, !nosanitize !20
  br i1 %926, label %927, label %928, !prof !21, !nosanitize !20

927:                                              ; preds = %923
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

928:                                              ; preds = %923
  %929 = extractvalue { i32, i1 } %925, 0, !nosanitize !20
  %930 = call i32 @llvm.umin.i32(i32 %929, i32 1073741824)
  %931 = load i32, ptr %485, align 4, !tbaa !46
  %932 = zext i32 %924 to i64
  %933 = getelementptr inbounds nuw i8, ptr %494, i64 %932
  %934 = zext nneg i32 %930 to i64
  %935 = call i64 @read(i32 noundef %931, ptr noundef %933, i64 noundef %934) #13
  %936 = trunc i64 %935 to i32
  %937 = icmp slt i32 %936, 1
  br i1 %937, label %945, label %938

938:                                              ; preds = %928
  %939 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %924, i32 %936), !nosanitize !20
  %940 = extractvalue { i32, i1 } %939, 1, !nosanitize !20
  br i1 %940, label %941, label %942, !prof !21, !nosanitize !20

941:                                              ; preds = %938
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

942:                                              ; preds = %938
  %943 = extractvalue { i32, i1 } %939, 0, !nosanitize !20
  %944 = icmp ult i32 %943, %498
  br i1 %944, label %923, label %1058, !llvm.loop !47

945:                                              ; preds = %928
  %946 = icmp slt i32 %936, 0
  br i1 %946, label %947, label %957

947:                                              ; preds = %945
  %948 = load i32, ptr %922, align 4, !tbaa !4
  %949 = icmp eq i32 %948, 11
  br i1 %949, label %950, label %954

950:                                              ; preds = %947
  store i32 1, ptr %484, align 4, !tbaa !17
  %951 = icmp eq i32 %924, 0
  br i1 %951, label %952, label %1060

952:                                              ; preds = %950
  %953 = load i32, ptr %922, align 4, !tbaa !4
  br label %954

954:                                              ; preds = %952, %947
  %955 = phi i32 [ %953, %952 ], [ %948, %947 ]
  %956 = call ptr @strerror(i32 noundef %955) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %956) #13
  br label %1060

957:                                              ; preds = %945
  store i32 1, ptr %476, align 8, !tbaa !24
  br label %1060

958:                                              ; preds = %919
  store i32 %498, ptr %480, align 8, !tbaa !58
  store ptr %494, ptr %481, align 8, !tbaa !59
  br label %959

959:                                              ; preds = %1036, %958
  %960 = phi i32 [ 0, %958 ], [ %1021, %1036 ]
  %961 = load i32, ptr %477, align 8, !tbaa !34
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %963, label %1020

963:                                              ; preds = %959
  %964 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %964, label %.loopexit78 [
    i32 0, label %965
    i32 -5, label %965
  ]

965:                                              ; preds = %963, %963
  %966 = load i32, ptr %476, align 8, !tbaa !24
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %968, label %1016

968:                                              ; preds = %965
  %969 = load i32, ptr %479, align 8, !tbaa !27
  %970 = load ptr, ptr %483, align 8, !tbaa !29
  store i32 0, ptr %484, align 4, !tbaa !17
  %971 = tail call ptr @__errno_location() #17
  store i32 0, ptr %971, align 4, !tbaa !4
  br label %972

972:                                              ; preds = %991, %968
  %973 = phi i32 [ 0, %968 ], [ %992, %991 ]
  %974 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %969, i32 %973), !nosanitize !20
  %975 = extractvalue { i32, i1 } %974, 1, !nosanitize !20
  br i1 %975, label %976, label %977, !prof !21, !nosanitize !20

976:                                              ; preds = %972
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

977:                                              ; preds = %972
  %978 = extractvalue { i32, i1 } %974, 0, !nosanitize !20
  %979 = call i32 @llvm.umin.i32(i32 %978, i32 1073741824)
  %980 = load i32, ptr %485, align 4, !tbaa !46
  %981 = zext i32 %973 to i64
  %982 = getelementptr inbounds nuw i8, ptr %970, i64 %981
  %983 = zext nneg i32 %979 to i64
  %984 = call i64 @read(i32 noundef %980, ptr noundef %982, i64 noundef %983) #13
  %985 = trunc i64 %984 to i32
  %986 = icmp slt i32 %985, 1
  br i1 %986, label %994, label %987

987:                                              ; preds = %977
  %988 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %973, i32 %985), !nosanitize !20
  %989 = extractvalue { i32, i1 } %988, 1, !nosanitize !20
  br i1 %989, label %990, label %991, !prof !21, !nosanitize !20

990:                                              ; preds = %987
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

991:                                              ; preds = %987
  %992 = extractvalue { i32, i1 } %988, 0, !nosanitize !20
  %993 = icmp ult i32 %992, %969
  br i1 %993, label %972, label %.loopexit73, !llvm.loop !47

994:                                              ; preds = %977
  %995 = icmp slt i32 %985, 0
  br i1 %995, label %996, label %1003

996:                                              ; preds = %994
  %997 = load i32, ptr %971, align 4, !tbaa !4
  %998 = icmp eq i32 %997, 11
  br i1 %998, label %999, label %.loopexit80

999:                                              ; preds = %996
  store i32 1, ptr %484, align 4, !tbaa !17
  %1000 = icmp eq i32 %973, 0
  br i1 %1000, label %1001, label %.loopexit73

1001:                                             ; preds = %999
  %1002 = load i32, ptr %971, align 4, !tbaa !4
  br label %.loopexit80

1003:                                             ; preds = %994
  store i32 1, ptr %476, align 8, !tbaa !24
  br label %.loopexit73

.loopexit80:                                      ; preds = %996, %1001
  %1004 = phi i32 [ %1002, %1001 ], [ %997, %996 ]
  %1005 = call ptr @strerror(i32 noundef %1004) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1005) #13
  %1006 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit78

.loopexit73:                                      ; preds = %991, %1003, %999
  %1007 = phi i32 [ %973, %999 ], [ %973, %1003 ], [ %992, %991 ]
  %1008 = load i32, ptr %477, align 8, !tbaa !34
  %1009 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1008, i32 %1007), !nosanitize !20
  %1010 = extractvalue { i32, i1 } %1009, 1, !nosanitize !20
  br i1 %1010, label %1011, label %1012, !prof !21, !nosanitize !20

1011:                                             ; preds = %.loopexit73
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1012:                                             ; preds = %.loopexit73
  %1013 = extractvalue { i32, i1 } %1009, 0, !nosanitize !20
  store i32 %1013, ptr %477, align 8, !tbaa !34
  %1014 = load ptr, ptr %483, align 8, !tbaa !29
  store ptr %1014, ptr %482, align 8, !tbaa !35
  %1015 = icmp eq i32 %1013, 0
  br i1 %1015, label %1016, label %1020

1016:                                             ; preds = %1012, %965
  %1017 = load i32, ptr %484, align 4, !tbaa !17
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1019, label %.loopexit78

1019:                                             ; preds = %1016
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit78

1020:                                             ; preds = %1012, %959
  %1021 = call i32 @inflate(ptr noundef nonnull %482, i32 noundef 0) #13
  %1022 = load i32, ptr %480, align 8, !tbaa !48
  %1023 = icmp ult i32 %1022, %498
  br i1 %1023, label %1024, label %1025

1024:                                             ; preds = %1020
  store i32 0, ptr %486, align 4, !tbaa !33
  br label %1025

1025:                                             ; preds = %1024, %1020
  switch i32 %1021, label %1036 [
    i32 -2, label %1026
    i32 2, label %1026
    i32 -4, label %1027
    i32 -3, label %1028
  ]

1026:                                             ; preds = %1025, %1025
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit78

1027:                                             ; preds = %1025
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit78

1028:                                             ; preds = %1025
  %1029 = load i32, ptr %486, align 4, !tbaa !33
  %1030 = icmp eq i32 %1029, 1
  br i1 %1030, label %1031, label %1032

1031:                                             ; preds = %1028
  store i32 0, ptr %477, align 8, !tbaa !34
  store i32 1, ptr %476, align 8, !tbaa !24
  store i32 0, ptr %478, align 8, !tbaa !26
  br label %.loopexit78

1032:                                             ; preds = %1028
  %1033 = load ptr, ptr %487, align 8, !tbaa !50
  %1034 = icmp eq ptr %1033, null
  %1035 = select i1 %1034, ptr @.str.6, ptr %1033
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1035) #13
  br label %.loopexit78

1036:                                             ; preds = %1025
  %1037 = icmp ne i32 %1022, 0
  %1038 = icmp ne i32 %1021, 1
  %1039 = select i1 %1037, i1 %1038, i1 false
  br i1 %1039, label %959, label %.loopexit78, !llvm.loop !51

.loopexit78:                                      ; preds = %1036, %963, %1032, %1031, %1027, %1026, %1019, %1016, %.loopexit80
  %1040 = phi i32 [ %1006, %.loopexit80 ], [ %960, %1016 ], [ %960, %1019 ], [ %1021, %1026 ], [ -4, %1027 ], [ 0, %1031 ], [ -3, %1032 ], [ %964, %963 ], [ %1021, %1036 ]
  %1041 = load i32, ptr %480, align 8, !tbaa !48
  %1042 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %498, i32 %1041), !nosanitize !20
  %1043 = extractvalue { i32, i1 } %1042, 1, !nosanitize !20
  br i1 %1043, label %1044, label %1045, !prof !21, !nosanitize !20

1044:                                             ; preds = %.loopexit78
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1045:                                             ; preds = %.loopexit78
  %1046 = extractvalue { i32, i1 } %1042, 0, !nosanitize !20
  %1047 = load ptr, ptr %481, align 8, !tbaa !49
  %1048 = zext i32 %1046 to i64
  %1049 = sub nsw i64 0, %1048
  %1050 = getelementptr inbounds i8, ptr %1047, i64 %1049
  store ptr %1050, ptr %475, align 8, !tbaa !22
  %1051 = icmp eq i32 %1040, 1
  br i1 %1051, label %1052, label %1053

1052:                                             ; preds = %1045
  store i32 0, ptr %486, align 4, !tbaa !33
  store i32 0, ptr %478, align 8, !tbaa !26
  br label %1056

1053:                                             ; preds = %1045
  %1054 = icmp ne i32 %1040, 0
  %1055 = sext i1 %1054 to i32
  br label %1056

1056:                                             ; preds = %1053, %1052
  %1057 = phi i32 [ 0, %1052 ], [ %1055, %1053 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1060

1058:                                             ; preds = %942
  %1059 = zext i32 %943 to i64
  br label %1060

1060:                                             ; preds = %1058, %1056, %957, %954, %950, %511
  %1061 = phi i64 [ %1059, %1058 ], [ %932, %957 ], [ %932, %954 ], [ %932, %950 ], [ %504, %511 ], [ %1048, %1056 ]
  %1062 = phi i32 [ 0, %1058 ], [ 0, %957 ], [ -1, %954 ], [ 0, %950 ], [ %515, %511 ], [ %1057, %1056 ]
  %1063 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %495, i64 %1061), !nosanitize !20
  %1064 = extractvalue { i64, i1 } %1063, 0, !nosanitize !20
  %1065 = extractvalue { i64, i1 } %1063, 1, !nosanitize !20
  br i1 %1065, label %1066, label %1067, !prof !21, !nosanitize !20

1066:                                             ; preds = %1060
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1067:                                             ; preds = %1060
  %1068 = getelementptr inbounds nuw i8, ptr %494, i64 %1061
  %1069 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %496, i64 %1061), !nosanitize !20
  %1070 = extractvalue { i64, i1 } %1069, 0, !nosanitize !20
  %1071 = extractvalue { i64, i1 } %1069, 1, !nosanitize !20
  br i1 %1071, label %1072, label %1073, !prof !21, !nosanitize !20

1072:                                             ; preds = %1073, %1067
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1073:                                             ; preds = %1067
  %1074 = load i64, ptr %488, align 8, !tbaa !23
  %1075 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1074, i64 %1061), !nosanitize !20
  %1076 = extractvalue { i64, i1 } %1075, 1, !nosanitize !20
  br i1 %1076, label %1072, label %1077, !prof !21, !nosanitize !20

1077:                                             ; preds = %1073
  %1078 = extractvalue { i64, i1 } %1075, 0, !nosanitize !20
  store i64 %1078, ptr %488, align 8, !tbaa !23
  %1079 = icmp eq i64 %1064, 0
  br i1 %1079, label %.loopexit82, label %.loopexit77

.loopexit77:                                      ; preds = %911, %905, %759, %1077, %.loopexit75, %.loopexit74
  %1080 = phi i32 [ %1062, %1077 ], [ %918, %.loopexit75 ], [ 0, %.loopexit74 ], [ 0, %759 ], [ 0, %905 ], [ 0, %911 ]
  %1081 = phi i64 [ %1070, %1077 ], [ %496, %.loopexit75 ], [ %496, %.loopexit74 ], [ %496, %759 ], [ %496, %905 ], [ %496, %911 ]
  %1082 = phi i64 [ %1064, %1077 ], [ %495, %.loopexit75 ], [ %495, %.loopexit74 ], [ %495, %759 ], [ %495, %905 ], [ %495, %911 ]
  %1083 = phi ptr [ %1068, %1077 ], [ %494, %.loopexit75 ], [ %494, %.loopexit74 ], [ %494, %759 ], [ %494, %905 ], [ %494, %911 ]
  %1084 = icmp eq i32 %1080, 0
  br i1 %1084, label %493, label %1085, !llvm.loop !60

1085:                                             ; preds = %.loopexit77
  %1086 = load i32, ptr %476, align 8, !tbaa !24
  %1087 = icmp eq i32 %1086, 0
  br i1 %1087, label %.loopexit82, label %.loopexit81

.loopexit81:                                      ; preds = %519, %1085
  %1088 = phi i64 [ %1081, %1085 ], [ %496, %519 ]
  %1089 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1089, align 4, !tbaa !61
  br label %.loopexit82

.loopexit82:                                      ; preds = %1077, %.loopexit81, %1085
  %1090 = phi i64 [ %1081, %1085 ], [ %1088, %.loopexit81 ], [ %1070, %1077 ]
  %1091 = freeze i64 %1090
  %1092 = icmp eq i64 %1091, 0
  %1093 = load i8, ptr %2, align 1
  %1094 = zext i8 %1093 to i32
  br i1 %1092, label %.loopexit93, label %1095

.loopexit93:                                      ; preds = %452, %122, %.loopexit82, %459, %.loopexit97, %.loopexit94, %108, %103
  br label %1095

1095:                                             ; preds = %.loopexit93, %.loopexit82, %25, %11, %4, %1
  %1096 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %31, %25 ], [ -1, %11 ], [ -1, %.loopexit93 ], [ %1094, %.loopexit82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %1096
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc_(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1095, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1095

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
  br i1 %14, label %1095, label %15

15:                                               ; preds = %11, %8, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %16 = load i32, ptr %0, align 8, !tbaa !19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %15
  %19 = add i32 %16, -1
  store i32 %19, ptr %0, align 8, !tbaa !19
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load i64, ptr %20, align 8, !tbaa !23
  %22 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %21, i64 1), !nosanitize !20
  %23 = extractvalue { i64, i1 } %22, 1, !nosanitize !20
  br i1 %23, label %24, label %25, !prof !21, !nosanitize !20

24:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

25:                                               ; preds = %18
  %26 = extractvalue { i64, i1 } %22, 0, !nosanitize !20
  store i64 %26, ptr %20, align 8, !tbaa !23
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 1
  store ptr %29, ptr %27, align 8, !tbaa !22
  %30 = load i8, ptr %28, align 1, !tbaa !36
  %31 = zext i8 %30 to i32
  br label %1095

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %.loopexit96, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %55

55:                                               ; preds = %472, %36
  %56 = phi i64 [ %473, %472 ], [ %34, %36 ]
  %57 = load i32, ptr %0, align 8, !tbaa !19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %55
  %60 = zext i32 %57 to i64
  %61 = tail call i64 @llvm.smin.i64(i64 %56, i64 %60)
  %62 = trunc i64 %61 to i32
  %63 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 %62), !nosanitize !20
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !20
  br i1 %64, label %65, label %66, !prof !21, !nosanitize !20

65:                                               ; preds = %75, %59
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

66:                                               ; preds = %59
  %67 = extractvalue { i32, i1 } %63, 0, !nosanitize !20
  store i32 %67, ptr %0, align 8, !tbaa !19
  %68 = load ptr, ptr %37, align 8, !tbaa !22
  %69 = and i64 %61, 4294967295
  %70 = getelementptr inbounds nuw i8, ptr %68, i64 %69
  store ptr %70, ptr %37, align 8, !tbaa !22
  %71 = load i64, ptr %38, align 8, !tbaa !23
  %72 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %71, i64 %69), !nosanitize !20
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !20
  br i1 %73, label %74, label %75, !prof !21, !nosanitize !20

74:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

75:                                               ; preds = %66
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !20
  store i64 %76, ptr %38, align 8, !tbaa !23
  %77 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %56, i64 %69), !nosanitize !20
  %78 = extractvalue { i64, i1 } %77, 1, !nosanitize !20
  br i1 %78, label %65, label %79, !prof !21, !nosanitize !20

79:                                               ; preds = %75
  %80 = extractvalue { i64, i1 } %77, 0, !nosanitize !20
  store i64 %80, ptr %33, align 8, !tbaa !18
  br label %472

81:                                               ; preds = %55
  %82 = load i32, ptr %39, align 8, !tbaa !24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %.preheader983, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %40, align 8, !tbaa !25
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %.loopexit96, label %.preheader983

.preheader983:                                    ; preds = %84, %81
  br label %87

87:                                               ; preds = %.backedge, %.preheader983
  %88 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %88, label %459 [
    i32 0, label %89
    i32 1, label %320
    i32 2, label %362
  ]

89:                                               ; preds = %87
  %90 = load i32, ptr %42, align 8, !tbaa !27
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %89
  %93 = load i32, ptr %52, align 4, !tbaa !28
  %94 = zext i32 %93 to i64
  %95 = tail call noalias ptr @malloc(i64 noundef %94) #16
  store ptr %95, ptr %47, align 8, !tbaa !29
  %96 = load i32, ptr %52, align 4, !tbaa !28
  %97 = shl i32 %96, 1
  %98 = zext i32 %97 to i64
  %99 = tail call noalias ptr @malloc(i64 noundef %98) #16
  store ptr %99, ptr %44, align 8, !tbaa !30
  %100 = icmp eq ptr %95, null
  %101 = icmp eq ptr %99, null
  %102 = or i1 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  tail call void @free(ptr noundef %99) #13
  tail call void @free(ptr noundef %95) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit93

104:                                              ; preds = %92
  %105 = load i32, ptr %52, align 4, !tbaa !28
  store i32 %105, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %40, align 8, !tbaa !25
  store ptr null, ptr %46, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %106 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %44, align 8, !tbaa !30
  tail call void @free(ptr noundef %109) #13
  %110 = load ptr, ptr %47, align 8, !tbaa !29
  tail call void @free(ptr noundef %110) #13
  store i32 0, ptr %42, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit93

111:                                              ; preds = %104, %89
  %112 = load i32, ptr %54, align 8, !tbaa !32
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, ptr %50, align 4, !tbaa !33
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114, %111
  %118 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  %119 = load i32, ptr %50, align 4, !tbaa !33
  %120 = icmp ne i32 %119, -1
  %121 = zext i1 %120 to i32
  store i32 %121, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %317

122:                                              ; preds = %114
  %123 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %123, label %.loopexit93 [
    i32 0, label %124
    i32 -5, label %124
  ]

124:                                              ; preds = %122, %122
  %125 = load i32, ptr %39, align 8, !tbaa !24
  %126 = icmp eq i32 %125, 0
  %127 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %126, label %128, label %285

128:                                              ; preds = %124
  %129 = icmp eq i32 %127, 0
  br i1 %129, label %231, label %130

130:                                              ; preds = %128
  %131 = load ptr, ptr %47, align 8, !tbaa !29
  %132 = load ptr, ptr %46, align 8, !tbaa !35
  %133 = icmp eq ptr %132, %131
  br i1 %133, label %231, label %134

134:                                              ; preds = %130
  %135 = ptrtoaddr ptr %132 to i64
  %136 = ptrtoaddr ptr %131 to i64
  %137 = zext i32 %127 to i64
  %138 = icmp ult i32 %127, 4
  %139 = sub i64 %136, %135
  %140 = icmp ult i64 %139, 32
  %141 = or i1 %138, %140
  br i1 %141, label %181, label %142

142:                                              ; preds = %134
  %143 = icmp ult i32 %127, 32
  br i1 %143, label %165, label %144

144:                                              ; preds = %142
  %145 = and i64 %137, 4294967264
  br label %146

146:                                              ; preds = %146, %144
  %147 = phi i64 [ 0, %144 ], [ %154, %146 ]
  %148 = getelementptr i8, ptr %131, i64 %147
  %149 = getelementptr i8, ptr %132, i64 %147
  %150 = getelementptr i8, ptr %149, i64 16
  %151 = load <16 x i8>, ptr %149, align 1, !tbaa !36
  %152 = load <16 x i8>, ptr %150, align 1, !tbaa !36
  %153 = getelementptr i8, ptr %148, i64 16
  store <16 x i8> %151, ptr %148, align 1, !tbaa !36
  store <16 x i8> %152, ptr %153, align 1, !tbaa !36
  %154 = add nuw nsw i64 %147, 32
  %155 = icmp eq i64 %154, %145
  br i1 %155, label %156, label %146, !llvm.loop !78

156:                                              ; preds = %146
  %157 = icmp eq i64 %145, %137
  br i1 %157, label %.loopexit86, label %158

158:                                              ; preds = %156
  %159 = trunc nuw i64 %145 to i32
  %160 = sub i32 %127, %159
  %161 = getelementptr i8, ptr %132, i64 %145
  %162 = getelementptr i8, ptr %131, i64 %145
  %163 = and i64 %137, 28
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %181, label %165, !prof !41

165:                                              ; preds = %158, %142
  %166 = phi i64 [ %145, %158 ], [ 0, %142 ]
  %167 = and i64 %137, 4294967292
  br label %168

168:                                              ; preds = %168, %165
  %169 = phi i64 [ %166, %165 ], [ %173, %168 ]
  %170 = getelementptr i8, ptr %131, i64 %169
  %171 = getelementptr i8, ptr %132, i64 %169
  %172 = load <4 x i8>, ptr %171, align 1, !tbaa !36
  store <4 x i8> %172, ptr %170, align 1, !tbaa !36
  %173 = add nuw i64 %169, 4
  %174 = icmp eq i64 %173, %167
  br i1 %174, label %175, label %168, !llvm.loop !79

175:                                              ; preds = %168
  %176 = getelementptr i8, ptr %131, i64 %167
  %177 = getelementptr i8, ptr %132, i64 %167
  %178 = trunc nuw i64 %167 to i32
  %179 = sub i32 %127, %178
  %180 = icmp eq i64 %167, %137
  br i1 %180, label %.loopexit86, label %181

181:                                              ; preds = %175, %158, %134
  %182 = phi ptr [ %131, %134 ], [ %162, %158 ], [ %176, %175 ]
  %183 = phi ptr [ %132, %134 ], [ %161, %158 ], [ %177, %175 ]
  %184 = phi i32 [ %127, %134 ], [ %160, %158 ], [ %179, %175 ]
  %185 = add i32 %184, -1
  %186 = and i32 %184, 7
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %.loopexit88, label %.preheader87

.preheader87:                                     ; preds = %181, %.preheader87
  %188 = phi ptr [ %192, %.preheader87 ], [ %182, %181 ]
  %189 = phi ptr [ %193, %.preheader87 ], [ %183, %181 ]
  %190 = phi i32 [ %194, %.preheader87 ], [ 0, %181 ]
  %191 = load i8, ptr %189, align 1, !tbaa !36
  store i8 %191, ptr %188, align 1, !tbaa !36
  %192 = getelementptr inbounds nuw i8, ptr %188, i64 1
  %193 = getelementptr inbounds nuw i8, ptr %189, i64 1
  %194 = add nuw nsw i32 %190, 1
  %195 = icmp eq i32 %194, %186
  br i1 %195, label %.loopexit88.loopexit, label %.preheader87, !llvm.loop !80

.loopexit88.loopexit:                             ; preds = %.preheader87
  %196 = and i32 %184, -8
  br label %.loopexit88

.loopexit88:                                      ; preds = %.loopexit88.loopexit, %181
  %197 = phi ptr [ %182, %181 ], [ %192, %.loopexit88.loopexit ]
  %198 = phi ptr [ %183, %181 ], [ %193, %.loopexit88.loopexit ]
  %199 = phi i32 [ %184, %181 ], [ %196, %.loopexit88.loopexit ]
  %200 = icmp ult i32 %185, 7
  br i1 %200, label %.loopexit86, label %.preheader85

.preheader85:                                     ; preds = %.loopexit88, %.preheader85
  %201 = phi ptr [ %227, %.preheader85 ], [ %197, %.loopexit88 ]
  %202 = phi ptr [ %228, %.preheader85 ], [ %198, %.loopexit88 ]
  %203 = phi i32 [ %226, %.preheader85 ], [ %199, %.loopexit88 ]
  %204 = load i8, ptr %202, align 1, !tbaa !36
  store i8 %204, ptr %201, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %201, i64 1
  %206 = getelementptr inbounds nuw i8, ptr %202, i64 1
  %207 = load i8, ptr %206, align 1, !tbaa !36
  store i8 %207, ptr %205, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %201, i64 2
  %209 = getelementptr inbounds nuw i8, ptr %202, i64 2
  %210 = load i8, ptr %209, align 1, !tbaa !36
  store i8 %210, ptr %208, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %201, i64 3
  %212 = getelementptr inbounds nuw i8, ptr %202, i64 3
  %213 = load i8, ptr %212, align 1, !tbaa !36
  store i8 %213, ptr %211, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %201, i64 4
  %215 = getelementptr inbounds nuw i8, ptr %202, i64 4
  %216 = load i8, ptr %215, align 1, !tbaa !36
  store i8 %216, ptr %214, align 1, !tbaa !36
  %217 = getelementptr inbounds nuw i8, ptr %201, i64 5
  %218 = getelementptr inbounds nuw i8, ptr %202, i64 5
  %219 = load i8, ptr %218, align 1, !tbaa !36
  store i8 %219, ptr %217, align 1, !tbaa !36
  %220 = getelementptr inbounds nuw i8, ptr %201, i64 6
  %221 = getelementptr inbounds nuw i8, ptr %202, i64 6
  %222 = load i8, ptr %221, align 1, !tbaa !36
  store i8 %222, ptr %220, align 1, !tbaa !36
  %223 = getelementptr inbounds nuw i8, ptr %201, i64 7
  %224 = getelementptr inbounds nuw i8, ptr %202, i64 7
  %225 = load i8, ptr %224, align 1, !tbaa !36
  store i8 %225, ptr %223, align 1, !tbaa !36
  %226 = add i32 %203, -8
  %227 = getelementptr inbounds nuw i8, ptr %201, i64 8
  %228 = getelementptr inbounds nuw i8, ptr %202, i64 8
  %229 = icmp eq i32 %226, 0
  br i1 %229, label %.loopexit86, label %.preheader85, !llvm.loop !81

.loopexit86:                                      ; preds = %.preheader85, %.loopexit88, %175, %156
  %230 = load i32, ptr %40, align 8, !tbaa !34
  br label %231

231:                                              ; preds = %.loopexit86, %130, %128
  %232 = phi i32 [ %230, %.loopexit86 ], [ %127, %130 ], [ 0, %128 ]
  %233 = load i32, ptr %42, align 8, !tbaa !27
  %234 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %233, i32 %232), !nosanitize !20
  %235 = extractvalue { i32, i1 } %234, 1, !nosanitize !20
  br i1 %235, label %236, label %237, !prof !21, !nosanitize !20

236:                                              ; preds = %231
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

237:                                              ; preds = %231
  %238 = extractvalue { i32, i1 } %234, 0, !nosanitize !20
  %239 = load ptr, ptr %47, align 8, !tbaa !29
  %240 = zext i32 %232 to i64
  %241 = getelementptr inbounds nuw i8, ptr %239, i64 %240
  store i32 0, ptr %48, align 4, !tbaa !17
  %242 = tail call ptr @__errno_location() #17
  store i32 0, ptr %242, align 4, !tbaa !4
  br label %243

243:                                              ; preds = %262, %237
  %244 = phi i32 [ 0, %237 ], [ %263, %262 ]
  %245 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %238, i32 %244), !nosanitize !20
  %246 = extractvalue { i32, i1 } %245, 1, !nosanitize !20
  br i1 %246, label %247, label %248, !prof !21, !nosanitize !20

247:                                              ; preds = %243
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

248:                                              ; preds = %243
  %249 = extractvalue { i32, i1 } %245, 0, !nosanitize !20
  %250 = tail call i32 @llvm.umin.i32(i32 %249, i32 1073741824)
  %251 = load i32, ptr %49, align 4, !tbaa !46
  %252 = zext i32 %244 to i64
  %253 = getelementptr inbounds nuw i8, ptr %241, i64 %252
  %254 = zext nneg i32 %250 to i64
  %255 = tail call i64 @read(i32 noundef %251, ptr noundef %253, i64 noundef %254) #13
  %256 = trunc i64 %255 to i32
  %257 = icmp slt i32 %256, 1
  br i1 %257, label %265, label %258

258:                                              ; preds = %248
  %259 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %244, i32 %256), !nosanitize !20
  %260 = extractvalue { i32, i1 } %259, 1, !nosanitize !20
  br i1 %260, label %261, label %262, !prof !21, !nosanitize !20

261:                                              ; preds = %258
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

262:                                              ; preds = %258
  %263 = extractvalue { i32, i1 } %259, 0, !nosanitize !20
  %264 = icmp ult i32 %263, %238
  br i1 %264, label %243, label %.loopexit84, !llvm.loop !47

265:                                              ; preds = %248
  %266 = icmp slt i32 %256, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %265
  %268 = load i32, ptr %242, align 4, !tbaa !4
  %269 = icmp eq i32 %268, 11
  br i1 %269, label %270, label %.loopexit94

270:                                              ; preds = %267
  store i32 1, ptr %48, align 4, !tbaa !17
  %271 = icmp eq i32 %244, 0
  br i1 %271, label %272, label %.loopexit84

272:                                              ; preds = %270
  %273 = load i32, ptr %242, align 4, !tbaa !4
  br label %.loopexit94

274:                                              ; preds = %265
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit84

.loopexit94:                                      ; preds = %267, %272
  %275 = phi i32 [ %273, %272 ], [ %268, %267 ]
  %276 = tail call ptr @strerror(i32 noundef %275) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %276) #13
  br label %.loopexit93

.loopexit84:                                      ; preds = %262, %274, %270
  %277 = phi i32 [ %244, %270 ], [ %244, %274 ], [ %263, %262 ]
  %278 = load i32, ptr %40, align 8, !tbaa !34
  %279 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %278, i32 %277), !nosanitize !20
  %280 = extractvalue { i32, i1 } %279, 1, !nosanitize !20
  br i1 %280, label %281, label %282, !prof !21, !nosanitize !20

281:                                              ; preds = %.loopexit84
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

282:                                              ; preds = %.loopexit84
  %283 = extractvalue { i32, i1 } %279, 0, !nosanitize !20
  store i32 %283, ptr %40, align 8, !tbaa !34
  %284 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %284, ptr %46, align 8, !tbaa !35
  br label %285

285:                                              ; preds = %282, %124
  %286 = phi i32 [ %283, %282 ], [ %127, %124 ]
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %317, label %288

288:                                              ; preds = %285
  %289 = load i32, ptr %48, align 4, !tbaa !17
  %290 = icmp ne i32 %289, 0
  %291 = icmp ult i32 %286, 4
  %292 = and i1 %291, %290
  br i1 %292, label %317, label %293

293:                                              ; preds = %288
  %294 = icmp ugt i32 %286, 3
  %295 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %294, label %296, label %313

296:                                              ; preds = %293
  %297 = load i8, ptr %295, align 1, !tbaa !36
  %298 = icmp eq i8 %297, 31
  br i1 %298, label %299, label %313

299:                                              ; preds = %296
  %300 = getelementptr inbounds nuw i8, ptr %295, i64 1
  %301 = load i8, ptr %300, align 1, !tbaa !36
  %302 = icmp eq i8 %301, -117
  br i1 %302, label %303, label %313

303:                                              ; preds = %299
  %304 = getelementptr inbounds nuw i8, ptr %295, i64 2
  %305 = load i8, ptr %304, align 1, !tbaa !36
  %306 = icmp eq i8 %305, 8
  br i1 %306, label %307, label %313

307:                                              ; preds = %303
  %308 = getelementptr inbounds nuw i8, ptr %295, i64 3
  %309 = load i8, ptr %308, align 1, !tbaa !36
  %310 = icmp ult i8 %309, 32
  br i1 %310, label %311, label %313

311:                                              ; preds = %307
  %312 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %460

313:                                              ; preds = %307, %303, %299, %296, %293
  %314 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %314, ptr %37, align 8, !tbaa !22
  %315 = zext i32 %286 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %314, ptr align 1 %295, i64 %315, i1 false)
  %316 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %316, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %462

317:                                              ; preds = %288, %285, %117
  %318 = load i32, ptr %41, align 8, !tbaa !26
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %.loopexit95, label %460

320:                                              ; preds = %87
  %321 = load ptr, ptr %44, align 8, !tbaa !30
  %322 = load i32, ptr %42, align 8, !tbaa !27
  %323 = shl i32 %322, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %324 = tail call ptr @__errno_location() #17
  store i32 0, ptr %324, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %325

325:                                              ; preds = %345, %320
  %326 = phi i32 [ %346, %345 ], [ 0, %320 ]
  %327 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %323, i32 %326), !nosanitize !20
  %328 = extractvalue { i32, i1 } %327, 1, !nosanitize !20
  br i1 %328, label %329, label %330, !prof !21, !nosanitize !20

329:                                              ; preds = %325
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

330:                                              ; preds = %325
  %331 = extractvalue { i32, i1 } %327, 0, !nosanitize !20
  %332 = tail call i32 @llvm.umin.i32(i32 %331, i32 1073741824)
  %333 = load i32, ptr %49, align 4, !tbaa !46
  %334 = zext i32 %326 to i64
  %335 = getelementptr inbounds nuw i8, ptr %321, i64 %334
  %336 = zext nneg i32 %332 to i64
  %337 = tail call i64 @read(i32 noundef %333, ptr noundef %335, i64 noundef %336) #13
  %338 = trunc i64 %337 to i32
  %339 = icmp slt i32 %338, 1
  br i1 %339, label %348, label %340

340:                                              ; preds = %330
  %341 = load i32, ptr %0, align 4, !tbaa !4
  %342 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %341, i32 %338), !nosanitize !20
  %343 = extractvalue { i32, i1 } %342, 1, !nosanitize !20
  br i1 %343, label %344, label %345, !prof !21, !nosanitize !20

344:                                              ; preds = %340
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

345:                                              ; preds = %340
  %346 = extractvalue { i32, i1 } %342, 0, !nosanitize !20
  store i32 %346, ptr %0, align 4, !tbaa !4
  %347 = icmp ult i32 %346, %323
  br i1 %347, label %325, label %.loopexit92, !llvm.loop !47

348:                                              ; preds = %330
  %349 = icmp slt i32 %338, 0
  br i1 %349, label %350, label %358

350:                                              ; preds = %348
  %351 = load i32, ptr %324, align 4, !tbaa !4
  %352 = icmp eq i32 %351, 11
  br i1 %352, label %353, label %.loopexit97

353:                                              ; preds = %350
  store i32 1, ptr %48, align 4, !tbaa !17
  %354 = load i32, ptr %0, align 4, !tbaa !4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %.loopexit92

356:                                              ; preds = %353
  %357 = load i32, ptr %324, align 4, !tbaa !4
  br label %.loopexit97

358:                                              ; preds = %348
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit92

.loopexit97:                                      ; preds = %350, %356
  %359 = phi i32 [ %357, %356 ], [ %351, %350 ]
  %360 = tail call ptr @strerror(i32 noundef %359) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %360) #13
  br label %.loopexit93

.loopexit92:                                      ; preds = %345, %358, %353
  %361 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %361, ptr %37, align 8, !tbaa !22
  br label %.loopexit95

362:                                              ; preds = %87
  %363 = load i32, ptr %42, align 8, !tbaa !27
  %364 = shl i32 %363, 1
  store i32 %364, ptr %43, align 8, !tbaa !48
  %365 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %365, ptr %45, align 8, !tbaa !49
  br label %366

366:                                              ; preds = %443, %362
  %367 = phi i32 [ 0, %362 ], [ %428, %443 ]
  %368 = load i32, ptr %40, align 8, !tbaa !34
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %427

370:                                              ; preds = %366
  %371 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %371, label %.loopexit89 [
    i32 0, label %372
    i32 -5, label %372
  ]

372:                                              ; preds = %370, %370
  %373 = load i32, ptr %39, align 8, !tbaa !24
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %423

375:                                              ; preds = %372
  %376 = load i32, ptr %42, align 8, !tbaa !27
  %377 = load ptr, ptr %47, align 8, !tbaa !29
  store i32 0, ptr %48, align 4, !tbaa !17
  %378 = tail call ptr @__errno_location() #17
  store i32 0, ptr %378, align 4, !tbaa !4
  br label %379

379:                                              ; preds = %398, %375
  %380 = phi i32 [ 0, %375 ], [ %399, %398 ]
  %381 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %376, i32 %380), !nosanitize !20
  %382 = extractvalue { i32, i1 } %381, 1, !nosanitize !20
  br i1 %382, label %383, label %384, !prof !21, !nosanitize !20

383:                                              ; preds = %379
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

384:                                              ; preds = %379
  %385 = extractvalue { i32, i1 } %381, 0, !nosanitize !20
  %386 = tail call i32 @llvm.umin.i32(i32 %385, i32 1073741824)
  %387 = load i32, ptr %49, align 4, !tbaa !46
  %388 = zext i32 %380 to i64
  %389 = getelementptr inbounds nuw i8, ptr %377, i64 %388
  %390 = zext nneg i32 %386 to i64
  %391 = tail call i64 @read(i32 noundef %387, ptr noundef %389, i64 noundef %390) #13
  %392 = trunc i64 %391 to i32
  %393 = icmp slt i32 %392, 1
  br i1 %393, label %401, label %394

394:                                              ; preds = %384
  %395 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %380, i32 %392), !nosanitize !20
  %396 = extractvalue { i32, i1 } %395, 1, !nosanitize !20
  br i1 %396, label %397, label %398, !prof !21, !nosanitize !20

397:                                              ; preds = %394
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

398:                                              ; preds = %394
  %399 = extractvalue { i32, i1 } %395, 0, !nosanitize !20
  %400 = icmp ult i32 %399, %376
  br i1 %400, label %379, label %.loopexit83, !llvm.loop !47

401:                                              ; preds = %384
  %402 = icmp slt i32 %392, 0
  br i1 %402, label %403, label %410

403:                                              ; preds = %401
  %404 = load i32, ptr %378, align 4, !tbaa !4
  %405 = icmp eq i32 %404, 11
  br i1 %405, label %406, label %.loopexit91

406:                                              ; preds = %403
  store i32 1, ptr %48, align 4, !tbaa !17
  %407 = icmp eq i32 %380, 0
  br i1 %407, label %408, label %.loopexit83

408:                                              ; preds = %406
  %409 = load i32, ptr %378, align 4, !tbaa !4
  br label %.loopexit91

410:                                              ; preds = %401
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit83

.loopexit91:                                      ; preds = %403, %408
  %411 = phi i32 [ %409, %408 ], [ %404, %403 ]
  %412 = tail call ptr @strerror(i32 noundef %411) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %412) #13
  %413 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit89

.loopexit83:                                      ; preds = %398, %410, %406
  %414 = phi i32 [ %380, %406 ], [ %380, %410 ], [ %399, %398 ]
  %415 = load i32, ptr %40, align 8, !tbaa !34
  %416 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %415, i32 %414), !nosanitize !20
  %417 = extractvalue { i32, i1 } %416, 1, !nosanitize !20
  br i1 %417, label %418, label %419, !prof !21, !nosanitize !20

418:                                              ; preds = %.loopexit83
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

419:                                              ; preds = %.loopexit83
  %420 = extractvalue { i32, i1 } %416, 0, !nosanitize !20
  store i32 %420, ptr %40, align 8, !tbaa !34
  %421 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %421, ptr %46, align 8, !tbaa !35
  %422 = icmp eq i32 %420, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %419, %372
  %424 = load i32, ptr %48, align 4, !tbaa !17
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %.loopexit89

426:                                              ; preds = %423
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit89

427:                                              ; preds = %419, %366
  %428 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %429 = load i32, ptr %43, align 8, !tbaa !48
  %430 = icmp ult i32 %429, %364
  br i1 %430, label %431, label %432

431:                                              ; preds = %427
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %432

432:                                              ; preds = %431, %427
  switch i32 %428, label %443 [
    i32 -2, label %433
    i32 2, label %433
    i32 -4, label %434
    i32 -3, label %435
  ]

433:                                              ; preds = %432, %432
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit89

434:                                              ; preds = %432
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit89

435:                                              ; preds = %432
  %436 = load i32, ptr %50, align 4, !tbaa !33
  %437 = icmp eq i32 %436, 1
  br i1 %437, label %438, label %439

438:                                              ; preds = %435
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %.loopexit89

439:                                              ; preds = %435
  %440 = load ptr, ptr %51, align 8, !tbaa !50
  %441 = icmp eq ptr %440, null
  %442 = select i1 %441, ptr @.str.6, ptr %440
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %442) #13
  br label %.loopexit89

443:                                              ; preds = %432
  %444 = icmp ne i32 %429, 0
  %445 = icmp ne i32 %428, 1
  %446 = select i1 %444, i1 %445, i1 false
  br i1 %446, label %366, label %.loopexit89, !llvm.loop !51

.loopexit89:                                      ; preds = %443, %370, %439, %438, %434, %433, %426, %423, %.loopexit91
  %447 = phi i32 [ %413, %.loopexit91 ], [ %367, %423 ], [ %367, %426 ], [ %428, %433 ], [ -4, %434 ], [ 0, %438 ], [ -3, %439 ], [ %428, %443 ], [ %371, %370 ]
  %448 = load i32, ptr %43, align 8, !tbaa !48
  %449 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %364, i32 %448), !nosanitize !20
  %450 = extractvalue { i32, i1 } %449, 1, !nosanitize !20
  br i1 %450, label %451, label %452, !prof !21, !nosanitize !20

451:                                              ; preds = %.loopexit89
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

452:                                              ; preds = %.loopexit89
  %453 = extractvalue { i32, i1 } %449, 0, !nosanitize !20
  store i32 %453, ptr %0, align 8, !tbaa !19
  %454 = load ptr, ptr %45, align 8, !tbaa !49
  %455 = zext i32 %453 to i64
  %456 = sub nsw i64 0, %455
  %457 = getelementptr inbounds i8, ptr %454, i64 %456
  store ptr %457, ptr %37, align 8, !tbaa !22
  switch i32 %447, label %.loopexit93 [
    i32 1, label %458
    i32 0, label %460
  ]

458:                                              ; preds = %452
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %460

459:                                              ; preds = %87
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit93

460:                                              ; preds = %458, %452, %317, %311
  %461 = load i32, ptr %0, align 8, !tbaa !19
  br label %462

462:                                              ; preds = %460, %313
  %463 = phi i32 [ %461, %460 ], [ %316, %313 ]
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %.loopexit95

465:                                              ; preds = %462
  %466 = load i32, ptr %39, align 8, !tbaa !24
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %.backedge, label %468

468:                                              ; preds = %465
  %469 = load i32, ptr %40, align 8, !tbaa !34
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %.loopexit95, label %.backedge

.backedge:                                        ; preds = %468, %465
  br label %87, !llvm.loop !52

.loopexit95:                                      ; preds = %468, %462, %317, %.loopexit92
  %471 = load i64, ptr %33, align 8, !tbaa !18
  br label %472

472:                                              ; preds = %.loopexit95, %79
  %473 = phi i64 [ %471, %.loopexit95 ], [ %80, %79 ]
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %.loopexit96, label %55, !llvm.loop !53

.loopexit96:                                      ; preds = %472, %84, %32
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %485 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %486 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %490 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %493

493:                                              ; preds = %.loopexit77, %.loopexit96
  %494 = phi ptr [ %2, %.loopexit96 ], [ %1083, %.loopexit77 ]
  %495 = phi i64 [ 1, %.loopexit96 ], [ %1082, %.loopexit77 ]
  %496 = phi i64 [ 0, %.loopexit96 ], [ %1081, %.loopexit77 ]
  %497 = call i64 @llvm.umin.i64(i64 %495, i64 4294967295)
  %498 = trunc nuw i64 %497 to i32
  %499 = load i32, ptr %0, align 8, !tbaa !19
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %516, label %501

501:                                              ; preds = %493
  %502 = call i32 @llvm.umin.i32(i32 %499, i32 %498)
  %503 = load ptr, ptr %475, align 8, !tbaa !22
  %504 = zext i32 %502 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %494, ptr align 1 %503, i64 %504, i1 false)
  %505 = load ptr, ptr %475, align 8, !tbaa !22
  %506 = getelementptr inbounds nuw i8, ptr %505, i64 %504
  store ptr %506, ptr %475, align 8, !tbaa !22
  %507 = load i32, ptr %0, align 8, !tbaa !19
  %508 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %507, i32 %502), !nosanitize !20
  %509 = extractvalue { i32, i1 } %508, 1, !nosanitize !20
  br i1 %509, label %510, label %511, !prof !21, !nosanitize !20

510:                                              ; preds = %501
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

511:                                              ; preds = %501
  %512 = extractvalue { i32, i1 } %508, 0, !nosanitize !20
  store i32 %512, ptr %0, align 8, !tbaa !19
  %513 = load i32, ptr %9, align 8, !tbaa !16
  %514 = icmp ne i32 %513, 0
  %515 = sext i1 %514 to i32
  br label %1060

516:                                              ; preds = %493
  %517 = load i32, ptr %476, align 8, !tbaa !24
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %522, label %519

519:                                              ; preds = %516
  %520 = load i32, ptr %477, align 8, !tbaa !25
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %.loopexit81, label %522

522:                                              ; preds = %519, %516
  %523 = load i32, ptr %478, align 8, !tbaa !26
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %.preheader866, label %525

525:                                              ; preds = %522
  %526 = load i32, ptr %479, align 8, !tbaa !27
  %527 = shl i32 %526, 1
  %528 = icmp ugt i32 %527, %498
  br i1 %528, label %.preheader866, label %919

.preheader866:                                    ; preds = %525, %522
  br label %529

529:                                              ; preds = %.preheader866, %914
  %530 = phi i32 [ %915, %914 ], [ %523, %.preheader866 ]
  switch i32 %530, label %902 [
    i32 0, label %531
    i32 1, label %762
    i32 2, label %805
  ]

531:                                              ; preds = %529
  %532 = load i32, ptr %479, align 8, !tbaa !27
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %553

534:                                              ; preds = %531
  %535 = load i32, ptr %490, align 4, !tbaa !28
  %536 = zext i32 %535 to i64
  %537 = call noalias ptr @malloc(i64 noundef %536) #16
  store ptr %537, ptr %483, align 8, !tbaa !29
  %538 = load i32, ptr %490, align 4, !tbaa !28
  %539 = shl i32 %538, 1
  %540 = zext i32 %539 to i64
  %541 = call noalias ptr @malloc(i64 noundef %540) #16
  store ptr %541, ptr %489, align 8, !tbaa !30
  %542 = icmp eq ptr %537, null
  %543 = icmp eq ptr %541, null
  %544 = or i1 %542, %543
  br i1 %544, label %545, label %546

545:                                              ; preds = %534
  call void @free(ptr noundef %541) #13
  call void @free(ptr noundef %537) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit75

546:                                              ; preds = %534
  %547 = load i32, ptr %490, align 4, !tbaa !28
  store i32 %547, ptr %479, align 8, !tbaa !27
  store i32 0, ptr %477, align 8, !tbaa !25
  store ptr null, ptr %482, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %491, i8 0, i64 24, i1 false)
  %548 = call i32 @inflateInit2_(ptr noundef nonnull %482, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %553, label %550

550:                                              ; preds = %546
  %551 = load ptr, ptr %489, align 8, !tbaa !30
  call void @free(ptr noundef %551) #13
  %552 = load ptr, ptr %483, align 8, !tbaa !29
  call void @free(ptr noundef %552) #13
  store i32 0, ptr %479, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit75

553:                                              ; preds = %546, %531
  %554 = load i32, ptr %492, align 8, !tbaa !32
  %555 = icmp eq i32 %554, -1
  br i1 %555, label %559, label %556

556:                                              ; preds = %553
  %557 = load i32, ptr %486, align 4, !tbaa !33
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %564

559:                                              ; preds = %556, %553
  %560 = call i32 @inflateReset(ptr noundef nonnull %482) #13
  store i32 2, ptr %478, align 8, !tbaa !26
  %561 = load i32, ptr %486, align 4, !tbaa !33
  %562 = icmp ne i32 %561, -1
  %563 = zext i1 %562 to i32
  store i32 %563, ptr %486, align 4, !tbaa !33
  store i32 0, ptr %492, align 8, !tbaa !32
  br label %759

564:                                              ; preds = %556
  %565 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %565, label %.loopexit75 [
    i32 0, label %566
    i32 -5, label %566
  ]

566:                                              ; preds = %564, %564
  %567 = load i32, ptr %476, align 8, !tbaa !24
  %568 = icmp eq i32 %567, 0
  %569 = load i32, ptr %477, align 8, !tbaa !34
  br i1 %568, label %570, label %727

570:                                              ; preds = %566
  %571 = icmp eq i32 %569, 0
  br i1 %571, label %673, label %572

572:                                              ; preds = %570
  %573 = load ptr, ptr %483, align 8, !tbaa !29
  %574 = load ptr, ptr %482, align 8, !tbaa !35
  %575 = icmp eq ptr %574, %573
  br i1 %575, label %673, label %576

576:                                              ; preds = %572
  %577 = ptrtoaddr ptr %574 to i64
  %578 = ptrtoaddr ptr %573 to i64
  %579 = zext i32 %569 to i64
  %580 = icmp ult i32 %569, 4
  %581 = sub i64 %578, %577
  %582 = icmp ult i64 %581, 32
  %583 = or i1 %580, %582
  br i1 %583, label %623, label %584

584:                                              ; preds = %576
  %585 = icmp ult i32 %569, 32
  br i1 %585, label %607, label %586

586:                                              ; preds = %584
  %587 = and i64 %579, 4294967264
  br label %588

588:                                              ; preds = %588, %586
  %589 = phi i64 [ 0, %586 ], [ %596, %588 ]
  %590 = getelementptr i8, ptr %573, i64 %589
  %591 = getelementptr i8, ptr %574, i64 %589
  %592 = getelementptr i8, ptr %591, i64 16
  %593 = load <16 x i8>, ptr %591, align 1, !tbaa !36
  %594 = load <16 x i8>, ptr %592, align 1, !tbaa !36
  %595 = getelementptr i8, ptr %590, i64 16
  store <16 x i8> %593, ptr %590, align 1, !tbaa !36
  store <16 x i8> %594, ptr %595, align 1, !tbaa !36
  %596 = add nuw nsw i64 %589, 32
  %597 = icmp eq i64 %596, %587
  br i1 %597, label %598, label %588, !llvm.loop !82

598:                                              ; preds = %588
  %599 = icmp eq i64 %587, %579
  br i1 %599, label %.loopexit68, label %600

600:                                              ; preds = %598
  %601 = trunc nuw i64 %587 to i32
  %602 = sub i32 %569, %601
  %603 = getelementptr i8, ptr %574, i64 %587
  %604 = getelementptr i8, ptr %573, i64 %587
  %605 = and i64 %579, 28
  %606 = icmp eq i64 %605, 0
  br i1 %606, label %623, label %607, !prof !41

607:                                              ; preds = %600, %584
  %608 = phi i64 [ %587, %600 ], [ 0, %584 ]
  %609 = and i64 %579, 4294967292
  br label %610

610:                                              ; preds = %610, %607
  %611 = phi i64 [ %608, %607 ], [ %615, %610 ]
  %612 = getelementptr i8, ptr %573, i64 %611
  %613 = getelementptr i8, ptr %574, i64 %611
  %614 = load <4 x i8>, ptr %613, align 1, !tbaa !36
  store <4 x i8> %614, ptr %612, align 1, !tbaa !36
  %615 = add nuw i64 %611, 4
  %616 = icmp eq i64 %615, %609
  br i1 %616, label %617, label %610, !llvm.loop !83

617:                                              ; preds = %610
  %618 = getelementptr i8, ptr %573, i64 %609
  %619 = getelementptr i8, ptr %574, i64 %609
  %620 = trunc nuw i64 %609 to i32
  %621 = sub i32 %569, %620
  %622 = icmp eq i64 %609, %579
  br i1 %622, label %.loopexit68, label %623

623:                                              ; preds = %617, %600, %576
  %624 = phi ptr [ %573, %576 ], [ %604, %600 ], [ %618, %617 ]
  %625 = phi ptr [ %574, %576 ], [ %603, %600 ], [ %619, %617 ]
  %626 = phi i32 [ %569, %576 ], [ %602, %600 ], [ %621, %617 ]
  %627 = add i32 %626, -1
  %628 = and i32 %626, 7
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %.loopexit70, label %.preheader69

.preheader69:                                     ; preds = %623, %.preheader69
  %630 = phi ptr [ %634, %.preheader69 ], [ %624, %623 ]
  %631 = phi ptr [ %635, %.preheader69 ], [ %625, %623 ]
  %632 = phi i32 [ %636, %.preheader69 ], [ 0, %623 ]
  %633 = load i8, ptr %631, align 1, !tbaa !36
  store i8 %633, ptr %630, align 1, !tbaa !36
  %634 = getelementptr inbounds nuw i8, ptr %630, i64 1
  %635 = getelementptr inbounds nuw i8, ptr %631, i64 1
  %636 = add nuw nsw i32 %632, 1
  %637 = icmp eq i32 %636, %628
  br i1 %637, label %.loopexit70.loopexit, label %.preheader69, !llvm.loop !84

.loopexit70.loopexit:                             ; preds = %.preheader69
  %638 = and i32 %626, -8
  br label %.loopexit70

.loopexit70:                                      ; preds = %.loopexit70.loopexit, %623
  %639 = phi ptr [ %624, %623 ], [ %634, %.loopexit70.loopexit ]
  %640 = phi ptr [ %625, %623 ], [ %635, %.loopexit70.loopexit ]
  %641 = phi i32 [ %626, %623 ], [ %638, %.loopexit70.loopexit ]
  %642 = icmp ult i32 %627, 7
  br i1 %642, label %.loopexit68, label %.preheader

.preheader:                                       ; preds = %.loopexit70, %.preheader
  %643 = phi ptr [ %669, %.preheader ], [ %639, %.loopexit70 ]
  %644 = phi ptr [ %670, %.preheader ], [ %640, %.loopexit70 ]
  %645 = phi i32 [ %668, %.preheader ], [ %641, %.loopexit70 ]
  %646 = load i8, ptr %644, align 1, !tbaa !36
  store i8 %646, ptr %643, align 1, !tbaa !36
  %647 = getelementptr inbounds nuw i8, ptr %643, i64 1
  %648 = getelementptr inbounds nuw i8, ptr %644, i64 1
  %649 = load i8, ptr %648, align 1, !tbaa !36
  store i8 %649, ptr %647, align 1, !tbaa !36
  %650 = getelementptr inbounds nuw i8, ptr %643, i64 2
  %651 = getelementptr inbounds nuw i8, ptr %644, i64 2
  %652 = load i8, ptr %651, align 1, !tbaa !36
  store i8 %652, ptr %650, align 1, !tbaa !36
  %653 = getelementptr inbounds nuw i8, ptr %643, i64 3
  %654 = getelementptr inbounds nuw i8, ptr %644, i64 3
  %655 = load i8, ptr %654, align 1, !tbaa !36
  store i8 %655, ptr %653, align 1, !tbaa !36
  %656 = getelementptr inbounds nuw i8, ptr %643, i64 4
  %657 = getelementptr inbounds nuw i8, ptr %644, i64 4
  %658 = load i8, ptr %657, align 1, !tbaa !36
  store i8 %658, ptr %656, align 1, !tbaa !36
  %659 = getelementptr inbounds nuw i8, ptr %643, i64 5
  %660 = getelementptr inbounds nuw i8, ptr %644, i64 5
  %661 = load i8, ptr %660, align 1, !tbaa !36
  store i8 %661, ptr %659, align 1, !tbaa !36
  %662 = getelementptr inbounds nuw i8, ptr %643, i64 6
  %663 = getelementptr inbounds nuw i8, ptr %644, i64 6
  %664 = load i8, ptr %663, align 1, !tbaa !36
  store i8 %664, ptr %662, align 1, !tbaa !36
  %665 = getelementptr inbounds nuw i8, ptr %643, i64 7
  %666 = getelementptr inbounds nuw i8, ptr %644, i64 7
  %667 = load i8, ptr %666, align 1, !tbaa !36
  store i8 %667, ptr %665, align 1, !tbaa !36
  %668 = add i32 %645, -8
  %669 = getelementptr inbounds nuw i8, ptr %643, i64 8
  %670 = getelementptr inbounds nuw i8, ptr %644, i64 8
  %671 = icmp eq i32 %668, 0
  br i1 %671, label %.loopexit68, label %.preheader, !llvm.loop !85

.loopexit68:                                      ; preds = %.preheader, %.loopexit70, %617, %598
  %672 = load i32, ptr %477, align 8, !tbaa !34
  br label %673

673:                                              ; preds = %.loopexit68, %572, %570
  %674 = phi i32 [ %672, %.loopexit68 ], [ %569, %572 ], [ 0, %570 ]
  %675 = load i32, ptr %479, align 8, !tbaa !27
  %676 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %675, i32 %674), !nosanitize !20
  %677 = extractvalue { i32, i1 } %676, 1, !nosanitize !20
  br i1 %677, label %678, label %679, !prof !21, !nosanitize !20

678:                                              ; preds = %673
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

679:                                              ; preds = %673
  %680 = extractvalue { i32, i1 } %676, 0, !nosanitize !20
  %681 = load ptr, ptr %483, align 8, !tbaa !29
  %682 = zext i32 %674 to i64
  %683 = getelementptr inbounds nuw i8, ptr %681, i64 %682
  store i32 0, ptr %484, align 4, !tbaa !17
  %684 = tail call ptr @__errno_location() #17
  store i32 0, ptr %684, align 4, !tbaa !4
  br label %685

685:                                              ; preds = %704, %679
  %686 = phi i32 [ 0, %679 ], [ %705, %704 ]
  %687 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %680, i32 %686), !nosanitize !20
  %688 = extractvalue { i32, i1 } %687, 1, !nosanitize !20
  br i1 %688, label %689, label %690, !prof !21, !nosanitize !20

689:                                              ; preds = %685
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

690:                                              ; preds = %685
  %691 = extractvalue { i32, i1 } %687, 0, !nosanitize !20
  %692 = call i32 @llvm.umin.i32(i32 %691, i32 1073741824)
  %693 = load i32, ptr %485, align 4, !tbaa !46
  %694 = zext i32 %686 to i64
  %695 = getelementptr inbounds nuw i8, ptr %683, i64 %694
  %696 = zext nneg i32 %692 to i64
  %697 = call i64 @read(i32 noundef %693, ptr noundef %695, i64 noundef %696) #13
  %698 = trunc i64 %697 to i32
  %699 = icmp slt i32 %698, 1
  br i1 %699, label %707, label %700

700:                                              ; preds = %690
  %701 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %686, i32 %698), !nosanitize !20
  %702 = extractvalue { i32, i1 } %701, 1, !nosanitize !20
  br i1 %702, label %703, label %704, !prof !21, !nosanitize !20

703:                                              ; preds = %700
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

704:                                              ; preds = %700
  %705 = extractvalue { i32, i1 } %701, 0, !nosanitize !20
  %706 = icmp ult i32 %705, %680
  br i1 %706, label %685, label %.loopexit67, !llvm.loop !47

707:                                              ; preds = %690
  %708 = icmp slt i32 %698, 0
  br i1 %708, label %709, label %716

709:                                              ; preds = %707
  %710 = load i32, ptr %684, align 4, !tbaa !4
  %711 = icmp eq i32 %710, 11
  br i1 %711, label %712, label %.loopexit76

712:                                              ; preds = %709
  store i32 1, ptr %484, align 4, !tbaa !17
  %713 = icmp eq i32 %686, 0
  br i1 %713, label %714, label %.loopexit67

714:                                              ; preds = %712
  %715 = load i32, ptr %684, align 4, !tbaa !4
  br label %.loopexit76

716:                                              ; preds = %707
  store i32 1, ptr %476, align 8, !tbaa !24
  br label %.loopexit67

.loopexit76:                                      ; preds = %709, %714
  %717 = phi i32 [ %715, %714 ], [ %710, %709 ]
  %718 = call ptr @strerror(i32 noundef %717) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %718) #13
  br label %.loopexit75

.loopexit67:                                      ; preds = %704, %716, %712
  %719 = phi i32 [ %686, %712 ], [ %686, %716 ], [ %705, %704 ]
  %720 = load i32, ptr %477, align 8, !tbaa !34
  %721 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %720, i32 %719), !nosanitize !20
  %722 = extractvalue { i32, i1 } %721, 1, !nosanitize !20
  br i1 %722, label %723, label %724, !prof !21, !nosanitize !20

723:                                              ; preds = %.loopexit67
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

724:                                              ; preds = %.loopexit67
  %725 = extractvalue { i32, i1 } %721, 0, !nosanitize !20
  store i32 %725, ptr %477, align 8, !tbaa !34
  %726 = load ptr, ptr %483, align 8, !tbaa !29
  store ptr %726, ptr %482, align 8, !tbaa !35
  br label %727

727:                                              ; preds = %724, %566
  %728 = phi i32 [ %725, %724 ], [ %569, %566 ]
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %759, label %730

730:                                              ; preds = %727
  %731 = load i32, ptr %484, align 4, !tbaa !17
  %732 = icmp ne i32 %731, 0
  %733 = icmp ult i32 %728, 4
  %734 = and i1 %733, %732
  br i1 %734, label %759, label %735

735:                                              ; preds = %730
  %736 = icmp ugt i32 %728, 3
  %737 = load ptr, ptr %482, align 8, !tbaa !35
  br i1 %736, label %738, label %755

738:                                              ; preds = %735
  %739 = load i8, ptr %737, align 1, !tbaa !36
  %740 = icmp eq i8 %739, 31
  br i1 %740, label %741, label %755

741:                                              ; preds = %738
  %742 = getelementptr inbounds nuw i8, ptr %737, i64 1
  %743 = load i8, ptr %742, align 1, !tbaa !36
  %744 = icmp eq i8 %743, -117
  br i1 %744, label %745, label %755

745:                                              ; preds = %741
  %746 = getelementptr inbounds nuw i8, ptr %737, i64 2
  %747 = load i8, ptr %746, align 1, !tbaa !36
  %748 = icmp eq i8 %747, 8
  br i1 %748, label %749, label %755

749:                                              ; preds = %745
  %750 = getelementptr inbounds nuw i8, ptr %737, i64 3
  %751 = load i8, ptr %750, align 1, !tbaa !36
  %752 = icmp ult i8 %751, 32
  br i1 %752, label %753, label %755

753:                                              ; preds = %749
  %754 = call i32 @inflateReset(ptr noundef nonnull %482) #13
  store i32 2, ptr %478, align 8, !tbaa !26
  store i32 1, ptr %486, align 4, !tbaa !33
  store i32 0, ptr %492, align 8, !tbaa !32
  br label %903

755:                                              ; preds = %749, %745, %741, %738, %735
  %756 = load ptr, ptr %489, align 8, !tbaa !30
  store ptr %756, ptr %475, align 8, !tbaa !22
  %757 = zext i32 %728 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %756, ptr align 1 %737, i64 %757, i1 false)
  %758 = load i32, ptr %477, align 8, !tbaa !34
  store i32 %758, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %477, align 8, !tbaa !34
  store i32 1, ptr %478, align 8, !tbaa !26
  br label %905

759:                                              ; preds = %730, %727, %559
  %760 = load i32, ptr %478, align 8, !tbaa !26
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %.loopexit77, label %903

762:                                              ; preds = %529
  %763 = load ptr, ptr %489, align 8, !tbaa !30
  %764 = load i32, ptr %479, align 8, !tbaa !27
  %765 = shl i32 %764, 1
  store i32 0, ptr %484, align 4, !tbaa !17
  %766 = tail call ptr @__errno_location() #17
  store i32 0, ptr %766, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %767

767:                                              ; preds = %787, %762
  %768 = phi i32 [ %788, %787 ], [ 0, %762 ]
  %769 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %765, i32 %768), !nosanitize !20
  %770 = extractvalue { i32, i1 } %769, 1, !nosanitize !20
  br i1 %770, label %771, label %772, !prof !21, !nosanitize !20

771:                                              ; preds = %767
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

772:                                              ; preds = %767
  %773 = extractvalue { i32, i1 } %769, 0, !nosanitize !20
  %774 = call i32 @llvm.umin.i32(i32 %773, i32 1073741824)
  %775 = load i32, ptr %485, align 4, !tbaa !46
  %776 = zext i32 %768 to i64
  %777 = getelementptr inbounds nuw i8, ptr %763, i64 %776
  %778 = zext nneg i32 %774 to i64
  %779 = call i64 @read(i32 noundef %775, ptr noundef %777, i64 noundef %778) #13
  %780 = trunc i64 %779 to i32
  %781 = icmp slt i32 %780, 1
  br i1 %781, label %790, label %782

782:                                              ; preds = %772
  %783 = load i32, ptr %0, align 4, !tbaa !4
  %784 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %783, i32 %780), !nosanitize !20
  %785 = extractvalue { i32, i1 } %784, 1, !nosanitize !20
  br i1 %785, label %786, label %787, !prof !21, !nosanitize !20

786:                                              ; preds = %782
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

787:                                              ; preds = %782
  %788 = extractvalue { i32, i1 } %784, 0, !nosanitize !20
  store i32 %788, ptr %0, align 4, !tbaa !4
  %789 = icmp ult i32 %788, %765
  br i1 %789, label %767, label %.loopexit74, !llvm.loop !47

790:                                              ; preds = %772
  %791 = icmp slt i32 %780, 0
  br i1 %791, label %792, label %800

792:                                              ; preds = %790
  %793 = load i32, ptr %766, align 4, !tbaa !4
  %794 = icmp eq i32 %793, 11
  br i1 %794, label %795, label %801

795:                                              ; preds = %792
  store i32 1, ptr %484, align 4, !tbaa !17
  %796 = load i32, ptr %0, align 4, !tbaa !4
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %798, label %.loopexit74

798:                                              ; preds = %795
  %799 = load i32, ptr %766, align 4, !tbaa !4
  br label %801

800:                                              ; preds = %790
  store i32 1, ptr %476, align 8, !tbaa !24
  br label %.loopexit74

801:                                              ; preds = %798, %792
  %802 = phi i32 [ %799, %798 ], [ %793, %792 ]
  %803 = call ptr @strerror(i32 noundef %802) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %803) #13
  br label %.loopexit75

.loopexit74:                                      ; preds = %787, %800, %795
  %804 = load ptr, ptr %489, align 8, !tbaa !30
  store ptr %804, ptr %475, align 8, !tbaa !22
  br label %.loopexit77

805:                                              ; preds = %529
  %806 = load i32, ptr %479, align 8, !tbaa !27
  %807 = shl i32 %806, 1
  store i32 %807, ptr %480, align 8, !tbaa !48
  %808 = load ptr, ptr %489, align 8, !tbaa !30
  store ptr %808, ptr %481, align 8, !tbaa !49
  br label %809

809:                                              ; preds = %886, %805
  %810 = phi i32 [ 0, %805 ], [ %871, %886 ]
  %811 = load i32, ptr %477, align 8, !tbaa !34
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %870

813:                                              ; preds = %809
  %814 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %814, label %.loopexit71 [
    i32 0, label %815
    i32 -5, label %815
  ]

815:                                              ; preds = %813, %813
  %816 = load i32, ptr %476, align 8, !tbaa !24
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %818, label %866

818:                                              ; preds = %815
  %819 = load i32, ptr %479, align 8, !tbaa !27
  %820 = load ptr, ptr %483, align 8, !tbaa !29
  store i32 0, ptr %484, align 4, !tbaa !17
  %821 = tail call ptr @__errno_location() #17
  store i32 0, ptr %821, align 4, !tbaa !4
  br label %822

822:                                              ; preds = %841, %818
  %823 = phi i32 [ 0, %818 ], [ %842, %841 ]
  %824 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %819, i32 %823), !nosanitize !20
  %825 = extractvalue { i32, i1 } %824, 1, !nosanitize !20
  br i1 %825, label %826, label %827, !prof !21, !nosanitize !20

826:                                              ; preds = %822
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

827:                                              ; preds = %822
  %828 = extractvalue { i32, i1 } %824, 0, !nosanitize !20
  %829 = call i32 @llvm.umin.i32(i32 %828, i32 1073741824)
  %830 = load i32, ptr %485, align 4, !tbaa !46
  %831 = zext i32 %823 to i64
  %832 = getelementptr inbounds nuw i8, ptr %820, i64 %831
  %833 = zext nneg i32 %829 to i64
  %834 = call i64 @read(i32 noundef %830, ptr noundef %832, i64 noundef %833) #13
  %835 = trunc i64 %834 to i32
  %836 = icmp slt i32 %835, 1
  br i1 %836, label %844, label %837

837:                                              ; preds = %827
  %838 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %823, i32 %835), !nosanitize !20
  %839 = extractvalue { i32, i1 } %838, 1, !nosanitize !20
  br i1 %839, label %840, label %841, !prof !21, !nosanitize !20

840:                                              ; preds = %837
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

841:                                              ; preds = %837
  %842 = extractvalue { i32, i1 } %838, 0, !nosanitize !20
  %843 = icmp ult i32 %842, %819
  br i1 %843, label %822, label %.loopexit, !llvm.loop !47

844:                                              ; preds = %827
  %845 = icmp slt i32 %835, 0
  br i1 %845, label %846, label %853

846:                                              ; preds = %844
  %847 = load i32, ptr %821, align 4, !tbaa !4
  %848 = icmp eq i32 %847, 11
  br i1 %848, label %849, label %.loopexit72

849:                                              ; preds = %846
  store i32 1, ptr %484, align 4, !tbaa !17
  %850 = icmp eq i32 %823, 0
  br i1 %850, label %851, label %.loopexit

851:                                              ; preds = %849
  %852 = load i32, ptr %821, align 4, !tbaa !4
  br label %.loopexit72

853:                                              ; preds = %844
  store i32 1, ptr %476, align 8, !tbaa !24
  br label %.loopexit

.loopexit72:                                      ; preds = %846, %851
  %854 = phi i32 [ %852, %851 ], [ %847, %846 ]
  %855 = call ptr @strerror(i32 noundef %854) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %855) #13
  %856 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit71

.loopexit:                                        ; preds = %841, %853, %849
  %857 = phi i32 [ %823, %849 ], [ %823, %853 ], [ %842, %841 ]
  %858 = load i32, ptr %477, align 8, !tbaa !34
  %859 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %858, i32 %857), !nosanitize !20
  %860 = extractvalue { i32, i1 } %859, 1, !nosanitize !20
  br i1 %860, label %861, label %862, !prof !21, !nosanitize !20

861:                                              ; preds = %.loopexit
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

862:                                              ; preds = %.loopexit
  %863 = extractvalue { i32, i1 } %859, 0, !nosanitize !20
  store i32 %863, ptr %477, align 8, !tbaa !34
  %864 = load ptr, ptr %483, align 8, !tbaa !29
  store ptr %864, ptr %482, align 8, !tbaa !35
  %865 = icmp eq i32 %863, 0
  br i1 %865, label %866, label %870

866:                                              ; preds = %862, %815
  %867 = load i32, ptr %484, align 4, !tbaa !17
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %869, label %.loopexit71

869:                                              ; preds = %866
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit71

870:                                              ; preds = %862, %809
  %871 = call i32 @inflate(ptr noundef nonnull %482, i32 noundef 0) #13
  %872 = load i32, ptr %480, align 8, !tbaa !48
  %873 = icmp ult i32 %872, %807
  br i1 %873, label %874, label %875

874:                                              ; preds = %870
  store i32 0, ptr %486, align 4, !tbaa !33
  br label %875

875:                                              ; preds = %874, %870
  switch i32 %871, label %886 [
    i32 -2, label %876
    i32 2, label %876
    i32 -4, label %877
    i32 -3, label %878
  ]

876:                                              ; preds = %875, %875
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit71

877:                                              ; preds = %875
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit71

878:                                              ; preds = %875
  %879 = load i32, ptr %486, align 4, !tbaa !33
  %880 = icmp eq i32 %879, 1
  br i1 %880, label %881, label %882

881:                                              ; preds = %878
  store i32 0, ptr %477, align 8, !tbaa !34
  store i32 1, ptr %476, align 8, !tbaa !24
  store i32 0, ptr %478, align 8, !tbaa !26
  br label %.loopexit71

882:                                              ; preds = %878
  %883 = load ptr, ptr %487, align 8, !tbaa !50
  %884 = icmp eq ptr %883, null
  %885 = select i1 %884, ptr @.str.6, ptr %883
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %885) #13
  br label %.loopexit71

886:                                              ; preds = %875
  %887 = icmp ne i32 %872, 0
  %888 = icmp ne i32 %871, 1
  %889 = select i1 %887, i1 %888, i1 false
  br i1 %889, label %809, label %.loopexit71, !llvm.loop !51

.loopexit71:                                      ; preds = %886, %813, %882, %881, %877, %876, %869, %866, %.loopexit72
  %890 = phi i32 [ %856, %.loopexit72 ], [ %810, %866 ], [ %810, %869 ], [ %871, %876 ], [ -4, %877 ], [ 0, %881 ], [ -3, %882 ], [ %814, %813 ], [ %871, %886 ]
  %891 = load i32, ptr %480, align 8, !tbaa !48
  %892 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %807, i32 %891), !nosanitize !20
  %893 = extractvalue { i32, i1 } %892, 1, !nosanitize !20
  br i1 %893, label %894, label %895, !prof !21, !nosanitize !20

894:                                              ; preds = %.loopexit71
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

895:                                              ; preds = %.loopexit71
  %896 = extractvalue { i32, i1 } %892, 0, !nosanitize !20
  store i32 %896, ptr %0, align 8, !tbaa !19
  %897 = load ptr, ptr %481, align 8, !tbaa !49
  %898 = zext i32 %896 to i64
  %899 = sub nsw i64 0, %898
  %900 = getelementptr inbounds i8, ptr %897, i64 %899
  store ptr %900, ptr %475, align 8, !tbaa !22
  switch i32 %890, label %.loopexit75 [
    i32 1, label %901
    i32 0, label %903
  ]

901:                                              ; preds = %895
  store i32 0, ptr %486, align 4, !tbaa !33
  store i32 0, ptr %478, align 8, !tbaa !26
  br label %903

902:                                              ; preds = %529
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit75

903:                                              ; preds = %901, %895, %759, %753
  %904 = load i32, ptr %0, align 8, !tbaa !19
  br label %905

905:                                              ; preds = %903, %755
  %906 = phi i32 [ %904, %903 ], [ %758, %755 ]
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %908, label %.loopexit77

908:                                              ; preds = %905
  %909 = load i32, ptr %476, align 8, !tbaa !24
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %914, label %911

911:                                              ; preds = %908
  %912 = load i32, ptr %477, align 8, !tbaa !34
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %.loopexit77, label %914

914:                                              ; preds = %911, %908
  %915 = load i32, ptr %478, align 8, !tbaa !26
  br label %529, !llvm.loop !52

.loopexit75:                                      ; preds = %895, %564, %902, %801, %.loopexit76, %550, %545
  %916 = load i32, ptr %0, align 8, !tbaa !19
  %917 = icmp eq i32 %916, 0
  %918 = sext i1 %917 to i32
  br label %.loopexit77

919:                                              ; preds = %525
  %920 = icmp eq i32 %523, 1
  br i1 %920, label %921, label %958

921:                                              ; preds = %919
  store i32 0, ptr %484, align 4, !tbaa !17
  %922 = tail call ptr @__errno_location() #17
  store i32 0, ptr %922, align 4, !tbaa !4
  br label %923

923:                                              ; preds = %942, %921
  %924 = phi i32 [ 0, %921 ], [ %943, %942 ]
  %925 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %498, i32 %924), !nosanitize !20
  %926 = extractvalue { i32, i1 } %925, 1, !nosanitize !20
  br i1 %926, label %927, label %928, !prof !21, !nosanitize !20

927:                                              ; preds = %923
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

928:                                              ; preds = %923
  %929 = extractvalue { i32, i1 } %925, 0, !nosanitize !20
  %930 = call i32 @llvm.umin.i32(i32 %929, i32 1073741824)
  %931 = load i32, ptr %485, align 4, !tbaa !46
  %932 = zext i32 %924 to i64
  %933 = getelementptr inbounds nuw i8, ptr %494, i64 %932
  %934 = zext nneg i32 %930 to i64
  %935 = call i64 @read(i32 noundef %931, ptr noundef %933, i64 noundef %934) #13
  %936 = trunc i64 %935 to i32
  %937 = icmp slt i32 %936, 1
  br i1 %937, label %945, label %938

938:                                              ; preds = %928
  %939 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %924, i32 %936), !nosanitize !20
  %940 = extractvalue { i32, i1 } %939, 1, !nosanitize !20
  br i1 %940, label %941, label %942, !prof !21, !nosanitize !20

941:                                              ; preds = %938
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

942:                                              ; preds = %938
  %943 = extractvalue { i32, i1 } %939, 0, !nosanitize !20
  %944 = icmp ult i32 %943, %498
  br i1 %944, label %923, label %1058, !llvm.loop !47

945:                                              ; preds = %928
  %946 = icmp slt i32 %936, 0
  br i1 %946, label %947, label %957

947:                                              ; preds = %945
  %948 = load i32, ptr %922, align 4, !tbaa !4
  %949 = icmp eq i32 %948, 11
  br i1 %949, label %950, label %954

950:                                              ; preds = %947
  store i32 1, ptr %484, align 4, !tbaa !17
  %951 = icmp eq i32 %924, 0
  br i1 %951, label %952, label %1060

952:                                              ; preds = %950
  %953 = load i32, ptr %922, align 4, !tbaa !4
  br label %954

954:                                              ; preds = %952, %947
  %955 = phi i32 [ %953, %952 ], [ %948, %947 ]
  %956 = call ptr @strerror(i32 noundef %955) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %956) #13
  br label %1060

957:                                              ; preds = %945
  store i32 1, ptr %476, align 8, !tbaa !24
  br label %1060

958:                                              ; preds = %919
  store i32 %498, ptr %480, align 8, !tbaa !58
  store ptr %494, ptr %481, align 8, !tbaa !59
  br label %959

959:                                              ; preds = %1036, %958
  %960 = phi i32 [ 0, %958 ], [ %1021, %1036 ]
  %961 = load i32, ptr %477, align 8, !tbaa !34
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %963, label %1020

963:                                              ; preds = %959
  %964 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %964, label %.loopexit78 [
    i32 0, label %965
    i32 -5, label %965
  ]

965:                                              ; preds = %963, %963
  %966 = load i32, ptr %476, align 8, !tbaa !24
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %968, label %1016

968:                                              ; preds = %965
  %969 = load i32, ptr %479, align 8, !tbaa !27
  %970 = load ptr, ptr %483, align 8, !tbaa !29
  store i32 0, ptr %484, align 4, !tbaa !17
  %971 = tail call ptr @__errno_location() #17
  store i32 0, ptr %971, align 4, !tbaa !4
  br label %972

972:                                              ; preds = %991, %968
  %973 = phi i32 [ 0, %968 ], [ %992, %991 ]
  %974 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %969, i32 %973), !nosanitize !20
  %975 = extractvalue { i32, i1 } %974, 1, !nosanitize !20
  br i1 %975, label %976, label %977, !prof !21, !nosanitize !20

976:                                              ; preds = %972
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

977:                                              ; preds = %972
  %978 = extractvalue { i32, i1 } %974, 0, !nosanitize !20
  %979 = call i32 @llvm.umin.i32(i32 %978, i32 1073741824)
  %980 = load i32, ptr %485, align 4, !tbaa !46
  %981 = zext i32 %973 to i64
  %982 = getelementptr inbounds nuw i8, ptr %970, i64 %981
  %983 = zext nneg i32 %979 to i64
  %984 = call i64 @read(i32 noundef %980, ptr noundef %982, i64 noundef %983) #13
  %985 = trunc i64 %984 to i32
  %986 = icmp slt i32 %985, 1
  br i1 %986, label %994, label %987

987:                                              ; preds = %977
  %988 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %973, i32 %985), !nosanitize !20
  %989 = extractvalue { i32, i1 } %988, 1, !nosanitize !20
  br i1 %989, label %990, label %991, !prof !21, !nosanitize !20

990:                                              ; preds = %987
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

991:                                              ; preds = %987
  %992 = extractvalue { i32, i1 } %988, 0, !nosanitize !20
  %993 = icmp ult i32 %992, %969
  br i1 %993, label %972, label %.loopexit73, !llvm.loop !47

994:                                              ; preds = %977
  %995 = icmp slt i32 %985, 0
  br i1 %995, label %996, label %1003

996:                                              ; preds = %994
  %997 = load i32, ptr %971, align 4, !tbaa !4
  %998 = icmp eq i32 %997, 11
  br i1 %998, label %999, label %.loopexit80

999:                                              ; preds = %996
  store i32 1, ptr %484, align 4, !tbaa !17
  %1000 = icmp eq i32 %973, 0
  br i1 %1000, label %1001, label %.loopexit73

1001:                                             ; preds = %999
  %1002 = load i32, ptr %971, align 4, !tbaa !4
  br label %.loopexit80

1003:                                             ; preds = %994
  store i32 1, ptr %476, align 8, !tbaa !24
  br label %.loopexit73

.loopexit80:                                      ; preds = %996, %1001
  %1004 = phi i32 [ %1002, %1001 ], [ %997, %996 ]
  %1005 = call ptr @strerror(i32 noundef %1004) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1005) #13
  %1006 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit78

.loopexit73:                                      ; preds = %991, %1003, %999
  %1007 = phi i32 [ %973, %999 ], [ %973, %1003 ], [ %992, %991 ]
  %1008 = load i32, ptr %477, align 8, !tbaa !34
  %1009 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1008, i32 %1007), !nosanitize !20
  %1010 = extractvalue { i32, i1 } %1009, 1, !nosanitize !20
  br i1 %1010, label %1011, label %1012, !prof !21, !nosanitize !20

1011:                                             ; preds = %.loopexit73
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1012:                                             ; preds = %.loopexit73
  %1013 = extractvalue { i32, i1 } %1009, 0, !nosanitize !20
  store i32 %1013, ptr %477, align 8, !tbaa !34
  %1014 = load ptr, ptr %483, align 8, !tbaa !29
  store ptr %1014, ptr %482, align 8, !tbaa !35
  %1015 = icmp eq i32 %1013, 0
  br i1 %1015, label %1016, label %1020

1016:                                             ; preds = %1012, %965
  %1017 = load i32, ptr %484, align 4, !tbaa !17
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1019, label %.loopexit78

1019:                                             ; preds = %1016
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit78

1020:                                             ; preds = %1012, %959
  %1021 = call i32 @inflate(ptr noundef nonnull %482, i32 noundef 0) #13
  %1022 = load i32, ptr %480, align 8, !tbaa !48
  %1023 = icmp ult i32 %1022, %498
  br i1 %1023, label %1024, label %1025

1024:                                             ; preds = %1020
  store i32 0, ptr %486, align 4, !tbaa !33
  br label %1025

1025:                                             ; preds = %1024, %1020
  switch i32 %1021, label %1036 [
    i32 -2, label %1026
    i32 2, label %1026
    i32 -4, label %1027
    i32 -3, label %1028
  ]

1026:                                             ; preds = %1025, %1025
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit78

1027:                                             ; preds = %1025
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit78

1028:                                             ; preds = %1025
  %1029 = load i32, ptr %486, align 4, !tbaa !33
  %1030 = icmp eq i32 %1029, 1
  br i1 %1030, label %1031, label %1032

1031:                                             ; preds = %1028
  store i32 0, ptr %477, align 8, !tbaa !34
  store i32 1, ptr %476, align 8, !tbaa !24
  store i32 0, ptr %478, align 8, !tbaa !26
  br label %.loopexit78

1032:                                             ; preds = %1028
  %1033 = load ptr, ptr %487, align 8, !tbaa !50
  %1034 = icmp eq ptr %1033, null
  %1035 = select i1 %1034, ptr @.str.6, ptr %1033
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1035) #13
  br label %.loopexit78

1036:                                             ; preds = %1025
  %1037 = icmp ne i32 %1022, 0
  %1038 = icmp ne i32 %1021, 1
  %1039 = select i1 %1037, i1 %1038, i1 false
  br i1 %1039, label %959, label %.loopexit78, !llvm.loop !51

.loopexit78:                                      ; preds = %1036, %963, %1032, %1031, %1027, %1026, %1019, %1016, %.loopexit80
  %1040 = phi i32 [ %1006, %.loopexit80 ], [ %960, %1016 ], [ %960, %1019 ], [ %1021, %1026 ], [ -4, %1027 ], [ 0, %1031 ], [ -3, %1032 ], [ %1021, %1036 ], [ %964, %963 ]
  %1041 = load i32, ptr %480, align 8, !tbaa !48
  %1042 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %498, i32 %1041), !nosanitize !20
  %1043 = extractvalue { i32, i1 } %1042, 1, !nosanitize !20
  br i1 %1043, label %1044, label %1045, !prof !21, !nosanitize !20

1044:                                             ; preds = %.loopexit78
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1045:                                             ; preds = %.loopexit78
  %1046 = extractvalue { i32, i1 } %1042, 0, !nosanitize !20
  %1047 = load ptr, ptr %481, align 8, !tbaa !49
  %1048 = zext i32 %1046 to i64
  %1049 = sub nsw i64 0, %1048
  %1050 = getelementptr inbounds i8, ptr %1047, i64 %1049
  store ptr %1050, ptr %475, align 8, !tbaa !22
  %1051 = icmp eq i32 %1040, 1
  br i1 %1051, label %1052, label %1053

1052:                                             ; preds = %1045
  store i32 0, ptr %486, align 4, !tbaa !33
  store i32 0, ptr %478, align 8, !tbaa !26
  br label %1056

1053:                                             ; preds = %1045
  %1054 = icmp ne i32 %1040, 0
  %1055 = sext i1 %1054 to i32
  br label %1056

1056:                                             ; preds = %1053, %1052
  %1057 = phi i32 [ 0, %1052 ], [ %1055, %1053 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1060

1058:                                             ; preds = %942
  %1059 = zext i32 %943 to i64
  br label %1060

1060:                                             ; preds = %1058, %1056, %957, %954, %950, %511
  %1061 = phi i64 [ %1059, %1058 ], [ %932, %957 ], [ %932, %954 ], [ %932, %950 ], [ %504, %511 ], [ %1048, %1056 ]
  %1062 = phi i32 [ 0, %1058 ], [ 0, %957 ], [ -1, %954 ], [ 0, %950 ], [ %515, %511 ], [ %1057, %1056 ]
  %1063 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %495, i64 %1061), !nosanitize !20
  %1064 = extractvalue { i64, i1 } %1063, 0, !nosanitize !20
  %1065 = extractvalue { i64, i1 } %1063, 1, !nosanitize !20
  br i1 %1065, label %1066, label %1067, !prof !21, !nosanitize !20

1066:                                             ; preds = %1060
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1067:                                             ; preds = %1060
  %1068 = getelementptr inbounds nuw i8, ptr %494, i64 %1061
  %1069 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %496, i64 %1061), !nosanitize !20
  %1070 = extractvalue { i64, i1 } %1069, 0, !nosanitize !20
  %1071 = extractvalue { i64, i1 } %1069, 1, !nosanitize !20
  br i1 %1071, label %1072, label %1073, !prof !21, !nosanitize !20

1072:                                             ; preds = %1073, %1067
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1073:                                             ; preds = %1067
  %1074 = load i64, ptr %488, align 8, !tbaa !23
  %1075 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1074, i64 %1061), !nosanitize !20
  %1076 = extractvalue { i64, i1 } %1075, 1, !nosanitize !20
  br i1 %1076, label %1072, label %1077, !prof !21, !nosanitize !20

1077:                                             ; preds = %1073
  %1078 = extractvalue { i64, i1 } %1075, 0, !nosanitize !20
  store i64 %1078, ptr %488, align 8, !tbaa !23
  %1079 = icmp eq i64 %1064, 0
  br i1 %1079, label %.loopexit82, label %.loopexit77

.loopexit77:                                      ; preds = %911, %905, %759, %1077, %.loopexit75, %.loopexit74
  %1080 = phi i32 [ %1062, %1077 ], [ %918, %.loopexit75 ], [ 0, %.loopexit74 ], [ 0, %759 ], [ 0, %905 ], [ 0, %911 ]
  %1081 = phi i64 [ %1070, %1077 ], [ %496, %.loopexit75 ], [ %496, %.loopexit74 ], [ %496, %759 ], [ %496, %905 ], [ %496, %911 ]
  %1082 = phi i64 [ %1064, %1077 ], [ %495, %.loopexit75 ], [ %495, %.loopexit74 ], [ %495, %759 ], [ %495, %905 ], [ %495, %911 ]
  %1083 = phi ptr [ %1068, %1077 ], [ %494, %.loopexit75 ], [ %494, %.loopexit74 ], [ %494, %759 ], [ %494, %905 ], [ %494, %911 ]
  %1084 = icmp eq i32 %1080, 0
  br i1 %1084, label %493, label %1085, !llvm.loop !60

1085:                                             ; preds = %.loopexit77
  %1086 = load i32, ptr %476, align 8, !tbaa !24
  %1087 = icmp eq i32 %1086, 0
  br i1 %1087, label %.loopexit82, label %.loopexit81

.loopexit81:                                      ; preds = %519, %1085
  %1088 = phi i64 [ %1081, %1085 ], [ %496, %519 ]
  %1089 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1089, align 4, !tbaa !61
  br label %.loopexit82

.loopexit82:                                      ; preds = %1077, %.loopexit81, %1085
  %1090 = phi i64 [ %1081, %1085 ], [ %1088, %.loopexit81 ], [ %1070, %1077 ]
  %1091 = freeze i64 %1090
  %1092 = icmp eq i64 %1091, 0
  %1093 = load i8, ptr %2, align 1
  %1094 = zext i8 %1093 to i32
  br i1 %1092, label %.loopexit93, label %1095

.loopexit93:                                      ; preds = %452, %122, %.loopexit82, %459, %.loopexit97, %.loopexit94, %108, %103
  br label %1095

1095:                                             ; preds = %.loopexit93, %.loopexit82, %25, %11, %4, %1
  %1096 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %31, %25 ], [ -1, %11 ], [ -1, %.loopexit93 ], [ %1094, %.loopexit82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %1096
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @gzungetc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %.loopexit52, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %.loopexit52

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load i32, ptr %9, align 8, !tbaa !26
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %264

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 8, !tbaa !19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %264

15:                                               ; preds = %12
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %18 = load i32, ptr %17, align 8, !tbaa !27
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %22 = load i32, ptr %21, align 4, !tbaa !28
  %23 = zext i32 %22 to i64
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #16
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %24, ptr %25, align 8, !tbaa !29
  %26 = load i32, ptr %21, align 4, !tbaa !28
  %27 = shl i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #16
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %29, ptr %30, align 8, !tbaa !30
  %31 = icmp eq ptr %24, null
  %32 = icmp eq ptr %29, null
  %33 = or i1 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  tail call void @free(ptr noundef %29) #13
  tail call void @free(ptr noundef %24) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %264

35:                                               ; preds = %20
  %36 = load i32, ptr %21, align 4, !tbaa !28
  store i32 %36, ptr %17, align 8, !tbaa !27
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 0, ptr %38, align 8, !tbaa !25
  store ptr null, ptr %16, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  %39 = tail call i32 @inflateInit2_(ptr noundef nonnull %16, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %30, align 8, !tbaa !30
  tail call void @free(ptr noundef %42) #13
  %43 = load ptr, ptr %25, align 8, !tbaa !29
  tail call void @free(ptr noundef %43) #13
  store i32 0, ptr %17, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %264

44:                                               ; preds = %35, %15
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %46 = load i32, ptr %45, align 8, !tbaa !32
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %50 = load i32, ptr %49, align 4, !tbaa !33
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48, %44
  %53 = tail call i32 @inflateReset(ptr noundef nonnull %16) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %55 = load i32, ptr %54, align 4, !tbaa !33
  %56 = icmp ne i32 %55, -1
  %57 = zext i1 %56 to i32
  store i32 %57, ptr %54, align 4, !tbaa !33
  store i32 0, ptr %45, align 8, !tbaa !32
  br label %264

58:                                               ; preds = %48
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %60 = load i32, ptr %59, align 8, !tbaa !16
  switch i32 %60, label %264 [
    i32 0, label %61
    i32 -5, label %61
  ]

61:                                               ; preds = %58, %58
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %63 = load i32, ptr %62, align 8, !tbaa !24
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %66 = load i32, ptr %65, align 8, !tbaa !34
  br i1 %64, label %67, label %229

67:                                               ; preds = %61
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %171, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %71 = load ptr, ptr %70, align 8, !tbaa !29
  %72 = load ptr, ptr %16, align 8, !tbaa !35
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %171, label %74

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
  %85 = and i64 %77, 4294967264
  br label %86

86:                                               ; preds = %86, %84
  %87 = phi i64 [ 0, %84 ], [ %94, %86 ]
  %88 = getelementptr i8, ptr %71, i64 %87
  %89 = getelementptr i8, ptr %72, i64 %87
  %90 = getelementptr i8, ptr %89, i64 16
  %91 = load <16 x i8>, ptr %89, align 1, !tbaa !36
  %92 = load <16 x i8>, ptr %90, align 1, !tbaa !36
  %93 = getelementptr i8, ptr %88, i64 16
  store <16 x i8> %91, ptr %88, align 1, !tbaa !36
  store <16 x i8> %92, ptr %93, align 1, !tbaa !36
  %94 = add nuw nsw i64 %87, 32
  %95 = icmp eq i64 %94, %85
  br i1 %95, label %96, label %86, !llvm.loop !86

96:                                               ; preds = %86
  %97 = icmp eq i64 %85, %77
  br i1 %97, label %.loopexit58, label %98

98:                                               ; preds = %96
  %99 = trunc nuw i64 %85 to i32
  %100 = sub i32 %66, %99
  %101 = getelementptr i8, ptr %72, i64 %85
  %102 = getelementptr i8, ptr %71, i64 %85
  %103 = and i64 %77, 28
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %121, label %105, !prof !41

105:                                              ; preds = %98, %82
  %106 = phi i64 [ %85, %98 ], [ 0, %82 ]
  %107 = and i64 %77, 4294967292
  br label %108

108:                                              ; preds = %108, %105
  %109 = phi i64 [ %106, %105 ], [ %113, %108 ]
  %110 = getelementptr i8, ptr %71, i64 %109
  %111 = getelementptr i8, ptr %72, i64 %109
  %112 = load <4 x i8>, ptr %111, align 1, !tbaa !36
  store <4 x i8> %112, ptr %110, align 1, !tbaa !36
  %113 = add nuw i64 %109, 4
  %114 = icmp eq i64 %113, %107
  br i1 %114, label %115, label %108, !llvm.loop !87

115:                                              ; preds = %108
  %116 = getelementptr i8, ptr %71, i64 %107
  %117 = getelementptr i8, ptr %72, i64 %107
  %118 = trunc nuw i64 %107 to i32
  %119 = sub i32 %66, %118
  %120 = icmp eq i64 %107, %77
  br i1 %120, label %.loopexit58, label %121

121:                                              ; preds = %115, %98, %74
  %122 = phi ptr [ %71, %74 ], [ %102, %98 ], [ %116, %115 ]
  %123 = phi ptr [ %72, %74 ], [ %101, %98 ], [ %117, %115 ]
  %124 = phi i32 [ %66, %74 ], [ %100, %98 ], [ %119, %115 ]
  %125 = add i32 %124, -1
  %126 = and i32 %124, 7
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %.loopexit60, label %.preheader59

.preheader59:                                     ; preds = %121, %.preheader59
  %128 = phi ptr [ %132, %.preheader59 ], [ %122, %121 ]
  %129 = phi ptr [ %133, %.preheader59 ], [ %123, %121 ]
  %130 = phi i32 [ %134, %.preheader59 ], [ 0, %121 ]
  %131 = load i8, ptr %129, align 1, !tbaa !36
  store i8 %131, ptr %128, align 1, !tbaa !36
  %132 = getelementptr inbounds nuw i8, ptr %128, i64 1
  %133 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %134 = add nuw nsw i32 %130, 1
  %135 = icmp eq i32 %134, %126
  br i1 %135, label %.loopexit60.loopexit, label %.preheader59, !llvm.loop !88

.loopexit60.loopexit:                             ; preds = %.preheader59
  %136 = and i32 %124, -8
  br label %.loopexit60

.loopexit60:                                      ; preds = %.loopexit60.loopexit, %121
  %137 = phi ptr [ %122, %121 ], [ %132, %.loopexit60.loopexit ]
  %138 = phi ptr [ %123, %121 ], [ %133, %.loopexit60.loopexit ]
  %139 = phi i32 [ %124, %121 ], [ %136, %.loopexit60.loopexit ]
  %140 = icmp ult i32 %125, 7
  br i1 %140, label %.loopexit58, label %.preheader57

.preheader57:                                     ; preds = %.loopexit60, %.preheader57
  %141 = phi ptr [ %167, %.preheader57 ], [ %137, %.loopexit60 ]
  %142 = phi ptr [ %168, %.preheader57 ], [ %138, %.loopexit60 ]
  %143 = phi i32 [ %166, %.preheader57 ], [ %139, %.loopexit60 ]
  %144 = load i8, ptr %142, align 1, !tbaa !36
  store i8 %144, ptr %141, align 1, !tbaa !36
  %145 = getelementptr inbounds nuw i8, ptr %141, i64 1
  %146 = getelementptr inbounds nuw i8, ptr %142, i64 1
  %147 = load i8, ptr %146, align 1, !tbaa !36
  store i8 %147, ptr %145, align 1, !tbaa !36
  %148 = getelementptr inbounds nuw i8, ptr %141, i64 2
  %149 = getelementptr inbounds nuw i8, ptr %142, i64 2
  %150 = load i8, ptr %149, align 1, !tbaa !36
  store i8 %150, ptr %148, align 1, !tbaa !36
  %151 = getelementptr inbounds nuw i8, ptr %141, i64 3
  %152 = getelementptr inbounds nuw i8, ptr %142, i64 3
  %153 = load i8, ptr %152, align 1, !tbaa !36
  store i8 %153, ptr %151, align 1, !tbaa !36
  %154 = getelementptr inbounds nuw i8, ptr %141, i64 4
  %155 = getelementptr inbounds nuw i8, ptr %142, i64 4
  %156 = load i8, ptr %155, align 1, !tbaa !36
  store i8 %156, ptr %154, align 1, !tbaa !36
  %157 = getelementptr inbounds nuw i8, ptr %141, i64 5
  %158 = getelementptr inbounds nuw i8, ptr %142, i64 5
  %159 = load i8, ptr %158, align 1, !tbaa !36
  store i8 %159, ptr %157, align 1, !tbaa !36
  %160 = getelementptr inbounds nuw i8, ptr %141, i64 6
  %161 = getelementptr inbounds nuw i8, ptr %142, i64 6
  %162 = load i8, ptr %161, align 1, !tbaa !36
  store i8 %162, ptr %160, align 1, !tbaa !36
  %163 = getelementptr inbounds nuw i8, ptr %141, i64 7
  %164 = getelementptr inbounds nuw i8, ptr %142, i64 7
  %165 = load i8, ptr %164, align 1, !tbaa !36
  store i8 %165, ptr %163, align 1, !tbaa !36
  %166 = add i32 %143, -8
  %167 = getelementptr inbounds nuw i8, ptr %141, i64 8
  %168 = getelementptr inbounds nuw i8, ptr %142, i64 8
  %169 = icmp eq i32 %166, 0
  br i1 %169, label %.loopexit58, label %.preheader57, !llvm.loop !89

.loopexit58:                                      ; preds = %.preheader57, %.loopexit60, %115, %96
  %170 = load i32, ptr %65, align 8, !tbaa !34
  br label %171

171:                                              ; preds = %.loopexit58, %69, %67
  %172 = phi i32 [ %170, %.loopexit58 ], [ %66, %69 ], [ 0, %67 ]
  %173 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %174 = load i32, ptr %17, align 8, !tbaa !27
  %175 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %174, i32 %172), !nosanitize !20
  %176 = extractvalue { i32, i1 } %175, 1, !nosanitize !20
  br i1 %176, label %177, label %178, !prof !21, !nosanitize !20

177:                                              ; preds = %171
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

178:                                              ; preds = %171
  %179 = extractvalue { i32, i1 } %175, 0, !nosanitize !20
  %180 = load ptr, ptr %173, align 8, !tbaa !29
  %181 = zext i32 %172 to i64
  %182 = getelementptr inbounds nuw i8, ptr %180, i64 %181
  %183 = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 0, ptr %183, align 4, !tbaa !17
  %184 = tail call ptr @__errno_location() #17
  store i32 0, ptr %184, align 4, !tbaa !4
  %185 = getelementptr inbounds nuw i8, ptr %1, i64 28
  br label %186

186:                                              ; preds = %205, %178
  %187 = phi i32 [ 0, %178 ], [ %206, %205 ]
  %188 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %179, i32 %187), !nosanitize !20
  %189 = extractvalue { i32, i1 } %188, 1, !nosanitize !20
  br i1 %189, label %190, label %191, !prof !21, !nosanitize !20

190:                                              ; preds = %186
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

191:                                              ; preds = %186
  %192 = extractvalue { i32, i1 } %188, 0, !nosanitize !20
  %193 = tail call i32 @llvm.umin.i32(i32 %192, i32 1073741824)
  %194 = load i32, ptr %185, align 4, !tbaa !46
  %195 = zext i32 %187 to i64
  %196 = getelementptr inbounds nuw i8, ptr %182, i64 %195
  %197 = zext nneg i32 %193 to i64
  %198 = tail call i64 @read(i32 noundef %194, ptr noundef %196, i64 noundef %197) #13
  %199 = trunc i64 %198 to i32
  %200 = icmp slt i32 %199, 1
  br i1 %200, label %208, label %201

201:                                              ; preds = %191
  %202 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %187, i32 %199), !nosanitize !20
  %203 = extractvalue { i32, i1 } %202, 1, !nosanitize !20
  br i1 %203, label %204, label %205, !prof !21, !nosanitize !20

204:                                              ; preds = %201
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

205:                                              ; preds = %201
  %206 = extractvalue { i32, i1 } %202, 0, !nosanitize !20
  %207 = icmp ult i32 %206, %179
  br i1 %207, label %186, label %.loopexit56, !llvm.loop !47

208:                                              ; preds = %191
  %209 = icmp slt i32 %199, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %208
  %211 = load i32, ptr %184, align 4, !tbaa !4
  %212 = icmp eq i32 %211, 11
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  store i32 1, ptr %183, align 4, !tbaa !17
  %214 = icmp eq i32 %187, 0
  br i1 %214, label %215, label %.loopexit56

215:                                              ; preds = %213
  %216 = load i32, ptr %184, align 4, !tbaa !4
  br label %218

217:                                              ; preds = %208
  store i32 1, ptr %62, align 8, !tbaa !24
  br label %.loopexit56

218:                                              ; preds = %215, %210
  %219 = phi i32 [ %216, %215 ], [ %211, %210 ]
  %220 = tail call ptr @strerror(i32 noundef %219) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %220) #13
  br label %264

.loopexit56:                                      ; preds = %205, %217, %213
  %221 = phi i32 [ %187, %213 ], [ %187, %217 ], [ %206, %205 ]
  %222 = load i32, ptr %65, align 8, !tbaa !34
  %223 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %222, i32 %221), !nosanitize !20
  %224 = extractvalue { i32, i1 } %223, 1, !nosanitize !20
  br i1 %224, label %225, label %226, !prof !21, !nosanitize !20

225:                                              ; preds = %.loopexit56
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

226:                                              ; preds = %.loopexit56
  %227 = extractvalue { i32, i1 } %223, 0, !nosanitize !20
  store i32 %227, ptr %65, align 8, !tbaa !34
  %228 = load ptr, ptr %173, align 8, !tbaa !29
  store ptr %228, ptr %16, align 8, !tbaa !35
  br label %229

229:                                              ; preds = %226, %61
  %230 = phi i32 [ %227, %226 ], [ %66, %61 ]
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %264, label %232

232:                                              ; preds = %229
  %233 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %234 = load i32, ptr %233, align 4, !tbaa !17
  %235 = icmp ne i32 %234, 0
  %236 = icmp ult i32 %230, 4
  %237 = and i1 %236, %235
  br i1 %237, label %264, label %238

238:                                              ; preds = %232
  %239 = icmp ugt i32 %230, 3
  %240 = load ptr, ptr %16, align 8, !tbaa !35
  br i1 %239, label %241, label %258

241:                                              ; preds = %238
  %242 = load i8, ptr %240, align 1, !tbaa !36
  %243 = icmp eq i8 %242, 31
  br i1 %243, label %244, label %258

244:                                              ; preds = %241
  %245 = getelementptr inbounds nuw i8, ptr %240, i64 1
  %246 = load i8, ptr %245, align 1, !tbaa !36
  %247 = icmp eq i8 %246, -117
  br i1 %247, label %248, label %258

248:                                              ; preds = %244
  %249 = getelementptr inbounds nuw i8, ptr %240, i64 2
  %250 = load i8, ptr %249, align 1, !tbaa !36
  %251 = icmp eq i8 %250, 8
  br i1 %251, label %252, label %258

252:                                              ; preds = %248
  %253 = getelementptr inbounds nuw i8, ptr %240, i64 3
  %254 = load i8, ptr %253, align 1, !tbaa !36
  %255 = icmp ult i8 %254, 32
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = tail call i32 @inflateReset(ptr noundef nonnull %16) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %49, align 4, !tbaa !33
  store i32 0, ptr %45, align 8, !tbaa !32
  br label %264

258:                                              ; preds = %252, %248, %244, %241, %238
  %259 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %260 = load ptr, ptr %259, align 8, !tbaa !30
  %261 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %260, ptr %261, align 8, !tbaa !22
  %262 = zext i32 %230 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %260, ptr align 1 %240, i64 %262, i1 false)
  %263 = load i32, ptr %65, align 8, !tbaa !34
  store i32 %263, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %65, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %264

264:                                              ; preds = %258, %256, %232, %229, %218, %58, %52, %41, %34, %12, %8
  %265 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %266 = load i32, ptr %265, align 8, !tbaa !16
  switch i32 %266, label %267 [
    i32 0, label %271
    i32 -5, label %271
  ]

267:                                              ; preds = %264
  %268 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %269 = load i32, ptr %268, align 4, !tbaa !17
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %.loopexit52, label %271

271:                                              ; preds = %267, %264, %264
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #13
  %272 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %273 = load i64, ptr %272, align 8, !tbaa !18
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %715, label %275

275:                                              ; preds = %271
  %276 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %277 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %278 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %279 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %280 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %281 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %282 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %283 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %284 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %285 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %286 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %287 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %288 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %289 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %290 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %291 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %292 = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %293

293:                                              ; preds = %710, %275
  %294 = phi i64 [ %711, %710 ], [ %273, %275 ]
  %295 = load i32, ptr %1, align 8, !tbaa !19
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %319, label %297

297:                                              ; preds = %293
  %298 = zext i32 %295 to i64
  %299 = tail call i64 @llvm.smin.i64(i64 %294, i64 %298)
  %300 = trunc i64 %299 to i32
  %301 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %295, i32 %300), !nosanitize !20
  %302 = extractvalue { i32, i1 } %301, 1, !nosanitize !20
  br i1 %302, label %303, label %304, !prof !21, !nosanitize !20

303:                                              ; preds = %313, %297
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

304:                                              ; preds = %297
  %305 = extractvalue { i32, i1 } %301, 0, !nosanitize !20
  store i32 %305, ptr %1, align 8, !tbaa !19
  %306 = load ptr, ptr %276, align 8, !tbaa !22
  %307 = and i64 %299, 4294967295
  %308 = getelementptr inbounds nuw i8, ptr %306, i64 %307
  store ptr %308, ptr %276, align 8, !tbaa !22
  %309 = load i64, ptr %277, align 8, !tbaa !23
  %310 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %309, i64 %307), !nosanitize !20
  %311 = extractvalue { i64, i1 } %310, 1, !nosanitize !20
  br i1 %311, label %312, label %313, !prof !21, !nosanitize !20

312:                                              ; preds = %304
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

313:                                              ; preds = %304
  %314 = extractvalue { i64, i1 } %310, 0, !nosanitize !20
  store i64 %314, ptr %277, align 8, !tbaa !23
  %315 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %294, i64 %307), !nosanitize !20
  %316 = extractvalue { i64, i1 } %315, 1, !nosanitize !20
  br i1 %316, label %303, label %317, !prof !21, !nosanitize !20

317:                                              ; preds = %313
  %318 = extractvalue { i64, i1 } %315, 0, !nosanitize !20
  store i64 %318, ptr %272, align 8, !tbaa !18
  br label %710

319:                                              ; preds = %293
  %320 = load i32, ptr %278, align 8, !tbaa !24
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %.preheader382, label %322

322:                                              ; preds = %319
  %323 = load i32, ptr %279, align 8, !tbaa !25
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %713, label %.preheader382

.preheader382:                                    ; preds = %322, %319
  br label %325

325:                                              ; preds = %.backedge, %.preheader382
  %326 = load i32, ptr %9, align 8, !tbaa !26
  switch i32 %326, label %697 [
    i32 0, label %327
    i32 1, label %558
    i32 2, label %600
  ]

327:                                              ; preds = %325
  %328 = load i32, ptr %280, align 8, !tbaa !27
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %349

330:                                              ; preds = %327
  %331 = load i32, ptr %290, align 4, !tbaa !28
  %332 = zext i32 %331 to i64
  %333 = tail call noalias ptr @malloc(i64 noundef %332) #16
  store ptr %333, ptr %285, align 8, !tbaa !29
  %334 = load i32, ptr %290, align 4, !tbaa !28
  %335 = shl i32 %334, 1
  %336 = zext i32 %335 to i64
  %337 = tail call noalias ptr @malloc(i64 noundef %336) #16
  store ptr %337, ptr %282, align 8, !tbaa !30
  %338 = icmp eq ptr %333, null
  %339 = icmp eq ptr %337, null
  %340 = or i1 %338, %339
  br i1 %340, label %341, label %342

341:                                              ; preds = %330
  tail call void @free(ptr noundef %337) #13
  tail call void @free(ptr noundef %333) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit52

342:                                              ; preds = %330
  %343 = load i32, ptr %290, align 4, !tbaa !28
  store i32 %343, ptr %280, align 8, !tbaa !27
  store i32 0, ptr %279, align 8, !tbaa !25
  store ptr null, ptr %284, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %291, i8 0, i64 24, i1 false)
  %344 = tail call i32 @inflateInit2_(ptr noundef nonnull %284, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %349, label %346

346:                                              ; preds = %342
  %347 = load ptr, ptr %282, align 8, !tbaa !30
  tail call void @free(ptr noundef %347) #13
  %348 = load ptr, ptr %285, align 8, !tbaa !29
  tail call void @free(ptr noundef %348) #13
  store i32 0, ptr %280, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit52

349:                                              ; preds = %342, %327
  %350 = load i32, ptr %292, align 8, !tbaa !32
  %351 = icmp eq i32 %350, -1
  br i1 %351, label %355, label %352

352:                                              ; preds = %349
  %353 = load i32, ptr %288, align 4, !tbaa !33
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %352, %349
  %356 = tail call i32 @inflateReset(ptr noundef nonnull %284) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  %357 = load i32, ptr %288, align 4, !tbaa !33
  %358 = icmp ne i32 %357, -1
  %359 = zext i1 %358 to i32
  store i32 %359, ptr %288, align 4, !tbaa !33
  store i32 0, ptr %292, align 8, !tbaa !32
  br label %555

360:                                              ; preds = %352
  %361 = load i32, ptr %265, align 8, !tbaa !16
  switch i32 %361, label %.loopexit52 [
    i32 0, label %362
    i32 -5, label %362
  ]

362:                                              ; preds = %360, %360
  %363 = load i32, ptr %278, align 8, !tbaa !24
  %364 = icmp eq i32 %363, 0
  %365 = load i32, ptr %279, align 8, !tbaa !34
  br i1 %364, label %366, label %523

366:                                              ; preds = %362
  %367 = icmp eq i32 %365, 0
  br i1 %367, label %469, label %368

368:                                              ; preds = %366
  %369 = load ptr, ptr %285, align 8, !tbaa !29
  %370 = load ptr, ptr %284, align 8, !tbaa !35
  %371 = icmp eq ptr %370, %369
  br i1 %371, label %469, label %372

372:                                              ; preds = %368
  %373 = ptrtoaddr ptr %370 to i64
  %374 = ptrtoaddr ptr %369 to i64
  %375 = zext i32 %365 to i64
  %376 = icmp ult i32 %365, 4
  %377 = sub i64 %374, %373
  %378 = icmp ult i64 %377, 32
  %379 = or i1 %376, %378
  br i1 %379, label %419, label %380

380:                                              ; preds = %372
  %381 = icmp ult i32 %365, 32
  br i1 %381, label %403, label %382

382:                                              ; preds = %380
  %383 = and i64 %375, 4294967264
  br label %384

384:                                              ; preds = %384, %382
  %385 = phi i64 [ 0, %382 ], [ %392, %384 ]
  %386 = getelementptr i8, ptr %369, i64 %385
  %387 = getelementptr i8, ptr %370, i64 %385
  %388 = getelementptr i8, ptr %387, i64 16
  %389 = load <16 x i8>, ptr %387, align 1, !tbaa !36
  %390 = load <16 x i8>, ptr %388, align 1, !tbaa !36
  %391 = getelementptr i8, ptr %386, i64 16
  store <16 x i8> %389, ptr %386, align 1, !tbaa !36
  store <16 x i8> %390, ptr %391, align 1, !tbaa !36
  %392 = add nuw nsw i64 %385, 32
  %393 = icmp eq i64 %392, %383
  br i1 %393, label %394, label %384, !llvm.loop !90

394:                                              ; preds = %384
  %395 = icmp eq i64 %383, %375
  br i1 %395, label %.loopexit46, label %396

396:                                              ; preds = %394
  %397 = trunc nuw i64 %383 to i32
  %398 = sub i32 %365, %397
  %399 = getelementptr i8, ptr %370, i64 %383
  %400 = getelementptr i8, ptr %369, i64 %383
  %401 = and i64 %375, 28
  %402 = icmp eq i64 %401, 0
  br i1 %402, label %419, label %403, !prof !41

403:                                              ; preds = %396, %380
  %404 = phi i64 [ %383, %396 ], [ 0, %380 ]
  %405 = and i64 %375, 4294967292
  br label %406

406:                                              ; preds = %406, %403
  %407 = phi i64 [ %404, %403 ], [ %411, %406 ]
  %408 = getelementptr i8, ptr %369, i64 %407
  %409 = getelementptr i8, ptr %370, i64 %407
  %410 = load <4 x i8>, ptr %409, align 1, !tbaa !36
  store <4 x i8> %410, ptr %408, align 1, !tbaa !36
  %411 = add nuw i64 %407, 4
  %412 = icmp eq i64 %411, %405
  br i1 %412, label %413, label %406, !llvm.loop !91

413:                                              ; preds = %406
  %414 = getelementptr i8, ptr %369, i64 %405
  %415 = getelementptr i8, ptr %370, i64 %405
  %416 = trunc nuw i64 %405 to i32
  %417 = sub i32 %365, %416
  %418 = icmp eq i64 %405, %375
  br i1 %418, label %.loopexit46, label %419

419:                                              ; preds = %413, %396, %372
  %420 = phi ptr [ %369, %372 ], [ %400, %396 ], [ %414, %413 ]
  %421 = phi ptr [ %370, %372 ], [ %399, %396 ], [ %415, %413 ]
  %422 = phi i32 [ %365, %372 ], [ %398, %396 ], [ %417, %413 ]
  %423 = add i32 %422, -1
  %424 = and i32 %422, 7
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %.loopexit48, label %.preheader47

.preheader47:                                     ; preds = %419, %.preheader47
  %426 = phi ptr [ %430, %.preheader47 ], [ %420, %419 ]
  %427 = phi ptr [ %431, %.preheader47 ], [ %421, %419 ]
  %428 = phi i32 [ %432, %.preheader47 ], [ 0, %419 ]
  %429 = load i8, ptr %427, align 1, !tbaa !36
  store i8 %429, ptr %426, align 1, !tbaa !36
  %430 = getelementptr inbounds nuw i8, ptr %426, i64 1
  %431 = getelementptr inbounds nuw i8, ptr %427, i64 1
  %432 = add nuw nsw i32 %428, 1
  %433 = icmp eq i32 %432, %424
  br i1 %433, label %.loopexit48.loopexit, label %.preheader47, !llvm.loop !92

.loopexit48.loopexit:                             ; preds = %.preheader47
  %434 = and i32 %422, -8
  br label %.loopexit48

.loopexit48:                                      ; preds = %.loopexit48.loopexit, %419
  %435 = phi ptr [ %420, %419 ], [ %430, %.loopexit48.loopexit ]
  %436 = phi ptr [ %421, %419 ], [ %431, %.loopexit48.loopexit ]
  %437 = phi i32 [ %422, %419 ], [ %434, %.loopexit48.loopexit ]
  %438 = icmp ult i32 %423, 7
  br i1 %438, label %.loopexit46, label %.preheader45

.preheader45:                                     ; preds = %.loopexit48, %.preheader45
  %439 = phi ptr [ %465, %.preheader45 ], [ %435, %.loopexit48 ]
  %440 = phi ptr [ %466, %.preheader45 ], [ %436, %.loopexit48 ]
  %441 = phi i32 [ %464, %.preheader45 ], [ %437, %.loopexit48 ]
  %442 = load i8, ptr %440, align 1, !tbaa !36
  store i8 %442, ptr %439, align 1, !tbaa !36
  %443 = getelementptr inbounds nuw i8, ptr %439, i64 1
  %444 = getelementptr inbounds nuw i8, ptr %440, i64 1
  %445 = load i8, ptr %444, align 1, !tbaa !36
  store i8 %445, ptr %443, align 1, !tbaa !36
  %446 = getelementptr inbounds nuw i8, ptr %439, i64 2
  %447 = getelementptr inbounds nuw i8, ptr %440, i64 2
  %448 = load i8, ptr %447, align 1, !tbaa !36
  store i8 %448, ptr %446, align 1, !tbaa !36
  %449 = getelementptr inbounds nuw i8, ptr %439, i64 3
  %450 = getelementptr inbounds nuw i8, ptr %440, i64 3
  %451 = load i8, ptr %450, align 1, !tbaa !36
  store i8 %451, ptr %449, align 1, !tbaa !36
  %452 = getelementptr inbounds nuw i8, ptr %439, i64 4
  %453 = getelementptr inbounds nuw i8, ptr %440, i64 4
  %454 = load i8, ptr %453, align 1, !tbaa !36
  store i8 %454, ptr %452, align 1, !tbaa !36
  %455 = getelementptr inbounds nuw i8, ptr %439, i64 5
  %456 = getelementptr inbounds nuw i8, ptr %440, i64 5
  %457 = load i8, ptr %456, align 1, !tbaa !36
  store i8 %457, ptr %455, align 1, !tbaa !36
  %458 = getelementptr inbounds nuw i8, ptr %439, i64 6
  %459 = getelementptr inbounds nuw i8, ptr %440, i64 6
  %460 = load i8, ptr %459, align 1, !tbaa !36
  store i8 %460, ptr %458, align 1, !tbaa !36
  %461 = getelementptr inbounds nuw i8, ptr %439, i64 7
  %462 = getelementptr inbounds nuw i8, ptr %440, i64 7
  %463 = load i8, ptr %462, align 1, !tbaa !36
  store i8 %463, ptr %461, align 1, !tbaa !36
  %464 = add i32 %441, -8
  %465 = getelementptr inbounds nuw i8, ptr %439, i64 8
  %466 = getelementptr inbounds nuw i8, ptr %440, i64 8
  %467 = icmp eq i32 %464, 0
  br i1 %467, label %.loopexit46, label %.preheader45, !llvm.loop !93

.loopexit46:                                      ; preds = %.preheader45, %.loopexit48, %413, %394
  %468 = load i32, ptr %279, align 8, !tbaa !34
  br label %469

469:                                              ; preds = %.loopexit46, %368, %366
  %470 = phi i32 [ %468, %.loopexit46 ], [ %365, %368 ], [ 0, %366 ]
  %471 = load i32, ptr %280, align 8, !tbaa !27
  %472 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %471, i32 %470), !nosanitize !20
  %473 = extractvalue { i32, i1 } %472, 1, !nosanitize !20
  br i1 %473, label %474, label %475, !prof !21, !nosanitize !20

474:                                              ; preds = %469
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

475:                                              ; preds = %469
  %476 = extractvalue { i32, i1 } %472, 0, !nosanitize !20
  %477 = load ptr, ptr %285, align 8, !tbaa !29
  %478 = zext i32 %470 to i64
  %479 = getelementptr inbounds nuw i8, ptr %477, i64 %478
  store i32 0, ptr %286, align 4, !tbaa !17
  %480 = tail call ptr @__errno_location() #17
  store i32 0, ptr %480, align 4, !tbaa !4
  br label %481

481:                                              ; preds = %500, %475
  %482 = phi i32 [ 0, %475 ], [ %501, %500 ]
  %483 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %476, i32 %482), !nosanitize !20
  %484 = extractvalue { i32, i1 } %483, 1, !nosanitize !20
  br i1 %484, label %485, label %486, !prof !21, !nosanitize !20

485:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

486:                                              ; preds = %481
  %487 = extractvalue { i32, i1 } %483, 0, !nosanitize !20
  %488 = tail call i32 @llvm.umin.i32(i32 %487, i32 1073741824)
  %489 = load i32, ptr %287, align 4, !tbaa !46
  %490 = zext i32 %482 to i64
  %491 = getelementptr inbounds nuw i8, ptr %479, i64 %490
  %492 = zext nneg i32 %488 to i64
  %493 = tail call i64 @read(i32 noundef %489, ptr noundef %491, i64 noundef %492) #13
  %494 = trunc i64 %493 to i32
  %495 = icmp slt i32 %494, 1
  br i1 %495, label %503, label %496

496:                                              ; preds = %486
  %497 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %482, i32 %494), !nosanitize !20
  %498 = extractvalue { i32, i1 } %497, 1, !nosanitize !20
  br i1 %498, label %499, label %500, !prof !21, !nosanitize !20

499:                                              ; preds = %496
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

500:                                              ; preds = %496
  %501 = extractvalue { i32, i1 } %497, 0, !nosanitize !20
  %502 = icmp ult i32 %501, %476
  br i1 %502, label %481, label %.loopexit44, !llvm.loop !47

503:                                              ; preds = %486
  %504 = icmp slt i32 %494, 0
  br i1 %504, label %505, label %512

505:                                              ; preds = %503
  %506 = load i32, ptr %480, align 4, !tbaa !4
  %507 = icmp eq i32 %506, 11
  br i1 %507, label %508, label %.loopexit53

508:                                              ; preds = %505
  store i32 1, ptr %286, align 4, !tbaa !17
  %509 = icmp eq i32 %482, 0
  br i1 %509, label %510, label %.loopexit44

510:                                              ; preds = %508
  %511 = load i32, ptr %480, align 4, !tbaa !4
  br label %.loopexit53

512:                                              ; preds = %503
  store i32 1, ptr %278, align 8, !tbaa !24
  br label %.loopexit44

.loopexit53:                                      ; preds = %505, %510
  %513 = phi i32 [ %511, %510 ], [ %506, %505 ]
  %514 = tail call ptr @strerror(i32 noundef %513) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %514) #13
  br label %.loopexit52

.loopexit44:                                      ; preds = %500, %512, %508
  %515 = phi i32 [ %482, %508 ], [ %482, %512 ], [ %501, %500 ]
  %516 = load i32, ptr %279, align 8, !tbaa !34
  %517 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %516, i32 %515), !nosanitize !20
  %518 = extractvalue { i32, i1 } %517, 1, !nosanitize !20
  br i1 %518, label %519, label %520, !prof !21, !nosanitize !20

519:                                              ; preds = %.loopexit44
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

520:                                              ; preds = %.loopexit44
  %521 = extractvalue { i32, i1 } %517, 0, !nosanitize !20
  store i32 %521, ptr %279, align 8, !tbaa !34
  %522 = load ptr, ptr %285, align 8, !tbaa !29
  store ptr %522, ptr %284, align 8, !tbaa !35
  br label %523

523:                                              ; preds = %520, %362
  %524 = phi i32 [ %521, %520 ], [ %365, %362 ]
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %555, label %526

526:                                              ; preds = %523
  %527 = load i32, ptr %286, align 4, !tbaa !17
  %528 = icmp ne i32 %527, 0
  %529 = icmp ult i32 %524, 4
  %530 = and i1 %529, %528
  br i1 %530, label %555, label %531

531:                                              ; preds = %526
  %532 = icmp ugt i32 %524, 3
  %533 = load ptr, ptr %284, align 8, !tbaa !35
  br i1 %532, label %534, label %551

534:                                              ; preds = %531
  %535 = load i8, ptr %533, align 1, !tbaa !36
  %536 = icmp eq i8 %535, 31
  br i1 %536, label %537, label %551

537:                                              ; preds = %534
  %538 = getelementptr inbounds nuw i8, ptr %533, i64 1
  %539 = load i8, ptr %538, align 1, !tbaa !36
  %540 = icmp eq i8 %539, -117
  br i1 %540, label %541, label %551

541:                                              ; preds = %537
  %542 = getelementptr inbounds nuw i8, ptr %533, i64 2
  %543 = load i8, ptr %542, align 1, !tbaa !36
  %544 = icmp eq i8 %543, 8
  br i1 %544, label %545, label %551

545:                                              ; preds = %541
  %546 = getelementptr inbounds nuw i8, ptr %533, i64 3
  %547 = load i8, ptr %546, align 1, !tbaa !36
  %548 = icmp ult i8 %547, 32
  br i1 %548, label %549, label %551

549:                                              ; preds = %545
  %550 = tail call i32 @inflateReset(ptr noundef nonnull %284) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %288, align 4, !tbaa !33
  store i32 0, ptr %292, align 8, !tbaa !32
  br label %698

551:                                              ; preds = %545, %541, %537, %534, %531
  %552 = load ptr, ptr %282, align 8, !tbaa !30
  store ptr %552, ptr %276, align 8, !tbaa !22
  %553 = zext i32 %524 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %552, ptr align 1 %533, i64 %553, i1 false)
  %554 = load i32, ptr %279, align 8, !tbaa !34
  store i32 %554, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %279, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %700

555:                                              ; preds = %526, %523, %355
  %556 = load i32, ptr %9, align 8, !tbaa !26
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %.loopexit54, label %698

558:                                              ; preds = %325
  %559 = load ptr, ptr %282, align 8, !tbaa !30
  %560 = load i32, ptr %280, align 8, !tbaa !27
  %561 = shl i32 %560, 1
  store i32 0, ptr %286, align 4, !tbaa !17
  %562 = tail call ptr @__errno_location() #17
  store i32 0, ptr %562, align 4, !tbaa !4
  store i32 0, ptr %1, align 8, !tbaa !4
  br label %563

563:                                              ; preds = %583, %558
  %564 = phi i32 [ %584, %583 ], [ 0, %558 ]
  %565 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %561, i32 %564), !nosanitize !20
  %566 = extractvalue { i32, i1 } %565, 1, !nosanitize !20
  br i1 %566, label %567, label %568, !prof !21, !nosanitize !20

567:                                              ; preds = %563
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

568:                                              ; preds = %563
  %569 = extractvalue { i32, i1 } %565, 0, !nosanitize !20
  %570 = tail call i32 @llvm.umin.i32(i32 %569, i32 1073741824)
  %571 = load i32, ptr %287, align 4, !tbaa !46
  %572 = zext i32 %564 to i64
  %573 = getelementptr inbounds nuw i8, ptr %559, i64 %572
  %574 = zext nneg i32 %570 to i64
  %575 = tail call i64 @read(i32 noundef %571, ptr noundef %573, i64 noundef %574) #13
  %576 = trunc i64 %575 to i32
  %577 = icmp slt i32 %576, 1
  br i1 %577, label %586, label %578

578:                                              ; preds = %568
  %579 = load i32, ptr %1, align 4, !tbaa !4
  %580 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %579, i32 %576), !nosanitize !20
  %581 = extractvalue { i32, i1 } %580, 1, !nosanitize !20
  br i1 %581, label %582, label %583, !prof !21, !nosanitize !20

582:                                              ; preds = %578
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

583:                                              ; preds = %578
  %584 = extractvalue { i32, i1 } %580, 0, !nosanitize !20
  store i32 %584, ptr %1, align 4, !tbaa !4
  %585 = icmp ult i32 %584, %561
  br i1 %585, label %563, label %.loopexit51, !llvm.loop !47

586:                                              ; preds = %568
  %587 = icmp slt i32 %576, 0
  br i1 %587, label %588, label %596

588:                                              ; preds = %586
  %589 = load i32, ptr %562, align 4, !tbaa !4
  %590 = icmp eq i32 %589, 11
  br i1 %590, label %591, label %.loopexit55

591:                                              ; preds = %588
  store i32 1, ptr %286, align 4, !tbaa !17
  %592 = load i32, ptr %1, align 4, !tbaa !4
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %.loopexit51

594:                                              ; preds = %591
  %595 = load i32, ptr %562, align 4, !tbaa !4
  br label %.loopexit55

596:                                              ; preds = %586
  store i32 1, ptr %278, align 8, !tbaa !24
  br label %.loopexit51

.loopexit55:                                      ; preds = %588, %594
  %597 = phi i32 [ %595, %594 ], [ %589, %588 ]
  %598 = tail call ptr @strerror(i32 noundef %597) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %598) #13
  br label %.loopexit52

.loopexit51:                                      ; preds = %583, %596, %591
  %599 = load ptr, ptr %282, align 8, !tbaa !30
  store ptr %599, ptr %276, align 8, !tbaa !22
  br label %.loopexit54

600:                                              ; preds = %325
  %601 = load i32, ptr %280, align 8, !tbaa !27
  %602 = shl i32 %601, 1
  store i32 %602, ptr %281, align 8, !tbaa !48
  %603 = load ptr, ptr %282, align 8, !tbaa !30
  store ptr %603, ptr %283, align 8, !tbaa !49
  br label %604

604:                                              ; preds = %681, %600
  %605 = phi i32 [ 0, %600 ], [ %666, %681 ]
  %606 = load i32, ptr %279, align 8, !tbaa !34
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %608, label %665

608:                                              ; preds = %604
  %609 = load i32, ptr %265, align 8, !tbaa !16
  switch i32 %609, label %.loopexit49 [
    i32 0, label %610
    i32 -5, label %610
  ]

610:                                              ; preds = %608, %608
  %611 = load i32, ptr %278, align 8, !tbaa !24
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %661

613:                                              ; preds = %610
  %614 = load i32, ptr %280, align 8, !tbaa !27
  %615 = load ptr, ptr %285, align 8, !tbaa !29
  store i32 0, ptr %286, align 4, !tbaa !17
  %616 = tail call ptr @__errno_location() #17
  store i32 0, ptr %616, align 4, !tbaa !4
  br label %617

617:                                              ; preds = %636, %613
  %618 = phi i32 [ 0, %613 ], [ %637, %636 ]
  %619 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %614, i32 %618), !nosanitize !20
  %620 = extractvalue { i32, i1 } %619, 1, !nosanitize !20
  br i1 %620, label %621, label %622, !prof !21, !nosanitize !20

621:                                              ; preds = %617
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

622:                                              ; preds = %617
  %623 = extractvalue { i32, i1 } %619, 0, !nosanitize !20
  %624 = tail call i32 @llvm.umin.i32(i32 %623, i32 1073741824)
  %625 = load i32, ptr %287, align 4, !tbaa !46
  %626 = zext i32 %618 to i64
  %627 = getelementptr inbounds nuw i8, ptr %615, i64 %626
  %628 = zext nneg i32 %624 to i64
  %629 = tail call i64 @read(i32 noundef %625, ptr noundef %627, i64 noundef %628) #13
  %630 = trunc i64 %629 to i32
  %631 = icmp slt i32 %630, 1
  br i1 %631, label %639, label %632

632:                                              ; preds = %622
  %633 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %618, i32 %630), !nosanitize !20
  %634 = extractvalue { i32, i1 } %633, 1, !nosanitize !20
  br i1 %634, label %635, label %636, !prof !21, !nosanitize !20

635:                                              ; preds = %632
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

636:                                              ; preds = %632
  %637 = extractvalue { i32, i1 } %633, 0, !nosanitize !20
  %638 = icmp ult i32 %637, %614
  br i1 %638, label %617, label %.loopexit, !llvm.loop !47

639:                                              ; preds = %622
  %640 = icmp slt i32 %630, 0
  br i1 %640, label %641, label %648

641:                                              ; preds = %639
  %642 = load i32, ptr %616, align 4, !tbaa !4
  %643 = icmp eq i32 %642, 11
  br i1 %643, label %644, label %.loopexit50

644:                                              ; preds = %641
  store i32 1, ptr %286, align 4, !tbaa !17
  %645 = icmp eq i32 %618, 0
  br i1 %645, label %646, label %.loopexit

646:                                              ; preds = %644
  %647 = load i32, ptr %616, align 4, !tbaa !4
  br label %.loopexit50

648:                                              ; preds = %639
  store i32 1, ptr %278, align 8, !tbaa !24
  br label %.loopexit

.loopexit50:                                      ; preds = %641, %646
  %649 = phi i32 [ %647, %646 ], [ %642, %641 ]
  %650 = tail call ptr @strerror(i32 noundef %649) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %650) #13
  %651 = load i32, ptr %265, align 8, !tbaa !16
  br label %.loopexit49

.loopexit:                                        ; preds = %636, %648, %644
  %652 = phi i32 [ %618, %644 ], [ %618, %648 ], [ %637, %636 ]
  %653 = load i32, ptr %279, align 8, !tbaa !34
  %654 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %653, i32 %652), !nosanitize !20
  %655 = extractvalue { i32, i1 } %654, 1, !nosanitize !20
  br i1 %655, label %656, label %657, !prof !21, !nosanitize !20

656:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

657:                                              ; preds = %.loopexit
  %658 = extractvalue { i32, i1 } %654, 0, !nosanitize !20
  store i32 %658, ptr %279, align 8, !tbaa !34
  %659 = load ptr, ptr %285, align 8, !tbaa !29
  store ptr %659, ptr %284, align 8, !tbaa !35
  %660 = icmp eq i32 %658, 0
  br i1 %660, label %661, label %665

661:                                              ; preds = %657, %610
  %662 = load i32, ptr %286, align 4, !tbaa !17
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %664, label %.loopexit49

664:                                              ; preds = %661
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit49

665:                                              ; preds = %657, %604
  %666 = tail call i32 @inflate(ptr noundef nonnull %284, i32 noundef 0) #13
  %667 = load i32, ptr %281, align 8, !tbaa !48
  %668 = icmp ult i32 %667, %602
  br i1 %668, label %669, label %670

669:                                              ; preds = %665
  store i32 0, ptr %288, align 4, !tbaa !33
  br label %670

670:                                              ; preds = %669, %665
  switch i32 %666, label %681 [
    i32 -2, label %671
    i32 2, label %671
    i32 -4, label %672
    i32 -3, label %673
  ]

671:                                              ; preds = %670, %670
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit49

672:                                              ; preds = %670
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit49

673:                                              ; preds = %670
  %674 = load i32, ptr %288, align 4, !tbaa !33
  %675 = icmp eq i32 %674, 1
  br i1 %675, label %676, label %677

676:                                              ; preds = %673
  store i32 0, ptr %279, align 8, !tbaa !34
  store i32 1, ptr %278, align 8, !tbaa !24
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %.loopexit49

677:                                              ; preds = %673
  %678 = load ptr, ptr %289, align 8, !tbaa !50
  %679 = icmp eq ptr %678, null
  %680 = select i1 %679, ptr @.str.6, ptr %678
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull %680) #13
  br label %.loopexit49

681:                                              ; preds = %670
  %682 = icmp ne i32 %667, 0
  %683 = icmp ne i32 %666, 1
  %684 = select i1 %682, i1 %683, i1 false
  br i1 %684, label %604, label %.loopexit49, !llvm.loop !51

.loopexit49:                                      ; preds = %681, %608, %677, %676, %672, %671, %664, %661, %.loopexit50
  %685 = phi i32 [ %651, %.loopexit50 ], [ %605, %661 ], [ %605, %664 ], [ %666, %671 ], [ -4, %672 ], [ 0, %676 ], [ -3, %677 ], [ %666, %681 ], [ %609, %608 ]
  %686 = load i32, ptr %281, align 8, !tbaa !48
  %687 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %602, i32 %686), !nosanitize !20
  %688 = extractvalue { i32, i1 } %687, 1, !nosanitize !20
  br i1 %688, label %689, label %690, !prof !21, !nosanitize !20

689:                                              ; preds = %.loopexit49
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

690:                                              ; preds = %.loopexit49
  %691 = extractvalue { i32, i1 } %687, 0, !nosanitize !20
  store i32 %691, ptr %1, align 8, !tbaa !19
  %692 = load ptr, ptr %283, align 8, !tbaa !49
  %693 = zext i32 %691 to i64
  %694 = sub nsw i64 0, %693
  %695 = getelementptr inbounds i8, ptr %692, i64 %694
  store ptr %695, ptr %276, align 8, !tbaa !22
  switch i32 %685, label %.loopexit52 [
    i32 1, label %696
    i32 0, label %698
  ]

696:                                              ; preds = %690
  store i32 0, ptr %288, align 4, !tbaa !33
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %698

697:                                              ; preds = %325
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit52

698:                                              ; preds = %696, %690, %555, %549
  %699 = load i32, ptr %1, align 8, !tbaa !19
  br label %700

700:                                              ; preds = %698, %551
  %701 = phi i32 [ %699, %698 ], [ %554, %551 ]
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %703, label %.loopexit54

703:                                              ; preds = %700
  %704 = load i32, ptr %278, align 8, !tbaa !24
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %.backedge, label %706

706:                                              ; preds = %703
  %707 = load i32, ptr %279, align 8, !tbaa !34
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %.loopexit54, label %.backedge

.backedge:                                        ; preds = %706, %703
  br label %325, !llvm.loop !52

.loopexit54:                                      ; preds = %706, %700, %555, %.loopexit51
  %709 = load i64, ptr %272, align 8, !tbaa !18
  br label %710

710:                                              ; preds = %.loopexit54, %317
  %711 = phi i64 [ %709, %.loopexit54 ], [ %318, %317 ]
  %712 = icmp eq i64 %711, 0
  br i1 %712, label %713, label %293, !llvm.loop !53

713:                                              ; preds = %710, %322
  %714 = icmp slt i32 %0, 0
  br i1 %714, label %.loopexit52, label %717

715:                                              ; preds = %271
  %716 = icmp slt i32 %0, 0
  br i1 %716, label %.loopexit52, label %717

717:                                              ; preds = %715, %713
  %718 = load i32, ptr %1, align 8, !tbaa !19
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %720, label %739

720:                                              ; preds = %717
  store i32 1, ptr %1, align 8, !tbaa !19
  %721 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %722 = load ptr, ptr %721, align 8, !tbaa !30
  %723 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %724 = load i32, ptr %723, align 8, !tbaa !27
  %725 = shl i32 %724, 1
  %726 = zext i32 %725 to i64
  %727 = getelementptr inbounds nuw i8, ptr %722, i64 %726
  %728 = getelementptr inbounds i8, ptr %727, i64 -1
  %729 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %728, ptr %729, align 8, !tbaa !22
  %730 = trunc i32 %0 to i8
  store i8 %730, ptr %728, align 1, !tbaa !36
  %731 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %732 = load i64, ptr %731, align 8, !tbaa !23
  %733 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %732, i64 -1)
  %734 = extractvalue { i64, i1 } %733, 1, !nosanitize !20
  br i1 %734, label %735, label %736, !prof !21, !nosanitize !20

735:                                              ; preds = %771, %720
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

736:                                              ; preds = %720
  %737 = extractvalue { i64, i1 } %733, 0, !nosanitize !20
  store i64 %737, ptr %731, align 8, !tbaa !23
  %738 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %738, align 4, !tbaa !61
  br label %.loopexit52

739:                                              ; preds = %717
  %740 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %741 = load i32, ptr %740, align 8, !tbaa !27
  %742 = shl i32 %741, 1
  %743 = icmp eq i32 %718, %742
  br i1 %743, label %744, label %745

744:                                              ; preds = %739
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.2) #13
  br label %.loopexit52

745:                                              ; preds = %739
  %746 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %747 = load ptr, ptr %746, align 8, !tbaa !22
  %748 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %749 = load ptr, ptr %748, align 8, !tbaa !30
  %750 = icmp eq ptr %747, %749
  br i1 %750, label %.preheader, label %765

.preheader:                                       ; preds = %745
  %751 = zext i32 %718 to i64
  %752 = getelementptr inbounds nuw i8, ptr %749, i64 %751
  %753 = zext i32 %742 to i64
  %754 = getelementptr inbounds nuw i8, ptr %749, i64 %753
  br label %755

755:                                              ; preds = %.preheader, %755
  %756 = phi ptr [ %760, %755 ], [ %754, %.preheader ]
  %757 = phi ptr [ %758, %755 ], [ %752, %.preheader ]
  %758 = getelementptr inbounds i8, ptr %757, i64 -1
  %759 = load i8, ptr %758, align 1, !tbaa !36
  %760 = getelementptr inbounds i8, ptr %756, i64 -1
  store i8 %759, ptr %760, align 1, !tbaa !36
  %761 = load ptr, ptr %748, align 8, !tbaa !30
  %762 = icmp ugt ptr %758, %761
  br i1 %762, label %755, label %763, !llvm.loop !94

763:                                              ; preds = %755
  %764 = load i32, ptr %1, align 8, !tbaa !19
  store ptr %760, ptr %746, align 8, !tbaa !22
  br label %765

765:                                              ; preds = %763, %745
  %766 = phi ptr [ %760, %763 ], [ %747, %745 ]
  %767 = phi i32 [ %764, %763 ], [ %718, %745 ]
  %768 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %767, i32 1), !nosanitize !20
  %769 = extractvalue { i32, i1 } %768, 1, !nosanitize !20
  br i1 %769, label %770, label %771, !prof !21, !nosanitize !20

770:                                              ; preds = %765
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

771:                                              ; preds = %765
  %772 = extractvalue { i32, i1 } %768, 0, !nosanitize !20
  store i32 %772, ptr %1, align 8, !tbaa !19
  %773 = getelementptr inbounds i8, ptr %766, i64 -1
  store ptr %773, ptr %746, align 8, !tbaa !22
  %774 = trunc i32 %0 to i8
  store i8 %774, ptr %773, align 1, !tbaa !36
  %775 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %776 = load i64, ptr %775, align 8, !tbaa !23
  %777 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %776, i64 -1)
  %778 = extractvalue { i64, i1 } %777, 1, !nosanitize !20
  br i1 %778, label %735, label %779, !prof !21, !nosanitize !20

779:                                              ; preds = %771
  %780 = extractvalue { i64, i1 } %777, 0, !nosanitize !20
  store i64 %780, ptr %775, align 8, !tbaa !23
  %781 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %781, align 4, !tbaa !61
  br label %.loopexit52

.loopexit52:                                      ; preds = %690, %360, %779, %744, %736, %715, %713, %697, %.loopexit55, %.loopexit53, %346, %341, %267, %4, %2
  %782 = phi i32 [ -1, %4 ], [ -1, %2 ], [ -1, %267 ], [ -1, %713 ], [ %0, %736 ], [ -1, %744 ], [ %0, %779 ], [ -1, %715 ], [ -1, %346 ], [ -1, %341 ], [ -1, %697 ], [ -1, %.loopexit55 ], [ -1, %.loopexit53 ], [ -1, %360 ], [ -1, %690 ]
  ret i32 %782
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gzgets(ptr noundef %0, ptr noundef writeonly captures(address, ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp slt i32 %2, 1
  %8 = or i1 %6, %7
  br i1 %8, label %.loopexit80, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load i32, ptr %10, align 8, !tbaa !8
  %12 = icmp eq i32 %11, 7247
  br i1 %12, label %13, label %.loopexit80

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
  br i1 %19, label %.loopexit80, label %20

20:                                               ; preds = %16, %13, %13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %22 = load i64, ptr %21, align 8, !tbaa !18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %.loopexit83, label %24

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
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %43

43:                                               ; preds = %460, %24
  %44 = phi i64 [ %461, %460 ], [ %22, %24 ]
  %45 = load i32, ptr %0, align 8, !tbaa !19
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %69, label %47

47:                                               ; preds = %43
  %48 = zext i32 %45 to i64
  %49 = tail call i64 @llvm.smin.i64(i64 %44, i64 %48)
  %50 = trunc i64 %49 to i32
  %51 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %45, i32 %50), !nosanitize !20
  %52 = extractvalue { i32, i1 } %51, 1, !nosanitize !20
  br i1 %52, label %53, label %54, !prof !21, !nosanitize !20

53:                                               ; preds = %63, %47
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

54:                                               ; preds = %47
  %55 = extractvalue { i32, i1 } %51, 0, !nosanitize !20
  store i32 %55, ptr %0, align 8, !tbaa !19
  %56 = load ptr, ptr %25, align 8, !tbaa !22
  %57 = and i64 %49, 4294967295
  %58 = getelementptr inbounds nuw i8, ptr %56, i64 %57
  store ptr %58, ptr %25, align 8, !tbaa !22
  %59 = load i64, ptr %26, align 8, !tbaa !23
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %59, i64 %57), !nosanitize !20
  %61 = extractvalue { i64, i1 } %60, 1, !nosanitize !20
  br i1 %61, label %62, label %63, !prof !21, !nosanitize !20

62:                                               ; preds = %54
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

63:                                               ; preds = %54
  %64 = extractvalue { i64, i1 } %60, 0, !nosanitize !20
  store i64 %64, ptr %26, align 8, !tbaa !23
  %65 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %44, i64 %57), !nosanitize !20
  %66 = extractvalue { i64, i1 } %65, 1, !nosanitize !20
  br i1 %66, label %53, label %67, !prof !21, !nosanitize !20

67:                                               ; preds = %63
  %68 = extractvalue { i64, i1 } %65, 0, !nosanitize !20
  store i64 %68, ptr %21, align 8, !tbaa !18
  br label %460

69:                                               ; preds = %43
  %70 = load i32, ptr %27, align 8, !tbaa !24
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %.preheader789, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %28, align 8, !tbaa !25
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %.loopexit83, label %.preheader789

.preheader789:                                    ; preds = %72, %69
  br label %75

75:                                               ; preds = %.backedge, %.preheader789
  %76 = load i32, ptr %29, align 8, !tbaa !26
  switch i32 %76, label %447 [
    i32 0, label %77
    i32 1, label %308
    i32 2, label %350
  ]

77:                                               ; preds = %75
  %78 = load i32, ptr %30, align 8, !tbaa !27
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %77
  %81 = load i32, ptr %40, align 4, !tbaa !28
  %82 = zext i32 %81 to i64
  %83 = tail call noalias ptr @malloc(i64 noundef %82) #16
  store ptr %83, ptr %35, align 8, !tbaa !29
  %84 = load i32, ptr %40, align 4, !tbaa !28
  %85 = shl i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = tail call noalias ptr @malloc(i64 noundef %86) #16
  store ptr %87, ptr %32, align 8, !tbaa !30
  %88 = icmp eq ptr %83, null
  %89 = icmp eq ptr %87, null
  %90 = or i1 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  tail call void @free(ptr noundef %87) #13
  tail call void @free(ptr noundef %83) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit80

92:                                               ; preds = %80
  %93 = load i32, ptr %40, align 4, !tbaa !28
  store i32 %93, ptr %30, align 8, !tbaa !27
  store i32 0, ptr %28, align 8, !tbaa !25
  store ptr null, ptr %34, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %94 = tail call i32 @inflateInit2_(ptr noundef nonnull %34, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %32, align 8, !tbaa !30
  tail call void @free(ptr noundef %97) #13
  %98 = load ptr, ptr %35, align 8, !tbaa !29
  tail call void @free(ptr noundef %98) #13
  store i32 0, ptr %30, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit80

99:                                               ; preds = %92, %77
  %100 = load i32, ptr %42, align 8, !tbaa !32
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, ptr %38, align 4, !tbaa !33
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102, %99
  %106 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  %107 = load i32, ptr %38, align 4, !tbaa !33
  %108 = icmp ne i32 %107, -1
  %109 = zext i1 %108 to i32
  store i32 %109, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %305

110:                                              ; preds = %102
  %111 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %111, label %.loopexit80 [
    i32 0, label %112
    i32 -5, label %112
  ]

112:                                              ; preds = %110, %110
  %113 = load i32, ptr %27, align 8, !tbaa !24
  %114 = icmp eq i32 %113, 0
  %115 = load i32, ptr %28, align 8, !tbaa !34
  br i1 %114, label %116, label %273

116:                                              ; preds = %112
  %117 = icmp eq i32 %115, 0
  br i1 %117, label %219, label %118

118:                                              ; preds = %116
  %119 = load ptr, ptr %35, align 8, !tbaa !29
  %120 = load ptr, ptr %34, align 8, !tbaa !35
  %121 = icmp eq ptr %120, %119
  br i1 %121, label %219, label %122

122:                                              ; preds = %118
  %123 = ptrtoaddr ptr %120 to i64
  %124 = ptrtoaddr ptr %119 to i64
  %125 = zext i32 %115 to i64
  %126 = icmp ult i32 %115, 4
  %127 = sub i64 %124, %123
  %128 = icmp ult i64 %127, 32
  %129 = or i1 %126, %128
  br i1 %129, label %169, label %130

130:                                              ; preds = %122
  %131 = icmp ult i32 %115, 32
  br i1 %131, label %153, label %132

132:                                              ; preds = %130
  %133 = and i64 %125, 4294967264
  br label %134

134:                                              ; preds = %134, %132
  %135 = phi i64 [ 0, %132 ], [ %142, %134 ]
  %136 = getelementptr i8, ptr %119, i64 %135
  %137 = getelementptr i8, ptr %120, i64 %135
  %138 = getelementptr i8, ptr %137, i64 16
  %139 = load <16 x i8>, ptr %137, align 1, !tbaa !36
  %140 = load <16 x i8>, ptr %138, align 1, !tbaa !36
  %141 = getelementptr i8, ptr %136, i64 16
  store <16 x i8> %139, ptr %136, align 1, !tbaa !36
  store <16 x i8> %140, ptr %141, align 1, !tbaa !36
  %142 = add nuw nsw i64 %135, 32
  %143 = icmp eq i64 %142, %133
  br i1 %143, label %144, label %134, !llvm.loop !95

144:                                              ; preds = %134
  %145 = icmp eq i64 %133, %125
  br i1 %145, label %.loopexit73, label %146

146:                                              ; preds = %144
  %147 = trunc nuw i64 %133 to i32
  %148 = sub i32 %115, %147
  %149 = getelementptr i8, ptr %120, i64 %133
  %150 = getelementptr i8, ptr %119, i64 %133
  %151 = and i64 %125, 28
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %169, label %153, !prof !41

153:                                              ; preds = %146, %130
  %154 = phi i64 [ %133, %146 ], [ 0, %130 ]
  %155 = and i64 %125, 4294967292
  br label %156

156:                                              ; preds = %156, %153
  %157 = phi i64 [ %154, %153 ], [ %161, %156 ]
  %158 = getelementptr i8, ptr %119, i64 %157
  %159 = getelementptr i8, ptr %120, i64 %157
  %160 = load <4 x i8>, ptr %159, align 1, !tbaa !36
  store <4 x i8> %160, ptr %158, align 1, !tbaa !36
  %161 = add nuw i64 %157, 4
  %162 = icmp eq i64 %161, %155
  br i1 %162, label %163, label %156, !llvm.loop !96

163:                                              ; preds = %156
  %164 = getelementptr i8, ptr %119, i64 %155
  %165 = getelementptr i8, ptr %120, i64 %155
  %166 = trunc nuw i64 %155 to i32
  %167 = sub i32 %115, %166
  %168 = icmp eq i64 %155, %125
  br i1 %168, label %.loopexit73, label %169

169:                                              ; preds = %163, %146, %122
  %170 = phi ptr [ %119, %122 ], [ %150, %146 ], [ %164, %163 ]
  %171 = phi ptr [ %120, %122 ], [ %149, %146 ], [ %165, %163 ]
  %172 = phi i32 [ %115, %122 ], [ %148, %146 ], [ %167, %163 ]
  %173 = add i32 %172, -1
  %174 = and i32 %172, 7
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %.loopexit75, label %.preheader74

.preheader74:                                     ; preds = %169, %.preheader74
  %176 = phi ptr [ %180, %.preheader74 ], [ %170, %169 ]
  %177 = phi ptr [ %181, %.preheader74 ], [ %171, %169 ]
  %178 = phi i32 [ %182, %.preheader74 ], [ 0, %169 ]
  %179 = load i8, ptr %177, align 1, !tbaa !36
  store i8 %179, ptr %176, align 1, !tbaa !36
  %180 = getelementptr inbounds nuw i8, ptr %176, i64 1
  %181 = getelementptr inbounds nuw i8, ptr %177, i64 1
  %182 = add nuw nsw i32 %178, 1
  %183 = icmp eq i32 %182, %174
  br i1 %183, label %.loopexit75.loopexit, label %.preheader74, !llvm.loop !97

.loopexit75.loopexit:                             ; preds = %.preheader74
  %184 = and i32 %172, -8
  br label %.loopexit75

.loopexit75:                                      ; preds = %.loopexit75.loopexit, %169
  %185 = phi ptr [ %170, %169 ], [ %180, %.loopexit75.loopexit ]
  %186 = phi ptr [ %171, %169 ], [ %181, %.loopexit75.loopexit ]
  %187 = phi i32 [ %172, %169 ], [ %184, %.loopexit75.loopexit ]
  %188 = icmp ult i32 %173, 7
  br i1 %188, label %.loopexit73, label %.preheader72

.preheader72:                                     ; preds = %.loopexit75, %.preheader72
  %189 = phi ptr [ %215, %.preheader72 ], [ %185, %.loopexit75 ]
  %190 = phi ptr [ %216, %.preheader72 ], [ %186, %.loopexit75 ]
  %191 = phi i32 [ %214, %.preheader72 ], [ %187, %.loopexit75 ]
  %192 = load i8, ptr %190, align 1, !tbaa !36
  store i8 %192, ptr %189, align 1, !tbaa !36
  %193 = getelementptr inbounds nuw i8, ptr %189, i64 1
  %194 = getelementptr inbounds nuw i8, ptr %190, i64 1
  %195 = load i8, ptr %194, align 1, !tbaa !36
  store i8 %195, ptr %193, align 1, !tbaa !36
  %196 = getelementptr inbounds nuw i8, ptr %189, i64 2
  %197 = getelementptr inbounds nuw i8, ptr %190, i64 2
  %198 = load i8, ptr %197, align 1, !tbaa !36
  store i8 %198, ptr %196, align 1, !tbaa !36
  %199 = getelementptr inbounds nuw i8, ptr %189, i64 3
  %200 = getelementptr inbounds nuw i8, ptr %190, i64 3
  %201 = load i8, ptr %200, align 1, !tbaa !36
  store i8 %201, ptr %199, align 1, !tbaa !36
  %202 = getelementptr inbounds nuw i8, ptr %189, i64 4
  %203 = getelementptr inbounds nuw i8, ptr %190, i64 4
  %204 = load i8, ptr %203, align 1, !tbaa !36
  store i8 %204, ptr %202, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %189, i64 5
  %206 = getelementptr inbounds nuw i8, ptr %190, i64 5
  %207 = load i8, ptr %206, align 1, !tbaa !36
  store i8 %207, ptr %205, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %189, i64 6
  %209 = getelementptr inbounds nuw i8, ptr %190, i64 6
  %210 = load i8, ptr %209, align 1, !tbaa !36
  store i8 %210, ptr %208, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %189, i64 7
  %212 = getelementptr inbounds nuw i8, ptr %190, i64 7
  %213 = load i8, ptr %212, align 1, !tbaa !36
  store i8 %213, ptr %211, align 1, !tbaa !36
  %214 = add i32 %191, -8
  %215 = getelementptr inbounds nuw i8, ptr %189, i64 8
  %216 = getelementptr inbounds nuw i8, ptr %190, i64 8
  %217 = icmp eq i32 %214, 0
  br i1 %217, label %.loopexit73, label %.preheader72, !llvm.loop !98

.loopexit73:                                      ; preds = %.preheader72, %.loopexit75, %163, %144
  %218 = load i32, ptr %28, align 8, !tbaa !34
  br label %219

219:                                              ; preds = %.loopexit73, %118, %116
  %220 = phi i32 [ %218, %.loopexit73 ], [ %115, %118 ], [ 0, %116 ]
  %221 = load i32, ptr %30, align 8, !tbaa !27
  %222 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %221, i32 %220), !nosanitize !20
  %223 = extractvalue { i32, i1 } %222, 1, !nosanitize !20
  br i1 %223, label %224, label %225, !prof !21, !nosanitize !20

224:                                              ; preds = %219
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

225:                                              ; preds = %219
  %226 = extractvalue { i32, i1 } %222, 0, !nosanitize !20
  %227 = load ptr, ptr %35, align 8, !tbaa !29
  %228 = zext i32 %220 to i64
  %229 = getelementptr inbounds nuw i8, ptr %227, i64 %228
  store i32 0, ptr %36, align 4, !tbaa !17
  %230 = tail call ptr @__errno_location() #17
  store i32 0, ptr %230, align 4, !tbaa !4
  br label %231

231:                                              ; preds = %250, %225
  %232 = phi i32 [ 0, %225 ], [ %251, %250 ]
  %233 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %226, i32 %232), !nosanitize !20
  %234 = extractvalue { i32, i1 } %233, 1, !nosanitize !20
  br i1 %234, label %235, label %236, !prof !21, !nosanitize !20

235:                                              ; preds = %231
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

236:                                              ; preds = %231
  %237 = extractvalue { i32, i1 } %233, 0, !nosanitize !20
  %238 = tail call i32 @llvm.umin.i32(i32 %237, i32 1073741824)
  %239 = load i32, ptr %37, align 4, !tbaa !46
  %240 = zext i32 %232 to i64
  %241 = getelementptr inbounds nuw i8, ptr %229, i64 %240
  %242 = zext nneg i32 %238 to i64
  %243 = tail call i64 @read(i32 noundef %239, ptr noundef %241, i64 noundef %242) #13
  %244 = trunc i64 %243 to i32
  %245 = icmp slt i32 %244, 1
  br i1 %245, label %253, label %246

246:                                              ; preds = %236
  %247 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %232, i32 %244), !nosanitize !20
  %248 = extractvalue { i32, i1 } %247, 1, !nosanitize !20
  br i1 %248, label %249, label %250, !prof !21, !nosanitize !20

249:                                              ; preds = %246
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

250:                                              ; preds = %246
  %251 = extractvalue { i32, i1 } %247, 0, !nosanitize !20
  %252 = icmp ult i32 %251, %226
  br i1 %252, label %231, label %.loopexit71, !llvm.loop !47

253:                                              ; preds = %236
  %254 = icmp slt i32 %244, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %253
  %256 = load i32, ptr %230, align 4, !tbaa !4
  %257 = icmp eq i32 %256, 11
  br i1 %257, label %258, label %.loopexit81

258:                                              ; preds = %255
  store i32 1, ptr %36, align 4, !tbaa !17
  %259 = icmp eq i32 %232, 0
  br i1 %259, label %260, label %.loopexit71

260:                                              ; preds = %258
  %261 = load i32, ptr %230, align 4, !tbaa !4
  br label %.loopexit81

262:                                              ; preds = %253
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit71

.loopexit81:                                      ; preds = %255, %260
  %263 = phi i32 [ %261, %260 ], [ %256, %255 ]
  %264 = tail call ptr @strerror(i32 noundef %263) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %264) #13
  br label %.loopexit80

.loopexit71:                                      ; preds = %250, %262, %258
  %265 = phi i32 [ %232, %258 ], [ %232, %262 ], [ %251, %250 ]
  %266 = load i32, ptr %28, align 8, !tbaa !34
  %267 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %266, i32 %265), !nosanitize !20
  %268 = extractvalue { i32, i1 } %267, 1, !nosanitize !20
  br i1 %268, label %269, label %270, !prof !21, !nosanitize !20

269:                                              ; preds = %.loopexit71
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

270:                                              ; preds = %.loopexit71
  %271 = extractvalue { i32, i1 } %267, 0, !nosanitize !20
  store i32 %271, ptr %28, align 8, !tbaa !34
  %272 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %272, ptr %34, align 8, !tbaa !35
  br label %273

273:                                              ; preds = %270, %112
  %274 = phi i32 [ %271, %270 ], [ %115, %112 ]
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %305, label %276

276:                                              ; preds = %273
  %277 = load i32, ptr %36, align 4, !tbaa !17
  %278 = icmp ne i32 %277, 0
  %279 = icmp ult i32 %274, 4
  %280 = and i1 %279, %278
  br i1 %280, label %305, label %281

281:                                              ; preds = %276
  %282 = icmp ugt i32 %274, 3
  %283 = load ptr, ptr %34, align 8, !tbaa !35
  br i1 %282, label %284, label %301

284:                                              ; preds = %281
  %285 = load i8, ptr %283, align 1, !tbaa !36
  %286 = icmp eq i8 %285, 31
  br i1 %286, label %287, label %301

287:                                              ; preds = %284
  %288 = getelementptr inbounds nuw i8, ptr %283, i64 1
  %289 = load i8, ptr %288, align 1, !tbaa !36
  %290 = icmp eq i8 %289, -117
  br i1 %290, label %291, label %301

291:                                              ; preds = %287
  %292 = getelementptr inbounds nuw i8, ptr %283, i64 2
  %293 = load i8, ptr %292, align 1, !tbaa !36
  %294 = icmp eq i8 %293, 8
  br i1 %294, label %295, label %301

295:                                              ; preds = %291
  %296 = getelementptr inbounds nuw i8, ptr %283, i64 3
  %297 = load i8, ptr %296, align 1, !tbaa !36
  %298 = icmp ult i8 %297, 32
  br i1 %298, label %299, label %301

299:                                              ; preds = %295
  %300 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  store i32 1, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %448

301:                                              ; preds = %295, %291, %287, %284, %281
  %302 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %302, ptr %25, align 8, !tbaa !22
  %303 = zext i32 %274 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %302, ptr align 1 %283, i64 %303, i1 false)
  %304 = load i32, ptr %28, align 8, !tbaa !34
  store i32 %304, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !26
  br label %450

305:                                              ; preds = %276, %273, %105
  %306 = load i32, ptr %29, align 8, !tbaa !26
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %.loopexit82, label %448

308:                                              ; preds = %75
  %309 = load ptr, ptr %32, align 8, !tbaa !30
  %310 = load i32, ptr %30, align 8, !tbaa !27
  %311 = shl i32 %310, 1
  store i32 0, ptr %36, align 4, !tbaa !17
  %312 = tail call ptr @__errno_location() #17
  store i32 0, ptr %312, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %313

313:                                              ; preds = %333, %308
  %314 = phi i32 [ %334, %333 ], [ 0, %308 ]
  %315 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %311, i32 %314), !nosanitize !20
  %316 = extractvalue { i32, i1 } %315, 1, !nosanitize !20
  br i1 %316, label %317, label %318, !prof !21, !nosanitize !20

317:                                              ; preds = %313
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

318:                                              ; preds = %313
  %319 = extractvalue { i32, i1 } %315, 0, !nosanitize !20
  %320 = tail call i32 @llvm.umin.i32(i32 %319, i32 1073741824)
  %321 = load i32, ptr %37, align 4, !tbaa !46
  %322 = zext i32 %314 to i64
  %323 = getelementptr inbounds nuw i8, ptr %309, i64 %322
  %324 = zext nneg i32 %320 to i64
  %325 = tail call i64 @read(i32 noundef %321, ptr noundef %323, i64 noundef %324) #13
  %326 = trunc i64 %325 to i32
  %327 = icmp slt i32 %326, 1
  br i1 %327, label %336, label %328

328:                                              ; preds = %318
  %329 = load i32, ptr %0, align 4, !tbaa !4
  %330 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %329, i32 %326), !nosanitize !20
  %331 = extractvalue { i32, i1 } %330, 1, !nosanitize !20
  br i1 %331, label %332, label %333, !prof !21, !nosanitize !20

332:                                              ; preds = %328
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

333:                                              ; preds = %328
  %334 = extractvalue { i32, i1 } %330, 0, !nosanitize !20
  store i32 %334, ptr %0, align 4, !tbaa !4
  %335 = icmp ult i32 %334, %311
  br i1 %335, label %313, label %.loopexit79, !llvm.loop !47

336:                                              ; preds = %318
  %337 = icmp slt i32 %326, 0
  br i1 %337, label %338, label %346

338:                                              ; preds = %336
  %339 = load i32, ptr %312, align 4, !tbaa !4
  %340 = icmp eq i32 %339, 11
  br i1 %340, label %341, label %.loopexit84

341:                                              ; preds = %338
  store i32 1, ptr %36, align 4, !tbaa !17
  %342 = load i32, ptr %0, align 4, !tbaa !4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %.loopexit79

344:                                              ; preds = %341
  %345 = load i32, ptr %312, align 4, !tbaa !4
  br label %.loopexit84

346:                                              ; preds = %336
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit79

.loopexit84:                                      ; preds = %338, %344
  %347 = phi i32 [ %345, %344 ], [ %339, %338 ]
  %348 = tail call ptr @strerror(i32 noundef %347) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %348) #13
  br label %.loopexit80

.loopexit79:                                      ; preds = %333, %346, %341
  %349 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %349, ptr %25, align 8, !tbaa !22
  br label %.loopexit82

350:                                              ; preds = %75
  %351 = load i32, ptr %30, align 8, !tbaa !27
  %352 = shl i32 %351, 1
  store i32 %352, ptr %31, align 8, !tbaa !48
  %353 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %353, ptr %33, align 8, !tbaa !49
  br label %354

354:                                              ; preds = %431, %350
  %355 = phi i32 [ 0, %350 ], [ %416, %431 ]
  %356 = load i32, ptr %28, align 8, !tbaa !34
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %415

358:                                              ; preds = %354
  %359 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %359, label %.loopexit76 [
    i32 0, label %360
    i32 -5, label %360
  ]

360:                                              ; preds = %358, %358
  %361 = load i32, ptr %27, align 8, !tbaa !24
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %411

363:                                              ; preds = %360
  %364 = load i32, ptr %30, align 8, !tbaa !27
  %365 = load ptr, ptr %35, align 8, !tbaa !29
  store i32 0, ptr %36, align 4, !tbaa !17
  %366 = tail call ptr @__errno_location() #17
  store i32 0, ptr %366, align 4, !tbaa !4
  br label %367

367:                                              ; preds = %386, %363
  %368 = phi i32 [ 0, %363 ], [ %387, %386 ]
  %369 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %364, i32 %368), !nosanitize !20
  %370 = extractvalue { i32, i1 } %369, 1, !nosanitize !20
  br i1 %370, label %371, label %372, !prof !21, !nosanitize !20

371:                                              ; preds = %367
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

372:                                              ; preds = %367
  %373 = extractvalue { i32, i1 } %369, 0, !nosanitize !20
  %374 = tail call i32 @llvm.umin.i32(i32 %373, i32 1073741824)
  %375 = load i32, ptr %37, align 4, !tbaa !46
  %376 = zext i32 %368 to i64
  %377 = getelementptr inbounds nuw i8, ptr %365, i64 %376
  %378 = zext nneg i32 %374 to i64
  %379 = tail call i64 @read(i32 noundef %375, ptr noundef %377, i64 noundef %378) #13
  %380 = trunc i64 %379 to i32
  %381 = icmp slt i32 %380, 1
  br i1 %381, label %389, label %382

382:                                              ; preds = %372
  %383 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %368, i32 %380), !nosanitize !20
  %384 = extractvalue { i32, i1 } %383, 1, !nosanitize !20
  br i1 %384, label %385, label %386, !prof !21, !nosanitize !20

385:                                              ; preds = %382
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

386:                                              ; preds = %382
  %387 = extractvalue { i32, i1 } %383, 0, !nosanitize !20
  %388 = icmp ult i32 %387, %364
  br i1 %388, label %367, label %.loopexit70, !llvm.loop !47

389:                                              ; preds = %372
  %390 = icmp slt i32 %380, 0
  br i1 %390, label %391, label %398

391:                                              ; preds = %389
  %392 = load i32, ptr %366, align 4, !tbaa !4
  %393 = icmp eq i32 %392, 11
  br i1 %393, label %394, label %.loopexit78

394:                                              ; preds = %391
  store i32 1, ptr %36, align 4, !tbaa !17
  %395 = icmp eq i32 %368, 0
  br i1 %395, label %396, label %.loopexit70

396:                                              ; preds = %394
  %397 = load i32, ptr %366, align 4, !tbaa !4
  br label %.loopexit78

398:                                              ; preds = %389
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit70

.loopexit78:                                      ; preds = %391, %396
  %399 = phi i32 [ %397, %396 ], [ %392, %391 ]
  %400 = tail call ptr @strerror(i32 noundef %399) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %400) #13
  %401 = load i32, ptr %14, align 8, !tbaa !16
  br label %.loopexit76

.loopexit70:                                      ; preds = %386, %398, %394
  %402 = phi i32 [ %368, %394 ], [ %368, %398 ], [ %387, %386 ]
  %403 = load i32, ptr %28, align 8, !tbaa !34
  %404 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %403, i32 %402), !nosanitize !20
  %405 = extractvalue { i32, i1 } %404, 1, !nosanitize !20
  br i1 %405, label %406, label %407, !prof !21, !nosanitize !20

406:                                              ; preds = %.loopexit70
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

407:                                              ; preds = %.loopexit70
  %408 = extractvalue { i32, i1 } %404, 0, !nosanitize !20
  store i32 %408, ptr %28, align 8, !tbaa !34
  %409 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %409, ptr %34, align 8, !tbaa !35
  %410 = icmp eq i32 %408, 0
  br i1 %410, label %411, label %415

411:                                              ; preds = %407, %360
  %412 = load i32, ptr %36, align 4, !tbaa !17
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %.loopexit76

414:                                              ; preds = %411
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit76

415:                                              ; preds = %407, %354
  %416 = tail call i32 @inflate(ptr noundef nonnull %34, i32 noundef 0) #13
  %417 = load i32, ptr %31, align 8, !tbaa !48
  %418 = icmp ult i32 %417, %352
  br i1 %418, label %419, label %420

419:                                              ; preds = %415
  store i32 0, ptr %38, align 4, !tbaa !33
  br label %420

420:                                              ; preds = %419, %415
  switch i32 %416, label %431 [
    i32 -2, label %421
    i32 2, label %421
    i32 -4, label %422
    i32 -3, label %423
  ]

421:                                              ; preds = %420, %420
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit76

422:                                              ; preds = %420
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit76

423:                                              ; preds = %420
  %424 = load i32, ptr %38, align 4, !tbaa !33
  %425 = icmp eq i32 %424, 1
  br i1 %425, label %426, label %427

426:                                              ; preds = %423
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %27, align 8, !tbaa !24
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %.loopexit76

427:                                              ; preds = %423
  %428 = load ptr, ptr %39, align 8, !tbaa !50
  %429 = icmp eq ptr %428, null
  %430 = select i1 %429, ptr @.str.6, ptr %428
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %430) #13
  br label %.loopexit76

431:                                              ; preds = %420
  %432 = icmp ne i32 %417, 0
  %433 = icmp ne i32 %416, 1
  %434 = select i1 %432, i1 %433, i1 false
  br i1 %434, label %354, label %.loopexit76, !llvm.loop !51

.loopexit76:                                      ; preds = %431, %358, %427, %426, %422, %421, %414, %411, %.loopexit78
  %435 = phi i32 [ %401, %.loopexit78 ], [ %355, %411 ], [ %355, %414 ], [ %416, %421 ], [ -4, %422 ], [ 0, %426 ], [ -3, %427 ], [ %416, %431 ], [ %359, %358 ]
  %436 = load i32, ptr %31, align 8, !tbaa !48
  %437 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %352, i32 %436), !nosanitize !20
  %438 = extractvalue { i32, i1 } %437, 1, !nosanitize !20
  br i1 %438, label %439, label %440, !prof !21, !nosanitize !20

439:                                              ; preds = %.loopexit76
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

440:                                              ; preds = %.loopexit76
  %441 = extractvalue { i32, i1 } %437, 0, !nosanitize !20
  store i32 %441, ptr %0, align 8, !tbaa !19
  %442 = load ptr, ptr %33, align 8, !tbaa !49
  %443 = zext i32 %441 to i64
  %444 = sub nsw i64 0, %443
  %445 = getelementptr inbounds i8, ptr %442, i64 %444
  store ptr %445, ptr %25, align 8, !tbaa !22
  switch i32 %435, label %.loopexit80 [
    i32 1, label %446
    i32 0, label %448
  ]

446:                                              ; preds = %440
  store i32 0, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %448

447:                                              ; preds = %75
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit80

448:                                              ; preds = %446, %440, %305, %299
  %449 = load i32, ptr %0, align 8, !tbaa !19
  br label %450

450:                                              ; preds = %448, %301
  %451 = phi i32 [ %449, %448 ], [ %304, %301 ]
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %.loopexit82

453:                                              ; preds = %450
  %454 = load i32, ptr %27, align 8, !tbaa !24
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %.backedge, label %456

456:                                              ; preds = %453
  %457 = load i32, ptr %28, align 8, !tbaa !34
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %.loopexit82, label %.backedge

.backedge:                                        ; preds = %456, %453
  br label %75, !llvm.loop !52

.loopexit82:                                      ; preds = %456, %450, %305, %.loopexit79
  %459 = load i64, ptr %21, align 8, !tbaa !18
  br label %460

460:                                              ; preds = %.loopexit82, %67
  %461 = phi i64 [ %459, %.loopexit82 ], [ %68, %67 ]
  %462 = icmp eq i64 %461, 0
  br i1 %462, label %.loopexit83, label %43, !llvm.loop !53

.loopexit83:                                      ; preds = %460, %72, %20
  %463 = add nsw i32 %2, -1
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %.loopexit80, label %465

465:                                              ; preds = %.loopexit83
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %484 = load i32, ptr %0, align 8, !tbaa !19
  br label %485

485:                                              ; preds = %914, %465
  %486 = phi i32 [ %903, %914 ], [ %484, %465 ]
  %487 = phi i32 [ %915, %914 ], [ %463, %465 ]
  %488 = phi ptr [ %916, %914 ], [ %1, %465 ]
  %489 = icmp eq i32 %486, 0
  br i1 %489, label %.preheader64, label %877

.preheader64:                                     ; preds = %485, %.preheader64.backedge
  %490 = load i32, ptr %466, align 8, !tbaa !26
  switch i32 %490, label %861 [
    i32 0, label %491
    i32 1, label %722
    i32 2, label %764
  ]

491:                                              ; preds = %.preheader64
  %492 = load i32, ptr %467, align 8, !tbaa !27
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %494, label %513

494:                                              ; preds = %491
  %495 = load i32, ptr %480, align 4, !tbaa !28
  %496 = zext i32 %495 to i64
  %497 = tail call noalias ptr @malloc(i64 noundef %496) #16
  store ptr %497, ptr %474, align 8, !tbaa !29
  %498 = load i32, ptr %480, align 4, !tbaa !28
  %499 = shl i32 %498, 1
  %500 = zext i32 %499 to i64
  %501 = tail call noalias ptr @malloc(i64 noundef %500) #16
  store ptr %501, ptr %469, align 8, !tbaa !30
  %502 = icmp eq ptr %497, null
  %503 = icmp eq ptr %501, null
  %504 = or i1 %502, %503
  br i1 %504, label %505, label %506

505:                                              ; preds = %494
  tail call void @free(ptr noundef %501) #13
  tail call void @free(ptr noundef %497) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit65

506:                                              ; preds = %494
  %507 = load i32, ptr %480, align 4, !tbaa !28
  store i32 %507, ptr %467, align 8, !tbaa !27
  store i32 0, ptr %472, align 8, !tbaa !25
  store ptr null, ptr %471, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %481, i8 0, i64 24, i1 false)
  %508 = tail call i32 @inflateInit2_(ptr noundef nonnull %471, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %513, label %510

510:                                              ; preds = %506
  %511 = load ptr, ptr %469, align 8, !tbaa !30
  tail call void @free(ptr noundef %511) #13
  %512 = load ptr, ptr %474, align 8, !tbaa !29
  tail call void @free(ptr noundef %512) #13
  store i32 0, ptr %467, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit65

513:                                              ; preds = %506, %491
  %514 = load i32, ptr %482, align 8, !tbaa !32
  %515 = icmp eq i32 %514, -1
  br i1 %515, label %519, label %516

516:                                              ; preds = %513
  %517 = load i32, ptr %477, align 4, !tbaa !33
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %524

519:                                              ; preds = %516, %513
  %520 = tail call i32 @inflateReset(ptr noundef nonnull %471) #13
  store i32 2, ptr %466, align 8, !tbaa !26
  %521 = load i32, ptr %477, align 4, !tbaa !33
  %522 = icmp ne i32 %521, -1
  %523 = zext i1 %522 to i32
  store i32 %523, ptr %477, align 4, !tbaa !33
  store i32 0, ptr %482, align 8, !tbaa !32
  br label %719

524:                                              ; preds = %516
  %525 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %525, label %.loopexit65 [
    i32 0, label %526
    i32 -5, label %526
  ]

526:                                              ; preds = %524, %524
  %527 = load i32, ptr %473, align 8, !tbaa !24
  %528 = icmp eq i32 %527, 0
  %529 = load i32, ptr %472, align 8, !tbaa !34
  br i1 %528, label %530, label %687

530:                                              ; preds = %526
  %531 = icmp eq i32 %529, 0
  br i1 %531, label %633, label %532

532:                                              ; preds = %530
  %533 = load ptr, ptr %474, align 8, !tbaa !29
  %534 = load ptr, ptr %471, align 8, !tbaa !35
  %535 = icmp eq ptr %534, %533
  br i1 %535, label %633, label %536

536:                                              ; preds = %532
  %537 = ptrtoaddr ptr %534 to i64
  %538 = ptrtoaddr ptr %533 to i64
  %539 = zext i32 %529 to i64
  %540 = icmp ult i32 %529, 4
  %541 = sub i64 %538, %537
  %542 = icmp ult i64 %541, 32
  %543 = or i1 %540, %542
  br i1 %543, label %583, label %544

544:                                              ; preds = %536
  %545 = icmp ult i32 %529, 32
  br i1 %545, label %567, label %546

546:                                              ; preds = %544
  %547 = and i64 %539, 4294967264
  br label %548

548:                                              ; preds = %548, %546
  %549 = phi i64 [ 0, %546 ], [ %556, %548 ]
  %550 = getelementptr i8, ptr %533, i64 %549
  %551 = getelementptr i8, ptr %534, i64 %549
  %552 = getelementptr i8, ptr %551, i64 16
  %553 = load <16 x i8>, ptr %551, align 1, !tbaa !36
  %554 = load <16 x i8>, ptr %552, align 1, !tbaa !36
  %555 = getelementptr i8, ptr %550, i64 16
  store <16 x i8> %553, ptr %550, align 1, !tbaa !36
  store <16 x i8> %554, ptr %555, align 1, !tbaa !36
  %556 = add nuw nsw i64 %549, 32
  %557 = icmp eq i64 %556, %547
  br i1 %557, label %558, label %548, !llvm.loop !99

558:                                              ; preds = %548
  %559 = icmp eq i64 %547, %539
  br i1 %559, label %.loopexit58, label %560

560:                                              ; preds = %558
  %561 = trunc nuw i64 %547 to i32
  %562 = sub i32 %529, %561
  %563 = getelementptr i8, ptr %534, i64 %547
  %564 = getelementptr i8, ptr %533, i64 %547
  %565 = and i64 %539, 28
  %566 = icmp eq i64 %565, 0
  br i1 %566, label %583, label %567, !prof !41

567:                                              ; preds = %560, %544
  %568 = phi i64 [ %547, %560 ], [ 0, %544 ]
  %569 = and i64 %539, 4294967292
  br label %570

570:                                              ; preds = %570, %567
  %571 = phi i64 [ %568, %567 ], [ %575, %570 ]
  %572 = getelementptr i8, ptr %533, i64 %571
  %573 = getelementptr i8, ptr %534, i64 %571
  %574 = load <4 x i8>, ptr %573, align 1, !tbaa !36
  store <4 x i8> %574, ptr %572, align 1, !tbaa !36
  %575 = add nuw i64 %571, 4
  %576 = icmp eq i64 %575, %569
  br i1 %576, label %577, label %570, !llvm.loop !100

577:                                              ; preds = %570
  %578 = getelementptr i8, ptr %533, i64 %569
  %579 = getelementptr i8, ptr %534, i64 %569
  %580 = trunc nuw i64 %569 to i32
  %581 = sub i32 %529, %580
  %582 = icmp eq i64 %569, %539
  br i1 %582, label %.loopexit58, label %583

583:                                              ; preds = %577, %560, %536
  %584 = phi ptr [ %533, %536 ], [ %564, %560 ], [ %578, %577 ]
  %585 = phi ptr [ %534, %536 ], [ %563, %560 ], [ %579, %577 ]
  %586 = phi i32 [ %529, %536 ], [ %562, %560 ], [ %581, %577 ]
  %587 = add i32 %586, -1
  %588 = and i32 %586, 7
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %.loopexit60, label %.preheader59

.preheader59:                                     ; preds = %583, %.preheader59
  %590 = phi ptr [ %594, %.preheader59 ], [ %584, %583 ]
  %591 = phi ptr [ %595, %.preheader59 ], [ %585, %583 ]
  %592 = phi i32 [ %596, %.preheader59 ], [ 0, %583 ]
  %593 = load i8, ptr %591, align 1, !tbaa !36
  store i8 %593, ptr %590, align 1, !tbaa !36
  %594 = getelementptr inbounds nuw i8, ptr %590, i64 1
  %595 = getelementptr inbounds nuw i8, ptr %591, i64 1
  %596 = add nuw nsw i32 %592, 1
  %597 = icmp eq i32 %596, %588
  br i1 %597, label %.loopexit60.loopexit, label %.preheader59, !llvm.loop !101

.loopexit60.loopexit:                             ; preds = %.preheader59
  %598 = and i32 %586, -8
  br label %.loopexit60

.loopexit60:                                      ; preds = %.loopexit60.loopexit, %583
  %599 = phi ptr [ %584, %583 ], [ %594, %.loopexit60.loopexit ]
  %600 = phi ptr [ %585, %583 ], [ %595, %.loopexit60.loopexit ]
  %601 = phi i32 [ %586, %583 ], [ %598, %.loopexit60.loopexit ]
  %602 = icmp ult i32 %587, 7
  br i1 %602, label %.loopexit58, label %.preheader

.preheader:                                       ; preds = %.loopexit60, %.preheader
  %603 = phi ptr [ %629, %.preheader ], [ %599, %.loopexit60 ]
  %604 = phi ptr [ %630, %.preheader ], [ %600, %.loopexit60 ]
  %605 = phi i32 [ %628, %.preheader ], [ %601, %.loopexit60 ]
  %606 = load i8, ptr %604, align 1, !tbaa !36
  store i8 %606, ptr %603, align 1, !tbaa !36
  %607 = getelementptr inbounds nuw i8, ptr %603, i64 1
  %608 = getelementptr inbounds nuw i8, ptr %604, i64 1
  %609 = load i8, ptr %608, align 1, !tbaa !36
  store i8 %609, ptr %607, align 1, !tbaa !36
  %610 = getelementptr inbounds nuw i8, ptr %603, i64 2
  %611 = getelementptr inbounds nuw i8, ptr %604, i64 2
  %612 = load i8, ptr %611, align 1, !tbaa !36
  store i8 %612, ptr %610, align 1, !tbaa !36
  %613 = getelementptr inbounds nuw i8, ptr %603, i64 3
  %614 = getelementptr inbounds nuw i8, ptr %604, i64 3
  %615 = load i8, ptr %614, align 1, !tbaa !36
  store i8 %615, ptr %613, align 1, !tbaa !36
  %616 = getelementptr inbounds nuw i8, ptr %603, i64 4
  %617 = getelementptr inbounds nuw i8, ptr %604, i64 4
  %618 = load i8, ptr %617, align 1, !tbaa !36
  store i8 %618, ptr %616, align 1, !tbaa !36
  %619 = getelementptr inbounds nuw i8, ptr %603, i64 5
  %620 = getelementptr inbounds nuw i8, ptr %604, i64 5
  %621 = load i8, ptr %620, align 1, !tbaa !36
  store i8 %621, ptr %619, align 1, !tbaa !36
  %622 = getelementptr inbounds nuw i8, ptr %603, i64 6
  %623 = getelementptr inbounds nuw i8, ptr %604, i64 6
  %624 = load i8, ptr %623, align 1, !tbaa !36
  store i8 %624, ptr %622, align 1, !tbaa !36
  %625 = getelementptr inbounds nuw i8, ptr %603, i64 7
  %626 = getelementptr inbounds nuw i8, ptr %604, i64 7
  %627 = load i8, ptr %626, align 1, !tbaa !36
  store i8 %627, ptr %625, align 1, !tbaa !36
  %628 = add i32 %605, -8
  %629 = getelementptr inbounds nuw i8, ptr %603, i64 8
  %630 = getelementptr inbounds nuw i8, ptr %604, i64 8
  %631 = icmp eq i32 %628, 0
  br i1 %631, label %.loopexit58, label %.preheader, !llvm.loop !102

.loopexit58:                                      ; preds = %.preheader, %.loopexit60, %577, %558
  %632 = load i32, ptr %472, align 8, !tbaa !34
  br label %633

633:                                              ; preds = %.loopexit58, %532, %530
  %634 = phi i32 [ %632, %.loopexit58 ], [ %529, %532 ], [ 0, %530 ]
  %635 = load i32, ptr %467, align 8, !tbaa !27
  %636 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %635, i32 %634), !nosanitize !20
  %637 = extractvalue { i32, i1 } %636, 1, !nosanitize !20
  br i1 %637, label %638, label %639, !prof !21, !nosanitize !20

638:                                              ; preds = %633
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

639:                                              ; preds = %633
  %640 = extractvalue { i32, i1 } %636, 0, !nosanitize !20
  %641 = load ptr, ptr %474, align 8, !tbaa !29
  %642 = zext i32 %634 to i64
  %643 = getelementptr inbounds nuw i8, ptr %641, i64 %642
  store i32 0, ptr %475, align 4, !tbaa !17
  %644 = tail call ptr @__errno_location() #17
  store i32 0, ptr %644, align 4, !tbaa !4
  br label %645

645:                                              ; preds = %664, %639
  %646 = phi i32 [ 0, %639 ], [ %665, %664 ]
  %647 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %640, i32 %646), !nosanitize !20
  %648 = extractvalue { i32, i1 } %647, 1, !nosanitize !20
  br i1 %648, label %649, label %650, !prof !21, !nosanitize !20

649:                                              ; preds = %645
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

650:                                              ; preds = %645
  %651 = extractvalue { i32, i1 } %647, 0, !nosanitize !20
  %652 = tail call i32 @llvm.umin.i32(i32 %651, i32 1073741824)
  %653 = load i32, ptr %476, align 4, !tbaa !46
  %654 = zext i32 %646 to i64
  %655 = getelementptr inbounds nuw i8, ptr %643, i64 %654
  %656 = zext nneg i32 %652 to i64
  %657 = tail call i64 @read(i32 noundef %653, ptr noundef %655, i64 noundef %656) #13
  %658 = trunc i64 %657 to i32
  %659 = icmp slt i32 %658, 1
  br i1 %659, label %667, label %660

660:                                              ; preds = %650
  %661 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %646, i32 %658), !nosanitize !20
  %662 = extractvalue { i32, i1 } %661, 1, !nosanitize !20
  br i1 %662, label %663, label %664, !prof !21, !nosanitize !20

663:                                              ; preds = %660
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

664:                                              ; preds = %660
  %665 = extractvalue { i32, i1 } %661, 0, !nosanitize !20
  %666 = icmp ult i32 %665, %640
  br i1 %666, label %645, label %.loopexit57, !llvm.loop !47

667:                                              ; preds = %650
  %668 = icmp slt i32 %658, 0
  br i1 %668, label %669, label %676

669:                                              ; preds = %667
  %670 = load i32, ptr %644, align 4, !tbaa !4
  %671 = icmp eq i32 %670, 11
  br i1 %671, label %672, label %.loopexit66

672:                                              ; preds = %669
  store i32 1, ptr %475, align 4, !tbaa !17
  %673 = icmp eq i32 %646, 0
  br i1 %673, label %674, label %.loopexit57

674:                                              ; preds = %672
  %675 = load i32, ptr %644, align 4, !tbaa !4
  br label %.loopexit66

676:                                              ; preds = %667
  store i32 1, ptr %473, align 8, !tbaa !24
  br label %.loopexit57

.loopexit66:                                      ; preds = %669, %674
  %677 = phi i32 [ %675, %674 ], [ %670, %669 ]
  %678 = tail call ptr @strerror(i32 noundef %677) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %678) #13
  br label %.loopexit65

.loopexit57:                                      ; preds = %664, %676, %672
  %679 = phi i32 [ %646, %672 ], [ %646, %676 ], [ %665, %664 ]
  %680 = load i32, ptr %472, align 8, !tbaa !34
  %681 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %680, i32 %679), !nosanitize !20
  %682 = extractvalue { i32, i1 } %681, 1, !nosanitize !20
  br i1 %682, label %683, label %684, !prof !21, !nosanitize !20

683:                                              ; preds = %.loopexit57
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

684:                                              ; preds = %.loopexit57
  %685 = extractvalue { i32, i1 } %681, 0, !nosanitize !20
  store i32 %685, ptr %472, align 8, !tbaa !34
  %686 = load ptr, ptr %474, align 8, !tbaa !29
  store ptr %686, ptr %471, align 8, !tbaa !35
  br label %687

687:                                              ; preds = %684, %526
  %688 = phi i32 [ %685, %684 ], [ %529, %526 ]
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %719, label %690

690:                                              ; preds = %687
  %691 = load i32, ptr %475, align 4, !tbaa !17
  %692 = icmp ne i32 %691, 0
  %693 = icmp ult i32 %688, 4
  %694 = and i1 %693, %692
  br i1 %694, label %719, label %695

695:                                              ; preds = %690
  %696 = icmp ugt i32 %688, 3
  %697 = load ptr, ptr %471, align 8, !tbaa !35
  br i1 %696, label %698, label %715

698:                                              ; preds = %695
  %699 = load i8, ptr %697, align 1, !tbaa !36
  %700 = icmp eq i8 %699, 31
  br i1 %700, label %701, label %715

701:                                              ; preds = %698
  %702 = getelementptr inbounds nuw i8, ptr %697, i64 1
  %703 = load i8, ptr %702, align 1, !tbaa !36
  %704 = icmp eq i8 %703, -117
  br i1 %704, label %705, label %715

705:                                              ; preds = %701
  %706 = getelementptr inbounds nuw i8, ptr %697, i64 2
  %707 = load i8, ptr %706, align 1, !tbaa !36
  %708 = icmp eq i8 %707, 8
  br i1 %708, label %709, label %715

709:                                              ; preds = %705
  %710 = getelementptr inbounds nuw i8, ptr %697, i64 3
  %711 = load i8, ptr %710, align 1, !tbaa !36
  %712 = icmp ult i8 %711, 32
  br i1 %712, label %713, label %715

713:                                              ; preds = %709
  %714 = tail call i32 @inflateReset(ptr noundef nonnull %471) #13
  store i32 2, ptr %466, align 8, !tbaa !26
  store i32 1, ptr %477, align 4, !tbaa !33
  store i32 0, ptr %482, align 8, !tbaa !32
  br label %862

715:                                              ; preds = %709, %705, %701, %698, %695
  %716 = load ptr, ptr %469, align 8, !tbaa !30
  store ptr %716, ptr %479, align 8, !tbaa !22
  %717 = zext i32 %688 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %716, ptr align 1 %697, i64 %717, i1 false)
  %718 = load i32, ptr %472, align 8, !tbaa !34
  store i32 %718, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %472, align 8, !tbaa !34
  store i32 1, ptr %466, align 8, !tbaa !26
  br label %864

719:                                              ; preds = %690, %687, %519
  %720 = load i32, ptr %466, align 8, !tbaa !26
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %.loopexit67, label %862

722:                                              ; preds = %.preheader64
  %723 = load ptr, ptr %469, align 8, !tbaa !30
  %724 = load i32, ptr %467, align 8, !tbaa !27
  %725 = shl i32 %724, 1
  store i32 0, ptr %475, align 4, !tbaa !17
  %726 = tail call ptr @__errno_location() #17
  store i32 0, ptr %726, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %727

727:                                              ; preds = %747, %722
  %728 = phi i32 [ %748, %747 ], [ 0, %722 ]
  %729 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %725, i32 %728), !nosanitize !20
  %730 = extractvalue { i32, i1 } %729, 1, !nosanitize !20
  br i1 %730, label %731, label %732, !prof !21, !nosanitize !20

731:                                              ; preds = %727
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

732:                                              ; preds = %727
  %733 = extractvalue { i32, i1 } %729, 0, !nosanitize !20
  %734 = tail call i32 @llvm.umin.i32(i32 %733, i32 1073741824)
  %735 = load i32, ptr %476, align 4, !tbaa !46
  %736 = zext i32 %728 to i64
  %737 = getelementptr inbounds nuw i8, ptr %723, i64 %736
  %738 = zext nneg i32 %734 to i64
  %739 = tail call i64 @read(i32 noundef %735, ptr noundef %737, i64 noundef %738) #13
  %740 = trunc i64 %739 to i32
  %741 = icmp slt i32 %740, 1
  br i1 %741, label %750, label %742

742:                                              ; preds = %732
  %743 = load i32, ptr %0, align 4, !tbaa !4
  %744 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %743, i32 %740), !nosanitize !20
  %745 = extractvalue { i32, i1 } %744, 1, !nosanitize !20
  br i1 %745, label %746, label %747, !prof !21, !nosanitize !20

746:                                              ; preds = %742
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

747:                                              ; preds = %742
  %748 = extractvalue { i32, i1 } %744, 0, !nosanitize !20
  store i32 %748, ptr %0, align 4, !tbaa !4
  %749 = icmp ult i32 %748, %725
  br i1 %749, label %727, label %.loopexit63, !llvm.loop !47

750:                                              ; preds = %732
  %751 = icmp slt i32 %740, 0
  br i1 %751, label %752, label %760

752:                                              ; preds = %750
  %753 = load i32, ptr %726, align 4, !tbaa !4
  %754 = icmp eq i32 %753, 11
  br i1 %754, label %755, label %.loopexit68

755:                                              ; preds = %752
  store i32 1, ptr %475, align 4, !tbaa !17
  %756 = load i32, ptr %0, align 4, !tbaa !4
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %.loopexit63

758:                                              ; preds = %755
  %759 = load i32, ptr %726, align 4, !tbaa !4
  br label %.loopexit68

760:                                              ; preds = %750
  store i32 1, ptr %473, align 8, !tbaa !24
  br label %.loopexit63

.loopexit68:                                      ; preds = %752, %758
  %761 = phi i32 [ %759, %758 ], [ %753, %752 ]
  %762 = tail call ptr @strerror(i32 noundef %761) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %762) #13
  br label %.loopexit65

.loopexit63:                                      ; preds = %747, %760, %755
  %763 = load ptr, ptr %469, align 8, !tbaa !30
  store ptr %763, ptr %479, align 8, !tbaa !22
  br label %.loopexit67

764:                                              ; preds = %.preheader64
  %765 = load i32, ptr %467, align 8, !tbaa !27
  %766 = shl i32 %765, 1
  store i32 %766, ptr %468, align 8, !tbaa !48
  %767 = load ptr, ptr %469, align 8, !tbaa !30
  store ptr %767, ptr %470, align 8, !tbaa !49
  br label %768

768:                                              ; preds = %845, %764
  %769 = phi i32 [ 0, %764 ], [ %830, %845 ]
  %770 = load i32, ptr %472, align 8, !tbaa !34
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %772, label %829

772:                                              ; preds = %768
  %773 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %773, label %.loopexit61 [
    i32 0, label %774
    i32 -5, label %774
  ]

774:                                              ; preds = %772, %772
  %775 = load i32, ptr %473, align 8, !tbaa !24
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %777, label %825

777:                                              ; preds = %774
  %778 = load i32, ptr %467, align 8, !tbaa !27
  %779 = load ptr, ptr %474, align 8, !tbaa !29
  store i32 0, ptr %475, align 4, !tbaa !17
  %780 = tail call ptr @__errno_location() #17
  store i32 0, ptr %780, align 4, !tbaa !4
  br label %781

781:                                              ; preds = %800, %777
  %782 = phi i32 [ 0, %777 ], [ %801, %800 ]
  %783 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %778, i32 %782), !nosanitize !20
  %784 = extractvalue { i32, i1 } %783, 1, !nosanitize !20
  br i1 %784, label %785, label %786, !prof !21, !nosanitize !20

785:                                              ; preds = %781
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

786:                                              ; preds = %781
  %787 = extractvalue { i32, i1 } %783, 0, !nosanitize !20
  %788 = tail call i32 @llvm.umin.i32(i32 %787, i32 1073741824)
  %789 = load i32, ptr %476, align 4, !tbaa !46
  %790 = zext i32 %782 to i64
  %791 = getelementptr inbounds nuw i8, ptr %779, i64 %790
  %792 = zext nneg i32 %788 to i64
  %793 = tail call i64 @read(i32 noundef %789, ptr noundef %791, i64 noundef %792) #13
  %794 = trunc i64 %793 to i32
  %795 = icmp slt i32 %794, 1
  br i1 %795, label %803, label %796

796:                                              ; preds = %786
  %797 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %782, i32 %794), !nosanitize !20
  %798 = extractvalue { i32, i1 } %797, 1, !nosanitize !20
  br i1 %798, label %799, label %800, !prof !21, !nosanitize !20

799:                                              ; preds = %796
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

800:                                              ; preds = %796
  %801 = extractvalue { i32, i1 } %797, 0, !nosanitize !20
  %802 = icmp ult i32 %801, %778
  br i1 %802, label %781, label %.loopexit, !llvm.loop !47

803:                                              ; preds = %786
  %804 = icmp slt i32 %794, 0
  br i1 %804, label %805, label %812

805:                                              ; preds = %803
  %806 = load i32, ptr %780, align 4, !tbaa !4
  %807 = icmp eq i32 %806, 11
  br i1 %807, label %808, label %.loopexit62

808:                                              ; preds = %805
  store i32 1, ptr %475, align 4, !tbaa !17
  %809 = icmp eq i32 %782, 0
  br i1 %809, label %810, label %.loopexit

810:                                              ; preds = %808
  %811 = load i32, ptr %780, align 4, !tbaa !4
  br label %.loopexit62

812:                                              ; preds = %803
  store i32 1, ptr %473, align 8, !tbaa !24
  br label %.loopexit

.loopexit62:                                      ; preds = %805, %810
  %813 = phi i32 [ %811, %810 ], [ %806, %805 ]
  %814 = tail call ptr @strerror(i32 noundef %813) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %814) #13
  %815 = load i32, ptr %14, align 8, !tbaa !16
  br label %.loopexit61

.loopexit:                                        ; preds = %800, %812, %808
  %816 = phi i32 [ %782, %808 ], [ %782, %812 ], [ %801, %800 ]
  %817 = load i32, ptr %472, align 8, !tbaa !34
  %818 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %817, i32 %816), !nosanitize !20
  %819 = extractvalue { i32, i1 } %818, 1, !nosanitize !20
  br i1 %819, label %820, label %821, !prof !21, !nosanitize !20

820:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

821:                                              ; preds = %.loopexit
  %822 = extractvalue { i32, i1 } %818, 0, !nosanitize !20
  store i32 %822, ptr %472, align 8, !tbaa !34
  %823 = load ptr, ptr %474, align 8, !tbaa !29
  store ptr %823, ptr %471, align 8, !tbaa !35
  %824 = icmp eq i32 %822, 0
  br i1 %824, label %825, label %829

825:                                              ; preds = %821, %774
  %826 = load i32, ptr %475, align 4, !tbaa !17
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %828, label %.loopexit61

828:                                              ; preds = %825
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit61

829:                                              ; preds = %821, %768
  %830 = tail call i32 @inflate(ptr noundef nonnull %471, i32 noundef 0) #13
  %831 = load i32, ptr %468, align 8, !tbaa !48
  %832 = icmp ult i32 %831, %766
  br i1 %832, label %833, label %834

833:                                              ; preds = %829
  store i32 0, ptr %477, align 4, !tbaa !33
  br label %834

834:                                              ; preds = %833, %829
  switch i32 %830, label %845 [
    i32 -2, label %835
    i32 2, label %835
    i32 -4, label %836
    i32 -3, label %837
  ]

835:                                              ; preds = %834, %834
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit61

836:                                              ; preds = %834
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit61

837:                                              ; preds = %834
  %838 = load i32, ptr %477, align 4, !tbaa !33
  %839 = icmp eq i32 %838, 1
  br i1 %839, label %840, label %841

840:                                              ; preds = %837
  store i32 0, ptr %472, align 8, !tbaa !34
  store i32 1, ptr %473, align 8, !tbaa !24
  store i32 0, ptr %466, align 8, !tbaa !26
  br label %.loopexit61

841:                                              ; preds = %837
  %842 = load ptr, ptr %478, align 8, !tbaa !50
  %843 = icmp eq ptr %842, null
  %844 = select i1 %843, ptr @.str.6, ptr %842
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %844) #13
  br label %.loopexit61

845:                                              ; preds = %834
  %846 = icmp ne i32 %831, 0
  %847 = icmp ne i32 %830, 1
  %848 = select i1 %846, i1 %847, i1 false
  br i1 %848, label %768, label %.loopexit61, !llvm.loop !51

.loopexit61:                                      ; preds = %845, %772, %841, %840, %836, %835, %828, %825, %.loopexit62
  %849 = phi i32 [ %815, %.loopexit62 ], [ %769, %825 ], [ %769, %828 ], [ %830, %835 ], [ -4, %836 ], [ 0, %840 ], [ -3, %841 ], [ %773, %772 ], [ %830, %845 ]
  %850 = load i32, ptr %468, align 8, !tbaa !48
  %851 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %766, i32 %850), !nosanitize !20
  %852 = extractvalue { i32, i1 } %851, 1, !nosanitize !20
  br i1 %852, label %853, label %854, !prof !21, !nosanitize !20

853:                                              ; preds = %.loopexit61
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

854:                                              ; preds = %.loopexit61
  %855 = extractvalue { i32, i1 } %851, 0, !nosanitize !20
  store i32 %855, ptr %0, align 8, !tbaa !19
  %856 = load ptr, ptr %470, align 8, !tbaa !49
  %857 = zext i32 %855 to i64
  %858 = sub nsw i64 0, %857
  %859 = getelementptr inbounds i8, ptr %856, i64 %858
  store ptr %859, ptr %479, align 8, !tbaa !22
  switch i32 %849, label %.loopexit65 [
    i32 1, label %860
    i32 0, label %862
  ]

860:                                              ; preds = %854
  store i32 0, ptr %477, align 4, !tbaa !33
  store i32 0, ptr %466, align 8, !tbaa !26
  br label %862

861:                                              ; preds = %.preheader64
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit65

862:                                              ; preds = %860, %854, %719, %713
  %863 = load i32, ptr %0, align 8, !tbaa !19
  br label %864

864:                                              ; preds = %862, %715
  %865 = phi i32 [ %863, %862 ], [ %718, %715 ]
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %867, label %.loopexit67

867:                                              ; preds = %864
  %868 = load i32, ptr %473, align 8, !tbaa !24
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %.preheader64.backedge, label %870

870:                                              ; preds = %867
  %871 = load i32, ptr %472, align 8, !tbaa !34
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %.loopexit67, label %.preheader64.backedge

.preheader64.backedge:                            ; preds = %870, %867
  br label %.preheader64, !llvm.loop !52

.loopexit67:                                      ; preds = %870, %864, %719, %.loopexit63
  %873 = load i32, ptr %0, align 8, !tbaa !19
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %875, label %877

875:                                              ; preds = %.loopexit67
  %876 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %876, align 4, !tbaa !61
  br label %.loopexit65

877:                                              ; preds = %.loopexit67, %485
  %878 = phi i32 [ %873, %.loopexit67 ], [ %486, %485 ]
  %879 = tail call i32 @llvm.umin.i32(i32 %878, i32 %487)
  %880 = load ptr, ptr %479, align 8, !tbaa !22
  %881 = zext i32 %879 to i64
  %882 = tail call ptr @memchr(ptr noundef %880, i32 noundef 10, i64 noundef %881) #18
  %883 = icmp eq ptr %882, null
  br i1 %883, label %895, label %884

884:                                              ; preds = %877
  %885 = ptrtoint ptr %882 to i64
  %886 = ptrtoint ptr %880 to i64
  %887 = sub i64 %885, %886
  %888 = trunc i64 %887 to i32
  %889 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %888, i32 1), !nosanitize !20
  %890 = extractvalue { i32, i1 } %889, 1, !nosanitize !20
  br i1 %890, label %891, label %892, !prof !21, !nosanitize !20

891:                                              ; preds = %902, %884
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

892:                                              ; preds = %884
  %893 = extractvalue { i32, i1 } %889, 0, !nosanitize !20
  %894 = zext i32 %893 to i64
  br label %895

895:                                              ; preds = %892, %877
  %896 = phi i64 [ %894, %892 ], [ %881, %877 ]
  %897 = phi i32 [ %893, %892 ], [ %879, %877 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %488, ptr align 1 %880, i64 %896, i1 false)
  %898 = load i32, ptr %0, align 8, !tbaa !19
  %899 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %898, i32 %897), !nosanitize !20
  %900 = extractvalue { i32, i1 } %899, 1, !nosanitize !20
  br i1 %900, label %901, label %902, !prof !21, !nosanitize !20

901:                                              ; preds = %895
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

902:                                              ; preds = %895
  %903 = extractvalue { i32, i1 } %899, 0, !nosanitize !20
  store i32 %903, ptr %0, align 8, !tbaa !19
  %904 = load ptr, ptr %479, align 8, !tbaa !22
  %905 = getelementptr inbounds nuw i8, ptr %904, i64 %896
  store ptr %905, ptr %479, align 8, !tbaa !22
  %906 = load i64, ptr %483, align 8, !tbaa !23
  %907 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %906, i64 %896), !nosanitize !20
  %908 = extractvalue { i64, i1 } %907, 1, !nosanitize !20
  br i1 %908, label %891, label %909, !prof !21, !nosanitize !20

909:                                              ; preds = %902
  %910 = extractvalue { i64, i1 } %907, 0, !nosanitize !20
  store i64 %910, ptr %483, align 8, !tbaa !23
  %911 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %487, i32 %897), !nosanitize !20
  %912 = extractvalue { i32, i1 } %911, 1, !nosanitize !20
  br i1 %912, label %913, label %914, !prof !21, !nosanitize !20

913:                                              ; preds = %909
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

914:                                              ; preds = %909
  %915 = extractvalue { i32, i1 } %911, 0, !nosanitize !20
  %916 = getelementptr inbounds nuw i8, ptr %488, i64 %896
  %917 = icmp ne i32 %915, 0
  %918 = and i1 %883, %917
  br i1 %918, label %485, label %.loopexit65, !llvm.loop !103

.loopexit65:                                      ; preds = %914, %854, %524, %875, %861, %.loopexit68, %.loopexit66, %510, %505
  %919 = phi ptr [ %488, %854 ], [ %488, %875 ], [ %488, %861 ], [ %488, %.loopexit68 ], [ %488, %.loopexit66 ], [ %488, %505 ], [ %488, %510 ], [ %488, %524 ], [ %916, %914 ]
  %920 = icmp eq ptr %919, %1
  br i1 %920, label %.loopexit80, label %921

921:                                              ; preds = %.loopexit65
  store i8 0, ptr %919, align 1, !tbaa !36
  br label %.loopexit80

.loopexit80:                                      ; preds = %440, %110, %921, %.loopexit65, %.loopexit83, %447, %.loopexit84, %.loopexit81, %96, %91, %16, %9, %3
  %922 = phi ptr [ null, %9 ], [ null, %3 ], [ null, %16 ], [ null, %91 ], [ %1, %921 ], [ null, %.loopexit65 ], [ null, %96 ], [ null, %.loopexit83 ], [ null, %447 ], [ null, %.loopexit84 ], [ null, %.loopexit81 ], [ null, %110 ], [ null, %440 ]
  ret ptr %922
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @gzdirect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %268, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !8
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %263

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load i32, ptr %8, align 8, !tbaa !26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %263

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8, !tbaa !19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %263

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %17 = load i32, ptr %16, align 8, !tbaa !27
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %21 = load i32, ptr %20, align 4, !tbaa !28
  %22 = zext i32 %21 to i64
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #16
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %23, ptr %24, align 8, !tbaa !29
  %25 = load i32, ptr %20, align 4, !tbaa !28
  %26 = shl i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = tail call noalias ptr @malloc(i64 noundef %27) #16
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %28, ptr %29, align 8, !tbaa !30
  %30 = icmp eq ptr %23, null
  %31 = icmp eq ptr %28, null
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  tail call void @free(ptr noundef %28) #13
  tail call void @free(ptr noundef %23) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %263

34:                                               ; preds = %19
  %35 = load i32, ptr %20, align 4, !tbaa !28
  store i32 %35, ptr %16, align 8, !tbaa !27
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %37, align 8, !tbaa !25
  store ptr null, ptr %15, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %38 = tail call i32 @inflateInit2_(ptr noundef nonnull %15, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %29, align 8, !tbaa !30
  tail call void @free(ptr noundef %41) #13
  %42 = load ptr, ptr %24, align 8, !tbaa !29
  tail call void @free(ptr noundef %42) #13
  store i32 0, ptr %16, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %263

43:                                               ; preds = %34, %14
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %45 = load i32, ptr %44, align 8, !tbaa !32
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %49 = load i32, ptr %48, align 4, !tbaa !33
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47, %43
  %52 = tail call i32 @inflateReset(ptr noundef nonnull %15) #13
  store i32 2, ptr %8, align 8, !tbaa !26
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %54 = load i32, ptr %53, align 4, !tbaa !33
  %55 = icmp ne i32 %54, -1
  %56 = zext i1 %55 to i32
  store i32 %56, ptr %53, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %263

57:                                               ; preds = %47
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %59 = load i32, ptr %58, align 8, !tbaa !16
  switch i32 %59, label %263 [
    i32 0, label %60
    i32 -5, label %60
  ]

60:                                               ; preds = %57, %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %62 = load i32, ptr %61, align 8, !tbaa !24
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %65 = load i32, ptr %64, align 8, !tbaa !34
  br i1 %63, label %66, label %228

66:                                               ; preds = %60
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %170, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %70 = load ptr, ptr %69, align 8, !tbaa !29
  %71 = load ptr, ptr %15, align 8, !tbaa !35
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %170, label %73

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
  %84 = and i64 %76, 4294967264
  br label %85

85:                                               ; preds = %85, %83
  %86 = phi i64 [ 0, %83 ], [ %93, %85 ]
  %87 = getelementptr i8, ptr %70, i64 %86
  %88 = getelementptr i8, ptr %71, i64 %86
  %89 = getelementptr i8, ptr %88, i64 16
  %90 = load <16 x i8>, ptr %88, align 1, !tbaa !36
  %91 = load <16 x i8>, ptr %89, align 1, !tbaa !36
  %92 = getelementptr i8, ptr %87, i64 16
  store <16 x i8> %90, ptr %87, align 1, !tbaa !36
  store <16 x i8> %91, ptr %92, align 1, !tbaa !36
  %93 = add nuw nsw i64 %86, 32
  %94 = icmp eq i64 %93, %84
  br i1 %94, label %95, label %85, !llvm.loop !104

95:                                               ; preds = %85
  %96 = icmp eq i64 %84, %76
  br i1 %96, label %.loopexit12, label %97

97:                                               ; preds = %95
  %98 = trunc nuw i64 %84 to i32
  %99 = sub i32 %65, %98
  %100 = getelementptr i8, ptr %71, i64 %84
  %101 = getelementptr i8, ptr %70, i64 %84
  %102 = and i64 %76, 28
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %120, label %104, !prof !41

104:                                              ; preds = %97, %81
  %105 = phi i64 [ %84, %97 ], [ 0, %81 ]
  %106 = and i64 %76, 4294967292
  br label %107

107:                                              ; preds = %107, %104
  %108 = phi i64 [ %105, %104 ], [ %112, %107 ]
  %109 = getelementptr i8, ptr %70, i64 %108
  %110 = getelementptr i8, ptr %71, i64 %108
  %111 = load <4 x i8>, ptr %110, align 1, !tbaa !36
  store <4 x i8> %111, ptr %109, align 1, !tbaa !36
  %112 = add nuw i64 %108, 4
  %113 = icmp eq i64 %112, %106
  br i1 %113, label %114, label %107, !llvm.loop !105

114:                                              ; preds = %107
  %115 = getelementptr i8, ptr %70, i64 %106
  %116 = getelementptr i8, ptr %71, i64 %106
  %117 = trunc nuw i64 %106 to i32
  %118 = sub i32 %65, %117
  %119 = icmp eq i64 %106, %76
  br i1 %119, label %.loopexit12, label %120

120:                                              ; preds = %114, %97, %73
  %121 = phi ptr [ %70, %73 ], [ %101, %97 ], [ %115, %114 ]
  %122 = phi ptr [ %71, %73 ], [ %100, %97 ], [ %116, %114 ]
  %123 = phi i32 [ %65, %73 ], [ %99, %97 ], [ %118, %114 ]
  %124 = add i32 %123, -1
  %125 = and i32 %123, 7
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %.loopexit14, label %.preheader13

.preheader13:                                     ; preds = %120, %.preheader13
  %127 = phi ptr [ %131, %.preheader13 ], [ %121, %120 ]
  %128 = phi ptr [ %132, %.preheader13 ], [ %122, %120 ]
  %129 = phi i32 [ %133, %.preheader13 ], [ 0, %120 ]
  %130 = load i8, ptr %128, align 1, !tbaa !36
  store i8 %130, ptr %127, align 1, !tbaa !36
  %131 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %132 = getelementptr inbounds nuw i8, ptr %128, i64 1
  %133 = add nuw nsw i32 %129, 1
  %134 = icmp eq i32 %133, %125
  br i1 %134, label %.loopexit14.loopexit, label %.preheader13, !llvm.loop !106

.loopexit14.loopexit:                             ; preds = %.preheader13
  %135 = and i32 %123, -8
  br label %.loopexit14

.loopexit14:                                      ; preds = %.loopexit14.loopexit, %120
  %136 = phi ptr [ %121, %120 ], [ %131, %.loopexit14.loopexit ]
  %137 = phi ptr [ %122, %120 ], [ %132, %.loopexit14.loopexit ]
  %138 = phi i32 [ %123, %120 ], [ %135, %.loopexit14.loopexit ]
  %139 = icmp ult i32 %124, 7
  br i1 %139, label %.loopexit12, label %.preheader

.preheader:                                       ; preds = %.loopexit14, %.preheader
  %140 = phi ptr [ %166, %.preheader ], [ %136, %.loopexit14 ]
  %141 = phi ptr [ %167, %.preheader ], [ %137, %.loopexit14 ]
  %142 = phi i32 [ %165, %.preheader ], [ %138, %.loopexit14 ]
  %143 = load i8, ptr %141, align 1, !tbaa !36
  store i8 %143, ptr %140, align 1, !tbaa !36
  %144 = getelementptr inbounds nuw i8, ptr %140, i64 1
  %145 = getelementptr inbounds nuw i8, ptr %141, i64 1
  %146 = load i8, ptr %145, align 1, !tbaa !36
  store i8 %146, ptr %144, align 1, !tbaa !36
  %147 = getelementptr inbounds nuw i8, ptr %140, i64 2
  %148 = getelementptr inbounds nuw i8, ptr %141, i64 2
  %149 = load i8, ptr %148, align 1, !tbaa !36
  store i8 %149, ptr %147, align 1, !tbaa !36
  %150 = getelementptr inbounds nuw i8, ptr %140, i64 3
  %151 = getelementptr inbounds nuw i8, ptr %141, i64 3
  %152 = load i8, ptr %151, align 1, !tbaa !36
  store i8 %152, ptr %150, align 1, !tbaa !36
  %153 = getelementptr inbounds nuw i8, ptr %140, i64 4
  %154 = getelementptr inbounds nuw i8, ptr %141, i64 4
  %155 = load i8, ptr %154, align 1, !tbaa !36
  store i8 %155, ptr %153, align 1, !tbaa !36
  %156 = getelementptr inbounds nuw i8, ptr %140, i64 5
  %157 = getelementptr inbounds nuw i8, ptr %141, i64 5
  %158 = load i8, ptr %157, align 1, !tbaa !36
  store i8 %158, ptr %156, align 1, !tbaa !36
  %159 = getelementptr inbounds nuw i8, ptr %140, i64 6
  %160 = getelementptr inbounds nuw i8, ptr %141, i64 6
  %161 = load i8, ptr %160, align 1, !tbaa !36
  store i8 %161, ptr %159, align 1, !tbaa !36
  %162 = getelementptr inbounds nuw i8, ptr %140, i64 7
  %163 = getelementptr inbounds nuw i8, ptr %141, i64 7
  %164 = load i8, ptr %163, align 1, !tbaa !36
  store i8 %164, ptr %162, align 1, !tbaa !36
  %165 = add i32 %142, -8
  %166 = getelementptr inbounds nuw i8, ptr %140, i64 8
  %167 = getelementptr inbounds nuw i8, ptr %141, i64 8
  %168 = icmp eq i32 %165, 0
  br i1 %168, label %.loopexit12, label %.preheader, !llvm.loop !107

.loopexit12:                                      ; preds = %.preheader, %.loopexit14, %114, %95
  %169 = load i32, ptr %64, align 8, !tbaa !34
  br label %170

170:                                              ; preds = %.loopexit12, %68, %66
  %171 = phi i32 [ %169, %.loopexit12 ], [ %65, %68 ], [ 0, %66 ]
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %173 = load i32, ptr %16, align 8, !tbaa !27
  %174 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %173, i32 %171), !nosanitize !20
  %175 = extractvalue { i32, i1 } %174, 1, !nosanitize !20
  br i1 %175, label %176, label %177, !prof !21, !nosanitize !20

176:                                              ; preds = %170
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

177:                                              ; preds = %170
  %178 = extractvalue { i32, i1 } %174, 0, !nosanitize !20
  %179 = load ptr, ptr %172, align 8, !tbaa !29
  %180 = zext i32 %171 to i64
  %181 = getelementptr inbounds nuw i8, ptr %179, i64 %180
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %182, align 4, !tbaa !17
  %183 = tail call ptr @__errno_location() #17
  store i32 0, ptr %183, align 4, !tbaa !4
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %185

185:                                              ; preds = %204, %177
  %186 = phi i32 [ 0, %177 ], [ %205, %204 ]
  %187 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %178, i32 %186), !nosanitize !20
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !20
  br i1 %188, label %189, label %190, !prof !21, !nosanitize !20

189:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

190:                                              ; preds = %185
  %191 = extractvalue { i32, i1 } %187, 0, !nosanitize !20
  %192 = tail call i32 @llvm.umin.i32(i32 %191, i32 1073741824)
  %193 = load i32, ptr %184, align 4, !tbaa !46
  %194 = zext i32 %186 to i64
  %195 = getelementptr inbounds nuw i8, ptr %181, i64 %194
  %196 = zext nneg i32 %192 to i64
  %197 = tail call i64 @read(i32 noundef %193, ptr noundef %195, i64 noundef %196) #13
  %198 = trunc i64 %197 to i32
  %199 = icmp slt i32 %198, 1
  br i1 %199, label %207, label %200

200:                                              ; preds = %190
  %201 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %186, i32 %198), !nosanitize !20
  %202 = extractvalue { i32, i1 } %201, 1, !nosanitize !20
  br i1 %202, label %203, label %204, !prof !21, !nosanitize !20

203:                                              ; preds = %200
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

204:                                              ; preds = %200
  %205 = extractvalue { i32, i1 } %201, 0, !nosanitize !20
  %206 = icmp ult i32 %205, %178
  br i1 %206, label %185, label %.loopexit, !llvm.loop !47

207:                                              ; preds = %190
  %208 = icmp slt i32 %198, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %207
  %210 = load i32, ptr %183, align 4, !tbaa !4
  %211 = icmp eq i32 %210, 11
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  store i32 1, ptr %182, align 4, !tbaa !17
  %213 = icmp eq i32 %186, 0
  br i1 %213, label %214, label %.loopexit

214:                                              ; preds = %212
  %215 = load i32, ptr %183, align 4, !tbaa !4
  br label %217

216:                                              ; preds = %207
  store i32 1, ptr %61, align 8, !tbaa !24
  br label %.loopexit

217:                                              ; preds = %214, %209
  %218 = phi i32 [ %215, %214 ], [ %210, %209 ]
  %219 = tail call ptr @strerror(i32 noundef %218) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %219) #13
  br label %263

.loopexit:                                        ; preds = %204, %216, %212
  %220 = phi i32 [ %186, %212 ], [ %186, %216 ], [ %205, %204 ]
  %221 = load i32, ptr %64, align 8, !tbaa !34
  %222 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %221, i32 %220), !nosanitize !20
  %223 = extractvalue { i32, i1 } %222, 1, !nosanitize !20
  br i1 %223, label %224, label %225, !prof !21, !nosanitize !20

224:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

225:                                              ; preds = %.loopexit
  %226 = extractvalue { i32, i1 } %222, 0, !nosanitize !20
  store i32 %226, ptr %64, align 8, !tbaa !34
  %227 = load ptr, ptr %172, align 8, !tbaa !29
  store ptr %227, ptr %15, align 8, !tbaa !35
  br label %228

228:                                              ; preds = %225, %60
  %229 = phi i32 [ %226, %225 ], [ %65, %60 ]
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %263, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %233 = load i32, ptr %232, align 4, !tbaa !17
  %234 = icmp ne i32 %233, 0
  %235 = icmp ult i32 %229, 4
  %236 = and i1 %235, %234
  br i1 %236, label %263, label %237

237:                                              ; preds = %231
  %238 = icmp ugt i32 %229, 3
  %239 = load ptr, ptr %15, align 8, !tbaa !35
  br i1 %238, label %240, label %257

240:                                              ; preds = %237
  %241 = load i8, ptr %239, align 1, !tbaa !36
  %242 = icmp eq i8 %241, 31
  br i1 %242, label %243, label %257

243:                                              ; preds = %240
  %244 = getelementptr inbounds nuw i8, ptr %239, i64 1
  %245 = load i8, ptr %244, align 1, !tbaa !36
  %246 = icmp eq i8 %245, -117
  br i1 %246, label %247, label %257

247:                                              ; preds = %243
  %248 = getelementptr inbounds nuw i8, ptr %239, i64 2
  %249 = load i8, ptr %248, align 1, !tbaa !36
  %250 = icmp eq i8 %249, 8
  br i1 %250, label %251, label %257

251:                                              ; preds = %247
  %252 = getelementptr inbounds nuw i8, ptr %239, i64 3
  %253 = load i8, ptr %252, align 1, !tbaa !36
  %254 = icmp ult i8 %253, 32
  br i1 %254, label %255, label %257

255:                                              ; preds = %251
  %256 = tail call i32 @inflateReset(ptr noundef nonnull %15) #13
  store i32 2, ptr %8, align 8, !tbaa !26
  store i32 1, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %263

257:                                              ; preds = %251, %247, %243, %240, %237
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %259 = load ptr, ptr %258, align 8, !tbaa !30
  %260 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %259, ptr %260, align 8, !tbaa !22
  %261 = zext i32 %229 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %259, ptr align 1 %239, i64 %261, i1 false)
  %262 = load i32, ptr %64, align 8, !tbaa !34
  store i32 %262, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %64, align 8, !tbaa !34
  store i32 1, ptr %8, align 8, !tbaa !26
  br label %263

263:                                              ; preds = %257, %255, %231, %228, %217, %57, %51, %40, %33, %11, %7, %3
  %264 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %265 = load i32, ptr %264, align 8, !tbaa !32
  %266 = icmp eq i32 %265, 1
  %267 = zext i1 %266 to i32
  br label %268

268:                                              ; preds = %263, %1
  %269 = phi i32 [ %267, %263 ], [ 0, %1 ]
  ret i32 %269
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
  %9 = load i32, ptr %8, align 8, !tbaa !27
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %13 = tail call i32 @inflateEnd(ptr noundef nonnull %12) #13
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  tail call void @free(ptr noundef %15) #13
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  tail call void @free(ptr noundef %17) #13
  br label %18

18:                                               ; preds = %11, %7
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = icmp eq i32 %20, -5
  %22 = select i1 %21, i32 -5, i32 0
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %24 = load ptr, ptr %23, align 8, !tbaa !108
  tail call void @free(ptr noundef %24) #13
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %26 = load i32, ptr %25, align 4, !tbaa !46
  %27 = tail call i32 @close(i32 noundef %26) #13
  tail call void @free(ptr noundef nonnull %0) #13
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %22, i32 -1
  br label %30

30:                                               ; preds = %18, %3, %1
  %31 = phi i32 [ %29, %18 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %31
}

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #5

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nomerge noreturn nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { nounwind willreturn memory(read) }

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
!20 = !{}
!21 = !{!"branch_weights", i32 1, i32 1048575}
!22 = !{!9, !11, i64 8}
!23 = !{!9, !13, i64 16}
!24 = !{!9, !5, i64 88}
!25 = !{!9, !5, i64 144}
!26 = !{!9, !5, i64 72}
!27 = !{!9, !5, i64 40}
!28 = !{!9, !5, i64 44}
!29 = !{!9, !11, i64 48}
!30 = !{!9, !11, i64 56}
!31 = !{!9, !11, i64 136}
!32 = !{!9, !5, i64 64}
!33 = !{!9, !5, i64 68}
!34 = !{!14, !5, i64 8}
!35 = !{!14, !11, i64 0}
!36 = !{!6, !6, i64 0}
!37 = distinct !{!37, !38, !39, !40}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"branch_weights", i32 4, i32 28}
!42 = distinct !{!42, !38, !39, !40}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !38, !39}
!46 = !{!9, !5, i64 28}
!47 = distinct !{!47, !38}
!48 = !{!14, !5, i64 32}
!49 = !{!14, !11, i64 24}
!50 = !{!14, !11, i64 48}
!51 = distinct !{!51, !38}
!52 = distinct !{!52, !38}
!53 = distinct !{!53, !38}
!54 = distinct !{!54, !38, !39, !40}
!55 = distinct !{!55, !38, !39, !40}
!56 = distinct !{!56, !44}
!57 = distinct !{!57, !38, !39}
!58 = !{!9, !5, i64 168}
!59 = !{!9, !11, i64 160}
!60 = distinct !{!60, !38}
!61 = !{!9, !5, i64 92}
!62 = distinct !{!62, !38, !39, !40}
!63 = distinct !{!63, !38, !39, !40}
!64 = distinct !{!64, !44}
!65 = distinct !{!65, !38, !39}
!66 = distinct !{!66, !38, !39, !40}
!67 = distinct !{!67, !38, !39, !40}
!68 = distinct !{!68, !44}
!69 = distinct !{!69, !38, !39}
!70 = distinct !{!70, !38, !39, !40}
!71 = distinct !{!71, !38, !39, !40}
!72 = distinct !{!72, !44}
!73 = distinct !{!73, !38, !39}
!74 = distinct !{!74, !38, !39, !40}
!75 = distinct !{!75, !38, !39, !40}
!76 = distinct !{!76, !44}
!77 = distinct !{!77, !38, !39}
!78 = distinct !{!78, !38, !39, !40}
!79 = distinct !{!79, !38, !39, !40}
!80 = distinct !{!80, !44}
!81 = distinct !{!81, !38, !39}
!82 = distinct !{!82, !38, !39, !40}
!83 = distinct !{!83, !38, !39, !40}
!84 = distinct !{!84, !44}
!85 = distinct !{!85, !38, !39}
!86 = distinct !{!86, !38, !39, !40}
!87 = distinct !{!87, !38, !39, !40}
!88 = distinct !{!88, !44}
!89 = distinct !{!89, !38, !39}
!90 = distinct !{!90, !38, !39, !40}
!91 = distinct !{!91, !38, !39, !40}
!92 = distinct !{!92, !44}
!93 = distinct !{!93, !38, !39}
!94 = distinct !{!94, !38}
!95 = distinct !{!95, !38, !39, !40}
!96 = distinct !{!96, !38, !39, !40}
!97 = distinct !{!97, !44}
!98 = distinct !{!98, !38, !39}
!99 = distinct !{!99, !38, !39, !40}
!100 = distinct !{!100, !38, !39, !40}
!101 = distinct !{!101, !44}
!102 = distinct !{!102, !38, !39}
!103 = distinct !{!103, !38}
!104 = distinct !{!104, !38, !39, !40}
!105 = distinct !{!105, !38, !39, !40}
!106 = distinct !{!106, !44}
!107 = distinct !{!107, !38, !39}
!108 = !{!9, !11, i64 32}
