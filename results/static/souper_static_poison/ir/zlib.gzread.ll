; ModuleID = '/mydata/zlib/gzread.c'
source_filename = "/mydata/zlib/gzread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gz_state = type { %struct.gzFile_s, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, ptr, %struct.z_stream_s }
%struct.gzFile_s = type { i32, ptr, i64 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

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
  br i1 %4, label %1133, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 7247
  br i1 %8, label %9, label %1133

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %11 = load i32, ptr %10, align 8, !tbaa !14
  switch i32 %11, label %12 [
    i32 0, label %16
    i32 -5, label %16
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %1133, label %16

16:                                               ; preds = %9, %9, %12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str) #14
  br label %1133

19:                                               ; preds = %16
  %20 = zext nneg i32 %2 to i64
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %1121, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %24 = load i64, ptr %23, align 8, !tbaa !16
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %481, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %28 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %29 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  %30 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %31 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 10
  %32 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %33 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %34 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %35 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %36 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %37 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %38 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %39 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %40 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %41 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 6
  %42 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %43 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %44 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  br label %45

45:                                               ; preds = %478, %26
  %46 = phi i64 [ %479, %478 ], [ %24, %26 ]
  %47 = load i32, ptr %0, align 8, !tbaa !17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %72, label %49

49:                                               ; preds = %45
  %50 = zext i32 %47 to i64
  %51 = icmp slt i64 %46, %50
  %52 = trunc i64 %46 to i32
  %53 = select i1 %51, i32 %52, i32 %47
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %47, i32 %53), !nosanitize !18
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !18
  br i1 %55, label %56, label %57, !nosanitize !18

56:                                               ; preds = %66, %49
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

57:                                               ; preds = %49
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !18
  store i32 %58, ptr %0, align 8, !tbaa !17
  %59 = load ptr, ptr %27, align 8, !tbaa !19
  %60 = zext i32 %53 to i64
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  store ptr %61, ptr %27, align 8, !tbaa !19
  %62 = load i64, ptr %28, align 8, !tbaa !20
  %63 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %62, i64 %60), !nosanitize !18
  %64 = extractvalue { i64, i1 } %63, 1, !nosanitize !18
  br i1 %64, label %65, label %66, !nosanitize !18

65:                                               ; preds = %57
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

66:                                               ; preds = %57
  %67 = extractvalue { i64, i1 } %63, 0, !nosanitize !18
  store i64 %67, ptr %28, align 8, !tbaa !20
  %68 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %46, i64 %60), !nosanitize !18
  %69 = extractvalue { i64, i1 } %68, 1, !nosanitize !18
  br i1 %69, label %56, label %70, !nosanitize !18

70:                                               ; preds = %66
  %71 = extractvalue { i64, i1 } %68, 0, !nosanitize !18
  store i64 %71, ptr %23, align 8, !tbaa !16
  br label %478

72:                                               ; preds = %45
  %73 = load i32, ptr %29, align 8, !tbaa !21
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %30, align 8, !tbaa !22
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %481, label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %475, %78
  %80 = load i32, ptr %31, align 8, !tbaa !23
  switch i32 %80, label %460 [
    i32 0, label %81
    i32 1, label %317
    i32 2, label %361
  ]

81:                                               ; preds = %79
  %82 = load i32, ptr %32, align 8, !tbaa !24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %81
  %85 = load i32, ptr %42, align 4, !tbaa !25
  %86 = zext i32 %85 to i64
  %87 = tail call noalias ptr @malloc(i64 noundef %86) #16
  store ptr %87, ptr %37, align 8, !tbaa !26
  %88 = shl i32 %85, 1
  %89 = zext i32 %88 to i64
  %90 = tail call noalias ptr @malloc(i64 noundef %89) #16
  store ptr %90, ptr %34, align 8, !tbaa !27
  %91 = icmp eq ptr %87, null
  %92 = icmp eq ptr %90, null
  %93 = or i1 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  tail call void @free(ptr noundef %90) #14
  tail call void @free(ptr noundef %87) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1121

95:                                               ; preds = %84
  store i32 %85, ptr %32, align 8, !tbaa !24
  store i32 0, ptr %30, align 8, !tbaa !22
  store ptr null, ptr %36, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %96 = tail call i32 @inflateInit2_(ptr noundef nonnull %36, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %34, align 8, !tbaa !27
  tail call void @free(ptr noundef %99) #14
  %100 = load ptr, ptr %37, align 8, !tbaa !26
  tail call void @free(ptr noundef %100) #14
  store i32 0, ptr %32, align 8, !tbaa !24
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1121

101:                                              ; preds = %95, %81
  %102 = load i32, ptr %44, align 8, !tbaa !29
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %40, align 4, !tbaa !30
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104, %101
  %108 = tail call i32 @inflateReset(ptr noundef nonnull %36) #14
  store i32 2, ptr %31, align 8, !tbaa !23
  %109 = load i32, ptr %40, align 4, !tbaa !30
  %110 = icmp ne i32 %109, -1
  %111 = zext i1 %110 to i32
  store i32 %111, ptr %40, align 4, !tbaa !30
  store i32 0, ptr %44, align 8, !tbaa !29
  br label %314

112:                                              ; preds = %104
  %113 = load i32, ptr %10, align 8, !tbaa !14
  switch i32 %113, label %1123 [
    i32 0, label %114
    i32 -5, label %114
  ]

114:                                              ; preds = %112, %112
  %115 = load i32, ptr %29, align 8, !tbaa !21
  %116 = icmp eq i32 %115, 0
  %117 = load i32, ptr %30, align 8, !tbaa !31
  br i1 %116, label %118, label %282

118:                                              ; preds = %114
  %119 = icmp eq i32 %117, 0
  br i1 %119, label %227, label %120

120:                                              ; preds = %118
  %121 = load ptr, ptr %37, align 8, !tbaa !26
  %122 = load ptr, ptr %36, align 8, !tbaa !32
  %123 = icmp eq ptr %122, %121
  br i1 %123, label %227, label %124

124:                                              ; preds = %120
  %125 = ptrtoint ptr %122 to i64
  %126 = ptrtoint ptr %121 to i64
  %127 = zext i32 %117 to i64
  %128 = icmp ult i32 %117, 8
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
  %141 = load <16 x i8>, ptr %139, align 1, !tbaa !33
  %142 = load <16 x i8>, ptr %140, align 1, !tbaa !33
  %143 = getelementptr i8, ptr %138, i64 16
  store <16 x i8> %141, ptr %138, align 1, !tbaa !33
  store <16 x i8> %142, ptr %143, align 1, !tbaa !33
  %144 = add nuw i64 %137, 32
  %145 = icmp eq i64 %144, %135
  br i1 %145, label %146, label %136, !llvm.loop !34

146:                                              ; preds = %136
  %147 = icmp eq i64 %135, %127
  br i1 %147, label %225, label %148

148:                                              ; preds = %146
  %149 = trunc i64 %135 to i32
  %150 = sub i32 %117, %149
  %151 = getelementptr i8, ptr %122, i64 %135
  %152 = getelementptr i8, ptr %121, i64 %135
  %153 = and i64 %127, 24
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %171, label %155

155:                                              ; preds = %132, %148
  %156 = phi i64 [ %135, %148 ], [ 0, %132 ]
  %157 = and i64 %127, 4294967288
  %158 = getelementptr i8, ptr %121, i64 %157
  %159 = getelementptr i8, ptr %122, i64 %157
  %160 = trunc i64 %157 to i32
  %161 = sub i32 %117, %160
  br label %162

162:                                              ; preds = %162, %155
  %163 = phi i64 [ %156, %155 ], [ %167, %162 ]
  %164 = getelementptr i8, ptr %121, i64 %163
  %165 = getelementptr i8, ptr %122, i64 %163
  %166 = load <8 x i8>, ptr %165, align 1, !tbaa !33
  store <8 x i8> %166, ptr %164, align 1, !tbaa !33
  %167 = add nuw i64 %163, 8
  %168 = icmp eq i64 %167, %157
  br i1 %168, label %169, label %162, !llvm.loop !38

169:                                              ; preds = %162
  %170 = icmp eq i64 %157, %127
  br i1 %170, label %225, label %171

171:                                              ; preds = %124, %148, %169
  %172 = phi ptr [ %121, %124 ], [ %152, %148 ], [ %158, %169 ]
  %173 = phi ptr [ %122, %124 ], [ %151, %148 ], [ %159, %169 ]
  %174 = phi i32 [ %117, %124 ], [ %150, %148 ], [ %161, %169 ]
  %175 = add i32 %174, -1
  %176 = and i32 %174, 7
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %171, %178
  %179 = phi ptr [ %185, %178 ], [ %172, %171 ]
  %180 = phi ptr [ %186, %178 ], [ %173, %171 ]
  %181 = phi i32 [ %184, %178 ], [ %174, %171 ]
  %182 = phi i32 [ %187, %178 ], [ 0, %171 ]
  %183 = load i8, ptr %180, align 1, !tbaa !33
  store i8 %183, ptr %179, align 1, !tbaa !33
  %184 = add i32 %181, -1
  %185 = getelementptr inbounds i8, ptr %179, i64 1
  %186 = getelementptr inbounds i8, ptr %180, i64 1
  %187 = add i32 %182, 1
  %188 = icmp eq i32 %187, %176
  br i1 %188, label %189, label %178, !llvm.loop !39

189:                                              ; preds = %178, %171
  %190 = phi ptr [ %172, %171 ], [ %185, %178 ]
  %191 = phi ptr [ %173, %171 ], [ %186, %178 ]
  %192 = phi i32 [ %174, %171 ], [ %184, %178 ]
  %193 = icmp ult i32 %175, 7
  br i1 %193, label %225, label %194

194:                                              ; preds = %189, %194
  %195 = phi ptr [ %221, %194 ], [ %190, %189 ]
  %196 = phi ptr [ %222, %194 ], [ %191, %189 ]
  %197 = phi i32 [ %220, %194 ], [ %192, %189 ]
  %198 = load i8, ptr %196, align 1, !tbaa !33
  store i8 %198, ptr %195, align 1, !tbaa !33
  %199 = getelementptr inbounds i8, ptr %195, i64 1
  %200 = getelementptr inbounds i8, ptr %196, i64 1
  %201 = load i8, ptr %200, align 1, !tbaa !33
  store i8 %201, ptr %199, align 1, !tbaa !33
  %202 = getelementptr inbounds i8, ptr %195, i64 2
  %203 = getelementptr inbounds i8, ptr %196, i64 2
  %204 = load i8, ptr %203, align 1, !tbaa !33
  store i8 %204, ptr %202, align 1, !tbaa !33
  %205 = getelementptr inbounds i8, ptr %195, i64 3
  %206 = getelementptr inbounds i8, ptr %196, i64 3
  %207 = load i8, ptr %206, align 1, !tbaa !33
  store i8 %207, ptr %205, align 1, !tbaa !33
  %208 = getelementptr inbounds i8, ptr %195, i64 4
  %209 = getelementptr inbounds i8, ptr %196, i64 4
  %210 = load i8, ptr %209, align 1, !tbaa !33
  store i8 %210, ptr %208, align 1, !tbaa !33
  %211 = getelementptr inbounds i8, ptr %195, i64 5
  %212 = getelementptr inbounds i8, ptr %196, i64 5
  %213 = load i8, ptr %212, align 1, !tbaa !33
  store i8 %213, ptr %211, align 1, !tbaa !33
  %214 = getelementptr inbounds i8, ptr %195, i64 6
  %215 = getelementptr inbounds i8, ptr %196, i64 6
  %216 = load i8, ptr %215, align 1, !tbaa !33
  store i8 %216, ptr %214, align 1, !tbaa !33
  %217 = getelementptr inbounds i8, ptr %195, i64 7
  %218 = getelementptr inbounds i8, ptr %196, i64 7
  %219 = load i8, ptr %218, align 1, !tbaa !33
  store i8 %219, ptr %217, align 1, !tbaa !33
  %220 = add i32 %197, -8
  %221 = getelementptr inbounds i8, ptr %195, i64 8
  %222 = getelementptr inbounds i8, ptr %196, i64 8
  %223 = icmp eq i32 %220, 0
  br i1 %223, label %225, label %194, !llvm.loop !41

224:                                              ; preds = %227
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

225:                                              ; preds = %189, %194, %169, %146
  %226 = load i32, ptr %30, align 8, !tbaa !31
  br label %227

227:                                              ; preds = %225, %120, %118
  %228 = phi i32 [ %226, %225 ], [ %117, %120 ], [ 0, %118 ]
  %229 = load i32, ptr %32, align 8, !tbaa !24
  %230 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %229, i32 %228), !nosanitize !18
  %231 = extractvalue { i32, i1 } %230, 1, !nosanitize !18
  br i1 %231, label %224, label %232, !nosanitize !18

232:                                              ; preds = %227
  %233 = extractvalue { i32, i1 } %230, 0, !nosanitize !18
  %234 = load ptr, ptr %37, align 8, !tbaa !26
  %235 = zext i32 %228 to i64
  %236 = getelementptr inbounds i8, ptr %234, i64 %235
  store i32 0, ptr %38, align 4, !tbaa !15
  %237 = tail call ptr @__errno_location() #17
  store i32 0, ptr %237, align 4, !tbaa !42
  br label %238

238:                                              ; preds = %257, %232
  %239 = phi i32 [ 0, %232 ], [ %258, %257 ]
  %240 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %233, i32 %239), !nosanitize !18
  %241 = extractvalue { i32, i1 } %240, 1, !nosanitize !18
  br i1 %241, label %242, label %243, !nosanitize !18

242:                                              ; preds = %238
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

243:                                              ; preds = %238
  %244 = extractvalue { i32, i1 } %240, 0, !nosanitize !18
  %245 = tail call i32 @llvm.umin.i32(i32 %244, i32 1073741824)
  %246 = load i32, ptr %39, align 4, !tbaa !43
  %247 = zext i32 %239 to i64
  %248 = getelementptr inbounds i8, ptr %236, i64 %247
  %249 = zext nneg i32 %245 to i64
  %250 = tail call i64 @read(i32 noundef %246, ptr noundef %248, i64 noundef %249) #14
  %251 = trunc i64 %250 to i32
  %252 = icmp slt i32 %251, 1
  br i1 %252, label %260, label %253

253:                                              ; preds = %243
  %254 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %239, i32 %251), !nosanitize !18
  %255 = extractvalue { i32, i1 } %254, 1, !nosanitize !18
  br i1 %255, label %256, label %257, !nosanitize !18

256:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

257:                                              ; preds = %253
  %258 = extractvalue { i32, i1 } %254, 0, !nosanitize !18
  %259 = icmp ult i32 %258, %233
  br i1 %259, label %238, label %273, !llvm.loop !44

260:                                              ; preds = %243
  %261 = icmp slt i32 %251, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %260
  %263 = load i32, ptr %237, align 4, !tbaa !42
  %264 = icmp eq i32 %263, 11
  br i1 %264, label %265, label %270

265:                                              ; preds = %262
  store i32 1, ptr %38, align 4, !tbaa !15
  %266 = icmp eq i32 %239, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %265
  %268 = load i32, ptr %237, align 4, !tbaa !42
  br label %270

269:                                              ; preds = %260
  store i32 1, ptr %29, align 8, !tbaa !21
  br label %273

270:                                              ; preds = %262, %267
  %271 = phi i32 [ %268, %267 ], [ %263, %262 ]
  %272 = tail call ptr @strerror(i32 noundef %271) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %272) #14
  br label %1121

273:                                              ; preds = %257, %269, %265
  %274 = phi i32 [ %239, %269 ], [ %239, %265 ], [ %258, %257 ]
  %275 = load i32, ptr %30, align 8, !tbaa !31
  %276 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %275, i32 %274), !nosanitize !18
  %277 = extractvalue { i32, i1 } %276, 1, !nosanitize !18
  br i1 %277, label %278, label %279, !nosanitize !18

278:                                              ; preds = %273
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

279:                                              ; preds = %273
  %280 = extractvalue { i32, i1 } %276, 0, !nosanitize !18
  store i32 %280, ptr %30, align 8, !tbaa !31
  %281 = load ptr, ptr %37, align 8, !tbaa !26
  store ptr %281, ptr %36, align 8, !tbaa !32
  br label %282

282:                                              ; preds = %279, %114
  %283 = phi i32 [ %280, %279 ], [ %117, %114 ]
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %314, label %285

285:                                              ; preds = %282
  %286 = load i32, ptr %38, align 4, !tbaa !15
  %287 = icmp ne i32 %286, 0
  %288 = icmp ult i32 %283, 4
  %289 = and i1 %288, %287
  br i1 %289, label %314, label %290

290:                                              ; preds = %285
  %291 = icmp ugt i32 %283, 3
  %292 = load ptr, ptr %36, align 8, !tbaa !32
  br i1 %291, label %293, label %310

293:                                              ; preds = %290
  %294 = load i8, ptr %292, align 1, !tbaa !33
  %295 = icmp eq i8 %294, 31
  br i1 %295, label %296, label %310

296:                                              ; preds = %293
  %297 = getelementptr inbounds i8, ptr %292, i64 1
  %298 = load i8, ptr %297, align 1, !tbaa !33
  %299 = icmp eq i8 %298, -117
  br i1 %299, label %300, label %310

300:                                              ; preds = %296
  %301 = getelementptr inbounds i8, ptr %292, i64 2
  %302 = load i8, ptr %301, align 1, !tbaa !33
  %303 = icmp eq i8 %302, 8
  br i1 %303, label %304, label %310

304:                                              ; preds = %300
  %305 = getelementptr inbounds i8, ptr %292, i64 3
  %306 = load i8, ptr %305, align 1, !tbaa !33
  %307 = icmp ult i8 %306, 32
  br i1 %307, label %308, label %310

308:                                              ; preds = %304
  %309 = tail call i32 @inflateReset(ptr noundef nonnull %36) #14
  store i32 2, ptr %31, align 8, !tbaa !23
  br label %461

310:                                              ; preds = %304, %300, %296, %293, %290
  %311 = load ptr, ptr %34, align 8, !tbaa !27
  store ptr %311, ptr %27, align 8, !tbaa !19
  %312 = zext i32 %283 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %311, ptr align 1 %292, i64 %312, i1 false)
  %313 = load i32, ptr %30, align 8, !tbaa !31
  store i32 %313, ptr %0, align 8, !tbaa !17
  store i32 0, ptr %30, align 8, !tbaa !31
  store i32 1, ptr %31, align 8, !tbaa !23
  br label %466

314:                                              ; preds = %285, %282, %107
  %315 = load i32, ptr %31, align 8, !tbaa !23
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %476, label %464

317:                                              ; preds = %79
  %318 = load ptr, ptr %34, align 8, !tbaa !27
  %319 = load i32, ptr %32, align 8, !tbaa !24
  %320 = shl i32 %319, 1
  store i32 0, ptr %38, align 4, !tbaa !15
  %321 = tail call ptr @__errno_location() #17
  store i32 0, ptr %321, align 4, !tbaa !42
  store i32 0, ptr %0, align 4, !tbaa !42
  br label %322

322:                                              ; preds = %342, %317
  %323 = phi i32 [ %343, %342 ], [ 0, %317 ]
  %324 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %320, i32 %323), !nosanitize !18
  %325 = extractvalue { i32, i1 } %324, 1, !nosanitize !18
  br i1 %325, label %326, label %327, !nosanitize !18

326:                                              ; preds = %322
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

327:                                              ; preds = %322
  %328 = extractvalue { i32, i1 } %324, 0, !nosanitize !18
  %329 = tail call i32 @llvm.umin.i32(i32 %328, i32 1073741824)
  %330 = load i32, ptr %39, align 4, !tbaa !43
  %331 = zext i32 %323 to i64
  %332 = getelementptr inbounds i8, ptr %318, i64 %331
  %333 = zext nneg i32 %329 to i64
  %334 = tail call i64 @read(i32 noundef %330, ptr noundef %332, i64 noundef %333) #14
  %335 = trunc i64 %334 to i32
  %336 = icmp slt i32 %335, 1
  br i1 %336, label %345, label %337

337:                                              ; preds = %327
  %338 = load i32, ptr %0, align 4, !tbaa !42
  %339 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %338, i32 %335), !nosanitize !18
  %340 = extractvalue { i32, i1 } %339, 1, !nosanitize !18
  br i1 %340, label %341, label %342, !nosanitize !18

341:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

342:                                              ; preds = %337
  %343 = extractvalue { i32, i1 } %339, 0, !nosanitize !18
  store i32 %343, ptr %0, align 4, !tbaa !42
  %344 = icmp ult i32 %343, %320
  br i1 %344, label %322, label %359, !llvm.loop !44

345:                                              ; preds = %327
  %346 = icmp slt i32 %335, 0
  br i1 %346, label %347, label %355

347:                                              ; preds = %345
  %348 = load i32, ptr %321, align 4, !tbaa !42
  %349 = icmp eq i32 %348, 11
  br i1 %349, label %350, label %356

350:                                              ; preds = %347
  store i32 1, ptr %38, align 4, !tbaa !15
  %351 = load i32, ptr %0, align 4, !tbaa !42
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %350
  %354 = load i32, ptr %321, align 4, !tbaa !42
  br label %356

355:                                              ; preds = %345
  store i32 1, ptr %29, align 8, !tbaa !21
  br label %359

356:                                              ; preds = %347, %353
  %357 = phi i32 [ %354, %353 ], [ %348, %347 ]
  %358 = tail call ptr @strerror(i32 noundef %357) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %358) #14
  br label %1121

359:                                              ; preds = %342, %355, %350
  %360 = load ptr, ptr %34, align 8, !tbaa !27
  store ptr %360, ptr %27, align 8, !tbaa !19
  br label %476

361:                                              ; preds = %79
  %362 = load i32, ptr %32, align 8, !tbaa !24
  %363 = shl i32 %362, 1
  store i32 %363, ptr %33, align 8, !tbaa !45
  %364 = load ptr, ptr %34, align 8, !tbaa !27
  store ptr %364, ptr %35, align 8, !tbaa !46
  br label %365

365:                                              ; preds = %444, %361
  %366 = phi i32 [ 0, %361 ], [ %429, %444 ]
  %367 = load i32, ptr %30, align 8, !tbaa !31
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %428

369:                                              ; preds = %365
  %370 = load i32, ptr %10, align 8, !tbaa !14
  switch i32 %370, label %448 [
    i32 0, label %371
    i32 -5, label %371
  ]

371:                                              ; preds = %369, %369
  %372 = load i32, ptr %29, align 8, !tbaa !21
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %424

374:                                              ; preds = %371
  %375 = load i32, ptr %32, align 8, !tbaa !24
  %376 = load ptr, ptr %37, align 8, !tbaa !26
  store i32 0, ptr %38, align 4, !tbaa !15
  %377 = tail call ptr @__errno_location() #17
  store i32 0, ptr %377, align 4, !tbaa !42
  br label %378

378:                                              ; preds = %397, %374
  %379 = phi i32 [ 0, %374 ], [ %398, %397 ]
  %380 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %375, i32 %379), !nosanitize !18
  %381 = extractvalue { i32, i1 } %380, 1, !nosanitize !18
  br i1 %381, label %382, label %383, !nosanitize !18

382:                                              ; preds = %378
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

383:                                              ; preds = %378
  %384 = extractvalue { i32, i1 } %380, 0, !nosanitize !18
  %385 = tail call i32 @llvm.umin.i32(i32 %384, i32 1073741824)
  %386 = load i32, ptr %39, align 4, !tbaa !43
  %387 = zext i32 %379 to i64
  %388 = getelementptr inbounds i8, ptr %376, i64 %387
  %389 = zext nneg i32 %385 to i64
  %390 = tail call i64 @read(i32 noundef %386, ptr noundef %388, i64 noundef %389) #14
  %391 = trunc i64 %390 to i32
  %392 = icmp slt i32 %391, 1
  br i1 %392, label %400, label %393

393:                                              ; preds = %383
  %394 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %379, i32 %391), !nosanitize !18
  %395 = extractvalue { i32, i1 } %394, 1, !nosanitize !18
  br i1 %395, label %396, label %397, !nosanitize !18

396:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

397:                                              ; preds = %393
  %398 = extractvalue { i32, i1 } %394, 0, !nosanitize !18
  %399 = icmp ult i32 %398, %375
  br i1 %399, label %378, label %414, !llvm.loop !44

400:                                              ; preds = %383
  %401 = icmp slt i32 %391, 0
  br i1 %401, label %402, label %409

402:                                              ; preds = %400
  %403 = load i32, ptr %377, align 4, !tbaa !42
  %404 = icmp eq i32 %403, 11
  br i1 %404, label %405, label %410

405:                                              ; preds = %402
  store i32 1, ptr %38, align 4, !tbaa !15
  %406 = icmp eq i32 %379, 0
  br i1 %406, label %407, label %414

407:                                              ; preds = %405
  %408 = load i32, ptr %377, align 4, !tbaa !42
  br label %410

409:                                              ; preds = %400
  store i32 1, ptr %29, align 8, !tbaa !21
  br label %414

410:                                              ; preds = %402, %407
  %411 = phi i32 [ %408, %407 ], [ %403, %402 ]
  %412 = tail call ptr @strerror(i32 noundef %411) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %412) #14
  %413 = load i32, ptr %10, align 8, !tbaa !14
  br label %448

414:                                              ; preds = %397, %409, %405
  %415 = phi i32 [ %379, %409 ], [ %379, %405 ], [ %398, %397 ]
  %416 = load i32, ptr %30, align 8, !tbaa !31
  %417 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %416, i32 %415), !nosanitize !18
  %418 = extractvalue { i32, i1 } %417, 1, !nosanitize !18
  br i1 %418, label %419, label %420, !nosanitize !18

419:                                              ; preds = %414
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

420:                                              ; preds = %414
  %421 = extractvalue { i32, i1 } %417, 0, !nosanitize !18
  store i32 %421, ptr %30, align 8, !tbaa !31
  %422 = load ptr, ptr %37, align 8, !tbaa !26
  store ptr %422, ptr %36, align 8, !tbaa !32
  %423 = icmp eq i32 %421, 0
  br i1 %423, label %424, label %428

424:                                              ; preds = %420, %371
  %425 = load i32, ptr %38, align 4, !tbaa !15
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %448

427:                                              ; preds = %424
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %448

428:                                              ; preds = %420, %365
  %429 = tail call i32 @inflate(ptr noundef nonnull %36, i32 noundef 0) #14
  %430 = load i32, ptr %33, align 8, !tbaa !45
  %431 = icmp ult i32 %430, %363
  br i1 %431, label %432, label %433

432:                                              ; preds = %428
  store i32 0, ptr %40, align 4, !tbaa !30
  br label %433

433:                                              ; preds = %432, %428
  switch i32 %429, label %444 [
    i32 -2, label %434
    i32 2, label %434
    i32 -4, label %435
    i32 -3, label %436
  ]

434:                                              ; preds = %433, %433
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %448

435:                                              ; preds = %433
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %448

436:                                              ; preds = %433
  %437 = load i32, ptr %40, align 4, !tbaa !30
  %438 = icmp eq i32 %437, 1
  br i1 %438, label %439, label %440

439:                                              ; preds = %436
  store i32 0, ptr %30, align 8, !tbaa !31
  store i32 1, ptr %29, align 8, !tbaa !21
  store i32 0, ptr %31, align 8, !tbaa !23
  br label %448

440:                                              ; preds = %436
  %441 = load ptr, ptr %41, align 8, !tbaa !47
  %442 = icmp eq ptr %441, null
  %443 = select i1 %442, ptr @.str.6, ptr %441
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %443) #14
  br label %448

444:                                              ; preds = %433
  %445 = icmp ne i32 %430, 0
  %446 = icmp ne i32 %429, 1
  %447 = select i1 %445, i1 %446, i1 false
  br i1 %447, label %365, label %448, !llvm.loop !48

448:                                              ; preds = %444, %369, %440, %439, %435, %434, %427, %424, %410
  %449 = phi i32 [ %366, %424 ], [ %366, %427 ], [ %429, %434 ], [ -4, %435 ], [ 0, %439 ], [ -3, %440 ], [ %413, %410 ], [ %429, %444 ], [ %370, %369 ]
  %450 = load i32, ptr %33, align 8, !tbaa !45
  %451 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %363, i32 %450), !nosanitize !18
  %452 = extractvalue { i32, i1 } %451, 1, !nosanitize !18
  br i1 %452, label %453, label %454, !nosanitize !18

453:                                              ; preds = %448
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

454:                                              ; preds = %448
  %455 = extractvalue { i32, i1 } %451, 0, !nosanitize !18
  store i32 %455, ptr %0, align 8, !tbaa !17
  %456 = load ptr, ptr %35, align 8, !tbaa !46
  %457 = zext i32 %455 to i64
  %458 = sub nsw i64 0, %457
  %459 = getelementptr inbounds i8, ptr %456, i64 %458
  store ptr %459, ptr %27, align 8, !tbaa !19
  switch i32 %449, label %1121 [
    i32 1, label %461
    i32 0, label %464
  ]

460:                                              ; preds = %79
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %1121

461:                                              ; preds = %454, %308
  %462 = phi i32 [ 1, %308 ], [ 0, %454 ]
  %463 = phi ptr [ %44, %308 ], [ %31, %454 ]
  store i32 %462, ptr %40, align 4, !tbaa !30
  store i32 0, ptr %463, align 8, !tbaa !42
  br label %464

464:                                              ; preds = %461, %454, %314
  %465 = load i32, ptr %0, align 8, !tbaa !17
  br label %466

466:                                              ; preds = %464, %310
  %467 = phi i32 [ %465, %464 ], [ %313, %310 ]
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %476

469:                                              ; preds = %466
  %470 = load i32, ptr %29, align 8, !tbaa !21
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %475, label %472

472:                                              ; preds = %469
  %473 = load i32, ptr %30, align 8, !tbaa !31
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %476, label %475

475:                                              ; preds = %472, %469
  br label %79, !llvm.loop !49

476:                                              ; preds = %472, %466, %314, %359
  %477 = load i64, ptr %23, align 8, !tbaa !16
  br label %478

478:                                              ; preds = %476, %70
  %479 = phi i64 [ %477, %476 ], [ %71, %70 ]
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %481, label %45, !llvm.loop !50

481:                                              ; preds = %478, %75, %22
  %482 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %483 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  %484 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %485 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 10
  %486 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %487 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %488 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %489 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %490 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %491 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %492 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %493 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %494 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 6
  %495 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %496 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %497 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %498 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %499 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  br label %500

500:                                              ; preds = %1101, %481
  %501 = phi ptr [ %1, %481 ], [ %1102, %1101 ]
  %502 = phi i64 [ %20, %481 ], [ %1103, %1101 ]
  %503 = phi i64 [ 0, %481 ], [ %1104, %1101 ]
  %504 = tail call i64 @llvm.umin.i64(i64 %502, i64 4294967295)
  %505 = trunc i64 %504 to i32
  %506 = load i32, ptr %0, align 8, !tbaa !17
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %523, label %508

508:                                              ; preds = %500
  %509 = tail call i32 @llvm.umin.i32(i32 %506, i32 %505)
  %510 = load ptr, ptr %482, align 8, !tbaa !19
  %511 = zext i32 %509 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %501, ptr align 1 %510, i64 %511, i1 false)
  %512 = load ptr, ptr %482, align 8, !tbaa !19
  %513 = getelementptr inbounds i8, ptr %512, i64 %511
  store ptr %513, ptr %482, align 8, !tbaa !19
  %514 = load i32, ptr %0, align 8, !tbaa !17
  %515 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %514, i32 %509), !nosanitize !18
  %516 = extractvalue { i32, i1 } %515, 1, !nosanitize !18
  br i1 %516, label %517, label %518, !nosanitize !18

517:                                              ; preds = %1083, %508
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

518:                                              ; preds = %508
  %519 = extractvalue { i32, i1 } %515, 0, !nosanitize !18
  store i32 %519, ptr %0, align 8, !tbaa !17
  %520 = load i32, ptr %10, align 8, !tbaa !14
  %521 = icmp ne i32 %520, 0
  %522 = sext i1 %521 to i32
  br label %1083

523:                                              ; preds = %500
  %524 = load i32, ptr %483, align 8, !tbaa !21
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %529, label %526

526:                                              ; preds = %523
  %527 = load i32, ptr %484, align 8, !tbaa !22
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %1109, label %529

529:                                              ; preds = %526, %523
  %530 = load i32, ptr %485, align 8, !tbaa !23
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %536, label %532

532:                                              ; preds = %529
  %533 = load i32, ptr %486, align 8, !tbaa !24
  %534 = shl i32 %533, 1
  %535 = icmp ugt i32 %534, %505
  br i1 %535, label %536, label %939

536:                                              ; preds = %532, %529
  br label %537

537:                                              ; preds = %536, %933
  %538 = phi i32 [ %934, %933 ], [ %530, %536 ]
  switch i32 %538, label %918 [
    i32 0, label %539
    i32 1, label %775
    i32 2, label %819
  ]

539:                                              ; preds = %537
  %540 = load i32, ptr %486, align 8, !tbaa !24
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %559

542:                                              ; preds = %539
  %543 = load i32, ptr %497, align 4, !tbaa !25
  %544 = zext i32 %543 to i64
  %545 = tail call noalias ptr @malloc(i64 noundef %544) #16
  store ptr %545, ptr %490, align 8, !tbaa !26
  %546 = shl i32 %543, 1
  %547 = zext i32 %546 to i64
  %548 = tail call noalias ptr @malloc(i64 noundef %547) #16
  store ptr %548, ptr %496, align 8, !tbaa !27
  %549 = icmp eq ptr %545, null
  %550 = icmp eq ptr %548, null
  %551 = or i1 %549, %550
  br i1 %551, label %552, label %553

552:                                              ; preds = %542
  tail call void @free(ptr noundef %548) #14
  tail call void @free(ptr noundef %545) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %935

553:                                              ; preds = %542
  store i32 %543, ptr %486, align 8, !tbaa !24
  store i32 0, ptr %484, align 8, !tbaa !22
  store ptr null, ptr %489, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %498, i8 0, i64 24, i1 false)
  %554 = tail call i32 @inflateInit2_(ptr noundef nonnull %489, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %559, label %556

556:                                              ; preds = %553
  %557 = load ptr, ptr %496, align 8, !tbaa !27
  tail call void @free(ptr noundef %557) #14
  %558 = load ptr, ptr %490, align 8, !tbaa !26
  tail call void @free(ptr noundef %558) #14
  store i32 0, ptr %486, align 8, !tbaa !24
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %935

559:                                              ; preds = %553, %539
  %560 = load i32, ptr %499, align 8, !tbaa !29
  %561 = icmp eq i32 %560, -1
  br i1 %561, label %565, label %562

562:                                              ; preds = %559
  %563 = load i32, ptr %493, align 4, !tbaa !30
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %570

565:                                              ; preds = %562, %559
  %566 = tail call i32 @inflateReset(ptr noundef nonnull %489) #14
  store i32 2, ptr %485, align 8, !tbaa !23
  %567 = load i32, ptr %493, align 4, !tbaa !30
  %568 = icmp ne i32 %567, -1
  %569 = zext i1 %568 to i32
  store i32 %569, ptr %493, align 4, !tbaa !30
  store i32 0, ptr %499, align 8, !tbaa !29
  br label %772

570:                                              ; preds = %562
  %571 = load i32, ptr %10, align 8, !tbaa !14
  switch i32 %571, label %935 [
    i32 0, label %572
    i32 -5, label %572
  ]

572:                                              ; preds = %570, %570
  %573 = load i32, ptr %483, align 8, !tbaa !21
  %574 = icmp eq i32 %573, 0
  %575 = load i32, ptr %484, align 8, !tbaa !31
  br i1 %574, label %576, label %740

576:                                              ; preds = %572
  %577 = icmp eq i32 %575, 0
  br i1 %577, label %685, label %578

578:                                              ; preds = %576
  %579 = load ptr, ptr %490, align 8, !tbaa !26
  %580 = load ptr, ptr %489, align 8, !tbaa !32
  %581 = icmp eq ptr %580, %579
  br i1 %581, label %685, label %582

582:                                              ; preds = %578
  %583 = ptrtoint ptr %580 to i64
  %584 = ptrtoint ptr %579 to i64
  %585 = zext i32 %575 to i64
  %586 = icmp ult i32 %575, 8
  %587 = sub i64 %584, %583
  %588 = icmp ult i64 %587, 32
  %589 = or i1 %586, %588
  br i1 %589, label %629, label %590

590:                                              ; preds = %582
  %591 = icmp ult i32 %575, 32
  br i1 %591, label %613, label %592

592:                                              ; preds = %590
  %593 = and i64 %585, 4294967264
  br label %594

594:                                              ; preds = %594, %592
  %595 = phi i64 [ 0, %592 ], [ %602, %594 ]
  %596 = getelementptr i8, ptr %579, i64 %595
  %597 = getelementptr i8, ptr %580, i64 %595
  %598 = getelementptr i8, ptr %597, i64 16
  %599 = load <16 x i8>, ptr %597, align 1, !tbaa !33
  %600 = load <16 x i8>, ptr %598, align 1, !tbaa !33
  %601 = getelementptr i8, ptr %596, i64 16
  store <16 x i8> %599, ptr %596, align 1, !tbaa !33
  store <16 x i8> %600, ptr %601, align 1, !tbaa !33
  %602 = add nuw i64 %595, 32
  %603 = icmp eq i64 %602, %593
  br i1 %603, label %604, label %594, !llvm.loop !51

604:                                              ; preds = %594
  %605 = icmp eq i64 %593, %585
  br i1 %605, label %683, label %606

606:                                              ; preds = %604
  %607 = trunc i64 %593 to i32
  %608 = sub i32 %575, %607
  %609 = getelementptr i8, ptr %580, i64 %593
  %610 = getelementptr i8, ptr %579, i64 %593
  %611 = and i64 %585, 24
  %612 = icmp eq i64 %611, 0
  br i1 %612, label %629, label %613

613:                                              ; preds = %590, %606
  %614 = phi i64 [ %593, %606 ], [ 0, %590 ]
  %615 = and i64 %585, 4294967288
  %616 = getelementptr i8, ptr %579, i64 %615
  %617 = getelementptr i8, ptr %580, i64 %615
  %618 = trunc i64 %615 to i32
  %619 = sub i32 %575, %618
  br label %620

620:                                              ; preds = %620, %613
  %621 = phi i64 [ %614, %613 ], [ %625, %620 ]
  %622 = getelementptr i8, ptr %579, i64 %621
  %623 = getelementptr i8, ptr %580, i64 %621
  %624 = load <8 x i8>, ptr %623, align 1, !tbaa !33
  store <8 x i8> %624, ptr %622, align 1, !tbaa !33
  %625 = add nuw i64 %621, 8
  %626 = icmp eq i64 %625, %615
  br i1 %626, label %627, label %620, !llvm.loop !52

627:                                              ; preds = %620
  %628 = icmp eq i64 %615, %585
  br i1 %628, label %683, label %629

629:                                              ; preds = %582, %606, %627
  %630 = phi ptr [ %579, %582 ], [ %610, %606 ], [ %616, %627 ]
  %631 = phi ptr [ %580, %582 ], [ %609, %606 ], [ %617, %627 ]
  %632 = phi i32 [ %575, %582 ], [ %608, %606 ], [ %619, %627 ]
  %633 = add i32 %632, -1
  %634 = and i32 %632, 7
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %647, label %636

636:                                              ; preds = %629, %636
  %637 = phi ptr [ %643, %636 ], [ %630, %629 ]
  %638 = phi ptr [ %644, %636 ], [ %631, %629 ]
  %639 = phi i32 [ %642, %636 ], [ %632, %629 ]
  %640 = phi i32 [ %645, %636 ], [ 0, %629 ]
  %641 = load i8, ptr %638, align 1, !tbaa !33
  store i8 %641, ptr %637, align 1, !tbaa !33
  %642 = add i32 %639, -1
  %643 = getelementptr inbounds i8, ptr %637, i64 1
  %644 = getelementptr inbounds i8, ptr %638, i64 1
  %645 = add i32 %640, 1
  %646 = icmp eq i32 %645, %634
  br i1 %646, label %647, label %636, !llvm.loop !53

647:                                              ; preds = %636, %629
  %648 = phi ptr [ %630, %629 ], [ %643, %636 ]
  %649 = phi ptr [ %631, %629 ], [ %644, %636 ]
  %650 = phi i32 [ %632, %629 ], [ %642, %636 ]
  %651 = icmp ult i32 %633, 7
  br i1 %651, label %683, label %652

652:                                              ; preds = %647, %652
  %653 = phi ptr [ %679, %652 ], [ %648, %647 ]
  %654 = phi ptr [ %680, %652 ], [ %649, %647 ]
  %655 = phi i32 [ %678, %652 ], [ %650, %647 ]
  %656 = load i8, ptr %654, align 1, !tbaa !33
  store i8 %656, ptr %653, align 1, !tbaa !33
  %657 = getelementptr inbounds i8, ptr %653, i64 1
  %658 = getelementptr inbounds i8, ptr %654, i64 1
  %659 = load i8, ptr %658, align 1, !tbaa !33
  store i8 %659, ptr %657, align 1, !tbaa !33
  %660 = getelementptr inbounds i8, ptr %653, i64 2
  %661 = getelementptr inbounds i8, ptr %654, i64 2
  %662 = load i8, ptr %661, align 1, !tbaa !33
  store i8 %662, ptr %660, align 1, !tbaa !33
  %663 = getelementptr inbounds i8, ptr %653, i64 3
  %664 = getelementptr inbounds i8, ptr %654, i64 3
  %665 = load i8, ptr %664, align 1, !tbaa !33
  store i8 %665, ptr %663, align 1, !tbaa !33
  %666 = getelementptr inbounds i8, ptr %653, i64 4
  %667 = getelementptr inbounds i8, ptr %654, i64 4
  %668 = load i8, ptr %667, align 1, !tbaa !33
  store i8 %668, ptr %666, align 1, !tbaa !33
  %669 = getelementptr inbounds i8, ptr %653, i64 5
  %670 = getelementptr inbounds i8, ptr %654, i64 5
  %671 = load i8, ptr %670, align 1, !tbaa !33
  store i8 %671, ptr %669, align 1, !tbaa !33
  %672 = getelementptr inbounds i8, ptr %653, i64 6
  %673 = getelementptr inbounds i8, ptr %654, i64 6
  %674 = load i8, ptr %673, align 1, !tbaa !33
  store i8 %674, ptr %672, align 1, !tbaa !33
  %675 = getelementptr inbounds i8, ptr %653, i64 7
  %676 = getelementptr inbounds i8, ptr %654, i64 7
  %677 = load i8, ptr %676, align 1, !tbaa !33
  store i8 %677, ptr %675, align 1, !tbaa !33
  %678 = add i32 %655, -8
  %679 = getelementptr inbounds i8, ptr %653, i64 8
  %680 = getelementptr inbounds i8, ptr %654, i64 8
  %681 = icmp eq i32 %678, 0
  br i1 %681, label %683, label %652, !llvm.loop !54

682:                                              ; preds = %685
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

683:                                              ; preds = %647, %652, %627, %604
  %684 = load i32, ptr %484, align 8, !tbaa !31
  br label %685

685:                                              ; preds = %683, %578, %576
  %686 = phi i32 [ %684, %683 ], [ %575, %578 ], [ 0, %576 ]
  %687 = load i32, ptr %486, align 8, !tbaa !24
  %688 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %687, i32 %686), !nosanitize !18
  %689 = extractvalue { i32, i1 } %688, 1, !nosanitize !18
  br i1 %689, label %682, label %690, !nosanitize !18

690:                                              ; preds = %685
  %691 = extractvalue { i32, i1 } %688, 0, !nosanitize !18
  %692 = load ptr, ptr %490, align 8, !tbaa !26
  %693 = zext i32 %686 to i64
  %694 = getelementptr inbounds i8, ptr %692, i64 %693
  store i32 0, ptr %491, align 4, !tbaa !15
  %695 = tail call ptr @__errno_location() #17
  store i32 0, ptr %695, align 4, !tbaa !42
  br label %696

696:                                              ; preds = %715, %690
  %697 = phi i32 [ 0, %690 ], [ %716, %715 ]
  %698 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %691, i32 %697), !nosanitize !18
  %699 = extractvalue { i32, i1 } %698, 1, !nosanitize !18
  br i1 %699, label %700, label %701, !nosanitize !18

700:                                              ; preds = %696
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

701:                                              ; preds = %696
  %702 = extractvalue { i32, i1 } %698, 0, !nosanitize !18
  %703 = tail call i32 @llvm.umin.i32(i32 %702, i32 1073741824)
  %704 = load i32, ptr %492, align 4, !tbaa !43
  %705 = zext i32 %697 to i64
  %706 = getelementptr inbounds i8, ptr %694, i64 %705
  %707 = zext nneg i32 %703 to i64
  %708 = tail call i64 @read(i32 noundef %704, ptr noundef %706, i64 noundef %707) #14
  %709 = trunc i64 %708 to i32
  %710 = icmp slt i32 %709, 1
  br i1 %710, label %718, label %711

711:                                              ; preds = %701
  %712 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %697, i32 %709), !nosanitize !18
  %713 = extractvalue { i32, i1 } %712, 1, !nosanitize !18
  br i1 %713, label %714, label %715, !nosanitize !18

714:                                              ; preds = %711
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

715:                                              ; preds = %711
  %716 = extractvalue { i32, i1 } %712, 0, !nosanitize !18
  %717 = icmp ult i32 %716, %691
  br i1 %717, label %696, label %731, !llvm.loop !44

718:                                              ; preds = %701
  %719 = icmp slt i32 %709, 0
  br i1 %719, label %720, label %727

720:                                              ; preds = %718
  %721 = load i32, ptr %695, align 4, !tbaa !42
  %722 = icmp eq i32 %721, 11
  br i1 %722, label %723, label %728

723:                                              ; preds = %720
  store i32 1, ptr %491, align 4, !tbaa !15
  %724 = icmp eq i32 %697, 0
  br i1 %724, label %725, label %731

725:                                              ; preds = %723
  %726 = load i32, ptr %695, align 4, !tbaa !42
  br label %728

727:                                              ; preds = %718
  store i32 1, ptr %483, align 8, !tbaa !21
  br label %731

728:                                              ; preds = %720, %725
  %729 = phi i32 [ %726, %725 ], [ %721, %720 ]
  %730 = tail call ptr @strerror(i32 noundef %729) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %730) #14
  br label %935

731:                                              ; preds = %715, %727, %723
  %732 = phi i32 [ %697, %727 ], [ %697, %723 ], [ %716, %715 ]
  %733 = load i32, ptr %484, align 8, !tbaa !31
  %734 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %733, i32 %732), !nosanitize !18
  %735 = extractvalue { i32, i1 } %734, 1, !nosanitize !18
  br i1 %735, label %736, label %737, !nosanitize !18

736:                                              ; preds = %731
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

737:                                              ; preds = %731
  %738 = extractvalue { i32, i1 } %734, 0, !nosanitize !18
  store i32 %738, ptr %484, align 8, !tbaa !31
  %739 = load ptr, ptr %490, align 8, !tbaa !26
  store ptr %739, ptr %489, align 8, !tbaa !32
  br label %740

740:                                              ; preds = %737, %572
  %741 = phi i32 [ %738, %737 ], [ %575, %572 ]
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %772, label %743

743:                                              ; preds = %740
  %744 = load i32, ptr %491, align 4, !tbaa !15
  %745 = icmp ne i32 %744, 0
  %746 = icmp ult i32 %741, 4
  %747 = and i1 %746, %745
  br i1 %747, label %772, label %748

748:                                              ; preds = %743
  %749 = icmp ugt i32 %741, 3
  %750 = load ptr, ptr %489, align 8, !tbaa !32
  br i1 %749, label %751, label %768

751:                                              ; preds = %748
  %752 = load i8, ptr %750, align 1, !tbaa !33
  %753 = icmp eq i8 %752, 31
  br i1 %753, label %754, label %768

754:                                              ; preds = %751
  %755 = getelementptr inbounds i8, ptr %750, i64 1
  %756 = load i8, ptr %755, align 1, !tbaa !33
  %757 = icmp eq i8 %756, -117
  br i1 %757, label %758, label %768

758:                                              ; preds = %754
  %759 = getelementptr inbounds i8, ptr %750, i64 2
  %760 = load i8, ptr %759, align 1, !tbaa !33
  %761 = icmp eq i8 %760, 8
  br i1 %761, label %762, label %768

762:                                              ; preds = %758
  %763 = getelementptr inbounds i8, ptr %750, i64 3
  %764 = load i8, ptr %763, align 1, !tbaa !33
  %765 = icmp ult i8 %764, 32
  br i1 %765, label %766, label %768

766:                                              ; preds = %762
  %767 = tail call i32 @inflateReset(ptr noundef nonnull %489) #14
  store i32 2, ptr %485, align 8, !tbaa !23
  br label %919

768:                                              ; preds = %762, %758, %754, %751, %748
  %769 = load ptr, ptr %496, align 8, !tbaa !27
  store ptr %769, ptr %482, align 8, !tbaa !19
  %770 = zext i32 %741 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %769, ptr align 1 %750, i64 %770, i1 false)
  %771 = load i32, ptr %484, align 8, !tbaa !31
  store i32 %771, ptr %0, align 8, !tbaa !17
  store i32 0, ptr %484, align 8, !tbaa !31
  store i32 1, ptr %485, align 8, !tbaa !23
  br label %924

772:                                              ; preds = %743, %740, %565
  %773 = load i32, ptr %485, align 8, !tbaa !23
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %1101, label %922

775:                                              ; preds = %537
  %776 = load ptr, ptr %496, align 8, !tbaa !27
  %777 = load i32, ptr %486, align 8, !tbaa !24
  %778 = shl i32 %777, 1
  store i32 0, ptr %491, align 4, !tbaa !15
  %779 = tail call ptr @__errno_location() #17
  store i32 0, ptr %779, align 4, !tbaa !42
  store i32 0, ptr %0, align 4, !tbaa !42
  br label %780

780:                                              ; preds = %800, %775
  %781 = phi i32 [ %801, %800 ], [ 0, %775 ]
  %782 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %778, i32 %781), !nosanitize !18
  %783 = extractvalue { i32, i1 } %782, 1, !nosanitize !18
  br i1 %783, label %784, label %785, !nosanitize !18

784:                                              ; preds = %780
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

785:                                              ; preds = %780
  %786 = extractvalue { i32, i1 } %782, 0, !nosanitize !18
  %787 = tail call i32 @llvm.umin.i32(i32 %786, i32 1073741824)
  %788 = load i32, ptr %492, align 4, !tbaa !43
  %789 = zext i32 %781 to i64
  %790 = getelementptr inbounds i8, ptr %776, i64 %789
  %791 = zext nneg i32 %787 to i64
  %792 = tail call i64 @read(i32 noundef %788, ptr noundef %790, i64 noundef %791) #14
  %793 = trunc i64 %792 to i32
  %794 = icmp slt i32 %793, 1
  br i1 %794, label %803, label %795

795:                                              ; preds = %785
  %796 = load i32, ptr %0, align 4, !tbaa !42
  %797 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %796, i32 %793), !nosanitize !18
  %798 = extractvalue { i32, i1 } %797, 1, !nosanitize !18
  br i1 %798, label %799, label %800, !nosanitize !18

799:                                              ; preds = %795
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

800:                                              ; preds = %795
  %801 = extractvalue { i32, i1 } %797, 0, !nosanitize !18
  store i32 %801, ptr %0, align 4, !tbaa !42
  %802 = icmp ult i32 %801, %778
  br i1 %802, label %780, label %817, !llvm.loop !44

803:                                              ; preds = %785
  %804 = icmp slt i32 %793, 0
  br i1 %804, label %805, label %813

805:                                              ; preds = %803
  %806 = load i32, ptr %779, align 4, !tbaa !42
  %807 = icmp eq i32 %806, 11
  br i1 %807, label %808, label %814

808:                                              ; preds = %805
  store i32 1, ptr %491, align 4, !tbaa !15
  %809 = load i32, ptr %0, align 4, !tbaa !42
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %811, label %817

811:                                              ; preds = %808
  %812 = load i32, ptr %779, align 4, !tbaa !42
  br label %814

813:                                              ; preds = %803
  store i32 1, ptr %483, align 8, !tbaa !21
  br label %817

814:                                              ; preds = %811, %805
  %815 = phi i32 [ %812, %811 ], [ %806, %805 ]
  %816 = tail call ptr @strerror(i32 noundef %815) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %816) #14
  br label %935

817:                                              ; preds = %800, %813, %808
  %818 = load ptr, ptr %496, align 8, !tbaa !27
  store ptr %818, ptr %482, align 8, !tbaa !19
  br label %1101

819:                                              ; preds = %537
  %820 = load i32, ptr %486, align 8, !tbaa !24
  %821 = shl i32 %820, 1
  store i32 %821, ptr %487, align 8, !tbaa !45
  %822 = load ptr, ptr %496, align 8, !tbaa !27
  store ptr %822, ptr %488, align 8, !tbaa !46
  br label %823

823:                                              ; preds = %902, %819
  %824 = phi i32 [ 0, %819 ], [ %887, %902 ]
  %825 = load i32, ptr %484, align 8, !tbaa !31
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %827, label %886

827:                                              ; preds = %823
  %828 = load i32, ptr %10, align 8, !tbaa !14
  switch i32 %828, label %906 [
    i32 0, label %829
    i32 -5, label %829
  ]

829:                                              ; preds = %827, %827
  %830 = load i32, ptr %483, align 8, !tbaa !21
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %832, label %882

832:                                              ; preds = %829
  %833 = load i32, ptr %486, align 8, !tbaa !24
  %834 = load ptr, ptr %490, align 8, !tbaa !26
  store i32 0, ptr %491, align 4, !tbaa !15
  %835 = tail call ptr @__errno_location() #17
  store i32 0, ptr %835, align 4, !tbaa !42
  br label %836

836:                                              ; preds = %855, %832
  %837 = phi i32 [ 0, %832 ], [ %856, %855 ]
  %838 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %833, i32 %837), !nosanitize !18
  %839 = extractvalue { i32, i1 } %838, 1, !nosanitize !18
  br i1 %839, label %840, label %841, !nosanitize !18

840:                                              ; preds = %836
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

841:                                              ; preds = %836
  %842 = extractvalue { i32, i1 } %838, 0, !nosanitize !18
  %843 = tail call i32 @llvm.umin.i32(i32 %842, i32 1073741824)
  %844 = load i32, ptr %492, align 4, !tbaa !43
  %845 = zext i32 %837 to i64
  %846 = getelementptr inbounds i8, ptr %834, i64 %845
  %847 = zext nneg i32 %843 to i64
  %848 = tail call i64 @read(i32 noundef %844, ptr noundef %846, i64 noundef %847) #14
  %849 = trunc i64 %848 to i32
  %850 = icmp slt i32 %849, 1
  br i1 %850, label %858, label %851

851:                                              ; preds = %841
  %852 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %837, i32 %849), !nosanitize !18
  %853 = extractvalue { i32, i1 } %852, 1, !nosanitize !18
  br i1 %853, label %854, label %855, !nosanitize !18

854:                                              ; preds = %851
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

855:                                              ; preds = %851
  %856 = extractvalue { i32, i1 } %852, 0, !nosanitize !18
  %857 = icmp ult i32 %856, %833
  br i1 %857, label %836, label %872, !llvm.loop !44

858:                                              ; preds = %841
  %859 = icmp slt i32 %849, 0
  br i1 %859, label %860, label %867

860:                                              ; preds = %858
  %861 = load i32, ptr %835, align 4, !tbaa !42
  %862 = icmp eq i32 %861, 11
  br i1 %862, label %863, label %868

863:                                              ; preds = %860
  store i32 1, ptr %491, align 4, !tbaa !15
  %864 = icmp eq i32 %837, 0
  br i1 %864, label %865, label %872

865:                                              ; preds = %863
  %866 = load i32, ptr %835, align 4, !tbaa !42
  br label %868

867:                                              ; preds = %858
  store i32 1, ptr %483, align 8, !tbaa !21
  br label %872

868:                                              ; preds = %860, %865
  %869 = phi i32 [ %866, %865 ], [ %861, %860 ]
  %870 = tail call ptr @strerror(i32 noundef %869) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %870) #14
  %871 = load i32, ptr %10, align 8, !tbaa !14
  br label %906

872:                                              ; preds = %855, %867, %863
  %873 = phi i32 [ %837, %867 ], [ %837, %863 ], [ %856, %855 ]
  %874 = load i32, ptr %484, align 8, !tbaa !31
  %875 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %874, i32 %873), !nosanitize !18
  %876 = extractvalue { i32, i1 } %875, 1, !nosanitize !18
  br i1 %876, label %877, label %878, !nosanitize !18

877:                                              ; preds = %872
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

878:                                              ; preds = %872
  %879 = extractvalue { i32, i1 } %875, 0, !nosanitize !18
  store i32 %879, ptr %484, align 8, !tbaa !31
  %880 = load ptr, ptr %490, align 8, !tbaa !26
  store ptr %880, ptr %489, align 8, !tbaa !32
  %881 = icmp eq i32 %879, 0
  br i1 %881, label %882, label %886

882:                                              ; preds = %878, %829
  %883 = load i32, ptr %491, align 4, !tbaa !15
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %885, label %906

885:                                              ; preds = %882
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %906

886:                                              ; preds = %878, %823
  %887 = tail call i32 @inflate(ptr noundef nonnull %489, i32 noundef 0) #14
  %888 = load i32, ptr %487, align 8, !tbaa !45
  %889 = icmp ult i32 %888, %821
  br i1 %889, label %890, label %891

890:                                              ; preds = %886
  store i32 0, ptr %493, align 4, !tbaa !30
  br label %891

891:                                              ; preds = %890, %886
  switch i32 %887, label %902 [
    i32 -2, label %892
    i32 2, label %892
    i32 -4, label %893
    i32 -3, label %894
  ]

892:                                              ; preds = %891, %891
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %906

893:                                              ; preds = %891
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %906

894:                                              ; preds = %891
  %895 = load i32, ptr %493, align 4, !tbaa !30
  %896 = icmp eq i32 %895, 1
  br i1 %896, label %897, label %898

897:                                              ; preds = %894
  store i32 0, ptr %484, align 8, !tbaa !31
  store i32 1, ptr %483, align 8, !tbaa !21
  store i32 0, ptr %485, align 8, !tbaa !23
  br label %906

898:                                              ; preds = %894
  %899 = load ptr, ptr %494, align 8, !tbaa !47
  %900 = icmp eq ptr %899, null
  %901 = select i1 %900, ptr @.str.6, ptr %899
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %901) #14
  br label %906

902:                                              ; preds = %891
  %903 = icmp ne i32 %888, 0
  %904 = icmp ne i32 %887, 1
  %905 = select i1 %903, i1 %904, i1 false
  br i1 %905, label %823, label %906, !llvm.loop !48

906:                                              ; preds = %902, %827, %898, %897, %893, %892, %885, %882, %868
  %907 = phi i32 [ %824, %882 ], [ %824, %885 ], [ %887, %892 ], [ -4, %893 ], [ 0, %897 ], [ -3, %898 ], [ %871, %868 ], [ %828, %827 ], [ %887, %902 ]
  %908 = load i32, ptr %487, align 8, !tbaa !45
  %909 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %821, i32 %908), !nosanitize !18
  %910 = extractvalue { i32, i1 } %909, 1, !nosanitize !18
  br i1 %910, label %911, label %912, !nosanitize !18

911:                                              ; preds = %906
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

912:                                              ; preds = %906
  %913 = extractvalue { i32, i1 } %909, 0, !nosanitize !18
  store i32 %913, ptr %0, align 8, !tbaa !17
  %914 = load ptr, ptr %488, align 8, !tbaa !46
  %915 = zext i32 %913 to i64
  %916 = sub nsw i64 0, %915
  %917 = getelementptr inbounds i8, ptr %914, i64 %916
  store ptr %917, ptr %482, align 8, !tbaa !19
  switch i32 %907, label %935 [
    i32 1, label %919
    i32 0, label %922
  ]

918:                                              ; preds = %537
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %935

919:                                              ; preds = %912, %766
  %920 = phi i32 [ 1, %766 ], [ 0, %912 ]
  %921 = phi ptr [ %499, %766 ], [ %485, %912 ]
  store i32 %920, ptr %493, align 4, !tbaa !30
  store i32 0, ptr %921, align 8, !tbaa !42
  br label %922

922:                                              ; preds = %919, %912, %772
  %923 = load i32, ptr %0, align 8, !tbaa !17
  br label %924

924:                                              ; preds = %922, %768
  %925 = phi i32 [ %923, %922 ], [ %771, %768 ]
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %927, label %1101

927:                                              ; preds = %924
  %928 = load i32, ptr %483, align 8, !tbaa !21
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %933, label %930

930:                                              ; preds = %927
  %931 = load i32, ptr %484, align 8, !tbaa !31
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %1101, label %933

933:                                              ; preds = %930, %927
  %934 = load i32, ptr %485, align 8, !tbaa !23
  br label %537, !llvm.loop !49

935:                                              ; preds = %912, %570, %918, %814, %728, %556, %552
  %936 = load i32, ptr %0, align 8, !tbaa !17
  %937 = icmp eq i32 %936, 0
  %938 = sext i1 %937 to i32
  br label %1101

939:                                              ; preds = %532
  %940 = icmp eq i32 %530, 1
  br i1 %940, label %941, label %978

941:                                              ; preds = %939
  store i32 0, ptr %491, align 4, !tbaa !15
  %942 = tail call ptr @__errno_location() #17
  store i32 0, ptr %942, align 4, !tbaa !42
  br label %943

943:                                              ; preds = %962, %941
  %944 = phi i32 [ 0, %941 ], [ %963, %962 ]
  %945 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %505, i32 %944), !nosanitize !18
  %946 = extractvalue { i32, i1 } %945, 1, !nosanitize !18
  br i1 %946, label %947, label %948, !nosanitize !18

947:                                              ; preds = %943
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

948:                                              ; preds = %943
  %949 = extractvalue { i32, i1 } %945, 0, !nosanitize !18
  %950 = tail call i32 @llvm.umin.i32(i32 %949, i32 1073741824)
  %951 = load i32, ptr %492, align 4, !tbaa !43
  %952 = zext i32 %944 to i64
  %953 = getelementptr inbounds i8, ptr %501, i64 %952
  %954 = zext nneg i32 %950 to i64
  %955 = tail call i64 @read(i32 noundef %951, ptr noundef %953, i64 noundef %954) #14
  %956 = trunc i64 %955 to i32
  %957 = icmp slt i32 %956, 1
  br i1 %957, label %965, label %958

958:                                              ; preds = %948
  %959 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %944, i32 %956), !nosanitize !18
  %960 = extractvalue { i32, i1 } %959, 1, !nosanitize !18
  br i1 %960, label %961, label %962, !nosanitize !18

961:                                              ; preds = %958
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

962:                                              ; preds = %958
  %963 = extractvalue { i32, i1 } %959, 0, !nosanitize !18
  %964 = icmp ult i32 %963, %505
  br i1 %964, label %943, label %1081, !llvm.loop !44

965:                                              ; preds = %948
  %966 = icmp slt i32 %956, 0
  br i1 %966, label %967, label %977

967:                                              ; preds = %965
  %968 = load i32, ptr %942, align 4, !tbaa !42
  %969 = icmp eq i32 %968, 11
  br i1 %969, label %970, label %974

970:                                              ; preds = %967
  store i32 1, ptr %491, align 4, !tbaa !15
  %971 = icmp eq i32 %944, 0
  br i1 %971, label %972, label %1083

972:                                              ; preds = %970
  %973 = load i32, ptr %942, align 4, !tbaa !42
  br label %974

974:                                              ; preds = %972, %967
  %975 = phi i32 [ %973, %972 ], [ %968, %967 ]
  %976 = tail call ptr @strerror(i32 noundef %975) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %976) #14
  br label %1083

977:                                              ; preds = %965
  store i32 1, ptr %483, align 8, !tbaa !21
  br label %1083

978:                                              ; preds = %939
  store i32 %505, ptr %487, align 8, !tbaa !55
  store ptr %501, ptr %488, align 8, !tbaa !56
  br label %979

979:                                              ; preds = %1058, %978
  %980 = phi i32 [ 0, %978 ], [ %1043, %1058 ]
  %981 = load i32, ptr %484, align 8, !tbaa !31
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %983, label %1042

983:                                              ; preds = %979
  %984 = load i32, ptr %10, align 8, !tbaa !14
  switch i32 %984, label %1062 [
    i32 0, label %985
    i32 -5, label %985
  ]

985:                                              ; preds = %983, %983
  %986 = load i32, ptr %483, align 8, !tbaa !21
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %988, label %1038

988:                                              ; preds = %985
  %989 = load i32, ptr %486, align 8, !tbaa !24
  %990 = load ptr, ptr %490, align 8, !tbaa !26
  store i32 0, ptr %491, align 4, !tbaa !15
  %991 = tail call ptr @__errno_location() #17
  store i32 0, ptr %991, align 4, !tbaa !42
  br label %992

992:                                              ; preds = %1011, %988
  %993 = phi i32 [ 0, %988 ], [ %1012, %1011 ]
  %994 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %989, i32 %993), !nosanitize !18
  %995 = extractvalue { i32, i1 } %994, 1, !nosanitize !18
  br i1 %995, label %996, label %997, !nosanitize !18

996:                                              ; preds = %992
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

997:                                              ; preds = %992
  %998 = extractvalue { i32, i1 } %994, 0, !nosanitize !18
  %999 = tail call i32 @llvm.umin.i32(i32 %998, i32 1073741824)
  %1000 = load i32, ptr %492, align 4, !tbaa !43
  %1001 = zext i32 %993 to i64
  %1002 = getelementptr inbounds i8, ptr %990, i64 %1001
  %1003 = zext nneg i32 %999 to i64
  %1004 = tail call i64 @read(i32 noundef %1000, ptr noundef %1002, i64 noundef %1003) #14
  %1005 = trunc i64 %1004 to i32
  %1006 = icmp slt i32 %1005, 1
  br i1 %1006, label %1014, label %1007

1007:                                             ; preds = %997
  %1008 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %993, i32 %1005), !nosanitize !18
  %1009 = extractvalue { i32, i1 } %1008, 1, !nosanitize !18
  br i1 %1009, label %1010, label %1011, !nosanitize !18

1010:                                             ; preds = %1007
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

1011:                                             ; preds = %1007
  %1012 = extractvalue { i32, i1 } %1008, 0, !nosanitize !18
  %1013 = icmp ult i32 %1012, %989
  br i1 %1013, label %992, label %1028, !llvm.loop !44

1014:                                             ; preds = %997
  %1015 = icmp slt i32 %1005, 0
  br i1 %1015, label %1016, label %1023

1016:                                             ; preds = %1014
  %1017 = load i32, ptr %991, align 4, !tbaa !42
  %1018 = icmp eq i32 %1017, 11
  br i1 %1018, label %1019, label %1024

1019:                                             ; preds = %1016
  store i32 1, ptr %491, align 4, !tbaa !15
  %1020 = icmp eq i32 %993, 0
  br i1 %1020, label %1021, label %1028

1021:                                             ; preds = %1019
  %1022 = load i32, ptr %991, align 4, !tbaa !42
  br label %1024

1023:                                             ; preds = %1014
  store i32 1, ptr %483, align 8, !tbaa !21
  br label %1028

1024:                                             ; preds = %1016, %1021
  %1025 = phi i32 [ %1022, %1021 ], [ %1017, %1016 ]
  %1026 = tail call ptr @strerror(i32 noundef %1025) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1026) #14
  %1027 = load i32, ptr %10, align 8, !tbaa !14
  br label %1062

1028:                                             ; preds = %1011, %1023, %1019
  %1029 = phi i32 [ %993, %1023 ], [ %993, %1019 ], [ %1012, %1011 ]
  %1030 = load i32, ptr %484, align 8, !tbaa !31
  %1031 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1030, i32 %1029), !nosanitize !18
  %1032 = extractvalue { i32, i1 } %1031, 1, !nosanitize !18
  br i1 %1032, label %1033, label %1034, !nosanitize !18

1033:                                             ; preds = %1028
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

1034:                                             ; preds = %1028
  %1035 = extractvalue { i32, i1 } %1031, 0, !nosanitize !18
  store i32 %1035, ptr %484, align 8, !tbaa !31
  %1036 = load ptr, ptr %490, align 8, !tbaa !26
  store ptr %1036, ptr %489, align 8, !tbaa !32
  %1037 = icmp eq i32 %1035, 0
  br i1 %1037, label %1038, label %1042

1038:                                             ; preds = %1034, %985
  %1039 = load i32, ptr %491, align 4, !tbaa !15
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1041, label %1062

1041:                                             ; preds = %1038
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %1062

1042:                                             ; preds = %1034, %979
  %1043 = tail call i32 @inflate(ptr noundef nonnull %489, i32 noundef 0) #14
  %1044 = load i32, ptr %487, align 8, !tbaa !45
  %1045 = icmp ult i32 %1044, %505
  br i1 %1045, label %1046, label %1047

1046:                                             ; preds = %1042
  store i32 0, ptr %493, align 4, !tbaa !30
  br label %1047

1047:                                             ; preds = %1046, %1042
  switch i32 %1043, label %1058 [
    i32 -2, label %1048
    i32 2, label %1048
    i32 -4, label %1049
    i32 -3, label %1050
  ]

1048:                                             ; preds = %1047, %1047
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %1062

1049:                                             ; preds = %1047
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1062

1050:                                             ; preds = %1047
  %1051 = load i32, ptr %493, align 4, !tbaa !30
  %1052 = icmp eq i32 %1051, 1
  br i1 %1052, label %1053, label %1054

1053:                                             ; preds = %1050
  store i32 0, ptr %484, align 8, !tbaa !31
  store i32 1, ptr %483, align 8, !tbaa !21
  store i32 0, ptr %485, align 8, !tbaa !23
  br label %1062

1054:                                             ; preds = %1050
  %1055 = load ptr, ptr %494, align 8, !tbaa !47
  %1056 = icmp eq ptr %1055, null
  %1057 = select i1 %1056, ptr @.str.6, ptr %1055
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1057) #14
  br label %1062

1058:                                             ; preds = %1047
  %1059 = icmp ne i32 %1044, 0
  %1060 = icmp ne i32 %1043, 1
  %1061 = select i1 %1059, i1 %1060, i1 false
  br i1 %1061, label %979, label %1062, !llvm.loop !48

1062:                                             ; preds = %1058, %983, %1054, %1053, %1049, %1048, %1041, %1038, %1024
  %1063 = phi i32 [ %980, %1038 ], [ %980, %1041 ], [ %1043, %1048 ], [ -4, %1049 ], [ 0, %1053 ], [ -3, %1054 ], [ %1027, %1024 ], [ %1043, %1058 ], [ %984, %983 ]
  %1064 = load i32, ptr %487, align 8, !tbaa !45
  %1065 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %505, i32 %1064), !nosanitize !18
  %1066 = extractvalue { i32, i1 } %1065, 1, !nosanitize !18
  br i1 %1066, label %1067, label %1068, !nosanitize !18

1067:                                             ; preds = %1062
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

1068:                                             ; preds = %1062
  %1069 = extractvalue { i32, i1 } %1065, 0, !nosanitize !18
  %1070 = load ptr, ptr %488, align 8, !tbaa !46
  %1071 = zext i32 %1069 to i64
  %1072 = sub nsw i64 0, %1071
  %1073 = getelementptr inbounds i8, ptr %1070, i64 %1072
  store ptr %1073, ptr %482, align 8, !tbaa !19
  %1074 = icmp eq i32 %1063, 1
  br i1 %1074, label %1075, label %1076

1075:                                             ; preds = %1068
  store i32 0, ptr %493, align 4, !tbaa !30
  store i32 0, ptr %485, align 8, !tbaa !23
  br label %1079

1076:                                             ; preds = %1068
  %1077 = icmp ne i32 %1063, 0
  %1078 = sext i1 %1077 to i32
  br label %1079

1079:                                             ; preds = %1076, %1075
  %1080 = phi i32 [ 0, %1075 ], [ %1078, %1076 ]
  store i32 0, ptr %0, align 8, !tbaa !17
  br label %1083

1081:                                             ; preds = %962
  %1082 = zext i32 %963 to i64
  br label %1083

1083:                                             ; preds = %1081, %1079, %977, %974, %970, %518
  %1084 = phi i64 [ %1082, %1081 ], [ %952, %977 ], [ %952, %974 ], [ %952, %970 ], [ %511, %518 ], [ %1071, %1079 ]
  %1085 = phi i32 [ 0, %1081 ], [ 0, %977 ], [ -1, %974 ], [ 0, %970 ], [ %522, %518 ], [ %1080, %1079 ]
  %1086 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %502, i64 %1084), !nosanitize !18
  %1087 = extractvalue { i64, i1 } %1086, 0, !nosanitize !18
  %1088 = extractvalue { i64, i1 } %1086, 1, !nosanitize !18
  br i1 %1088, label %517, label %1089, !nosanitize !18

1089:                                             ; preds = %1083
  %1090 = getelementptr inbounds i8, ptr %501, i64 %1084
  %1091 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %503, i64 %1084), !nosanitize !18
  %1092 = extractvalue { i64, i1 } %1091, 0, !nosanitize !18
  %1093 = extractvalue { i64, i1 } %1091, 1, !nosanitize !18
  br i1 %1093, label %1094, label %1095, !nosanitize !18

1094:                                             ; preds = %1095, %1089
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

1095:                                             ; preds = %1089
  %1096 = load i64, ptr %495, align 8, !tbaa !20
  %1097 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1096, i64 %1084), !nosanitize !18
  %1098 = extractvalue { i64, i1 } %1097, 1, !nosanitize !18
  br i1 %1098, label %1094, label %1099, !nosanitize !18

1099:                                             ; preds = %1095
  %1100 = extractvalue { i64, i1 } %1097, 0, !nosanitize !18
  store i64 %1100, ptr %495, align 8, !tbaa !20
  br label %1101

1101:                                             ; preds = %930, %924, %772, %1099, %935, %817
  %1102 = phi ptr [ %1090, %1099 ], [ %501, %935 ], [ %501, %817 ], [ %501, %772 ], [ %501, %924 ], [ %501, %930 ]
  %1103 = phi i64 [ %1087, %1099 ], [ %502, %935 ], [ %502, %817 ], [ %502, %772 ], [ %502, %924 ], [ %502, %930 ]
  %1104 = phi i64 [ %1092, %1099 ], [ %503, %935 ], [ %503, %817 ], [ %503, %772 ], [ %503, %924 ], [ %503, %930 ]
  %1105 = phi i32 [ %1085, %1099 ], [ %938, %935 ], [ 0, %817 ], [ 0, %772 ], [ 0, %924 ], [ 0, %930 ]
  %1106 = icmp ne i64 %1103, 0
  %1107 = icmp eq i32 %1105, 0
  %1108 = select i1 %1106, i1 %1107, i1 false
  br i1 %1108, label %500, label %1109, !llvm.loop !57

1109:                                             ; preds = %1101, %526
  %1110 = phi i64 [ %1103, %1101 ], [ %502, %526 ]
  %1111 = phi i64 [ %1104, %1101 ], [ %503, %526 ]
  %1112 = icmp eq i64 %1110, 0
  br i1 %1112, label %1118, label %1113

1113:                                             ; preds = %1109
  %1114 = load i32, ptr %483, align 8, !tbaa !21
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1118, label %1116

1116:                                             ; preds = %1113
  %1117 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  store i32 1, ptr %1117, align 4, !tbaa !58
  br label %1118

1118:                                             ; preds = %1109, %1113, %1116
  %1119 = trunc i64 %1111 to i32
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1121, label %1133

1121:                                             ; preds = %454, %1118, %19, %460, %356, %94, %98, %270
  %1122 = load i32, ptr %10, align 8, !tbaa !14
  br label %1123

1123:                                             ; preds = %112, %1121
  %1124 = phi i32 [ %1122, %1121 ], [ %113, %112 ]
  switch i32 %1124, label %1133 [
    i32 0, label %1125
    i32 -5, label %1125
  ]

1125:                                             ; preds = %1123, %1123
  %1126 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %1127 = load i32, ptr %1126, align 4, !tbaa !15
  %1128 = icmp eq i32 %1127, 0
  br i1 %1128, label %1133, label %1129

1129:                                             ; preds = %1125
  %1130 = tail call ptr @__errno_location() #17
  %1131 = load i32, ptr %1130, align 4, !tbaa !42
  %1132 = tail call ptr @strerror(i32 noundef %1131) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1132) #14
  br label %1133

1133:                                             ; preds = %1118, %1125, %1123, %12, %5, %3, %1129, %18
  %1134 = phi i32 [ -1, %18 ], [ -1, %1129 ], [ -1, %3 ], [ -1, %5 ], [ -1, %12 ], [ -1, %1123 ], [ 0, %1125 ], [ %1119, %1118 ]
  ret i32 %1134
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfread(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %1129, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %1129

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 19
  %12 = load i32, ptr %11, align 8, !tbaa !14
  switch i32 %12, label %13 [
    i32 0, label %17
    i32 -5, label %17
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 11
  %15 = load i32, ptr %14, align 4, !tbaa !15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %1129, label %17

17:                                               ; preds = %10, %10, %13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef 0, ptr noundef null) #14
  %18 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !nosanitize !18
  %19 = extractvalue { i64, i1 } %18, 0, !nosanitize !18
  %20 = extractvalue { i64, i1 } %18, 1, !nosanitize !18
  br i1 %20, label %21, label %22, !nosanitize !18

21:                                               ; preds = %17
  tail call void @llvm.ubsantrap(i8 12) #15, !nosanitize !18
  unreachable, !nosanitize !18

22:                                               ; preds = %17
  %23 = icmp eq i64 %1, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = udiv i64 %19, %1
  %26 = icmp eq i64 %25, %2
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.1) #14
  br label %1129

28:                                               ; preds = %24, %22
  %29 = icmp eq i64 %19, 0
  br i1 %29, label %1129, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 18
  %32 = load i64, ptr %31, align 8, !tbaa !16
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %489, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.gzFile_s, ptr %3, i64 0, i32 1
  %36 = getelementptr inbounds %struct.gzFile_s, ptr %3, i64 0, i32 2
  %37 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 13
  %38 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 1
  %39 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 10
  %40 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 4
  %41 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 4
  %42 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 7
  %43 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 3
  %44 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21
  %45 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 6
  %46 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 11
  %47 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 2
  %48 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 9
  %49 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 6
  %50 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 5
  %51 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 8
  %52 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 8
  br label %53

53:                                               ; preds = %486, %34
  %54 = phi i64 [ %487, %486 ], [ %32, %34 ]
  %55 = load i32, ptr %3, align 8, !tbaa !17
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %80, label %57

57:                                               ; preds = %53
  %58 = zext i32 %55 to i64
  %59 = icmp slt i64 %54, %58
  %60 = trunc i64 %54 to i32
  %61 = select i1 %59, i32 %60, i32 %55
  %62 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 %61), !nosanitize !18
  %63 = extractvalue { i32, i1 } %62, 1, !nosanitize !18
  br i1 %63, label %64, label %65, !nosanitize !18

64:                                               ; preds = %74, %57
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

65:                                               ; preds = %57
  %66 = extractvalue { i32, i1 } %62, 0, !nosanitize !18
  store i32 %66, ptr %3, align 8, !tbaa !17
  %67 = load ptr, ptr %35, align 8, !tbaa !19
  %68 = zext i32 %61 to i64
  %69 = getelementptr inbounds i8, ptr %67, i64 %68
  store ptr %69, ptr %35, align 8, !tbaa !19
  %70 = load i64, ptr %36, align 8, !tbaa !20
  %71 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %70, i64 %68), !nosanitize !18
  %72 = extractvalue { i64, i1 } %71, 1, !nosanitize !18
  br i1 %72, label %73, label %74, !nosanitize !18

73:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

74:                                               ; preds = %65
  %75 = extractvalue { i64, i1 } %71, 0, !nosanitize !18
  store i64 %75, ptr %36, align 8, !tbaa !20
  %76 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %54, i64 %68), !nosanitize !18
  %77 = extractvalue { i64, i1 } %76, 1, !nosanitize !18
  br i1 %77, label %64, label %78, !nosanitize !18

78:                                               ; preds = %74
  %79 = extractvalue { i64, i1 } %76, 0, !nosanitize !18
  store i64 %79, ptr %31, align 8, !tbaa !16
  br label %486

80:                                               ; preds = %53
  %81 = load i32, ptr %37, align 8, !tbaa !21
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, ptr %38, align 8, !tbaa !22
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %489, label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %483, %86
  %88 = load i32, ptr %39, align 8, !tbaa !23
  switch i32 %88, label %468 [
    i32 0, label %89
    i32 1, label %325
    i32 2, label %369
  ]

89:                                               ; preds = %87
  %90 = load i32, ptr %40, align 8, !tbaa !24
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %89
  %93 = load i32, ptr %50, align 4, !tbaa !25
  %94 = zext i32 %93 to i64
  %95 = tail call noalias ptr @malloc(i64 noundef %94) #16
  store ptr %95, ptr %45, align 8, !tbaa !26
  %96 = shl i32 %93, 1
  %97 = zext i32 %96 to i64
  %98 = tail call noalias ptr @malloc(i64 noundef %97) #16
  store ptr %98, ptr %42, align 8, !tbaa !27
  %99 = icmp eq ptr %95, null
  %100 = icmp eq ptr %98, null
  %101 = or i1 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  tail call void @free(ptr noundef %98) #14
  tail call void @free(ptr noundef %95) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1126

103:                                              ; preds = %92
  store i32 %93, ptr %40, align 8, !tbaa !24
  store i32 0, ptr %38, align 8, !tbaa !22
  store ptr null, ptr %44, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %104 = tail call i32 @inflateInit2_(ptr noundef nonnull %44, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %42, align 8, !tbaa !27
  tail call void @free(ptr noundef %107) #14
  %108 = load ptr, ptr %45, align 8, !tbaa !26
  tail call void @free(ptr noundef %108) #14
  store i32 0, ptr %40, align 8, !tbaa !24
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1126

109:                                              ; preds = %103, %89
  %110 = load i32, ptr %52, align 8, !tbaa !29
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, ptr %48, align 4, !tbaa !30
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112, %109
  %116 = tail call i32 @inflateReset(ptr noundef nonnull %44) #14
  store i32 2, ptr %39, align 8, !tbaa !23
  %117 = load i32, ptr %48, align 4, !tbaa !30
  %118 = icmp ne i32 %117, -1
  %119 = zext i1 %118 to i32
  store i32 %119, ptr %48, align 4, !tbaa !30
  store i32 0, ptr %52, align 8, !tbaa !29
  br label %322

120:                                              ; preds = %112
  %121 = load i32, ptr %11, align 8, !tbaa !14
  switch i32 %121, label %1126 [
    i32 0, label %122
    i32 -5, label %122
  ]

122:                                              ; preds = %120, %120
  %123 = load i32, ptr %37, align 8, !tbaa !21
  %124 = icmp eq i32 %123, 0
  %125 = load i32, ptr %38, align 8, !tbaa !31
  br i1 %124, label %126, label %290

126:                                              ; preds = %122
  %127 = icmp eq i32 %125, 0
  br i1 %127, label %235, label %128

128:                                              ; preds = %126
  %129 = load ptr, ptr %45, align 8, !tbaa !26
  %130 = load ptr, ptr %44, align 8, !tbaa !32
  %131 = icmp eq ptr %130, %129
  br i1 %131, label %235, label %132

132:                                              ; preds = %128
  %133 = ptrtoint ptr %130 to i64
  %134 = ptrtoint ptr %129 to i64
  %135 = zext i32 %125 to i64
  %136 = icmp ult i32 %125, 8
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
  %149 = load <16 x i8>, ptr %147, align 1, !tbaa !33
  %150 = load <16 x i8>, ptr %148, align 1, !tbaa !33
  %151 = getelementptr i8, ptr %146, i64 16
  store <16 x i8> %149, ptr %146, align 1, !tbaa !33
  store <16 x i8> %150, ptr %151, align 1, !tbaa !33
  %152 = add nuw i64 %145, 32
  %153 = icmp eq i64 %152, %143
  br i1 %153, label %154, label %144, !llvm.loop !59

154:                                              ; preds = %144
  %155 = icmp eq i64 %143, %135
  br i1 %155, label %233, label %156

156:                                              ; preds = %154
  %157 = trunc i64 %143 to i32
  %158 = sub i32 %125, %157
  %159 = getelementptr i8, ptr %130, i64 %143
  %160 = getelementptr i8, ptr %129, i64 %143
  %161 = and i64 %135, 24
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %179, label %163

163:                                              ; preds = %140, %156
  %164 = phi i64 [ %143, %156 ], [ 0, %140 ]
  %165 = and i64 %135, 4294967288
  %166 = getelementptr i8, ptr %129, i64 %165
  %167 = getelementptr i8, ptr %130, i64 %165
  %168 = trunc i64 %165 to i32
  %169 = sub i32 %125, %168
  br label %170

170:                                              ; preds = %170, %163
  %171 = phi i64 [ %164, %163 ], [ %175, %170 ]
  %172 = getelementptr i8, ptr %129, i64 %171
  %173 = getelementptr i8, ptr %130, i64 %171
  %174 = load <8 x i8>, ptr %173, align 1, !tbaa !33
  store <8 x i8> %174, ptr %172, align 1, !tbaa !33
  %175 = add nuw i64 %171, 8
  %176 = icmp eq i64 %175, %165
  br i1 %176, label %177, label %170, !llvm.loop !60

177:                                              ; preds = %170
  %178 = icmp eq i64 %165, %135
  br i1 %178, label %233, label %179

179:                                              ; preds = %132, %156, %177
  %180 = phi ptr [ %129, %132 ], [ %160, %156 ], [ %166, %177 ]
  %181 = phi ptr [ %130, %132 ], [ %159, %156 ], [ %167, %177 ]
  %182 = phi i32 [ %125, %132 ], [ %158, %156 ], [ %169, %177 ]
  %183 = add i32 %182, -1
  %184 = and i32 %182, 7
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %197, label %186

186:                                              ; preds = %179, %186
  %187 = phi ptr [ %193, %186 ], [ %180, %179 ]
  %188 = phi ptr [ %194, %186 ], [ %181, %179 ]
  %189 = phi i32 [ %192, %186 ], [ %182, %179 ]
  %190 = phi i32 [ %195, %186 ], [ 0, %179 ]
  %191 = load i8, ptr %188, align 1, !tbaa !33
  store i8 %191, ptr %187, align 1, !tbaa !33
  %192 = add i32 %189, -1
  %193 = getelementptr inbounds i8, ptr %187, i64 1
  %194 = getelementptr inbounds i8, ptr %188, i64 1
  %195 = add i32 %190, 1
  %196 = icmp eq i32 %195, %184
  br i1 %196, label %197, label %186, !llvm.loop !61

197:                                              ; preds = %186, %179
  %198 = phi ptr [ %180, %179 ], [ %193, %186 ]
  %199 = phi ptr [ %181, %179 ], [ %194, %186 ]
  %200 = phi i32 [ %182, %179 ], [ %192, %186 ]
  %201 = icmp ult i32 %183, 7
  br i1 %201, label %233, label %202

202:                                              ; preds = %197, %202
  %203 = phi ptr [ %229, %202 ], [ %198, %197 ]
  %204 = phi ptr [ %230, %202 ], [ %199, %197 ]
  %205 = phi i32 [ %228, %202 ], [ %200, %197 ]
  %206 = load i8, ptr %204, align 1, !tbaa !33
  store i8 %206, ptr %203, align 1, !tbaa !33
  %207 = getelementptr inbounds i8, ptr %203, i64 1
  %208 = getelementptr inbounds i8, ptr %204, i64 1
  %209 = load i8, ptr %208, align 1, !tbaa !33
  store i8 %209, ptr %207, align 1, !tbaa !33
  %210 = getelementptr inbounds i8, ptr %203, i64 2
  %211 = getelementptr inbounds i8, ptr %204, i64 2
  %212 = load i8, ptr %211, align 1, !tbaa !33
  store i8 %212, ptr %210, align 1, !tbaa !33
  %213 = getelementptr inbounds i8, ptr %203, i64 3
  %214 = getelementptr inbounds i8, ptr %204, i64 3
  %215 = load i8, ptr %214, align 1, !tbaa !33
  store i8 %215, ptr %213, align 1, !tbaa !33
  %216 = getelementptr inbounds i8, ptr %203, i64 4
  %217 = getelementptr inbounds i8, ptr %204, i64 4
  %218 = load i8, ptr %217, align 1, !tbaa !33
  store i8 %218, ptr %216, align 1, !tbaa !33
  %219 = getelementptr inbounds i8, ptr %203, i64 5
  %220 = getelementptr inbounds i8, ptr %204, i64 5
  %221 = load i8, ptr %220, align 1, !tbaa !33
  store i8 %221, ptr %219, align 1, !tbaa !33
  %222 = getelementptr inbounds i8, ptr %203, i64 6
  %223 = getelementptr inbounds i8, ptr %204, i64 6
  %224 = load i8, ptr %223, align 1, !tbaa !33
  store i8 %224, ptr %222, align 1, !tbaa !33
  %225 = getelementptr inbounds i8, ptr %203, i64 7
  %226 = getelementptr inbounds i8, ptr %204, i64 7
  %227 = load i8, ptr %226, align 1, !tbaa !33
  store i8 %227, ptr %225, align 1, !tbaa !33
  %228 = add i32 %205, -8
  %229 = getelementptr inbounds i8, ptr %203, i64 8
  %230 = getelementptr inbounds i8, ptr %204, i64 8
  %231 = icmp eq i32 %228, 0
  br i1 %231, label %233, label %202, !llvm.loop !62

232:                                              ; preds = %235
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

233:                                              ; preds = %197, %202, %177, %154
  %234 = load i32, ptr %38, align 8, !tbaa !31
  br label %235

235:                                              ; preds = %233, %128, %126
  %236 = phi i32 [ %234, %233 ], [ %125, %128 ], [ 0, %126 ]
  %237 = load i32, ptr %40, align 8, !tbaa !24
  %238 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %237, i32 %236), !nosanitize !18
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !18
  br i1 %239, label %232, label %240, !nosanitize !18

240:                                              ; preds = %235
  %241 = extractvalue { i32, i1 } %238, 0, !nosanitize !18
  %242 = load ptr, ptr %45, align 8, !tbaa !26
  %243 = zext i32 %236 to i64
  %244 = getelementptr inbounds i8, ptr %242, i64 %243
  store i32 0, ptr %46, align 4, !tbaa !15
  %245 = tail call ptr @__errno_location() #17
  store i32 0, ptr %245, align 4, !tbaa !42
  br label %246

246:                                              ; preds = %265, %240
  %247 = phi i32 [ 0, %240 ], [ %266, %265 ]
  %248 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %241, i32 %247), !nosanitize !18
  %249 = extractvalue { i32, i1 } %248, 1, !nosanitize !18
  br i1 %249, label %250, label %251, !nosanitize !18

250:                                              ; preds = %246
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

251:                                              ; preds = %246
  %252 = extractvalue { i32, i1 } %248, 0, !nosanitize !18
  %253 = tail call i32 @llvm.umin.i32(i32 %252, i32 1073741824)
  %254 = load i32, ptr %47, align 4, !tbaa !43
  %255 = zext i32 %247 to i64
  %256 = getelementptr inbounds i8, ptr %244, i64 %255
  %257 = zext nneg i32 %253 to i64
  %258 = tail call i64 @read(i32 noundef %254, ptr noundef %256, i64 noundef %257) #14
  %259 = trunc i64 %258 to i32
  %260 = icmp slt i32 %259, 1
  br i1 %260, label %268, label %261

261:                                              ; preds = %251
  %262 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %247, i32 %259), !nosanitize !18
  %263 = extractvalue { i32, i1 } %262, 1, !nosanitize !18
  br i1 %263, label %264, label %265, !nosanitize !18

264:                                              ; preds = %261
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

265:                                              ; preds = %261
  %266 = extractvalue { i32, i1 } %262, 0, !nosanitize !18
  %267 = icmp ult i32 %266, %241
  br i1 %267, label %246, label %281, !llvm.loop !44

268:                                              ; preds = %251
  %269 = icmp slt i32 %259, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %268
  %271 = load i32, ptr %245, align 4, !tbaa !42
  %272 = icmp eq i32 %271, 11
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  store i32 1, ptr %46, align 4, !tbaa !15
  %274 = icmp eq i32 %247, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %273
  %276 = load i32, ptr %245, align 4, !tbaa !42
  br label %278

277:                                              ; preds = %268
  store i32 1, ptr %37, align 8, !tbaa !21
  br label %281

278:                                              ; preds = %270, %275
  %279 = phi i32 [ %276, %275 ], [ %271, %270 ]
  %280 = tail call ptr @strerror(i32 noundef %279) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %280) #14
  br label %1126

281:                                              ; preds = %265, %277, %273
  %282 = phi i32 [ %247, %277 ], [ %247, %273 ], [ %266, %265 ]
  %283 = load i32, ptr %38, align 8, !tbaa !31
  %284 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %283, i32 %282), !nosanitize !18
  %285 = extractvalue { i32, i1 } %284, 1, !nosanitize !18
  br i1 %285, label %286, label %287, !nosanitize !18

286:                                              ; preds = %281
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

287:                                              ; preds = %281
  %288 = extractvalue { i32, i1 } %284, 0, !nosanitize !18
  store i32 %288, ptr %38, align 8, !tbaa !31
  %289 = load ptr, ptr %45, align 8, !tbaa !26
  store ptr %289, ptr %44, align 8, !tbaa !32
  br label %290

290:                                              ; preds = %287, %122
  %291 = phi i32 [ %288, %287 ], [ %125, %122 ]
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %322, label %293

293:                                              ; preds = %290
  %294 = load i32, ptr %46, align 4, !tbaa !15
  %295 = icmp ne i32 %294, 0
  %296 = icmp ult i32 %291, 4
  %297 = and i1 %296, %295
  br i1 %297, label %322, label %298

298:                                              ; preds = %293
  %299 = icmp ugt i32 %291, 3
  %300 = load ptr, ptr %44, align 8, !tbaa !32
  br i1 %299, label %301, label %318

301:                                              ; preds = %298
  %302 = load i8, ptr %300, align 1, !tbaa !33
  %303 = icmp eq i8 %302, 31
  br i1 %303, label %304, label %318

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %300, i64 1
  %306 = load i8, ptr %305, align 1, !tbaa !33
  %307 = icmp eq i8 %306, -117
  br i1 %307, label %308, label %318

308:                                              ; preds = %304
  %309 = getelementptr inbounds i8, ptr %300, i64 2
  %310 = load i8, ptr %309, align 1, !tbaa !33
  %311 = icmp eq i8 %310, 8
  br i1 %311, label %312, label %318

312:                                              ; preds = %308
  %313 = getelementptr inbounds i8, ptr %300, i64 3
  %314 = load i8, ptr %313, align 1, !tbaa !33
  %315 = icmp ult i8 %314, 32
  br i1 %315, label %316, label %318

316:                                              ; preds = %312
  %317 = tail call i32 @inflateReset(ptr noundef nonnull %44) #14
  store i32 2, ptr %39, align 8, !tbaa !23
  br label %469

318:                                              ; preds = %312, %308, %304, %301, %298
  %319 = load ptr, ptr %42, align 8, !tbaa !27
  store ptr %319, ptr %35, align 8, !tbaa !19
  %320 = zext i32 %291 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %319, ptr align 1 %300, i64 %320, i1 false)
  %321 = load i32, ptr %38, align 8, !tbaa !31
  store i32 %321, ptr %3, align 8, !tbaa !17
  store i32 0, ptr %38, align 8, !tbaa !31
  store i32 1, ptr %39, align 8, !tbaa !23
  br label %474

322:                                              ; preds = %293, %290, %115
  %323 = load i32, ptr %39, align 8, !tbaa !23
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %484, label %472

325:                                              ; preds = %87
  %326 = load ptr, ptr %42, align 8, !tbaa !27
  %327 = load i32, ptr %40, align 8, !tbaa !24
  %328 = shl i32 %327, 1
  store i32 0, ptr %46, align 4, !tbaa !15
  %329 = tail call ptr @__errno_location() #17
  store i32 0, ptr %329, align 4, !tbaa !42
  store i32 0, ptr %3, align 4, !tbaa !42
  br label %330

330:                                              ; preds = %350, %325
  %331 = phi i32 [ %351, %350 ], [ 0, %325 ]
  %332 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %328, i32 %331), !nosanitize !18
  %333 = extractvalue { i32, i1 } %332, 1, !nosanitize !18
  br i1 %333, label %334, label %335, !nosanitize !18

334:                                              ; preds = %330
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

335:                                              ; preds = %330
  %336 = extractvalue { i32, i1 } %332, 0, !nosanitize !18
  %337 = tail call i32 @llvm.umin.i32(i32 %336, i32 1073741824)
  %338 = load i32, ptr %47, align 4, !tbaa !43
  %339 = zext i32 %331 to i64
  %340 = getelementptr inbounds i8, ptr %326, i64 %339
  %341 = zext nneg i32 %337 to i64
  %342 = tail call i64 @read(i32 noundef %338, ptr noundef %340, i64 noundef %341) #14
  %343 = trunc i64 %342 to i32
  %344 = icmp slt i32 %343, 1
  br i1 %344, label %353, label %345

345:                                              ; preds = %335
  %346 = load i32, ptr %3, align 4, !tbaa !42
  %347 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %346, i32 %343), !nosanitize !18
  %348 = extractvalue { i32, i1 } %347, 1, !nosanitize !18
  br i1 %348, label %349, label %350, !nosanitize !18

349:                                              ; preds = %345
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

350:                                              ; preds = %345
  %351 = extractvalue { i32, i1 } %347, 0, !nosanitize !18
  store i32 %351, ptr %3, align 4, !tbaa !42
  %352 = icmp ult i32 %351, %328
  br i1 %352, label %330, label %367, !llvm.loop !44

353:                                              ; preds = %335
  %354 = icmp slt i32 %343, 0
  br i1 %354, label %355, label %363

355:                                              ; preds = %353
  %356 = load i32, ptr %329, align 4, !tbaa !42
  %357 = icmp eq i32 %356, 11
  br i1 %357, label %358, label %364

358:                                              ; preds = %355
  store i32 1, ptr %46, align 4, !tbaa !15
  %359 = load i32, ptr %3, align 4, !tbaa !42
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %367

361:                                              ; preds = %358
  %362 = load i32, ptr %329, align 4, !tbaa !42
  br label %364

363:                                              ; preds = %353
  store i32 1, ptr %37, align 8, !tbaa !21
  br label %367

364:                                              ; preds = %355, %361
  %365 = phi i32 [ %362, %361 ], [ %356, %355 ]
  %366 = tail call ptr @strerror(i32 noundef %365) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %366) #14
  br label %1126

367:                                              ; preds = %350, %363, %358
  %368 = load ptr, ptr %42, align 8, !tbaa !27
  store ptr %368, ptr %35, align 8, !tbaa !19
  br label %484

369:                                              ; preds = %87
  %370 = load i32, ptr %40, align 8, !tbaa !24
  %371 = shl i32 %370, 1
  store i32 %371, ptr %41, align 8, !tbaa !45
  %372 = load ptr, ptr %42, align 8, !tbaa !27
  store ptr %372, ptr %43, align 8, !tbaa !46
  br label %373

373:                                              ; preds = %452, %369
  %374 = phi i32 [ 0, %369 ], [ %437, %452 ]
  %375 = load i32, ptr %38, align 8, !tbaa !31
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %436

377:                                              ; preds = %373
  %378 = load i32, ptr %11, align 8, !tbaa !14
  switch i32 %378, label %456 [
    i32 0, label %379
    i32 -5, label %379
  ]

379:                                              ; preds = %377, %377
  %380 = load i32, ptr %37, align 8, !tbaa !21
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %432

382:                                              ; preds = %379
  %383 = load i32, ptr %40, align 8, !tbaa !24
  %384 = load ptr, ptr %45, align 8, !tbaa !26
  store i32 0, ptr %46, align 4, !tbaa !15
  %385 = tail call ptr @__errno_location() #17
  store i32 0, ptr %385, align 4, !tbaa !42
  br label %386

386:                                              ; preds = %405, %382
  %387 = phi i32 [ 0, %382 ], [ %406, %405 ]
  %388 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %383, i32 %387), !nosanitize !18
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !18
  br i1 %389, label %390, label %391, !nosanitize !18

390:                                              ; preds = %386
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

391:                                              ; preds = %386
  %392 = extractvalue { i32, i1 } %388, 0, !nosanitize !18
  %393 = tail call i32 @llvm.umin.i32(i32 %392, i32 1073741824)
  %394 = load i32, ptr %47, align 4, !tbaa !43
  %395 = zext i32 %387 to i64
  %396 = getelementptr inbounds i8, ptr %384, i64 %395
  %397 = zext nneg i32 %393 to i64
  %398 = tail call i64 @read(i32 noundef %394, ptr noundef %396, i64 noundef %397) #14
  %399 = trunc i64 %398 to i32
  %400 = icmp slt i32 %399, 1
  br i1 %400, label %408, label %401

401:                                              ; preds = %391
  %402 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %387, i32 %399), !nosanitize !18
  %403 = extractvalue { i32, i1 } %402, 1, !nosanitize !18
  br i1 %403, label %404, label %405, !nosanitize !18

404:                                              ; preds = %401
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

405:                                              ; preds = %401
  %406 = extractvalue { i32, i1 } %402, 0, !nosanitize !18
  %407 = icmp ult i32 %406, %383
  br i1 %407, label %386, label %422, !llvm.loop !44

408:                                              ; preds = %391
  %409 = icmp slt i32 %399, 0
  br i1 %409, label %410, label %417

410:                                              ; preds = %408
  %411 = load i32, ptr %385, align 4, !tbaa !42
  %412 = icmp eq i32 %411, 11
  br i1 %412, label %413, label %418

413:                                              ; preds = %410
  store i32 1, ptr %46, align 4, !tbaa !15
  %414 = icmp eq i32 %387, 0
  br i1 %414, label %415, label %422

415:                                              ; preds = %413
  %416 = load i32, ptr %385, align 4, !tbaa !42
  br label %418

417:                                              ; preds = %408
  store i32 1, ptr %37, align 8, !tbaa !21
  br label %422

418:                                              ; preds = %410, %415
  %419 = phi i32 [ %416, %415 ], [ %411, %410 ]
  %420 = tail call ptr @strerror(i32 noundef %419) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %420) #14
  %421 = load i32, ptr %11, align 8, !tbaa !14
  br label %456

422:                                              ; preds = %405, %417, %413
  %423 = phi i32 [ %387, %417 ], [ %387, %413 ], [ %406, %405 ]
  %424 = load i32, ptr %38, align 8, !tbaa !31
  %425 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %424, i32 %423), !nosanitize !18
  %426 = extractvalue { i32, i1 } %425, 1, !nosanitize !18
  br i1 %426, label %427, label %428, !nosanitize !18

427:                                              ; preds = %422
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

428:                                              ; preds = %422
  %429 = extractvalue { i32, i1 } %425, 0, !nosanitize !18
  store i32 %429, ptr %38, align 8, !tbaa !31
  %430 = load ptr, ptr %45, align 8, !tbaa !26
  store ptr %430, ptr %44, align 8, !tbaa !32
  %431 = icmp eq i32 %429, 0
  br i1 %431, label %432, label %436

432:                                              ; preds = %428, %379
  %433 = load i32, ptr %46, align 4, !tbaa !15
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %456

435:                                              ; preds = %432
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %456

436:                                              ; preds = %428, %373
  %437 = tail call i32 @inflate(ptr noundef nonnull %44, i32 noundef 0) #14
  %438 = load i32, ptr %41, align 8, !tbaa !45
  %439 = icmp ult i32 %438, %371
  br i1 %439, label %440, label %441

440:                                              ; preds = %436
  store i32 0, ptr %48, align 4, !tbaa !30
  br label %441

441:                                              ; preds = %440, %436
  switch i32 %437, label %452 [
    i32 -2, label %442
    i32 2, label %442
    i32 -4, label %443
    i32 -3, label %444
  ]

442:                                              ; preds = %441, %441
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %456

443:                                              ; preds = %441
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %456

444:                                              ; preds = %441
  %445 = load i32, ptr %48, align 4, !tbaa !30
  %446 = icmp eq i32 %445, 1
  br i1 %446, label %447, label %448

447:                                              ; preds = %444
  store i32 0, ptr %38, align 8, !tbaa !31
  store i32 1, ptr %37, align 8, !tbaa !21
  store i32 0, ptr %39, align 8, !tbaa !23
  br label %456

448:                                              ; preds = %444
  %449 = load ptr, ptr %49, align 8, !tbaa !47
  %450 = icmp eq ptr %449, null
  %451 = select i1 %450, ptr @.str.6, ptr %449
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %451) #14
  br label %456

452:                                              ; preds = %441
  %453 = icmp ne i32 %438, 0
  %454 = icmp ne i32 %437, 1
  %455 = select i1 %453, i1 %454, i1 false
  br i1 %455, label %373, label %456, !llvm.loop !48

456:                                              ; preds = %452, %377, %448, %447, %443, %442, %435, %432, %418
  %457 = phi i32 [ %374, %432 ], [ %374, %435 ], [ %437, %442 ], [ -4, %443 ], [ 0, %447 ], [ -3, %448 ], [ %421, %418 ], [ %437, %452 ], [ %378, %377 ]
  %458 = load i32, ptr %41, align 8, !tbaa !45
  %459 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %371, i32 %458), !nosanitize !18
  %460 = extractvalue { i32, i1 } %459, 1, !nosanitize !18
  br i1 %460, label %461, label %462, !nosanitize !18

461:                                              ; preds = %456
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

462:                                              ; preds = %456
  %463 = extractvalue { i32, i1 } %459, 0, !nosanitize !18
  store i32 %463, ptr %3, align 8, !tbaa !17
  %464 = load ptr, ptr %43, align 8, !tbaa !46
  %465 = zext i32 %463 to i64
  %466 = sub nsw i64 0, %465
  %467 = getelementptr inbounds i8, ptr %464, i64 %466
  store ptr %467, ptr %35, align 8, !tbaa !19
  switch i32 %457, label %1126 [
    i32 1, label %469
    i32 0, label %472
  ]

468:                                              ; preds = %87
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %1126

469:                                              ; preds = %462, %316
  %470 = phi i32 [ 1, %316 ], [ 0, %462 ]
  %471 = phi ptr [ %52, %316 ], [ %39, %462 ]
  store i32 %470, ptr %48, align 4, !tbaa !30
  store i32 0, ptr %471, align 8, !tbaa !42
  br label %472

472:                                              ; preds = %469, %462, %322
  %473 = load i32, ptr %3, align 8, !tbaa !17
  br label %474

474:                                              ; preds = %472, %318
  %475 = phi i32 [ %473, %472 ], [ %321, %318 ]
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %484

477:                                              ; preds = %474
  %478 = load i32, ptr %37, align 8, !tbaa !21
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %483, label %480

480:                                              ; preds = %477
  %481 = load i32, ptr %38, align 8, !tbaa !31
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %484, label %483

483:                                              ; preds = %480, %477
  br label %87, !llvm.loop !49

484:                                              ; preds = %480, %474, %322, %367
  %485 = load i64, ptr %31, align 8, !tbaa !16
  br label %486

486:                                              ; preds = %484, %78
  %487 = phi i64 [ %485, %484 ], [ %79, %78 ]
  %488 = icmp eq i64 %487, 0
  br i1 %488, label %489, label %53, !llvm.loop !50

489:                                              ; preds = %486, %83, %30
  %490 = getelementptr inbounds %struct.gzFile_s, ptr %3, i64 0, i32 1
  %491 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 13
  %492 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 1
  %493 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 10
  %494 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 4
  %495 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 4
  %496 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 3
  %497 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21
  %498 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 6
  %499 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 11
  %500 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 2
  %501 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 9
  %502 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 6
  %503 = getelementptr inbounds %struct.gzFile_s, ptr %3, i64 0, i32 2
  %504 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 7
  %505 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 5
  %506 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 8
  %507 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 8
  br label %508

508:                                              ; preds = %1109, %489
  %509 = phi ptr [ %0, %489 ], [ %1110, %1109 ]
  %510 = phi i64 [ %19, %489 ], [ %1111, %1109 ]
  %511 = phi i64 [ 0, %489 ], [ %1112, %1109 ]
  %512 = tail call i64 @llvm.umin.i64(i64 %510, i64 4294967295)
  %513 = trunc i64 %512 to i32
  %514 = load i32, ptr %3, align 8, !tbaa !17
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %531, label %516

516:                                              ; preds = %508
  %517 = tail call i32 @llvm.umin.i32(i32 %514, i32 %513)
  %518 = load ptr, ptr %490, align 8, !tbaa !19
  %519 = zext i32 %517 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %509, ptr align 1 %518, i64 %519, i1 false)
  %520 = load ptr, ptr %490, align 8, !tbaa !19
  %521 = getelementptr inbounds i8, ptr %520, i64 %519
  store ptr %521, ptr %490, align 8, !tbaa !19
  %522 = load i32, ptr %3, align 8, !tbaa !17
  %523 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %522, i32 %517), !nosanitize !18
  %524 = extractvalue { i32, i1 } %523, 1, !nosanitize !18
  br i1 %524, label %525, label %526, !nosanitize !18

525:                                              ; preds = %1091, %516
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

526:                                              ; preds = %516
  %527 = extractvalue { i32, i1 } %523, 0, !nosanitize !18
  store i32 %527, ptr %3, align 8, !tbaa !17
  %528 = load i32, ptr %11, align 8, !tbaa !14
  %529 = icmp ne i32 %528, 0
  %530 = sext i1 %529 to i32
  br label %1091

531:                                              ; preds = %508
  %532 = load i32, ptr %491, align 8, !tbaa !21
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %537, label %534

534:                                              ; preds = %531
  %535 = load i32, ptr %492, align 8, !tbaa !22
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %1117, label %537

537:                                              ; preds = %534, %531
  %538 = load i32, ptr %493, align 8, !tbaa !23
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %544, label %540

540:                                              ; preds = %537
  %541 = load i32, ptr %494, align 8, !tbaa !24
  %542 = shl i32 %541, 1
  %543 = icmp ugt i32 %542, %513
  br i1 %543, label %544, label %947

544:                                              ; preds = %540, %537
  br label %545

545:                                              ; preds = %544, %941
  %546 = phi i32 [ %942, %941 ], [ %538, %544 ]
  switch i32 %546, label %926 [
    i32 0, label %547
    i32 1, label %783
    i32 2, label %827
  ]

547:                                              ; preds = %545
  %548 = load i32, ptr %494, align 8, !tbaa !24
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %567

550:                                              ; preds = %547
  %551 = load i32, ptr %505, align 4, !tbaa !25
  %552 = zext i32 %551 to i64
  %553 = tail call noalias ptr @malloc(i64 noundef %552) #16
  store ptr %553, ptr %498, align 8, !tbaa !26
  %554 = shl i32 %551, 1
  %555 = zext i32 %554 to i64
  %556 = tail call noalias ptr @malloc(i64 noundef %555) #16
  store ptr %556, ptr %504, align 8, !tbaa !27
  %557 = icmp eq ptr %553, null
  %558 = icmp eq ptr %556, null
  %559 = or i1 %557, %558
  br i1 %559, label %560, label %561

560:                                              ; preds = %550
  tail call void @free(ptr noundef %556) #14
  tail call void @free(ptr noundef %553) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %943

561:                                              ; preds = %550
  store i32 %551, ptr %494, align 8, !tbaa !24
  store i32 0, ptr %492, align 8, !tbaa !22
  store ptr null, ptr %497, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %506, i8 0, i64 24, i1 false)
  %562 = tail call i32 @inflateInit2_(ptr noundef nonnull %497, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %567, label %564

564:                                              ; preds = %561
  %565 = load ptr, ptr %504, align 8, !tbaa !27
  tail call void @free(ptr noundef %565) #14
  %566 = load ptr, ptr %498, align 8, !tbaa !26
  tail call void @free(ptr noundef %566) #14
  store i32 0, ptr %494, align 8, !tbaa !24
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %943

567:                                              ; preds = %561, %547
  %568 = load i32, ptr %507, align 8, !tbaa !29
  %569 = icmp eq i32 %568, -1
  br i1 %569, label %573, label %570

570:                                              ; preds = %567
  %571 = load i32, ptr %501, align 4, !tbaa !30
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %578

573:                                              ; preds = %570, %567
  %574 = tail call i32 @inflateReset(ptr noundef nonnull %497) #14
  store i32 2, ptr %493, align 8, !tbaa !23
  %575 = load i32, ptr %501, align 4, !tbaa !30
  %576 = icmp ne i32 %575, -1
  %577 = zext i1 %576 to i32
  store i32 %577, ptr %501, align 4, !tbaa !30
  store i32 0, ptr %507, align 8, !tbaa !29
  br label %780

578:                                              ; preds = %570
  %579 = load i32, ptr %11, align 8, !tbaa !14
  switch i32 %579, label %943 [
    i32 0, label %580
    i32 -5, label %580
  ]

580:                                              ; preds = %578, %578
  %581 = load i32, ptr %491, align 8, !tbaa !21
  %582 = icmp eq i32 %581, 0
  %583 = load i32, ptr %492, align 8, !tbaa !31
  br i1 %582, label %584, label %748

584:                                              ; preds = %580
  %585 = icmp eq i32 %583, 0
  br i1 %585, label %693, label %586

586:                                              ; preds = %584
  %587 = load ptr, ptr %498, align 8, !tbaa !26
  %588 = load ptr, ptr %497, align 8, !tbaa !32
  %589 = icmp eq ptr %588, %587
  br i1 %589, label %693, label %590

590:                                              ; preds = %586
  %591 = ptrtoint ptr %588 to i64
  %592 = ptrtoint ptr %587 to i64
  %593 = zext i32 %583 to i64
  %594 = icmp ult i32 %583, 8
  %595 = sub i64 %592, %591
  %596 = icmp ult i64 %595, 32
  %597 = or i1 %594, %596
  br i1 %597, label %637, label %598

598:                                              ; preds = %590
  %599 = icmp ult i32 %583, 32
  br i1 %599, label %621, label %600

600:                                              ; preds = %598
  %601 = and i64 %593, 4294967264
  br label %602

602:                                              ; preds = %602, %600
  %603 = phi i64 [ 0, %600 ], [ %610, %602 ]
  %604 = getelementptr i8, ptr %587, i64 %603
  %605 = getelementptr i8, ptr %588, i64 %603
  %606 = getelementptr i8, ptr %605, i64 16
  %607 = load <16 x i8>, ptr %605, align 1, !tbaa !33
  %608 = load <16 x i8>, ptr %606, align 1, !tbaa !33
  %609 = getelementptr i8, ptr %604, i64 16
  store <16 x i8> %607, ptr %604, align 1, !tbaa !33
  store <16 x i8> %608, ptr %609, align 1, !tbaa !33
  %610 = add nuw i64 %603, 32
  %611 = icmp eq i64 %610, %601
  br i1 %611, label %612, label %602, !llvm.loop !63

612:                                              ; preds = %602
  %613 = icmp eq i64 %601, %593
  br i1 %613, label %691, label %614

614:                                              ; preds = %612
  %615 = trunc i64 %601 to i32
  %616 = sub i32 %583, %615
  %617 = getelementptr i8, ptr %588, i64 %601
  %618 = getelementptr i8, ptr %587, i64 %601
  %619 = and i64 %593, 24
  %620 = icmp eq i64 %619, 0
  br i1 %620, label %637, label %621

621:                                              ; preds = %598, %614
  %622 = phi i64 [ %601, %614 ], [ 0, %598 ]
  %623 = and i64 %593, 4294967288
  %624 = getelementptr i8, ptr %587, i64 %623
  %625 = getelementptr i8, ptr %588, i64 %623
  %626 = trunc i64 %623 to i32
  %627 = sub i32 %583, %626
  br label %628

628:                                              ; preds = %628, %621
  %629 = phi i64 [ %622, %621 ], [ %633, %628 ]
  %630 = getelementptr i8, ptr %587, i64 %629
  %631 = getelementptr i8, ptr %588, i64 %629
  %632 = load <8 x i8>, ptr %631, align 1, !tbaa !33
  store <8 x i8> %632, ptr %630, align 1, !tbaa !33
  %633 = add nuw i64 %629, 8
  %634 = icmp eq i64 %633, %623
  br i1 %634, label %635, label %628, !llvm.loop !64

635:                                              ; preds = %628
  %636 = icmp eq i64 %623, %593
  br i1 %636, label %691, label %637

637:                                              ; preds = %590, %614, %635
  %638 = phi ptr [ %587, %590 ], [ %618, %614 ], [ %624, %635 ]
  %639 = phi ptr [ %588, %590 ], [ %617, %614 ], [ %625, %635 ]
  %640 = phi i32 [ %583, %590 ], [ %616, %614 ], [ %627, %635 ]
  %641 = add i32 %640, -1
  %642 = and i32 %640, 7
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %655, label %644

644:                                              ; preds = %637, %644
  %645 = phi ptr [ %651, %644 ], [ %638, %637 ]
  %646 = phi ptr [ %652, %644 ], [ %639, %637 ]
  %647 = phi i32 [ %650, %644 ], [ %640, %637 ]
  %648 = phi i32 [ %653, %644 ], [ 0, %637 ]
  %649 = load i8, ptr %646, align 1, !tbaa !33
  store i8 %649, ptr %645, align 1, !tbaa !33
  %650 = add i32 %647, -1
  %651 = getelementptr inbounds i8, ptr %645, i64 1
  %652 = getelementptr inbounds i8, ptr %646, i64 1
  %653 = add i32 %648, 1
  %654 = icmp eq i32 %653, %642
  br i1 %654, label %655, label %644, !llvm.loop !65

655:                                              ; preds = %644, %637
  %656 = phi ptr [ %638, %637 ], [ %651, %644 ]
  %657 = phi ptr [ %639, %637 ], [ %652, %644 ]
  %658 = phi i32 [ %640, %637 ], [ %650, %644 ]
  %659 = icmp ult i32 %641, 7
  br i1 %659, label %691, label %660

660:                                              ; preds = %655, %660
  %661 = phi ptr [ %687, %660 ], [ %656, %655 ]
  %662 = phi ptr [ %688, %660 ], [ %657, %655 ]
  %663 = phi i32 [ %686, %660 ], [ %658, %655 ]
  %664 = load i8, ptr %662, align 1, !tbaa !33
  store i8 %664, ptr %661, align 1, !tbaa !33
  %665 = getelementptr inbounds i8, ptr %661, i64 1
  %666 = getelementptr inbounds i8, ptr %662, i64 1
  %667 = load i8, ptr %666, align 1, !tbaa !33
  store i8 %667, ptr %665, align 1, !tbaa !33
  %668 = getelementptr inbounds i8, ptr %661, i64 2
  %669 = getelementptr inbounds i8, ptr %662, i64 2
  %670 = load i8, ptr %669, align 1, !tbaa !33
  store i8 %670, ptr %668, align 1, !tbaa !33
  %671 = getelementptr inbounds i8, ptr %661, i64 3
  %672 = getelementptr inbounds i8, ptr %662, i64 3
  %673 = load i8, ptr %672, align 1, !tbaa !33
  store i8 %673, ptr %671, align 1, !tbaa !33
  %674 = getelementptr inbounds i8, ptr %661, i64 4
  %675 = getelementptr inbounds i8, ptr %662, i64 4
  %676 = load i8, ptr %675, align 1, !tbaa !33
  store i8 %676, ptr %674, align 1, !tbaa !33
  %677 = getelementptr inbounds i8, ptr %661, i64 5
  %678 = getelementptr inbounds i8, ptr %662, i64 5
  %679 = load i8, ptr %678, align 1, !tbaa !33
  store i8 %679, ptr %677, align 1, !tbaa !33
  %680 = getelementptr inbounds i8, ptr %661, i64 6
  %681 = getelementptr inbounds i8, ptr %662, i64 6
  %682 = load i8, ptr %681, align 1, !tbaa !33
  store i8 %682, ptr %680, align 1, !tbaa !33
  %683 = getelementptr inbounds i8, ptr %661, i64 7
  %684 = getelementptr inbounds i8, ptr %662, i64 7
  %685 = load i8, ptr %684, align 1, !tbaa !33
  store i8 %685, ptr %683, align 1, !tbaa !33
  %686 = add i32 %663, -8
  %687 = getelementptr inbounds i8, ptr %661, i64 8
  %688 = getelementptr inbounds i8, ptr %662, i64 8
  %689 = icmp eq i32 %686, 0
  br i1 %689, label %691, label %660, !llvm.loop !66

690:                                              ; preds = %693
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

691:                                              ; preds = %655, %660, %635, %612
  %692 = load i32, ptr %492, align 8, !tbaa !31
  br label %693

693:                                              ; preds = %691, %586, %584
  %694 = phi i32 [ %692, %691 ], [ %583, %586 ], [ 0, %584 ]
  %695 = load i32, ptr %494, align 8, !tbaa !24
  %696 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %695, i32 %694), !nosanitize !18
  %697 = extractvalue { i32, i1 } %696, 1, !nosanitize !18
  br i1 %697, label %690, label %698, !nosanitize !18

698:                                              ; preds = %693
  %699 = extractvalue { i32, i1 } %696, 0, !nosanitize !18
  %700 = load ptr, ptr %498, align 8, !tbaa !26
  %701 = zext i32 %694 to i64
  %702 = getelementptr inbounds i8, ptr %700, i64 %701
  store i32 0, ptr %499, align 4, !tbaa !15
  %703 = tail call ptr @__errno_location() #17
  store i32 0, ptr %703, align 4, !tbaa !42
  br label %704

704:                                              ; preds = %723, %698
  %705 = phi i32 [ 0, %698 ], [ %724, %723 ]
  %706 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %699, i32 %705), !nosanitize !18
  %707 = extractvalue { i32, i1 } %706, 1, !nosanitize !18
  br i1 %707, label %708, label %709, !nosanitize !18

708:                                              ; preds = %704
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

709:                                              ; preds = %704
  %710 = extractvalue { i32, i1 } %706, 0, !nosanitize !18
  %711 = tail call i32 @llvm.umin.i32(i32 %710, i32 1073741824)
  %712 = load i32, ptr %500, align 4, !tbaa !43
  %713 = zext i32 %705 to i64
  %714 = getelementptr inbounds i8, ptr %702, i64 %713
  %715 = zext nneg i32 %711 to i64
  %716 = tail call i64 @read(i32 noundef %712, ptr noundef %714, i64 noundef %715) #14
  %717 = trunc i64 %716 to i32
  %718 = icmp slt i32 %717, 1
  br i1 %718, label %726, label %719

719:                                              ; preds = %709
  %720 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %705, i32 %717), !nosanitize !18
  %721 = extractvalue { i32, i1 } %720, 1, !nosanitize !18
  br i1 %721, label %722, label %723, !nosanitize !18

722:                                              ; preds = %719
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

723:                                              ; preds = %719
  %724 = extractvalue { i32, i1 } %720, 0, !nosanitize !18
  %725 = icmp ult i32 %724, %699
  br i1 %725, label %704, label %739, !llvm.loop !44

726:                                              ; preds = %709
  %727 = icmp slt i32 %717, 0
  br i1 %727, label %728, label %735

728:                                              ; preds = %726
  %729 = load i32, ptr %703, align 4, !tbaa !42
  %730 = icmp eq i32 %729, 11
  br i1 %730, label %731, label %736

731:                                              ; preds = %728
  store i32 1, ptr %499, align 4, !tbaa !15
  %732 = icmp eq i32 %705, 0
  br i1 %732, label %733, label %739

733:                                              ; preds = %731
  %734 = load i32, ptr %703, align 4, !tbaa !42
  br label %736

735:                                              ; preds = %726
  store i32 1, ptr %491, align 8, !tbaa !21
  br label %739

736:                                              ; preds = %728, %733
  %737 = phi i32 [ %734, %733 ], [ %729, %728 ]
  %738 = tail call ptr @strerror(i32 noundef %737) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %738) #14
  br label %943

739:                                              ; preds = %723, %735, %731
  %740 = phi i32 [ %705, %735 ], [ %705, %731 ], [ %724, %723 ]
  %741 = load i32, ptr %492, align 8, !tbaa !31
  %742 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %741, i32 %740), !nosanitize !18
  %743 = extractvalue { i32, i1 } %742, 1, !nosanitize !18
  br i1 %743, label %744, label %745, !nosanitize !18

744:                                              ; preds = %739
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

745:                                              ; preds = %739
  %746 = extractvalue { i32, i1 } %742, 0, !nosanitize !18
  store i32 %746, ptr %492, align 8, !tbaa !31
  %747 = load ptr, ptr %498, align 8, !tbaa !26
  store ptr %747, ptr %497, align 8, !tbaa !32
  br label %748

748:                                              ; preds = %745, %580
  %749 = phi i32 [ %746, %745 ], [ %583, %580 ]
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %780, label %751

751:                                              ; preds = %748
  %752 = load i32, ptr %499, align 4, !tbaa !15
  %753 = icmp ne i32 %752, 0
  %754 = icmp ult i32 %749, 4
  %755 = and i1 %754, %753
  br i1 %755, label %780, label %756

756:                                              ; preds = %751
  %757 = icmp ugt i32 %749, 3
  %758 = load ptr, ptr %497, align 8, !tbaa !32
  br i1 %757, label %759, label %776

759:                                              ; preds = %756
  %760 = load i8, ptr %758, align 1, !tbaa !33
  %761 = icmp eq i8 %760, 31
  br i1 %761, label %762, label %776

762:                                              ; preds = %759
  %763 = getelementptr inbounds i8, ptr %758, i64 1
  %764 = load i8, ptr %763, align 1, !tbaa !33
  %765 = icmp eq i8 %764, -117
  br i1 %765, label %766, label %776

766:                                              ; preds = %762
  %767 = getelementptr inbounds i8, ptr %758, i64 2
  %768 = load i8, ptr %767, align 1, !tbaa !33
  %769 = icmp eq i8 %768, 8
  br i1 %769, label %770, label %776

770:                                              ; preds = %766
  %771 = getelementptr inbounds i8, ptr %758, i64 3
  %772 = load i8, ptr %771, align 1, !tbaa !33
  %773 = icmp ult i8 %772, 32
  br i1 %773, label %774, label %776

774:                                              ; preds = %770
  %775 = tail call i32 @inflateReset(ptr noundef nonnull %497) #14
  store i32 2, ptr %493, align 8, !tbaa !23
  br label %927

776:                                              ; preds = %770, %766, %762, %759, %756
  %777 = load ptr, ptr %504, align 8, !tbaa !27
  store ptr %777, ptr %490, align 8, !tbaa !19
  %778 = zext i32 %749 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %777, ptr align 1 %758, i64 %778, i1 false)
  %779 = load i32, ptr %492, align 8, !tbaa !31
  store i32 %779, ptr %3, align 8, !tbaa !17
  store i32 0, ptr %492, align 8, !tbaa !31
  store i32 1, ptr %493, align 8, !tbaa !23
  br label %932

780:                                              ; preds = %751, %748, %573
  %781 = load i32, ptr %493, align 8, !tbaa !23
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %1109, label %930

783:                                              ; preds = %545
  %784 = load ptr, ptr %504, align 8, !tbaa !27
  %785 = load i32, ptr %494, align 8, !tbaa !24
  %786 = shl i32 %785, 1
  store i32 0, ptr %499, align 4, !tbaa !15
  %787 = tail call ptr @__errno_location() #17
  store i32 0, ptr %787, align 4, !tbaa !42
  store i32 0, ptr %3, align 4, !tbaa !42
  br label %788

788:                                              ; preds = %808, %783
  %789 = phi i32 [ %809, %808 ], [ 0, %783 ]
  %790 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %786, i32 %789), !nosanitize !18
  %791 = extractvalue { i32, i1 } %790, 1, !nosanitize !18
  br i1 %791, label %792, label %793, !nosanitize !18

792:                                              ; preds = %788
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

793:                                              ; preds = %788
  %794 = extractvalue { i32, i1 } %790, 0, !nosanitize !18
  %795 = tail call i32 @llvm.umin.i32(i32 %794, i32 1073741824)
  %796 = load i32, ptr %500, align 4, !tbaa !43
  %797 = zext i32 %789 to i64
  %798 = getelementptr inbounds i8, ptr %784, i64 %797
  %799 = zext nneg i32 %795 to i64
  %800 = tail call i64 @read(i32 noundef %796, ptr noundef %798, i64 noundef %799) #14
  %801 = trunc i64 %800 to i32
  %802 = icmp slt i32 %801, 1
  br i1 %802, label %811, label %803

803:                                              ; preds = %793
  %804 = load i32, ptr %3, align 4, !tbaa !42
  %805 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %804, i32 %801), !nosanitize !18
  %806 = extractvalue { i32, i1 } %805, 1, !nosanitize !18
  br i1 %806, label %807, label %808, !nosanitize !18

807:                                              ; preds = %803
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

808:                                              ; preds = %803
  %809 = extractvalue { i32, i1 } %805, 0, !nosanitize !18
  store i32 %809, ptr %3, align 4, !tbaa !42
  %810 = icmp ult i32 %809, %786
  br i1 %810, label %788, label %825, !llvm.loop !44

811:                                              ; preds = %793
  %812 = icmp slt i32 %801, 0
  br i1 %812, label %813, label %821

813:                                              ; preds = %811
  %814 = load i32, ptr %787, align 4, !tbaa !42
  %815 = icmp eq i32 %814, 11
  br i1 %815, label %816, label %822

816:                                              ; preds = %813
  store i32 1, ptr %499, align 4, !tbaa !15
  %817 = load i32, ptr %3, align 4, !tbaa !42
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %819, label %825

819:                                              ; preds = %816
  %820 = load i32, ptr %787, align 4, !tbaa !42
  br label %822

821:                                              ; preds = %811
  store i32 1, ptr %491, align 8, !tbaa !21
  br label %825

822:                                              ; preds = %819, %813
  %823 = phi i32 [ %820, %819 ], [ %814, %813 ]
  %824 = tail call ptr @strerror(i32 noundef %823) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %824) #14
  br label %943

825:                                              ; preds = %808, %821, %816
  %826 = load ptr, ptr %504, align 8, !tbaa !27
  store ptr %826, ptr %490, align 8, !tbaa !19
  br label %1109

827:                                              ; preds = %545
  %828 = load i32, ptr %494, align 8, !tbaa !24
  %829 = shl i32 %828, 1
  store i32 %829, ptr %495, align 8, !tbaa !45
  %830 = load ptr, ptr %504, align 8, !tbaa !27
  store ptr %830, ptr %496, align 8, !tbaa !46
  br label %831

831:                                              ; preds = %910, %827
  %832 = phi i32 [ 0, %827 ], [ %895, %910 ]
  %833 = load i32, ptr %492, align 8, !tbaa !31
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %835, label %894

835:                                              ; preds = %831
  %836 = load i32, ptr %11, align 8, !tbaa !14
  switch i32 %836, label %914 [
    i32 0, label %837
    i32 -5, label %837
  ]

837:                                              ; preds = %835, %835
  %838 = load i32, ptr %491, align 8, !tbaa !21
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %840, label %890

840:                                              ; preds = %837
  %841 = load i32, ptr %494, align 8, !tbaa !24
  %842 = load ptr, ptr %498, align 8, !tbaa !26
  store i32 0, ptr %499, align 4, !tbaa !15
  %843 = tail call ptr @__errno_location() #17
  store i32 0, ptr %843, align 4, !tbaa !42
  br label %844

844:                                              ; preds = %863, %840
  %845 = phi i32 [ 0, %840 ], [ %864, %863 ]
  %846 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %841, i32 %845), !nosanitize !18
  %847 = extractvalue { i32, i1 } %846, 1, !nosanitize !18
  br i1 %847, label %848, label %849, !nosanitize !18

848:                                              ; preds = %844
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

849:                                              ; preds = %844
  %850 = extractvalue { i32, i1 } %846, 0, !nosanitize !18
  %851 = tail call i32 @llvm.umin.i32(i32 %850, i32 1073741824)
  %852 = load i32, ptr %500, align 4, !tbaa !43
  %853 = zext i32 %845 to i64
  %854 = getelementptr inbounds i8, ptr %842, i64 %853
  %855 = zext nneg i32 %851 to i64
  %856 = tail call i64 @read(i32 noundef %852, ptr noundef %854, i64 noundef %855) #14
  %857 = trunc i64 %856 to i32
  %858 = icmp slt i32 %857, 1
  br i1 %858, label %866, label %859

859:                                              ; preds = %849
  %860 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %845, i32 %857), !nosanitize !18
  %861 = extractvalue { i32, i1 } %860, 1, !nosanitize !18
  br i1 %861, label %862, label %863, !nosanitize !18

862:                                              ; preds = %859
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

863:                                              ; preds = %859
  %864 = extractvalue { i32, i1 } %860, 0, !nosanitize !18
  %865 = icmp ult i32 %864, %841
  br i1 %865, label %844, label %880, !llvm.loop !44

866:                                              ; preds = %849
  %867 = icmp slt i32 %857, 0
  br i1 %867, label %868, label %875

868:                                              ; preds = %866
  %869 = load i32, ptr %843, align 4, !tbaa !42
  %870 = icmp eq i32 %869, 11
  br i1 %870, label %871, label %876

871:                                              ; preds = %868
  store i32 1, ptr %499, align 4, !tbaa !15
  %872 = icmp eq i32 %845, 0
  br i1 %872, label %873, label %880

873:                                              ; preds = %871
  %874 = load i32, ptr %843, align 4, !tbaa !42
  br label %876

875:                                              ; preds = %866
  store i32 1, ptr %491, align 8, !tbaa !21
  br label %880

876:                                              ; preds = %868, %873
  %877 = phi i32 [ %874, %873 ], [ %869, %868 ]
  %878 = tail call ptr @strerror(i32 noundef %877) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %878) #14
  %879 = load i32, ptr %11, align 8, !tbaa !14
  br label %914

880:                                              ; preds = %863, %875, %871
  %881 = phi i32 [ %845, %875 ], [ %845, %871 ], [ %864, %863 ]
  %882 = load i32, ptr %492, align 8, !tbaa !31
  %883 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %882, i32 %881), !nosanitize !18
  %884 = extractvalue { i32, i1 } %883, 1, !nosanitize !18
  br i1 %884, label %885, label %886, !nosanitize !18

885:                                              ; preds = %880
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

886:                                              ; preds = %880
  %887 = extractvalue { i32, i1 } %883, 0, !nosanitize !18
  store i32 %887, ptr %492, align 8, !tbaa !31
  %888 = load ptr, ptr %498, align 8, !tbaa !26
  store ptr %888, ptr %497, align 8, !tbaa !32
  %889 = icmp eq i32 %887, 0
  br i1 %889, label %890, label %894

890:                                              ; preds = %886, %837
  %891 = load i32, ptr %499, align 4, !tbaa !15
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %893, label %914

893:                                              ; preds = %890
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %914

894:                                              ; preds = %886, %831
  %895 = tail call i32 @inflate(ptr noundef nonnull %497, i32 noundef 0) #14
  %896 = load i32, ptr %495, align 8, !tbaa !45
  %897 = icmp ult i32 %896, %829
  br i1 %897, label %898, label %899

898:                                              ; preds = %894
  store i32 0, ptr %501, align 4, !tbaa !30
  br label %899

899:                                              ; preds = %898, %894
  switch i32 %895, label %910 [
    i32 -2, label %900
    i32 2, label %900
    i32 -4, label %901
    i32 -3, label %902
  ]

900:                                              ; preds = %899, %899
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %914

901:                                              ; preds = %899
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %914

902:                                              ; preds = %899
  %903 = load i32, ptr %501, align 4, !tbaa !30
  %904 = icmp eq i32 %903, 1
  br i1 %904, label %905, label %906

905:                                              ; preds = %902
  store i32 0, ptr %492, align 8, !tbaa !31
  store i32 1, ptr %491, align 8, !tbaa !21
  store i32 0, ptr %493, align 8, !tbaa !23
  br label %914

906:                                              ; preds = %902
  %907 = load ptr, ptr %502, align 8, !tbaa !47
  %908 = icmp eq ptr %907, null
  %909 = select i1 %908, ptr @.str.6, ptr %907
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %909) #14
  br label %914

910:                                              ; preds = %899
  %911 = icmp ne i32 %896, 0
  %912 = icmp ne i32 %895, 1
  %913 = select i1 %911, i1 %912, i1 false
  br i1 %913, label %831, label %914, !llvm.loop !48

914:                                              ; preds = %910, %835, %906, %905, %901, %900, %893, %890, %876
  %915 = phi i32 [ %832, %890 ], [ %832, %893 ], [ %895, %900 ], [ -4, %901 ], [ 0, %905 ], [ -3, %906 ], [ %879, %876 ], [ %836, %835 ], [ %895, %910 ]
  %916 = load i32, ptr %495, align 8, !tbaa !45
  %917 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %829, i32 %916), !nosanitize !18
  %918 = extractvalue { i32, i1 } %917, 1, !nosanitize !18
  br i1 %918, label %919, label %920, !nosanitize !18

919:                                              ; preds = %914
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

920:                                              ; preds = %914
  %921 = extractvalue { i32, i1 } %917, 0, !nosanitize !18
  store i32 %921, ptr %3, align 8, !tbaa !17
  %922 = load ptr, ptr %496, align 8, !tbaa !46
  %923 = zext i32 %921 to i64
  %924 = sub nsw i64 0, %923
  %925 = getelementptr inbounds i8, ptr %922, i64 %924
  store ptr %925, ptr %490, align 8, !tbaa !19
  switch i32 %915, label %943 [
    i32 1, label %927
    i32 0, label %930
  ]

926:                                              ; preds = %545
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %943

927:                                              ; preds = %920, %774
  %928 = phi i32 [ 1, %774 ], [ 0, %920 ]
  %929 = phi ptr [ %507, %774 ], [ %493, %920 ]
  store i32 %928, ptr %501, align 4, !tbaa !30
  store i32 0, ptr %929, align 8, !tbaa !42
  br label %930

930:                                              ; preds = %927, %920, %780
  %931 = load i32, ptr %3, align 8, !tbaa !17
  br label %932

932:                                              ; preds = %930, %776
  %933 = phi i32 [ %931, %930 ], [ %779, %776 ]
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %935, label %1109

935:                                              ; preds = %932
  %936 = load i32, ptr %491, align 8, !tbaa !21
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %941, label %938

938:                                              ; preds = %935
  %939 = load i32, ptr %492, align 8, !tbaa !31
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %1109, label %941

941:                                              ; preds = %938, %935
  %942 = load i32, ptr %493, align 8, !tbaa !23
  br label %545, !llvm.loop !49

943:                                              ; preds = %920, %578, %926, %822, %736, %564, %560
  %944 = load i32, ptr %3, align 8, !tbaa !17
  %945 = icmp eq i32 %944, 0
  %946 = sext i1 %945 to i32
  br label %1109

947:                                              ; preds = %540
  %948 = icmp eq i32 %538, 1
  br i1 %948, label %949, label %986

949:                                              ; preds = %947
  store i32 0, ptr %499, align 4, !tbaa !15
  %950 = tail call ptr @__errno_location() #17
  store i32 0, ptr %950, align 4, !tbaa !42
  br label %951

951:                                              ; preds = %970, %949
  %952 = phi i32 [ 0, %949 ], [ %971, %970 ]
  %953 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %513, i32 %952), !nosanitize !18
  %954 = extractvalue { i32, i1 } %953, 1, !nosanitize !18
  br i1 %954, label %955, label %956, !nosanitize !18

955:                                              ; preds = %951
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

956:                                              ; preds = %951
  %957 = extractvalue { i32, i1 } %953, 0, !nosanitize !18
  %958 = tail call i32 @llvm.umin.i32(i32 %957, i32 1073741824)
  %959 = load i32, ptr %500, align 4, !tbaa !43
  %960 = zext i32 %952 to i64
  %961 = getelementptr inbounds i8, ptr %509, i64 %960
  %962 = zext nneg i32 %958 to i64
  %963 = tail call i64 @read(i32 noundef %959, ptr noundef %961, i64 noundef %962) #14
  %964 = trunc i64 %963 to i32
  %965 = icmp slt i32 %964, 1
  br i1 %965, label %973, label %966

966:                                              ; preds = %956
  %967 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %952, i32 %964), !nosanitize !18
  %968 = extractvalue { i32, i1 } %967, 1, !nosanitize !18
  br i1 %968, label %969, label %970, !nosanitize !18

969:                                              ; preds = %966
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

970:                                              ; preds = %966
  %971 = extractvalue { i32, i1 } %967, 0, !nosanitize !18
  %972 = icmp ult i32 %971, %513
  br i1 %972, label %951, label %1089, !llvm.loop !44

973:                                              ; preds = %956
  %974 = icmp slt i32 %964, 0
  br i1 %974, label %975, label %985

975:                                              ; preds = %973
  %976 = load i32, ptr %950, align 4, !tbaa !42
  %977 = icmp eq i32 %976, 11
  br i1 %977, label %978, label %982

978:                                              ; preds = %975
  store i32 1, ptr %499, align 4, !tbaa !15
  %979 = icmp eq i32 %952, 0
  br i1 %979, label %980, label %1091

980:                                              ; preds = %978
  %981 = load i32, ptr %950, align 4, !tbaa !42
  br label %982

982:                                              ; preds = %980, %975
  %983 = phi i32 [ %981, %980 ], [ %976, %975 ]
  %984 = tail call ptr @strerror(i32 noundef %983) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %984) #14
  br label %1091

985:                                              ; preds = %973
  store i32 1, ptr %491, align 8, !tbaa !21
  br label %1091

986:                                              ; preds = %947
  store i32 %513, ptr %495, align 8, !tbaa !55
  store ptr %509, ptr %496, align 8, !tbaa !56
  br label %987

987:                                              ; preds = %1066, %986
  %988 = phi i32 [ 0, %986 ], [ %1051, %1066 ]
  %989 = load i32, ptr %492, align 8, !tbaa !31
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %991, label %1050

991:                                              ; preds = %987
  %992 = load i32, ptr %11, align 8, !tbaa !14
  switch i32 %992, label %1070 [
    i32 0, label %993
    i32 -5, label %993
  ]

993:                                              ; preds = %991, %991
  %994 = load i32, ptr %491, align 8, !tbaa !21
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %996, label %1046

996:                                              ; preds = %993
  %997 = load i32, ptr %494, align 8, !tbaa !24
  %998 = load ptr, ptr %498, align 8, !tbaa !26
  store i32 0, ptr %499, align 4, !tbaa !15
  %999 = tail call ptr @__errno_location() #17
  store i32 0, ptr %999, align 4, !tbaa !42
  br label %1000

1000:                                             ; preds = %1019, %996
  %1001 = phi i32 [ 0, %996 ], [ %1020, %1019 ]
  %1002 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %997, i32 %1001), !nosanitize !18
  %1003 = extractvalue { i32, i1 } %1002, 1, !nosanitize !18
  br i1 %1003, label %1004, label %1005, !nosanitize !18

1004:                                             ; preds = %1000
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

1005:                                             ; preds = %1000
  %1006 = extractvalue { i32, i1 } %1002, 0, !nosanitize !18
  %1007 = tail call i32 @llvm.umin.i32(i32 %1006, i32 1073741824)
  %1008 = load i32, ptr %500, align 4, !tbaa !43
  %1009 = zext i32 %1001 to i64
  %1010 = getelementptr inbounds i8, ptr %998, i64 %1009
  %1011 = zext nneg i32 %1007 to i64
  %1012 = tail call i64 @read(i32 noundef %1008, ptr noundef %1010, i64 noundef %1011) #14
  %1013 = trunc i64 %1012 to i32
  %1014 = icmp slt i32 %1013, 1
  br i1 %1014, label %1022, label %1015

1015:                                             ; preds = %1005
  %1016 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1001, i32 %1013), !nosanitize !18
  %1017 = extractvalue { i32, i1 } %1016, 1, !nosanitize !18
  br i1 %1017, label %1018, label %1019, !nosanitize !18

1018:                                             ; preds = %1015
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

1019:                                             ; preds = %1015
  %1020 = extractvalue { i32, i1 } %1016, 0, !nosanitize !18
  %1021 = icmp ult i32 %1020, %997
  br i1 %1021, label %1000, label %1036, !llvm.loop !44

1022:                                             ; preds = %1005
  %1023 = icmp slt i32 %1013, 0
  br i1 %1023, label %1024, label %1031

1024:                                             ; preds = %1022
  %1025 = load i32, ptr %999, align 4, !tbaa !42
  %1026 = icmp eq i32 %1025, 11
  br i1 %1026, label %1027, label %1032

1027:                                             ; preds = %1024
  store i32 1, ptr %499, align 4, !tbaa !15
  %1028 = icmp eq i32 %1001, 0
  br i1 %1028, label %1029, label %1036

1029:                                             ; preds = %1027
  %1030 = load i32, ptr %999, align 4, !tbaa !42
  br label %1032

1031:                                             ; preds = %1022
  store i32 1, ptr %491, align 8, !tbaa !21
  br label %1036

1032:                                             ; preds = %1024, %1029
  %1033 = phi i32 [ %1030, %1029 ], [ %1025, %1024 ]
  %1034 = tail call ptr @strerror(i32 noundef %1033) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %1034) #14
  %1035 = load i32, ptr %11, align 8, !tbaa !14
  br label %1070

1036:                                             ; preds = %1019, %1031, %1027
  %1037 = phi i32 [ %1001, %1031 ], [ %1001, %1027 ], [ %1020, %1019 ]
  %1038 = load i32, ptr %492, align 8, !tbaa !31
  %1039 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1038, i32 %1037), !nosanitize !18
  %1040 = extractvalue { i32, i1 } %1039, 1, !nosanitize !18
  br i1 %1040, label %1041, label %1042, !nosanitize !18

1041:                                             ; preds = %1036
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

1042:                                             ; preds = %1036
  %1043 = extractvalue { i32, i1 } %1039, 0, !nosanitize !18
  store i32 %1043, ptr %492, align 8, !tbaa !31
  %1044 = load ptr, ptr %498, align 8, !tbaa !26
  store ptr %1044, ptr %497, align 8, !tbaa !32
  %1045 = icmp eq i32 %1043, 0
  br i1 %1045, label %1046, label %1050

1046:                                             ; preds = %1042, %993
  %1047 = load i32, ptr %499, align 4, !tbaa !15
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1049, label %1070

1049:                                             ; preds = %1046
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %1070

1050:                                             ; preds = %1042, %987
  %1051 = tail call i32 @inflate(ptr noundef nonnull %497, i32 noundef 0) #14
  %1052 = load i32, ptr %495, align 8, !tbaa !45
  %1053 = icmp ult i32 %1052, %513
  br i1 %1053, label %1054, label %1055

1054:                                             ; preds = %1050
  store i32 0, ptr %501, align 4, !tbaa !30
  br label %1055

1055:                                             ; preds = %1054, %1050
  switch i32 %1051, label %1066 [
    i32 -2, label %1056
    i32 2, label %1056
    i32 -4, label %1057
    i32 -3, label %1058
  ]

1056:                                             ; preds = %1055, %1055
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %1070

1057:                                             ; preds = %1055
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1070

1058:                                             ; preds = %1055
  %1059 = load i32, ptr %501, align 4, !tbaa !30
  %1060 = icmp eq i32 %1059, 1
  br i1 %1060, label %1061, label %1062

1061:                                             ; preds = %1058
  store i32 0, ptr %492, align 8, !tbaa !31
  store i32 1, ptr %491, align 8, !tbaa !21
  store i32 0, ptr %493, align 8, !tbaa !23
  br label %1070

1062:                                             ; preds = %1058
  %1063 = load ptr, ptr %502, align 8, !tbaa !47
  %1064 = icmp eq ptr %1063, null
  %1065 = select i1 %1064, ptr @.str.6, ptr %1063
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %1065) #14
  br label %1070

1066:                                             ; preds = %1055
  %1067 = icmp ne i32 %1052, 0
  %1068 = icmp ne i32 %1051, 1
  %1069 = select i1 %1067, i1 %1068, i1 false
  br i1 %1069, label %987, label %1070, !llvm.loop !48

1070:                                             ; preds = %1066, %991, %1062, %1061, %1057, %1056, %1049, %1046, %1032
  %1071 = phi i32 [ %988, %1046 ], [ %988, %1049 ], [ %1051, %1056 ], [ -4, %1057 ], [ 0, %1061 ], [ -3, %1062 ], [ %1035, %1032 ], [ %1051, %1066 ], [ %992, %991 ]
  %1072 = load i32, ptr %495, align 8, !tbaa !45
  %1073 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %513, i32 %1072), !nosanitize !18
  %1074 = extractvalue { i32, i1 } %1073, 1, !nosanitize !18
  br i1 %1074, label %1075, label %1076, !nosanitize !18

1075:                                             ; preds = %1070
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

1076:                                             ; preds = %1070
  %1077 = extractvalue { i32, i1 } %1073, 0, !nosanitize !18
  %1078 = load ptr, ptr %496, align 8, !tbaa !46
  %1079 = zext i32 %1077 to i64
  %1080 = sub nsw i64 0, %1079
  %1081 = getelementptr inbounds i8, ptr %1078, i64 %1080
  store ptr %1081, ptr %490, align 8, !tbaa !19
  %1082 = icmp eq i32 %1071, 1
  br i1 %1082, label %1083, label %1084

1083:                                             ; preds = %1076
  store i32 0, ptr %501, align 4, !tbaa !30
  store i32 0, ptr %493, align 8, !tbaa !23
  br label %1087

1084:                                             ; preds = %1076
  %1085 = icmp ne i32 %1071, 0
  %1086 = sext i1 %1085 to i32
  br label %1087

1087:                                             ; preds = %1084, %1083
  %1088 = phi i32 [ 0, %1083 ], [ %1086, %1084 ]
  store i32 0, ptr %3, align 8, !tbaa !17
  br label %1091

1089:                                             ; preds = %970
  %1090 = zext i32 %971 to i64
  br label %1091

1091:                                             ; preds = %1089, %1087, %985, %982, %978, %526
  %1092 = phi i64 [ %1090, %1089 ], [ %960, %985 ], [ %960, %982 ], [ %960, %978 ], [ %519, %526 ], [ %1079, %1087 ]
  %1093 = phi i32 [ 0, %1089 ], [ 0, %985 ], [ -1, %982 ], [ 0, %978 ], [ %530, %526 ], [ %1088, %1087 ]
  %1094 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %510, i64 %1092), !nosanitize !18
  %1095 = extractvalue { i64, i1 } %1094, 0, !nosanitize !18
  %1096 = extractvalue { i64, i1 } %1094, 1, !nosanitize !18
  br i1 %1096, label %525, label %1097, !nosanitize !18

1097:                                             ; preds = %1091
  %1098 = getelementptr inbounds i8, ptr %509, i64 %1092
  %1099 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %511, i64 %1092), !nosanitize !18
  %1100 = extractvalue { i64, i1 } %1099, 0, !nosanitize !18
  %1101 = extractvalue { i64, i1 } %1099, 1, !nosanitize !18
  br i1 %1101, label %1102, label %1103, !nosanitize !18

1102:                                             ; preds = %1103, %1097
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

1103:                                             ; preds = %1097
  %1104 = load i64, ptr %503, align 8, !tbaa !20
  %1105 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1104, i64 %1092), !nosanitize !18
  %1106 = extractvalue { i64, i1 } %1105, 1, !nosanitize !18
  br i1 %1106, label %1102, label %1107, !nosanitize !18

1107:                                             ; preds = %1103
  %1108 = extractvalue { i64, i1 } %1105, 0, !nosanitize !18
  store i64 %1108, ptr %503, align 8, !tbaa !20
  br label %1109

1109:                                             ; preds = %938, %932, %780, %1107, %943, %825
  %1110 = phi ptr [ %1098, %1107 ], [ %509, %943 ], [ %509, %825 ], [ %509, %780 ], [ %509, %932 ], [ %509, %938 ]
  %1111 = phi i64 [ %1095, %1107 ], [ %510, %943 ], [ %510, %825 ], [ %510, %780 ], [ %510, %932 ], [ %510, %938 ]
  %1112 = phi i64 [ %1100, %1107 ], [ %511, %943 ], [ %511, %825 ], [ %511, %780 ], [ %511, %932 ], [ %511, %938 ]
  %1113 = phi i32 [ %1093, %1107 ], [ %946, %943 ], [ 0, %825 ], [ 0, %780 ], [ 0, %932 ], [ 0, %938 ]
  %1114 = icmp ne i64 %1111, 0
  %1115 = icmp eq i32 %1113, 0
  %1116 = select i1 %1114, i1 %1115, i1 false
  br i1 %1116, label %508, label %1117, !llvm.loop !57

1117:                                             ; preds = %1109, %534
  %1118 = phi i64 [ %1111, %1109 ], [ %510, %534 ]
  %1119 = phi i64 [ %1112, %1109 ], [ %511, %534 ]
  %1120 = icmp eq i64 %1118, 0
  br i1 %1120, label %1126, label %1121

1121:                                             ; preds = %1117
  %1122 = load i32, ptr %491, align 8, !tbaa !21
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1126, label %1124

1124:                                             ; preds = %1121
  %1125 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 14
  store i32 1, ptr %1125, align 4, !tbaa !58
  br label %1126

1126:                                             ; preds = %120, %462, %102, %106, %278, %364, %468, %1117, %1121, %1124
  %1127 = phi i64 [ %1119, %1124 ], [ %1119, %1121 ], [ %1119, %1117 ], [ 0, %468 ], [ 0, %364 ], [ 0, %102 ], [ 0, %106 ], [ 0, %278 ], [ 0, %462 ], [ 0, %120 ]
  %1128 = udiv i64 %1127, %1
  br label %1129

1129:                                             ; preds = %1126, %28, %13, %6, %4, %27
  %1130 = phi i64 [ 0, %27 ], [ 0, %4 ], [ 0, %6 ], [ 0, %13 ], [ %1128, %1126 ], [ 0, %28 ]
  ret i64 %1130
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @gzgetc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #14
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1134, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1134

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %10 = load i32, ptr %9, align 8, !tbaa !14
  switch i32 %10, label %11 [
    i32 0, label %15
    i32 -5, label %15
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %1134, label %15

15:                                               ; preds = %8, %8, %11
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %16 = load i32, ptr %0, align 8, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %15
  %19 = add i32 %16, -1
  store i32 %19, ptr %0, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !20
  %22 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %21, i64 1), !nosanitize !18
  %23 = extractvalue { i64, i1 } %22, 1, !nosanitize !18
  br i1 %23, label %24, label %25, !nosanitize !18

24:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

25:                                               ; preds = %18
  %26 = extractvalue { i64, i1 } %22, 0, !nosanitize !18
  store i64 %26, ptr %20, align 8, !tbaa !20
  %27 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !19
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %29, ptr %27, align 8, !tbaa !19
  %30 = load i8, ptr %28, align 1, !tbaa !33
  %31 = zext i8 %30 to i32
  br label %1134

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %34 = load i64, ptr %33, align 8, !tbaa !16
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %491, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %38 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %39 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  %40 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %41 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 10
  %42 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %43 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %44 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %45 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %46 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %47 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %48 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %49 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %50 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %51 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 6
  %52 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %53 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %54 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  br label %55

55:                                               ; preds = %488, %36
  %56 = phi i64 [ %489, %488 ], [ %34, %36 ]
  %57 = load i32, ptr %0, align 8, !tbaa !17
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %55
  %60 = zext i32 %57 to i64
  %61 = icmp slt i64 %56, %60
  %62 = trunc i64 %56 to i32
  %63 = select i1 %61, i32 %62, i32 %57
  %64 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 %63), !nosanitize !18
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !18
  br i1 %65, label %66, label %67, !nosanitize !18

66:                                               ; preds = %76, %59
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

67:                                               ; preds = %59
  %68 = extractvalue { i32, i1 } %64, 0, !nosanitize !18
  store i32 %68, ptr %0, align 8, !tbaa !17
  %69 = load ptr, ptr %37, align 8, !tbaa !19
  %70 = zext i32 %63 to i64
  %71 = getelementptr inbounds i8, ptr %69, i64 %70
  store ptr %71, ptr %37, align 8, !tbaa !19
  %72 = load i64, ptr %38, align 8, !tbaa !20
  %73 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %72, i64 %70), !nosanitize !18
  %74 = extractvalue { i64, i1 } %73, 1, !nosanitize !18
  br i1 %74, label %75, label %76, !nosanitize !18

75:                                               ; preds = %67
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

76:                                               ; preds = %67
  %77 = extractvalue { i64, i1 } %73, 0, !nosanitize !18
  store i64 %77, ptr %38, align 8, !tbaa !20
  %78 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %56, i64 %70), !nosanitize !18
  %79 = extractvalue { i64, i1 } %78, 1, !nosanitize !18
  br i1 %79, label %66, label %80, !nosanitize !18

80:                                               ; preds = %76
  %81 = extractvalue { i64, i1 } %78, 0, !nosanitize !18
  store i64 %81, ptr %33, align 8, !tbaa !16
  br label %488

82:                                               ; preds = %55
  %83 = load i32, ptr %39, align 8, !tbaa !21
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %40, align 8, !tbaa !22
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %491, label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %485, %88
  %90 = load i32, ptr %41, align 8, !tbaa !23
  switch i32 %90, label %470 [
    i32 0, label %91
    i32 1, label %327
    i32 2, label %371
  ]

91:                                               ; preds = %89
  %92 = load i32, ptr %42, align 8, !tbaa !24
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load i32, ptr %52, align 4, !tbaa !25
  %96 = zext i32 %95 to i64
  %97 = tail call noalias ptr @malloc(i64 noundef %96) #16
  store ptr %97, ptr %47, align 8, !tbaa !26
  %98 = shl i32 %95, 1
  %99 = zext i32 %98 to i64
  %100 = tail call noalias ptr @malloc(i64 noundef %99) #16
  store ptr %100, ptr %44, align 8, !tbaa !27
  %101 = icmp eq ptr %97, null
  %102 = icmp eq ptr %100, null
  %103 = or i1 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  tail call void @free(ptr noundef %100) #14
  tail call void @free(ptr noundef %97) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1133

105:                                              ; preds = %94
  store i32 %95, ptr %42, align 8, !tbaa !24
  store i32 0, ptr %40, align 8, !tbaa !22
  store ptr null, ptr %46, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %106 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %44, align 8, !tbaa !27
  tail call void @free(ptr noundef %109) #14
  %110 = load ptr, ptr %47, align 8, !tbaa !26
  tail call void @free(ptr noundef %110) #14
  store i32 0, ptr %42, align 8, !tbaa !24
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1133

111:                                              ; preds = %105, %91
  %112 = load i32, ptr %54, align 8, !tbaa !29
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, ptr %50, align 4, !tbaa !30
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114, %111
  %118 = tail call i32 @inflateReset(ptr noundef nonnull %46) #14
  store i32 2, ptr %41, align 8, !tbaa !23
  %119 = load i32, ptr %50, align 4, !tbaa !30
  %120 = icmp ne i32 %119, -1
  %121 = zext i1 %120 to i32
  store i32 %121, ptr %50, align 4, !tbaa !30
  store i32 0, ptr %54, align 8, !tbaa !29
  br label %324

122:                                              ; preds = %114
  %123 = load i32, ptr %9, align 8, !tbaa !14
  switch i32 %123, label %1133 [
    i32 0, label %124
    i32 -5, label %124
  ]

124:                                              ; preds = %122, %122
  %125 = load i32, ptr %39, align 8, !tbaa !21
  %126 = icmp eq i32 %125, 0
  %127 = load i32, ptr %40, align 8, !tbaa !31
  br i1 %126, label %128, label %292

128:                                              ; preds = %124
  %129 = icmp eq i32 %127, 0
  br i1 %129, label %237, label %130

130:                                              ; preds = %128
  %131 = load ptr, ptr %47, align 8, !tbaa !26
  %132 = load ptr, ptr %46, align 8, !tbaa !32
  %133 = icmp eq ptr %132, %131
  br i1 %133, label %237, label %134

134:                                              ; preds = %130
  %135 = ptrtoint ptr %132 to i64
  %136 = ptrtoint ptr %131 to i64
  %137 = zext i32 %127 to i64
  %138 = icmp ult i32 %127, 8
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
  %151 = load <16 x i8>, ptr %149, align 1, !tbaa !33
  %152 = load <16 x i8>, ptr %150, align 1, !tbaa !33
  %153 = getelementptr i8, ptr %148, i64 16
  store <16 x i8> %151, ptr %148, align 1, !tbaa !33
  store <16 x i8> %152, ptr %153, align 1, !tbaa !33
  %154 = add nuw i64 %147, 32
  %155 = icmp eq i64 %154, %145
  br i1 %155, label %156, label %146, !llvm.loop !67

156:                                              ; preds = %146
  %157 = icmp eq i64 %145, %137
  br i1 %157, label %235, label %158

158:                                              ; preds = %156
  %159 = trunc i64 %145 to i32
  %160 = sub i32 %127, %159
  %161 = getelementptr i8, ptr %132, i64 %145
  %162 = getelementptr i8, ptr %131, i64 %145
  %163 = and i64 %137, 24
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %181, label %165

165:                                              ; preds = %142, %158
  %166 = phi i64 [ %145, %158 ], [ 0, %142 ]
  %167 = and i64 %137, 4294967288
  %168 = getelementptr i8, ptr %131, i64 %167
  %169 = getelementptr i8, ptr %132, i64 %167
  %170 = trunc i64 %167 to i32
  %171 = sub i32 %127, %170
  br label %172

172:                                              ; preds = %172, %165
  %173 = phi i64 [ %166, %165 ], [ %177, %172 ]
  %174 = getelementptr i8, ptr %131, i64 %173
  %175 = getelementptr i8, ptr %132, i64 %173
  %176 = load <8 x i8>, ptr %175, align 1, !tbaa !33
  store <8 x i8> %176, ptr %174, align 1, !tbaa !33
  %177 = add nuw i64 %173, 8
  %178 = icmp eq i64 %177, %167
  br i1 %178, label %179, label %172, !llvm.loop !68

179:                                              ; preds = %172
  %180 = icmp eq i64 %167, %137
  br i1 %180, label %235, label %181

181:                                              ; preds = %134, %158, %179
  %182 = phi ptr [ %131, %134 ], [ %162, %158 ], [ %168, %179 ]
  %183 = phi ptr [ %132, %134 ], [ %161, %158 ], [ %169, %179 ]
  %184 = phi i32 [ %127, %134 ], [ %160, %158 ], [ %171, %179 ]
  %185 = add i32 %184, -1
  %186 = and i32 %184, 7
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %199, label %188

188:                                              ; preds = %181, %188
  %189 = phi ptr [ %195, %188 ], [ %182, %181 ]
  %190 = phi ptr [ %196, %188 ], [ %183, %181 ]
  %191 = phi i32 [ %194, %188 ], [ %184, %181 ]
  %192 = phi i32 [ %197, %188 ], [ 0, %181 ]
  %193 = load i8, ptr %190, align 1, !tbaa !33
  store i8 %193, ptr %189, align 1, !tbaa !33
  %194 = add i32 %191, -1
  %195 = getelementptr inbounds i8, ptr %189, i64 1
  %196 = getelementptr inbounds i8, ptr %190, i64 1
  %197 = add i32 %192, 1
  %198 = icmp eq i32 %197, %186
  br i1 %198, label %199, label %188, !llvm.loop !69

199:                                              ; preds = %188, %181
  %200 = phi ptr [ %182, %181 ], [ %195, %188 ]
  %201 = phi ptr [ %183, %181 ], [ %196, %188 ]
  %202 = phi i32 [ %184, %181 ], [ %194, %188 ]
  %203 = icmp ult i32 %185, 7
  br i1 %203, label %235, label %204

204:                                              ; preds = %199, %204
  %205 = phi ptr [ %231, %204 ], [ %200, %199 ]
  %206 = phi ptr [ %232, %204 ], [ %201, %199 ]
  %207 = phi i32 [ %230, %204 ], [ %202, %199 ]
  %208 = load i8, ptr %206, align 1, !tbaa !33
  store i8 %208, ptr %205, align 1, !tbaa !33
  %209 = getelementptr inbounds i8, ptr %205, i64 1
  %210 = getelementptr inbounds i8, ptr %206, i64 1
  %211 = load i8, ptr %210, align 1, !tbaa !33
  store i8 %211, ptr %209, align 1, !tbaa !33
  %212 = getelementptr inbounds i8, ptr %205, i64 2
  %213 = getelementptr inbounds i8, ptr %206, i64 2
  %214 = load i8, ptr %213, align 1, !tbaa !33
  store i8 %214, ptr %212, align 1, !tbaa !33
  %215 = getelementptr inbounds i8, ptr %205, i64 3
  %216 = getelementptr inbounds i8, ptr %206, i64 3
  %217 = load i8, ptr %216, align 1, !tbaa !33
  store i8 %217, ptr %215, align 1, !tbaa !33
  %218 = getelementptr inbounds i8, ptr %205, i64 4
  %219 = getelementptr inbounds i8, ptr %206, i64 4
  %220 = load i8, ptr %219, align 1, !tbaa !33
  store i8 %220, ptr %218, align 1, !tbaa !33
  %221 = getelementptr inbounds i8, ptr %205, i64 5
  %222 = getelementptr inbounds i8, ptr %206, i64 5
  %223 = load i8, ptr %222, align 1, !tbaa !33
  store i8 %223, ptr %221, align 1, !tbaa !33
  %224 = getelementptr inbounds i8, ptr %205, i64 6
  %225 = getelementptr inbounds i8, ptr %206, i64 6
  %226 = load i8, ptr %225, align 1, !tbaa !33
  store i8 %226, ptr %224, align 1, !tbaa !33
  %227 = getelementptr inbounds i8, ptr %205, i64 7
  %228 = getelementptr inbounds i8, ptr %206, i64 7
  %229 = load i8, ptr %228, align 1, !tbaa !33
  store i8 %229, ptr %227, align 1, !tbaa !33
  %230 = add i32 %207, -8
  %231 = getelementptr inbounds i8, ptr %205, i64 8
  %232 = getelementptr inbounds i8, ptr %206, i64 8
  %233 = icmp eq i32 %230, 0
  br i1 %233, label %235, label %204, !llvm.loop !70

234:                                              ; preds = %237
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

235:                                              ; preds = %199, %204, %179, %156
  %236 = load i32, ptr %40, align 8, !tbaa !31
  br label %237

237:                                              ; preds = %235, %130, %128
  %238 = phi i32 [ %236, %235 ], [ %127, %130 ], [ 0, %128 ]
  %239 = load i32, ptr %42, align 8, !tbaa !24
  %240 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %239, i32 %238), !nosanitize !18
  %241 = extractvalue { i32, i1 } %240, 1, !nosanitize !18
  br i1 %241, label %234, label %242, !nosanitize !18

242:                                              ; preds = %237
  %243 = extractvalue { i32, i1 } %240, 0, !nosanitize !18
  %244 = load ptr, ptr %47, align 8, !tbaa !26
  %245 = zext i32 %238 to i64
  %246 = getelementptr inbounds i8, ptr %244, i64 %245
  store i32 0, ptr %48, align 4, !tbaa !15
  %247 = tail call ptr @__errno_location() #17
  store i32 0, ptr %247, align 4, !tbaa !42
  br label %248

248:                                              ; preds = %267, %242
  %249 = phi i32 [ 0, %242 ], [ %268, %267 ]
  %250 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %243, i32 %249), !nosanitize !18
  %251 = extractvalue { i32, i1 } %250, 1, !nosanitize !18
  br i1 %251, label %252, label %253, !nosanitize !18

252:                                              ; preds = %248
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

253:                                              ; preds = %248
  %254 = extractvalue { i32, i1 } %250, 0, !nosanitize !18
  %255 = tail call i32 @llvm.umin.i32(i32 %254, i32 1073741824)
  %256 = load i32, ptr %49, align 4, !tbaa !43
  %257 = zext i32 %249 to i64
  %258 = getelementptr inbounds i8, ptr %246, i64 %257
  %259 = zext nneg i32 %255 to i64
  %260 = tail call i64 @read(i32 noundef %256, ptr noundef %258, i64 noundef %259) #14
  %261 = trunc i64 %260 to i32
  %262 = icmp slt i32 %261, 1
  br i1 %262, label %270, label %263

263:                                              ; preds = %253
  %264 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %249, i32 %261), !nosanitize !18
  %265 = extractvalue { i32, i1 } %264, 1, !nosanitize !18
  br i1 %265, label %266, label %267, !nosanitize !18

266:                                              ; preds = %263
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

267:                                              ; preds = %263
  %268 = extractvalue { i32, i1 } %264, 0, !nosanitize !18
  %269 = icmp ult i32 %268, %243
  br i1 %269, label %248, label %283, !llvm.loop !44

270:                                              ; preds = %253
  %271 = icmp slt i32 %261, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %270
  %273 = load i32, ptr %247, align 4, !tbaa !42
  %274 = icmp eq i32 %273, 11
  br i1 %274, label %275, label %280

275:                                              ; preds = %272
  store i32 1, ptr %48, align 4, !tbaa !15
  %276 = icmp eq i32 %249, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %275
  %278 = load i32, ptr %247, align 4, !tbaa !42
  br label %280

279:                                              ; preds = %270
  store i32 1, ptr %39, align 8, !tbaa !21
  br label %283

280:                                              ; preds = %272, %277
  %281 = phi i32 [ %278, %277 ], [ %273, %272 ]
  %282 = tail call ptr @strerror(i32 noundef %281) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %282) #14
  br label %1133

283:                                              ; preds = %267, %279, %275
  %284 = phi i32 [ %249, %279 ], [ %249, %275 ], [ %268, %267 ]
  %285 = load i32, ptr %40, align 8, !tbaa !31
  %286 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %285, i32 %284), !nosanitize !18
  %287 = extractvalue { i32, i1 } %286, 1, !nosanitize !18
  br i1 %287, label %288, label %289, !nosanitize !18

288:                                              ; preds = %283
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

289:                                              ; preds = %283
  %290 = extractvalue { i32, i1 } %286, 0, !nosanitize !18
  store i32 %290, ptr %40, align 8, !tbaa !31
  %291 = load ptr, ptr %47, align 8, !tbaa !26
  store ptr %291, ptr %46, align 8, !tbaa !32
  br label %292

292:                                              ; preds = %289, %124
  %293 = phi i32 [ %290, %289 ], [ %127, %124 ]
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %324, label %295

295:                                              ; preds = %292
  %296 = load i32, ptr %48, align 4, !tbaa !15
  %297 = icmp ne i32 %296, 0
  %298 = icmp ult i32 %293, 4
  %299 = and i1 %298, %297
  br i1 %299, label %324, label %300

300:                                              ; preds = %295
  %301 = icmp ugt i32 %293, 3
  %302 = load ptr, ptr %46, align 8, !tbaa !32
  br i1 %301, label %303, label %320

303:                                              ; preds = %300
  %304 = load i8, ptr %302, align 1, !tbaa !33
  %305 = icmp eq i8 %304, 31
  br i1 %305, label %306, label %320

306:                                              ; preds = %303
  %307 = getelementptr inbounds i8, ptr %302, i64 1
  %308 = load i8, ptr %307, align 1, !tbaa !33
  %309 = icmp eq i8 %308, -117
  br i1 %309, label %310, label %320

310:                                              ; preds = %306
  %311 = getelementptr inbounds i8, ptr %302, i64 2
  %312 = load i8, ptr %311, align 1, !tbaa !33
  %313 = icmp eq i8 %312, 8
  br i1 %313, label %314, label %320

314:                                              ; preds = %310
  %315 = getelementptr inbounds i8, ptr %302, i64 3
  %316 = load i8, ptr %315, align 1, !tbaa !33
  %317 = icmp ult i8 %316, 32
  br i1 %317, label %318, label %320

318:                                              ; preds = %314
  %319 = tail call i32 @inflateReset(ptr noundef nonnull %46) #14
  store i32 2, ptr %41, align 8, !tbaa !23
  br label %471

320:                                              ; preds = %314, %310, %306, %303, %300
  %321 = load ptr, ptr %44, align 8, !tbaa !27
  store ptr %321, ptr %37, align 8, !tbaa !19
  %322 = zext i32 %293 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %321, ptr align 1 %302, i64 %322, i1 false)
  %323 = load i32, ptr %40, align 8, !tbaa !31
  store i32 %323, ptr %0, align 8, !tbaa !17
  store i32 0, ptr %40, align 8, !tbaa !31
  store i32 1, ptr %41, align 8, !tbaa !23
  br label %476

324:                                              ; preds = %295, %292, %117
  %325 = load i32, ptr %41, align 8, !tbaa !23
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %486, label %474

327:                                              ; preds = %89
  %328 = load ptr, ptr %44, align 8, !tbaa !27
  %329 = load i32, ptr %42, align 8, !tbaa !24
  %330 = shl i32 %329, 1
  store i32 0, ptr %48, align 4, !tbaa !15
  %331 = tail call ptr @__errno_location() #17
  store i32 0, ptr %331, align 4, !tbaa !42
  store i32 0, ptr %0, align 4, !tbaa !42
  br label %332

332:                                              ; preds = %352, %327
  %333 = phi i32 [ %353, %352 ], [ 0, %327 ]
  %334 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %330, i32 %333), !nosanitize !18
  %335 = extractvalue { i32, i1 } %334, 1, !nosanitize !18
  br i1 %335, label %336, label %337, !nosanitize !18

336:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

337:                                              ; preds = %332
  %338 = extractvalue { i32, i1 } %334, 0, !nosanitize !18
  %339 = tail call i32 @llvm.umin.i32(i32 %338, i32 1073741824)
  %340 = load i32, ptr %49, align 4, !tbaa !43
  %341 = zext i32 %333 to i64
  %342 = getelementptr inbounds i8, ptr %328, i64 %341
  %343 = zext nneg i32 %339 to i64
  %344 = tail call i64 @read(i32 noundef %340, ptr noundef %342, i64 noundef %343) #14
  %345 = trunc i64 %344 to i32
  %346 = icmp slt i32 %345, 1
  br i1 %346, label %355, label %347

347:                                              ; preds = %337
  %348 = load i32, ptr %0, align 4, !tbaa !42
  %349 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %348, i32 %345), !nosanitize !18
  %350 = extractvalue { i32, i1 } %349, 1, !nosanitize !18
  br i1 %350, label %351, label %352, !nosanitize !18

351:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

352:                                              ; preds = %347
  %353 = extractvalue { i32, i1 } %349, 0, !nosanitize !18
  store i32 %353, ptr %0, align 4, !tbaa !42
  %354 = icmp ult i32 %353, %330
  br i1 %354, label %332, label %369, !llvm.loop !44

355:                                              ; preds = %337
  %356 = icmp slt i32 %345, 0
  br i1 %356, label %357, label %365

357:                                              ; preds = %355
  %358 = load i32, ptr %331, align 4, !tbaa !42
  %359 = icmp eq i32 %358, 11
  br i1 %359, label %360, label %366

360:                                              ; preds = %357
  store i32 1, ptr %48, align 4, !tbaa !15
  %361 = load i32, ptr %0, align 4, !tbaa !42
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %360
  %364 = load i32, ptr %331, align 4, !tbaa !42
  br label %366

365:                                              ; preds = %355
  store i32 1, ptr %39, align 8, !tbaa !21
  br label %369

366:                                              ; preds = %357, %363
  %367 = phi i32 [ %364, %363 ], [ %358, %357 ]
  %368 = tail call ptr @strerror(i32 noundef %367) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %368) #14
  br label %1133

369:                                              ; preds = %352, %365, %360
  %370 = load ptr, ptr %44, align 8, !tbaa !27
  store ptr %370, ptr %37, align 8, !tbaa !19
  br label %486

371:                                              ; preds = %89
  %372 = load i32, ptr %42, align 8, !tbaa !24
  %373 = shl i32 %372, 1
  store i32 %373, ptr %43, align 8, !tbaa !45
  %374 = load ptr, ptr %44, align 8, !tbaa !27
  store ptr %374, ptr %45, align 8, !tbaa !46
  br label %375

375:                                              ; preds = %454, %371
  %376 = phi i32 [ 0, %371 ], [ %439, %454 ]
  %377 = load i32, ptr %40, align 8, !tbaa !31
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %438

379:                                              ; preds = %375
  %380 = load i32, ptr %9, align 8, !tbaa !14
  switch i32 %380, label %458 [
    i32 0, label %381
    i32 -5, label %381
  ]

381:                                              ; preds = %379, %379
  %382 = load i32, ptr %39, align 8, !tbaa !21
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %434

384:                                              ; preds = %381
  %385 = load i32, ptr %42, align 8, !tbaa !24
  %386 = load ptr, ptr %47, align 8, !tbaa !26
  store i32 0, ptr %48, align 4, !tbaa !15
  %387 = tail call ptr @__errno_location() #17
  store i32 0, ptr %387, align 4, !tbaa !42
  br label %388

388:                                              ; preds = %407, %384
  %389 = phi i32 [ 0, %384 ], [ %408, %407 ]
  %390 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %385, i32 %389), !nosanitize !18
  %391 = extractvalue { i32, i1 } %390, 1, !nosanitize !18
  br i1 %391, label %392, label %393, !nosanitize !18

392:                                              ; preds = %388
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

393:                                              ; preds = %388
  %394 = extractvalue { i32, i1 } %390, 0, !nosanitize !18
  %395 = tail call i32 @llvm.umin.i32(i32 %394, i32 1073741824)
  %396 = load i32, ptr %49, align 4, !tbaa !43
  %397 = zext i32 %389 to i64
  %398 = getelementptr inbounds i8, ptr %386, i64 %397
  %399 = zext nneg i32 %395 to i64
  %400 = tail call i64 @read(i32 noundef %396, ptr noundef %398, i64 noundef %399) #14
  %401 = trunc i64 %400 to i32
  %402 = icmp slt i32 %401, 1
  br i1 %402, label %410, label %403

403:                                              ; preds = %393
  %404 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %389, i32 %401), !nosanitize !18
  %405 = extractvalue { i32, i1 } %404, 1, !nosanitize !18
  br i1 %405, label %406, label %407, !nosanitize !18

406:                                              ; preds = %403
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

407:                                              ; preds = %403
  %408 = extractvalue { i32, i1 } %404, 0, !nosanitize !18
  %409 = icmp ult i32 %408, %385
  br i1 %409, label %388, label %424, !llvm.loop !44

410:                                              ; preds = %393
  %411 = icmp slt i32 %401, 0
  br i1 %411, label %412, label %419

412:                                              ; preds = %410
  %413 = load i32, ptr %387, align 4, !tbaa !42
  %414 = icmp eq i32 %413, 11
  br i1 %414, label %415, label %420

415:                                              ; preds = %412
  store i32 1, ptr %48, align 4, !tbaa !15
  %416 = icmp eq i32 %389, 0
  br i1 %416, label %417, label %424

417:                                              ; preds = %415
  %418 = load i32, ptr %387, align 4, !tbaa !42
  br label %420

419:                                              ; preds = %410
  store i32 1, ptr %39, align 8, !tbaa !21
  br label %424

420:                                              ; preds = %412, %417
  %421 = phi i32 [ %418, %417 ], [ %413, %412 ]
  %422 = tail call ptr @strerror(i32 noundef %421) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %422) #14
  %423 = load i32, ptr %9, align 8, !tbaa !14
  br label %458

424:                                              ; preds = %407, %419, %415
  %425 = phi i32 [ %389, %419 ], [ %389, %415 ], [ %408, %407 ]
  %426 = load i32, ptr %40, align 8, !tbaa !31
  %427 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %426, i32 %425), !nosanitize !18
  %428 = extractvalue { i32, i1 } %427, 1, !nosanitize !18
  br i1 %428, label %429, label %430, !nosanitize !18

429:                                              ; preds = %424
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

430:                                              ; preds = %424
  %431 = extractvalue { i32, i1 } %427, 0, !nosanitize !18
  store i32 %431, ptr %40, align 8, !tbaa !31
  %432 = load ptr, ptr %47, align 8, !tbaa !26
  store ptr %432, ptr %46, align 8, !tbaa !32
  %433 = icmp eq i32 %431, 0
  br i1 %433, label %434, label %438

434:                                              ; preds = %430, %381
  %435 = load i32, ptr %48, align 4, !tbaa !15
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %458

437:                                              ; preds = %434
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %458

438:                                              ; preds = %430, %375
  %439 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #14
  %440 = load i32, ptr %43, align 8, !tbaa !45
  %441 = icmp ult i32 %440, %373
  br i1 %441, label %442, label %443

442:                                              ; preds = %438
  store i32 0, ptr %50, align 4, !tbaa !30
  br label %443

443:                                              ; preds = %442, %438
  switch i32 %439, label %454 [
    i32 -2, label %444
    i32 2, label %444
    i32 -4, label %445
    i32 -3, label %446
  ]

444:                                              ; preds = %443, %443
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %458

445:                                              ; preds = %443
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %458

446:                                              ; preds = %443
  %447 = load i32, ptr %50, align 4, !tbaa !30
  %448 = icmp eq i32 %447, 1
  br i1 %448, label %449, label %450

449:                                              ; preds = %446
  store i32 0, ptr %40, align 8, !tbaa !31
  store i32 1, ptr %39, align 8, !tbaa !21
  store i32 0, ptr %41, align 8, !tbaa !23
  br label %458

450:                                              ; preds = %446
  %451 = load ptr, ptr %51, align 8, !tbaa !47
  %452 = icmp eq ptr %451, null
  %453 = select i1 %452, ptr @.str.6, ptr %451
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %453) #14
  br label %458

454:                                              ; preds = %443
  %455 = icmp ne i32 %440, 0
  %456 = icmp ne i32 %439, 1
  %457 = select i1 %455, i1 %456, i1 false
  br i1 %457, label %375, label %458, !llvm.loop !48

458:                                              ; preds = %454, %379, %450, %449, %445, %444, %437, %434, %420
  %459 = phi i32 [ %376, %434 ], [ %376, %437 ], [ %439, %444 ], [ -4, %445 ], [ 0, %449 ], [ -3, %450 ], [ %423, %420 ], [ %439, %454 ], [ %380, %379 ]
  %460 = load i32, ptr %43, align 8, !tbaa !45
  %461 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %373, i32 %460), !nosanitize !18
  %462 = extractvalue { i32, i1 } %461, 1, !nosanitize !18
  br i1 %462, label %463, label %464, !nosanitize !18

463:                                              ; preds = %458
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

464:                                              ; preds = %458
  %465 = extractvalue { i32, i1 } %461, 0, !nosanitize !18
  store i32 %465, ptr %0, align 8, !tbaa !17
  %466 = load ptr, ptr %45, align 8, !tbaa !46
  %467 = zext i32 %465 to i64
  %468 = sub nsw i64 0, %467
  %469 = getelementptr inbounds i8, ptr %466, i64 %468
  store ptr %469, ptr %37, align 8, !tbaa !19
  switch i32 %459, label %1133 [
    i32 1, label %471
    i32 0, label %474
  ]

470:                                              ; preds = %89
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %1133

471:                                              ; preds = %464, %318
  %472 = phi i32 [ 1, %318 ], [ 0, %464 ]
  %473 = phi ptr [ %54, %318 ], [ %41, %464 ]
  store i32 %472, ptr %50, align 4, !tbaa !30
  store i32 0, ptr %473, align 8, !tbaa !42
  br label %474

474:                                              ; preds = %471, %464, %324
  %475 = load i32, ptr %0, align 8, !tbaa !17
  br label %476

476:                                              ; preds = %474, %320
  %477 = phi i32 [ %475, %474 ], [ %323, %320 ]
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %486

479:                                              ; preds = %476
  %480 = load i32, ptr %39, align 8, !tbaa !21
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %485, label %482

482:                                              ; preds = %479
  %483 = load i32, ptr %40, align 8, !tbaa !31
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %486, label %485

485:                                              ; preds = %482, %479
  br label %89, !llvm.loop !49

486:                                              ; preds = %482, %476, %324, %369
  %487 = load i64, ptr %33, align 8, !tbaa !16
  br label %488

488:                                              ; preds = %486, %80
  %489 = phi i64 [ %487, %486 ], [ %81, %80 ]
  %490 = icmp eq i64 %489, 0
  br i1 %490, label %491, label %55, !llvm.loop !50

491:                                              ; preds = %488, %85, %32
  %492 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %493 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  %494 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %495 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 10
  %496 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %497 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %498 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %499 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %500 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %501 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %502 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %503 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %504 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 6
  %505 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %506 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %507 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %508 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %509 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  br label %510

510:                                              ; preds = %1111, %491
  %511 = phi ptr [ %2, %491 ], [ %1112, %1111 ]
  %512 = phi i64 [ 1, %491 ], [ %1113, %1111 ]
  %513 = phi i64 [ 0, %491 ], [ %1114, %1111 ]
  %514 = call i64 @llvm.umin.i64(i64 %512, i64 4294967295)
  %515 = trunc i64 %514 to i32
  %516 = load i32, ptr %0, align 8, !tbaa !17
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %533, label %518

518:                                              ; preds = %510
  %519 = call i32 @llvm.umin.i32(i32 %516, i32 %515)
  %520 = load ptr, ptr %492, align 8, !tbaa !19
  %521 = zext i32 %519 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %511, ptr align 1 %520, i64 %521, i1 false)
  %522 = load ptr, ptr %492, align 8, !tbaa !19
  %523 = getelementptr inbounds i8, ptr %522, i64 %521
  store ptr %523, ptr %492, align 8, !tbaa !19
  %524 = load i32, ptr %0, align 8, !tbaa !17
  %525 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %524, i32 %519), !nosanitize !18
  %526 = extractvalue { i32, i1 } %525, 1, !nosanitize !18
  br i1 %526, label %527, label %528, !nosanitize !18

527:                                              ; preds = %1093, %518
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

528:                                              ; preds = %518
  %529 = extractvalue { i32, i1 } %525, 0, !nosanitize !18
  store i32 %529, ptr %0, align 8, !tbaa !17
  %530 = load i32, ptr %9, align 8, !tbaa !14
  %531 = icmp ne i32 %530, 0
  %532 = sext i1 %531 to i32
  br label %1093

533:                                              ; preds = %510
  %534 = load i32, ptr %493, align 8, !tbaa !21
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %539, label %536

536:                                              ; preds = %533
  %537 = load i32, ptr %494, align 8, !tbaa !22
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %1124, label %539

539:                                              ; preds = %536, %533
  %540 = load i32, ptr %495, align 8, !tbaa !23
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %546, label %542

542:                                              ; preds = %539
  %543 = load i32, ptr %496, align 8, !tbaa !24
  %544 = shl i32 %543, 1
  %545 = icmp ugt i32 %544, %515
  br i1 %545, label %546, label %949

546:                                              ; preds = %542, %539
  br label %547

547:                                              ; preds = %546, %943
  %548 = phi i32 [ %944, %943 ], [ %540, %546 ]
  switch i32 %548, label %928 [
    i32 0, label %549
    i32 1, label %785
    i32 2, label %829
  ]

549:                                              ; preds = %547
  %550 = load i32, ptr %496, align 8, !tbaa !24
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %569

552:                                              ; preds = %549
  %553 = load i32, ptr %507, align 4, !tbaa !25
  %554 = zext i32 %553 to i64
  %555 = call noalias ptr @malloc(i64 noundef %554) #16
  store ptr %555, ptr %500, align 8, !tbaa !26
  %556 = shl i32 %553, 1
  %557 = zext i32 %556 to i64
  %558 = call noalias ptr @malloc(i64 noundef %557) #16
  store ptr %558, ptr %506, align 8, !tbaa !27
  %559 = icmp eq ptr %555, null
  %560 = icmp eq ptr %558, null
  %561 = or i1 %559, %560
  br i1 %561, label %562, label %563

562:                                              ; preds = %552
  call void @free(ptr noundef %558) #14
  call void @free(ptr noundef %555) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %945

563:                                              ; preds = %552
  store i32 %553, ptr %496, align 8, !tbaa !24
  store i32 0, ptr %494, align 8, !tbaa !22
  store ptr null, ptr %499, align 8, !tbaa !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %508, i8 0, i64 24, i1 false)
  %564 = call i32 @inflateInit2_(ptr noundef nonnull %499, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %569, label %566

566:                                              ; preds = %563
  %567 = load ptr, ptr %506, align 8, !tbaa !27
  call void @free(ptr noundef %567) #14
  %568 = load ptr, ptr %500, align 8, !tbaa !26
  call void @free(ptr noundef %568) #14
  store i32 0, ptr %496, align 8, !tbaa !24
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %945

569:                                              ; preds = %563, %549
  %570 = load i32, ptr %509, align 8, !tbaa !29
  %571 = icmp eq i32 %570, -1
  br i1 %571, label %575, label %572

572:                                              ; preds = %569
  %573 = load i32, ptr %503, align 4, !tbaa !30
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %580

575:                                              ; preds = %572, %569
  %576 = call i32 @inflateReset(ptr noundef nonnull %499) #14
  store i32 2, ptr %495, align 8, !tbaa !23
  %577 = load i32, ptr %503, align 4, !tbaa !30
  %578 = icmp ne i32 %577, -1
  %579 = zext i1 %578 to i32
  store i32 %579, ptr %503, align 4, !tbaa !30
  store i32 0, ptr %509, align 8, !tbaa !29
  br label %782

580:                                              ; preds = %572
  %581 = load i32, ptr %9, align 8, !tbaa !14
  switch i32 %581, label %945 [
    i32 0, label %582
    i32 -5, label %582
  ]

582:                                              ; preds = %580, %580
  %583 = load i32, ptr %493, align 8, !tbaa !21
  %584 = icmp eq i32 %583, 0
  %585 = load i32, ptr %494, align 8, !tbaa !31
  br i1 %584, label %586, label %750

586:                                              ; preds = %582
  %587 = icmp eq i32 %585, 0
  br i1 %587, label %695, label %588

588:                                              ; preds = %586
  %589 = load ptr, ptr %500, align 8, !tbaa !26
  %590 = load ptr, ptr %499, align 8, !tbaa !32
  %591 = icmp eq ptr %590, %589
  br i1 %591, label %695, label %592

592:                                              ; preds = %588
  %593 = ptrtoint ptr %590 to i64
  %594 = ptrtoint ptr %589 to i64
  %595 = zext i32 %585 to i64
  %596 = icmp ult i32 %585, 8
  %597 = sub i64 %594, %593
  %598 = icmp ult i64 %597, 32
  %599 = or i1 %596, %598
  br i1 %599, label %639, label %600

600:                                              ; preds = %592
  %601 = icmp ult i32 %585, 32
  br i1 %601, label %623, label %602

602:                                              ; preds = %600
  %603 = and i64 %595, 4294967264
  br label %604

604:                                              ; preds = %604, %602
  %605 = phi i64 [ 0, %602 ], [ %612, %604 ]
  %606 = getelementptr i8, ptr %589, i64 %605
  %607 = getelementptr i8, ptr %590, i64 %605
  %608 = getelementptr i8, ptr %607, i64 16
  %609 = load <16 x i8>, ptr %607, align 1, !tbaa !33
  %610 = load <16 x i8>, ptr %608, align 1, !tbaa !33
  %611 = getelementptr i8, ptr %606, i64 16
  store <16 x i8> %609, ptr %606, align 1, !tbaa !33
  store <16 x i8> %610, ptr %611, align 1, !tbaa !33
  %612 = add nuw i64 %605, 32
  %613 = icmp eq i64 %612, %603
  br i1 %613, label %614, label %604, !llvm.loop !71

614:                                              ; preds = %604
  %615 = icmp eq i64 %603, %595
  br i1 %615, label %693, label %616

616:                                              ; preds = %614
  %617 = trunc i64 %603 to i32
  %618 = sub i32 %585, %617
  %619 = getelementptr i8, ptr %590, i64 %603
  %620 = getelementptr i8, ptr %589, i64 %603
  %621 = and i64 %595, 24
  %622 = icmp eq i64 %621, 0
  br i1 %622, label %639, label %623

623:                                              ; preds = %600, %616
  %624 = phi i64 [ %603, %616 ], [ 0, %600 ]
  %625 = and i64 %595, 4294967288
  %626 = getelementptr i8, ptr %589, i64 %625
  %627 = getelementptr i8, ptr %590, i64 %625
  %628 = trunc i64 %625 to i32
  %629 = sub i32 %585, %628
  br label %630

630:                                              ; preds = %630, %623
  %631 = phi i64 [ %624, %623 ], [ %635, %630 ]
  %632 = getelementptr i8, ptr %589, i64 %631
  %633 = getelementptr i8, ptr %590, i64 %631
  %634 = load <8 x i8>, ptr %633, align 1, !tbaa !33
  store <8 x i8> %634, ptr %632, align 1, !tbaa !33
  %635 = add nuw i64 %631, 8
  %636 = icmp eq i64 %635, %625
  br i1 %636, label %637, label %630, !llvm.loop !72

637:                                              ; preds = %630
  %638 = icmp eq i64 %625, %595
  br i1 %638, label %693, label %639

639:                                              ; preds = %592, %616, %637
  %640 = phi ptr [ %589, %592 ], [ %620, %616 ], [ %626, %637 ]
  %641 = phi ptr [ %590, %592 ], [ %619, %616 ], [ %627, %637 ]
  %642 = phi i32 [ %585, %592 ], [ %618, %616 ], [ %629, %637 ]
  %643 = add i32 %642, -1
  %644 = and i32 %642, 7
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %657, label %646

646:                                              ; preds = %639, %646
  %647 = phi ptr [ %653, %646 ], [ %640, %639 ]
  %648 = phi ptr [ %654, %646 ], [ %641, %639 ]
  %649 = phi i32 [ %652, %646 ], [ %642, %639 ]
  %650 = phi i32 [ %655, %646 ], [ 0, %639 ]
  %651 = load i8, ptr %648, align 1, !tbaa !33
  store i8 %651, ptr %647, align 1, !tbaa !33
  %652 = add i32 %649, -1
  %653 = getelementptr inbounds i8, ptr %647, i64 1
  %654 = getelementptr inbounds i8, ptr %648, i64 1
  %655 = add i32 %650, 1
  %656 = icmp eq i32 %655, %644
  br i1 %656, label %657, label %646, !llvm.loop !73

657:                                              ; preds = %646, %639
  %658 = phi ptr [ %640, %639 ], [ %653, %646 ]
  %659 = phi ptr [ %641, %639 ], [ %654, %646 ]
  %660 = phi i32 [ %642, %639 ], [ %652, %646 ]
  %661 = icmp ult i32 %643, 7
  br i1 %661, label %693, label %662

662:                                              ; preds = %657, %662
  %663 = phi ptr [ %689, %662 ], [ %658, %657 ]
  %664 = phi ptr [ %690, %662 ], [ %659, %657 ]
  %665 = phi i32 [ %688, %662 ], [ %660, %657 ]
  %666 = load i8, ptr %664, align 1, !tbaa !33
  store i8 %666, ptr %663, align 1, !tbaa !33
  %667 = getelementptr inbounds i8, ptr %663, i64 1
  %668 = getelementptr inbounds i8, ptr %664, i64 1
  %669 = load i8, ptr %668, align 1, !tbaa !33
  store i8 %669, ptr %667, align 1, !tbaa !33
  %670 = getelementptr inbounds i8, ptr %663, i64 2
  %671 = getelementptr inbounds i8, ptr %664, i64 2
  %672 = load i8, ptr %671, align 1, !tbaa !33
  store i8 %672, ptr %670, align 1, !tbaa !33
  %673 = getelementptr inbounds i8, ptr %663, i64 3
  %674 = getelementptr inbounds i8, ptr %664, i64 3
  %675 = load i8, ptr %674, align 1, !tbaa !33
  store i8 %675, ptr %673, align 1, !tbaa !33
  %676 = getelementptr inbounds i8, ptr %663, i64 4
  %677 = getelementptr inbounds i8, ptr %664, i64 4
  %678 = load i8, ptr %677, align 1, !tbaa !33
  store i8 %678, ptr %676, align 1, !tbaa !33
  %679 = getelementptr inbounds i8, ptr %663, i64 5
  %680 = getelementptr inbounds i8, ptr %664, i64 5
  %681 = load i8, ptr %680, align 1, !tbaa !33
  store i8 %681, ptr %679, align 1, !tbaa !33
  %682 = getelementptr inbounds i8, ptr %663, i64 6
  %683 = getelementptr inbounds i8, ptr %664, i64 6
  %684 = load i8, ptr %683, align 1, !tbaa !33
  store i8 %684, ptr %682, align 1, !tbaa !33
  %685 = getelementptr inbounds i8, ptr %663, i64 7
  %686 = getelementptr inbounds i8, ptr %664, i64 7
  %687 = load i8, ptr %686, align 1, !tbaa !33
  store i8 %687, ptr %685, align 1, !tbaa !33
  %688 = add i32 %665, -8
  %689 = getelementptr inbounds i8, ptr %663, i64 8
  %690 = getelementptr inbounds i8, ptr %664, i64 8
  %691 = icmp eq i32 %688, 0
  br i1 %691, label %693, label %662, !llvm.loop !74

692:                                              ; preds = %695
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

693:                                              ; preds = %657, %662, %637, %614
  %694 = load i32, ptr %494, align 8, !tbaa !31
  br label %695

695:                                              ; preds = %693, %588, %586
  %696 = phi i32 [ %694, %693 ], [ %585, %588 ], [ 0, %586 ]
  %697 = load i32, ptr %496, align 8, !tbaa !24
  %698 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %697, i32 %696), !nosanitize !18
  %699 = extractvalue { i32, i1 } %698, 1, !nosanitize !18
  br i1 %699, label %692, label %700, !nosanitize !18

700:                                              ; preds = %695
  %701 = extractvalue { i32, i1 } %698, 0, !nosanitize !18
  %702 = load ptr, ptr %500, align 8, !tbaa !26
  %703 = zext i32 %696 to i64
  %704 = getelementptr inbounds i8, ptr %702, i64 %703
  store i32 0, ptr %501, align 4, !tbaa !15
  %705 = tail call ptr @__errno_location() #17
  store i32 0, ptr %705, align 4, !tbaa !42
  br label %706

706:                                              ; preds = %725, %700
  %707 = phi i32 [ 0, %700 ], [ %726, %725 ]
  %708 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %701, i32 %707), !nosanitize !18
  %709 = extractvalue { i32, i1 } %708, 1, !nosanitize !18
  br i1 %709, label %710, label %711, !nosanitize !18

710:                                              ; preds = %706
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

711:                                              ; preds = %706
  %712 = extractvalue { i32, i1 } %708, 0, !nosanitize !18
  %713 = call i32 @llvm.umin.i32(i32 %712, i32 1073741824)
  %714 = load i32, ptr %502, align 4, !tbaa !43
  %715 = zext i32 %707 to i64
  %716 = getelementptr inbounds i8, ptr %704, i64 %715
  %717 = zext nneg i32 %713 to i64
  %718 = call i64 @read(i32 noundef %714, ptr noundef %716, i64 noundef %717) #14
  %719 = trunc i64 %718 to i32
  %720 = icmp slt i32 %719, 1
  br i1 %720, label %728, label %721

721:                                              ; preds = %711
  %722 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %707, i32 %719), !nosanitize !18
  %723 = extractvalue { i32, i1 } %722, 1, !nosanitize !18
  br i1 %723, label %724, label %725, !nosanitize !18

724:                                              ; preds = %721
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

725:                                              ; preds = %721
  %726 = extractvalue { i32, i1 } %722, 0, !nosanitize !18
  %727 = icmp ult i32 %726, %701
  br i1 %727, label %706, label %741, !llvm.loop !44

728:                                              ; preds = %711
  %729 = icmp slt i32 %719, 0
  br i1 %729, label %730, label %737

730:                                              ; preds = %728
  %731 = load i32, ptr %705, align 4, !tbaa !42
  %732 = icmp eq i32 %731, 11
  br i1 %732, label %733, label %738

733:                                              ; preds = %730
  store i32 1, ptr %501, align 4, !tbaa !15
  %734 = icmp eq i32 %707, 0
  br i1 %734, label %735, label %741

735:                                              ; preds = %733
  %736 = load i32, ptr %705, align 4, !tbaa !42
  br label %738

737:                                              ; preds = %728
  store i32 1, ptr %493, align 8, !tbaa !21
  br label %741

738:                                              ; preds = %730, %735
  %739 = phi i32 [ %736, %735 ], [ %731, %730 ]
  %740 = call ptr @strerror(i32 noundef %739) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %740) #14
  br label %945

741:                                              ; preds = %725, %737, %733
  %742 = phi i32 [ %707, %737 ], [ %707, %733 ], [ %726, %725 ]
  %743 = load i32, ptr %494, align 8, !tbaa !31
  %744 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %743, i32 %742), !nosanitize !18
  %745 = extractvalue { i32, i1 } %744, 1, !nosanitize !18
  br i1 %745, label %746, label %747, !nosanitize !18

746:                                              ; preds = %741
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

747:                                              ; preds = %741
  %748 = extractvalue { i32, i1 } %744, 0, !nosanitize !18
  store i32 %748, ptr %494, align 8, !tbaa !31
  %749 = load ptr, ptr %500, align 8, !tbaa !26
  store ptr %749, ptr %499, align 8, !tbaa !32
  br label %750

750:                                              ; preds = %747, %582
  %751 = phi i32 [ %748, %747 ], [ %585, %582 ]
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %782, label %753

753:                                              ; preds = %750
  %754 = load i32, ptr %501, align 4, !tbaa !15
  %755 = icmp ne i32 %754, 0
  %756 = icmp ult i32 %751, 4
  %757 = and i1 %756, %755
  br i1 %757, label %782, label %758

758:                                              ; preds = %753
  %759 = icmp ugt i32 %751, 3
  %760 = load ptr, ptr %499, align 8, !tbaa !32
  br i1 %759, label %761, label %778

761:                                              ; preds = %758
  %762 = load i8, ptr %760, align 1, !tbaa !33
  %763 = icmp eq i8 %762, 31
  br i1 %763, label %764, label %778

764:                                              ; preds = %761
  %765 = getelementptr inbounds i8, ptr %760, i64 1
  %766 = load i8, ptr %765, align 1, !tbaa !33
  %767 = icmp eq i8 %766, -117
  br i1 %767, label %768, label %778

768:                                              ; preds = %764
  %769 = getelementptr inbounds i8, ptr %760, i64 2
  %770 = load i8, ptr %769, align 1, !tbaa !33
  %771 = icmp eq i8 %770, 8
  br i1 %771, label %772, label %778

772:                                              ; preds = %768
  %773 = getelementptr inbounds i8, ptr %760, i64 3
  %774 = load i8, ptr %773, align 1, !tbaa !33
  %775 = icmp ult i8 %774, 32
  br i1 %775, label %776, label %778

776:                                              ; preds = %772
  %777 = call i32 @inflateReset(ptr noundef nonnull %499) #14
  store i32 2, ptr %495, align 8, !tbaa !23
  br label %929

778:                                              ; preds = %772, %768, %764, %761, %758
  %779 = load ptr, ptr %506, align 8, !tbaa !27
  store ptr %779, ptr %492, align 8, !tbaa !19
  %780 = zext i32 %751 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %779, ptr align 1 %760, i64 %780, i1 false)
  %781 = load i32, ptr %494, align 8, !tbaa !31
  store i32 %781, ptr %0, align 8, !tbaa !17
  store i32 0, ptr %494, align 8, !tbaa !31
  store i32 1, ptr %495, align 8, !tbaa !23
  br label %934

782:                                              ; preds = %753, %750, %575
  %783 = load i32, ptr %495, align 8, !tbaa !23
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %1111, label %932

785:                                              ; preds = %547
  %786 = load ptr, ptr %506, align 8, !tbaa !27
  %787 = load i32, ptr %496, align 8, !tbaa !24
  %788 = shl i32 %787, 1
  store i32 0, ptr %501, align 4, !tbaa !15
  %789 = tail call ptr @__errno_location() #17
  store i32 0, ptr %789, align 4, !tbaa !42
  store i32 0, ptr %0, align 4, !tbaa !42
  br label %790

790:                                              ; preds = %810, %785
  %791 = phi i32 [ %811, %810 ], [ 0, %785 ]
  %792 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %788, i32 %791), !nosanitize !18
  %793 = extractvalue { i32, i1 } %792, 1, !nosanitize !18
  br i1 %793, label %794, label %795, !nosanitize !18

794:                                              ; preds = %790
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

795:                                              ; preds = %790
  %796 = extractvalue { i32, i1 } %792, 0, !nosanitize !18
  %797 = call i32 @llvm.umin.i32(i32 %796, i32 1073741824)
  %798 = load i32, ptr %502, align 4, !tbaa !43
  %799 = zext i32 %791 to i64
  %800 = getelementptr inbounds i8, ptr %786, i64 %799
  %801 = zext nneg i32 %797 to i64
  %802 = call i64 @read(i32 noundef %798, ptr noundef %800, i64 noundef %801) #14
  %803 = trunc i64 %802 to i32
  %804 = icmp slt i32 %803, 1
  br i1 %804, label %813, label %805

805:                                              ; preds = %795
  %806 = load i32, ptr %0, align 4, !tbaa !42
  %807 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %806, i32 %803), !nosanitize !18
  %808 = extractvalue { i32, i1 } %807, 1, !nosanitize !18
  br i1 %808, label %809, label %810, !nosanitize !18

809:                                              ; preds = %805
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

810:                                              ; preds = %805
  %811 = extractvalue { i32, i1 } %807, 0, !nosanitize !18
  store i32 %811, ptr %0, align 4, !tbaa !42
  %812 = icmp ult i32 %811, %788
  br i1 %812, label %790, label %827, !llvm.loop !44

813:                                              ; preds = %795
  %814 = icmp slt i32 %803, 0
  br i1 %814, label %815, label %823

815:                                              ; preds = %813
  %816 = load i32, ptr %789, align 4, !tbaa !42
  %817 = icmp eq i32 %816, 11
  br i1 %817, label %818, label %824

818:                                              ; preds = %815
  store i32 1, ptr %501, align 4, !tbaa !15
  %819 = load i32, ptr %0, align 4, !tbaa !42
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %821, label %827

821:                                              ; preds = %818
  %822 = load i32, ptr %789, align 4, !tbaa !42
  br label %824

823:                                              ; preds = %813
  store i32 1, ptr %493, align 8, !tbaa !21
  br label %827

824:                                              ; preds = %821, %815
  %825 = phi i32 [ %822, %821 ], [ %816, %815 ]
  %826 = call ptr @strerror(i32 noundef %825) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %826) #14
  br label %945

827:                                              ; preds = %810, %823, %818
  %828 = load ptr, ptr %506, align 8, !tbaa !27
  store ptr %828, ptr %492, align 8, !tbaa !19
  br label %1111

829:                                              ; preds = %547
  %830 = load i32, ptr %496, align 8, !tbaa !24
  %831 = shl i32 %830, 1
  store i32 %831, ptr %497, align 8, !tbaa !45
  %832 = load ptr, ptr %506, align 8, !tbaa !27
  store ptr %832, ptr %498, align 8, !tbaa !46
  br label %833

833:                                              ; preds = %912, %829
  %834 = phi i32 [ 0, %829 ], [ %897, %912 ]
  %835 = load i32, ptr %494, align 8, !tbaa !31
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %837, label %896

837:                                              ; preds = %833
  %838 = load i32, ptr %9, align 8, !tbaa !14
  switch i32 %838, label %916 [
    i32 0, label %839
    i32 -5, label %839
  ]

839:                                              ; preds = %837, %837
  %840 = load i32, ptr %493, align 8, !tbaa !21
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %842, label %892

842:                                              ; preds = %839
  %843 = load i32, ptr %496, align 8, !tbaa !24
  %844 = load ptr, ptr %500, align 8, !tbaa !26
  store i32 0, ptr %501, align 4, !tbaa !15
  %845 = tail call ptr @__errno_location() #17
  store i32 0, ptr %845, align 4, !tbaa !42
  br label %846

846:                                              ; preds = %865, %842
  %847 = phi i32 [ 0, %842 ], [ %866, %865 ]
  %848 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %843, i32 %847), !nosanitize !18
  %849 = extractvalue { i32, i1 } %848, 1, !nosanitize !18
  br i1 %849, label %850, label %851, !nosanitize !18

850:                                              ; preds = %846
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

851:                                              ; preds = %846
  %852 = extractvalue { i32, i1 } %848, 0, !nosanitize !18
  %853 = call i32 @llvm.umin.i32(i32 %852, i32 1073741824)
  %854 = load i32, ptr %502, align 4, !tbaa !43
  %855 = zext i32 %847 to i64
  %856 = getelementptr inbounds i8, ptr %844, i64 %855
  %857 = zext nneg i32 %853 to i64
  %858 = call i64 @read(i32 noundef %854, ptr noundef %856, i64 noundef %857) #14
  %859 = trunc i64 %858 to i32
  %860 = icmp slt i32 %859, 1
  br i1 %860, label %868, label %861

861:                                              ; preds = %851
  %862 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %847, i32 %859), !nosanitize !18
  %863 = extractvalue { i32, i1 } %862, 1, !nosanitize !18
  br i1 %863, label %864, label %865, !nosanitize !18

864:                                              ; preds = %861
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

865:                                              ; preds = %861
  %866 = extractvalue { i32, i1 } %862, 0, !nosanitize !18
  %867 = icmp ult i32 %866, %843
  br i1 %867, label %846, label %882, !llvm.loop !44

868:                                              ; preds = %851
  %869 = icmp slt i32 %859, 0
  br i1 %869, label %870, label %877

870:                                              ; preds = %868
  %871 = load i32, ptr %845, align 4, !tbaa !42
  %872 = icmp eq i32 %871, 11
  br i1 %872, label %873, label %878

873:                                              ; preds = %870
  store i32 1, ptr %501, align 4, !tbaa !15
  %874 = icmp eq i32 %847, 0
  br i1 %874, label %875, label %882

875:                                              ; preds = %873
  %876 = load i32, ptr %845, align 4, !tbaa !42
  br label %878

877:                                              ; preds = %868
  store i32 1, ptr %493, align 8, !tbaa !21
  br label %882

878:                                              ; preds = %870, %875
  %879 = phi i32 [ %876, %875 ], [ %871, %870 ]
  %880 = call ptr @strerror(i32 noundef %879) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %880) #14
  %881 = load i32, ptr %9, align 8, !tbaa !14
  br label %916

882:                                              ; preds = %865, %877, %873
  %883 = phi i32 [ %847, %877 ], [ %847, %873 ], [ %866, %865 ]
  %884 = load i32, ptr %494, align 8, !tbaa !31
  %885 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %884, i32 %883), !nosanitize !18
  %886 = extractvalue { i32, i1 } %885, 1, !nosanitize !18
  br i1 %886, label %887, label %888, !nosanitize !18

887:                                              ; preds = %882
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

888:                                              ; preds = %882
  %889 = extractvalue { i32, i1 } %885, 0, !nosanitize !18
  store i32 %889, ptr %494, align 8, !tbaa !31
  %890 = load ptr, ptr %500, align 8, !tbaa !26
  store ptr %890, ptr %499, align 8, !tbaa !32
  %891 = icmp eq i32 %889, 0
  br i1 %891, label %892, label %896

892:                                              ; preds = %888, %839
  %893 = load i32, ptr %501, align 4, !tbaa !15
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %895, label %916

895:                                              ; preds = %892
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %916

896:                                              ; preds = %888, %833
  %897 = call i32 @inflate(ptr noundef nonnull %499, i32 noundef 0) #14
  %898 = load i32, ptr %497, align 8, !tbaa !45
  %899 = icmp ult i32 %898, %831
  br i1 %899, label %900, label %901

900:                                              ; preds = %896
  store i32 0, ptr %503, align 4, !tbaa !30
  br label %901

901:                                              ; preds = %900, %896
  switch i32 %897, label %912 [
    i32 -2, label %902
    i32 2, label %902
    i32 -4, label %903
    i32 -3, label %904
  ]

902:                                              ; preds = %901, %901
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %916

903:                                              ; preds = %901
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %916

904:                                              ; preds = %901
  %905 = load i32, ptr %503, align 4, !tbaa !30
  %906 = icmp eq i32 %905, 1
  br i1 %906, label %907, label %908

907:                                              ; preds = %904
  store i32 0, ptr %494, align 8, !tbaa !31
  store i32 1, ptr %493, align 8, !tbaa !21
  store i32 0, ptr %495, align 8, !tbaa !23
  br label %916

908:                                              ; preds = %904
  %909 = load ptr, ptr %504, align 8, !tbaa !47
  %910 = icmp eq ptr %909, null
  %911 = select i1 %910, ptr @.str.6, ptr %909
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %911) #14
  br label %916

912:                                              ; preds = %901
  %913 = icmp ne i32 %898, 0
  %914 = icmp ne i32 %897, 1
  %915 = select i1 %913, i1 %914, i1 false
  br i1 %915, label %833, label %916, !llvm.loop !48

916:                                              ; preds = %912, %837, %908, %907, %903, %902, %895, %892, %878
  %917 = phi i32 [ %834, %892 ], [ %834, %895 ], [ %897, %902 ], [ -4, %903 ], [ 0, %907 ], [ -3, %908 ], [ %881, %878 ], [ %838, %837 ], [ %897, %912 ]
  %918 = load i32, ptr %497, align 8, !tbaa !45
  %919 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %831, i32 %918), !nosanitize !18
  %920 = extractvalue { i32, i1 } %919, 1, !nosanitize !18
  br i1 %920, label %921, label %922, !nosanitize !18

921:                                              ; preds = %916
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

922:                                              ; preds = %916
  %923 = extractvalue { i32, i1 } %919, 0, !nosanitize !18
  store i32 %923, ptr %0, align 8, !tbaa !17
  %924 = load ptr, ptr %498, align 8, !tbaa !46
  %925 = zext i32 %923 to i64
  %926 = sub nsw i64 0, %925
  %927 = getelementptr inbounds i8, ptr %924, i64 %926
  store ptr %927, ptr %492, align 8, !tbaa !19
  switch i32 %917, label %945 [
    i32 1, label %929
    i32 0, label %932
  ]

928:                                              ; preds = %547
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %945

929:                                              ; preds = %922, %776
  %930 = phi i32 [ 1, %776 ], [ 0, %922 ]
  %931 = phi ptr [ %509, %776 ], [ %495, %922 ]
  store i32 %930, ptr %503, align 4, !tbaa !30
  store i32 0, ptr %931, align 8, !tbaa !42
  br label %932

932:                                              ; preds = %929, %922, %782
  %933 = load i32, ptr %0, align 8, !tbaa !17
  br label %934

934:                                              ; preds = %932, %778
  %935 = phi i32 [ %933, %932 ], [ %781, %778 ]
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %937, label %1111

937:                                              ; preds = %934
  %938 = load i32, ptr %493, align 8, !tbaa !21
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %943, label %940

940:                                              ; preds = %937
  %941 = load i32, ptr %494, align 8, !tbaa !31
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %1111, label %943

943:                                              ; preds = %940, %937
  %944 = load i32, ptr %495, align 8, !tbaa !23
  br label %547, !llvm.loop !49

945:                                              ; preds = %922, %580, %928, %824, %738, %566, %562
  %946 = load i32, ptr %0, align 8, !tbaa !17
  %947 = icmp eq i32 %946, 0
  %948 = sext i1 %947 to i32
  br label %1111

949:                                              ; preds = %542
  %950 = icmp eq i32 %540, 1
  br i1 %950, label %951, label %988

951:                                              ; preds = %949
  store i32 0, ptr %501, align 4, !tbaa !15
  %952 = tail call ptr @__errno_location() #17
  store i32 0, ptr %952, align 4, !tbaa !42
  br label %953

953:                                              ; preds = %972, %951
  %954 = phi i32 [ 0, %951 ], [ %973, %972 ]
  %955 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %515, i32 %954), !nosanitize !18
  %956 = extractvalue { i32, i1 } %955, 1, !nosanitize !18
  br i1 %956, label %957, label %958, !nosanitize !18

957:                                              ; preds = %953
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

958:                                              ; preds = %953
  %959 = extractvalue { i32, i1 } %955, 0, !nosanitize !18
  %960 = call i32 @llvm.umin.i32(i32 %959, i32 1073741824)
  %961 = load i32, ptr %502, align 4, !tbaa !43
  %962 = zext i32 %954 to i64
  %963 = getelementptr inbounds i8, ptr %511, i64 %962
  %964 = zext nneg i32 %960 to i64
  %965 = call i64 @read(i32 noundef %961, ptr noundef %963, i64 noundef %964) #14
  %966 = trunc i64 %965 to i32
  %967 = icmp slt i32 %966, 1
  br i1 %967, label %975, label %968

968:                                              ; preds = %958
  %969 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %954, i32 %966), !nosanitize !18
  %970 = extractvalue { i32, i1 } %969, 1, !nosanitize !18
  br i1 %970, label %971, label %972, !nosanitize !18

971:                                              ; preds = %968
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

972:                                              ; preds = %968
  %973 = extractvalue { i32, i1 } %969, 0, !nosanitize !18
  %974 = icmp ult i32 %973, %515
  br i1 %974, label %953, label %1091, !llvm.loop !44

975:                                              ; preds = %958
  %976 = icmp slt i32 %966, 0
  br i1 %976, label %977, label %987

977:                                              ; preds = %975
  %978 = load i32, ptr %952, align 4, !tbaa !42
  %979 = icmp eq i32 %978, 11
  br i1 %979, label %980, label %984

980:                                              ; preds = %977
  store i32 1, ptr %501, align 4, !tbaa !15
  %981 = icmp eq i32 %954, 0
  br i1 %981, label %982, label %1093

982:                                              ; preds = %980
  %983 = load i32, ptr %952, align 4, !tbaa !42
  br label %984

984:                                              ; preds = %982, %977
  %985 = phi i32 [ %983, %982 ], [ %978, %977 ]
  %986 = call ptr @strerror(i32 noundef %985) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %986) #14
  br label %1093

987:                                              ; preds = %975
  store i32 1, ptr %493, align 8, !tbaa !21
  br label %1093

988:                                              ; preds = %949
  store i32 %515, ptr %497, align 8, !tbaa !55
  store ptr %511, ptr %498, align 8, !tbaa !56
  br label %989

989:                                              ; preds = %1068, %988
  %990 = phi i32 [ 0, %988 ], [ %1053, %1068 ]
  %991 = load i32, ptr %494, align 8, !tbaa !31
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %993, label %1052

993:                                              ; preds = %989
  %994 = load i32, ptr %9, align 8, !tbaa !14
  switch i32 %994, label %1072 [
    i32 0, label %995
    i32 -5, label %995
  ]

995:                                              ; preds = %993, %993
  %996 = load i32, ptr %493, align 8, !tbaa !21
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %998, label %1048

998:                                              ; preds = %995
  %999 = load i32, ptr %496, align 8, !tbaa !24
  %1000 = load ptr, ptr %500, align 8, !tbaa !26
  store i32 0, ptr %501, align 4, !tbaa !15
  %1001 = tail call ptr @__errno_location() #17
  store i32 0, ptr %1001, align 4, !tbaa !42
  br label %1002

1002:                                             ; preds = %1021, %998
  %1003 = phi i32 [ 0, %998 ], [ %1022, %1021 ]
  %1004 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %999, i32 %1003), !nosanitize !18
  %1005 = extractvalue { i32, i1 } %1004, 1, !nosanitize !18
  br i1 %1005, label %1006, label %1007, !nosanitize !18

1006:                                             ; preds = %1002
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

1007:                                             ; preds = %1002
  %1008 = extractvalue { i32, i1 } %1004, 0, !nosanitize !18
  %1009 = call i32 @llvm.umin.i32(i32 %1008, i32 1073741824)
  %1010 = load i32, ptr %502, align 4, !tbaa !43
  %1011 = zext i32 %1003 to i64
  %1012 = getelementptr inbounds i8, ptr %1000, i64 %1011
  %1013 = zext nneg i32 %1009 to i64
  %1014 = call i64 @read(i32 noundef %1010, ptr noundef %1012, i64 noundef %1013) #14
  %1015 = trunc i64 %1014 to i32
  %1016 = icmp slt i32 %1015, 1
  br i1 %1016, label %1024, label %1017

1017:                                             ; preds = %1007
  %1018 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1003, i32 %1015), !nosanitize !18
  %1019 = extractvalue { i32, i1 } %1018, 1, !nosanitize !18
  br i1 %1019, label %1020, label %1021, !nosanitize !18

1020:                                             ; preds = %1017
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

1021:                                             ; preds = %1017
  %1022 = extractvalue { i32, i1 } %1018, 0, !nosanitize !18
  %1023 = icmp ult i32 %1022, %999
  br i1 %1023, label %1002, label %1038, !llvm.loop !44

1024:                                             ; preds = %1007
  %1025 = icmp slt i32 %1015, 0
  br i1 %1025, label %1026, label %1033

1026:                                             ; preds = %1024
  %1027 = load i32, ptr %1001, align 4, !tbaa !42
  %1028 = icmp eq i32 %1027, 11
  br i1 %1028, label %1029, label %1034

1029:                                             ; preds = %1026
  store i32 1, ptr %501, align 4, !tbaa !15
  %1030 = icmp eq i32 %1003, 0
  br i1 %1030, label %1031, label %1038

1031:                                             ; preds = %1029
  %1032 = load i32, ptr %1001, align 4, !tbaa !42
  br label %1034

1033:                                             ; preds = %1024
  store i32 1, ptr %493, align 8, !tbaa !21
  br label %1038

1034:                                             ; preds = %1026, %1031
  %1035 = phi i32 [ %1032, %1031 ], [ %1027, %1026 ]
  %1036 = call ptr @strerror(i32 noundef %1035) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1036) #14
  %1037 = load i32, ptr %9, align 8, !tbaa !14
  br label %1072

1038:                                             ; preds = %1021, %1033, %1029
  %1039 = phi i32 [ %1003, %1033 ], [ %1003, %1029 ], [ %1022, %1021 ]
  %1040 = load i32, ptr %494, align 8, !tbaa !31
  %1041 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1040, i32 %1039), !nosanitize !18
  %1042 = extractvalue { i32, i1 } %1041, 1, !nosanitize !18
  br i1 %1042, label %1043, label %1044, !nosanitize !18

1043:                                             ; preds = %1038
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

1044:                                             ; preds = %1038
  %1045 = extractvalue { i32, i1 } %1041, 0, !nosanitize !18
  store i32 %1045, ptr %494, align 8, !tbaa !31
  %1046 = load ptr, ptr %500, align 8, !tbaa !26
  store ptr %1046, ptr %499, align 8, !tbaa !32
  %1047 = icmp eq i32 %1045, 0
  br i1 %1047, label %1048, label %1052

1048:                                             ; preds = %1044, %995
  %1049 = load i32, ptr %501, align 4, !tbaa !15
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1051, label %1072

1051:                                             ; preds = %1048
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %1072

1052:                                             ; preds = %1044, %989
  %1053 = call i32 @inflate(ptr noundef nonnull %499, i32 noundef 0) #14
  %1054 = load i32, ptr %497, align 8, !tbaa !45
  %1055 = icmp ult i32 %1054, %515
  br i1 %1055, label %1056, label %1057

1056:                                             ; preds = %1052
  store i32 0, ptr %503, align 4, !tbaa !30
  br label %1057

1057:                                             ; preds = %1056, %1052
  switch i32 %1053, label %1068 [
    i32 -2, label %1058
    i32 2, label %1058
    i32 -4, label %1059
    i32 -3, label %1060
  ]

1058:                                             ; preds = %1057, %1057
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %1072

1059:                                             ; preds = %1057
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1072

1060:                                             ; preds = %1057
  %1061 = load i32, ptr %503, align 4, !tbaa !30
  %1062 = icmp eq i32 %1061, 1
  br i1 %1062, label %1063, label %1064

1063:                                             ; preds = %1060
  store i32 0, ptr %494, align 8, !tbaa !31
  store i32 1, ptr %493, align 8, !tbaa !21
  store i32 0, ptr %495, align 8, !tbaa !23
  br label %1072

1064:                                             ; preds = %1060
  %1065 = load ptr, ptr %504, align 8, !tbaa !47
  %1066 = icmp eq ptr %1065, null
  %1067 = select i1 %1066, ptr @.str.6, ptr %1065
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1067) #14
  br label %1072

1068:                                             ; preds = %1057
  %1069 = icmp ne i32 %1054, 0
  %1070 = icmp ne i32 %1053, 1
  %1071 = select i1 %1069, i1 %1070, i1 false
  br i1 %1071, label %989, label %1072, !llvm.loop !48

1072:                                             ; preds = %1068, %993, %1064, %1063, %1059, %1058, %1051, %1048, %1034
  %1073 = phi i32 [ %990, %1048 ], [ %990, %1051 ], [ %1053, %1058 ], [ -4, %1059 ], [ 0, %1063 ], [ -3, %1064 ], [ %1037, %1034 ], [ %1053, %1068 ], [ %994, %993 ]
  %1074 = load i32, ptr %497, align 8, !tbaa !45
  %1075 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %515, i32 %1074), !nosanitize !18
  %1076 = extractvalue { i32, i1 } %1075, 1, !nosanitize !18
  br i1 %1076, label %1077, label %1078, !nosanitize !18

1077:                                             ; preds = %1072
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

1078:                                             ; preds = %1072
  %1079 = extractvalue { i32, i1 } %1075, 0, !nosanitize !18
  %1080 = load ptr, ptr %498, align 8, !tbaa !46
  %1081 = zext i32 %1079 to i64
  %1082 = sub nsw i64 0, %1081
  %1083 = getelementptr inbounds i8, ptr %1080, i64 %1082
  store ptr %1083, ptr %492, align 8, !tbaa !19
  %1084 = icmp eq i32 %1073, 1
  br i1 %1084, label %1085, label %1086

1085:                                             ; preds = %1078
  store i32 0, ptr %503, align 4, !tbaa !30
  store i32 0, ptr %495, align 8, !tbaa !23
  br label %1089

1086:                                             ; preds = %1078
  %1087 = icmp ne i32 %1073, 0
  %1088 = sext i1 %1087 to i32
  br label %1089

1089:                                             ; preds = %1086, %1085
  %1090 = phi i32 [ 0, %1085 ], [ %1088, %1086 ]
  store i32 0, ptr %0, align 8, !tbaa !17
  br label %1093

1091:                                             ; preds = %972
  %1092 = zext i32 %973 to i64
  br label %1093

1093:                                             ; preds = %1091, %1089, %987, %984, %980, %528
  %1094 = phi i64 [ %1092, %1091 ], [ %962, %987 ], [ %962, %984 ], [ %962, %980 ], [ %521, %528 ], [ %1081, %1089 ]
  %1095 = phi i32 [ 0, %1091 ], [ 0, %987 ], [ -1, %984 ], [ 0, %980 ], [ %532, %528 ], [ %1090, %1089 ]
  %1096 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %512, i64 %1094), !nosanitize !18
  %1097 = extractvalue { i64, i1 } %1096, 0, !nosanitize !18
  %1098 = extractvalue { i64, i1 } %1096, 1, !nosanitize !18
  br i1 %1098, label %527, label %1099, !nosanitize !18

1099:                                             ; preds = %1093
  %1100 = getelementptr inbounds i8, ptr %511, i64 %1094
  %1101 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %513, i64 %1094), !nosanitize !18
  %1102 = extractvalue { i64, i1 } %1101, 0, !nosanitize !18
  %1103 = extractvalue { i64, i1 } %1101, 1, !nosanitize !18
  br i1 %1103, label %1104, label %1105, !nosanitize !18

1104:                                             ; preds = %1105, %1099
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

1105:                                             ; preds = %1099
  %1106 = load i64, ptr %505, align 8, !tbaa !20
  %1107 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1106, i64 %1094), !nosanitize !18
  %1108 = extractvalue { i64, i1 } %1107, 1, !nosanitize !18
  br i1 %1108, label %1104, label %1109, !nosanitize !18

1109:                                             ; preds = %1105
  %1110 = extractvalue { i64, i1 } %1107, 0, !nosanitize !18
  store i64 %1110, ptr %505, align 8, !tbaa !20
  br label %1111

1111:                                             ; preds = %940, %934, %782, %1109, %945, %827
  %1112 = phi ptr [ %1100, %1109 ], [ %511, %945 ], [ %511, %827 ], [ %511, %782 ], [ %511, %934 ], [ %511, %940 ]
  %1113 = phi i64 [ %1097, %1109 ], [ %512, %945 ], [ %512, %827 ], [ %512, %782 ], [ %512, %934 ], [ %512, %940 ]
  %1114 = phi i64 [ %1102, %1109 ], [ %513, %945 ], [ %513, %827 ], [ %513, %782 ], [ %513, %934 ], [ %513, %940 ]
  %1115 = phi i32 [ %1095, %1109 ], [ %948, %945 ], [ 0, %827 ], [ 0, %782 ], [ 0, %934 ], [ 0, %940 ]
  %1116 = icmp ne i64 %1113, 0
  %1117 = icmp eq i32 %1115, 0
  %1118 = select i1 %1116, i1 %1117, i1 false
  br i1 %1118, label %510, label %1119, !llvm.loop !57

1119:                                             ; preds = %1111
  %1120 = icmp eq i64 %1113, 0
  br i1 %1120, label %1127, label %1121

1121:                                             ; preds = %1119
  %1122 = load i32, ptr %493, align 8, !tbaa !21
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1127, label %1124

1124:                                             ; preds = %536, %1121
  %1125 = phi i64 [ %1114, %1121 ], [ %513, %536 ]
  %1126 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  store i32 1, ptr %1126, align 4, !tbaa !58
  br label %1127

1127:                                             ; preds = %1119, %1121, %1124
  %1128 = phi i64 [ %1125, %1124 ], [ %1114, %1121 ], [ %1114, %1119 ]
  %1129 = freeze i64 %1128
  %1130 = icmp eq i64 %1129, 0
  %1131 = load i8, ptr %2, align 1
  %1132 = zext i8 %1131 to i32
  br i1 %1130, label %1133, label %1134

1133:                                             ; preds = %122, %464, %280, %108, %104, %366, %470, %1127
  br label %1134

1134:                                             ; preds = %1133, %1127, %11, %4, %1, %25
  %1135 = phi i32 [ %31, %25 ], [ -1, %1 ], [ -1, %4 ], [ -1, %11 ], [ -1, %1133 ], [ %1132, %1127 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #14
  ret i32 %1135
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gzgetc_(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #14
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1134, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1134

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %10 = load i32, ptr %9, align 8, !tbaa !14
  switch i32 %10, label %11 [
    i32 0, label %15
    i32 -5, label %15
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %1134, label %15

15:                                               ; preds = %11, %8, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %16 = load i32, ptr %0, align 8, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %15
  %19 = add i32 %16, -1
  store i32 %19, ptr %0, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !20
  %22 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %21, i64 1), !nosanitize !18
  %23 = extractvalue { i64, i1 } %22, 1, !nosanitize !18
  br i1 %23, label %24, label %25, !nosanitize !18

24:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

25:                                               ; preds = %18
  %26 = extractvalue { i64, i1 } %22, 0, !nosanitize !18
  store i64 %26, ptr %20, align 8, !tbaa !20
  %27 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !19
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %29, ptr %27, align 8, !tbaa !19
  %30 = load i8, ptr %28, align 1, !tbaa !33
  %31 = zext i8 %30 to i32
  br label %1134

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %34 = load i64, ptr %33, align 8, !tbaa !16
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %491, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %38 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %39 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  %40 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %41 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 10
  %42 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %43 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %44 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %45 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %46 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %47 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %48 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %49 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %50 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %51 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 6
  %52 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %53 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %54 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  br label %55

55:                                               ; preds = %488, %36
  %56 = phi i64 [ %489, %488 ], [ %34, %36 ]
  %57 = load i32, ptr %0, align 8, !tbaa !17
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %55
  %60 = zext i32 %57 to i64
  %61 = icmp slt i64 %56, %60
  %62 = trunc i64 %56 to i32
  %63 = select i1 %61, i32 %62, i32 %57
  %64 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 %63), !nosanitize !18
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !18
  br i1 %65, label %66, label %67, !nosanitize !18

66:                                               ; preds = %76, %59
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

67:                                               ; preds = %59
  %68 = extractvalue { i32, i1 } %64, 0, !nosanitize !18
  store i32 %68, ptr %0, align 8, !tbaa !17
  %69 = load ptr, ptr %37, align 8, !tbaa !19
  %70 = zext i32 %63 to i64
  %71 = getelementptr inbounds i8, ptr %69, i64 %70
  store ptr %71, ptr %37, align 8, !tbaa !19
  %72 = load i64, ptr %38, align 8, !tbaa !20
  %73 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %72, i64 %70), !nosanitize !18
  %74 = extractvalue { i64, i1 } %73, 1, !nosanitize !18
  br i1 %74, label %75, label %76, !nosanitize !18

75:                                               ; preds = %67
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

76:                                               ; preds = %67
  %77 = extractvalue { i64, i1 } %73, 0, !nosanitize !18
  store i64 %77, ptr %38, align 8, !tbaa !20
  %78 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %56, i64 %70), !nosanitize !18
  %79 = extractvalue { i64, i1 } %78, 1, !nosanitize !18
  br i1 %79, label %66, label %80, !nosanitize !18

80:                                               ; preds = %76
  %81 = extractvalue { i64, i1 } %78, 0, !nosanitize !18
  store i64 %81, ptr %33, align 8, !tbaa !16
  br label %488

82:                                               ; preds = %55
  %83 = load i32, ptr %39, align 8, !tbaa !21
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %40, align 8, !tbaa !22
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %491, label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %485, %88
  %90 = load i32, ptr %41, align 8, !tbaa !23
  switch i32 %90, label %470 [
    i32 0, label %91
    i32 1, label %327
    i32 2, label %371
  ]

91:                                               ; preds = %89
  %92 = load i32, ptr %42, align 8, !tbaa !24
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load i32, ptr %52, align 4, !tbaa !25
  %96 = zext i32 %95 to i64
  %97 = tail call noalias ptr @malloc(i64 noundef %96) #16
  store ptr %97, ptr %47, align 8, !tbaa !26
  %98 = shl i32 %95, 1
  %99 = zext i32 %98 to i64
  %100 = tail call noalias ptr @malloc(i64 noundef %99) #16
  store ptr %100, ptr %44, align 8, !tbaa !27
  %101 = icmp eq ptr %97, null
  %102 = icmp eq ptr %100, null
  %103 = or i1 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  tail call void @free(ptr noundef %100) #14
  tail call void @free(ptr noundef %97) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1133

105:                                              ; preds = %94
  store i32 %95, ptr %42, align 8, !tbaa !24
  store i32 0, ptr %40, align 8, !tbaa !22
  store ptr null, ptr %46, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %106 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %44, align 8, !tbaa !27
  tail call void @free(ptr noundef %109) #14
  %110 = load ptr, ptr %47, align 8, !tbaa !26
  tail call void @free(ptr noundef %110) #14
  store i32 0, ptr %42, align 8, !tbaa !24
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1133

111:                                              ; preds = %105, %91
  %112 = load i32, ptr %54, align 8, !tbaa !29
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, ptr %50, align 4, !tbaa !30
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114, %111
  %118 = tail call i32 @inflateReset(ptr noundef nonnull %46) #14
  store i32 2, ptr %41, align 8, !tbaa !23
  %119 = load i32, ptr %50, align 4, !tbaa !30
  %120 = icmp ne i32 %119, -1
  %121 = zext i1 %120 to i32
  store i32 %121, ptr %50, align 4, !tbaa !30
  store i32 0, ptr %54, align 8, !tbaa !29
  br label %324

122:                                              ; preds = %114
  %123 = load i32, ptr %9, align 8, !tbaa !14
  switch i32 %123, label %1133 [
    i32 0, label %124
    i32 -5, label %124
  ]

124:                                              ; preds = %122, %122
  %125 = load i32, ptr %39, align 8, !tbaa !21
  %126 = icmp eq i32 %125, 0
  %127 = load i32, ptr %40, align 8, !tbaa !31
  br i1 %126, label %128, label %292

128:                                              ; preds = %124
  %129 = icmp eq i32 %127, 0
  br i1 %129, label %237, label %130

130:                                              ; preds = %128
  %131 = load ptr, ptr %47, align 8, !tbaa !26
  %132 = load ptr, ptr %46, align 8, !tbaa !32
  %133 = icmp eq ptr %132, %131
  br i1 %133, label %237, label %134

134:                                              ; preds = %130
  %135 = ptrtoint ptr %132 to i64
  %136 = ptrtoint ptr %131 to i64
  %137 = zext i32 %127 to i64
  %138 = icmp ult i32 %127, 8
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
  %151 = load <16 x i8>, ptr %149, align 1, !tbaa !33
  %152 = load <16 x i8>, ptr %150, align 1, !tbaa !33
  %153 = getelementptr i8, ptr %148, i64 16
  store <16 x i8> %151, ptr %148, align 1, !tbaa !33
  store <16 x i8> %152, ptr %153, align 1, !tbaa !33
  %154 = add nuw i64 %147, 32
  %155 = icmp eq i64 %154, %145
  br i1 %155, label %156, label %146, !llvm.loop !75

156:                                              ; preds = %146
  %157 = icmp eq i64 %145, %137
  br i1 %157, label %235, label %158

158:                                              ; preds = %156
  %159 = trunc i64 %145 to i32
  %160 = sub i32 %127, %159
  %161 = getelementptr i8, ptr %132, i64 %145
  %162 = getelementptr i8, ptr %131, i64 %145
  %163 = and i64 %137, 24
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %181, label %165

165:                                              ; preds = %142, %158
  %166 = phi i64 [ %145, %158 ], [ 0, %142 ]
  %167 = and i64 %137, 4294967288
  %168 = getelementptr i8, ptr %131, i64 %167
  %169 = getelementptr i8, ptr %132, i64 %167
  %170 = trunc i64 %167 to i32
  %171 = sub i32 %127, %170
  br label %172

172:                                              ; preds = %172, %165
  %173 = phi i64 [ %166, %165 ], [ %177, %172 ]
  %174 = getelementptr i8, ptr %131, i64 %173
  %175 = getelementptr i8, ptr %132, i64 %173
  %176 = load <8 x i8>, ptr %175, align 1, !tbaa !33
  store <8 x i8> %176, ptr %174, align 1, !tbaa !33
  %177 = add nuw i64 %173, 8
  %178 = icmp eq i64 %177, %167
  br i1 %178, label %179, label %172, !llvm.loop !76

179:                                              ; preds = %172
  %180 = icmp eq i64 %167, %137
  br i1 %180, label %235, label %181

181:                                              ; preds = %134, %158, %179
  %182 = phi ptr [ %131, %134 ], [ %162, %158 ], [ %168, %179 ]
  %183 = phi ptr [ %132, %134 ], [ %161, %158 ], [ %169, %179 ]
  %184 = phi i32 [ %127, %134 ], [ %160, %158 ], [ %171, %179 ]
  %185 = add i32 %184, -1
  %186 = and i32 %184, 7
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %199, label %188

188:                                              ; preds = %181, %188
  %189 = phi ptr [ %195, %188 ], [ %182, %181 ]
  %190 = phi ptr [ %196, %188 ], [ %183, %181 ]
  %191 = phi i32 [ %194, %188 ], [ %184, %181 ]
  %192 = phi i32 [ %197, %188 ], [ 0, %181 ]
  %193 = load i8, ptr %190, align 1, !tbaa !33
  store i8 %193, ptr %189, align 1, !tbaa !33
  %194 = add i32 %191, -1
  %195 = getelementptr inbounds i8, ptr %189, i64 1
  %196 = getelementptr inbounds i8, ptr %190, i64 1
  %197 = add i32 %192, 1
  %198 = icmp eq i32 %197, %186
  br i1 %198, label %199, label %188, !llvm.loop !77

199:                                              ; preds = %188, %181
  %200 = phi ptr [ %182, %181 ], [ %195, %188 ]
  %201 = phi ptr [ %183, %181 ], [ %196, %188 ]
  %202 = phi i32 [ %184, %181 ], [ %194, %188 ]
  %203 = icmp ult i32 %185, 7
  br i1 %203, label %235, label %204

204:                                              ; preds = %199, %204
  %205 = phi ptr [ %231, %204 ], [ %200, %199 ]
  %206 = phi ptr [ %232, %204 ], [ %201, %199 ]
  %207 = phi i32 [ %230, %204 ], [ %202, %199 ]
  %208 = load i8, ptr %206, align 1, !tbaa !33
  store i8 %208, ptr %205, align 1, !tbaa !33
  %209 = getelementptr inbounds i8, ptr %205, i64 1
  %210 = getelementptr inbounds i8, ptr %206, i64 1
  %211 = load i8, ptr %210, align 1, !tbaa !33
  store i8 %211, ptr %209, align 1, !tbaa !33
  %212 = getelementptr inbounds i8, ptr %205, i64 2
  %213 = getelementptr inbounds i8, ptr %206, i64 2
  %214 = load i8, ptr %213, align 1, !tbaa !33
  store i8 %214, ptr %212, align 1, !tbaa !33
  %215 = getelementptr inbounds i8, ptr %205, i64 3
  %216 = getelementptr inbounds i8, ptr %206, i64 3
  %217 = load i8, ptr %216, align 1, !tbaa !33
  store i8 %217, ptr %215, align 1, !tbaa !33
  %218 = getelementptr inbounds i8, ptr %205, i64 4
  %219 = getelementptr inbounds i8, ptr %206, i64 4
  %220 = load i8, ptr %219, align 1, !tbaa !33
  store i8 %220, ptr %218, align 1, !tbaa !33
  %221 = getelementptr inbounds i8, ptr %205, i64 5
  %222 = getelementptr inbounds i8, ptr %206, i64 5
  %223 = load i8, ptr %222, align 1, !tbaa !33
  store i8 %223, ptr %221, align 1, !tbaa !33
  %224 = getelementptr inbounds i8, ptr %205, i64 6
  %225 = getelementptr inbounds i8, ptr %206, i64 6
  %226 = load i8, ptr %225, align 1, !tbaa !33
  store i8 %226, ptr %224, align 1, !tbaa !33
  %227 = getelementptr inbounds i8, ptr %205, i64 7
  %228 = getelementptr inbounds i8, ptr %206, i64 7
  %229 = load i8, ptr %228, align 1, !tbaa !33
  store i8 %229, ptr %227, align 1, !tbaa !33
  %230 = add i32 %207, -8
  %231 = getelementptr inbounds i8, ptr %205, i64 8
  %232 = getelementptr inbounds i8, ptr %206, i64 8
  %233 = icmp eq i32 %230, 0
  br i1 %233, label %235, label %204, !llvm.loop !78

234:                                              ; preds = %237
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

235:                                              ; preds = %199, %204, %179, %156
  %236 = load i32, ptr %40, align 8, !tbaa !31
  br label %237

237:                                              ; preds = %235, %130, %128
  %238 = phi i32 [ %236, %235 ], [ %127, %130 ], [ 0, %128 ]
  %239 = load i32, ptr %42, align 8, !tbaa !24
  %240 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %239, i32 %238), !nosanitize !18
  %241 = extractvalue { i32, i1 } %240, 1, !nosanitize !18
  br i1 %241, label %234, label %242, !nosanitize !18

242:                                              ; preds = %237
  %243 = extractvalue { i32, i1 } %240, 0, !nosanitize !18
  %244 = load ptr, ptr %47, align 8, !tbaa !26
  %245 = zext i32 %238 to i64
  %246 = getelementptr inbounds i8, ptr %244, i64 %245
  store i32 0, ptr %48, align 4, !tbaa !15
  %247 = tail call ptr @__errno_location() #17
  store i32 0, ptr %247, align 4, !tbaa !42
  br label %248

248:                                              ; preds = %267, %242
  %249 = phi i32 [ 0, %242 ], [ %268, %267 ]
  %250 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %243, i32 %249), !nosanitize !18
  %251 = extractvalue { i32, i1 } %250, 1, !nosanitize !18
  br i1 %251, label %252, label %253, !nosanitize !18

252:                                              ; preds = %248
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

253:                                              ; preds = %248
  %254 = extractvalue { i32, i1 } %250, 0, !nosanitize !18
  %255 = tail call i32 @llvm.umin.i32(i32 %254, i32 1073741824)
  %256 = load i32, ptr %49, align 4, !tbaa !43
  %257 = zext i32 %249 to i64
  %258 = getelementptr inbounds i8, ptr %246, i64 %257
  %259 = zext nneg i32 %255 to i64
  %260 = tail call i64 @read(i32 noundef %256, ptr noundef %258, i64 noundef %259) #14
  %261 = trunc i64 %260 to i32
  %262 = icmp slt i32 %261, 1
  br i1 %262, label %270, label %263

263:                                              ; preds = %253
  %264 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %249, i32 %261), !nosanitize !18
  %265 = extractvalue { i32, i1 } %264, 1, !nosanitize !18
  br i1 %265, label %266, label %267, !nosanitize !18

266:                                              ; preds = %263
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

267:                                              ; preds = %263
  %268 = extractvalue { i32, i1 } %264, 0, !nosanitize !18
  %269 = icmp ult i32 %268, %243
  br i1 %269, label %248, label %283, !llvm.loop !44

270:                                              ; preds = %253
  %271 = icmp slt i32 %261, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %270
  %273 = load i32, ptr %247, align 4, !tbaa !42
  %274 = icmp eq i32 %273, 11
  br i1 %274, label %275, label %280

275:                                              ; preds = %272
  store i32 1, ptr %48, align 4, !tbaa !15
  %276 = icmp eq i32 %249, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %275
  %278 = load i32, ptr %247, align 4, !tbaa !42
  br label %280

279:                                              ; preds = %270
  store i32 1, ptr %39, align 8, !tbaa !21
  br label %283

280:                                              ; preds = %272, %277
  %281 = phi i32 [ %278, %277 ], [ %273, %272 ]
  %282 = tail call ptr @strerror(i32 noundef %281) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %282) #14
  br label %1133

283:                                              ; preds = %267, %279, %275
  %284 = phi i32 [ %249, %279 ], [ %249, %275 ], [ %268, %267 ]
  %285 = load i32, ptr %40, align 8, !tbaa !31
  %286 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %285, i32 %284), !nosanitize !18
  %287 = extractvalue { i32, i1 } %286, 1, !nosanitize !18
  br i1 %287, label %288, label %289, !nosanitize !18

288:                                              ; preds = %283
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

289:                                              ; preds = %283
  %290 = extractvalue { i32, i1 } %286, 0, !nosanitize !18
  store i32 %290, ptr %40, align 8, !tbaa !31
  %291 = load ptr, ptr %47, align 8, !tbaa !26
  store ptr %291, ptr %46, align 8, !tbaa !32
  br label %292

292:                                              ; preds = %289, %124
  %293 = phi i32 [ %290, %289 ], [ %127, %124 ]
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %324, label %295

295:                                              ; preds = %292
  %296 = load i32, ptr %48, align 4, !tbaa !15
  %297 = icmp ne i32 %296, 0
  %298 = icmp ult i32 %293, 4
  %299 = and i1 %298, %297
  br i1 %299, label %324, label %300

300:                                              ; preds = %295
  %301 = icmp ugt i32 %293, 3
  %302 = load ptr, ptr %46, align 8, !tbaa !32
  br i1 %301, label %303, label %320

303:                                              ; preds = %300
  %304 = load i8, ptr %302, align 1, !tbaa !33
  %305 = icmp eq i8 %304, 31
  br i1 %305, label %306, label %320

306:                                              ; preds = %303
  %307 = getelementptr inbounds i8, ptr %302, i64 1
  %308 = load i8, ptr %307, align 1, !tbaa !33
  %309 = icmp eq i8 %308, -117
  br i1 %309, label %310, label %320

310:                                              ; preds = %306
  %311 = getelementptr inbounds i8, ptr %302, i64 2
  %312 = load i8, ptr %311, align 1, !tbaa !33
  %313 = icmp eq i8 %312, 8
  br i1 %313, label %314, label %320

314:                                              ; preds = %310
  %315 = getelementptr inbounds i8, ptr %302, i64 3
  %316 = load i8, ptr %315, align 1, !tbaa !33
  %317 = icmp ult i8 %316, 32
  br i1 %317, label %318, label %320

318:                                              ; preds = %314
  %319 = tail call i32 @inflateReset(ptr noundef nonnull %46) #14
  store i32 2, ptr %41, align 8, !tbaa !23
  br label %471

320:                                              ; preds = %314, %310, %306, %303, %300
  %321 = load ptr, ptr %44, align 8, !tbaa !27
  store ptr %321, ptr %37, align 8, !tbaa !19
  %322 = zext i32 %293 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %321, ptr align 1 %302, i64 %322, i1 false)
  %323 = load i32, ptr %40, align 8, !tbaa !31
  store i32 %323, ptr %0, align 8, !tbaa !17
  store i32 0, ptr %40, align 8, !tbaa !31
  store i32 1, ptr %41, align 8, !tbaa !23
  br label %476

324:                                              ; preds = %295, %292, %117
  %325 = load i32, ptr %41, align 8, !tbaa !23
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %486, label %474

327:                                              ; preds = %89
  %328 = load ptr, ptr %44, align 8, !tbaa !27
  %329 = load i32, ptr %42, align 8, !tbaa !24
  %330 = shl i32 %329, 1
  store i32 0, ptr %48, align 4, !tbaa !15
  %331 = tail call ptr @__errno_location() #17
  store i32 0, ptr %331, align 4, !tbaa !42
  store i32 0, ptr %0, align 4, !tbaa !42
  br label %332

332:                                              ; preds = %352, %327
  %333 = phi i32 [ %353, %352 ], [ 0, %327 ]
  %334 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %330, i32 %333), !nosanitize !18
  %335 = extractvalue { i32, i1 } %334, 1, !nosanitize !18
  br i1 %335, label %336, label %337, !nosanitize !18

336:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

337:                                              ; preds = %332
  %338 = extractvalue { i32, i1 } %334, 0, !nosanitize !18
  %339 = tail call i32 @llvm.umin.i32(i32 %338, i32 1073741824)
  %340 = load i32, ptr %49, align 4, !tbaa !43
  %341 = zext i32 %333 to i64
  %342 = getelementptr inbounds i8, ptr %328, i64 %341
  %343 = zext nneg i32 %339 to i64
  %344 = tail call i64 @read(i32 noundef %340, ptr noundef %342, i64 noundef %343) #14
  %345 = trunc i64 %344 to i32
  %346 = icmp slt i32 %345, 1
  br i1 %346, label %355, label %347

347:                                              ; preds = %337
  %348 = load i32, ptr %0, align 4, !tbaa !42
  %349 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %348, i32 %345), !nosanitize !18
  %350 = extractvalue { i32, i1 } %349, 1, !nosanitize !18
  br i1 %350, label %351, label %352, !nosanitize !18

351:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

352:                                              ; preds = %347
  %353 = extractvalue { i32, i1 } %349, 0, !nosanitize !18
  store i32 %353, ptr %0, align 4, !tbaa !42
  %354 = icmp ult i32 %353, %330
  br i1 %354, label %332, label %369, !llvm.loop !44

355:                                              ; preds = %337
  %356 = icmp slt i32 %345, 0
  br i1 %356, label %357, label %365

357:                                              ; preds = %355
  %358 = load i32, ptr %331, align 4, !tbaa !42
  %359 = icmp eq i32 %358, 11
  br i1 %359, label %360, label %366

360:                                              ; preds = %357
  store i32 1, ptr %48, align 4, !tbaa !15
  %361 = load i32, ptr %0, align 4, !tbaa !42
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %360
  %364 = load i32, ptr %331, align 4, !tbaa !42
  br label %366

365:                                              ; preds = %355
  store i32 1, ptr %39, align 8, !tbaa !21
  br label %369

366:                                              ; preds = %357, %363
  %367 = phi i32 [ %364, %363 ], [ %358, %357 ]
  %368 = tail call ptr @strerror(i32 noundef %367) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %368) #14
  br label %1133

369:                                              ; preds = %352, %365, %360
  %370 = load ptr, ptr %44, align 8, !tbaa !27
  store ptr %370, ptr %37, align 8, !tbaa !19
  br label %486

371:                                              ; preds = %89
  %372 = load i32, ptr %42, align 8, !tbaa !24
  %373 = shl i32 %372, 1
  store i32 %373, ptr %43, align 8, !tbaa !45
  %374 = load ptr, ptr %44, align 8, !tbaa !27
  store ptr %374, ptr %45, align 8, !tbaa !46
  br label %375

375:                                              ; preds = %454, %371
  %376 = phi i32 [ 0, %371 ], [ %439, %454 ]
  %377 = load i32, ptr %40, align 8, !tbaa !31
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %438

379:                                              ; preds = %375
  %380 = load i32, ptr %9, align 8, !tbaa !14
  switch i32 %380, label %458 [
    i32 0, label %381
    i32 -5, label %381
  ]

381:                                              ; preds = %379, %379
  %382 = load i32, ptr %39, align 8, !tbaa !21
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %434

384:                                              ; preds = %381
  %385 = load i32, ptr %42, align 8, !tbaa !24
  %386 = load ptr, ptr %47, align 8, !tbaa !26
  store i32 0, ptr %48, align 4, !tbaa !15
  %387 = tail call ptr @__errno_location() #17
  store i32 0, ptr %387, align 4, !tbaa !42
  br label %388

388:                                              ; preds = %407, %384
  %389 = phi i32 [ 0, %384 ], [ %408, %407 ]
  %390 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %385, i32 %389), !nosanitize !18
  %391 = extractvalue { i32, i1 } %390, 1, !nosanitize !18
  br i1 %391, label %392, label %393, !nosanitize !18

392:                                              ; preds = %388
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

393:                                              ; preds = %388
  %394 = extractvalue { i32, i1 } %390, 0, !nosanitize !18
  %395 = tail call i32 @llvm.umin.i32(i32 %394, i32 1073741824)
  %396 = load i32, ptr %49, align 4, !tbaa !43
  %397 = zext i32 %389 to i64
  %398 = getelementptr inbounds i8, ptr %386, i64 %397
  %399 = zext nneg i32 %395 to i64
  %400 = tail call i64 @read(i32 noundef %396, ptr noundef %398, i64 noundef %399) #14
  %401 = trunc i64 %400 to i32
  %402 = icmp slt i32 %401, 1
  br i1 %402, label %410, label %403

403:                                              ; preds = %393
  %404 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %389, i32 %401), !nosanitize !18
  %405 = extractvalue { i32, i1 } %404, 1, !nosanitize !18
  br i1 %405, label %406, label %407, !nosanitize !18

406:                                              ; preds = %403
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

407:                                              ; preds = %403
  %408 = extractvalue { i32, i1 } %404, 0, !nosanitize !18
  %409 = icmp ult i32 %408, %385
  br i1 %409, label %388, label %424, !llvm.loop !44

410:                                              ; preds = %393
  %411 = icmp slt i32 %401, 0
  br i1 %411, label %412, label %419

412:                                              ; preds = %410
  %413 = load i32, ptr %387, align 4, !tbaa !42
  %414 = icmp eq i32 %413, 11
  br i1 %414, label %415, label %420

415:                                              ; preds = %412
  store i32 1, ptr %48, align 4, !tbaa !15
  %416 = icmp eq i32 %389, 0
  br i1 %416, label %417, label %424

417:                                              ; preds = %415
  %418 = load i32, ptr %387, align 4, !tbaa !42
  br label %420

419:                                              ; preds = %410
  store i32 1, ptr %39, align 8, !tbaa !21
  br label %424

420:                                              ; preds = %412, %417
  %421 = phi i32 [ %418, %417 ], [ %413, %412 ]
  %422 = tail call ptr @strerror(i32 noundef %421) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %422) #14
  %423 = load i32, ptr %9, align 8, !tbaa !14
  br label %458

424:                                              ; preds = %407, %419, %415
  %425 = phi i32 [ %389, %419 ], [ %389, %415 ], [ %408, %407 ]
  %426 = load i32, ptr %40, align 8, !tbaa !31
  %427 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %426, i32 %425), !nosanitize !18
  %428 = extractvalue { i32, i1 } %427, 1, !nosanitize !18
  br i1 %428, label %429, label %430, !nosanitize !18

429:                                              ; preds = %424
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

430:                                              ; preds = %424
  %431 = extractvalue { i32, i1 } %427, 0, !nosanitize !18
  store i32 %431, ptr %40, align 8, !tbaa !31
  %432 = load ptr, ptr %47, align 8, !tbaa !26
  store ptr %432, ptr %46, align 8, !tbaa !32
  %433 = icmp eq i32 %431, 0
  br i1 %433, label %434, label %438

434:                                              ; preds = %430, %381
  %435 = load i32, ptr %48, align 4, !tbaa !15
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %458

437:                                              ; preds = %434
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %458

438:                                              ; preds = %430, %375
  %439 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #14
  %440 = load i32, ptr %43, align 8, !tbaa !45
  %441 = icmp ult i32 %440, %373
  br i1 %441, label %442, label %443

442:                                              ; preds = %438
  store i32 0, ptr %50, align 4, !tbaa !30
  br label %443

443:                                              ; preds = %442, %438
  switch i32 %439, label %454 [
    i32 -2, label %444
    i32 2, label %444
    i32 -4, label %445
    i32 -3, label %446
  ]

444:                                              ; preds = %443, %443
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %458

445:                                              ; preds = %443
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %458

446:                                              ; preds = %443
  %447 = load i32, ptr %50, align 4, !tbaa !30
  %448 = icmp eq i32 %447, 1
  br i1 %448, label %449, label %450

449:                                              ; preds = %446
  store i32 0, ptr %40, align 8, !tbaa !31
  store i32 1, ptr %39, align 8, !tbaa !21
  store i32 0, ptr %41, align 8, !tbaa !23
  br label %458

450:                                              ; preds = %446
  %451 = load ptr, ptr %51, align 8, !tbaa !47
  %452 = icmp eq ptr %451, null
  %453 = select i1 %452, ptr @.str.6, ptr %451
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %453) #14
  br label %458

454:                                              ; preds = %443
  %455 = icmp ne i32 %440, 0
  %456 = icmp ne i32 %439, 1
  %457 = select i1 %455, i1 %456, i1 false
  br i1 %457, label %375, label %458, !llvm.loop !48

458:                                              ; preds = %454, %379, %450, %449, %445, %444, %437, %434, %420
  %459 = phi i32 [ %376, %434 ], [ %376, %437 ], [ %439, %444 ], [ -4, %445 ], [ 0, %449 ], [ -3, %450 ], [ %423, %420 ], [ %380, %379 ], [ %439, %454 ]
  %460 = load i32, ptr %43, align 8, !tbaa !45
  %461 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %373, i32 %460), !nosanitize !18
  %462 = extractvalue { i32, i1 } %461, 1, !nosanitize !18
  br i1 %462, label %463, label %464, !nosanitize !18

463:                                              ; preds = %458
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

464:                                              ; preds = %458
  %465 = extractvalue { i32, i1 } %461, 0, !nosanitize !18
  store i32 %465, ptr %0, align 8, !tbaa !17
  %466 = load ptr, ptr %45, align 8, !tbaa !46
  %467 = zext i32 %465 to i64
  %468 = sub nsw i64 0, %467
  %469 = getelementptr inbounds i8, ptr %466, i64 %468
  store ptr %469, ptr %37, align 8, !tbaa !19
  switch i32 %459, label %1133 [
    i32 1, label %471
    i32 0, label %474
  ]

470:                                              ; preds = %89
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %1133

471:                                              ; preds = %464, %318
  %472 = phi i32 [ 1, %318 ], [ 0, %464 ]
  %473 = phi ptr [ %54, %318 ], [ %41, %464 ]
  store i32 %472, ptr %50, align 4, !tbaa !30
  store i32 0, ptr %473, align 8, !tbaa !42
  br label %474

474:                                              ; preds = %471, %464, %324
  %475 = load i32, ptr %0, align 8, !tbaa !17
  br label %476

476:                                              ; preds = %474, %320
  %477 = phi i32 [ %475, %474 ], [ %323, %320 ]
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %486

479:                                              ; preds = %476
  %480 = load i32, ptr %39, align 8, !tbaa !21
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %485, label %482

482:                                              ; preds = %479
  %483 = load i32, ptr %40, align 8, !tbaa !31
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %486, label %485

485:                                              ; preds = %482, %479
  br label %89, !llvm.loop !49

486:                                              ; preds = %482, %476, %324, %369
  %487 = load i64, ptr %33, align 8, !tbaa !16
  br label %488

488:                                              ; preds = %486, %80
  %489 = phi i64 [ %487, %486 ], [ %81, %80 ]
  %490 = icmp eq i64 %489, 0
  br i1 %490, label %491, label %55, !llvm.loop !50

491:                                              ; preds = %488, %85, %32
  %492 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %493 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  %494 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %495 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 10
  %496 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %497 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %498 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %499 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %500 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %501 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %502 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %503 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %504 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 6
  %505 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %506 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %507 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %508 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %509 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  br label %510

510:                                              ; preds = %1111, %491
  %511 = phi ptr [ %2, %491 ], [ %1112, %1111 ]
  %512 = phi i64 [ 1, %491 ], [ %1113, %1111 ]
  %513 = phi i64 [ 0, %491 ], [ %1114, %1111 ]
  %514 = call i64 @llvm.umin.i64(i64 %512, i64 4294967295)
  %515 = trunc i64 %514 to i32
  %516 = load i32, ptr %0, align 8, !tbaa !17
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %533, label %518

518:                                              ; preds = %510
  %519 = call i32 @llvm.umin.i32(i32 %516, i32 %515)
  %520 = load ptr, ptr %492, align 8, !tbaa !19
  %521 = zext i32 %519 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %511, ptr align 1 %520, i64 %521, i1 false)
  %522 = load ptr, ptr %492, align 8, !tbaa !19
  %523 = getelementptr inbounds i8, ptr %522, i64 %521
  store ptr %523, ptr %492, align 8, !tbaa !19
  %524 = load i32, ptr %0, align 8, !tbaa !17
  %525 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %524, i32 %519), !nosanitize !18
  %526 = extractvalue { i32, i1 } %525, 1, !nosanitize !18
  br i1 %526, label %527, label %528, !nosanitize !18

527:                                              ; preds = %1093, %518
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

528:                                              ; preds = %518
  %529 = extractvalue { i32, i1 } %525, 0, !nosanitize !18
  store i32 %529, ptr %0, align 8, !tbaa !17
  %530 = load i32, ptr %9, align 8, !tbaa !14
  %531 = icmp ne i32 %530, 0
  %532 = sext i1 %531 to i32
  br label %1093

533:                                              ; preds = %510
  %534 = load i32, ptr %493, align 8, !tbaa !21
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %539, label %536

536:                                              ; preds = %533
  %537 = load i32, ptr %494, align 8, !tbaa !22
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %1124, label %539

539:                                              ; preds = %536, %533
  %540 = load i32, ptr %495, align 8, !tbaa !23
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %546, label %542

542:                                              ; preds = %539
  %543 = load i32, ptr %496, align 8, !tbaa !24
  %544 = shl i32 %543, 1
  %545 = icmp ugt i32 %544, %515
  br i1 %545, label %546, label %949

546:                                              ; preds = %542, %539
  br label %547

547:                                              ; preds = %546, %943
  %548 = phi i32 [ %944, %943 ], [ %540, %546 ]
  switch i32 %548, label %928 [
    i32 0, label %549
    i32 1, label %785
    i32 2, label %829
  ]

549:                                              ; preds = %547
  %550 = load i32, ptr %496, align 8, !tbaa !24
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %569

552:                                              ; preds = %549
  %553 = load i32, ptr %507, align 4, !tbaa !25
  %554 = zext i32 %553 to i64
  %555 = call noalias ptr @malloc(i64 noundef %554) #16
  store ptr %555, ptr %500, align 8, !tbaa !26
  %556 = shl i32 %553, 1
  %557 = zext i32 %556 to i64
  %558 = call noalias ptr @malloc(i64 noundef %557) #16
  store ptr %558, ptr %506, align 8, !tbaa !27
  %559 = icmp eq ptr %555, null
  %560 = icmp eq ptr %558, null
  %561 = or i1 %559, %560
  br i1 %561, label %562, label %563

562:                                              ; preds = %552
  call void @free(ptr noundef %558) #14
  call void @free(ptr noundef %555) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %945

563:                                              ; preds = %552
  store i32 %553, ptr %496, align 8, !tbaa !24
  store i32 0, ptr %494, align 8, !tbaa !22
  store ptr null, ptr %499, align 8, !tbaa !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %508, i8 0, i64 24, i1 false)
  %564 = call i32 @inflateInit2_(ptr noundef nonnull %499, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %569, label %566

566:                                              ; preds = %563
  %567 = load ptr, ptr %506, align 8, !tbaa !27
  call void @free(ptr noundef %567) #14
  %568 = load ptr, ptr %500, align 8, !tbaa !26
  call void @free(ptr noundef %568) #14
  store i32 0, ptr %496, align 8, !tbaa !24
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %945

569:                                              ; preds = %563, %549
  %570 = load i32, ptr %509, align 8, !tbaa !29
  %571 = icmp eq i32 %570, -1
  br i1 %571, label %575, label %572

572:                                              ; preds = %569
  %573 = load i32, ptr %503, align 4, !tbaa !30
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %580

575:                                              ; preds = %572, %569
  %576 = call i32 @inflateReset(ptr noundef nonnull %499) #14
  store i32 2, ptr %495, align 8, !tbaa !23
  %577 = load i32, ptr %503, align 4, !tbaa !30
  %578 = icmp ne i32 %577, -1
  %579 = zext i1 %578 to i32
  store i32 %579, ptr %503, align 4, !tbaa !30
  store i32 0, ptr %509, align 8, !tbaa !29
  br label %782

580:                                              ; preds = %572
  %581 = load i32, ptr %9, align 8, !tbaa !14
  switch i32 %581, label %945 [
    i32 0, label %582
    i32 -5, label %582
  ]

582:                                              ; preds = %580, %580
  %583 = load i32, ptr %493, align 8, !tbaa !21
  %584 = icmp eq i32 %583, 0
  %585 = load i32, ptr %494, align 8, !tbaa !31
  br i1 %584, label %586, label %750

586:                                              ; preds = %582
  %587 = icmp eq i32 %585, 0
  br i1 %587, label %695, label %588

588:                                              ; preds = %586
  %589 = load ptr, ptr %500, align 8, !tbaa !26
  %590 = load ptr, ptr %499, align 8, !tbaa !32
  %591 = icmp eq ptr %590, %589
  br i1 %591, label %695, label %592

592:                                              ; preds = %588
  %593 = ptrtoint ptr %590 to i64
  %594 = ptrtoint ptr %589 to i64
  %595 = zext i32 %585 to i64
  %596 = icmp ult i32 %585, 8
  %597 = sub i64 %594, %593
  %598 = icmp ult i64 %597, 32
  %599 = or i1 %596, %598
  br i1 %599, label %639, label %600

600:                                              ; preds = %592
  %601 = icmp ult i32 %585, 32
  br i1 %601, label %623, label %602

602:                                              ; preds = %600
  %603 = and i64 %595, 4294967264
  br label %604

604:                                              ; preds = %604, %602
  %605 = phi i64 [ 0, %602 ], [ %612, %604 ]
  %606 = getelementptr i8, ptr %589, i64 %605
  %607 = getelementptr i8, ptr %590, i64 %605
  %608 = getelementptr i8, ptr %607, i64 16
  %609 = load <16 x i8>, ptr %607, align 1, !tbaa !33
  %610 = load <16 x i8>, ptr %608, align 1, !tbaa !33
  %611 = getelementptr i8, ptr %606, i64 16
  store <16 x i8> %609, ptr %606, align 1, !tbaa !33
  store <16 x i8> %610, ptr %611, align 1, !tbaa !33
  %612 = add nuw i64 %605, 32
  %613 = icmp eq i64 %612, %603
  br i1 %613, label %614, label %604, !llvm.loop !79

614:                                              ; preds = %604
  %615 = icmp eq i64 %603, %595
  br i1 %615, label %693, label %616

616:                                              ; preds = %614
  %617 = trunc i64 %603 to i32
  %618 = sub i32 %585, %617
  %619 = getelementptr i8, ptr %590, i64 %603
  %620 = getelementptr i8, ptr %589, i64 %603
  %621 = and i64 %595, 24
  %622 = icmp eq i64 %621, 0
  br i1 %622, label %639, label %623

623:                                              ; preds = %600, %616
  %624 = phi i64 [ %603, %616 ], [ 0, %600 ]
  %625 = and i64 %595, 4294967288
  %626 = getelementptr i8, ptr %589, i64 %625
  %627 = getelementptr i8, ptr %590, i64 %625
  %628 = trunc i64 %625 to i32
  %629 = sub i32 %585, %628
  br label %630

630:                                              ; preds = %630, %623
  %631 = phi i64 [ %624, %623 ], [ %635, %630 ]
  %632 = getelementptr i8, ptr %589, i64 %631
  %633 = getelementptr i8, ptr %590, i64 %631
  %634 = load <8 x i8>, ptr %633, align 1, !tbaa !33
  store <8 x i8> %634, ptr %632, align 1, !tbaa !33
  %635 = add nuw i64 %631, 8
  %636 = icmp eq i64 %635, %625
  br i1 %636, label %637, label %630, !llvm.loop !80

637:                                              ; preds = %630
  %638 = icmp eq i64 %625, %595
  br i1 %638, label %693, label %639

639:                                              ; preds = %592, %616, %637
  %640 = phi ptr [ %589, %592 ], [ %620, %616 ], [ %626, %637 ]
  %641 = phi ptr [ %590, %592 ], [ %619, %616 ], [ %627, %637 ]
  %642 = phi i32 [ %585, %592 ], [ %618, %616 ], [ %629, %637 ]
  %643 = add i32 %642, -1
  %644 = and i32 %642, 7
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %657, label %646

646:                                              ; preds = %639, %646
  %647 = phi ptr [ %653, %646 ], [ %640, %639 ]
  %648 = phi ptr [ %654, %646 ], [ %641, %639 ]
  %649 = phi i32 [ %652, %646 ], [ %642, %639 ]
  %650 = phi i32 [ %655, %646 ], [ 0, %639 ]
  %651 = load i8, ptr %648, align 1, !tbaa !33
  store i8 %651, ptr %647, align 1, !tbaa !33
  %652 = add i32 %649, -1
  %653 = getelementptr inbounds i8, ptr %647, i64 1
  %654 = getelementptr inbounds i8, ptr %648, i64 1
  %655 = add i32 %650, 1
  %656 = icmp eq i32 %655, %644
  br i1 %656, label %657, label %646, !llvm.loop !81

657:                                              ; preds = %646, %639
  %658 = phi ptr [ %640, %639 ], [ %653, %646 ]
  %659 = phi ptr [ %641, %639 ], [ %654, %646 ]
  %660 = phi i32 [ %642, %639 ], [ %652, %646 ]
  %661 = icmp ult i32 %643, 7
  br i1 %661, label %693, label %662

662:                                              ; preds = %657, %662
  %663 = phi ptr [ %689, %662 ], [ %658, %657 ]
  %664 = phi ptr [ %690, %662 ], [ %659, %657 ]
  %665 = phi i32 [ %688, %662 ], [ %660, %657 ]
  %666 = load i8, ptr %664, align 1, !tbaa !33
  store i8 %666, ptr %663, align 1, !tbaa !33
  %667 = getelementptr inbounds i8, ptr %663, i64 1
  %668 = getelementptr inbounds i8, ptr %664, i64 1
  %669 = load i8, ptr %668, align 1, !tbaa !33
  store i8 %669, ptr %667, align 1, !tbaa !33
  %670 = getelementptr inbounds i8, ptr %663, i64 2
  %671 = getelementptr inbounds i8, ptr %664, i64 2
  %672 = load i8, ptr %671, align 1, !tbaa !33
  store i8 %672, ptr %670, align 1, !tbaa !33
  %673 = getelementptr inbounds i8, ptr %663, i64 3
  %674 = getelementptr inbounds i8, ptr %664, i64 3
  %675 = load i8, ptr %674, align 1, !tbaa !33
  store i8 %675, ptr %673, align 1, !tbaa !33
  %676 = getelementptr inbounds i8, ptr %663, i64 4
  %677 = getelementptr inbounds i8, ptr %664, i64 4
  %678 = load i8, ptr %677, align 1, !tbaa !33
  store i8 %678, ptr %676, align 1, !tbaa !33
  %679 = getelementptr inbounds i8, ptr %663, i64 5
  %680 = getelementptr inbounds i8, ptr %664, i64 5
  %681 = load i8, ptr %680, align 1, !tbaa !33
  store i8 %681, ptr %679, align 1, !tbaa !33
  %682 = getelementptr inbounds i8, ptr %663, i64 6
  %683 = getelementptr inbounds i8, ptr %664, i64 6
  %684 = load i8, ptr %683, align 1, !tbaa !33
  store i8 %684, ptr %682, align 1, !tbaa !33
  %685 = getelementptr inbounds i8, ptr %663, i64 7
  %686 = getelementptr inbounds i8, ptr %664, i64 7
  %687 = load i8, ptr %686, align 1, !tbaa !33
  store i8 %687, ptr %685, align 1, !tbaa !33
  %688 = add i32 %665, -8
  %689 = getelementptr inbounds i8, ptr %663, i64 8
  %690 = getelementptr inbounds i8, ptr %664, i64 8
  %691 = icmp eq i32 %688, 0
  br i1 %691, label %693, label %662, !llvm.loop !82

692:                                              ; preds = %695
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

693:                                              ; preds = %657, %662, %637, %614
  %694 = load i32, ptr %494, align 8, !tbaa !31
  br label %695

695:                                              ; preds = %693, %588, %586
  %696 = phi i32 [ %694, %693 ], [ %585, %588 ], [ 0, %586 ]
  %697 = load i32, ptr %496, align 8, !tbaa !24
  %698 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %697, i32 %696), !nosanitize !18
  %699 = extractvalue { i32, i1 } %698, 1, !nosanitize !18
  br i1 %699, label %692, label %700, !nosanitize !18

700:                                              ; preds = %695
  %701 = extractvalue { i32, i1 } %698, 0, !nosanitize !18
  %702 = load ptr, ptr %500, align 8, !tbaa !26
  %703 = zext i32 %696 to i64
  %704 = getelementptr inbounds i8, ptr %702, i64 %703
  store i32 0, ptr %501, align 4, !tbaa !15
  %705 = tail call ptr @__errno_location() #17
  store i32 0, ptr %705, align 4, !tbaa !42
  br label %706

706:                                              ; preds = %725, %700
  %707 = phi i32 [ 0, %700 ], [ %726, %725 ]
  %708 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %701, i32 %707), !nosanitize !18
  %709 = extractvalue { i32, i1 } %708, 1, !nosanitize !18
  br i1 %709, label %710, label %711, !nosanitize !18

710:                                              ; preds = %706
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

711:                                              ; preds = %706
  %712 = extractvalue { i32, i1 } %708, 0, !nosanitize !18
  %713 = call i32 @llvm.umin.i32(i32 %712, i32 1073741824)
  %714 = load i32, ptr %502, align 4, !tbaa !43
  %715 = zext i32 %707 to i64
  %716 = getelementptr inbounds i8, ptr %704, i64 %715
  %717 = zext nneg i32 %713 to i64
  %718 = call i64 @read(i32 noundef %714, ptr noundef %716, i64 noundef %717) #14
  %719 = trunc i64 %718 to i32
  %720 = icmp slt i32 %719, 1
  br i1 %720, label %728, label %721

721:                                              ; preds = %711
  %722 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %707, i32 %719), !nosanitize !18
  %723 = extractvalue { i32, i1 } %722, 1, !nosanitize !18
  br i1 %723, label %724, label %725, !nosanitize !18

724:                                              ; preds = %721
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

725:                                              ; preds = %721
  %726 = extractvalue { i32, i1 } %722, 0, !nosanitize !18
  %727 = icmp ult i32 %726, %701
  br i1 %727, label %706, label %741, !llvm.loop !44

728:                                              ; preds = %711
  %729 = icmp slt i32 %719, 0
  br i1 %729, label %730, label %737

730:                                              ; preds = %728
  %731 = load i32, ptr %705, align 4, !tbaa !42
  %732 = icmp eq i32 %731, 11
  br i1 %732, label %733, label %738

733:                                              ; preds = %730
  store i32 1, ptr %501, align 4, !tbaa !15
  %734 = icmp eq i32 %707, 0
  br i1 %734, label %735, label %741

735:                                              ; preds = %733
  %736 = load i32, ptr %705, align 4, !tbaa !42
  br label %738

737:                                              ; preds = %728
  store i32 1, ptr %493, align 8, !tbaa !21
  br label %741

738:                                              ; preds = %730, %735
  %739 = phi i32 [ %736, %735 ], [ %731, %730 ]
  %740 = call ptr @strerror(i32 noundef %739) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %740) #14
  br label %945

741:                                              ; preds = %725, %737, %733
  %742 = phi i32 [ %707, %737 ], [ %707, %733 ], [ %726, %725 ]
  %743 = load i32, ptr %494, align 8, !tbaa !31
  %744 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %743, i32 %742), !nosanitize !18
  %745 = extractvalue { i32, i1 } %744, 1, !nosanitize !18
  br i1 %745, label %746, label %747, !nosanitize !18

746:                                              ; preds = %741
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

747:                                              ; preds = %741
  %748 = extractvalue { i32, i1 } %744, 0, !nosanitize !18
  store i32 %748, ptr %494, align 8, !tbaa !31
  %749 = load ptr, ptr %500, align 8, !tbaa !26
  store ptr %749, ptr %499, align 8, !tbaa !32
  br label %750

750:                                              ; preds = %747, %582
  %751 = phi i32 [ %748, %747 ], [ %585, %582 ]
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %782, label %753

753:                                              ; preds = %750
  %754 = load i32, ptr %501, align 4, !tbaa !15
  %755 = icmp ne i32 %754, 0
  %756 = icmp ult i32 %751, 4
  %757 = and i1 %756, %755
  br i1 %757, label %782, label %758

758:                                              ; preds = %753
  %759 = icmp ugt i32 %751, 3
  %760 = load ptr, ptr %499, align 8, !tbaa !32
  br i1 %759, label %761, label %778

761:                                              ; preds = %758
  %762 = load i8, ptr %760, align 1, !tbaa !33
  %763 = icmp eq i8 %762, 31
  br i1 %763, label %764, label %778

764:                                              ; preds = %761
  %765 = getelementptr inbounds i8, ptr %760, i64 1
  %766 = load i8, ptr %765, align 1, !tbaa !33
  %767 = icmp eq i8 %766, -117
  br i1 %767, label %768, label %778

768:                                              ; preds = %764
  %769 = getelementptr inbounds i8, ptr %760, i64 2
  %770 = load i8, ptr %769, align 1, !tbaa !33
  %771 = icmp eq i8 %770, 8
  br i1 %771, label %772, label %778

772:                                              ; preds = %768
  %773 = getelementptr inbounds i8, ptr %760, i64 3
  %774 = load i8, ptr %773, align 1, !tbaa !33
  %775 = icmp ult i8 %774, 32
  br i1 %775, label %776, label %778

776:                                              ; preds = %772
  %777 = call i32 @inflateReset(ptr noundef nonnull %499) #14
  store i32 2, ptr %495, align 8, !tbaa !23
  br label %929

778:                                              ; preds = %772, %768, %764, %761, %758
  %779 = load ptr, ptr %506, align 8, !tbaa !27
  store ptr %779, ptr %492, align 8, !tbaa !19
  %780 = zext i32 %751 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %779, ptr align 1 %760, i64 %780, i1 false)
  %781 = load i32, ptr %494, align 8, !tbaa !31
  store i32 %781, ptr %0, align 8, !tbaa !17
  store i32 0, ptr %494, align 8, !tbaa !31
  store i32 1, ptr %495, align 8, !tbaa !23
  br label %934

782:                                              ; preds = %753, %750, %575
  %783 = load i32, ptr %495, align 8, !tbaa !23
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %1111, label %932

785:                                              ; preds = %547
  %786 = load ptr, ptr %506, align 8, !tbaa !27
  %787 = load i32, ptr %496, align 8, !tbaa !24
  %788 = shl i32 %787, 1
  store i32 0, ptr %501, align 4, !tbaa !15
  %789 = tail call ptr @__errno_location() #17
  store i32 0, ptr %789, align 4, !tbaa !42
  store i32 0, ptr %0, align 4, !tbaa !42
  br label %790

790:                                              ; preds = %810, %785
  %791 = phi i32 [ %811, %810 ], [ 0, %785 ]
  %792 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %788, i32 %791), !nosanitize !18
  %793 = extractvalue { i32, i1 } %792, 1, !nosanitize !18
  br i1 %793, label %794, label %795, !nosanitize !18

794:                                              ; preds = %790
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

795:                                              ; preds = %790
  %796 = extractvalue { i32, i1 } %792, 0, !nosanitize !18
  %797 = call i32 @llvm.umin.i32(i32 %796, i32 1073741824)
  %798 = load i32, ptr %502, align 4, !tbaa !43
  %799 = zext i32 %791 to i64
  %800 = getelementptr inbounds i8, ptr %786, i64 %799
  %801 = zext nneg i32 %797 to i64
  %802 = call i64 @read(i32 noundef %798, ptr noundef %800, i64 noundef %801) #14
  %803 = trunc i64 %802 to i32
  %804 = icmp slt i32 %803, 1
  br i1 %804, label %813, label %805

805:                                              ; preds = %795
  %806 = load i32, ptr %0, align 4, !tbaa !42
  %807 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %806, i32 %803), !nosanitize !18
  %808 = extractvalue { i32, i1 } %807, 1, !nosanitize !18
  br i1 %808, label %809, label %810, !nosanitize !18

809:                                              ; preds = %805
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

810:                                              ; preds = %805
  %811 = extractvalue { i32, i1 } %807, 0, !nosanitize !18
  store i32 %811, ptr %0, align 4, !tbaa !42
  %812 = icmp ult i32 %811, %788
  br i1 %812, label %790, label %827, !llvm.loop !44

813:                                              ; preds = %795
  %814 = icmp slt i32 %803, 0
  br i1 %814, label %815, label %823

815:                                              ; preds = %813
  %816 = load i32, ptr %789, align 4, !tbaa !42
  %817 = icmp eq i32 %816, 11
  br i1 %817, label %818, label %824

818:                                              ; preds = %815
  store i32 1, ptr %501, align 4, !tbaa !15
  %819 = load i32, ptr %0, align 4, !tbaa !42
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %821, label %827

821:                                              ; preds = %818
  %822 = load i32, ptr %789, align 4, !tbaa !42
  br label %824

823:                                              ; preds = %813
  store i32 1, ptr %493, align 8, !tbaa !21
  br label %827

824:                                              ; preds = %821, %815
  %825 = phi i32 [ %822, %821 ], [ %816, %815 ]
  %826 = call ptr @strerror(i32 noundef %825) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %826) #14
  br label %945

827:                                              ; preds = %810, %823, %818
  %828 = load ptr, ptr %506, align 8, !tbaa !27
  store ptr %828, ptr %492, align 8, !tbaa !19
  br label %1111

829:                                              ; preds = %547
  %830 = load i32, ptr %496, align 8, !tbaa !24
  %831 = shl i32 %830, 1
  store i32 %831, ptr %497, align 8, !tbaa !45
  %832 = load ptr, ptr %506, align 8, !tbaa !27
  store ptr %832, ptr %498, align 8, !tbaa !46
  br label %833

833:                                              ; preds = %912, %829
  %834 = phi i32 [ 0, %829 ], [ %897, %912 ]
  %835 = load i32, ptr %494, align 8, !tbaa !31
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %837, label %896

837:                                              ; preds = %833
  %838 = load i32, ptr %9, align 8, !tbaa !14
  switch i32 %838, label %916 [
    i32 0, label %839
    i32 -5, label %839
  ]

839:                                              ; preds = %837, %837
  %840 = load i32, ptr %493, align 8, !tbaa !21
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %842, label %892

842:                                              ; preds = %839
  %843 = load i32, ptr %496, align 8, !tbaa !24
  %844 = load ptr, ptr %500, align 8, !tbaa !26
  store i32 0, ptr %501, align 4, !tbaa !15
  %845 = tail call ptr @__errno_location() #17
  store i32 0, ptr %845, align 4, !tbaa !42
  br label %846

846:                                              ; preds = %865, %842
  %847 = phi i32 [ 0, %842 ], [ %866, %865 ]
  %848 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %843, i32 %847), !nosanitize !18
  %849 = extractvalue { i32, i1 } %848, 1, !nosanitize !18
  br i1 %849, label %850, label %851, !nosanitize !18

850:                                              ; preds = %846
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

851:                                              ; preds = %846
  %852 = extractvalue { i32, i1 } %848, 0, !nosanitize !18
  %853 = call i32 @llvm.umin.i32(i32 %852, i32 1073741824)
  %854 = load i32, ptr %502, align 4, !tbaa !43
  %855 = zext i32 %847 to i64
  %856 = getelementptr inbounds i8, ptr %844, i64 %855
  %857 = zext nneg i32 %853 to i64
  %858 = call i64 @read(i32 noundef %854, ptr noundef %856, i64 noundef %857) #14
  %859 = trunc i64 %858 to i32
  %860 = icmp slt i32 %859, 1
  br i1 %860, label %868, label %861

861:                                              ; preds = %851
  %862 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %847, i32 %859), !nosanitize !18
  %863 = extractvalue { i32, i1 } %862, 1, !nosanitize !18
  br i1 %863, label %864, label %865, !nosanitize !18

864:                                              ; preds = %861
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

865:                                              ; preds = %861
  %866 = extractvalue { i32, i1 } %862, 0, !nosanitize !18
  %867 = icmp ult i32 %866, %843
  br i1 %867, label %846, label %882, !llvm.loop !44

868:                                              ; preds = %851
  %869 = icmp slt i32 %859, 0
  br i1 %869, label %870, label %877

870:                                              ; preds = %868
  %871 = load i32, ptr %845, align 4, !tbaa !42
  %872 = icmp eq i32 %871, 11
  br i1 %872, label %873, label %878

873:                                              ; preds = %870
  store i32 1, ptr %501, align 4, !tbaa !15
  %874 = icmp eq i32 %847, 0
  br i1 %874, label %875, label %882

875:                                              ; preds = %873
  %876 = load i32, ptr %845, align 4, !tbaa !42
  br label %878

877:                                              ; preds = %868
  store i32 1, ptr %493, align 8, !tbaa !21
  br label %882

878:                                              ; preds = %870, %875
  %879 = phi i32 [ %876, %875 ], [ %871, %870 ]
  %880 = call ptr @strerror(i32 noundef %879) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %880) #14
  %881 = load i32, ptr %9, align 8, !tbaa !14
  br label %916

882:                                              ; preds = %865, %877, %873
  %883 = phi i32 [ %847, %877 ], [ %847, %873 ], [ %866, %865 ]
  %884 = load i32, ptr %494, align 8, !tbaa !31
  %885 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %884, i32 %883), !nosanitize !18
  %886 = extractvalue { i32, i1 } %885, 1, !nosanitize !18
  br i1 %886, label %887, label %888, !nosanitize !18

887:                                              ; preds = %882
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

888:                                              ; preds = %882
  %889 = extractvalue { i32, i1 } %885, 0, !nosanitize !18
  store i32 %889, ptr %494, align 8, !tbaa !31
  %890 = load ptr, ptr %500, align 8, !tbaa !26
  store ptr %890, ptr %499, align 8, !tbaa !32
  %891 = icmp eq i32 %889, 0
  br i1 %891, label %892, label %896

892:                                              ; preds = %888, %839
  %893 = load i32, ptr %501, align 4, !tbaa !15
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %895, label %916

895:                                              ; preds = %892
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %916

896:                                              ; preds = %888, %833
  %897 = call i32 @inflate(ptr noundef nonnull %499, i32 noundef 0) #14
  %898 = load i32, ptr %497, align 8, !tbaa !45
  %899 = icmp ult i32 %898, %831
  br i1 %899, label %900, label %901

900:                                              ; preds = %896
  store i32 0, ptr %503, align 4, !tbaa !30
  br label %901

901:                                              ; preds = %900, %896
  switch i32 %897, label %912 [
    i32 -2, label %902
    i32 2, label %902
    i32 -4, label %903
    i32 -3, label %904
  ]

902:                                              ; preds = %901, %901
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %916

903:                                              ; preds = %901
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %916

904:                                              ; preds = %901
  %905 = load i32, ptr %503, align 4, !tbaa !30
  %906 = icmp eq i32 %905, 1
  br i1 %906, label %907, label %908

907:                                              ; preds = %904
  store i32 0, ptr %494, align 8, !tbaa !31
  store i32 1, ptr %493, align 8, !tbaa !21
  store i32 0, ptr %495, align 8, !tbaa !23
  br label %916

908:                                              ; preds = %904
  %909 = load ptr, ptr %504, align 8, !tbaa !47
  %910 = icmp eq ptr %909, null
  %911 = select i1 %910, ptr @.str.6, ptr %909
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %911) #14
  br label %916

912:                                              ; preds = %901
  %913 = icmp ne i32 %898, 0
  %914 = icmp ne i32 %897, 1
  %915 = select i1 %913, i1 %914, i1 false
  br i1 %915, label %833, label %916, !llvm.loop !48

916:                                              ; preds = %912, %837, %908, %907, %903, %902, %895, %892, %878
  %917 = phi i32 [ %834, %892 ], [ %834, %895 ], [ %897, %902 ], [ -4, %903 ], [ 0, %907 ], [ -3, %908 ], [ %881, %878 ], [ %897, %912 ], [ %838, %837 ]
  %918 = load i32, ptr %497, align 8, !tbaa !45
  %919 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %831, i32 %918), !nosanitize !18
  %920 = extractvalue { i32, i1 } %919, 1, !nosanitize !18
  br i1 %920, label %921, label %922, !nosanitize !18

921:                                              ; preds = %916
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

922:                                              ; preds = %916
  %923 = extractvalue { i32, i1 } %919, 0, !nosanitize !18
  store i32 %923, ptr %0, align 8, !tbaa !17
  %924 = load ptr, ptr %498, align 8, !tbaa !46
  %925 = zext i32 %923 to i64
  %926 = sub nsw i64 0, %925
  %927 = getelementptr inbounds i8, ptr %924, i64 %926
  store ptr %927, ptr %492, align 8, !tbaa !19
  switch i32 %917, label %945 [
    i32 1, label %929
    i32 0, label %932
  ]

928:                                              ; preds = %547
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %945

929:                                              ; preds = %922, %776
  %930 = phi i32 [ 1, %776 ], [ 0, %922 ]
  %931 = phi ptr [ %509, %776 ], [ %495, %922 ]
  store i32 %930, ptr %503, align 4, !tbaa !30
  store i32 0, ptr %931, align 8, !tbaa !42
  br label %932

932:                                              ; preds = %929, %922, %782
  %933 = load i32, ptr %0, align 8, !tbaa !17
  br label %934

934:                                              ; preds = %932, %778
  %935 = phi i32 [ %933, %932 ], [ %781, %778 ]
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %937, label %1111

937:                                              ; preds = %934
  %938 = load i32, ptr %493, align 8, !tbaa !21
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %943, label %940

940:                                              ; preds = %937
  %941 = load i32, ptr %494, align 8, !tbaa !31
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %1111, label %943

943:                                              ; preds = %940, %937
  %944 = load i32, ptr %495, align 8, !tbaa !23
  br label %547, !llvm.loop !49

945:                                              ; preds = %922, %580, %928, %824, %738, %566, %562
  %946 = load i32, ptr %0, align 8, !tbaa !17
  %947 = icmp eq i32 %946, 0
  %948 = sext i1 %947 to i32
  br label %1111

949:                                              ; preds = %542
  %950 = icmp eq i32 %540, 1
  br i1 %950, label %951, label %988

951:                                              ; preds = %949
  store i32 0, ptr %501, align 4, !tbaa !15
  %952 = tail call ptr @__errno_location() #17
  store i32 0, ptr %952, align 4, !tbaa !42
  br label %953

953:                                              ; preds = %972, %951
  %954 = phi i32 [ 0, %951 ], [ %973, %972 ]
  %955 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %515, i32 %954), !nosanitize !18
  %956 = extractvalue { i32, i1 } %955, 1, !nosanitize !18
  br i1 %956, label %957, label %958, !nosanitize !18

957:                                              ; preds = %953
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

958:                                              ; preds = %953
  %959 = extractvalue { i32, i1 } %955, 0, !nosanitize !18
  %960 = call i32 @llvm.umin.i32(i32 %959, i32 1073741824)
  %961 = load i32, ptr %502, align 4, !tbaa !43
  %962 = zext i32 %954 to i64
  %963 = getelementptr inbounds i8, ptr %511, i64 %962
  %964 = zext nneg i32 %960 to i64
  %965 = call i64 @read(i32 noundef %961, ptr noundef %963, i64 noundef %964) #14
  %966 = trunc i64 %965 to i32
  %967 = icmp slt i32 %966, 1
  br i1 %967, label %975, label %968

968:                                              ; preds = %958
  %969 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %954, i32 %966), !nosanitize !18
  %970 = extractvalue { i32, i1 } %969, 1, !nosanitize !18
  br i1 %970, label %971, label %972, !nosanitize !18

971:                                              ; preds = %968
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

972:                                              ; preds = %968
  %973 = extractvalue { i32, i1 } %969, 0, !nosanitize !18
  %974 = icmp ult i32 %973, %515
  br i1 %974, label %953, label %1091, !llvm.loop !44

975:                                              ; preds = %958
  %976 = icmp slt i32 %966, 0
  br i1 %976, label %977, label %987

977:                                              ; preds = %975
  %978 = load i32, ptr %952, align 4, !tbaa !42
  %979 = icmp eq i32 %978, 11
  br i1 %979, label %980, label %984

980:                                              ; preds = %977
  store i32 1, ptr %501, align 4, !tbaa !15
  %981 = icmp eq i32 %954, 0
  br i1 %981, label %982, label %1093

982:                                              ; preds = %980
  %983 = load i32, ptr %952, align 4, !tbaa !42
  br label %984

984:                                              ; preds = %982, %977
  %985 = phi i32 [ %983, %982 ], [ %978, %977 ]
  %986 = call ptr @strerror(i32 noundef %985) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %986) #14
  br label %1093

987:                                              ; preds = %975
  store i32 1, ptr %493, align 8, !tbaa !21
  br label %1093

988:                                              ; preds = %949
  store i32 %515, ptr %497, align 8, !tbaa !55
  store ptr %511, ptr %498, align 8, !tbaa !56
  br label %989

989:                                              ; preds = %1068, %988
  %990 = phi i32 [ 0, %988 ], [ %1053, %1068 ]
  %991 = load i32, ptr %494, align 8, !tbaa !31
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %993, label %1052

993:                                              ; preds = %989
  %994 = load i32, ptr %9, align 8, !tbaa !14
  switch i32 %994, label %1072 [
    i32 0, label %995
    i32 -5, label %995
  ]

995:                                              ; preds = %993, %993
  %996 = load i32, ptr %493, align 8, !tbaa !21
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %998, label %1048

998:                                              ; preds = %995
  %999 = load i32, ptr %496, align 8, !tbaa !24
  %1000 = load ptr, ptr %500, align 8, !tbaa !26
  store i32 0, ptr %501, align 4, !tbaa !15
  %1001 = tail call ptr @__errno_location() #17
  store i32 0, ptr %1001, align 4, !tbaa !42
  br label %1002

1002:                                             ; preds = %1021, %998
  %1003 = phi i32 [ 0, %998 ], [ %1022, %1021 ]
  %1004 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %999, i32 %1003), !nosanitize !18
  %1005 = extractvalue { i32, i1 } %1004, 1, !nosanitize !18
  br i1 %1005, label %1006, label %1007, !nosanitize !18

1006:                                             ; preds = %1002
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

1007:                                             ; preds = %1002
  %1008 = extractvalue { i32, i1 } %1004, 0, !nosanitize !18
  %1009 = call i32 @llvm.umin.i32(i32 %1008, i32 1073741824)
  %1010 = load i32, ptr %502, align 4, !tbaa !43
  %1011 = zext i32 %1003 to i64
  %1012 = getelementptr inbounds i8, ptr %1000, i64 %1011
  %1013 = zext nneg i32 %1009 to i64
  %1014 = call i64 @read(i32 noundef %1010, ptr noundef %1012, i64 noundef %1013) #14
  %1015 = trunc i64 %1014 to i32
  %1016 = icmp slt i32 %1015, 1
  br i1 %1016, label %1024, label %1017

1017:                                             ; preds = %1007
  %1018 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1003, i32 %1015), !nosanitize !18
  %1019 = extractvalue { i32, i1 } %1018, 1, !nosanitize !18
  br i1 %1019, label %1020, label %1021, !nosanitize !18

1020:                                             ; preds = %1017
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

1021:                                             ; preds = %1017
  %1022 = extractvalue { i32, i1 } %1018, 0, !nosanitize !18
  %1023 = icmp ult i32 %1022, %999
  br i1 %1023, label %1002, label %1038, !llvm.loop !44

1024:                                             ; preds = %1007
  %1025 = icmp slt i32 %1015, 0
  br i1 %1025, label %1026, label %1033

1026:                                             ; preds = %1024
  %1027 = load i32, ptr %1001, align 4, !tbaa !42
  %1028 = icmp eq i32 %1027, 11
  br i1 %1028, label %1029, label %1034

1029:                                             ; preds = %1026
  store i32 1, ptr %501, align 4, !tbaa !15
  %1030 = icmp eq i32 %1003, 0
  br i1 %1030, label %1031, label %1038

1031:                                             ; preds = %1029
  %1032 = load i32, ptr %1001, align 4, !tbaa !42
  br label %1034

1033:                                             ; preds = %1024
  store i32 1, ptr %493, align 8, !tbaa !21
  br label %1038

1034:                                             ; preds = %1026, %1031
  %1035 = phi i32 [ %1032, %1031 ], [ %1027, %1026 ]
  %1036 = call ptr @strerror(i32 noundef %1035) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1036) #14
  %1037 = load i32, ptr %9, align 8, !tbaa !14
  br label %1072

1038:                                             ; preds = %1021, %1033, %1029
  %1039 = phi i32 [ %1003, %1033 ], [ %1003, %1029 ], [ %1022, %1021 ]
  %1040 = load i32, ptr %494, align 8, !tbaa !31
  %1041 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1040, i32 %1039), !nosanitize !18
  %1042 = extractvalue { i32, i1 } %1041, 1, !nosanitize !18
  br i1 %1042, label %1043, label %1044, !nosanitize !18

1043:                                             ; preds = %1038
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

1044:                                             ; preds = %1038
  %1045 = extractvalue { i32, i1 } %1041, 0, !nosanitize !18
  store i32 %1045, ptr %494, align 8, !tbaa !31
  %1046 = load ptr, ptr %500, align 8, !tbaa !26
  store ptr %1046, ptr %499, align 8, !tbaa !32
  %1047 = icmp eq i32 %1045, 0
  br i1 %1047, label %1048, label %1052

1048:                                             ; preds = %1044, %995
  %1049 = load i32, ptr %501, align 4, !tbaa !15
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1051, label %1072

1051:                                             ; preds = %1048
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %1072

1052:                                             ; preds = %1044, %989
  %1053 = call i32 @inflate(ptr noundef nonnull %499, i32 noundef 0) #14
  %1054 = load i32, ptr %497, align 8, !tbaa !45
  %1055 = icmp ult i32 %1054, %515
  br i1 %1055, label %1056, label %1057

1056:                                             ; preds = %1052
  store i32 0, ptr %503, align 4, !tbaa !30
  br label %1057

1057:                                             ; preds = %1056, %1052
  switch i32 %1053, label %1068 [
    i32 -2, label %1058
    i32 2, label %1058
    i32 -4, label %1059
    i32 -3, label %1060
  ]

1058:                                             ; preds = %1057, %1057
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %1072

1059:                                             ; preds = %1057
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1072

1060:                                             ; preds = %1057
  %1061 = load i32, ptr %503, align 4, !tbaa !30
  %1062 = icmp eq i32 %1061, 1
  br i1 %1062, label %1063, label %1064

1063:                                             ; preds = %1060
  store i32 0, ptr %494, align 8, !tbaa !31
  store i32 1, ptr %493, align 8, !tbaa !21
  store i32 0, ptr %495, align 8, !tbaa !23
  br label %1072

1064:                                             ; preds = %1060
  %1065 = load ptr, ptr %504, align 8, !tbaa !47
  %1066 = icmp eq ptr %1065, null
  %1067 = select i1 %1066, ptr @.str.6, ptr %1065
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1067) #14
  br label %1072

1068:                                             ; preds = %1057
  %1069 = icmp ne i32 %1054, 0
  %1070 = icmp ne i32 %1053, 1
  %1071 = select i1 %1069, i1 %1070, i1 false
  br i1 %1071, label %989, label %1072, !llvm.loop !48

1072:                                             ; preds = %1068, %993, %1064, %1063, %1059, %1058, %1051, %1048, %1034
  %1073 = phi i32 [ %990, %1048 ], [ %990, %1051 ], [ %1053, %1058 ], [ -4, %1059 ], [ 0, %1063 ], [ -3, %1064 ], [ %1037, %1034 ], [ %994, %993 ], [ %1053, %1068 ]
  %1074 = load i32, ptr %497, align 8, !tbaa !45
  %1075 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %515, i32 %1074), !nosanitize !18
  %1076 = extractvalue { i32, i1 } %1075, 1, !nosanitize !18
  br i1 %1076, label %1077, label %1078, !nosanitize !18

1077:                                             ; preds = %1072
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

1078:                                             ; preds = %1072
  %1079 = extractvalue { i32, i1 } %1075, 0, !nosanitize !18
  %1080 = load ptr, ptr %498, align 8, !tbaa !46
  %1081 = zext i32 %1079 to i64
  %1082 = sub nsw i64 0, %1081
  %1083 = getelementptr inbounds i8, ptr %1080, i64 %1082
  store ptr %1083, ptr %492, align 8, !tbaa !19
  %1084 = icmp eq i32 %1073, 1
  br i1 %1084, label %1085, label %1086

1085:                                             ; preds = %1078
  store i32 0, ptr %503, align 4, !tbaa !30
  store i32 0, ptr %495, align 8, !tbaa !23
  br label %1089

1086:                                             ; preds = %1078
  %1087 = icmp ne i32 %1073, 0
  %1088 = sext i1 %1087 to i32
  br label %1089

1089:                                             ; preds = %1086, %1085
  %1090 = phi i32 [ 0, %1085 ], [ %1088, %1086 ]
  store i32 0, ptr %0, align 8, !tbaa !17
  br label %1093

1091:                                             ; preds = %972
  %1092 = zext i32 %973 to i64
  br label %1093

1093:                                             ; preds = %1091, %1089, %987, %984, %980, %528
  %1094 = phi i64 [ %1092, %1091 ], [ %962, %987 ], [ %962, %984 ], [ %962, %980 ], [ %521, %528 ], [ %1081, %1089 ]
  %1095 = phi i32 [ 0, %1091 ], [ 0, %987 ], [ -1, %984 ], [ 0, %980 ], [ %532, %528 ], [ %1090, %1089 ]
  %1096 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %512, i64 %1094), !nosanitize !18
  %1097 = extractvalue { i64, i1 } %1096, 0, !nosanitize !18
  %1098 = extractvalue { i64, i1 } %1096, 1, !nosanitize !18
  br i1 %1098, label %527, label %1099, !nosanitize !18

1099:                                             ; preds = %1093
  %1100 = getelementptr inbounds i8, ptr %511, i64 %1094
  %1101 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %513, i64 %1094), !nosanitize !18
  %1102 = extractvalue { i64, i1 } %1101, 0, !nosanitize !18
  %1103 = extractvalue { i64, i1 } %1101, 1, !nosanitize !18
  br i1 %1103, label %1104, label %1105, !nosanitize !18

1104:                                             ; preds = %1105, %1099
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

1105:                                             ; preds = %1099
  %1106 = load i64, ptr %505, align 8, !tbaa !20
  %1107 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1106, i64 %1094), !nosanitize !18
  %1108 = extractvalue { i64, i1 } %1107, 1, !nosanitize !18
  br i1 %1108, label %1104, label %1109, !nosanitize !18

1109:                                             ; preds = %1105
  %1110 = extractvalue { i64, i1 } %1107, 0, !nosanitize !18
  store i64 %1110, ptr %505, align 8, !tbaa !20
  br label %1111

1111:                                             ; preds = %940, %934, %782, %1109, %945, %827
  %1112 = phi ptr [ %1100, %1109 ], [ %511, %945 ], [ %511, %827 ], [ %511, %782 ], [ %511, %934 ], [ %511, %940 ]
  %1113 = phi i64 [ %1097, %1109 ], [ %512, %945 ], [ %512, %827 ], [ %512, %782 ], [ %512, %934 ], [ %512, %940 ]
  %1114 = phi i64 [ %1102, %1109 ], [ %513, %945 ], [ %513, %827 ], [ %513, %782 ], [ %513, %934 ], [ %513, %940 ]
  %1115 = phi i32 [ %1095, %1109 ], [ %948, %945 ], [ 0, %827 ], [ 0, %782 ], [ 0, %934 ], [ 0, %940 ]
  %1116 = icmp ne i64 %1113, 0
  %1117 = icmp eq i32 %1115, 0
  %1118 = select i1 %1116, i1 %1117, i1 false
  br i1 %1118, label %510, label %1119, !llvm.loop !57

1119:                                             ; preds = %1111
  %1120 = icmp eq i64 %1113, 0
  br i1 %1120, label %1127, label %1121

1121:                                             ; preds = %1119
  %1122 = load i32, ptr %493, align 8, !tbaa !21
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1127, label %1124

1124:                                             ; preds = %536, %1121
  %1125 = phi i64 [ %1114, %1121 ], [ %513, %536 ]
  %1126 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  store i32 1, ptr %1126, align 4, !tbaa !58
  br label %1127

1127:                                             ; preds = %1124, %1121, %1119
  %1128 = phi i64 [ %1125, %1124 ], [ %1114, %1121 ], [ %1114, %1119 ]
  %1129 = freeze i64 %1128
  %1130 = icmp eq i64 %1129, 0
  %1131 = load i8, ptr %2, align 1
  %1132 = zext i8 %1131 to i32
  br i1 %1130, label %1133, label %1134

1133:                                             ; preds = %464, %122, %1127, %470, %366, %280, %108, %104
  br label %1134

1134:                                             ; preds = %1, %4, %11, %25, %1127, %1133
  %1135 = phi i32 [ %31, %25 ], [ -1, %1 ], [ -1, %4 ], [ -1, %11 ], [ -1, %1133 ], [ %1132, %1127 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #14
  ret i32 %1135
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gzungetc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %803, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %803

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 10
  %10 = load i32, ptr %9, align 8, !tbaa !23
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %268

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 8, !tbaa !17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %268

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 21
  %17 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !24
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !25
  %23 = zext i32 %22 to i64
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #16
  %25 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 6
  store ptr %24, ptr %25, align 8, !tbaa !26
  %26 = shl i32 %22, 1
  %27 = zext i32 %26 to i64
  %28 = tail call noalias ptr @malloc(i64 noundef %27) #16
  %29 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 7
  store ptr %28, ptr %29, align 8, !tbaa !27
  %30 = icmp eq ptr %24, null
  %31 = icmp eq ptr %28, null
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  tail call void @free(ptr noundef %28) #14
  tail call void @free(ptr noundef %24) #14
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %268

34:                                               ; preds = %20
  store i32 %22, ptr %17, align 8, !tbaa !24
  %35 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 21, i32 8
  %36 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 21, i32 1
  store i32 0, ptr %36, align 8, !tbaa !22
  store ptr null, ptr %16, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  %37 = tail call i32 @inflateInit2_(ptr noundef nonnull %16, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %29, align 8, !tbaa !27
  tail call void @free(ptr noundef %40) #14
  %41 = load ptr, ptr %25, align 8, !tbaa !26
  tail call void @free(ptr noundef %41) #14
  store i32 0, ptr %17, align 8, !tbaa !24
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %268

42:                                               ; preds = %34, %15
  %43 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 8
  %44 = load i32, ptr %43, align 8, !tbaa !29
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 9
  %48 = load i32, ptr %47, align 4, !tbaa !30
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46, %42
  %51 = tail call i32 @inflateReset(ptr noundef nonnull %16) #14
  store i32 2, ptr %9, align 8, !tbaa !23
  %52 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 9
  %53 = load i32, ptr %52, align 4, !tbaa !30
  %54 = icmp ne i32 %53, -1
  %55 = zext i1 %54 to i32
  store i32 %55, ptr %52, align 4, !tbaa !30
  store i32 0, ptr %43, align 8, !tbaa !29
  br label %268

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 19
  %58 = load i32, ptr %57, align 8, !tbaa !14
  switch i32 %58, label %268 [
    i32 0, label %59
    i32 -5, label %59
  ]

59:                                               ; preds = %56, %56
  %60 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 13
  %61 = load i32, ptr %60, align 8, !tbaa !21
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 21, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !31
  br i1 %62, label %65, label %233

65:                                               ; preds = %59
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %175, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !26
  %70 = load ptr, ptr %16, align 8, !tbaa !32
  %71 = icmp eq ptr %70, %69
  br i1 %71, label %175, label %72

72:                                               ; preds = %67
  %73 = ptrtoint ptr %70 to i64
  %74 = ptrtoint ptr %69 to i64
  %75 = zext i32 %64 to i64
  %76 = icmp ult i32 %64, 8
  %77 = sub i64 %74, %73
  %78 = icmp ult i64 %77, 32
  %79 = or i1 %76, %78
  br i1 %79, label %119, label %80

80:                                               ; preds = %72
  %81 = icmp ult i32 %64, 32
  br i1 %81, label %103, label %82

82:                                               ; preds = %80
  %83 = and i64 %75, 4294967264
  br label %84

84:                                               ; preds = %84, %82
  %85 = phi i64 [ 0, %82 ], [ %92, %84 ]
  %86 = getelementptr i8, ptr %69, i64 %85
  %87 = getelementptr i8, ptr %70, i64 %85
  %88 = getelementptr i8, ptr %87, i64 16
  %89 = load <16 x i8>, ptr %87, align 1, !tbaa !33
  %90 = load <16 x i8>, ptr %88, align 1, !tbaa !33
  %91 = getelementptr i8, ptr %86, i64 16
  store <16 x i8> %89, ptr %86, align 1, !tbaa !33
  store <16 x i8> %90, ptr %91, align 1, !tbaa !33
  %92 = add nuw i64 %85, 32
  %93 = icmp eq i64 %92, %83
  br i1 %93, label %94, label %84, !llvm.loop !83

94:                                               ; preds = %84
  %95 = icmp eq i64 %83, %75
  br i1 %95, label %173, label %96

96:                                               ; preds = %94
  %97 = trunc i64 %83 to i32
  %98 = sub i32 %64, %97
  %99 = getelementptr i8, ptr %70, i64 %83
  %100 = getelementptr i8, ptr %69, i64 %83
  %101 = and i64 %75, 24
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %80, %96
  %104 = phi i64 [ %83, %96 ], [ 0, %80 ]
  %105 = and i64 %75, 4294967288
  %106 = getelementptr i8, ptr %69, i64 %105
  %107 = getelementptr i8, ptr %70, i64 %105
  %108 = trunc i64 %105 to i32
  %109 = sub i32 %64, %108
  br label %110

110:                                              ; preds = %110, %103
  %111 = phi i64 [ %104, %103 ], [ %115, %110 ]
  %112 = getelementptr i8, ptr %69, i64 %111
  %113 = getelementptr i8, ptr %70, i64 %111
  %114 = load <8 x i8>, ptr %113, align 1, !tbaa !33
  store <8 x i8> %114, ptr %112, align 1, !tbaa !33
  %115 = add nuw i64 %111, 8
  %116 = icmp eq i64 %115, %105
  br i1 %116, label %117, label %110, !llvm.loop !84

117:                                              ; preds = %110
  %118 = icmp eq i64 %105, %75
  br i1 %118, label %173, label %119

119:                                              ; preds = %72, %96, %117
  %120 = phi ptr [ %69, %72 ], [ %100, %96 ], [ %106, %117 ]
  %121 = phi ptr [ %70, %72 ], [ %99, %96 ], [ %107, %117 ]
  %122 = phi i32 [ %64, %72 ], [ %98, %96 ], [ %109, %117 ]
  %123 = add i32 %122, -1
  %124 = and i32 %122, 7
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %119, %126
  %127 = phi ptr [ %133, %126 ], [ %120, %119 ]
  %128 = phi ptr [ %134, %126 ], [ %121, %119 ]
  %129 = phi i32 [ %132, %126 ], [ %122, %119 ]
  %130 = phi i32 [ %135, %126 ], [ 0, %119 ]
  %131 = load i8, ptr %128, align 1, !tbaa !33
  store i8 %131, ptr %127, align 1, !tbaa !33
  %132 = add i32 %129, -1
  %133 = getelementptr inbounds i8, ptr %127, i64 1
  %134 = getelementptr inbounds i8, ptr %128, i64 1
  %135 = add i32 %130, 1
  %136 = icmp eq i32 %135, %124
  br i1 %136, label %137, label %126, !llvm.loop !85

137:                                              ; preds = %126, %119
  %138 = phi ptr [ %120, %119 ], [ %133, %126 ]
  %139 = phi ptr [ %121, %119 ], [ %134, %126 ]
  %140 = phi i32 [ %122, %119 ], [ %132, %126 ]
  %141 = icmp ult i32 %123, 7
  br i1 %141, label %173, label %142

142:                                              ; preds = %137, %142
  %143 = phi ptr [ %169, %142 ], [ %138, %137 ]
  %144 = phi ptr [ %170, %142 ], [ %139, %137 ]
  %145 = phi i32 [ %168, %142 ], [ %140, %137 ]
  %146 = load i8, ptr %144, align 1, !tbaa !33
  store i8 %146, ptr %143, align 1, !tbaa !33
  %147 = getelementptr inbounds i8, ptr %143, i64 1
  %148 = getelementptr inbounds i8, ptr %144, i64 1
  %149 = load i8, ptr %148, align 1, !tbaa !33
  store i8 %149, ptr %147, align 1, !tbaa !33
  %150 = getelementptr inbounds i8, ptr %143, i64 2
  %151 = getelementptr inbounds i8, ptr %144, i64 2
  %152 = load i8, ptr %151, align 1, !tbaa !33
  store i8 %152, ptr %150, align 1, !tbaa !33
  %153 = getelementptr inbounds i8, ptr %143, i64 3
  %154 = getelementptr inbounds i8, ptr %144, i64 3
  %155 = load i8, ptr %154, align 1, !tbaa !33
  store i8 %155, ptr %153, align 1, !tbaa !33
  %156 = getelementptr inbounds i8, ptr %143, i64 4
  %157 = getelementptr inbounds i8, ptr %144, i64 4
  %158 = load i8, ptr %157, align 1, !tbaa !33
  store i8 %158, ptr %156, align 1, !tbaa !33
  %159 = getelementptr inbounds i8, ptr %143, i64 5
  %160 = getelementptr inbounds i8, ptr %144, i64 5
  %161 = load i8, ptr %160, align 1, !tbaa !33
  store i8 %161, ptr %159, align 1, !tbaa !33
  %162 = getelementptr inbounds i8, ptr %143, i64 6
  %163 = getelementptr inbounds i8, ptr %144, i64 6
  %164 = load i8, ptr %163, align 1, !tbaa !33
  store i8 %164, ptr %162, align 1, !tbaa !33
  %165 = getelementptr inbounds i8, ptr %143, i64 7
  %166 = getelementptr inbounds i8, ptr %144, i64 7
  %167 = load i8, ptr %166, align 1, !tbaa !33
  store i8 %167, ptr %165, align 1, !tbaa !33
  %168 = add i32 %145, -8
  %169 = getelementptr inbounds i8, ptr %143, i64 8
  %170 = getelementptr inbounds i8, ptr %144, i64 8
  %171 = icmp eq i32 %168, 0
  br i1 %171, label %173, label %142, !llvm.loop !86

172:                                              ; preds = %175
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

173:                                              ; preds = %137, %142, %117, %94
  %174 = load i32, ptr %63, align 8, !tbaa !31
  br label %175

175:                                              ; preds = %173, %67, %65
  %176 = phi i32 [ %174, %173 ], [ %64, %67 ], [ 0, %65 ]
  %177 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 6
  %178 = load i32, ptr %17, align 8, !tbaa !24
  %179 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %178, i32 %176), !nosanitize !18
  %180 = extractvalue { i32, i1 } %179, 1, !nosanitize !18
  br i1 %180, label %172, label %181, !nosanitize !18

181:                                              ; preds = %175
  %182 = extractvalue { i32, i1 } %179, 0, !nosanitize !18
  %183 = load ptr, ptr %177, align 8, !tbaa !26
  %184 = zext i32 %176 to i64
  %185 = getelementptr inbounds i8, ptr %183, i64 %184
  %186 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 11
  store i32 0, ptr %186, align 4, !tbaa !15
  %187 = tail call ptr @__errno_location() #17
  store i32 0, ptr %187, align 4, !tbaa !42
  %188 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 2
  br label %189

189:                                              ; preds = %208, %181
  %190 = phi i32 [ 0, %181 ], [ %209, %208 ]
  %191 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %182, i32 %190), !nosanitize !18
  %192 = extractvalue { i32, i1 } %191, 1, !nosanitize !18
  br i1 %192, label %193, label %194, !nosanitize !18

193:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

194:                                              ; preds = %189
  %195 = extractvalue { i32, i1 } %191, 0, !nosanitize !18
  %196 = tail call i32 @llvm.umin.i32(i32 %195, i32 1073741824)
  %197 = load i32, ptr %188, align 4, !tbaa !43
  %198 = zext i32 %190 to i64
  %199 = getelementptr inbounds i8, ptr %185, i64 %198
  %200 = zext nneg i32 %196 to i64
  %201 = tail call i64 @read(i32 noundef %197, ptr noundef %199, i64 noundef %200) #14
  %202 = trunc i64 %201 to i32
  %203 = icmp slt i32 %202, 1
  br i1 %203, label %211, label %204

204:                                              ; preds = %194
  %205 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %190, i32 %202), !nosanitize !18
  %206 = extractvalue { i32, i1 } %205, 1, !nosanitize !18
  br i1 %206, label %207, label %208, !nosanitize !18

207:                                              ; preds = %204
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

208:                                              ; preds = %204
  %209 = extractvalue { i32, i1 } %205, 0, !nosanitize !18
  %210 = icmp ult i32 %209, %182
  br i1 %210, label %189, label %224, !llvm.loop !44

211:                                              ; preds = %194
  %212 = icmp slt i32 %202, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %211
  %214 = load i32, ptr %187, align 4, !tbaa !42
  %215 = icmp eq i32 %214, 11
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  store i32 1, ptr %186, align 4, !tbaa !15
  %217 = icmp eq i32 %190, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %216
  %219 = load i32, ptr %187, align 4, !tbaa !42
  br label %221

220:                                              ; preds = %211
  store i32 1, ptr %60, align 8, !tbaa !21
  br label %224

221:                                              ; preds = %218, %213
  %222 = phi i32 [ %219, %218 ], [ %214, %213 ]
  %223 = tail call ptr @strerror(i32 noundef %222) #14
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %223) #14
  br label %268

224:                                              ; preds = %208, %220, %216
  %225 = phi i32 [ %190, %220 ], [ %190, %216 ], [ %209, %208 ]
  %226 = load i32, ptr %63, align 8, !tbaa !31
  %227 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %226, i32 %225), !nosanitize !18
  %228 = extractvalue { i32, i1 } %227, 1, !nosanitize !18
  br i1 %228, label %229, label %230, !nosanitize !18

229:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

230:                                              ; preds = %224
  %231 = extractvalue { i32, i1 } %227, 0, !nosanitize !18
  store i32 %231, ptr %63, align 8, !tbaa !31
  %232 = load ptr, ptr %177, align 8, !tbaa !26
  store ptr %232, ptr %16, align 8, !tbaa !32
  br label %233

233:                                              ; preds = %230, %59
  %234 = phi i32 [ %231, %230 ], [ %64, %59 ]
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %268, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 11
  %238 = load i32, ptr %237, align 4, !tbaa !15
  %239 = icmp ne i32 %238, 0
  %240 = icmp ult i32 %234, 4
  %241 = and i1 %240, %239
  br i1 %241, label %268, label %242

242:                                              ; preds = %236
  %243 = icmp ugt i32 %234, 3
  %244 = load ptr, ptr %16, align 8, !tbaa !32
  br i1 %243, label %245, label %262

245:                                              ; preds = %242
  %246 = load i8, ptr %244, align 1, !tbaa !33
  %247 = icmp eq i8 %246, 31
  br i1 %247, label %248, label %262

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, ptr %244, i64 1
  %250 = load i8, ptr %249, align 1, !tbaa !33
  %251 = icmp eq i8 %250, -117
  br i1 %251, label %252, label %262

252:                                              ; preds = %248
  %253 = getelementptr inbounds i8, ptr %244, i64 2
  %254 = load i8, ptr %253, align 1, !tbaa !33
  %255 = icmp eq i8 %254, 8
  br i1 %255, label %256, label %262

256:                                              ; preds = %252
  %257 = getelementptr inbounds i8, ptr %244, i64 3
  %258 = load i8, ptr %257, align 1, !tbaa !33
  %259 = icmp ult i8 %258, 32
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = tail call i32 @inflateReset(ptr noundef nonnull %16) #14
  store i32 2, ptr %9, align 8, !tbaa !23
  store i32 1, ptr %47, align 4, !tbaa !30
  store i32 0, ptr %43, align 8, !tbaa !29
  br label %268

262:                                              ; preds = %256, %252, %248, %245, %242
  %263 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 7
  %264 = load ptr, ptr %263, align 8, !tbaa !27
  %265 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 1
  store ptr %264, ptr %265, align 8, !tbaa !19
  %266 = zext i32 %234 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %264, ptr align 1 %244, i64 %266, i1 false)
  %267 = load i32, ptr %63, align 8, !tbaa !31
  store i32 %267, ptr %1, align 8, !tbaa !17
  store i32 0, ptr %63, align 8, !tbaa !31
  store i32 1, ptr %9, align 8, !tbaa !23
  br label %268

268:                                              ; preds = %262, %260, %236, %233, %221, %56, %50, %39, %33, %12, %8
  %269 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 19
  %270 = load i32, ptr %269, align 8, !tbaa !14
  switch i32 %270, label %271 [
    i32 0, label %275
    i32 -5, label %275
  ]

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 11
  %273 = load i32, ptr %272, align 4, !tbaa !15
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %803, label %275

275:                                              ; preds = %268, %268, %271
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #14
  %276 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 18
  %277 = load i64, ptr %276, align 8, !tbaa !16
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %735, label %279

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 1
  %281 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 2
  %282 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 13
  %283 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 21, i32 1
  %284 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 4
  %285 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 21, i32 4
  %286 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 7
  %287 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 21, i32 3
  %288 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 21
  %289 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 6
  %290 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 11
  %291 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 2
  %292 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 9
  %293 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 21, i32 6
  %294 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 5
  %295 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 21, i32 8
  %296 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 8
  br label %297

297:                                              ; preds = %730, %279
  %298 = phi i64 [ %731, %730 ], [ %277, %279 ]
  %299 = load i32, ptr %1, align 8, !tbaa !17
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %324, label %301

301:                                              ; preds = %297
  %302 = zext i32 %299 to i64
  %303 = icmp slt i64 %298, %302
  %304 = trunc i64 %298 to i32
  %305 = select i1 %303, i32 %304, i32 %299
  %306 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %299, i32 %305), !nosanitize !18
  %307 = extractvalue { i32, i1 } %306, 1, !nosanitize !18
  br i1 %307, label %308, label %309, !nosanitize !18

308:                                              ; preds = %318, %301
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

309:                                              ; preds = %301
  %310 = extractvalue { i32, i1 } %306, 0, !nosanitize !18
  store i32 %310, ptr %1, align 8, !tbaa !17
  %311 = load ptr, ptr %280, align 8, !tbaa !19
  %312 = zext i32 %305 to i64
  %313 = getelementptr inbounds i8, ptr %311, i64 %312
  store ptr %313, ptr %280, align 8, !tbaa !19
  %314 = load i64, ptr %281, align 8, !tbaa !20
  %315 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %314, i64 %312), !nosanitize !18
  %316 = extractvalue { i64, i1 } %315, 1, !nosanitize !18
  br i1 %316, label %317, label %318, !nosanitize !18

317:                                              ; preds = %309
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

318:                                              ; preds = %309
  %319 = extractvalue { i64, i1 } %315, 0, !nosanitize !18
  store i64 %319, ptr %281, align 8, !tbaa !20
  %320 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %298, i64 %312), !nosanitize !18
  %321 = extractvalue { i64, i1 } %320, 1, !nosanitize !18
  br i1 %321, label %308, label %322, !nosanitize !18

322:                                              ; preds = %318
  %323 = extractvalue { i64, i1 } %320, 0, !nosanitize !18
  store i64 %323, ptr %276, align 8, !tbaa !16
  br label %730

324:                                              ; preds = %297
  %325 = load i32, ptr %282, align 8, !tbaa !21
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %324
  %328 = load i32, ptr %283, align 8, !tbaa !22
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %733, label %330

330:                                              ; preds = %327, %324
  br label %331

331:                                              ; preds = %727, %330
  %332 = load i32, ptr %9, align 8, !tbaa !23
  switch i32 %332, label %712 [
    i32 0, label %333
    i32 1, label %569
    i32 2, label %613
  ]

333:                                              ; preds = %331
  %334 = load i32, ptr %284, align 8, !tbaa !24
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %353

336:                                              ; preds = %333
  %337 = load i32, ptr %294, align 4, !tbaa !25
  %338 = zext i32 %337 to i64
  %339 = tail call noalias ptr @malloc(i64 noundef %338) #16
  store ptr %339, ptr %289, align 8, !tbaa !26
  %340 = shl i32 %337, 1
  %341 = zext i32 %340 to i64
  %342 = tail call noalias ptr @malloc(i64 noundef %341) #16
  store ptr %342, ptr %286, align 8, !tbaa !27
  %343 = icmp eq ptr %339, null
  %344 = icmp eq ptr %342, null
  %345 = or i1 %343, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %336
  tail call void @free(ptr noundef %342) #14
  tail call void @free(ptr noundef %339) #14
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %803

347:                                              ; preds = %336
  store i32 %337, ptr %284, align 8, !tbaa !24
  store i32 0, ptr %283, align 8, !tbaa !22
  store ptr null, ptr %288, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %295, i8 0, i64 24, i1 false)
  %348 = tail call i32 @inflateInit2_(ptr noundef nonnull %288, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %353, label %350

350:                                              ; preds = %347
  %351 = load ptr, ptr %286, align 8, !tbaa !27
  tail call void @free(ptr noundef %351) #14
  %352 = load ptr, ptr %289, align 8, !tbaa !26
  tail call void @free(ptr noundef %352) #14
  store i32 0, ptr %284, align 8, !tbaa !24
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %803

353:                                              ; preds = %347, %333
  %354 = load i32, ptr %296, align 8, !tbaa !29
  %355 = icmp eq i32 %354, -1
  br i1 %355, label %359, label %356

356:                                              ; preds = %353
  %357 = load i32, ptr %292, align 4, !tbaa !30
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %364

359:                                              ; preds = %356, %353
  %360 = tail call i32 @inflateReset(ptr noundef nonnull %288) #14
  store i32 2, ptr %9, align 8, !tbaa !23
  %361 = load i32, ptr %292, align 4, !tbaa !30
  %362 = icmp ne i32 %361, -1
  %363 = zext i1 %362 to i32
  store i32 %363, ptr %292, align 4, !tbaa !30
  store i32 0, ptr %296, align 8, !tbaa !29
  br label %566

364:                                              ; preds = %356
  %365 = load i32, ptr %269, align 8, !tbaa !14
  switch i32 %365, label %803 [
    i32 0, label %366
    i32 -5, label %366
  ]

366:                                              ; preds = %364, %364
  %367 = load i32, ptr %282, align 8, !tbaa !21
  %368 = icmp eq i32 %367, 0
  %369 = load i32, ptr %283, align 8, !tbaa !31
  br i1 %368, label %370, label %534

370:                                              ; preds = %366
  %371 = icmp eq i32 %369, 0
  br i1 %371, label %479, label %372

372:                                              ; preds = %370
  %373 = load ptr, ptr %289, align 8, !tbaa !26
  %374 = load ptr, ptr %288, align 8, !tbaa !32
  %375 = icmp eq ptr %374, %373
  br i1 %375, label %479, label %376

376:                                              ; preds = %372
  %377 = ptrtoint ptr %374 to i64
  %378 = ptrtoint ptr %373 to i64
  %379 = zext i32 %369 to i64
  %380 = icmp ult i32 %369, 8
  %381 = sub i64 %378, %377
  %382 = icmp ult i64 %381, 32
  %383 = or i1 %380, %382
  br i1 %383, label %423, label %384

384:                                              ; preds = %376
  %385 = icmp ult i32 %369, 32
  br i1 %385, label %407, label %386

386:                                              ; preds = %384
  %387 = and i64 %379, 4294967264
  br label %388

388:                                              ; preds = %388, %386
  %389 = phi i64 [ 0, %386 ], [ %396, %388 ]
  %390 = getelementptr i8, ptr %373, i64 %389
  %391 = getelementptr i8, ptr %374, i64 %389
  %392 = getelementptr i8, ptr %391, i64 16
  %393 = load <16 x i8>, ptr %391, align 1, !tbaa !33
  %394 = load <16 x i8>, ptr %392, align 1, !tbaa !33
  %395 = getelementptr i8, ptr %390, i64 16
  store <16 x i8> %393, ptr %390, align 1, !tbaa !33
  store <16 x i8> %394, ptr %395, align 1, !tbaa !33
  %396 = add nuw i64 %389, 32
  %397 = icmp eq i64 %396, %387
  br i1 %397, label %398, label %388, !llvm.loop !87

398:                                              ; preds = %388
  %399 = icmp eq i64 %387, %379
  br i1 %399, label %477, label %400

400:                                              ; preds = %398
  %401 = trunc i64 %387 to i32
  %402 = sub i32 %369, %401
  %403 = getelementptr i8, ptr %374, i64 %387
  %404 = getelementptr i8, ptr %373, i64 %387
  %405 = and i64 %379, 24
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %423, label %407

407:                                              ; preds = %384, %400
  %408 = phi i64 [ %387, %400 ], [ 0, %384 ]
  %409 = and i64 %379, 4294967288
  %410 = getelementptr i8, ptr %373, i64 %409
  %411 = getelementptr i8, ptr %374, i64 %409
  %412 = trunc i64 %409 to i32
  %413 = sub i32 %369, %412
  br label %414

414:                                              ; preds = %414, %407
  %415 = phi i64 [ %408, %407 ], [ %419, %414 ]
  %416 = getelementptr i8, ptr %373, i64 %415
  %417 = getelementptr i8, ptr %374, i64 %415
  %418 = load <8 x i8>, ptr %417, align 1, !tbaa !33
  store <8 x i8> %418, ptr %416, align 1, !tbaa !33
  %419 = add nuw i64 %415, 8
  %420 = icmp eq i64 %419, %409
  br i1 %420, label %421, label %414, !llvm.loop !88

421:                                              ; preds = %414
  %422 = icmp eq i64 %409, %379
  br i1 %422, label %477, label %423

423:                                              ; preds = %376, %400, %421
  %424 = phi ptr [ %373, %376 ], [ %404, %400 ], [ %410, %421 ]
  %425 = phi ptr [ %374, %376 ], [ %403, %400 ], [ %411, %421 ]
  %426 = phi i32 [ %369, %376 ], [ %402, %400 ], [ %413, %421 ]
  %427 = add i32 %426, -1
  %428 = and i32 %426, 7
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %441, label %430

430:                                              ; preds = %423, %430
  %431 = phi ptr [ %437, %430 ], [ %424, %423 ]
  %432 = phi ptr [ %438, %430 ], [ %425, %423 ]
  %433 = phi i32 [ %436, %430 ], [ %426, %423 ]
  %434 = phi i32 [ %439, %430 ], [ 0, %423 ]
  %435 = load i8, ptr %432, align 1, !tbaa !33
  store i8 %435, ptr %431, align 1, !tbaa !33
  %436 = add i32 %433, -1
  %437 = getelementptr inbounds i8, ptr %431, i64 1
  %438 = getelementptr inbounds i8, ptr %432, i64 1
  %439 = add i32 %434, 1
  %440 = icmp eq i32 %439, %428
  br i1 %440, label %441, label %430, !llvm.loop !89

441:                                              ; preds = %430, %423
  %442 = phi ptr [ %424, %423 ], [ %437, %430 ]
  %443 = phi ptr [ %425, %423 ], [ %438, %430 ]
  %444 = phi i32 [ %426, %423 ], [ %436, %430 ]
  %445 = icmp ult i32 %427, 7
  br i1 %445, label %477, label %446

446:                                              ; preds = %441, %446
  %447 = phi ptr [ %473, %446 ], [ %442, %441 ]
  %448 = phi ptr [ %474, %446 ], [ %443, %441 ]
  %449 = phi i32 [ %472, %446 ], [ %444, %441 ]
  %450 = load i8, ptr %448, align 1, !tbaa !33
  store i8 %450, ptr %447, align 1, !tbaa !33
  %451 = getelementptr inbounds i8, ptr %447, i64 1
  %452 = getelementptr inbounds i8, ptr %448, i64 1
  %453 = load i8, ptr %452, align 1, !tbaa !33
  store i8 %453, ptr %451, align 1, !tbaa !33
  %454 = getelementptr inbounds i8, ptr %447, i64 2
  %455 = getelementptr inbounds i8, ptr %448, i64 2
  %456 = load i8, ptr %455, align 1, !tbaa !33
  store i8 %456, ptr %454, align 1, !tbaa !33
  %457 = getelementptr inbounds i8, ptr %447, i64 3
  %458 = getelementptr inbounds i8, ptr %448, i64 3
  %459 = load i8, ptr %458, align 1, !tbaa !33
  store i8 %459, ptr %457, align 1, !tbaa !33
  %460 = getelementptr inbounds i8, ptr %447, i64 4
  %461 = getelementptr inbounds i8, ptr %448, i64 4
  %462 = load i8, ptr %461, align 1, !tbaa !33
  store i8 %462, ptr %460, align 1, !tbaa !33
  %463 = getelementptr inbounds i8, ptr %447, i64 5
  %464 = getelementptr inbounds i8, ptr %448, i64 5
  %465 = load i8, ptr %464, align 1, !tbaa !33
  store i8 %465, ptr %463, align 1, !tbaa !33
  %466 = getelementptr inbounds i8, ptr %447, i64 6
  %467 = getelementptr inbounds i8, ptr %448, i64 6
  %468 = load i8, ptr %467, align 1, !tbaa !33
  store i8 %468, ptr %466, align 1, !tbaa !33
  %469 = getelementptr inbounds i8, ptr %447, i64 7
  %470 = getelementptr inbounds i8, ptr %448, i64 7
  %471 = load i8, ptr %470, align 1, !tbaa !33
  store i8 %471, ptr %469, align 1, !tbaa !33
  %472 = add i32 %449, -8
  %473 = getelementptr inbounds i8, ptr %447, i64 8
  %474 = getelementptr inbounds i8, ptr %448, i64 8
  %475 = icmp eq i32 %472, 0
  br i1 %475, label %477, label %446, !llvm.loop !90

476:                                              ; preds = %479
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

477:                                              ; preds = %441, %446, %421, %398
  %478 = load i32, ptr %283, align 8, !tbaa !31
  br label %479

479:                                              ; preds = %477, %372, %370
  %480 = phi i32 [ %478, %477 ], [ %369, %372 ], [ 0, %370 ]
  %481 = load i32, ptr %284, align 8, !tbaa !24
  %482 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %481, i32 %480), !nosanitize !18
  %483 = extractvalue { i32, i1 } %482, 1, !nosanitize !18
  br i1 %483, label %476, label %484, !nosanitize !18

484:                                              ; preds = %479
  %485 = extractvalue { i32, i1 } %482, 0, !nosanitize !18
  %486 = load ptr, ptr %289, align 8, !tbaa !26
  %487 = zext i32 %480 to i64
  %488 = getelementptr inbounds i8, ptr %486, i64 %487
  store i32 0, ptr %290, align 4, !tbaa !15
  %489 = tail call ptr @__errno_location() #17
  store i32 0, ptr %489, align 4, !tbaa !42
  br label %490

490:                                              ; preds = %509, %484
  %491 = phi i32 [ 0, %484 ], [ %510, %509 ]
  %492 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %485, i32 %491), !nosanitize !18
  %493 = extractvalue { i32, i1 } %492, 1, !nosanitize !18
  br i1 %493, label %494, label %495, !nosanitize !18

494:                                              ; preds = %490
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

495:                                              ; preds = %490
  %496 = extractvalue { i32, i1 } %492, 0, !nosanitize !18
  %497 = tail call i32 @llvm.umin.i32(i32 %496, i32 1073741824)
  %498 = load i32, ptr %291, align 4, !tbaa !43
  %499 = zext i32 %491 to i64
  %500 = getelementptr inbounds i8, ptr %488, i64 %499
  %501 = zext nneg i32 %497 to i64
  %502 = tail call i64 @read(i32 noundef %498, ptr noundef %500, i64 noundef %501) #14
  %503 = trunc i64 %502 to i32
  %504 = icmp slt i32 %503, 1
  br i1 %504, label %512, label %505

505:                                              ; preds = %495
  %506 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %491, i32 %503), !nosanitize !18
  %507 = extractvalue { i32, i1 } %506, 1, !nosanitize !18
  br i1 %507, label %508, label %509, !nosanitize !18

508:                                              ; preds = %505
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

509:                                              ; preds = %505
  %510 = extractvalue { i32, i1 } %506, 0, !nosanitize !18
  %511 = icmp ult i32 %510, %485
  br i1 %511, label %490, label %525, !llvm.loop !44

512:                                              ; preds = %495
  %513 = icmp slt i32 %503, 0
  br i1 %513, label %514, label %521

514:                                              ; preds = %512
  %515 = load i32, ptr %489, align 4, !tbaa !42
  %516 = icmp eq i32 %515, 11
  br i1 %516, label %517, label %522

517:                                              ; preds = %514
  store i32 1, ptr %290, align 4, !tbaa !15
  %518 = icmp eq i32 %491, 0
  br i1 %518, label %519, label %525

519:                                              ; preds = %517
  %520 = load i32, ptr %489, align 4, !tbaa !42
  br label %522

521:                                              ; preds = %512
  store i32 1, ptr %282, align 8, !tbaa !21
  br label %525

522:                                              ; preds = %514, %519
  %523 = phi i32 [ %520, %519 ], [ %515, %514 ]
  %524 = tail call ptr @strerror(i32 noundef %523) #14
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %524) #14
  br label %803

525:                                              ; preds = %509, %521, %517
  %526 = phi i32 [ %491, %521 ], [ %491, %517 ], [ %510, %509 ]
  %527 = load i32, ptr %283, align 8, !tbaa !31
  %528 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %527, i32 %526), !nosanitize !18
  %529 = extractvalue { i32, i1 } %528, 1, !nosanitize !18
  br i1 %529, label %530, label %531, !nosanitize !18

530:                                              ; preds = %525
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

531:                                              ; preds = %525
  %532 = extractvalue { i32, i1 } %528, 0, !nosanitize !18
  store i32 %532, ptr %283, align 8, !tbaa !31
  %533 = load ptr, ptr %289, align 8, !tbaa !26
  store ptr %533, ptr %288, align 8, !tbaa !32
  br label %534

534:                                              ; preds = %531, %366
  %535 = phi i32 [ %532, %531 ], [ %369, %366 ]
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %566, label %537

537:                                              ; preds = %534
  %538 = load i32, ptr %290, align 4, !tbaa !15
  %539 = icmp ne i32 %538, 0
  %540 = icmp ult i32 %535, 4
  %541 = and i1 %540, %539
  br i1 %541, label %566, label %542

542:                                              ; preds = %537
  %543 = icmp ugt i32 %535, 3
  %544 = load ptr, ptr %288, align 8, !tbaa !32
  br i1 %543, label %545, label %562

545:                                              ; preds = %542
  %546 = load i8, ptr %544, align 1, !tbaa !33
  %547 = icmp eq i8 %546, 31
  br i1 %547, label %548, label %562

548:                                              ; preds = %545
  %549 = getelementptr inbounds i8, ptr %544, i64 1
  %550 = load i8, ptr %549, align 1, !tbaa !33
  %551 = icmp eq i8 %550, -117
  br i1 %551, label %552, label %562

552:                                              ; preds = %548
  %553 = getelementptr inbounds i8, ptr %544, i64 2
  %554 = load i8, ptr %553, align 1, !tbaa !33
  %555 = icmp eq i8 %554, 8
  br i1 %555, label %556, label %562

556:                                              ; preds = %552
  %557 = getelementptr inbounds i8, ptr %544, i64 3
  %558 = load i8, ptr %557, align 1, !tbaa !33
  %559 = icmp ult i8 %558, 32
  br i1 %559, label %560, label %562

560:                                              ; preds = %556
  %561 = tail call i32 @inflateReset(ptr noundef nonnull %288) #14
  store i32 2, ptr %9, align 8, !tbaa !23
  br label %713

562:                                              ; preds = %556, %552, %548, %545, %542
  %563 = load ptr, ptr %286, align 8, !tbaa !27
  store ptr %563, ptr %280, align 8, !tbaa !19
  %564 = zext i32 %535 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %563, ptr align 1 %544, i64 %564, i1 false)
  %565 = load i32, ptr %283, align 8, !tbaa !31
  store i32 %565, ptr %1, align 8, !tbaa !17
  store i32 0, ptr %283, align 8, !tbaa !31
  store i32 1, ptr %9, align 8, !tbaa !23
  br label %718

566:                                              ; preds = %537, %534, %359
  %567 = load i32, ptr %9, align 8, !tbaa !23
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %728, label %716

569:                                              ; preds = %331
  %570 = load ptr, ptr %286, align 8, !tbaa !27
  %571 = load i32, ptr %284, align 8, !tbaa !24
  %572 = shl i32 %571, 1
  store i32 0, ptr %290, align 4, !tbaa !15
  %573 = tail call ptr @__errno_location() #17
  store i32 0, ptr %573, align 4, !tbaa !42
  store i32 0, ptr %1, align 4, !tbaa !42
  br label %574

574:                                              ; preds = %594, %569
  %575 = phi i32 [ %595, %594 ], [ 0, %569 ]
  %576 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %572, i32 %575), !nosanitize !18
  %577 = extractvalue { i32, i1 } %576, 1, !nosanitize !18
  br i1 %577, label %578, label %579, !nosanitize !18

578:                                              ; preds = %574
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

579:                                              ; preds = %574
  %580 = extractvalue { i32, i1 } %576, 0, !nosanitize !18
  %581 = tail call i32 @llvm.umin.i32(i32 %580, i32 1073741824)
  %582 = load i32, ptr %291, align 4, !tbaa !43
  %583 = zext i32 %575 to i64
  %584 = getelementptr inbounds i8, ptr %570, i64 %583
  %585 = zext nneg i32 %581 to i64
  %586 = tail call i64 @read(i32 noundef %582, ptr noundef %584, i64 noundef %585) #14
  %587 = trunc i64 %586 to i32
  %588 = icmp slt i32 %587, 1
  br i1 %588, label %597, label %589

589:                                              ; preds = %579
  %590 = load i32, ptr %1, align 4, !tbaa !42
  %591 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %590, i32 %587), !nosanitize !18
  %592 = extractvalue { i32, i1 } %591, 1, !nosanitize !18
  br i1 %592, label %593, label %594, !nosanitize !18

593:                                              ; preds = %589
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

594:                                              ; preds = %589
  %595 = extractvalue { i32, i1 } %591, 0, !nosanitize !18
  store i32 %595, ptr %1, align 4, !tbaa !42
  %596 = icmp ult i32 %595, %572
  br i1 %596, label %574, label %611, !llvm.loop !44

597:                                              ; preds = %579
  %598 = icmp slt i32 %587, 0
  br i1 %598, label %599, label %607

599:                                              ; preds = %597
  %600 = load i32, ptr %573, align 4, !tbaa !42
  %601 = icmp eq i32 %600, 11
  br i1 %601, label %602, label %608

602:                                              ; preds = %599
  store i32 1, ptr %290, align 4, !tbaa !15
  %603 = load i32, ptr %1, align 4, !tbaa !42
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %611

605:                                              ; preds = %602
  %606 = load i32, ptr %573, align 4, !tbaa !42
  br label %608

607:                                              ; preds = %597
  store i32 1, ptr %282, align 8, !tbaa !21
  br label %611

608:                                              ; preds = %599, %605
  %609 = phi i32 [ %606, %605 ], [ %600, %599 ]
  %610 = tail call ptr @strerror(i32 noundef %609) #14
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %610) #14
  br label %803

611:                                              ; preds = %594, %607, %602
  %612 = load ptr, ptr %286, align 8, !tbaa !27
  store ptr %612, ptr %280, align 8, !tbaa !19
  br label %728

613:                                              ; preds = %331
  %614 = load i32, ptr %284, align 8, !tbaa !24
  %615 = shl i32 %614, 1
  store i32 %615, ptr %285, align 8, !tbaa !45
  %616 = load ptr, ptr %286, align 8, !tbaa !27
  store ptr %616, ptr %287, align 8, !tbaa !46
  br label %617

617:                                              ; preds = %696, %613
  %618 = phi i32 [ 0, %613 ], [ %681, %696 ]
  %619 = load i32, ptr %283, align 8, !tbaa !31
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %680

621:                                              ; preds = %617
  %622 = load i32, ptr %269, align 8, !tbaa !14
  switch i32 %622, label %700 [
    i32 0, label %623
    i32 -5, label %623
  ]

623:                                              ; preds = %621, %621
  %624 = load i32, ptr %282, align 8, !tbaa !21
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %626, label %676

626:                                              ; preds = %623
  %627 = load i32, ptr %284, align 8, !tbaa !24
  %628 = load ptr, ptr %289, align 8, !tbaa !26
  store i32 0, ptr %290, align 4, !tbaa !15
  %629 = tail call ptr @__errno_location() #17
  store i32 0, ptr %629, align 4, !tbaa !42
  br label %630

630:                                              ; preds = %649, %626
  %631 = phi i32 [ 0, %626 ], [ %650, %649 ]
  %632 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %627, i32 %631), !nosanitize !18
  %633 = extractvalue { i32, i1 } %632, 1, !nosanitize !18
  br i1 %633, label %634, label %635, !nosanitize !18

634:                                              ; preds = %630
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

635:                                              ; preds = %630
  %636 = extractvalue { i32, i1 } %632, 0, !nosanitize !18
  %637 = tail call i32 @llvm.umin.i32(i32 %636, i32 1073741824)
  %638 = load i32, ptr %291, align 4, !tbaa !43
  %639 = zext i32 %631 to i64
  %640 = getelementptr inbounds i8, ptr %628, i64 %639
  %641 = zext nneg i32 %637 to i64
  %642 = tail call i64 @read(i32 noundef %638, ptr noundef %640, i64 noundef %641) #14
  %643 = trunc i64 %642 to i32
  %644 = icmp slt i32 %643, 1
  br i1 %644, label %652, label %645

645:                                              ; preds = %635
  %646 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %631, i32 %643), !nosanitize !18
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !18
  br i1 %647, label %648, label %649, !nosanitize !18

648:                                              ; preds = %645
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

649:                                              ; preds = %645
  %650 = extractvalue { i32, i1 } %646, 0, !nosanitize !18
  %651 = icmp ult i32 %650, %627
  br i1 %651, label %630, label %666, !llvm.loop !44

652:                                              ; preds = %635
  %653 = icmp slt i32 %643, 0
  br i1 %653, label %654, label %661

654:                                              ; preds = %652
  %655 = load i32, ptr %629, align 4, !tbaa !42
  %656 = icmp eq i32 %655, 11
  br i1 %656, label %657, label %662

657:                                              ; preds = %654
  store i32 1, ptr %290, align 4, !tbaa !15
  %658 = icmp eq i32 %631, 0
  br i1 %658, label %659, label %666

659:                                              ; preds = %657
  %660 = load i32, ptr %629, align 4, !tbaa !42
  br label %662

661:                                              ; preds = %652
  store i32 1, ptr %282, align 8, !tbaa !21
  br label %666

662:                                              ; preds = %654, %659
  %663 = phi i32 [ %660, %659 ], [ %655, %654 ]
  %664 = tail call ptr @strerror(i32 noundef %663) #14
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %664) #14
  %665 = load i32, ptr %269, align 8, !tbaa !14
  br label %700

666:                                              ; preds = %649, %661, %657
  %667 = phi i32 [ %631, %661 ], [ %631, %657 ], [ %650, %649 ]
  %668 = load i32, ptr %283, align 8, !tbaa !31
  %669 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %668, i32 %667), !nosanitize !18
  %670 = extractvalue { i32, i1 } %669, 1, !nosanitize !18
  br i1 %670, label %671, label %672, !nosanitize !18

671:                                              ; preds = %666
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

672:                                              ; preds = %666
  %673 = extractvalue { i32, i1 } %669, 0, !nosanitize !18
  store i32 %673, ptr %283, align 8, !tbaa !31
  %674 = load ptr, ptr %289, align 8, !tbaa !26
  store ptr %674, ptr %288, align 8, !tbaa !32
  %675 = icmp eq i32 %673, 0
  br i1 %675, label %676, label %680

676:                                              ; preds = %672, %623
  %677 = load i32, ptr %290, align 4, !tbaa !15
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %700

679:                                              ; preds = %676
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %700

680:                                              ; preds = %672, %617
  %681 = tail call i32 @inflate(ptr noundef nonnull %288, i32 noundef 0) #14
  %682 = load i32, ptr %285, align 8, !tbaa !45
  %683 = icmp ult i32 %682, %615
  br i1 %683, label %684, label %685

684:                                              ; preds = %680
  store i32 0, ptr %292, align 4, !tbaa !30
  br label %685

685:                                              ; preds = %684, %680
  switch i32 %681, label %696 [
    i32 -2, label %686
    i32 2, label %686
    i32 -4, label %687
    i32 -3, label %688
  ]

686:                                              ; preds = %685, %685
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %700

687:                                              ; preds = %685
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %700

688:                                              ; preds = %685
  %689 = load i32, ptr %292, align 4, !tbaa !30
  %690 = icmp eq i32 %689, 1
  br i1 %690, label %691, label %692

691:                                              ; preds = %688
  store i32 0, ptr %283, align 8, !tbaa !31
  store i32 1, ptr %282, align 8, !tbaa !21
  store i32 0, ptr %9, align 8, !tbaa !23
  br label %700

692:                                              ; preds = %688
  %693 = load ptr, ptr %293, align 8, !tbaa !47
  %694 = icmp eq ptr %693, null
  %695 = select i1 %694, ptr @.str.6, ptr %693
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull %695) #14
  br label %700

696:                                              ; preds = %685
  %697 = icmp ne i32 %682, 0
  %698 = icmp ne i32 %681, 1
  %699 = select i1 %697, i1 %698, i1 false
  br i1 %699, label %617, label %700, !llvm.loop !48

700:                                              ; preds = %696, %621, %692, %691, %687, %686, %679, %676, %662
  %701 = phi i32 [ %618, %676 ], [ %618, %679 ], [ %681, %686 ], [ -4, %687 ], [ 0, %691 ], [ -3, %692 ], [ %665, %662 ], [ %622, %621 ], [ %681, %696 ]
  %702 = load i32, ptr %285, align 8, !tbaa !45
  %703 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %615, i32 %702), !nosanitize !18
  %704 = extractvalue { i32, i1 } %703, 1, !nosanitize !18
  br i1 %704, label %705, label %706, !nosanitize !18

705:                                              ; preds = %700
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

706:                                              ; preds = %700
  %707 = extractvalue { i32, i1 } %703, 0, !nosanitize !18
  store i32 %707, ptr %1, align 8, !tbaa !17
  %708 = load ptr, ptr %287, align 8, !tbaa !46
  %709 = zext i32 %707 to i64
  %710 = sub nsw i64 0, %709
  %711 = getelementptr inbounds i8, ptr %708, i64 %710
  store ptr %711, ptr %280, align 8, !tbaa !19
  switch i32 %701, label %803 [
    i32 1, label %713
    i32 0, label %716
  ]

712:                                              ; preds = %331
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %803

713:                                              ; preds = %706, %560
  %714 = phi i32 [ 1, %560 ], [ 0, %706 ]
  %715 = phi ptr [ %296, %560 ], [ %9, %706 ]
  store i32 %714, ptr %292, align 4, !tbaa !30
  store i32 0, ptr %715, align 8, !tbaa !42
  br label %716

716:                                              ; preds = %713, %706, %566
  %717 = load i32, ptr %1, align 8, !tbaa !17
  br label %718

718:                                              ; preds = %716, %562
  %719 = phi i32 [ %717, %716 ], [ %565, %562 ]
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %721, label %728

721:                                              ; preds = %718
  %722 = load i32, ptr %282, align 8, !tbaa !21
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %727, label %724

724:                                              ; preds = %721
  %725 = load i32, ptr %283, align 8, !tbaa !31
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %728, label %727

727:                                              ; preds = %724, %721
  br label %331, !llvm.loop !49

728:                                              ; preds = %724, %718, %566, %611
  %729 = load i64, ptr %276, align 8, !tbaa !16
  br label %730

730:                                              ; preds = %728, %322
  %731 = phi i64 [ %729, %728 ], [ %323, %322 ]
  %732 = icmp eq i64 %731, 0
  br i1 %732, label %733, label %297, !llvm.loop !50

733:                                              ; preds = %327, %730
  %734 = icmp slt i32 %0, 0
  br i1 %734, label %803, label %737

735:                                              ; preds = %275
  %736 = icmp slt i32 %0, 0
  br i1 %736, label %803, label %737

737:                                              ; preds = %733, %735
  %738 = load i32, ptr %1, align 8, !tbaa !17
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %740, label %759

740:                                              ; preds = %737
  store i32 1, ptr %1, align 8, !tbaa !17
  %741 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 7
  %742 = load ptr, ptr %741, align 8, !tbaa !27
  %743 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 4
  %744 = load i32, ptr %743, align 8, !tbaa !24
  %745 = shl i32 %744, 1
  %746 = zext i32 %745 to i64
  %747 = getelementptr inbounds i8, ptr %742, i64 %746
  %748 = getelementptr inbounds i8, ptr %747, i64 -1
  %749 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 1
  store ptr %748, ptr %749, align 8, !tbaa !19
  %750 = trunc i32 %0 to i8
  store i8 %750, ptr %748, align 1, !tbaa !33
  %751 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 2
  %752 = load i64, ptr %751, align 8, !tbaa !20
  %753 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %752, i64 -1)
  %754 = extractvalue { i64, i1 } %753, 1, !nosanitize !18
  br i1 %754, label %755, label %756, !nosanitize !18

755:                                              ; preds = %792, %740
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

756:                                              ; preds = %740
  %757 = extractvalue { i64, i1 } %753, 0, !nosanitize !18
  store i64 %757, ptr %751, align 8, !tbaa !20
  %758 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 14
  store i32 0, ptr %758, align 4, !tbaa !58
  br label %803

759:                                              ; preds = %737
  %760 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 4
  %761 = load i32, ptr %760, align 8, !tbaa !24
  %762 = shl i32 %761, 1
  %763 = icmp eq i32 %738, %762
  br i1 %763, label %764, label %765

764:                                              ; preds = %759
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.2) #14
  br label %803

765:                                              ; preds = %759
  %766 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 1
  %767 = load ptr, ptr %766, align 8, !tbaa !19
  %768 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 7
  %769 = load ptr, ptr %768, align 8, !tbaa !27
  %770 = icmp eq ptr %767, %769
  br i1 %770, label %771, label %786

771:                                              ; preds = %765
  %772 = zext i32 %762 to i64
  %773 = getelementptr inbounds i8, ptr %767, i64 %772
  %774 = zext i32 %738 to i64
  %775 = getelementptr inbounds i8, ptr %767, i64 %774
  br label %776

776:                                              ; preds = %771, %776
  %777 = phi ptr [ %781, %776 ], [ %773, %771 ]
  %778 = phi ptr [ %779, %776 ], [ %775, %771 ]
  %779 = getelementptr inbounds i8, ptr %778, i64 -1
  %780 = load i8, ptr %779, align 1, !tbaa !33
  %781 = getelementptr inbounds i8, ptr %777, i64 -1
  store i8 %780, ptr %781, align 1, !tbaa !33
  %782 = load ptr, ptr %768, align 8, !tbaa !27
  %783 = icmp ugt ptr %779, %782
  br i1 %783, label %776, label %784, !llvm.loop !91

784:                                              ; preds = %776
  %785 = load i32, ptr %1, align 8, !tbaa !17
  store ptr %781, ptr %766, align 8, !tbaa !19
  br label %786

786:                                              ; preds = %784, %765
  %787 = phi ptr [ %781, %784 ], [ %767, %765 ]
  %788 = phi i32 [ %785, %784 ], [ %738, %765 ]
  %789 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %788, i32 1), !nosanitize !18
  %790 = extractvalue { i32, i1 } %789, 1, !nosanitize !18
  br i1 %790, label %791, label %792, !nosanitize !18

791:                                              ; preds = %786
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

792:                                              ; preds = %786
  %793 = extractvalue { i32, i1 } %789, 0, !nosanitize !18
  store i32 %793, ptr %1, align 8, !tbaa !17
  %794 = getelementptr inbounds i8, ptr %787, i64 -1
  store ptr %794, ptr %766, align 8, !tbaa !19
  %795 = trunc i32 %0 to i8
  store i8 %795, ptr %794, align 1, !tbaa !33
  %796 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 2
  %797 = load i64, ptr %796, align 8, !tbaa !20
  %798 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %797, i64 -1)
  %799 = extractvalue { i64, i1 } %798, 1, !nosanitize !18
  br i1 %799, label %755, label %800, !nosanitize !18

800:                                              ; preds = %792
  %801 = extractvalue { i64, i1 } %798, 0, !nosanitize !18
  store i64 %801, ptr %796, align 8, !tbaa !20
  %802 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 14
  store i32 0, ptr %802, align 4, !tbaa !58
  br label %803

803:                                              ; preds = %364, %706, %522, %350, %346, %608, %712, %735, %733, %271, %4, %2, %800, %764, %756
  %804 = phi i32 [ %0, %756 ], [ -1, %764 ], [ %0, %800 ], [ -1, %2 ], [ -1, %4 ], [ -1, %271 ], [ -1, %733 ], [ -1, %735 ], [ -1, %712 ], [ -1, %608 ], [ -1, %346 ], [ -1, %350 ], [ -1, %522 ], [ -1, %706 ], [ -1, %364 ]
  ret i32 %804
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gzgets(ptr noundef %0, ptr noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp slt i32 %2, 1
  %8 = or i1 %6, %7
  br i1 %8, label %954, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !5
  %12 = icmp eq i32 %11, 7247
  br i1 %12, label %13, label %954

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %15 = load i32, ptr %14, align 8, !tbaa !14
  switch i32 %15, label %16 [
    i32 0, label %20
    i32 -5, label %20
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %18 = load i32, ptr %17, align 4, !tbaa !15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %954, label %20

20:                                               ; preds = %13, %13, %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %21 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %22 = load i64, ptr %21, align 8, !tbaa !16
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %480, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %26 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %27 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  %28 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %29 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 10
  %30 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %31 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %32 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %33 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %34 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %35 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %36 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %37 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %38 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %39 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 6
  %40 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %41 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %42 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  br label %43

43:                                               ; preds = %476, %24
  %44 = phi i64 [ %477, %476 ], [ %22, %24 ]
  %45 = load i32, ptr %0, align 8, !tbaa !17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %70, label %47

47:                                               ; preds = %43
  %48 = zext i32 %45 to i64
  %49 = icmp slt i64 %44, %48
  %50 = trunc i64 %44 to i32
  %51 = select i1 %49, i32 %50, i32 %45
  %52 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %45, i32 %51), !nosanitize !18
  %53 = extractvalue { i32, i1 } %52, 1, !nosanitize !18
  br i1 %53, label %54, label %55, !nosanitize !18

54:                                               ; preds = %64, %47
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

55:                                               ; preds = %47
  %56 = extractvalue { i32, i1 } %52, 0, !nosanitize !18
  store i32 %56, ptr %0, align 8, !tbaa !17
  %57 = load ptr, ptr %25, align 8, !tbaa !19
  %58 = zext i32 %51 to i64
  %59 = getelementptr inbounds i8, ptr %57, i64 %58
  store ptr %59, ptr %25, align 8, !tbaa !19
  %60 = load i64, ptr %26, align 8, !tbaa !20
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %60, i64 %58), !nosanitize !18
  %62 = extractvalue { i64, i1 } %61, 1, !nosanitize !18
  br i1 %62, label %63, label %64, !nosanitize !18

63:                                               ; preds = %55
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

64:                                               ; preds = %55
  %65 = extractvalue { i64, i1 } %61, 0, !nosanitize !18
  store i64 %65, ptr %26, align 8, !tbaa !20
  %66 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %44, i64 %58), !nosanitize !18
  %67 = extractvalue { i64, i1 } %66, 1, !nosanitize !18
  br i1 %67, label %54, label %68, !nosanitize !18

68:                                               ; preds = %64
  %69 = extractvalue { i64, i1 } %66, 0, !nosanitize !18
  store i64 %69, ptr %21, align 8, !tbaa !16
  br label %476

70:                                               ; preds = %43
  %71 = load i32, ptr %27, align 8, !tbaa !21
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %28, align 8, !tbaa !22
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %480, label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %473, %76
  %78 = load i32, ptr %29, align 8, !tbaa !23
  switch i32 %78, label %458 [
    i32 0, label %79
    i32 1, label %315
    i32 2, label %359
  ]

79:                                               ; preds = %77
  %80 = load i32, ptr %30, align 8, !tbaa !24
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load i32, ptr %40, align 4, !tbaa !25
  %84 = zext i32 %83 to i64
  %85 = tail call noalias ptr @malloc(i64 noundef %84) #16
  store ptr %85, ptr %35, align 8, !tbaa !26
  %86 = shl i32 %83, 1
  %87 = zext i32 %86 to i64
  %88 = tail call noalias ptr @malloc(i64 noundef %87) #16
  store ptr %88, ptr %32, align 8, !tbaa !27
  %89 = icmp eq ptr %85, null
  %90 = icmp eq ptr %88, null
  %91 = or i1 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  tail call void @free(ptr noundef %88) #14
  tail call void @free(ptr noundef %85) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %954

93:                                               ; preds = %82
  store i32 %83, ptr %30, align 8, !tbaa !24
  store i32 0, ptr %28, align 8, !tbaa !22
  store ptr null, ptr %34, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %94 = tail call i32 @inflateInit2_(ptr noundef nonnull %34, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %32, align 8, !tbaa !27
  tail call void @free(ptr noundef %97) #14
  %98 = load ptr, ptr %35, align 8, !tbaa !26
  tail call void @free(ptr noundef %98) #14
  store i32 0, ptr %30, align 8, !tbaa !24
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %954

99:                                               ; preds = %93, %79
  %100 = load i32, ptr %42, align 8, !tbaa !29
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, ptr %38, align 4, !tbaa !30
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102, %99
  %106 = tail call i32 @inflateReset(ptr noundef nonnull %34) #14
  store i32 2, ptr %29, align 8, !tbaa !23
  %107 = load i32, ptr %38, align 4, !tbaa !30
  %108 = icmp ne i32 %107, -1
  %109 = zext i1 %108 to i32
  store i32 %109, ptr %38, align 4, !tbaa !30
  store i32 0, ptr %42, align 8, !tbaa !29
  br label %312

110:                                              ; preds = %102
  %111 = load i32, ptr %14, align 8, !tbaa !14
  switch i32 %111, label %954 [
    i32 0, label %112
    i32 -5, label %112
  ]

112:                                              ; preds = %110, %110
  %113 = load i32, ptr %27, align 8, !tbaa !21
  %114 = icmp eq i32 %113, 0
  %115 = load i32, ptr %28, align 8, !tbaa !31
  br i1 %114, label %116, label %280

116:                                              ; preds = %112
  %117 = icmp eq i32 %115, 0
  br i1 %117, label %225, label %118

118:                                              ; preds = %116
  %119 = load ptr, ptr %35, align 8, !tbaa !26
  %120 = load ptr, ptr %34, align 8, !tbaa !32
  %121 = icmp eq ptr %120, %119
  br i1 %121, label %225, label %122

122:                                              ; preds = %118
  %123 = ptrtoint ptr %120 to i64
  %124 = ptrtoint ptr %119 to i64
  %125 = zext i32 %115 to i64
  %126 = icmp ult i32 %115, 8
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
  %139 = load <16 x i8>, ptr %137, align 1, !tbaa !33
  %140 = load <16 x i8>, ptr %138, align 1, !tbaa !33
  %141 = getelementptr i8, ptr %136, i64 16
  store <16 x i8> %139, ptr %136, align 1, !tbaa !33
  store <16 x i8> %140, ptr %141, align 1, !tbaa !33
  %142 = add nuw i64 %135, 32
  %143 = icmp eq i64 %142, %133
  br i1 %143, label %144, label %134, !llvm.loop !92

144:                                              ; preds = %134
  %145 = icmp eq i64 %133, %125
  br i1 %145, label %223, label %146

146:                                              ; preds = %144
  %147 = trunc i64 %133 to i32
  %148 = sub i32 %115, %147
  %149 = getelementptr i8, ptr %120, i64 %133
  %150 = getelementptr i8, ptr %119, i64 %133
  %151 = and i64 %125, 24
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %169, label %153

153:                                              ; preds = %130, %146
  %154 = phi i64 [ %133, %146 ], [ 0, %130 ]
  %155 = and i64 %125, 4294967288
  %156 = getelementptr i8, ptr %119, i64 %155
  %157 = getelementptr i8, ptr %120, i64 %155
  %158 = trunc i64 %155 to i32
  %159 = sub i32 %115, %158
  br label %160

160:                                              ; preds = %160, %153
  %161 = phi i64 [ %154, %153 ], [ %165, %160 ]
  %162 = getelementptr i8, ptr %119, i64 %161
  %163 = getelementptr i8, ptr %120, i64 %161
  %164 = load <8 x i8>, ptr %163, align 1, !tbaa !33
  store <8 x i8> %164, ptr %162, align 1, !tbaa !33
  %165 = add nuw i64 %161, 8
  %166 = icmp eq i64 %165, %155
  br i1 %166, label %167, label %160, !llvm.loop !93

167:                                              ; preds = %160
  %168 = icmp eq i64 %155, %125
  br i1 %168, label %223, label %169

169:                                              ; preds = %122, %146, %167
  %170 = phi ptr [ %119, %122 ], [ %150, %146 ], [ %156, %167 ]
  %171 = phi ptr [ %120, %122 ], [ %149, %146 ], [ %157, %167 ]
  %172 = phi i32 [ %115, %122 ], [ %148, %146 ], [ %159, %167 ]
  %173 = add i32 %172, -1
  %174 = and i32 %172, 7
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %187, label %176

176:                                              ; preds = %169, %176
  %177 = phi ptr [ %183, %176 ], [ %170, %169 ]
  %178 = phi ptr [ %184, %176 ], [ %171, %169 ]
  %179 = phi i32 [ %182, %176 ], [ %172, %169 ]
  %180 = phi i32 [ %185, %176 ], [ 0, %169 ]
  %181 = load i8, ptr %178, align 1, !tbaa !33
  store i8 %181, ptr %177, align 1, !tbaa !33
  %182 = add i32 %179, -1
  %183 = getelementptr inbounds i8, ptr %177, i64 1
  %184 = getelementptr inbounds i8, ptr %178, i64 1
  %185 = add i32 %180, 1
  %186 = icmp eq i32 %185, %174
  br i1 %186, label %187, label %176, !llvm.loop !94

187:                                              ; preds = %176, %169
  %188 = phi ptr [ %170, %169 ], [ %183, %176 ]
  %189 = phi ptr [ %171, %169 ], [ %184, %176 ]
  %190 = phi i32 [ %172, %169 ], [ %182, %176 ]
  %191 = icmp ult i32 %173, 7
  br i1 %191, label %223, label %192

192:                                              ; preds = %187, %192
  %193 = phi ptr [ %219, %192 ], [ %188, %187 ]
  %194 = phi ptr [ %220, %192 ], [ %189, %187 ]
  %195 = phi i32 [ %218, %192 ], [ %190, %187 ]
  %196 = load i8, ptr %194, align 1, !tbaa !33
  store i8 %196, ptr %193, align 1, !tbaa !33
  %197 = getelementptr inbounds i8, ptr %193, i64 1
  %198 = getelementptr inbounds i8, ptr %194, i64 1
  %199 = load i8, ptr %198, align 1, !tbaa !33
  store i8 %199, ptr %197, align 1, !tbaa !33
  %200 = getelementptr inbounds i8, ptr %193, i64 2
  %201 = getelementptr inbounds i8, ptr %194, i64 2
  %202 = load i8, ptr %201, align 1, !tbaa !33
  store i8 %202, ptr %200, align 1, !tbaa !33
  %203 = getelementptr inbounds i8, ptr %193, i64 3
  %204 = getelementptr inbounds i8, ptr %194, i64 3
  %205 = load i8, ptr %204, align 1, !tbaa !33
  store i8 %205, ptr %203, align 1, !tbaa !33
  %206 = getelementptr inbounds i8, ptr %193, i64 4
  %207 = getelementptr inbounds i8, ptr %194, i64 4
  %208 = load i8, ptr %207, align 1, !tbaa !33
  store i8 %208, ptr %206, align 1, !tbaa !33
  %209 = getelementptr inbounds i8, ptr %193, i64 5
  %210 = getelementptr inbounds i8, ptr %194, i64 5
  %211 = load i8, ptr %210, align 1, !tbaa !33
  store i8 %211, ptr %209, align 1, !tbaa !33
  %212 = getelementptr inbounds i8, ptr %193, i64 6
  %213 = getelementptr inbounds i8, ptr %194, i64 6
  %214 = load i8, ptr %213, align 1, !tbaa !33
  store i8 %214, ptr %212, align 1, !tbaa !33
  %215 = getelementptr inbounds i8, ptr %193, i64 7
  %216 = getelementptr inbounds i8, ptr %194, i64 7
  %217 = load i8, ptr %216, align 1, !tbaa !33
  store i8 %217, ptr %215, align 1, !tbaa !33
  %218 = add i32 %195, -8
  %219 = getelementptr inbounds i8, ptr %193, i64 8
  %220 = getelementptr inbounds i8, ptr %194, i64 8
  %221 = icmp eq i32 %218, 0
  br i1 %221, label %223, label %192, !llvm.loop !95

222:                                              ; preds = %225
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

223:                                              ; preds = %187, %192, %167, %144
  %224 = load i32, ptr %28, align 8, !tbaa !31
  br label %225

225:                                              ; preds = %223, %118, %116
  %226 = phi i32 [ %224, %223 ], [ %115, %118 ], [ 0, %116 ]
  %227 = load i32, ptr %30, align 8, !tbaa !24
  %228 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %227, i32 %226), !nosanitize !18
  %229 = extractvalue { i32, i1 } %228, 1, !nosanitize !18
  br i1 %229, label %222, label %230, !nosanitize !18

230:                                              ; preds = %225
  %231 = extractvalue { i32, i1 } %228, 0, !nosanitize !18
  %232 = load ptr, ptr %35, align 8, !tbaa !26
  %233 = zext i32 %226 to i64
  %234 = getelementptr inbounds i8, ptr %232, i64 %233
  store i32 0, ptr %36, align 4, !tbaa !15
  %235 = tail call ptr @__errno_location() #17
  store i32 0, ptr %235, align 4, !tbaa !42
  br label %236

236:                                              ; preds = %255, %230
  %237 = phi i32 [ 0, %230 ], [ %256, %255 ]
  %238 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %231, i32 %237), !nosanitize !18
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !18
  br i1 %239, label %240, label %241, !nosanitize !18

240:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

241:                                              ; preds = %236
  %242 = extractvalue { i32, i1 } %238, 0, !nosanitize !18
  %243 = tail call i32 @llvm.umin.i32(i32 %242, i32 1073741824)
  %244 = load i32, ptr %37, align 4, !tbaa !43
  %245 = zext i32 %237 to i64
  %246 = getelementptr inbounds i8, ptr %234, i64 %245
  %247 = zext nneg i32 %243 to i64
  %248 = tail call i64 @read(i32 noundef %244, ptr noundef %246, i64 noundef %247) #14
  %249 = trunc i64 %248 to i32
  %250 = icmp slt i32 %249, 1
  br i1 %250, label %258, label %251

251:                                              ; preds = %241
  %252 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 %249), !nosanitize !18
  %253 = extractvalue { i32, i1 } %252, 1, !nosanitize !18
  br i1 %253, label %254, label %255, !nosanitize !18

254:                                              ; preds = %251
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

255:                                              ; preds = %251
  %256 = extractvalue { i32, i1 } %252, 0, !nosanitize !18
  %257 = icmp ult i32 %256, %231
  br i1 %257, label %236, label %271, !llvm.loop !44

258:                                              ; preds = %241
  %259 = icmp slt i32 %249, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %258
  %261 = load i32, ptr %235, align 4, !tbaa !42
  %262 = icmp eq i32 %261, 11
  br i1 %262, label %263, label %268

263:                                              ; preds = %260
  store i32 1, ptr %36, align 4, !tbaa !15
  %264 = icmp eq i32 %237, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %263
  %266 = load i32, ptr %235, align 4, !tbaa !42
  br label %268

267:                                              ; preds = %258
  store i32 1, ptr %27, align 8, !tbaa !21
  br label %271

268:                                              ; preds = %260, %265
  %269 = phi i32 [ %266, %265 ], [ %261, %260 ]
  %270 = tail call ptr @strerror(i32 noundef %269) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %270) #14
  br label %954

271:                                              ; preds = %255, %267, %263
  %272 = phi i32 [ %237, %267 ], [ %237, %263 ], [ %256, %255 ]
  %273 = load i32, ptr %28, align 8, !tbaa !31
  %274 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %273, i32 %272), !nosanitize !18
  %275 = extractvalue { i32, i1 } %274, 1, !nosanitize !18
  br i1 %275, label %276, label %277, !nosanitize !18

276:                                              ; preds = %271
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

277:                                              ; preds = %271
  %278 = extractvalue { i32, i1 } %274, 0, !nosanitize !18
  store i32 %278, ptr %28, align 8, !tbaa !31
  %279 = load ptr, ptr %35, align 8, !tbaa !26
  store ptr %279, ptr %34, align 8, !tbaa !32
  br label %280

280:                                              ; preds = %277, %112
  %281 = phi i32 [ %278, %277 ], [ %115, %112 ]
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %312, label %283

283:                                              ; preds = %280
  %284 = load i32, ptr %36, align 4, !tbaa !15
  %285 = icmp ne i32 %284, 0
  %286 = icmp ult i32 %281, 4
  %287 = and i1 %286, %285
  br i1 %287, label %312, label %288

288:                                              ; preds = %283
  %289 = icmp ugt i32 %281, 3
  %290 = load ptr, ptr %34, align 8, !tbaa !32
  br i1 %289, label %291, label %308

291:                                              ; preds = %288
  %292 = load i8, ptr %290, align 1, !tbaa !33
  %293 = icmp eq i8 %292, 31
  br i1 %293, label %294, label %308

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, ptr %290, i64 1
  %296 = load i8, ptr %295, align 1, !tbaa !33
  %297 = icmp eq i8 %296, -117
  br i1 %297, label %298, label %308

298:                                              ; preds = %294
  %299 = getelementptr inbounds i8, ptr %290, i64 2
  %300 = load i8, ptr %299, align 1, !tbaa !33
  %301 = icmp eq i8 %300, 8
  br i1 %301, label %302, label %308

302:                                              ; preds = %298
  %303 = getelementptr inbounds i8, ptr %290, i64 3
  %304 = load i8, ptr %303, align 1, !tbaa !33
  %305 = icmp ult i8 %304, 32
  br i1 %305, label %306, label %308

306:                                              ; preds = %302
  %307 = tail call i32 @inflateReset(ptr noundef nonnull %34) #14
  store i32 2, ptr %29, align 8, !tbaa !23
  br label %459

308:                                              ; preds = %302, %298, %294, %291, %288
  %309 = load ptr, ptr %32, align 8, !tbaa !27
  store ptr %309, ptr %25, align 8, !tbaa !19
  %310 = zext i32 %281 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %309, ptr align 1 %290, i64 %310, i1 false)
  %311 = load i32, ptr %28, align 8, !tbaa !31
  store i32 %311, ptr %0, align 8, !tbaa !17
  store i32 0, ptr %28, align 8, !tbaa !31
  store i32 1, ptr %29, align 8, !tbaa !23
  br label %464

312:                                              ; preds = %283, %280, %105
  %313 = load i32, ptr %29, align 8, !tbaa !23
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %474, label %462

315:                                              ; preds = %77
  %316 = load ptr, ptr %32, align 8, !tbaa !27
  %317 = load i32, ptr %30, align 8, !tbaa !24
  %318 = shl i32 %317, 1
  store i32 0, ptr %36, align 4, !tbaa !15
  %319 = tail call ptr @__errno_location() #17
  store i32 0, ptr %319, align 4, !tbaa !42
  store i32 0, ptr %0, align 4, !tbaa !42
  br label %320

320:                                              ; preds = %340, %315
  %321 = phi i32 [ %341, %340 ], [ 0, %315 ]
  %322 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %318, i32 %321), !nosanitize !18
  %323 = extractvalue { i32, i1 } %322, 1, !nosanitize !18
  br i1 %323, label %324, label %325, !nosanitize !18

324:                                              ; preds = %320
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

325:                                              ; preds = %320
  %326 = extractvalue { i32, i1 } %322, 0, !nosanitize !18
  %327 = tail call i32 @llvm.umin.i32(i32 %326, i32 1073741824)
  %328 = load i32, ptr %37, align 4, !tbaa !43
  %329 = zext i32 %321 to i64
  %330 = getelementptr inbounds i8, ptr %316, i64 %329
  %331 = zext nneg i32 %327 to i64
  %332 = tail call i64 @read(i32 noundef %328, ptr noundef %330, i64 noundef %331) #14
  %333 = trunc i64 %332 to i32
  %334 = icmp slt i32 %333, 1
  br i1 %334, label %343, label %335

335:                                              ; preds = %325
  %336 = load i32, ptr %0, align 4, !tbaa !42
  %337 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %336, i32 %333), !nosanitize !18
  %338 = extractvalue { i32, i1 } %337, 1, !nosanitize !18
  br i1 %338, label %339, label %340, !nosanitize !18

339:                                              ; preds = %335
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

340:                                              ; preds = %335
  %341 = extractvalue { i32, i1 } %337, 0, !nosanitize !18
  store i32 %341, ptr %0, align 4, !tbaa !42
  %342 = icmp ult i32 %341, %318
  br i1 %342, label %320, label %357, !llvm.loop !44

343:                                              ; preds = %325
  %344 = icmp slt i32 %333, 0
  br i1 %344, label %345, label %353

345:                                              ; preds = %343
  %346 = load i32, ptr %319, align 4, !tbaa !42
  %347 = icmp eq i32 %346, 11
  br i1 %347, label %348, label %354

348:                                              ; preds = %345
  store i32 1, ptr %36, align 4, !tbaa !15
  %349 = load i32, ptr %0, align 4, !tbaa !42
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %348
  %352 = load i32, ptr %319, align 4, !tbaa !42
  br label %354

353:                                              ; preds = %343
  store i32 1, ptr %27, align 8, !tbaa !21
  br label %357

354:                                              ; preds = %345, %351
  %355 = phi i32 [ %352, %351 ], [ %346, %345 ]
  %356 = tail call ptr @strerror(i32 noundef %355) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %356) #14
  br label %954

357:                                              ; preds = %340, %353, %348
  %358 = load ptr, ptr %32, align 8, !tbaa !27
  store ptr %358, ptr %25, align 8, !tbaa !19
  br label %474

359:                                              ; preds = %77
  %360 = load i32, ptr %30, align 8, !tbaa !24
  %361 = shl i32 %360, 1
  store i32 %361, ptr %31, align 8, !tbaa !45
  %362 = load ptr, ptr %32, align 8, !tbaa !27
  store ptr %362, ptr %33, align 8, !tbaa !46
  br label %363

363:                                              ; preds = %442, %359
  %364 = phi i32 [ 0, %359 ], [ %427, %442 ]
  %365 = load i32, ptr %28, align 8, !tbaa !31
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %426

367:                                              ; preds = %363
  %368 = load i32, ptr %14, align 8, !tbaa !14
  switch i32 %368, label %446 [
    i32 0, label %369
    i32 -5, label %369
  ]

369:                                              ; preds = %367, %367
  %370 = load i32, ptr %27, align 8, !tbaa !21
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %422

372:                                              ; preds = %369
  %373 = load i32, ptr %30, align 8, !tbaa !24
  %374 = load ptr, ptr %35, align 8, !tbaa !26
  store i32 0, ptr %36, align 4, !tbaa !15
  %375 = tail call ptr @__errno_location() #17
  store i32 0, ptr %375, align 4, !tbaa !42
  br label %376

376:                                              ; preds = %395, %372
  %377 = phi i32 [ 0, %372 ], [ %396, %395 ]
  %378 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %373, i32 %377), !nosanitize !18
  %379 = extractvalue { i32, i1 } %378, 1, !nosanitize !18
  br i1 %379, label %380, label %381, !nosanitize !18

380:                                              ; preds = %376
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

381:                                              ; preds = %376
  %382 = extractvalue { i32, i1 } %378, 0, !nosanitize !18
  %383 = tail call i32 @llvm.umin.i32(i32 %382, i32 1073741824)
  %384 = load i32, ptr %37, align 4, !tbaa !43
  %385 = zext i32 %377 to i64
  %386 = getelementptr inbounds i8, ptr %374, i64 %385
  %387 = zext nneg i32 %383 to i64
  %388 = tail call i64 @read(i32 noundef %384, ptr noundef %386, i64 noundef %387) #14
  %389 = trunc i64 %388 to i32
  %390 = icmp slt i32 %389, 1
  br i1 %390, label %398, label %391

391:                                              ; preds = %381
  %392 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %377, i32 %389), !nosanitize !18
  %393 = extractvalue { i32, i1 } %392, 1, !nosanitize !18
  br i1 %393, label %394, label %395, !nosanitize !18

394:                                              ; preds = %391
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

395:                                              ; preds = %391
  %396 = extractvalue { i32, i1 } %392, 0, !nosanitize !18
  %397 = icmp ult i32 %396, %373
  br i1 %397, label %376, label %412, !llvm.loop !44

398:                                              ; preds = %381
  %399 = icmp slt i32 %389, 0
  br i1 %399, label %400, label %407

400:                                              ; preds = %398
  %401 = load i32, ptr %375, align 4, !tbaa !42
  %402 = icmp eq i32 %401, 11
  br i1 %402, label %403, label %408

403:                                              ; preds = %400
  store i32 1, ptr %36, align 4, !tbaa !15
  %404 = icmp eq i32 %377, 0
  br i1 %404, label %405, label %412

405:                                              ; preds = %403
  %406 = load i32, ptr %375, align 4, !tbaa !42
  br label %408

407:                                              ; preds = %398
  store i32 1, ptr %27, align 8, !tbaa !21
  br label %412

408:                                              ; preds = %400, %405
  %409 = phi i32 [ %406, %405 ], [ %401, %400 ]
  %410 = tail call ptr @strerror(i32 noundef %409) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %410) #14
  %411 = load i32, ptr %14, align 8, !tbaa !14
  br label %446

412:                                              ; preds = %395, %407, %403
  %413 = phi i32 [ %377, %407 ], [ %377, %403 ], [ %396, %395 ]
  %414 = load i32, ptr %28, align 8, !tbaa !31
  %415 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %414, i32 %413), !nosanitize !18
  %416 = extractvalue { i32, i1 } %415, 1, !nosanitize !18
  br i1 %416, label %417, label %418, !nosanitize !18

417:                                              ; preds = %412
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

418:                                              ; preds = %412
  %419 = extractvalue { i32, i1 } %415, 0, !nosanitize !18
  store i32 %419, ptr %28, align 8, !tbaa !31
  %420 = load ptr, ptr %35, align 8, !tbaa !26
  store ptr %420, ptr %34, align 8, !tbaa !32
  %421 = icmp eq i32 %419, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %418, %369
  %423 = load i32, ptr %36, align 4, !tbaa !15
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %446

425:                                              ; preds = %422
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %446

426:                                              ; preds = %418, %363
  %427 = tail call i32 @inflate(ptr noundef nonnull %34, i32 noundef 0) #14
  %428 = load i32, ptr %31, align 8, !tbaa !45
  %429 = icmp ult i32 %428, %361
  br i1 %429, label %430, label %431

430:                                              ; preds = %426
  store i32 0, ptr %38, align 4, !tbaa !30
  br label %431

431:                                              ; preds = %430, %426
  switch i32 %427, label %442 [
    i32 -2, label %432
    i32 2, label %432
    i32 -4, label %433
    i32 -3, label %434
  ]

432:                                              ; preds = %431, %431
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %446

433:                                              ; preds = %431
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %446

434:                                              ; preds = %431
  %435 = load i32, ptr %38, align 4, !tbaa !30
  %436 = icmp eq i32 %435, 1
  br i1 %436, label %437, label %438

437:                                              ; preds = %434
  store i32 0, ptr %28, align 8, !tbaa !31
  store i32 1, ptr %27, align 8, !tbaa !21
  store i32 0, ptr %29, align 8, !tbaa !23
  br label %446

438:                                              ; preds = %434
  %439 = load ptr, ptr %39, align 8, !tbaa !47
  %440 = icmp eq ptr %439, null
  %441 = select i1 %440, ptr @.str.6, ptr %439
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %441) #14
  br label %446

442:                                              ; preds = %431
  %443 = icmp ne i32 %428, 0
  %444 = icmp ne i32 %427, 1
  %445 = select i1 %443, i1 %444, i1 false
  br i1 %445, label %363, label %446, !llvm.loop !48

446:                                              ; preds = %442, %367, %438, %437, %433, %432, %425, %422, %408
  %447 = phi i32 [ %364, %422 ], [ %364, %425 ], [ %427, %432 ], [ -4, %433 ], [ 0, %437 ], [ -3, %438 ], [ %411, %408 ], [ %368, %367 ], [ %427, %442 ]
  %448 = load i32, ptr %31, align 8, !tbaa !45
  %449 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %361, i32 %448), !nosanitize !18
  %450 = extractvalue { i32, i1 } %449, 1, !nosanitize !18
  br i1 %450, label %451, label %452, !nosanitize !18

451:                                              ; preds = %446
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

452:                                              ; preds = %446
  %453 = extractvalue { i32, i1 } %449, 0, !nosanitize !18
  store i32 %453, ptr %0, align 8, !tbaa !17
  %454 = load ptr, ptr %33, align 8, !tbaa !46
  %455 = zext i32 %453 to i64
  %456 = sub nsw i64 0, %455
  %457 = getelementptr inbounds i8, ptr %454, i64 %456
  store ptr %457, ptr %25, align 8, !tbaa !19
  switch i32 %447, label %954 [
    i32 1, label %459
    i32 0, label %462
  ]

458:                                              ; preds = %77
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %954

459:                                              ; preds = %452, %306
  %460 = phi i32 [ 1, %306 ], [ 0, %452 ]
  %461 = phi ptr [ %42, %306 ], [ %29, %452 ]
  store i32 %460, ptr %38, align 4, !tbaa !30
  store i32 0, ptr %461, align 8, !tbaa !42
  br label %462

462:                                              ; preds = %459, %452, %312
  %463 = load i32, ptr %0, align 8, !tbaa !17
  br label %464

464:                                              ; preds = %462, %308
  %465 = phi i32 [ %463, %462 ], [ %311, %308 ]
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %474

467:                                              ; preds = %464
  %468 = load i32, ptr %27, align 8, !tbaa !21
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %473, label %470

470:                                              ; preds = %467
  %471 = load i32, ptr %28, align 8, !tbaa !31
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %474, label %473

473:                                              ; preds = %470, %467
  br label %77, !llvm.loop !49

474:                                              ; preds = %470, %464, %312, %357
  %475 = load i64, ptr %21, align 8, !tbaa !16
  br label %476

476:                                              ; preds = %474, %68
  %477 = phi i64 [ %475, %474 ], [ %69, %68 ]
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %480, label %43, !llvm.loop !50

479:                                              ; preds = %941, %928
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

480:                                              ; preds = %476, %73, %20
  %481 = add i32 %2, -1
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %954, label %483

483:                                              ; preds = %480
  %484 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 10
  %485 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %486 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %487 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %488 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %489 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %490 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %491 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  %492 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %493 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %494 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %495 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %496 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 6
  %497 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %498 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %499 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %500 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %501 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %502 = load i32, ptr %0, align 8, !tbaa !17
  br label %503

503:                                              ; preds = %483, %945
  %504 = phi i32 [ %935, %945 ], [ %502, %483 ]
  %505 = phi i32 [ %946, %945 ], [ %481, %483 ]
  %506 = phi ptr [ %947, %945 ], [ %1, %483 ]
  %507 = icmp eq i32 %504, 0
  br i1 %507, label %508, label %910

508:                                              ; preds = %503, %904
  %509 = load i32, ptr %484, align 8, !tbaa !23
  switch i32 %509, label %889 [
    i32 0, label %510
    i32 1, label %746
    i32 2, label %790
  ]

510:                                              ; preds = %508
  %511 = load i32, ptr %485, align 8, !tbaa !24
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %530

513:                                              ; preds = %510
  %514 = load i32, ptr %498, align 4, !tbaa !25
  %515 = zext i32 %514 to i64
  %516 = tail call noalias ptr @malloc(i64 noundef %515) #16
  store ptr %516, ptr %492, align 8, !tbaa !26
  %517 = shl i32 %514, 1
  %518 = zext i32 %517 to i64
  %519 = tail call noalias ptr @malloc(i64 noundef %518) #16
  store ptr %519, ptr %487, align 8, !tbaa !27
  %520 = icmp eq ptr %516, null
  %521 = icmp eq ptr %519, null
  %522 = or i1 %520, %521
  br i1 %522, label %523, label %524

523:                                              ; preds = %513
  tail call void @free(ptr noundef %519) #14
  tail call void @free(ptr noundef %516) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %950

524:                                              ; preds = %513
  store i32 %514, ptr %485, align 8, !tbaa !24
  store i32 0, ptr %490, align 8, !tbaa !22
  store ptr null, ptr %489, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %499, i8 0, i64 24, i1 false)
  %525 = tail call i32 @inflateInit2_(ptr noundef nonnull %489, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %530, label %527

527:                                              ; preds = %524
  %528 = load ptr, ptr %487, align 8, !tbaa !27
  tail call void @free(ptr noundef %528) #14
  %529 = load ptr, ptr %492, align 8, !tbaa !26
  tail call void @free(ptr noundef %529) #14
  store i32 0, ptr %485, align 8, !tbaa !24
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %950

530:                                              ; preds = %524, %510
  %531 = load i32, ptr %500, align 8, !tbaa !29
  %532 = icmp eq i32 %531, -1
  br i1 %532, label %536, label %533

533:                                              ; preds = %530
  %534 = load i32, ptr %495, align 4, !tbaa !30
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %541

536:                                              ; preds = %533, %530
  %537 = tail call i32 @inflateReset(ptr noundef nonnull %489) #14
  store i32 2, ptr %484, align 8, !tbaa !23
  %538 = load i32, ptr %495, align 4, !tbaa !30
  %539 = icmp ne i32 %538, -1
  %540 = zext i1 %539 to i32
  store i32 %540, ptr %495, align 4, !tbaa !30
  store i32 0, ptr %500, align 8, !tbaa !29
  br label %743

541:                                              ; preds = %533
  %542 = load i32, ptr %14, align 8, !tbaa !14
  switch i32 %542, label %950 [
    i32 0, label %543
    i32 -5, label %543
  ]

543:                                              ; preds = %541, %541
  %544 = load i32, ptr %491, align 8, !tbaa !21
  %545 = icmp eq i32 %544, 0
  %546 = load i32, ptr %490, align 8, !tbaa !31
  br i1 %545, label %547, label %711

547:                                              ; preds = %543
  %548 = icmp eq i32 %546, 0
  br i1 %548, label %656, label %549

549:                                              ; preds = %547
  %550 = load ptr, ptr %492, align 8, !tbaa !26
  %551 = load ptr, ptr %489, align 8, !tbaa !32
  %552 = icmp eq ptr %551, %550
  br i1 %552, label %656, label %553

553:                                              ; preds = %549
  %554 = ptrtoint ptr %551 to i64
  %555 = ptrtoint ptr %550 to i64
  %556 = zext i32 %546 to i64
  %557 = icmp ult i32 %546, 8
  %558 = sub i64 %555, %554
  %559 = icmp ult i64 %558, 32
  %560 = or i1 %557, %559
  br i1 %560, label %600, label %561

561:                                              ; preds = %553
  %562 = icmp ult i32 %546, 32
  br i1 %562, label %584, label %563

563:                                              ; preds = %561
  %564 = and i64 %556, 4294967264
  br label %565

565:                                              ; preds = %565, %563
  %566 = phi i64 [ 0, %563 ], [ %573, %565 ]
  %567 = getelementptr i8, ptr %550, i64 %566
  %568 = getelementptr i8, ptr %551, i64 %566
  %569 = getelementptr i8, ptr %568, i64 16
  %570 = load <16 x i8>, ptr %568, align 1, !tbaa !33
  %571 = load <16 x i8>, ptr %569, align 1, !tbaa !33
  %572 = getelementptr i8, ptr %567, i64 16
  store <16 x i8> %570, ptr %567, align 1, !tbaa !33
  store <16 x i8> %571, ptr %572, align 1, !tbaa !33
  %573 = add nuw i64 %566, 32
  %574 = icmp eq i64 %573, %564
  br i1 %574, label %575, label %565, !llvm.loop !96

575:                                              ; preds = %565
  %576 = icmp eq i64 %564, %556
  br i1 %576, label %654, label %577

577:                                              ; preds = %575
  %578 = trunc i64 %564 to i32
  %579 = sub i32 %546, %578
  %580 = getelementptr i8, ptr %551, i64 %564
  %581 = getelementptr i8, ptr %550, i64 %564
  %582 = and i64 %556, 24
  %583 = icmp eq i64 %582, 0
  br i1 %583, label %600, label %584

584:                                              ; preds = %561, %577
  %585 = phi i64 [ %564, %577 ], [ 0, %561 ]
  %586 = and i64 %556, 4294967288
  %587 = getelementptr i8, ptr %550, i64 %586
  %588 = getelementptr i8, ptr %551, i64 %586
  %589 = trunc i64 %586 to i32
  %590 = sub i32 %546, %589
  br label %591

591:                                              ; preds = %591, %584
  %592 = phi i64 [ %585, %584 ], [ %596, %591 ]
  %593 = getelementptr i8, ptr %550, i64 %592
  %594 = getelementptr i8, ptr %551, i64 %592
  %595 = load <8 x i8>, ptr %594, align 1, !tbaa !33
  store <8 x i8> %595, ptr %593, align 1, !tbaa !33
  %596 = add nuw i64 %592, 8
  %597 = icmp eq i64 %596, %586
  br i1 %597, label %598, label %591, !llvm.loop !97

598:                                              ; preds = %591
  %599 = icmp eq i64 %586, %556
  br i1 %599, label %654, label %600

600:                                              ; preds = %553, %577, %598
  %601 = phi ptr [ %550, %553 ], [ %581, %577 ], [ %587, %598 ]
  %602 = phi ptr [ %551, %553 ], [ %580, %577 ], [ %588, %598 ]
  %603 = phi i32 [ %546, %553 ], [ %579, %577 ], [ %590, %598 ]
  %604 = add i32 %603, -1
  %605 = and i32 %603, 7
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %618, label %607

607:                                              ; preds = %600, %607
  %608 = phi ptr [ %614, %607 ], [ %601, %600 ]
  %609 = phi ptr [ %615, %607 ], [ %602, %600 ]
  %610 = phi i32 [ %613, %607 ], [ %603, %600 ]
  %611 = phi i32 [ %616, %607 ], [ 0, %600 ]
  %612 = load i8, ptr %609, align 1, !tbaa !33
  store i8 %612, ptr %608, align 1, !tbaa !33
  %613 = add i32 %610, -1
  %614 = getelementptr inbounds i8, ptr %608, i64 1
  %615 = getelementptr inbounds i8, ptr %609, i64 1
  %616 = add i32 %611, 1
  %617 = icmp eq i32 %616, %605
  br i1 %617, label %618, label %607, !llvm.loop !98

618:                                              ; preds = %607, %600
  %619 = phi ptr [ %601, %600 ], [ %614, %607 ]
  %620 = phi ptr [ %602, %600 ], [ %615, %607 ]
  %621 = phi i32 [ %603, %600 ], [ %613, %607 ]
  %622 = icmp ult i32 %604, 7
  br i1 %622, label %654, label %623

623:                                              ; preds = %618, %623
  %624 = phi ptr [ %650, %623 ], [ %619, %618 ]
  %625 = phi ptr [ %651, %623 ], [ %620, %618 ]
  %626 = phi i32 [ %649, %623 ], [ %621, %618 ]
  %627 = load i8, ptr %625, align 1, !tbaa !33
  store i8 %627, ptr %624, align 1, !tbaa !33
  %628 = getelementptr inbounds i8, ptr %624, i64 1
  %629 = getelementptr inbounds i8, ptr %625, i64 1
  %630 = load i8, ptr %629, align 1, !tbaa !33
  store i8 %630, ptr %628, align 1, !tbaa !33
  %631 = getelementptr inbounds i8, ptr %624, i64 2
  %632 = getelementptr inbounds i8, ptr %625, i64 2
  %633 = load i8, ptr %632, align 1, !tbaa !33
  store i8 %633, ptr %631, align 1, !tbaa !33
  %634 = getelementptr inbounds i8, ptr %624, i64 3
  %635 = getelementptr inbounds i8, ptr %625, i64 3
  %636 = load i8, ptr %635, align 1, !tbaa !33
  store i8 %636, ptr %634, align 1, !tbaa !33
  %637 = getelementptr inbounds i8, ptr %624, i64 4
  %638 = getelementptr inbounds i8, ptr %625, i64 4
  %639 = load i8, ptr %638, align 1, !tbaa !33
  store i8 %639, ptr %637, align 1, !tbaa !33
  %640 = getelementptr inbounds i8, ptr %624, i64 5
  %641 = getelementptr inbounds i8, ptr %625, i64 5
  %642 = load i8, ptr %641, align 1, !tbaa !33
  store i8 %642, ptr %640, align 1, !tbaa !33
  %643 = getelementptr inbounds i8, ptr %624, i64 6
  %644 = getelementptr inbounds i8, ptr %625, i64 6
  %645 = load i8, ptr %644, align 1, !tbaa !33
  store i8 %645, ptr %643, align 1, !tbaa !33
  %646 = getelementptr inbounds i8, ptr %624, i64 7
  %647 = getelementptr inbounds i8, ptr %625, i64 7
  %648 = load i8, ptr %647, align 1, !tbaa !33
  store i8 %648, ptr %646, align 1, !tbaa !33
  %649 = add i32 %626, -8
  %650 = getelementptr inbounds i8, ptr %624, i64 8
  %651 = getelementptr inbounds i8, ptr %625, i64 8
  %652 = icmp eq i32 %649, 0
  br i1 %652, label %654, label %623, !llvm.loop !99

653:                                              ; preds = %656
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

654:                                              ; preds = %618, %623, %598, %575
  %655 = load i32, ptr %490, align 8, !tbaa !31
  br label %656

656:                                              ; preds = %654, %549, %547
  %657 = phi i32 [ %655, %654 ], [ %546, %549 ], [ 0, %547 ]
  %658 = load i32, ptr %485, align 8, !tbaa !24
  %659 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %658, i32 %657), !nosanitize !18
  %660 = extractvalue { i32, i1 } %659, 1, !nosanitize !18
  br i1 %660, label %653, label %661, !nosanitize !18

661:                                              ; preds = %656
  %662 = extractvalue { i32, i1 } %659, 0, !nosanitize !18
  %663 = load ptr, ptr %492, align 8, !tbaa !26
  %664 = zext i32 %657 to i64
  %665 = getelementptr inbounds i8, ptr %663, i64 %664
  store i32 0, ptr %493, align 4, !tbaa !15
  %666 = tail call ptr @__errno_location() #17
  store i32 0, ptr %666, align 4, !tbaa !42
  br label %667

667:                                              ; preds = %686, %661
  %668 = phi i32 [ 0, %661 ], [ %687, %686 ]
  %669 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %662, i32 %668), !nosanitize !18
  %670 = extractvalue { i32, i1 } %669, 1, !nosanitize !18
  br i1 %670, label %671, label %672, !nosanitize !18

671:                                              ; preds = %667
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

672:                                              ; preds = %667
  %673 = extractvalue { i32, i1 } %669, 0, !nosanitize !18
  %674 = tail call i32 @llvm.umin.i32(i32 %673, i32 1073741824)
  %675 = load i32, ptr %494, align 4, !tbaa !43
  %676 = zext i32 %668 to i64
  %677 = getelementptr inbounds i8, ptr %665, i64 %676
  %678 = zext nneg i32 %674 to i64
  %679 = tail call i64 @read(i32 noundef %675, ptr noundef %677, i64 noundef %678) #14
  %680 = trunc i64 %679 to i32
  %681 = icmp slt i32 %680, 1
  br i1 %681, label %689, label %682

682:                                              ; preds = %672
  %683 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %668, i32 %680), !nosanitize !18
  %684 = extractvalue { i32, i1 } %683, 1, !nosanitize !18
  br i1 %684, label %685, label %686, !nosanitize !18

685:                                              ; preds = %682
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

686:                                              ; preds = %682
  %687 = extractvalue { i32, i1 } %683, 0, !nosanitize !18
  %688 = icmp ult i32 %687, %662
  br i1 %688, label %667, label %702, !llvm.loop !44

689:                                              ; preds = %672
  %690 = icmp slt i32 %680, 0
  br i1 %690, label %691, label %698

691:                                              ; preds = %689
  %692 = load i32, ptr %666, align 4, !tbaa !42
  %693 = icmp eq i32 %692, 11
  br i1 %693, label %694, label %699

694:                                              ; preds = %691
  store i32 1, ptr %493, align 4, !tbaa !15
  %695 = icmp eq i32 %668, 0
  br i1 %695, label %696, label %702

696:                                              ; preds = %694
  %697 = load i32, ptr %666, align 4, !tbaa !42
  br label %699

698:                                              ; preds = %689
  store i32 1, ptr %491, align 8, !tbaa !21
  br label %702

699:                                              ; preds = %691, %696
  %700 = phi i32 [ %697, %696 ], [ %692, %691 ]
  %701 = tail call ptr @strerror(i32 noundef %700) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %701) #14
  br label %950

702:                                              ; preds = %686, %698, %694
  %703 = phi i32 [ %668, %698 ], [ %668, %694 ], [ %687, %686 ]
  %704 = load i32, ptr %490, align 8, !tbaa !31
  %705 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %704, i32 %703), !nosanitize !18
  %706 = extractvalue { i32, i1 } %705, 1, !nosanitize !18
  br i1 %706, label %707, label %708, !nosanitize !18

707:                                              ; preds = %702
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

708:                                              ; preds = %702
  %709 = extractvalue { i32, i1 } %705, 0, !nosanitize !18
  store i32 %709, ptr %490, align 8, !tbaa !31
  %710 = load ptr, ptr %492, align 8, !tbaa !26
  store ptr %710, ptr %489, align 8, !tbaa !32
  br label %711

711:                                              ; preds = %708, %543
  %712 = phi i32 [ %709, %708 ], [ %546, %543 ]
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %743, label %714

714:                                              ; preds = %711
  %715 = load i32, ptr %493, align 4, !tbaa !15
  %716 = icmp ne i32 %715, 0
  %717 = icmp ult i32 %712, 4
  %718 = and i1 %717, %716
  br i1 %718, label %743, label %719

719:                                              ; preds = %714
  %720 = icmp ugt i32 %712, 3
  %721 = load ptr, ptr %489, align 8, !tbaa !32
  br i1 %720, label %722, label %739

722:                                              ; preds = %719
  %723 = load i8, ptr %721, align 1, !tbaa !33
  %724 = icmp eq i8 %723, 31
  br i1 %724, label %725, label %739

725:                                              ; preds = %722
  %726 = getelementptr inbounds i8, ptr %721, i64 1
  %727 = load i8, ptr %726, align 1, !tbaa !33
  %728 = icmp eq i8 %727, -117
  br i1 %728, label %729, label %739

729:                                              ; preds = %725
  %730 = getelementptr inbounds i8, ptr %721, i64 2
  %731 = load i8, ptr %730, align 1, !tbaa !33
  %732 = icmp eq i8 %731, 8
  br i1 %732, label %733, label %739

733:                                              ; preds = %729
  %734 = getelementptr inbounds i8, ptr %721, i64 3
  %735 = load i8, ptr %734, align 1, !tbaa !33
  %736 = icmp ult i8 %735, 32
  br i1 %736, label %737, label %739

737:                                              ; preds = %733
  %738 = tail call i32 @inflateReset(ptr noundef nonnull %489) #14
  store i32 2, ptr %484, align 8, !tbaa !23
  br label %890

739:                                              ; preds = %733, %729, %725, %722, %719
  %740 = load ptr, ptr %487, align 8, !tbaa !27
  store ptr %740, ptr %497, align 8, !tbaa !19
  %741 = zext i32 %712 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %740, ptr align 1 %721, i64 %741, i1 false)
  %742 = load i32, ptr %490, align 8, !tbaa !31
  store i32 %742, ptr %0, align 8, !tbaa !17
  store i32 0, ptr %490, align 8, !tbaa !31
  store i32 1, ptr %484, align 8, !tbaa !23
  br label %895

743:                                              ; preds = %714, %711, %536
  %744 = load i32, ptr %484, align 8, !tbaa !23
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %905, label %893

746:                                              ; preds = %508
  %747 = load ptr, ptr %487, align 8, !tbaa !27
  %748 = load i32, ptr %485, align 8, !tbaa !24
  %749 = shl i32 %748, 1
  store i32 0, ptr %493, align 4, !tbaa !15
  %750 = tail call ptr @__errno_location() #17
  store i32 0, ptr %750, align 4, !tbaa !42
  store i32 0, ptr %0, align 4, !tbaa !42
  br label %751

751:                                              ; preds = %771, %746
  %752 = phi i32 [ %772, %771 ], [ 0, %746 ]
  %753 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %749, i32 %752), !nosanitize !18
  %754 = extractvalue { i32, i1 } %753, 1, !nosanitize !18
  br i1 %754, label %755, label %756, !nosanitize !18

755:                                              ; preds = %751
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

756:                                              ; preds = %751
  %757 = extractvalue { i32, i1 } %753, 0, !nosanitize !18
  %758 = tail call i32 @llvm.umin.i32(i32 %757, i32 1073741824)
  %759 = load i32, ptr %494, align 4, !tbaa !43
  %760 = zext i32 %752 to i64
  %761 = getelementptr inbounds i8, ptr %747, i64 %760
  %762 = zext nneg i32 %758 to i64
  %763 = tail call i64 @read(i32 noundef %759, ptr noundef %761, i64 noundef %762) #14
  %764 = trunc i64 %763 to i32
  %765 = icmp slt i32 %764, 1
  br i1 %765, label %774, label %766

766:                                              ; preds = %756
  %767 = load i32, ptr %0, align 4, !tbaa !42
  %768 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %767, i32 %764), !nosanitize !18
  %769 = extractvalue { i32, i1 } %768, 1, !nosanitize !18
  br i1 %769, label %770, label %771, !nosanitize !18

770:                                              ; preds = %766
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

771:                                              ; preds = %766
  %772 = extractvalue { i32, i1 } %768, 0, !nosanitize !18
  store i32 %772, ptr %0, align 4, !tbaa !42
  %773 = icmp ult i32 %772, %749
  br i1 %773, label %751, label %788, !llvm.loop !44

774:                                              ; preds = %756
  %775 = icmp slt i32 %764, 0
  br i1 %775, label %776, label %784

776:                                              ; preds = %774
  %777 = load i32, ptr %750, align 4, !tbaa !42
  %778 = icmp eq i32 %777, 11
  br i1 %778, label %779, label %785

779:                                              ; preds = %776
  store i32 1, ptr %493, align 4, !tbaa !15
  %780 = load i32, ptr %0, align 4, !tbaa !42
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %782, label %788

782:                                              ; preds = %779
  %783 = load i32, ptr %750, align 4, !tbaa !42
  br label %785

784:                                              ; preds = %774
  store i32 1, ptr %491, align 8, !tbaa !21
  br label %788

785:                                              ; preds = %776, %782
  %786 = phi i32 [ %783, %782 ], [ %777, %776 ]
  %787 = tail call ptr @strerror(i32 noundef %786) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %787) #14
  br label %950

788:                                              ; preds = %771, %784, %779
  %789 = load ptr, ptr %487, align 8, !tbaa !27
  store ptr %789, ptr %497, align 8, !tbaa !19
  br label %905

790:                                              ; preds = %508
  %791 = load i32, ptr %485, align 8, !tbaa !24
  %792 = shl i32 %791, 1
  store i32 %792, ptr %486, align 8, !tbaa !45
  %793 = load ptr, ptr %487, align 8, !tbaa !27
  store ptr %793, ptr %488, align 8, !tbaa !46
  br label %794

794:                                              ; preds = %873, %790
  %795 = phi i32 [ 0, %790 ], [ %858, %873 ]
  %796 = load i32, ptr %490, align 8, !tbaa !31
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %798, label %857

798:                                              ; preds = %794
  %799 = load i32, ptr %14, align 8, !tbaa !14
  switch i32 %799, label %877 [
    i32 0, label %800
    i32 -5, label %800
  ]

800:                                              ; preds = %798, %798
  %801 = load i32, ptr %491, align 8, !tbaa !21
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %853

803:                                              ; preds = %800
  %804 = load i32, ptr %485, align 8, !tbaa !24
  %805 = load ptr, ptr %492, align 8, !tbaa !26
  store i32 0, ptr %493, align 4, !tbaa !15
  %806 = tail call ptr @__errno_location() #17
  store i32 0, ptr %806, align 4, !tbaa !42
  br label %807

807:                                              ; preds = %826, %803
  %808 = phi i32 [ 0, %803 ], [ %827, %826 ]
  %809 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %804, i32 %808), !nosanitize !18
  %810 = extractvalue { i32, i1 } %809, 1, !nosanitize !18
  br i1 %810, label %811, label %812, !nosanitize !18

811:                                              ; preds = %807
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

812:                                              ; preds = %807
  %813 = extractvalue { i32, i1 } %809, 0, !nosanitize !18
  %814 = tail call i32 @llvm.umin.i32(i32 %813, i32 1073741824)
  %815 = load i32, ptr %494, align 4, !tbaa !43
  %816 = zext i32 %808 to i64
  %817 = getelementptr inbounds i8, ptr %805, i64 %816
  %818 = zext nneg i32 %814 to i64
  %819 = tail call i64 @read(i32 noundef %815, ptr noundef %817, i64 noundef %818) #14
  %820 = trunc i64 %819 to i32
  %821 = icmp slt i32 %820, 1
  br i1 %821, label %829, label %822

822:                                              ; preds = %812
  %823 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %808, i32 %820), !nosanitize !18
  %824 = extractvalue { i32, i1 } %823, 1, !nosanitize !18
  br i1 %824, label %825, label %826, !nosanitize !18

825:                                              ; preds = %822
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

826:                                              ; preds = %822
  %827 = extractvalue { i32, i1 } %823, 0, !nosanitize !18
  %828 = icmp ult i32 %827, %804
  br i1 %828, label %807, label %843, !llvm.loop !44

829:                                              ; preds = %812
  %830 = icmp slt i32 %820, 0
  br i1 %830, label %831, label %838

831:                                              ; preds = %829
  %832 = load i32, ptr %806, align 4, !tbaa !42
  %833 = icmp eq i32 %832, 11
  br i1 %833, label %834, label %839

834:                                              ; preds = %831
  store i32 1, ptr %493, align 4, !tbaa !15
  %835 = icmp eq i32 %808, 0
  br i1 %835, label %836, label %843

836:                                              ; preds = %834
  %837 = load i32, ptr %806, align 4, !tbaa !42
  br label %839

838:                                              ; preds = %829
  store i32 1, ptr %491, align 8, !tbaa !21
  br label %843

839:                                              ; preds = %831, %836
  %840 = phi i32 [ %837, %836 ], [ %832, %831 ]
  %841 = tail call ptr @strerror(i32 noundef %840) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %841) #14
  %842 = load i32, ptr %14, align 8, !tbaa !14
  br label %877

843:                                              ; preds = %826, %838, %834
  %844 = phi i32 [ %808, %838 ], [ %808, %834 ], [ %827, %826 ]
  %845 = load i32, ptr %490, align 8, !tbaa !31
  %846 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %845, i32 %844), !nosanitize !18
  %847 = extractvalue { i32, i1 } %846, 1, !nosanitize !18
  br i1 %847, label %848, label %849, !nosanitize !18

848:                                              ; preds = %843
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

849:                                              ; preds = %843
  %850 = extractvalue { i32, i1 } %846, 0, !nosanitize !18
  store i32 %850, ptr %490, align 8, !tbaa !31
  %851 = load ptr, ptr %492, align 8, !tbaa !26
  store ptr %851, ptr %489, align 8, !tbaa !32
  %852 = icmp eq i32 %850, 0
  br i1 %852, label %853, label %857

853:                                              ; preds = %849, %800
  %854 = load i32, ptr %493, align 4, !tbaa !15
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %877

856:                                              ; preds = %853
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %877

857:                                              ; preds = %849, %794
  %858 = tail call i32 @inflate(ptr noundef nonnull %489, i32 noundef 0) #14
  %859 = load i32, ptr %486, align 8, !tbaa !45
  %860 = icmp ult i32 %859, %792
  br i1 %860, label %861, label %862

861:                                              ; preds = %857
  store i32 0, ptr %495, align 4, !tbaa !30
  br label %862

862:                                              ; preds = %861, %857
  switch i32 %858, label %873 [
    i32 -2, label %863
    i32 2, label %863
    i32 -4, label %864
    i32 -3, label %865
  ]

863:                                              ; preds = %862, %862
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %877

864:                                              ; preds = %862
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %877

865:                                              ; preds = %862
  %866 = load i32, ptr %495, align 4, !tbaa !30
  %867 = icmp eq i32 %866, 1
  br i1 %867, label %868, label %869

868:                                              ; preds = %865
  store i32 0, ptr %490, align 8, !tbaa !31
  store i32 1, ptr %491, align 8, !tbaa !21
  store i32 0, ptr %484, align 8, !tbaa !23
  br label %877

869:                                              ; preds = %865
  %870 = load ptr, ptr %496, align 8, !tbaa !47
  %871 = icmp eq ptr %870, null
  %872 = select i1 %871, ptr @.str.6, ptr %870
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %872) #14
  br label %877

873:                                              ; preds = %862
  %874 = icmp ne i32 %859, 0
  %875 = icmp ne i32 %858, 1
  %876 = select i1 %874, i1 %875, i1 false
  br i1 %876, label %794, label %877, !llvm.loop !48

877:                                              ; preds = %873, %798, %869, %868, %864, %863, %856, %853, %839
  %878 = phi i32 [ %795, %853 ], [ %795, %856 ], [ %858, %863 ], [ -4, %864 ], [ 0, %868 ], [ -3, %869 ], [ %842, %839 ], [ %858, %873 ], [ %799, %798 ]
  %879 = load i32, ptr %486, align 8, !tbaa !45
  %880 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %792, i32 %879), !nosanitize !18
  %881 = extractvalue { i32, i1 } %880, 1, !nosanitize !18
  br i1 %881, label %882, label %883, !nosanitize !18

882:                                              ; preds = %877
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

883:                                              ; preds = %877
  %884 = extractvalue { i32, i1 } %880, 0, !nosanitize !18
  store i32 %884, ptr %0, align 8, !tbaa !17
  %885 = load ptr, ptr %488, align 8, !tbaa !46
  %886 = zext i32 %884 to i64
  %887 = sub nsw i64 0, %886
  %888 = getelementptr inbounds i8, ptr %885, i64 %887
  store ptr %888, ptr %497, align 8, !tbaa !19
  switch i32 %878, label %950 [
    i32 1, label %890
    i32 0, label %893
  ]

889:                                              ; preds = %508
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %950

890:                                              ; preds = %883, %737
  %891 = phi i32 [ 1, %737 ], [ 0, %883 ]
  %892 = phi ptr [ %500, %737 ], [ %484, %883 ]
  store i32 %891, ptr %495, align 4, !tbaa !30
  store i32 0, ptr %892, align 8, !tbaa !42
  br label %893

893:                                              ; preds = %890, %883, %743
  %894 = load i32, ptr %0, align 8, !tbaa !17
  br label %895

895:                                              ; preds = %893, %739
  %896 = phi i32 [ %894, %893 ], [ %742, %739 ]
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %898, label %905

898:                                              ; preds = %895
  %899 = load i32, ptr %491, align 8, !tbaa !21
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %904, label %901

901:                                              ; preds = %898
  %902 = load i32, ptr %490, align 8, !tbaa !31
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %905, label %904

904:                                              ; preds = %901, %898
  br label %508, !llvm.loop !49

905:                                              ; preds = %901, %895, %743, %788
  %906 = load i32, ptr %0, align 8, !tbaa !17
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %908, label %910

908:                                              ; preds = %905
  %909 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  store i32 1, ptr %909, align 4, !tbaa !58
  br label %950

910:                                              ; preds = %503, %905
  %911 = phi i32 [ %906, %905 ], [ %504, %503 ]
  %912 = tail call i32 @llvm.umin.i32(i32 %911, i32 %505)
  %913 = load ptr, ptr %497, align 8, !tbaa !19
  %914 = zext i32 %912 to i64
  %915 = tail call ptr @memchr(ptr noundef %913, i32 noundef 10, i64 noundef %914) #18
  %916 = icmp eq ptr %915, null
  br i1 %916, label %928, label %917

917:                                              ; preds = %910
  %918 = ptrtoint ptr %915 to i64
  %919 = ptrtoint ptr %913 to i64
  %920 = sub i64 %918, %919
  %921 = trunc i64 %920 to i32
  %922 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %921, i32 1), !nosanitize !18
  %923 = extractvalue { i32, i1 } %922, 1, !nosanitize !18
  br i1 %923, label %924, label %925, !nosanitize !18

924:                                              ; preds = %934, %917
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

925:                                              ; preds = %917
  %926 = extractvalue { i32, i1 } %922, 0, !nosanitize !18
  %927 = zext i32 %926 to i64
  br label %928

928:                                              ; preds = %925, %910
  %929 = phi i64 [ %927, %925 ], [ %914, %910 ]
  %930 = phi i32 [ %926, %925 ], [ %912, %910 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %506, ptr align 1 %913, i64 %929, i1 false)
  %931 = load i32, ptr %0, align 8, !tbaa !17
  %932 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %931, i32 %930), !nosanitize !18
  %933 = extractvalue { i32, i1 } %932, 1, !nosanitize !18
  br i1 %933, label %479, label %934, !nosanitize !18

934:                                              ; preds = %928
  %935 = extractvalue { i32, i1 } %932, 0, !nosanitize !18
  store i32 %935, ptr %0, align 8, !tbaa !17
  %936 = load ptr, ptr %497, align 8, !tbaa !19
  %937 = getelementptr inbounds i8, ptr %936, i64 %929
  store ptr %937, ptr %497, align 8, !tbaa !19
  %938 = load i64, ptr %501, align 8, !tbaa !20
  %939 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %938, i64 %929), !nosanitize !18
  %940 = extractvalue { i64, i1 } %939, 1, !nosanitize !18
  br i1 %940, label %924, label %941, !nosanitize !18

941:                                              ; preds = %934
  %942 = extractvalue { i64, i1 } %939, 0, !nosanitize !18
  store i64 %942, ptr %501, align 8, !tbaa !20
  %943 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %505, i32 %930), !nosanitize !18
  %944 = extractvalue { i32, i1 } %943, 1, !nosanitize !18
  br i1 %944, label %479, label %945, !nosanitize !18

945:                                              ; preds = %941
  %946 = extractvalue { i32, i1 } %943, 0, !nosanitize !18
  %947 = getelementptr inbounds i8, ptr %506, i64 %929
  %948 = icmp ne i32 %946, 0
  %949 = and i1 %916, %948
  br i1 %949, label %503, label %950, !llvm.loop !100

950:                                              ; preds = %945, %541, %883, %699, %527, %523, %785, %889, %908
  %951 = phi ptr [ %506, %908 ], [ %506, %889 ], [ %506, %785 ], [ %506, %523 ], [ %506, %527 ], [ %506, %699 ], [ %506, %883 ], [ %506, %541 ], [ %947, %945 ]
  %952 = icmp eq ptr %951, %1
  br i1 %952, label %954, label %953

953:                                              ; preds = %950
  store i8 0, ptr %951, align 1, !tbaa !33
  br label %954

954:                                              ; preds = %110, %452, %480, %268, %96, %92, %354, %458, %950, %16, %9, %3, %953
  %955 = phi ptr [ %1, %953 ], [ null, %3 ], [ null, %9 ], [ null, %16 ], [ null, %950 ], [ null, %458 ], [ null, %354 ], [ null, %92 ], [ null, %96 ], [ null, %268 ], [ null, %480 ], [ null, %452 ], [ null, %110 ]
  ret ptr %955
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local i32 @gzdirect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %272, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %267

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !23
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %267

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8, !tbaa !17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %267

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %16 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !24
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !25
  %22 = zext i32 %21 to i64
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #16
  %24 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %23, ptr %24, align 8, !tbaa !26
  %25 = shl i32 %21, 1
  %26 = zext i32 %25 to i64
  %27 = tail call noalias ptr @malloc(i64 noundef %26) #16
  %28 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %27, ptr %28, align 8, !tbaa !27
  %29 = icmp eq ptr %23, null
  %30 = icmp eq ptr %27, null
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  tail call void @free(ptr noundef %27) #14
  tail call void @free(ptr noundef %23) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %267

33:                                               ; preds = %19
  store i32 %21, ptr %16, align 8, !tbaa !24
  %34 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %35 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  store i32 0, ptr %35, align 8, !tbaa !22
  store ptr null, ptr %15, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  %36 = tail call i32 @inflateInit2_(ptr noundef nonnull %15, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %28, align 8, !tbaa !27
  tail call void @free(ptr noundef %39) #14
  %40 = load ptr, ptr %24, align 8, !tbaa !26
  tail call void @free(ptr noundef %40) #14
  store i32 0, ptr %16, align 8, !tbaa !24
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %267

41:                                               ; preds = %33, %14
  %42 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %43 = load i32, ptr %42, align 8, !tbaa !29
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %47 = load i32, ptr %46, align 4, !tbaa !30
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45, %41
  %50 = tail call i32 @inflateReset(ptr noundef nonnull %15) #14
  store i32 2, ptr %8, align 8, !tbaa !23
  %51 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %52 = load i32, ptr %51, align 4, !tbaa !30
  %53 = icmp ne i32 %52, -1
  %54 = zext i1 %53 to i32
  store i32 %54, ptr %51, align 4, !tbaa !30
  store i32 0, ptr %42, align 8, !tbaa !29
  br label %267

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %57 = load i32, ptr %56, align 8, !tbaa !14
  switch i32 %57, label %267 [
    i32 0, label %58
    i32 -5, label %58
  ]

58:                                               ; preds = %55, %55
  %59 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  %60 = load i32, ptr %59, align 8, !tbaa !21
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !31
  br i1 %61, label %64, label %232

64:                                               ; preds = %58
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %174, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !26
  %69 = load ptr, ptr %15, align 8, !tbaa !32
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %174, label %71

71:                                               ; preds = %66
  %72 = ptrtoint ptr %69 to i64
  %73 = ptrtoint ptr %68 to i64
  %74 = zext i32 %63 to i64
  %75 = icmp ult i32 %63, 8
  %76 = sub i64 %73, %72
  %77 = icmp ult i64 %76, 32
  %78 = or i1 %75, %77
  br i1 %78, label %118, label %79

79:                                               ; preds = %71
  %80 = icmp ult i32 %63, 32
  br i1 %80, label %102, label %81

81:                                               ; preds = %79
  %82 = and i64 %74, 4294967264
  br label %83

83:                                               ; preds = %83, %81
  %84 = phi i64 [ 0, %81 ], [ %91, %83 ]
  %85 = getelementptr i8, ptr %68, i64 %84
  %86 = getelementptr i8, ptr %69, i64 %84
  %87 = getelementptr i8, ptr %86, i64 16
  %88 = load <16 x i8>, ptr %86, align 1, !tbaa !33
  %89 = load <16 x i8>, ptr %87, align 1, !tbaa !33
  %90 = getelementptr i8, ptr %85, i64 16
  store <16 x i8> %88, ptr %85, align 1, !tbaa !33
  store <16 x i8> %89, ptr %90, align 1, !tbaa !33
  %91 = add nuw i64 %84, 32
  %92 = icmp eq i64 %91, %82
  br i1 %92, label %93, label %83, !llvm.loop !101

93:                                               ; preds = %83
  %94 = icmp eq i64 %82, %74
  br i1 %94, label %172, label %95

95:                                               ; preds = %93
  %96 = trunc i64 %82 to i32
  %97 = sub i32 %63, %96
  %98 = getelementptr i8, ptr %69, i64 %82
  %99 = getelementptr i8, ptr %68, i64 %82
  %100 = and i64 %74, 24
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %79, %95
  %103 = phi i64 [ %82, %95 ], [ 0, %79 ]
  %104 = and i64 %74, 4294967288
  %105 = getelementptr i8, ptr %68, i64 %104
  %106 = getelementptr i8, ptr %69, i64 %104
  %107 = trunc i64 %104 to i32
  %108 = sub i32 %63, %107
  br label %109

109:                                              ; preds = %109, %102
  %110 = phi i64 [ %103, %102 ], [ %114, %109 ]
  %111 = getelementptr i8, ptr %68, i64 %110
  %112 = getelementptr i8, ptr %69, i64 %110
  %113 = load <8 x i8>, ptr %112, align 1, !tbaa !33
  store <8 x i8> %113, ptr %111, align 1, !tbaa !33
  %114 = add nuw i64 %110, 8
  %115 = icmp eq i64 %114, %104
  br i1 %115, label %116, label %109, !llvm.loop !102

116:                                              ; preds = %109
  %117 = icmp eq i64 %104, %74
  br i1 %117, label %172, label %118

118:                                              ; preds = %71, %95, %116
  %119 = phi ptr [ %68, %71 ], [ %99, %95 ], [ %105, %116 ]
  %120 = phi ptr [ %69, %71 ], [ %98, %95 ], [ %106, %116 ]
  %121 = phi i32 [ %63, %71 ], [ %97, %95 ], [ %108, %116 ]
  %122 = add i32 %121, -1
  %123 = and i32 %121, 7
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %118, %125
  %126 = phi ptr [ %132, %125 ], [ %119, %118 ]
  %127 = phi ptr [ %133, %125 ], [ %120, %118 ]
  %128 = phi i32 [ %131, %125 ], [ %121, %118 ]
  %129 = phi i32 [ %134, %125 ], [ 0, %118 ]
  %130 = load i8, ptr %127, align 1, !tbaa !33
  store i8 %130, ptr %126, align 1, !tbaa !33
  %131 = add i32 %128, -1
  %132 = getelementptr inbounds i8, ptr %126, i64 1
  %133 = getelementptr inbounds i8, ptr %127, i64 1
  %134 = add i32 %129, 1
  %135 = icmp eq i32 %134, %123
  br i1 %135, label %136, label %125, !llvm.loop !103

136:                                              ; preds = %125, %118
  %137 = phi ptr [ %119, %118 ], [ %132, %125 ]
  %138 = phi ptr [ %120, %118 ], [ %133, %125 ]
  %139 = phi i32 [ %121, %118 ], [ %131, %125 ]
  %140 = icmp ult i32 %122, 7
  br i1 %140, label %172, label %141

141:                                              ; preds = %136, %141
  %142 = phi ptr [ %168, %141 ], [ %137, %136 ]
  %143 = phi ptr [ %169, %141 ], [ %138, %136 ]
  %144 = phi i32 [ %167, %141 ], [ %139, %136 ]
  %145 = load i8, ptr %143, align 1, !tbaa !33
  store i8 %145, ptr %142, align 1, !tbaa !33
  %146 = getelementptr inbounds i8, ptr %142, i64 1
  %147 = getelementptr inbounds i8, ptr %143, i64 1
  %148 = load i8, ptr %147, align 1, !tbaa !33
  store i8 %148, ptr %146, align 1, !tbaa !33
  %149 = getelementptr inbounds i8, ptr %142, i64 2
  %150 = getelementptr inbounds i8, ptr %143, i64 2
  %151 = load i8, ptr %150, align 1, !tbaa !33
  store i8 %151, ptr %149, align 1, !tbaa !33
  %152 = getelementptr inbounds i8, ptr %142, i64 3
  %153 = getelementptr inbounds i8, ptr %143, i64 3
  %154 = load i8, ptr %153, align 1, !tbaa !33
  store i8 %154, ptr %152, align 1, !tbaa !33
  %155 = getelementptr inbounds i8, ptr %142, i64 4
  %156 = getelementptr inbounds i8, ptr %143, i64 4
  %157 = load i8, ptr %156, align 1, !tbaa !33
  store i8 %157, ptr %155, align 1, !tbaa !33
  %158 = getelementptr inbounds i8, ptr %142, i64 5
  %159 = getelementptr inbounds i8, ptr %143, i64 5
  %160 = load i8, ptr %159, align 1, !tbaa !33
  store i8 %160, ptr %158, align 1, !tbaa !33
  %161 = getelementptr inbounds i8, ptr %142, i64 6
  %162 = getelementptr inbounds i8, ptr %143, i64 6
  %163 = load i8, ptr %162, align 1, !tbaa !33
  store i8 %163, ptr %161, align 1, !tbaa !33
  %164 = getelementptr inbounds i8, ptr %142, i64 7
  %165 = getelementptr inbounds i8, ptr %143, i64 7
  %166 = load i8, ptr %165, align 1, !tbaa !33
  store i8 %166, ptr %164, align 1, !tbaa !33
  %167 = add i32 %144, -8
  %168 = getelementptr inbounds i8, ptr %142, i64 8
  %169 = getelementptr inbounds i8, ptr %143, i64 8
  %170 = icmp eq i32 %167, 0
  br i1 %170, label %172, label %141, !llvm.loop !104

171:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

172:                                              ; preds = %136, %141, %116, %93
  %173 = load i32, ptr %62, align 8, !tbaa !31
  br label %174

174:                                              ; preds = %172, %66, %64
  %175 = phi i32 [ %173, %172 ], [ %63, %66 ], [ 0, %64 ]
  %176 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %177 = load i32, ptr %16, align 8, !tbaa !24
  %178 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %177, i32 %175), !nosanitize !18
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !18
  br i1 %179, label %171, label %180, !nosanitize !18

180:                                              ; preds = %174
  %181 = extractvalue { i32, i1 } %178, 0, !nosanitize !18
  %182 = load ptr, ptr %176, align 8, !tbaa !26
  %183 = zext i32 %175 to i64
  %184 = getelementptr inbounds i8, ptr %182, i64 %183
  %185 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  store i32 0, ptr %185, align 4, !tbaa !15
  %186 = tail call ptr @__errno_location() #17
  store i32 0, ptr %186, align 4, !tbaa !42
  %187 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  br label %188

188:                                              ; preds = %207, %180
  %189 = phi i32 [ 0, %180 ], [ %208, %207 ]
  %190 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %181, i32 %189), !nosanitize !18
  %191 = extractvalue { i32, i1 } %190, 1, !nosanitize !18
  br i1 %191, label %192, label %193, !nosanitize !18

192:                                              ; preds = %188
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !18
  unreachable, !nosanitize !18

193:                                              ; preds = %188
  %194 = extractvalue { i32, i1 } %190, 0, !nosanitize !18
  %195 = tail call i32 @llvm.umin.i32(i32 %194, i32 1073741824)
  %196 = load i32, ptr %187, align 4, !tbaa !43
  %197 = zext i32 %189 to i64
  %198 = getelementptr inbounds i8, ptr %184, i64 %197
  %199 = zext nneg i32 %195 to i64
  %200 = tail call i64 @read(i32 noundef %196, ptr noundef %198, i64 noundef %199) #14
  %201 = trunc i64 %200 to i32
  %202 = icmp slt i32 %201, 1
  br i1 %202, label %210, label %203

203:                                              ; preds = %193
  %204 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %189, i32 %201), !nosanitize !18
  %205 = extractvalue { i32, i1 } %204, 1, !nosanitize !18
  br i1 %205, label %206, label %207, !nosanitize !18

206:                                              ; preds = %203
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

207:                                              ; preds = %203
  %208 = extractvalue { i32, i1 } %204, 0, !nosanitize !18
  %209 = icmp ult i32 %208, %181
  br i1 %209, label %188, label %223, !llvm.loop !44

210:                                              ; preds = %193
  %211 = icmp slt i32 %201, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %210
  %213 = load i32, ptr %186, align 4, !tbaa !42
  %214 = icmp eq i32 %213, 11
  br i1 %214, label %215, label %220

215:                                              ; preds = %212
  store i32 1, ptr %185, align 4, !tbaa !15
  %216 = icmp eq i32 %189, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %215
  %218 = load i32, ptr %186, align 4, !tbaa !42
  br label %220

219:                                              ; preds = %210
  store i32 1, ptr %59, align 8, !tbaa !21
  br label %223

220:                                              ; preds = %217, %212
  %221 = phi i32 [ %218, %217 ], [ %213, %212 ]
  %222 = tail call ptr @strerror(i32 noundef %221) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %222) #14
  br label %267

223:                                              ; preds = %207, %219, %215
  %224 = phi i32 [ %189, %219 ], [ %189, %215 ], [ %208, %207 ]
  %225 = load i32, ptr %62, align 8, !tbaa !31
  %226 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %225, i32 %224), !nosanitize !18
  %227 = extractvalue { i32, i1 } %226, 1, !nosanitize !18
  br i1 %227, label %228, label %229, !nosanitize !18

228:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !18
  unreachable, !nosanitize !18

229:                                              ; preds = %223
  %230 = extractvalue { i32, i1 } %226, 0, !nosanitize !18
  store i32 %230, ptr %62, align 8, !tbaa !31
  %231 = load ptr, ptr %176, align 8, !tbaa !26
  store ptr %231, ptr %15, align 8, !tbaa !32
  br label %232

232:                                              ; preds = %229, %58
  %233 = phi i32 [ %230, %229 ], [ %63, %58 ]
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %267, label %235

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %237 = load i32, ptr %236, align 4, !tbaa !15
  %238 = icmp ne i32 %237, 0
  %239 = icmp ult i32 %233, 4
  %240 = and i1 %239, %238
  br i1 %240, label %267, label %241

241:                                              ; preds = %235
  %242 = icmp ugt i32 %233, 3
  %243 = load ptr, ptr %15, align 8, !tbaa !32
  br i1 %242, label %244, label %261

244:                                              ; preds = %241
  %245 = load i8, ptr %243, align 1, !tbaa !33
  %246 = icmp eq i8 %245, 31
  br i1 %246, label %247, label %261

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %243, i64 1
  %249 = load i8, ptr %248, align 1, !tbaa !33
  %250 = icmp eq i8 %249, -117
  br i1 %250, label %251, label %261

251:                                              ; preds = %247
  %252 = getelementptr inbounds i8, ptr %243, i64 2
  %253 = load i8, ptr %252, align 1, !tbaa !33
  %254 = icmp eq i8 %253, 8
  br i1 %254, label %255, label %261

255:                                              ; preds = %251
  %256 = getelementptr inbounds i8, ptr %243, i64 3
  %257 = load i8, ptr %256, align 1, !tbaa !33
  %258 = icmp ult i8 %257, 32
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = tail call i32 @inflateReset(ptr noundef nonnull %15) #14
  store i32 2, ptr %8, align 8, !tbaa !23
  store i32 1, ptr %46, align 4, !tbaa !30
  store i32 0, ptr %42, align 8, !tbaa !29
  br label %267

261:                                              ; preds = %255, %251, %247, %244, %241
  %262 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %263 = load ptr, ptr %262, align 8, !tbaa !27
  %264 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %263, ptr %264, align 8, !tbaa !19
  %265 = zext i32 %233 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %263, ptr align 1 %243, i64 %265, i1 false)
  %266 = load i32, ptr %62, align 8, !tbaa !31
  store i32 %266, ptr %0, align 8, !tbaa !17
  store i32 0, ptr %62, align 8, !tbaa !31
  store i32 1, ptr %8, align 8, !tbaa !23
  br label %267

267:                                              ; preds = %261, %259, %235, %232, %220, %55, %49, %38, %32, %11, %7, %3
  %268 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %269 = load i32, ptr %268, align 8, !tbaa !29
  %270 = icmp eq i32 %269, 1
  %271 = zext i1 %270 to i32
  br label %272

272:                                              ; preds = %1, %267
  %273 = phi i32 [ %271, %267 ], [ 0, %1 ]
  ret i32 %273
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gzclose_r(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !24
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %13 = tail call i32 @inflateEnd(ptr noundef nonnull %12) #14
  %14 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !27
  tail call void @free(ptr noundef %15) #14
  %16 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  tail call void @free(ptr noundef %17) #14
  br label %18

18:                                               ; preds = %11, %7
  %19 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %20 = load i32, ptr %19, align 8, !tbaa !14
  %21 = icmp eq i32 %20, -5
  %22 = select i1 %21, i32 -5, i32 0
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !105
  tail call void @free(ptr noundef %24) #14
  %25 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !43
  %27 = tail call i32 @close(i32 noundef %26) #14
  tail call void @free(ptr noundef nonnull %0) #14
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %22, i32 -1
  br label %30

30:                                               ; preds = %3, %1, %18
  %31 = phi i32 [ %29, %18 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %31
}

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #5

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold noreturn nounwind }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !8, i64 24}
!6 = !{!"", !7, i64 0, !8, i64 24, !8, i64 28, !11, i64 32, !8, i64 40, !8, i64 44, !11, i64 48, !11, i64 56, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !12, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !12, i64 112, !8, i64 120, !11, i64 128, !13, i64 136}
!7 = !{!"gzFile_s", !8, i64 0, !11, i64 8, !12, i64 16}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"z_stream_s", !11, i64 0, !8, i64 8, !12, i64 16, !11, i64 24, !8, i64 32, !12, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !8, i64 88, !12, i64 96, !12, i64 104}
!14 = !{!6, !8, i64 120}
!15 = !{!6, !8, i64 76}
!16 = !{!6, !12, i64 112}
!17 = !{!6, !8, i64 0}
!18 = !{}
!19 = !{!6, !11, i64 8}
!20 = !{!6, !12, i64 16}
!21 = !{!6, !8, i64 88}
!22 = !{!6, !8, i64 144}
!23 = !{!6, !8, i64 72}
!24 = !{!6, !8, i64 40}
!25 = !{!6, !8, i64 44}
!26 = !{!6, !11, i64 48}
!27 = !{!6, !11, i64 56}
!28 = !{!6, !11, i64 136}
!29 = !{!6, !8, i64 64}
!30 = !{!6, !8, i64 68}
!31 = !{!13, !8, i64 8}
!32 = !{!13, !11, i64 0}
!33 = !{!9, !9, i64 0}
!34 = distinct !{!34, !35, !36, !37}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = distinct !{!38, !35, !36, !37}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !35, !36}
!42 = !{!8, !8, i64 0}
!43 = !{!6, !8, i64 28}
!44 = distinct !{!44, !35}
!45 = !{!13, !8, i64 32}
!46 = !{!13, !11, i64 24}
!47 = !{!13, !11, i64 48}
!48 = distinct !{!48, !35}
!49 = distinct !{!49, !35}
!50 = distinct !{!50, !35}
!51 = distinct !{!51, !35, !36, !37}
!52 = distinct !{!52, !35, !36, !37}
!53 = distinct !{!53, !40}
!54 = distinct !{!54, !35, !36}
!55 = !{!6, !8, i64 168}
!56 = !{!6, !11, i64 160}
!57 = distinct !{!57, !35}
!58 = !{!6, !8, i64 92}
!59 = distinct !{!59, !35, !36, !37}
!60 = distinct !{!60, !35, !36, !37}
!61 = distinct !{!61, !40}
!62 = distinct !{!62, !35, !36}
!63 = distinct !{!63, !35, !36, !37}
!64 = distinct !{!64, !35, !36, !37}
!65 = distinct !{!65, !40}
!66 = distinct !{!66, !35, !36}
!67 = distinct !{!67, !35, !36, !37}
!68 = distinct !{!68, !35, !36, !37}
!69 = distinct !{!69, !40}
!70 = distinct !{!70, !35, !36}
!71 = distinct !{!71, !35, !36, !37}
!72 = distinct !{!72, !35, !36, !37}
!73 = distinct !{!73, !40}
!74 = distinct !{!74, !35, !36}
!75 = distinct !{!75, !35, !36, !37}
!76 = distinct !{!76, !35, !36, !37}
!77 = distinct !{!77, !40}
!78 = distinct !{!78, !35, !36}
!79 = distinct !{!79, !35, !36, !37}
!80 = distinct !{!80, !35, !36, !37}
!81 = distinct !{!81, !40}
!82 = distinct !{!82, !35, !36}
!83 = distinct !{!83, !35, !36, !37}
!84 = distinct !{!84, !35, !36, !37}
!85 = distinct !{!85, !40}
!86 = distinct !{!86, !35, !36}
!87 = distinct !{!87, !35, !36, !37}
!88 = distinct !{!88, !35, !36, !37}
!89 = distinct !{!89, !40}
!90 = distinct !{!90, !35, !36}
!91 = distinct !{!91, !35}
!92 = distinct !{!92, !35, !36, !37}
!93 = distinct !{!93, !35, !36, !37}
!94 = distinct !{!94, !40}
!95 = distinct !{!95, !35, !36}
!96 = distinct !{!96, !35, !36, !37}
!97 = distinct !{!97, !35, !36, !37}
!98 = distinct !{!98, !40}
!99 = distinct !{!99, !35, !36}
!100 = distinct !{!100, !35}
!101 = distinct !{!101, !35, !36, !37}
!102 = distinct !{!102, !35, !36, !37}
!103 = distinct !{!103, !40}
!104 = distinct !{!104, !35, !36}
!105 = !{!6, !11, i64 32}
