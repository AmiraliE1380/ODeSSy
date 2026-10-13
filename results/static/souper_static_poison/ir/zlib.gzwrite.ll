; ModuleID = '/mydata/zlib/gzwrite.c'
source_filename = "/mydata/zlib/gzwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gz_state = type { %struct.gzFile_s, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, ptr, %struct.z_stream_s }
%struct.gzFile_s = type { i32, ptr, i64 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
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
  br i1 %4, label %958, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 31153
  br i1 %8, label %9, label %958

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %11 = load i32, ptr %10, align 8, !tbaa !14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %15 = load i32, ptr %14, align 4, !tbaa !15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %958, label %17

17:                                               ; preds = %13, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #16
  %18 = icmp slt i32 %2, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str) #16
  br label %958

20:                                               ; preds = %17
  %21 = zext nneg i32 %2 to i64
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %955, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %29 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !17
  %31 = shl i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = tail call noalias ptr @malloc(i64 noundef %32) #17
  %34 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %33, ptr %34, align 8, !tbaa !18
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %39 = load i32, ptr %38, align 8, !tbaa !19
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 %30, ptr %24, align 8, !tbaa !16
  br label %68

42:                                               ; preds = %37
  %43 = zext i32 %30 to i64
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #17
  %45 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %44, ptr %45, align 8, !tbaa !20
  %46 = icmp eq ptr %44, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  tail call void @free(ptr noundef nonnull %33) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %50 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %51 = load i32, ptr %50, align 8, !tbaa !21
  %52 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %53 = load i32, ptr %52, align 4, !tbaa !22
  %54 = tail call i32 @deflateInit2_(ptr noundef nonnull %28, i32 noundef %51, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %53, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load ptr, ptr %45, align 8, !tbaa !20
  tail call void @free(ptr noundef %57) #16
  %58 = load ptr, ptr %34, align 8, !tbaa !18
  tail call void @free(ptr noundef %58) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

59:                                               ; preds = %48
  store ptr null, ptr %28, align 8, !tbaa !23
  %60 = load i32, ptr %38, align 8, !tbaa !19
  %61 = load i32, ptr %29, align 4, !tbaa !17
  store i32 %61, ptr %24, align 8, !tbaa !16
  %62 = icmp eq i32 %60, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %61, ptr %64, align 8, !tbaa !24
  %65 = load ptr, ptr %45, align 8, !tbaa !20
  %66 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %65, ptr %66, align 8, !tbaa !25
  %67 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %65, ptr %67, align 8, !tbaa !26
  br label %68

68:                                               ; preds = %63, %59, %41, %23
  %69 = phi i32 [ %61, %63 ], [ %61, %59 ], [ %30, %41 ], [ %25, %23 ]
  %70 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %71 = load i64, ptr %70, align 8, !tbaa !27
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %415, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %75 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !28
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %228, label %78

78:                                               ; preds = %73
  %79 = icmp eq i32 %69, 0
  br i1 %79, label %80, label %120

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %82 = load i32, ptr %81, align 4, !tbaa !17
  %83 = shl i32 %82, 1
  %84 = zext i32 %83 to i64
  %85 = tail call noalias ptr @malloc(i64 noundef %84) #17
  %86 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %85, ptr %86, align 8, !tbaa !18
  %87 = icmp eq ptr %85, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %91 = load i32, ptr %90, align 8, !tbaa !19
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  store i32 %82, ptr %24, align 8, !tbaa !16
  br label %127

94:                                               ; preds = %89
  %95 = zext i32 %82 to i64
  %96 = tail call noalias ptr @malloc(i64 noundef %95) #17
  %97 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %96, ptr %97, align 8, !tbaa !20
  %98 = icmp eq ptr %96, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  tail call void @free(ptr noundef nonnull %85) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %102 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %101, i8 0, i64 24, i1 false)
  %103 = load i32, ptr %102, align 8, !tbaa !21
  %104 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %105 = load i32, ptr %104, align 4, !tbaa !22
  %106 = tail call i32 @deflateInit2_(ptr noundef nonnull %74, i32 noundef %103, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %105, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %100
  %109 = load ptr, ptr %97, align 8, !tbaa !20
  tail call void @free(ptr noundef %109) #16
  %110 = load ptr, ptr %86, align 8, !tbaa !18
  tail call void @free(ptr noundef %110) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

111:                                              ; preds = %100
  store ptr null, ptr %74, align 8, !tbaa !23
  %112 = load i32, ptr %90, align 8, !tbaa !19
  %113 = load i32, ptr %81, align 4, !tbaa !17
  store i32 %113, ptr %24, align 8, !tbaa !16
  %114 = icmp eq i32 %112, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %113, ptr %116, align 8, !tbaa !24
  %117 = load ptr, ptr %97, align 8, !tbaa !20
  %118 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %117, ptr %118, align 8, !tbaa !25
  %119 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %117, ptr %119, align 8, !tbaa !26
  br label %160

120:                                              ; preds = %78
  %121 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %122 = load i32, ptr %121, align 8, !tbaa !19
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %160, label %127

124:                                              ; preds = %111
  %125 = load i32, ptr %75, align 8, !tbaa !28
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %228, label %127

127:                                              ; preds = %124, %120, %93
  %128 = tail call ptr @__errno_location() #18
  %129 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %130 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %131 = load ptr, ptr %74, align 8, !tbaa !23
  br label %132

132:                                              ; preds = %154, %127
  %133 = phi ptr [ %131, %127 ], [ %158, %154 ]
  store i32 0, ptr %128, align 4, !tbaa !29
  store i32 0, ptr %129, align 4, !tbaa !15
  %134 = load i32, ptr %75, align 8, !tbaa !28
  %135 = tail call i32 @llvm.umin.i32(i32 %134, i32 1073741824)
  %136 = load i32, ptr %130, align 4, !tbaa !30
  %137 = zext nneg i32 %135 to i64
  %138 = tail call i64 @write(i32 noundef %136, ptr noundef %133, i64 noundef %137) #16
  %139 = trunc i64 %138 to i32
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %132
  %142 = load i32, ptr %128, align 4, !tbaa !29
  %143 = icmp eq i32 %142, 11
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  store i32 1, ptr %129, align 4, !tbaa !15
  %145 = load i32, ptr %128, align 4, !tbaa !29
  br label %146

146:                                              ; preds = %144, %141
  %147 = phi i32 [ %142, %141 ], [ %145, %144 ]
  %148 = tail call ptr @strerror(i32 noundef %147) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %148) #16
  br label %955

149:                                              ; preds = %132
  %150 = load i32, ptr %75, align 8, !tbaa !28
  %151 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %150, i32 %139), !nosanitize !31
  %152 = extractvalue { i32, i1 } %151, 1, !nosanitize !31
  br i1 %152, label %153, label %154, !nosanitize !31

153:                                              ; preds = %149, %223
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

154:                                              ; preds = %149
  %155 = extractvalue { i32, i1 } %151, 0, !nosanitize !31
  store i32 %155, ptr %75, align 8, !tbaa !28
  %156 = load ptr, ptr %74, align 8, !tbaa !23
  %157 = and i64 %138, 4294967295
  %158 = getelementptr inbounds i8, ptr %156, i64 %157
  store ptr %158, ptr %74, align 8, !tbaa !23
  %159 = icmp eq i32 %155, 0
  br i1 %159, label %228, label %132, !llvm.loop !32

160:                                              ; preds = %120, %115
  %161 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %162 = load i32, ptr %161, align 8, !tbaa !34
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %160
  %165 = load i32, ptr %75, align 8, !tbaa !28
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %228, label %167

167:                                              ; preds = %164
  %168 = tail call i32 @deflateReset(ptr noundef nonnull %74) #16
  store i32 0, ptr %161, align 8, !tbaa !34
  br label %169

169:                                              ; preds = %167, %160
  %170 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %171 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %172 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %173 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %174 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %175 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %176 = load i32, ptr %170, align 8, !tbaa !24
  br label %177

177:                                              ; preds = %226, %169
  %178 = phi i32 [ %176, %169 ], [ %224, %226 ]
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %218

180:                                              ; preds = %177
  %181 = load ptr, ptr %171, align 8, !tbaa !25
  %182 = load ptr, ptr %172, align 8, !tbaa !26
  %183 = icmp ugt ptr %181, %182
  br i1 %183, label %184, label %215

184:                                              ; preds = %180
  %185 = tail call ptr @__errno_location() #18
  br label %186

186:                                              ; preds = %206, %184
  %187 = phi ptr [ %182, %184 ], [ %209, %206 ]
  %188 = phi ptr [ %181, %184 ], [ %210, %206 ]
  store i32 0, ptr %185, align 4, !tbaa !29
  store i32 0, ptr %173, align 4, !tbaa !15
  %189 = ptrtoint ptr %188 to i64
  %190 = ptrtoint ptr %187 to i64
  %191 = sub i64 %189, %190
  %192 = tail call i64 @llvm.smin.i64(i64 %191, i64 1073741824)
  %193 = load i32, ptr %174, align 4, !tbaa !30
  %194 = and i64 %192, 4294967295
  %195 = tail call i64 @write(i32 noundef %193, ptr noundef %187, i64 noundef %194) #16
  %196 = and i64 %195, 2147483648
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %186
  %199 = load i32, ptr %185, align 4, !tbaa !29
  %200 = icmp eq i32 %199, 11
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  store i32 1, ptr %173, align 4, !tbaa !15
  %202 = load i32, ptr %185, align 4, !tbaa !29
  br label %203

203:                                              ; preds = %201, %198
  %204 = phi i32 [ %199, %198 ], [ %202, %201 ]
  %205 = tail call ptr @strerror(i32 noundef %204) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %205) #16
  br label %955

206:                                              ; preds = %186
  %207 = load ptr, ptr %172, align 8, !tbaa !26
  %208 = and i64 %195, 2147483647
  %209 = getelementptr inbounds i8, ptr %207, i64 %208
  store ptr %209, ptr %172, align 8, !tbaa !26
  %210 = load ptr, ptr %171, align 8, !tbaa !25
  %211 = icmp ugt ptr %210, %209
  br i1 %211, label %186, label %212, !llvm.loop !35

212:                                              ; preds = %206
  %213 = load i32, ptr %170, align 8, !tbaa !24
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212, %180
  %216 = load i32, ptr %24, align 8, !tbaa !16
  store i32 %216, ptr %170, align 8, !tbaa !24
  %217 = load ptr, ptr %175, align 8, !tbaa !20
  store ptr %217, ptr %171, align 8, !tbaa !25
  store ptr %217, ptr %172, align 8, !tbaa !26
  br label %218

218:                                              ; preds = %215, %212, %177
  %219 = phi i32 [ %213, %212 ], [ %216, %215 ], [ %178, %177 ]
  %220 = tail call i32 @deflate(ptr noundef nonnull %74, i32 noundef 0) #16
  %221 = icmp eq i32 %220, -2
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %955

223:                                              ; preds = %218
  %224 = load i32, ptr %170, align 8, !tbaa !24
  %225 = icmp ult i32 %219, %224
  br i1 %225, label %153, label %226, !nosanitize !31

226:                                              ; preds = %223
  %227 = icmp eq i32 %219, %224
  br i1 %227, label %228, label %177, !llvm.loop !36

228:                                              ; preds = %154, %226, %164, %124, %73
  %229 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %230 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %231 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %232 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %233 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %234 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %235 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %236 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %237 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %238 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %239 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %240 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %241 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %242 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %243 = load i64, ptr %70, align 8, !tbaa !27
  br label %244

244:                                              ; preds = %411, %228
  %245 = phi i64 [ %243, %228 ], [ %408, %411 ]
  %246 = phi i1 [ false, %228 ], [ true, %411 ]
  %247 = load i32, ptr %24, align 8, !tbaa !16
  %248 = zext i32 %247 to i64
  %249 = icmp slt i64 %245, %248
  %250 = trunc i64 %245 to i32
  %251 = select i1 %249, i32 %250, i32 %247
  %252 = load ptr, ptr %229, align 8, !tbaa !18
  br i1 %246, label %257, label %253

253:                                              ; preds = %244
  %254 = zext i32 %251 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %252, i8 0, i64 %254, i1 false)
  %255 = load ptr, ptr %229, align 8, !tbaa !18
  %256 = load i32, ptr %24, align 8, !tbaa !16
  br label %257

257:                                              ; preds = %253, %244
  %258 = phi i32 [ %256, %253 ], [ %247, %244 ]
  %259 = phi ptr [ %255, %253 ], [ %252, %244 ]
  store i32 %251, ptr %75, align 8, !tbaa !28
  store ptr %259, ptr %74, align 8, !tbaa !23
  %260 = icmp eq i32 %258, 0
  br i1 %260, label %261, label %293

261:                                              ; preds = %257
  %262 = load i32, ptr %231, align 4, !tbaa !17
  %263 = shl i32 %262, 1
  %264 = zext i32 %263 to i64
  %265 = tail call noalias ptr @malloc(i64 noundef %264) #17
  store ptr %265, ptr %229, align 8, !tbaa !18
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %268

267:                                              ; preds = %261
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %391

268:                                              ; preds = %261
  %269 = load i32, ptr %230, align 8, !tbaa !19
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %268
  store i32 %262, ptr %24, align 8, !tbaa !16
  br label %296

272:                                              ; preds = %268
  %273 = zext i32 %262 to i64
  %274 = tail call noalias ptr @malloc(i64 noundef %273) #17
  store ptr %274, ptr %232, align 8, !tbaa !20
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %272
  tail call void @free(ptr noundef nonnull %265) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %391

277:                                              ; preds = %272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %233, i8 0, i64 24, i1 false)
  %278 = load i32, ptr %234, align 8, !tbaa !21
  %279 = load i32, ptr %235, align 4, !tbaa !22
  %280 = tail call i32 @deflateInit2_(ptr noundef nonnull %74, i32 noundef %278, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %279, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %277
  %283 = load ptr, ptr %232, align 8, !tbaa !20
  tail call void @free(ptr noundef %283) #16
  %284 = load ptr, ptr %229, align 8, !tbaa !18
  tail call void @free(ptr noundef %284) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %391

285:                                              ; preds = %277
  store ptr null, ptr %74, align 8, !tbaa !23
  %286 = load i32, ptr %230, align 8, !tbaa !19
  %287 = load i32, ptr %231, align 4, !tbaa !17
  store i32 %287, ptr %24, align 8, !tbaa !16
  %288 = icmp eq i32 %286, 0
  br i1 %288, label %291, label %289

289:                                              ; preds = %285
  %290 = load i32, ptr %75, align 8, !tbaa !28
  br label %296

291:                                              ; preds = %285
  store i32 %287, ptr %238, align 8, !tbaa !24
  %292 = load ptr, ptr %232, align 8, !tbaa !20
  store ptr %292, ptr %239, align 8, !tbaa !25
  store ptr %292, ptr %240, align 8, !tbaa !26
  br label %330

293:                                              ; preds = %257
  %294 = load i32, ptr %230, align 8, !tbaa !19
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %330, label %296

296:                                              ; preds = %293, %289, %271
  %297 = phi ptr [ null, %289 ], [ %259, %293 ], [ %259, %271 ]
  %298 = phi i32 [ %290, %289 ], [ %251, %293 ], [ %251, %271 ]
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %391, label %300

300:                                              ; preds = %296
  %301 = tail call ptr @__errno_location() #18
  br label %302

302:                                              ; preds = %324, %300
  %303 = phi ptr [ %297, %300 ], [ %328, %324 ]
  store i32 0, ptr %301, align 4, !tbaa !29
  store i32 0, ptr %236, align 4, !tbaa !15
  %304 = load i32, ptr %75, align 8, !tbaa !28
  %305 = tail call i32 @llvm.umin.i32(i32 %304, i32 1073741824)
  %306 = load i32, ptr %237, align 4, !tbaa !30
  %307 = zext nneg i32 %305 to i64
  %308 = tail call i64 @write(i32 noundef %306, ptr noundef %303, i64 noundef %307) #16
  %309 = trunc i64 %308 to i32
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %319

311:                                              ; preds = %302
  %312 = load i32, ptr %301, align 4, !tbaa !29
  %313 = icmp eq i32 %312, 11
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  store i32 1, ptr %236, align 4, !tbaa !15
  %315 = load i32, ptr %301, align 4, !tbaa !29
  br label %316

316:                                              ; preds = %314, %311
  %317 = phi i32 [ %312, %311 ], [ %315, %314 ]
  %318 = tail call ptr @strerror(i32 noundef %317) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %318) #16
  br label %391

319:                                              ; preds = %302
  %320 = load i32, ptr %75, align 8, !tbaa !28
  %321 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %320, i32 %309), !nosanitize !31
  %322 = extractvalue { i32, i1 } %321, 1, !nosanitize !31
  br i1 %322, label %323, label %324, !nosanitize !31

323:                                              ; preds = %319, %386
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

324:                                              ; preds = %319
  %325 = extractvalue { i32, i1 } %321, 0, !nosanitize !31
  store i32 %325, ptr %75, align 8, !tbaa !28
  %326 = load ptr, ptr %74, align 8, !tbaa !23
  %327 = and i64 %308, 4294967295
  %328 = getelementptr inbounds i8, ptr %326, i64 %327
  store ptr %328, ptr %74, align 8, !tbaa !23
  %329 = icmp eq i32 %325, 0
  br i1 %329, label %391, label %302, !llvm.loop !32

330:                                              ; preds = %293, %291
  %331 = load i32, ptr %241, align 8, !tbaa !34
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %338, label %333

333:                                              ; preds = %330
  %334 = load i32, ptr %75, align 8, !tbaa !28
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %391, label %336

336:                                              ; preds = %333
  %337 = tail call i32 @deflateReset(ptr noundef nonnull %74) #16
  store i32 0, ptr %241, align 8, !tbaa !34
  br label %338

338:                                              ; preds = %336, %330
  %339 = load i32, ptr %238, align 8, !tbaa !24
  br label %340

340:                                              ; preds = %389, %338
  %341 = phi i32 [ %339, %338 ], [ %387, %389 ]
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %381

343:                                              ; preds = %340
  %344 = load ptr, ptr %239, align 8, !tbaa !25
  %345 = load ptr, ptr %240, align 8, !tbaa !26
  %346 = icmp ugt ptr %344, %345
  br i1 %346, label %347, label %378

347:                                              ; preds = %343
  %348 = tail call ptr @__errno_location() #18
  br label %349

349:                                              ; preds = %369, %347
  %350 = phi ptr [ %345, %347 ], [ %372, %369 ]
  %351 = phi ptr [ %344, %347 ], [ %373, %369 ]
  store i32 0, ptr %348, align 4, !tbaa !29
  store i32 0, ptr %236, align 4, !tbaa !15
  %352 = ptrtoint ptr %351 to i64
  %353 = ptrtoint ptr %350 to i64
  %354 = sub i64 %352, %353
  %355 = tail call i64 @llvm.smin.i64(i64 %354, i64 1073741824)
  %356 = load i32, ptr %237, align 4, !tbaa !30
  %357 = and i64 %355, 4294967295
  %358 = tail call i64 @write(i32 noundef %356, ptr noundef %350, i64 noundef %357) #16
  %359 = and i64 %358, 2147483648
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %369, label %361

361:                                              ; preds = %349
  %362 = load i32, ptr %348, align 4, !tbaa !29
  %363 = icmp eq i32 %362, 11
  br i1 %363, label %364, label %366

364:                                              ; preds = %361
  store i32 1, ptr %236, align 4, !tbaa !15
  %365 = load i32, ptr %348, align 4, !tbaa !29
  br label %366

366:                                              ; preds = %364, %361
  %367 = phi i32 [ %362, %361 ], [ %365, %364 ]
  %368 = tail call ptr @strerror(i32 noundef %367) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %368) #16
  br label %391

369:                                              ; preds = %349
  %370 = load ptr, ptr %240, align 8, !tbaa !26
  %371 = and i64 %358, 2147483647
  %372 = getelementptr inbounds i8, ptr %370, i64 %371
  store ptr %372, ptr %240, align 8, !tbaa !26
  %373 = load ptr, ptr %239, align 8, !tbaa !25
  %374 = icmp ugt ptr %373, %372
  br i1 %374, label %349, label %375, !llvm.loop !35

375:                                              ; preds = %369
  %376 = load i32, ptr %238, align 8, !tbaa !24
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %375, %343
  %379 = load i32, ptr %24, align 8, !tbaa !16
  store i32 %379, ptr %238, align 8, !tbaa !24
  %380 = load ptr, ptr %232, align 8, !tbaa !20
  store ptr %380, ptr %239, align 8, !tbaa !25
  store ptr %380, ptr %240, align 8, !tbaa !26
  br label %381

381:                                              ; preds = %378, %375, %340
  %382 = phi i32 [ %376, %375 ], [ %379, %378 ], [ %341, %340 ]
  %383 = tail call i32 @deflate(ptr noundef nonnull %74, i32 noundef 0) #16
  %384 = icmp eq i32 %383, -2
  br i1 %384, label %385, label %386

385:                                              ; preds = %381
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %391

386:                                              ; preds = %381
  %387 = load i32, ptr %238, align 8, !tbaa !24
  %388 = icmp ult i32 %382, %387
  br i1 %388, label %323, label %389, !nosanitize !31

389:                                              ; preds = %386
  %390 = icmp eq i32 %382, %387
  br i1 %390, label %391, label %340, !llvm.loop !36

391:                                              ; preds = %324, %389, %385, %366, %333, %316, %296, %282, %276, %267
  %392 = phi i1 [ true, %316 ], [ true, %366 ], [ true, %385 ], [ false, %333 ], [ true, %267 ], [ true, %276 ], [ true, %282 ], [ false, %296 ], [ false, %389 ], [ false, %324 ]
  %393 = load i32, ptr %75, align 8, !tbaa !28
  %394 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %251, i32 %393), !nosanitize !31
  %395 = extractvalue { i32, i1 } %394, 1, !nosanitize !31
  br i1 %395, label %396, label %397, !nosanitize !31

396:                                              ; preds = %404, %391
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

397:                                              ; preds = %391
  %398 = extractvalue { i32, i1 } %394, 0, !nosanitize !31
  %399 = zext i32 %398 to i64
  %400 = load i64, ptr %242, align 8, !tbaa !37
  %401 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %400, i64 %399), !nosanitize !31
  %402 = extractvalue { i64, i1 } %401, 1, !nosanitize !31
  br i1 %402, label %403, label %404, !nosanitize !31

403:                                              ; preds = %397
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

404:                                              ; preds = %397
  %405 = extractvalue { i64, i1 } %401, 0, !nosanitize !31
  store i64 %405, ptr %242, align 8, !tbaa !37
  %406 = load i64, ptr %70, align 8, !tbaa !27
  %407 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %406, i64 %399), !nosanitize !31
  %408 = extractvalue { i64, i1 } %407, 0, !nosanitize !31
  %409 = extractvalue { i64, i1 } %407, 1, !nosanitize !31
  br i1 %409, label %396, label %410, !nosanitize !31

410:                                              ; preds = %404
  store i64 %408, ptr %70, align 8, !tbaa !27
  br i1 %392, label %955, label %411

411:                                              ; preds = %410
  %412 = icmp eq i64 %408, 0
  br i1 %412, label %413, label %244, !llvm.loop !38

413:                                              ; preds = %411
  %414 = load i32, ptr %24, align 8, !tbaa !16
  br label %415

415:                                              ; preds = %413, %68
  %416 = phi i32 [ %414, %413 ], [ %69, %68 ]
  %417 = icmp ugt i32 %416, %2
  %418 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %419 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  br i1 %417, label %420, label %625

420:                                              ; preds = %415
  %421 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %422 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %423 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %424 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %425 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %426 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %427 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %428 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %429 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %430 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %431 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %432 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %433 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %434 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  br label %435

435:                                              ; preds = %562, %420
  %436 = phi i64 [ %21, %420 ], [ %480, %562 ]
  %437 = phi ptr [ %1, %420 ], [ %478, %562 ]
  %438 = load i32, ptr %419, align 8, !tbaa !39
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %443, label %440

440:                                              ; preds = %435
  %441 = load ptr, ptr %418, align 8, !tbaa !40
  %442 = load ptr, ptr %421, align 8, !tbaa !18
  br label %445

443:                                              ; preds = %435
  %444 = load ptr, ptr %421, align 8, !tbaa !18
  store ptr %444, ptr %418, align 8, !tbaa !40
  br label %445

445:                                              ; preds = %443, %440
  %446 = phi ptr [ %442, %440 ], [ %444, %443 ]
  %447 = phi ptr [ %441, %440 ], [ %444, %443 ]
  %448 = zext i32 %438 to i64
  %449 = getelementptr inbounds i8, ptr %447, i64 %448
  %450 = ptrtoint ptr %449 to i64
  %451 = ptrtoint ptr %446 to i64
  %452 = sub i64 %450, %451
  %453 = trunc i64 %452 to i32
  %454 = load i32, ptr %24, align 8, !tbaa !16
  %455 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %454, i32 %453), !nosanitize !31
  %456 = extractvalue { i32, i1 } %455, 1, !nosanitize !31
  br i1 %456, label %457, label %458, !nosanitize !31

457:                                              ; preds = %940, %929, %476, %445, %949, %621
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

458:                                              ; preds = %445
  %459 = extractvalue { i32, i1 } %455, 0, !nosanitize !31
  %460 = zext i32 %459 to i64
  %461 = icmp ult i64 %436, %460
  %462 = trunc i64 %436 to i32
  %463 = select i1 %461, i32 %462, i32 %459
  %464 = and i64 %452, 4294967295
  %465 = getelementptr inbounds i8, ptr %446, i64 %464
  %466 = zext i32 %463 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %465, ptr align 1 %437, i64 %466, i1 false)
  %467 = load i32, ptr %419, align 8, !tbaa !39
  %468 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %467, i32 %463), !nosanitize !31
  %469 = extractvalue { i32, i1 } %468, 1, !nosanitize !31
  br i1 %469, label %470, label %471, !nosanitize !31

470:                                              ; preds = %934, %471, %458
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

471:                                              ; preds = %458
  %472 = extractvalue { i32, i1 } %468, 0, !nosanitize !31
  store i32 %472, ptr %419, align 8, !tbaa !39
  %473 = load i64, ptr %422, align 8, !tbaa !37
  %474 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %473, i64 %466), !nosanitize !31
  %475 = extractvalue { i64, i1 } %474, 1, !nosanitize !31
  br i1 %475, label %470, label %476, !nosanitize !31

476:                                              ; preds = %471
  %477 = extractvalue { i64, i1 } %474, 0, !nosanitize !31
  store i64 %477, ptr %422, align 8, !tbaa !37
  %478 = getelementptr inbounds i8, ptr %437, i64 %466
  %479 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %436, i64 %466), !nosanitize !31
  %480 = extractvalue { i64, i1 } %479, 0, !nosanitize !31
  %481 = extractvalue { i64, i1 } %479, 1, !nosanitize !31
  br i1 %481, label %457, label %482, !nosanitize !31

482:                                              ; preds = %476
  %483 = icmp eq i64 %480, 0
  br i1 %483, label %955, label %484

484:                                              ; preds = %482
  %485 = load i32, ptr %24, align 8, !tbaa !16
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %519

487:                                              ; preds = %484
  %488 = load i32, ptr %424, align 4, !tbaa !17
  %489 = shl i32 %488, 1
  %490 = zext i32 %489 to i64
  %491 = tail call noalias ptr @malloc(i64 noundef %490) #17
  store ptr %491, ptr %421, align 8, !tbaa !18
  %492 = icmp eq ptr %491, null
  br i1 %492, label %493, label %494

493:                                              ; preds = %487
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %618

494:                                              ; preds = %487
  %495 = load i32, ptr %423, align 8, !tbaa !19
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %498, label %497

497:                                              ; preds = %494
  store i32 %488, ptr %24, align 8, !tbaa !16
  br label %522

498:                                              ; preds = %494
  %499 = zext i32 %488 to i64
  %500 = tail call noalias ptr @malloc(i64 noundef %499) #17
  store ptr %500, ptr %425, align 8, !tbaa !20
  %501 = icmp eq ptr %500, null
  br i1 %501, label %502, label %503

502:                                              ; preds = %498
  tail call void @free(ptr noundef nonnull %491) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %618

503:                                              ; preds = %498
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %426, i8 0, i64 24, i1 false)
  %504 = load i32, ptr %427, align 8, !tbaa !21
  %505 = load i32, ptr %428, align 4, !tbaa !22
  %506 = tail call i32 @deflateInit2_(ptr noundef nonnull %418, i32 noundef %504, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %505, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %511, label %508

508:                                              ; preds = %503
  %509 = load ptr, ptr %425, align 8, !tbaa !20
  tail call void @free(ptr noundef %509) #16
  %510 = load ptr, ptr %421, align 8, !tbaa !18
  tail call void @free(ptr noundef %510) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %618

511:                                              ; preds = %503
  store ptr null, ptr %418, align 8, !tbaa !23
  %512 = load i32, ptr %423, align 8, !tbaa !19
  %513 = load i32, ptr %424, align 4, !tbaa !17
  store i32 %513, ptr %24, align 8, !tbaa !16
  %514 = icmp eq i32 %512, 0
  br i1 %514, label %517, label %515

515:                                              ; preds = %511
  %516 = load i32, ptr %419, align 8, !tbaa !28
  br label %522

517:                                              ; preds = %511
  store i32 %513, ptr %431, align 8, !tbaa !24
  %518 = load ptr, ptr %425, align 8, !tbaa !20
  store ptr %518, ptr %432, align 8, !tbaa !25
  store ptr %518, ptr %433, align 8, !tbaa !26
  br label %556

519:                                              ; preds = %484
  %520 = load i32, ptr %423, align 8, !tbaa !19
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %556, label %522

522:                                              ; preds = %519, %515, %497
  %523 = phi i32 [ %516, %515 ], [ %472, %519 ], [ %472, %497 ]
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %562, label %525

525:                                              ; preds = %522
  %526 = tail call ptr @__errno_location() #18
  %527 = load ptr, ptr %418, align 8, !tbaa !23
  br label %528

528:                                              ; preds = %550, %525
  %529 = phi ptr [ %527, %525 ], [ %554, %550 ]
  store i32 0, ptr %526, align 4, !tbaa !29
  store i32 0, ptr %429, align 4, !tbaa !15
  %530 = load i32, ptr %419, align 8, !tbaa !28
  %531 = tail call i32 @llvm.umin.i32(i32 %530, i32 1073741824)
  %532 = load i32, ptr %430, align 4, !tbaa !30
  %533 = zext nneg i32 %531 to i64
  %534 = tail call i64 @write(i32 noundef %532, ptr noundef %529, i64 noundef %533) #16
  %535 = trunc i64 %534 to i32
  %536 = icmp slt i32 %535, 0
  br i1 %536, label %537, label %545

537:                                              ; preds = %528
  %538 = load i32, ptr %526, align 4, !tbaa !29
  %539 = icmp eq i32 %538, 11
  br i1 %539, label %540, label %542

540:                                              ; preds = %537
  store i32 1, ptr %429, align 4, !tbaa !15
  %541 = load i32, ptr %526, align 4, !tbaa !29
  br label %542

542:                                              ; preds = %540, %537
  %543 = phi i32 [ %538, %537 ], [ %541, %540 ]
  %544 = tail call ptr @strerror(i32 noundef %543) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %544) #16
  br label %618

545:                                              ; preds = %528
  %546 = load i32, ptr %419, align 8, !tbaa !28
  %547 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %546, i32 %535), !nosanitize !31
  %548 = extractvalue { i32, i1 } %547, 1, !nosanitize !31
  br i1 %548, label %549, label %550, !nosanitize !31

549:                                              ; preds = %545, %613
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

550:                                              ; preds = %545
  %551 = extractvalue { i32, i1 } %547, 0, !nosanitize !31
  store i32 %551, ptr %419, align 8, !tbaa !28
  %552 = load ptr, ptr %418, align 8, !tbaa !23
  %553 = and i64 %534, 4294967295
  %554 = getelementptr inbounds i8, ptr %552, i64 %553
  store ptr %554, ptr %418, align 8, !tbaa !23
  %555 = icmp eq i32 %551, 0
  br i1 %555, label %562, label %528, !llvm.loop !32

556:                                              ; preds = %519, %517
  %557 = load i32, ptr %434, align 8, !tbaa !34
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %565, label %559

559:                                              ; preds = %556
  %560 = load i32, ptr %419, align 8, !tbaa !28
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %550, %616, %559, %522
  br label %435

563:                                              ; preds = %559
  %564 = tail call i32 @deflateReset(ptr noundef nonnull %418) #16
  store i32 0, ptr %434, align 8, !tbaa !34
  br label %565

565:                                              ; preds = %563, %556
  %566 = load i32, ptr %431, align 8, !tbaa !24
  br label %567

567:                                              ; preds = %616, %565
  %568 = phi i32 [ %566, %565 ], [ %614, %616 ]
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %608

570:                                              ; preds = %567
  %571 = load ptr, ptr %432, align 8, !tbaa !25
  %572 = load ptr, ptr %433, align 8, !tbaa !26
  %573 = icmp ugt ptr %571, %572
  br i1 %573, label %574, label %605

574:                                              ; preds = %570
  %575 = tail call ptr @__errno_location() #18
  br label %576

576:                                              ; preds = %596, %574
  %577 = phi ptr [ %572, %574 ], [ %599, %596 ]
  %578 = phi ptr [ %571, %574 ], [ %600, %596 ]
  store i32 0, ptr %575, align 4, !tbaa !29
  store i32 0, ptr %429, align 4, !tbaa !15
  %579 = ptrtoint ptr %578 to i64
  %580 = ptrtoint ptr %577 to i64
  %581 = sub i64 %579, %580
  %582 = tail call i64 @llvm.smin.i64(i64 %581, i64 1073741824)
  %583 = load i32, ptr %430, align 4, !tbaa !30
  %584 = and i64 %582, 4294967295
  %585 = tail call i64 @write(i32 noundef %583, ptr noundef %577, i64 noundef %584) #16
  %586 = and i64 %585, 2147483648
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %596, label %588

588:                                              ; preds = %576
  %589 = load i32, ptr %575, align 4, !tbaa !29
  %590 = icmp eq i32 %589, 11
  br i1 %590, label %591, label %593

591:                                              ; preds = %588
  store i32 1, ptr %429, align 4, !tbaa !15
  %592 = load i32, ptr %575, align 4, !tbaa !29
  br label %593

593:                                              ; preds = %591, %588
  %594 = phi i32 [ %589, %588 ], [ %592, %591 ]
  %595 = tail call ptr @strerror(i32 noundef %594) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %595) #16
  br label %618

596:                                              ; preds = %576
  %597 = load ptr, ptr %433, align 8, !tbaa !26
  %598 = and i64 %585, 2147483647
  %599 = getelementptr inbounds i8, ptr %597, i64 %598
  store ptr %599, ptr %433, align 8, !tbaa !26
  %600 = load ptr, ptr %432, align 8, !tbaa !25
  %601 = icmp ugt ptr %600, %599
  br i1 %601, label %576, label %602, !llvm.loop !35

602:                                              ; preds = %596
  %603 = load i32, ptr %431, align 8, !tbaa !24
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %602, %570
  %606 = load i32, ptr %24, align 8, !tbaa !16
  store i32 %606, ptr %431, align 8, !tbaa !24
  %607 = load ptr, ptr %425, align 8, !tbaa !20
  store ptr %607, ptr %432, align 8, !tbaa !25
  store ptr %607, ptr %433, align 8, !tbaa !26
  br label %608

608:                                              ; preds = %605, %602, %567
  %609 = phi i32 [ %603, %602 ], [ %606, %605 ], [ %568, %567 ]
  %610 = tail call i32 @deflate(ptr noundef nonnull %418, i32 noundef 0) #16
  %611 = icmp eq i32 %610, -2
  br i1 %611, label %612, label %613

612:                                              ; preds = %608
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %618

613:                                              ; preds = %608
  %614 = load i32, ptr %431, align 8, !tbaa !24
  %615 = icmp ult i32 %609, %614
  br i1 %615, label %549, label %616, !nosanitize !31

616:                                              ; preds = %613
  %617 = icmp eq i32 %609, %614
  br i1 %617, label %562, label %567, !llvm.loop !36

618:                                              ; preds = %612, %593, %542, %508, %502, %493
  %619 = load i32, ptr %429, align 4, !tbaa !15
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %955, label %621

621:                                              ; preds = %618
  %622 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %21, i64 %480), !nosanitize !31
  %623 = extractvalue { i64, i1 } %622, 0, !nosanitize !31
  %624 = extractvalue { i64, i1 } %622, 1, !nosanitize !31
  br i1 %624, label %457, label %955, !nosanitize !31

625:                                              ; preds = %415
  %626 = load i32, ptr %419, align 8, !tbaa !28
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %778, label %628

628:                                              ; preds = %625
  %629 = icmp eq i32 %416, 0
  br i1 %629, label %630, label %670

630:                                              ; preds = %628
  %631 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %632 = load i32, ptr %631, align 4, !tbaa !17
  %633 = shl i32 %632, 1
  %634 = zext i32 %633 to i64
  %635 = tail call noalias ptr @malloc(i64 noundef %634) #17
  %636 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %635, ptr %636, align 8, !tbaa !18
  %637 = icmp eq ptr %635, null
  br i1 %637, label %638, label %639

638:                                              ; preds = %630
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

639:                                              ; preds = %630
  %640 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %641 = load i32, ptr %640, align 8, !tbaa !19
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %644, label %643

643:                                              ; preds = %639
  store i32 %632, ptr %24, align 8, !tbaa !16
  br label %677

644:                                              ; preds = %639
  %645 = zext i32 %632 to i64
  %646 = tail call noalias ptr @malloc(i64 noundef %645) #17
  %647 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %646, ptr %647, align 8, !tbaa !20
  %648 = icmp eq ptr %646, null
  br i1 %648, label %649, label %650

649:                                              ; preds = %644
  tail call void @free(ptr noundef nonnull %635) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

650:                                              ; preds = %644
  %651 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %652 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %651, i8 0, i64 24, i1 false)
  %653 = load i32, ptr %652, align 8, !tbaa !21
  %654 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %655 = load i32, ptr %654, align 4, !tbaa !22
  %656 = tail call i32 @deflateInit2_(ptr noundef nonnull %418, i32 noundef %653, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %655, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %661, label %658

658:                                              ; preds = %650
  %659 = load ptr, ptr %647, align 8, !tbaa !20
  tail call void @free(ptr noundef %659) #16
  %660 = load ptr, ptr %636, align 8, !tbaa !18
  tail call void @free(ptr noundef %660) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

661:                                              ; preds = %650
  store ptr null, ptr %418, align 8, !tbaa !23
  %662 = load i32, ptr %640, align 8, !tbaa !19
  %663 = load i32, ptr %631, align 4, !tbaa !17
  store i32 %663, ptr %24, align 8, !tbaa !16
  %664 = icmp eq i32 %662, 0
  br i1 %664, label %665, label %674

665:                                              ; preds = %661
  %666 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %663, ptr %666, align 8, !tbaa !24
  %667 = load ptr, ptr %647, align 8, !tbaa !20
  %668 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %667, ptr %668, align 8, !tbaa !25
  %669 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %667, ptr %669, align 8, !tbaa !26
  br label %710

670:                                              ; preds = %628
  %671 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %672 = load i32, ptr %671, align 8, !tbaa !19
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %710, label %677

674:                                              ; preds = %661
  %675 = load i32, ptr %419, align 8, !tbaa !28
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %778, label %677

677:                                              ; preds = %674, %670, %643
  %678 = tail call ptr @__errno_location() #18
  %679 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %680 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %681 = load ptr, ptr %418, align 8, !tbaa !23
  br label %682

682:                                              ; preds = %704, %677
  %683 = phi ptr [ %681, %677 ], [ %708, %704 ]
  store i32 0, ptr %678, align 4, !tbaa !29
  store i32 0, ptr %679, align 4, !tbaa !15
  %684 = load i32, ptr %419, align 8, !tbaa !28
  %685 = tail call i32 @llvm.umin.i32(i32 %684, i32 1073741824)
  %686 = load i32, ptr %680, align 4, !tbaa !30
  %687 = zext nneg i32 %685 to i64
  %688 = tail call i64 @write(i32 noundef %686, ptr noundef %683, i64 noundef %687) #16
  %689 = trunc i64 %688 to i32
  %690 = icmp slt i32 %689, 0
  br i1 %690, label %691, label %699

691:                                              ; preds = %682
  %692 = load i32, ptr %678, align 4, !tbaa !29
  %693 = icmp eq i32 %692, 11
  br i1 %693, label %694, label %696

694:                                              ; preds = %691
  store i32 1, ptr %679, align 4, !tbaa !15
  %695 = load i32, ptr %678, align 4, !tbaa !29
  br label %696

696:                                              ; preds = %694, %691
  %697 = phi i32 [ %692, %691 ], [ %695, %694 ]
  %698 = tail call ptr @strerror(i32 noundef %697) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %698) #16
  br label %955

699:                                              ; preds = %682
  %700 = load i32, ptr %419, align 8, !tbaa !28
  %701 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %700, i32 %689), !nosanitize !31
  %702 = extractvalue { i32, i1 } %701, 1, !nosanitize !31
  br i1 %702, label %703, label %704, !nosanitize !31

703:                                              ; preds = %699, %773
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

704:                                              ; preds = %699
  %705 = extractvalue { i32, i1 } %701, 0, !nosanitize !31
  store i32 %705, ptr %419, align 8, !tbaa !28
  %706 = load ptr, ptr %418, align 8, !tbaa !23
  %707 = and i64 %688, 4294967295
  %708 = getelementptr inbounds i8, ptr %706, i64 %707
  store ptr %708, ptr %418, align 8, !tbaa !23
  %709 = icmp eq i32 %705, 0
  br i1 %709, label %778, label %682, !llvm.loop !32

710:                                              ; preds = %670, %665
  %711 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %712 = load i32, ptr %711, align 8, !tbaa !34
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %719, label %714

714:                                              ; preds = %710
  %715 = load i32, ptr %419, align 8, !tbaa !28
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %778, label %717

717:                                              ; preds = %714
  %718 = tail call i32 @deflateReset(ptr noundef nonnull %418) #16
  store i32 0, ptr %711, align 8, !tbaa !34
  br label %719

719:                                              ; preds = %717, %710
  %720 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %721 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %722 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %723 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %724 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %725 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %726 = load i32, ptr %720, align 8, !tbaa !24
  br label %727

727:                                              ; preds = %776, %719
  %728 = phi i32 [ %726, %719 ], [ %774, %776 ]
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %730, label %768

730:                                              ; preds = %727
  %731 = load ptr, ptr %721, align 8, !tbaa !25
  %732 = load ptr, ptr %722, align 8, !tbaa !26
  %733 = icmp ugt ptr %731, %732
  br i1 %733, label %734, label %765

734:                                              ; preds = %730
  %735 = tail call ptr @__errno_location() #18
  br label %736

736:                                              ; preds = %756, %734
  %737 = phi ptr [ %732, %734 ], [ %759, %756 ]
  %738 = phi ptr [ %731, %734 ], [ %760, %756 ]
  store i32 0, ptr %735, align 4, !tbaa !29
  store i32 0, ptr %723, align 4, !tbaa !15
  %739 = ptrtoint ptr %738 to i64
  %740 = ptrtoint ptr %737 to i64
  %741 = sub i64 %739, %740
  %742 = tail call i64 @llvm.smin.i64(i64 %741, i64 1073741824)
  %743 = load i32, ptr %724, align 4, !tbaa !30
  %744 = and i64 %742, 4294967295
  %745 = tail call i64 @write(i32 noundef %743, ptr noundef %737, i64 noundef %744) #16
  %746 = and i64 %745, 2147483648
  %747 = icmp eq i64 %746, 0
  br i1 %747, label %756, label %748

748:                                              ; preds = %736
  %749 = load i32, ptr %735, align 4, !tbaa !29
  %750 = icmp eq i32 %749, 11
  br i1 %750, label %751, label %753

751:                                              ; preds = %748
  store i32 1, ptr %723, align 4, !tbaa !15
  %752 = load i32, ptr %735, align 4, !tbaa !29
  br label %753

753:                                              ; preds = %751, %748
  %754 = phi i32 [ %749, %748 ], [ %752, %751 ]
  %755 = tail call ptr @strerror(i32 noundef %754) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %755) #16
  br label %955

756:                                              ; preds = %736
  %757 = load ptr, ptr %722, align 8, !tbaa !26
  %758 = and i64 %745, 2147483647
  %759 = getelementptr inbounds i8, ptr %757, i64 %758
  store ptr %759, ptr %722, align 8, !tbaa !26
  %760 = load ptr, ptr %721, align 8, !tbaa !25
  %761 = icmp ugt ptr %760, %759
  br i1 %761, label %736, label %762, !llvm.loop !35

762:                                              ; preds = %756
  %763 = load i32, ptr %720, align 8, !tbaa !24
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %768

765:                                              ; preds = %762, %730
  %766 = load i32, ptr %24, align 8, !tbaa !16
  store i32 %766, ptr %720, align 8, !tbaa !24
  %767 = load ptr, ptr %725, align 8, !tbaa !20
  store ptr %767, ptr %721, align 8, !tbaa !25
  store ptr %767, ptr %722, align 8, !tbaa !26
  br label %768

768:                                              ; preds = %765, %762, %727
  %769 = phi i32 [ %763, %762 ], [ %766, %765 ], [ %728, %727 ]
  %770 = tail call i32 @deflate(ptr noundef nonnull %418, i32 noundef 0) #16
  %771 = icmp eq i32 %770, -2
  br i1 %771, label %772, label %773

772:                                              ; preds = %768
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %955

773:                                              ; preds = %768
  %774 = load i32, ptr %720, align 8, !tbaa !24
  %775 = icmp ult i32 %769, %774
  br i1 %775, label %703, label %776, !nosanitize !31

776:                                              ; preds = %773
  %777 = icmp eq i32 %769, %774
  br i1 %777, label %778, label %727, !llvm.loop !36

778:                                              ; preds = %704, %776, %714, %674, %625
  store ptr %1, ptr %418, align 8, !tbaa !40
  %779 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %780 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %781 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %782 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %783 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %784 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %785 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %786 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %787 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %788 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %789 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %790 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %791 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %792 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  br label %793

793:                                              ; preds = %953, %778
  %794 = phi i64 [ %21, %778 ], [ %943, %953 ]
  %795 = tail call i64 @llvm.umin.i64(i64 %794, i64 4294967295)
  %796 = trunc i64 %795 to i32
  store i32 %796, ptr %419, align 8, !tbaa !39
  %797 = load i32, ptr %24, align 8, !tbaa !16
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %799, label %831

799:                                              ; preds = %793
  %800 = load i32, ptr %780, align 4, !tbaa !17
  %801 = shl i32 %800, 1
  %802 = zext i32 %801 to i64
  %803 = tail call noalias ptr @malloc(i64 noundef %802) #17
  store ptr %803, ptr %781, align 8, !tbaa !18
  %804 = icmp eq ptr %803, null
  br i1 %804, label %805, label %806

805:                                              ; preds = %799
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %929

806:                                              ; preds = %799
  %807 = load i32, ptr %779, align 8, !tbaa !19
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %810, label %809

809:                                              ; preds = %806
  store i32 %800, ptr %24, align 8, !tbaa !16
  br label %834

810:                                              ; preds = %806
  %811 = zext i32 %800 to i64
  %812 = tail call noalias ptr @malloc(i64 noundef %811) #17
  store ptr %812, ptr %782, align 8, !tbaa !20
  %813 = icmp eq ptr %812, null
  br i1 %813, label %814, label %815

814:                                              ; preds = %810
  tail call void @free(ptr noundef nonnull %803) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %929

815:                                              ; preds = %810
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %783, i8 0, i64 24, i1 false)
  %816 = load i32, ptr %784, align 8, !tbaa !21
  %817 = load i32, ptr %785, align 4, !tbaa !22
  %818 = tail call i32 @deflateInit2_(ptr noundef nonnull %418, i32 noundef %816, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %817, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %823, label %820

820:                                              ; preds = %815
  %821 = load ptr, ptr %782, align 8, !tbaa !20
  tail call void @free(ptr noundef %821) #16
  %822 = load ptr, ptr %781, align 8, !tbaa !18
  tail call void @free(ptr noundef %822) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %929

823:                                              ; preds = %815
  store ptr null, ptr %418, align 8, !tbaa !23
  %824 = load i32, ptr %779, align 8, !tbaa !19
  %825 = load i32, ptr %780, align 4, !tbaa !17
  store i32 %825, ptr %24, align 8, !tbaa !16
  %826 = icmp eq i32 %824, 0
  br i1 %826, label %829, label %827

827:                                              ; preds = %823
  %828 = load i32, ptr %419, align 8, !tbaa !28
  br label %834

829:                                              ; preds = %823
  store i32 %825, ptr %788, align 8, !tbaa !24
  %830 = load ptr, ptr %782, align 8, !tbaa !20
  store ptr %830, ptr %789, align 8, !tbaa !25
  store ptr %830, ptr %790, align 8, !tbaa !26
  br label %868

831:                                              ; preds = %793
  %832 = load i32, ptr %779, align 8, !tbaa !19
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %868, label %834

834:                                              ; preds = %831, %827, %809
  %835 = phi i32 [ %828, %827 ], [ %796, %831 ], [ %796, %809 ]
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %929, label %837

837:                                              ; preds = %834
  %838 = tail call ptr @__errno_location() #18
  %839 = load ptr, ptr %418, align 8, !tbaa !23
  br label %840

840:                                              ; preds = %862, %837
  %841 = phi ptr [ %839, %837 ], [ %866, %862 ]
  store i32 0, ptr %838, align 4, !tbaa !29
  store i32 0, ptr %786, align 4, !tbaa !15
  %842 = load i32, ptr %419, align 8, !tbaa !28
  %843 = tail call i32 @llvm.umin.i32(i32 %842, i32 1073741824)
  %844 = load i32, ptr %787, align 4, !tbaa !30
  %845 = zext nneg i32 %843 to i64
  %846 = tail call i64 @write(i32 noundef %844, ptr noundef %841, i64 noundef %845) #16
  %847 = trunc i64 %846 to i32
  %848 = icmp slt i32 %847, 0
  br i1 %848, label %849, label %857

849:                                              ; preds = %840
  %850 = load i32, ptr %838, align 4, !tbaa !29
  %851 = icmp eq i32 %850, 11
  br i1 %851, label %852, label %854

852:                                              ; preds = %849
  store i32 1, ptr %786, align 4, !tbaa !15
  %853 = load i32, ptr %838, align 4, !tbaa !29
  br label %854

854:                                              ; preds = %852, %849
  %855 = phi i32 [ %850, %849 ], [ %853, %852 ]
  %856 = tail call ptr @strerror(i32 noundef %855) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %856) #16
  br label %929

857:                                              ; preds = %840
  %858 = load i32, ptr %419, align 8, !tbaa !28
  %859 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %858, i32 %847), !nosanitize !31
  %860 = extractvalue { i32, i1 } %859, 1, !nosanitize !31
  br i1 %860, label %861, label %862, !nosanitize !31

861:                                              ; preds = %857, %924
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

862:                                              ; preds = %857
  %863 = extractvalue { i32, i1 } %859, 0, !nosanitize !31
  store i32 %863, ptr %419, align 8, !tbaa !28
  %864 = load ptr, ptr %418, align 8, !tbaa !23
  %865 = and i64 %846, 4294967295
  %866 = getelementptr inbounds i8, ptr %864, i64 %865
  store ptr %866, ptr %418, align 8, !tbaa !23
  %867 = icmp eq i32 %863, 0
  br i1 %867, label %929, label %840, !llvm.loop !32

868:                                              ; preds = %831, %829
  %869 = load i32, ptr %791, align 8, !tbaa !34
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %876, label %871

871:                                              ; preds = %868
  %872 = load i32, ptr %419, align 8, !tbaa !28
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %929, label %874

874:                                              ; preds = %871
  %875 = tail call i32 @deflateReset(ptr noundef nonnull %418) #16
  store i32 0, ptr %791, align 8, !tbaa !34
  br label %876

876:                                              ; preds = %874, %868
  %877 = load i32, ptr %788, align 8, !tbaa !24
  br label %878

878:                                              ; preds = %927, %876
  %879 = phi i32 [ %877, %876 ], [ %925, %927 ]
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %881, label %919

881:                                              ; preds = %878
  %882 = load ptr, ptr %789, align 8, !tbaa !25
  %883 = load ptr, ptr %790, align 8, !tbaa !26
  %884 = icmp ugt ptr %882, %883
  br i1 %884, label %885, label %916

885:                                              ; preds = %881
  %886 = tail call ptr @__errno_location() #18
  br label %887

887:                                              ; preds = %907, %885
  %888 = phi ptr [ %883, %885 ], [ %910, %907 ]
  %889 = phi ptr [ %882, %885 ], [ %911, %907 ]
  store i32 0, ptr %886, align 4, !tbaa !29
  store i32 0, ptr %786, align 4, !tbaa !15
  %890 = ptrtoint ptr %889 to i64
  %891 = ptrtoint ptr %888 to i64
  %892 = sub i64 %890, %891
  %893 = tail call i64 @llvm.smin.i64(i64 %892, i64 1073741824)
  %894 = load i32, ptr %787, align 4, !tbaa !30
  %895 = and i64 %893, 4294967295
  %896 = tail call i64 @write(i32 noundef %894, ptr noundef %888, i64 noundef %895) #16
  %897 = and i64 %896, 2147483648
  %898 = icmp eq i64 %897, 0
  br i1 %898, label %907, label %899

899:                                              ; preds = %887
  %900 = load i32, ptr %886, align 4, !tbaa !29
  %901 = icmp eq i32 %900, 11
  br i1 %901, label %902, label %904

902:                                              ; preds = %899
  store i32 1, ptr %786, align 4, !tbaa !15
  %903 = load i32, ptr %886, align 4, !tbaa !29
  br label %904

904:                                              ; preds = %902, %899
  %905 = phi i32 [ %900, %899 ], [ %903, %902 ]
  %906 = tail call ptr @strerror(i32 noundef %905) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %906) #16
  br label %929

907:                                              ; preds = %887
  %908 = load ptr, ptr %790, align 8, !tbaa !26
  %909 = and i64 %896, 2147483647
  %910 = getelementptr inbounds i8, ptr %908, i64 %909
  store ptr %910, ptr %790, align 8, !tbaa !26
  %911 = load ptr, ptr %789, align 8, !tbaa !25
  %912 = icmp ugt ptr %911, %910
  br i1 %912, label %887, label %913, !llvm.loop !35

913:                                              ; preds = %907
  %914 = load i32, ptr %788, align 8, !tbaa !24
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %916, label %919

916:                                              ; preds = %913, %881
  %917 = load i32, ptr %24, align 8, !tbaa !16
  store i32 %917, ptr %788, align 8, !tbaa !24
  %918 = load ptr, ptr %782, align 8, !tbaa !20
  store ptr %918, ptr %789, align 8, !tbaa !25
  store ptr %918, ptr %790, align 8, !tbaa !26
  br label %919

919:                                              ; preds = %916, %913, %878
  %920 = phi i32 [ %914, %913 ], [ %917, %916 ], [ %879, %878 ]
  %921 = tail call i32 @deflate(ptr noundef nonnull %418, i32 noundef 0) #16
  %922 = icmp eq i32 %921, -2
  br i1 %922, label %923, label %924

923:                                              ; preds = %919
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %929

924:                                              ; preds = %919
  %925 = load i32, ptr %788, align 8, !tbaa !24
  %926 = icmp ult i32 %920, %925
  br i1 %926, label %861, label %927, !nosanitize !31

927:                                              ; preds = %924
  %928 = icmp eq i32 %920, %925
  br i1 %928, label %929, label %878, !llvm.loop !36

929:                                              ; preds = %862, %927, %923, %904, %871, %854, %834, %820, %814, %805
  %930 = phi i1 [ true, %854 ], [ true, %904 ], [ true, %923 ], [ false, %871 ], [ true, %805 ], [ true, %814 ], [ true, %820 ], [ false, %834 ], [ false, %927 ], [ false, %862 ]
  %931 = load i32, ptr %419, align 8, !tbaa !39
  %932 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %796, i32 %931), !nosanitize !31
  %933 = extractvalue { i32, i1 } %932, 1, !nosanitize !31
  br i1 %933, label %457, label %934, !nosanitize !31

934:                                              ; preds = %929
  %935 = extractvalue { i32, i1 } %932, 0, !nosanitize !31
  %936 = zext i32 %935 to i64
  %937 = load i64, ptr %792, align 8, !tbaa !37
  %938 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %937, i64 %936), !nosanitize !31
  %939 = extractvalue { i64, i1 } %938, 1, !nosanitize !31
  br i1 %939, label %470, label %940, !nosanitize !31

940:                                              ; preds = %934
  %941 = extractvalue { i64, i1 } %938, 0, !nosanitize !31
  store i64 %941, ptr %792, align 8, !tbaa !37
  %942 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %794, i64 %936), !nosanitize !31
  %943 = extractvalue { i64, i1 } %942, 0, !nosanitize !31
  %944 = extractvalue { i64, i1 } %942, 1, !nosanitize !31
  br i1 %944, label %457, label %945, !nosanitize !31

945:                                              ; preds = %940
  br i1 %930, label %946, label %953

946:                                              ; preds = %945
  %947 = load i32, ptr %786, align 4, !tbaa !15
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %955, label %949

949:                                              ; preds = %946
  %950 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %21, i64 %943), !nosanitize !31
  %951 = extractvalue { i64, i1 } %950, 0, !nosanitize !31
  %952 = extractvalue { i64, i1 } %950, 1, !nosanitize !31
  br i1 %952, label %457, label %955, !nosanitize !31

953:                                              ; preds = %945
  %954 = icmp eq i64 %943, 0
  br i1 %954, label %955, label %793, !llvm.loop !41

955:                                              ; preds = %410, %953, %482, %20, %36, %47, %56, %88, %99, %108, %146, %203, %222, %618, %621, %638, %649, %658, %696, %753, %772, %946, %949
  %956 = phi i64 [ 0, %20 ], [ 0, %36 ], [ 0, %47 ], [ 0, %56 ], [ 0, %146 ], [ 0, %203 ], [ 0, %222 ], [ 0, %88 ], [ 0, %99 ], [ 0, %108 ], [ 0, %618 ], [ %623, %621 ], [ 0, %696 ], [ 0, %753 ], [ 0, %772 ], [ 0, %638 ], [ 0, %649 ], [ 0, %658 ], [ 0, %946 ], [ %951, %949 ], [ %21, %482 ], [ %21, %953 ], [ 0, %410 ]
  %957 = trunc i64 %956 to i32
  br label %958

958:                                              ; preds = %5, %13, %3, %955, %19
  %959 = phi i32 [ 0, %19 ], [ %957, %955 ], [ 0, %3 ], [ 0, %13 ], [ 0, %5 ]
  ret i32 %959
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfwrite(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %967, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %967

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 19
  %12 = load i32, ptr %11, align 8, !tbaa !14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %967, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef 0, ptr noundef null) #16
  %19 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !nosanitize !31
  %20 = extractvalue { i64, i1 } %19, 0, !nosanitize !31
  %21 = extractvalue { i64, i1 } %19, 1, !nosanitize !31
  br i1 %21, label %22, label %23, !nosanitize !31

22:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 12) #19, !nosanitize !31
  unreachable, !nosanitize !31

23:                                               ; preds = %18
  %24 = icmp eq i64 %1, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = udiv i64 %20, %1
  %27 = icmp eq i64 %26, %2
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.1) #16
  br label %967

29:                                               ; preds = %25, %23
  %30 = icmp eq i64 %20, 0
  br i1 %30, label %967, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21
  %37 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !17
  %39 = shl i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = tail call noalias ptr @malloc(i64 noundef %40) #17
  %42 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 6
  store ptr %41, ptr %42, align 8, !tbaa !18
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %964

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 8
  %47 = load i32, ptr %46, align 8, !tbaa !19
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 %38, ptr %32, align 8, !tbaa !16
  br label %76

50:                                               ; preds = %45
  %51 = zext i32 %38 to i64
  %52 = tail call noalias ptr @malloc(i64 noundef %51) #17
  %53 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 7
  store ptr %52, ptr %53, align 8, !tbaa !20
  %54 = icmp eq ptr %52, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  tail call void @free(ptr noundef nonnull %41) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %964

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 8
  %58 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  %59 = load i32, ptr %58, align 8, !tbaa !21
  %60 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 16
  %61 = load i32, ptr %60, align 4, !tbaa !22
  %62 = tail call i32 @deflateInit2_(ptr noundef nonnull %36, i32 noundef %59, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %61, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = load ptr, ptr %53, align 8, !tbaa !20
  tail call void @free(ptr noundef %65) #16
  %66 = load ptr, ptr %42, align 8, !tbaa !18
  tail call void @free(ptr noundef %66) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %964

67:                                               ; preds = %56
  store ptr null, ptr %36, align 8, !tbaa !23
  %68 = load i32, ptr %46, align 8, !tbaa !19
  %69 = load i32, ptr %37, align 4, !tbaa !17
  store i32 %69, ptr %32, align 8, !tbaa !16
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 4
  store i32 %69, ptr %72, align 8, !tbaa !24
  %73 = load ptr, ptr %53, align 8, !tbaa !20
  %74 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 3
  store ptr %73, ptr %74, align 8, !tbaa !25
  %75 = getelementptr inbounds %struct.gzFile_s, ptr %3, i64 0, i32 1
  store ptr %73, ptr %75, align 8, !tbaa !26
  br label %76

76:                                               ; preds = %71, %67, %49, %31
  %77 = phi i32 [ %69, %71 ], [ %69, %67 ], [ %38, %49 ], [ %33, %31 ]
  %78 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 18
  %79 = load i64, ptr %78, align 8, !tbaa !27
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %423, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21
  %83 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !28
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %236, label %86

86:                                               ; preds = %81
  %87 = icmp eq i32 %77, 0
  br i1 %87, label %88, label %128

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 5
  %90 = load i32, ptr %89, align 4, !tbaa !17
  %91 = shl i32 %90, 1
  %92 = zext i32 %91 to i64
  %93 = tail call noalias ptr @malloc(i64 noundef %92) #17
  %94 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 6
  store ptr %93, ptr %94, align 8, !tbaa !18
  %95 = icmp eq ptr %93, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %964

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 8
  %99 = load i32, ptr %98, align 8, !tbaa !19
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  store i32 %90, ptr %32, align 8, !tbaa !16
  br label %135

102:                                              ; preds = %97
  %103 = zext i32 %90 to i64
  %104 = tail call noalias ptr @malloc(i64 noundef %103) #17
  %105 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 7
  store ptr %104, ptr %105, align 8, !tbaa !20
  %106 = icmp eq ptr %104, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  tail call void @free(ptr noundef nonnull %93) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %964

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 8
  %110 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %109, i8 0, i64 24, i1 false)
  %111 = load i32, ptr %110, align 8, !tbaa !21
  %112 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 16
  %113 = load i32, ptr %112, align 4, !tbaa !22
  %114 = tail call i32 @deflateInit2_(ptr noundef nonnull %82, i32 noundef %111, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %113, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %108
  %117 = load ptr, ptr %105, align 8, !tbaa !20
  tail call void @free(ptr noundef %117) #16
  %118 = load ptr, ptr %94, align 8, !tbaa !18
  tail call void @free(ptr noundef %118) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %964

119:                                              ; preds = %108
  store ptr null, ptr %82, align 8, !tbaa !23
  %120 = load i32, ptr %98, align 8, !tbaa !19
  %121 = load i32, ptr %89, align 4, !tbaa !17
  store i32 %121, ptr %32, align 8, !tbaa !16
  %122 = icmp eq i32 %120, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 4
  store i32 %121, ptr %124, align 8, !tbaa !24
  %125 = load ptr, ptr %105, align 8, !tbaa !20
  %126 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 3
  store ptr %125, ptr %126, align 8, !tbaa !25
  %127 = getelementptr inbounds %struct.gzFile_s, ptr %3, i64 0, i32 1
  store ptr %125, ptr %127, align 8, !tbaa !26
  br label %168

128:                                              ; preds = %86
  %129 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 8
  %130 = load i32, ptr %129, align 8, !tbaa !19
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %168, label %135

132:                                              ; preds = %119
  %133 = load i32, ptr %83, align 8, !tbaa !28
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %236, label %135

135:                                              ; preds = %132, %128, %101
  %136 = tail call ptr @__errno_location() #18
  %137 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 11
  %138 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 2
  %139 = load ptr, ptr %82, align 8, !tbaa !23
  br label %140

140:                                              ; preds = %162, %135
  %141 = phi ptr [ %139, %135 ], [ %166, %162 ]
  store i32 0, ptr %136, align 4, !tbaa !29
  store i32 0, ptr %137, align 4, !tbaa !15
  %142 = load i32, ptr %83, align 8, !tbaa !28
  %143 = tail call i32 @llvm.umin.i32(i32 %142, i32 1073741824)
  %144 = load i32, ptr %138, align 4, !tbaa !30
  %145 = zext nneg i32 %143 to i64
  %146 = tail call i64 @write(i32 noundef %144, ptr noundef %141, i64 noundef %145) #16
  %147 = trunc i64 %146 to i32
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %140
  %150 = load i32, ptr %136, align 4, !tbaa !29
  %151 = icmp eq i32 %150, 11
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  store i32 1, ptr %137, align 4, !tbaa !15
  %153 = load i32, ptr %136, align 4, !tbaa !29
  br label %154

154:                                              ; preds = %152, %149
  %155 = phi i32 [ %150, %149 ], [ %153, %152 ]
  %156 = tail call ptr @strerror(i32 noundef %155) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %156) #16
  br label %964

157:                                              ; preds = %140
  %158 = load i32, ptr %83, align 8, !tbaa !28
  %159 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %158, i32 %147), !nosanitize !31
  %160 = extractvalue { i32, i1 } %159, 1, !nosanitize !31
  br i1 %160, label %161, label %162, !nosanitize !31

161:                                              ; preds = %157, %231
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

162:                                              ; preds = %157
  %163 = extractvalue { i32, i1 } %159, 0, !nosanitize !31
  store i32 %163, ptr %83, align 8, !tbaa !28
  %164 = load ptr, ptr %82, align 8, !tbaa !23
  %165 = and i64 %146, 4294967295
  %166 = getelementptr inbounds i8, ptr %164, i64 %165
  store ptr %166, ptr %82, align 8, !tbaa !23
  %167 = icmp eq i32 %163, 0
  br i1 %167, label %236, label %140, !llvm.loop !32

168:                                              ; preds = %128, %123
  %169 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 17
  %170 = load i32, ptr %169, align 8, !tbaa !34
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %168
  %173 = load i32, ptr %83, align 8, !tbaa !28
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %236, label %175

175:                                              ; preds = %172
  %176 = tail call i32 @deflateReset(ptr noundef nonnull %82) #16
  store i32 0, ptr %169, align 8, !tbaa !34
  br label %177

177:                                              ; preds = %175, %168
  %178 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 4
  %179 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 3
  %180 = getelementptr inbounds %struct.gzFile_s, ptr %3, i64 0, i32 1
  %181 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 11
  %182 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 2
  %183 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 7
  %184 = load i32, ptr %178, align 8, !tbaa !24
  br label %185

185:                                              ; preds = %234, %177
  %186 = phi i32 [ %184, %177 ], [ %232, %234 ]
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %226

188:                                              ; preds = %185
  %189 = load ptr, ptr %179, align 8, !tbaa !25
  %190 = load ptr, ptr %180, align 8, !tbaa !26
  %191 = icmp ugt ptr %189, %190
  br i1 %191, label %192, label %223

192:                                              ; preds = %188
  %193 = tail call ptr @__errno_location() #18
  br label %194

194:                                              ; preds = %214, %192
  %195 = phi ptr [ %190, %192 ], [ %217, %214 ]
  %196 = phi ptr [ %189, %192 ], [ %218, %214 ]
  store i32 0, ptr %193, align 4, !tbaa !29
  store i32 0, ptr %181, align 4, !tbaa !15
  %197 = ptrtoint ptr %196 to i64
  %198 = ptrtoint ptr %195 to i64
  %199 = sub i64 %197, %198
  %200 = tail call i64 @llvm.smin.i64(i64 %199, i64 1073741824)
  %201 = load i32, ptr %182, align 4, !tbaa !30
  %202 = and i64 %200, 4294967295
  %203 = tail call i64 @write(i32 noundef %201, ptr noundef %195, i64 noundef %202) #16
  %204 = and i64 %203, 2147483648
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %214, label %206

206:                                              ; preds = %194
  %207 = load i32, ptr %193, align 4, !tbaa !29
  %208 = icmp eq i32 %207, 11
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  store i32 1, ptr %181, align 4, !tbaa !15
  %210 = load i32, ptr %193, align 4, !tbaa !29
  br label %211

211:                                              ; preds = %209, %206
  %212 = phi i32 [ %207, %206 ], [ %210, %209 ]
  %213 = tail call ptr @strerror(i32 noundef %212) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %213) #16
  br label %964

214:                                              ; preds = %194
  %215 = load ptr, ptr %180, align 8, !tbaa !26
  %216 = and i64 %203, 2147483647
  %217 = getelementptr inbounds i8, ptr %215, i64 %216
  store ptr %217, ptr %180, align 8, !tbaa !26
  %218 = load ptr, ptr %179, align 8, !tbaa !25
  %219 = icmp ugt ptr %218, %217
  br i1 %219, label %194, label %220, !llvm.loop !35

220:                                              ; preds = %214
  %221 = load i32, ptr %178, align 8, !tbaa !24
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220, %188
  %224 = load i32, ptr %32, align 8, !tbaa !16
  store i32 %224, ptr %178, align 8, !tbaa !24
  %225 = load ptr, ptr %183, align 8, !tbaa !20
  store ptr %225, ptr %179, align 8, !tbaa !25
  store ptr %225, ptr %180, align 8, !tbaa !26
  br label %226

226:                                              ; preds = %223, %220, %185
  %227 = phi i32 [ %221, %220 ], [ %224, %223 ], [ %186, %185 ]
  %228 = tail call i32 @deflate(ptr noundef nonnull %82, i32 noundef 0) #16
  %229 = icmp eq i32 %228, -2
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %964

231:                                              ; preds = %226
  %232 = load i32, ptr %178, align 8, !tbaa !24
  %233 = icmp ult i32 %227, %232
  br i1 %233, label %161, label %234, !nosanitize !31

234:                                              ; preds = %231
  %235 = icmp eq i32 %227, %232
  br i1 %235, label %236, label %185, !llvm.loop !36

236:                                              ; preds = %162, %234, %172, %132, %81
  %237 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 6
  %238 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 8
  %239 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 5
  %240 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 7
  %241 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 8
  %242 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 15
  %243 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 16
  %244 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 11
  %245 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 2
  %246 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 4
  %247 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 3
  %248 = getelementptr inbounds %struct.gzFile_s, ptr %3, i64 0, i32 1
  %249 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 17
  %250 = getelementptr inbounds %struct.gzFile_s, ptr %3, i64 0, i32 2
  %251 = load i64, ptr %78, align 8, !tbaa !27
  br label %252

252:                                              ; preds = %419, %236
  %253 = phi i64 [ %251, %236 ], [ %416, %419 ]
  %254 = phi i1 [ false, %236 ], [ true, %419 ]
  %255 = load i32, ptr %32, align 8, !tbaa !16
  %256 = zext i32 %255 to i64
  %257 = icmp slt i64 %253, %256
  %258 = trunc i64 %253 to i32
  %259 = select i1 %257, i32 %258, i32 %255
  %260 = load ptr, ptr %237, align 8, !tbaa !18
  br i1 %254, label %265, label %261

261:                                              ; preds = %252
  %262 = zext i32 %259 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %260, i8 0, i64 %262, i1 false)
  %263 = load ptr, ptr %237, align 8, !tbaa !18
  %264 = load i32, ptr %32, align 8, !tbaa !16
  br label %265

265:                                              ; preds = %261, %252
  %266 = phi i32 [ %264, %261 ], [ %255, %252 ]
  %267 = phi ptr [ %263, %261 ], [ %260, %252 ]
  store i32 %259, ptr %83, align 8, !tbaa !28
  store ptr %267, ptr %82, align 8, !tbaa !23
  %268 = icmp eq i32 %266, 0
  br i1 %268, label %269, label %301

269:                                              ; preds = %265
  %270 = load i32, ptr %239, align 4, !tbaa !17
  %271 = shl i32 %270, 1
  %272 = zext i32 %271 to i64
  %273 = tail call noalias ptr @malloc(i64 noundef %272) #17
  store ptr %273, ptr %237, align 8, !tbaa !18
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %276

275:                                              ; preds = %269
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %399

276:                                              ; preds = %269
  %277 = load i32, ptr %238, align 8, !tbaa !19
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %276
  store i32 %270, ptr %32, align 8, !tbaa !16
  br label %304

280:                                              ; preds = %276
  %281 = zext i32 %270 to i64
  %282 = tail call noalias ptr @malloc(i64 noundef %281) #17
  store ptr %282, ptr %240, align 8, !tbaa !20
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %285

284:                                              ; preds = %280
  tail call void @free(ptr noundef nonnull %273) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %399

285:                                              ; preds = %280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %241, i8 0, i64 24, i1 false)
  %286 = load i32, ptr %242, align 8, !tbaa !21
  %287 = load i32, ptr %243, align 4, !tbaa !22
  %288 = tail call i32 @deflateInit2_(ptr noundef nonnull %82, i32 noundef %286, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %287, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %285
  %291 = load ptr, ptr %240, align 8, !tbaa !20
  tail call void @free(ptr noundef %291) #16
  %292 = load ptr, ptr %237, align 8, !tbaa !18
  tail call void @free(ptr noundef %292) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %399

293:                                              ; preds = %285
  store ptr null, ptr %82, align 8, !tbaa !23
  %294 = load i32, ptr %238, align 8, !tbaa !19
  %295 = load i32, ptr %239, align 4, !tbaa !17
  store i32 %295, ptr %32, align 8, !tbaa !16
  %296 = icmp eq i32 %294, 0
  br i1 %296, label %299, label %297

297:                                              ; preds = %293
  %298 = load i32, ptr %83, align 8, !tbaa !28
  br label %304

299:                                              ; preds = %293
  store i32 %295, ptr %246, align 8, !tbaa !24
  %300 = load ptr, ptr %240, align 8, !tbaa !20
  store ptr %300, ptr %247, align 8, !tbaa !25
  store ptr %300, ptr %248, align 8, !tbaa !26
  br label %338

301:                                              ; preds = %265
  %302 = load i32, ptr %238, align 8, !tbaa !19
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %338, label %304

304:                                              ; preds = %301, %297, %279
  %305 = phi ptr [ null, %297 ], [ %267, %301 ], [ %267, %279 ]
  %306 = phi i32 [ %298, %297 ], [ %259, %301 ], [ %259, %279 ]
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %399, label %308

308:                                              ; preds = %304
  %309 = tail call ptr @__errno_location() #18
  br label %310

310:                                              ; preds = %332, %308
  %311 = phi ptr [ %305, %308 ], [ %336, %332 ]
  store i32 0, ptr %309, align 4, !tbaa !29
  store i32 0, ptr %244, align 4, !tbaa !15
  %312 = load i32, ptr %83, align 8, !tbaa !28
  %313 = tail call i32 @llvm.umin.i32(i32 %312, i32 1073741824)
  %314 = load i32, ptr %245, align 4, !tbaa !30
  %315 = zext nneg i32 %313 to i64
  %316 = tail call i64 @write(i32 noundef %314, ptr noundef %311, i64 noundef %315) #16
  %317 = trunc i64 %316 to i32
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %310
  %320 = load i32, ptr %309, align 4, !tbaa !29
  %321 = icmp eq i32 %320, 11
  br i1 %321, label %322, label %324

322:                                              ; preds = %319
  store i32 1, ptr %244, align 4, !tbaa !15
  %323 = load i32, ptr %309, align 4, !tbaa !29
  br label %324

324:                                              ; preds = %322, %319
  %325 = phi i32 [ %320, %319 ], [ %323, %322 ]
  %326 = tail call ptr @strerror(i32 noundef %325) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %326) #16
  br label %399

327:                                              ; preds = %310
  %328 = load i32, ptr %83, align 8, !tbaa !28
  %329 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %328, i32 %317), !nosanitize !31
  %330 = extractvalue { i32, i1 } %329, 1, !nosanitize !31
  br i1 %330, label %331, label %332, !nosanitize !31

331:                                              ; preds = %327, %394
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

332:                                              ; preds = %327
  %333 = extractvalue { i32, i1 } %329, 0, !nosanitize !31
  store i32 %333, ptr %83, align 8, !tbaa !28
  %334 = load ptr, ptr %82, align 8, !tbaa !23
  %335 = and i64 %316, 4294967295
  %336 = getelementptr inbounds i8, ptr %334, i64 %335
  store ptr %336, ptr %82, align 8, !tbaa !23
  %337 = icmp eq i32 %333, 0
  br i1 %337, label %399, label %310, !llvm.loop !32

338:                                              ; preds = %301, %299
  %339 = load i32, ptr %249, align 8, !tbaa !34
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %346, label %341

341:                                              ; preds = %338
  %342 = load i32, ptr %83, align 8, !tbaa !28
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %399, label %344

344:                                              ; preds = %341
  %345 = tail call i32 @deflateReset(ptr noundef nonnull %82) #16
  store i32 0, ptr %249, align 8, !tbaa !34
  br label %346

346:                                              ; preds = %344, %338
  %347 = load i32, ptr %246, align 8, !tbaa !24
  br label %348

348:                                              ; preds = %397, %346
  %349 = phi i32 [ %347, %346 ], [ %395, %397 ]
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %389

351:                                              ; preds = %348
  %352 = load ptr, ptr %247, align 8, !tbaa !25
  %353 = load ptr, ptr %248, align 8, !tbaa !26
  %354 = icmp ugt ptr %352, %353
  br i1 %354, label %355, label %386

355:                                              ; preds = %351
  %356 = tail call ptr @__errno_location() #18
  br label %357

357:                                              ; preds = %377, %355
  %358 = phi ptr [ %353, %355 ], [ %380, %377 ]
  %359 = phi ptr [ %352, %355 ], [ %381, %377 ]
  store i32 0, ptr %356, align 4, !tbaa !29
  store i32 0, ptr %244, align 4, !tbaa !15
  %360 = ptrtoint ptr %359 to i64
  %361 = ptrtoint ptr %358 to i64
  %362 = sub i64 %360, %361
  %363 = tail call i64 @llvm.smin.i64(i64 %362, i64 1073741824)
  %364 = load i32, ptr %245, align 4, !tbaa !30
  %365 = and i64 %363, 4294967295
  %366 = tail call i64 @write(i32 noundef %364, ptr noundef %358, i64 noundef %365) #16
  %367 = and i64 %366, 2147483648
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %377, label %369

369:                                              ; preds = %357
  %370 = load i32, ptr %356, align 4, !tbaa !29
  %371 = icmp eq i32 %370, 11
  br i1 %371, label %372, label %374

372:                                              ; preds = %369
  store i32 1, ptr %244, align 4, !tbaa !15
  %373 = load i32, ptr %356, align 4, !tbaa !29
  br label %374

374:                                              ; preds = %372, %369
  %375 = phi i32 [ %370, %369 ], [ %373, %372 ]
  %376 = tail call ptr @strerror(i32 noundef %375) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %376) #16
  br label %399

377:                                              ; preds = %357
  %378 = load ptr, ptr %248, align 8, !tbaa !26
  %379 = and i64 %366, 2147483647
  %380 = getelementptr inbounds i8, ptr %378, i64 %379
  store ptr %380, ptr %248, align 8, !tbaa !26
  %381 = load ptr, ptr %247, align 8, !tbaa !25
  %382 = icmp ugt ptr %381, %380
  br i1 %382, label %357, label %383, !llvm.loop !35

383:                                              ; preds = %377
  %384 = load i32, ptr %246, align 8, !tbaa !24
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %383, %351
  %387 = load i32, ptr %32, align 8, !tbaa !16
  store i32 %387, ptr %246, align 8, !tbaa !24
  %388 = load ptr, ptr %240, align 8, !tbaa !20
  store ptr %388, ptr %247, align 8, !tbaa !25
  store ptr %388, ptr %248, align 8, !tbaa !26
  br label %389

389:                                              ; preds = %386, %383, %348
  %390 = phi i32 [ %384, %383 ], [ %387, %386 ], [ %349, %348 ]
  %391 = tail call i32 @deflate(ptr noundef nonnull %82, i32 noundef 0) #16
  %392 = icmp eq i32 %391, -2
  br i1 %392, label %393, label %394

393:                                              ; preds = %389
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %399

394:                                              ; preds = %389
  %395 = load i32, ptr %246, align 8, !tbaa !24
  %396 = icmp ult i32 %390, %395
  br i1 %396, label %331, label %397, !nosanitize !31

397:                                              ; preds = %394
  %398 = icmp eq i32 %390, %395
  br i1 %398, label %399, label %348, !llvm.loop !36

399:                                              ; preds = %332, %397, %393, %374, %341, %324, %304, %290, %284, %275
  %400 = phi i1 [ true, %324 ], [ true, %374 ], [ true, %393 ], [ false, %341 ], [ true, %275 ], [ true, %284 ], [ true, %290 ], [ false, %304 ], [ false, %397 ], [ false, %332 ]
  %401 = load i32, ptr %83, align 8, !tbaa !28
  %402 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %259, i32 %401), !nosanitize !31
  %403 = extractvalue { i32, i1 } %402, 1, !nosanitize !31
  br i1 %403, label %404, label %405, !nosanitize !31

404:                                              ; preds = %412, %399
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

405:                                              ; preds = %399
  %406 = extractvalue { i32, i1 } %402, 0, !nosanitize !31
  %407 = zext i32 %406 to i64
  %408 = load i64, ptr %250, align 8, !tbaa !37
  %409 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %408, i64 %407), !nosanitize !31
  %410 = extractvalue { i64, i1 } %409, 1, !nosanitize !31
  br i1 %410, label %411, label %412, !nosanitize !31

411:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

412:                                              ; preds = %405
  %413 = extractvalue { i64, i1 } %409, 0, !nosanitize !31
  store i64 %413, ptr %250, align 8, !tbaa !37
  %414 = load i64, ptr %78, align 8, !tbaa !27
  %415 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %414, i64 %407), !nosanitize !31
  %416 = extractvalue { i64, i1 } %415, 0, !nosanitize !31
  %417 = extractvalue { i64, i1 } %415, 1, !nosanitize !31
  br i1 %417, label %404, label %418, !nosanitize !31

418:                                              ; preds = %412
  store i64 %416, ptr %78, align 8, !tbaa !27
  br i1 %400, label %964, label %419

419:                                              ; preds = %418
  %420 = icmp eq i64 %416, 0
  br i1 %420, label %421, label %252, !llvm.loop !38

421:                                              ; preds = %419
  %422 = load i32, ptr %32, align 8, !tbaa !16
  br label %423

423:                                              ; preds = %421, %76
  %424 = phi i32 [ %422, %421 ], [ %77, %76 ]
  %425 = zext i32 %424 to i64
  %426 = icmp ult i64 %20, %425
  %427 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21
  %428 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 1
  br i1 %426, label %429, label %634

429:                                              ; preds = %423
  %430 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 6
  %431 = getelementptr inbounds %struct.gzFile_s, ptr %3, i64 0, i32 2
  %432 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 8
  %433 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 5
  %434 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 7
  %435 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 8
  %436 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 15
  %437 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 16
  %438 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 11
  %439 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 2
  %440 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 4
  %441 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 3
  %442 = getelementptr inbounds %struct.gzFile_s, ptr %3, i64 0, i32 1
  %443 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 17
  br label %444

444:                                              ; preds = %571, %429
  %445 = phi i64 [ %20, %429 ], [ %489, %571 ]
  %446 = phi ptr [ %0, %429 ], [ %487, %571 ]
  %447 = load i32, ptr %428, align 8, !tbaa !39
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %452, label %449

449:                                              ; preds = %444
  %450 = load ptr, ptr %427, align 8, !tbaa !40
  %451 = load ptr, ptr %430, align 8, !tbaa !18
  br label %454

452:                                              ; preds = %444
  %453 = load ptr, ptr %430, align 8, !tbaa !18
  store ptr %453, ptr %427, align 8, !tbaa !40
  br label %454

454:                                              ; preds = %452, %449
  %455 = phi ptr [ %451, %449 ], [ %453, %452 ]
  %456 = phi ptr [ %450, %449 ], [ %453, %452 ]
  %457 = zext i32 %447 to i64
  %458 = getelementptr inbounds i8, ptr %456, i64 %457
  %459 = ptrtoint ptr %458 to i64
  %460 = ptrtoint ptr %455 to i64
  %461 = sub i64 %459, %460
  %462 = trunc i64 %461 to i32
  %463 = load i32, ptr %32, align 8, !tbaa !16
  %464 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %463, i32 %462), !nosanitize !31
  %465 = extractvalue { i32, i1 } %464, 1, !nosanitize !31
  br i1 %465, label %466, label %467, !nosanitize !31

466:                                              ; preds = %949, %938, %485, %454, %958, %630
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

467:                                              ; preds = %454
  %468 = extractvalue { i32, i1 } %464, 0, !nosanitize !31
  %469 = zext i32 %468 to i64
  %470 = icmp ult i64 %445, %469
  %471 = trunc i64 %445 to i32
  %472 = select i1 %470, i32 %471, i32 %468
  %473 = and i64 %461, 4294967295
  %474 = getelementptr inbounds i8, ptr %455, i64 %473
  %475 = zext i32 %472 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %474, ptr align 1 %446, i64 %475, i1 false)
  %476 = load i32, ptr %428, align 8, !tbaa !39
  %477 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %476, i32 %472), !nosanitize !31
  %478 = extractvalue { i32, i1 } %477, 1, !nosanitize !31
  br i1 %478, label %479, label %480, !nosanitize !31

479:                                              ; preds = %943, %480, %467
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

480:                                              ; preds = %467
  %481 = extractvalue { i32, i1 } %477, 0, !nosanitize !31
  store i32 %481, ptr %428, align 8, !tbaa !39
  %482 = load i64, ptr %431, align 8, !tbaa !37
  %483 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %482, i64 %475), !nosanitize !31
  %484 = extractvalue { i64, i1 } %483, 1, !nosanitize !31
  br i1 %484, label %479, label %485, !nosanitize !31

485:                                              ; preds = %480
  %486 = extractvalue { i64, i1 } %483, 0, !nosanitize !31
  store i64 %486, ptr %431, align 8, !tbaa !37
  %487 = getelementptr inbounds i8, ptr %446, i64 %475
  %488 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %445, i64 %475), !nosanitize !31
  %489 = extractvalue { i64, i1 } %488, 0, !nosanitize !31
  %490 = extractvalue { i64, i1 } %488, 1, !nosanitize !31
  br i1 %490, label %466, label %491, !nosanitize !31

491:                                              ; preds = %485
  %492 = icmp eq i64 %489, 0
  br i1 %492, label %964, label %493

493:                                              ; preds = %491
  %494 = load i32, ptr %32, align 8, !tbaa !16
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %528

496:                                              ; preds = %493
  %497 = load i32, ptr %433, align 4, !tbaa !17
  %498 = shl i32 %497, 1
  %499 = zext i32 %498 to i64
  %500 = tail call noalias ptr @malloc(i64 noundef %499) #17
  store ptr %500, ptr %430, align 8, !tbaa !18
  %501 = icmp eq ptr %500, null
  br i1 %501, label %502, label %503

502:                                              ; preds = %496
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %627

503:                                              ; preds = %496
  %504 = load i32, ptr %432, align 8, !tbaa !19
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %507, label %506

506:                                              ; preds = %503
  store i32 %497, ptr %32, align 8, !tbaa !16
  br label %531

507:                                              ; preds = %503
  %508 = zext i32 %497 to i64
  %509 = tail call noalias ptr @malloc(i64 noundef %508) #17
  store ptr %509, ptr %434, align 8, !tbaa !20
  %510 = icmp eq ptr %509, null
  br i1 %510, label %511, label %512

511:                                              ; preds = %507
  tail call void @free(ptr noundef nonnull %500) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %627

512:                                              ; preds = %507
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %435, i8 0, i64 24, i1 false)
  %513 = load i32, ptr %436, align 8, !tbaa !21
  %514 = load i32, ptr %437, align 4, !tbaa !22
  %515 = tail call i32 @deflateInit2_(ptr noundef nonnull %427, i32 noundef %513, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %514, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %520, label %517

517:                                              ; preds = %512
  %518 = load ptr, ptr %434, align 8, !tbaa !20
  tail call void @free(ptr noundef %518) #16
  %519 = load ptr, ptr %430, align 8, !tbaa !18
  tail call void @free(ptr noundef %519) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %627

520:                                              ; preds = %512
  store ptr null, ptr %427, align 8, !tbaa !23
  %521 = load i32, ptr %432, align 8, !tbaa !19
  %522 = load i32, ptr %433, align 4, !tbaa !17
  store i32 %522, ptr %32, align 8, !tbaa !16
  %523 = icmp eq i32 %521, 0
  br i1 %523, label %526, label %524

524:                                              ; preds = %520
  %525 = load i32, ptr %428, align 8, !tbaa !28
  br label %531

526:                                              ; preds = %520
  store i32 %522, ptr %440, align 8, !tbaa !24
  %527 = load ptr, ptr %434, align 8, !tbaa !20
  store ptr %527, ptr %441, align 8, !tbaa !25
  store ptr %527, ptr %442, align 8, !tbaa !26
  br label %565

528:                                              ; preds = %493
  %529 = load i32, ptr %432, align 8, !tbaa !19
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %565, label %531

531:                                              ; preds = %528, %524, %506
  %532 = phi i32 [ %525, %524 ], [ %481, %528 ], [ %481, %506 ]
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %571, label %534

534:                                              ; preds = %531
  %535 = tail call ptr @__errno_location() #18
  %536 = load ptr, ptr %427, align 8, !tbaa !23
  br label %537

537:                                              ; preds = %559, %534
  %538 = phi ptr [ %536, %534 ], [ %563, %559 ]
  store i32 0, ptr %535, align 4, !tbaa !29
  store i32 0, ptr %438, align 4, !tbaa !15
  %539 = load i32, ptr %428, align 8, !tbaa !28
  %540 = tail call i32 @llvm.umin.i32(i32 %539, i32 1073741824)
  %541 = load i32, ptr %439, align 4, !tbaa !30
  %542 = zext nneg i32 %540 to i64
  %543 = tail call i64 @write(i32 noundef %541, ptr noundef %538, i64 noundef %542) #16
  %544 = trunc i64 %543 to i32
  %545 = icmp slt i32 %544, 0
  br i1 %545, label %546, label %554

546:                                              ; preds = %537
  %547 = load i32, ptr %535, align 4, !tbaa !29
  %548 = icmp eq i32 %547, 11
  br i1 %548, label %549, label %551

549:                                              ; preds = %546
  store i32 1, ptr %438, align 4, !tbaa !15
  %550 = load i32, ptr %535, align 4, !tbaa !29
  br label %551

551:                                              ; preds = %549, %546
  %552 = phi i32 [ %547, %546 ], [ %550, %549 ]
  %553 = tail call ptr @strerror(i32 noundef %552) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %553) #16
  br label %627

554:                                              ; preds = %537
  %555 = load i32, ptr %428, align 8, !tbaa !28
  %556 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %555, i32 %544), !nosanitize !31
  %557 = extractvalue { i32, i1 } %556, 1, !nosanitize !31
  br i1 %557, label %558, label %559, !nosanitize !31

558:                                              ; preds = %554, %622
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

559:                                              ; preds = %554
  %560 = extractvalue { i32, i1 } %556, 0, !nosanitize !31
  store i32 %560, ptr %428, align 8, !tbaa !28
  %561 = load ptr, ptr %427, align 8, !tbaa !23
  %562 = and i64 %543, 4294967295
  %563 = getelementptr inbounds i8, ptr %561, i64 %562
  store ptr %563, ptr %427, align 8, !tbaa !23
  %564 = icmp eq i32 %560, 0
  br i1 %564, label %571, label %537, !llvm.loop !32

565:                                              ; preds = %528, %526
  %566 = load i32, ptr %443, align 8, !tbaa !34
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %574, label %568

568:                                              ; preds = %565
  %569 = load i32, ptr %428, align 8, !tbaa !28
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %572

571:                                              ; preds = %559, %625, %568, %531
  br label %444

572:                                              ; preds = %568
  %573 = tail call i32 @deflateReset(ptr noundef nonnull %427) #16
  store i32 0, ptr %443, align 8, !tbaa !34
  br label %574

574:                                              ; preds = %572, %565
  %575 = load i32, ptr %440, align 8, !tbaa !24
  br label %576

576:                                              ; preds = %625, %574
  %577 = phi i32 [ %575, %574 ], [ %623, %625 ]
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %617

579:                                              ; preds = %576
  %580 = load ptr, ptr %441, align 8, !tbaa !25
  %581 = load ptr, ptr %442, align 8, !tbaa !26
  %582 = icmp ugt ptr %580, %581
  br i1 %582, label %583, label %614

583:                                              ; preds = %579
  %584 = tail call ptr @__errno_location() #18
  br label %585

585:                                              ; preds = %605, %583
  %586 = phi ptr [ %581, %583 ], [ %608, %605 ]
  %587 = phi ptr [ %580, %583 ], [ %609, %605 ]
  store i32 0, ptr %584, align 4, !tbaa !29
  store i32 0, ptr %438, align 4, !tbaa !15
  %588 = ptrtoint ptr %587 to i64
  %589 = ptrtoint ptr %586 to i64
  %590 = sub i64 %588, %589
  %591 = tail call i64 @llvm.smin.i64(i64 %590, i64 1073741824)
  %592 = load i32, ptr %439, align 4, !tbaa !30
  %593 = and i64 %591, 4294967295
  %594 = tail call i64 @write(i32 noundef %592, ptr noundef %586, i64 noundef %593) #16
  %595 = and i64 %594, 2147483648
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %605, label %597

597:                                              ; preds = %585
  %598 = load i32, ptr %584, align 4, !tbaa !29
  %599 = icmp eq i32 %598, 11
  br i1 %599, label %600, label %602

600:                                              ; preds = %597
  store i32 1, ptr %438, align 4, !tbaa !15
  %601 = load i32, ptr %584, align 4, !tbaa !29
  br label %602

602:                                              ; preds = %600, %597
  %603 = phi i32 [ %598, %597 ], [ %601, %600 ]
  %604 = tail call ptr @strerror(i32 noundef %603) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %604) #16
  br label %627

605:                                              ; preds = %585
  %606 = load ptr, ptr %442, align 8, !tbaa !26
  %607 = and i64 %594, 2147483647
  %608 = getelementptr inbounds i8, ptr %606, i64 %607
  store ptr %608, ptr %442, align 8, !tbaa !26
  %609 = load ptr, ptr %441, align 8, !tbaa !25
  %610 = icmp ugt ptr %609, %608
  br i1 %610, label %585, label %611, !llvm.loop !35

611:                                              ; preds = %605
  %612 = load i32, ptr %440, align 8, !tbaa !24
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %614, label %617

614:                                              ; preds = %611, %579
  %615 = load i32, ptr %32, align 8, !tbaa !16
  store i32 %615, ptr %440, align 8, !tbaa !24
  %616 = load ptr, ptr %434, align 8, !tbaa !20
  store ptr %616, ptr %441, align 8, !tbaa !25
  store ptr %616, ptr %442, align 8, !tbaa !26
  br label %617

617:                                              ; preds = %614, %611, %576
  %618 = phi i32 [ %612, %611 ], [ %615, %614 ], [ %577, %576 ]
  %619 = tail call i32 @deflate(ptr noundef nonnull %427, i32 noundef 0) #16
  %620 = icmp eq i32 %619, -2
  br i1 %620, label %621, label %622

621:                                              ; preds = %617
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %627

622:                                              ; preds = %617
  %623 = load i32, ptr %440, align 8, !tbaa !24
  %624 = icmp ult i32 %618, %623
  br i1 %624, label %558, label %625, !nosanitize !31

625:                                              ; preds = %622
  %626 = icmp eq i32 %618, %623
  br i1 %626, label %571, label %576, !llvm.loop !36

627:                                              ; preds = %621, %602, %551, %517, %511, %502
  %628 = load i32, ptr %438, align 4, !tbaa !15
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %964, label %630

630:                                              ; preds = %627
  %631 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 %489), !nosanitize !31
  %632 = extractvalue { i64, i1 } %631, 0, !nosanitize !31
  %633 = extractvalue { i64, i1 } %631, 1, !nosanitize !31
  br i1 %633, label %466, label %964, !nosanitize !31

634:                                              ; preds = %423
  %635 = load i32, ptr %428, align 8, !tbaa !28
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %787, label %637

637:                                              ; preds = %634
  %638 = icmp eq i32 %424, 0
  br i1 %638, label %639, label %679

639:                                              ; preds = %637
  %640 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 5
  %641 = load i32, ptr %640, align 4, !tbaa !17
  %642 = shl i32 %641, 1
  %643 = zext i32 %642 to i64
  %644 = tail call noalias ptr @malloc(i64 noundef %643) #17
  %645 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 6
  store ptr %644, ptr %645, align 8, !tbaa !18
  %646 = icmp eq ptr %644, null
  br i1 %646, label %647, label %648

647:                                              ; preds = %639
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %964

648:                                              ; preds = %639
  %649 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 8
  %650 = load i32, ptr %649, align 8, !tbaa !19
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %653, label %652

652:                                              ; preds = %648
  store i32 %641, ptr %32, align 8, !tbaa !16
  br label %686

653:                                              ; preds = %648
  %654 = zext i32 %641 to i64
  %655 = tail call noalias ptr @malloc(i64 noundef %654) #17
  %656 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 7
  store ptr %655, ptr %656, align 8, !tbaa !20
  %657 = icmp eq ptr %655, null
  br i1 %657, label %658, label %659

658:                                              ; preds = %653
  tail call void @free(ptr noundef nonnull %644) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %964

659:                                              ; preds = %653
  %660 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 8
  %661 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %660, i8 0, i64 24, i1 false)
  %662 = load i32, ptr %661, align 8, !tbaa !21
  %663 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 16
  %664 = load i32, ptr %663, align 4, !tbaa !22
  %665 = tail call i32 @deflateInit2_(ptr noundef nonnull %427, i32 noundef %662, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %664, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %670, label %667

667:                                              ; preds = %659
  %668 = load ptr, ptr %656, align 8, !tbaa !20
  tail call void @free(ptr noundef %668) #16
  %669 = load ptr, ptr %645, align 8, !tbaa !18
  tail call void @free(ptr noundef %669) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %964

670:                                              ; preds = %659
  store ptr null, ptr %427, align 8, !tbaa !23
  %671 = load i32, ptr %649, align 8, !tbaa !19
  %672 = load i32, ptr %640, align 4, !tbaa !17
  store i32 %672, ptr %32, align 8, !tbaa !16
  %673 = icmp eq i32 %671, 0
  br i1 %673, label %674, label %683

674:                                              ; preds = %670
  %675 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 4
  store i32 %672, ptr %675, align 8, !tbaa !24
  %676 = load ptr, ptr %656, align 8, !tbaa !20
  %677 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 3
  store ptr %676, ptr %677, align 8, !tbaa !25
  %678 = getelementptr inbounds %struct.gzFile_s, ptr %3, i64 0, i32 1
  store ptr %676, ptr %678, align 8, !tbaa !26
  br label %719

679:                                              ; preds = %637
  %680 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 8
  %681 = load i32, ptr %680, align 8, !tbaa !19
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %719, label %686

683:                                              ; preds = %670
  %684 = load i32, ptr %428, align 8, !tbaa !28
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %787, label %686

686:                                              ; preds = %683, %679, %652
  %687 = tail call ptr @__errno_location() #18
  %688 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 11
  %689 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 2
  %690 = load ptr, ptr %427, align 8, !tbaa !23
  br label %691

691:                                              ; preds = %713, %686
  %692 = phi ptr [ %690, %686 ], [ %717, %713 ]
  store i32 0, ptr %687, align 4, !tbaa !29
  store i32 0, ptr %688, align 4, !tbaa !15
  %693 = load i32, ptr %428, align 8, !tbaa !28
  %694 = tail call i32 @llvm.umin.i32(i32 %693, i32 1073741824)
  %695 = load i32, ptr %689, align 4, !tbaa !30
  %696 = zext nneg i32 %694 to i64
  %697 = tail call i64 @write(i32 noundef %695, ptr noundef %692, i64 noundef %696) #16
  %698 = trunc i64 %697 to i32
  %699 = icmp slt i32 %698, 0
  br i1 %699, label %700, label %708

700:                                              ; preds = %691
  %701 = load i32, ptr %687, align 4, !tbaa !29
  %702 = icmp eq i32 %701, 11
  br i1 %702, label %703, label %705

703:                                              ; preds = %700
  store i32 1, ptr %688, align 4, !tbaa !15
  %704 = load i32, ptr %687, align 4, !tbaa !29
  br label %705

705:                                              ; preds = %703, %700
  %706 = phi i32 [ %701, %700 ], [ %704, %703 ]
  %707 = tail call ptr @strerror(i32 noundef %706) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %707) #16
  br label %964

708:                                              ; preds = %691
  %709 = load i32, ptr %428, align 8, !tbaa !28
  %710 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %709, i32 %698), !nosanitize !31
  %711 = extractvalue { i32, i1 } %710, 1, !nosanitize !31
  br i1 %711, label %712, label %713, !nosanitize !31

712:                                              ; preds = %708, %782
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

713:                                              ; preds = %708
  %714 = extractvalue { i32, i1 } %710, 0, !nosanitize !31
  store i32 %714, ptr %428, align 8, !tbaa !28
  %715 = load ptr, ptr %427, align 8, !tbaa !23
  %716 = and i64 %697, 4294967295
  %717 = getelementptr inbounds i8, ptr %715, i64 %716
  store ptr %717, ptr %427, align 8, !tbaa !23
  %718 = icmp eq i32 %714, 0
  br i1 %718, label %787, label %691, !llvm.loop !32

719:                                              ; preds = %679, %674
  %720 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 17
  %721 = load i32, ptr %720, align 8, !tbaa !34
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %728, label %723

723:                                              ; preds = %719
  %724 = load i32, ptr %428, align 8, !tbaa !28
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %787, label %726

726:                                              ; preds = %723
  %727 = tail call i32 @deflateReset(ptr noundef nonnull %427) #16
  store i32 0, ptr %720, align 8, !tbaa !34
  br label %728

728:                                              ; preds = %726, %719
  %729 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 4
  %730 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 3
  %731 = getelementptr inbounds %struct.gzFile_s, ptr %3, i64 0, i32 1
  %732 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 11
  %733 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 2
  %734 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 7
  %735 = load i32, ptr %729, align 8, !tbaa !24
  br label %736

736:                                              ; preds = %785, %728
  %737 = phi i32 [ %735, %728 ], [ %783, %785 ]
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %739, label %777

739:                                              ; preds = %736
  %740 = load ptr, ptr %730, align 8, !tbaa !25
  %741 = load ptr, ptr %731, align 8, !tbaa !26
  %742 = icmp ugt ptr %740, %741
  br i1 %742, label %743, label %774

743:                                              ; preds = %739
  %744 = tail call ptr @__errno_location() #18
  br label %745

745:                                              ; preds = %765, %743
  %746 = phi ptr [ %741, %743 ], [ %768, %765 ]
  %747 = phi ptr [ %740, %743 ], [ %769, %765 ]
  store i32 0, ptr %744, align 4, !tbaa !29
  store i32 0, ptr %732, align 4, !tbaa !15
  %748 = ptrtoint ptr %747 to i64
  %749 = ptrtoint ptr %746 to i64
  %750 = sub i64 %748, %749
  %751 = tail call i64 @llvm.smin.i64(i64 %750, i64 1073741824)
  %752 = load i32, ptr %733, align 4, !tbaa !30
  %753 = and i64 %751, 4294967295
  %754 = tail call i64 @write(i32 noundef %752, ptr noundef %746, i64 noundef %753) #16
  %755 = and i64 %754, 2147483648
  %756 = icmp eq i64 %755, 0
  br i1 %756, label %765, label %757

757:                                              ; preds = %745
  %758 = load i32, ptr %744, align 4, !tbaa !29
  %759 = icmp eq i32 %758, 11
  br i1 %759, label %760, label %762

760:                                              ; preds = %757
  store i32 1, ptr %732, align 4, !tbaa !15
  %761 = load i32, ptr %744, align 4, !tbaa !29
  br label %762

762:                                              ; preds = %760, %757
  %763 = phi i32 [ %758, %757 ], [ %761, %760 ]
  %764 = tail call ptr @strerror(i32 noundef %763) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %764) #16
  br label %964

765:                                              ; preds = %745
  %766 = load ptr, ptr %731, align 8, !tbaa !26
  %767 = and i64 %754, 2147483647
  %768 = getelementptr inbounds i8, ptr %766, i64 %767
  store ptr %768, ptr %731, align 8, !tbaa !26
  %769 = load ptr, ptr %730, align 8, !tbaa !25
  %770 = icmp ugt ptr %769, %768
  br i1 %770, label %745, label %771, !llvm.loop !35

771:                                              ; preds = %765
  %772 = load i32, ptr %729, align 8, !tbaa !24
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %774, label %777

774:                                              ; preds = %771, %739
  %775 = load i32, ptr %32, align 8, !tbaa !16
  store i32 %775, ptr %729, align 8, !tbaa !24
  %776 = load ptr, ptr %734, align 8, !tbaa !20
  store ptr %776, ptr %730, align 8, !tbaa !25
  store ptr %776, ptr %731, align 8, !tbaa !26
  br label %777

777:                                              ; preds = %774, %771, %736
  %778 = phi i32 [ %772, %771 ], [ %775, %774 ], [ %737, %736 ]
  %779 = tail call i32 @deflate(ptr noundef nonnull %427, i32 noundef 0) #16
  %780 = icmp eq i32 %779, -2
  br i1 %780, label %781, label %782

781:                                              ; preds = %777
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %964

782:                                              ; preds = %777
  %783 = load i32, ptr %729, align 8, !tbaa !24
  %784 = icmp ult i32 %778, %783
  br i1 %784, label %712, label %785, !nosanitize !31

785:                                              ; preds = %782
  %786 = icmp eq i32 %778, %783
  br i1 %786, label %787, label %736, !llvm.loop !36

787:                                              ; preds = %713, %785, %723, %683, %634
  store ptr %0, ptr %427, align 8, !tbaa !40
  %788 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 8
  %789 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 5
  %790 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 6
  %791 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 7
  %792 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 8
  %793 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 15
  %794 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 16
  %795 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 11
  %796 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 2
  %797 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 4
  %798 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 21, i32 3
  %799 = getelementptr inbounds %struct.gzFile_s, ptr %3, i64 0, i32 1
  %800 = getelementptr inbounds %struct.gz_state, ptr %3, i64 0, i32 17
  %801 = getelementptr inbounds %struct.gzFile_s, ptr %3, i64 0, i32 2
  br label %802

802:                                              ; preds = %962, %787
  %803 = phi i64 [ %20, %787 ], [ %952, %962 ]
  %804 = tail call i64 @llvm.umin.i64(i64 %803, i64 4294967295)
  %805 = trunc i64 %804 to i32
  store i32 %805, ptr %428, align 8, !tbaa !39
  %806 = load i32, ptr %32, align 8, !tbaa !16
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %808, label %840

808:                                              ; preds = %802
  %809 = load i32, ptr %789, align 4, !tbaa !17
  %810 = shl i32 %809, 1
  %811 = zext i32 %810 to i64
  %812 = tail call noalias ptr @malloc(i64 noundef %811) #17
  store ptr %812, ptr %790, align 8, !tbaa !18
  %813 = icmp eq ptr %812, null
  br i1 %813, label %814, label %815

814:                                              ; preds = %808
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %938

815:                                              ; preds = %808
  %816 = load i32, ptr %788, align 8, !tbaa !19
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %819, label %818

818:                                              ; preds = %815
  store i32 %809, ptr %32, align 8, !tbaa !16
  br label %843

819:                                              ; preds = %815
  %820 = zext i32 %809 to i64
  %821 = tail call noalias ptr @malloc(i64 noundef %820) #17
  store ptr %821, ptr %791, align 8, !tbaa !20
  %822 = icmp eq ptr %821, null
  br i1 %822, label %823, label %824

823:                                              ; preds = %819
  tail call void @free(ptr noundef nonnull %812) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %938

824:                                              ; preds = %819
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %792, i8 0, i64 24, i1 false)
  %825 = load i32, ptr %793, align 8, !tbaa !21
  %826 = load i32, ptr %794, align 4, !tbaa !22
  %827 = tail call i32 @deflateInit2_(ptr noundef nonnull %427, i32 noundef %825, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %826, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %832, label %829

829:                                              ; preds = %824
  %830 = load ptr, ptr %791, align 8, !tbaa !20
  tail call void @free(ptr noundef %830) #16
  %831 = load ptr, ptr %790, align 8, !tbaa !18
  tail call void @free(ptr noundef %831) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %938

832:                                              ; preds = %824
  store ptr null, ptr %427, align 8, !tbaa !23
  %833 = load i32, ptr %788, align 8, !tbaa !19
  %834 = load i32, ptr %789, align 4, !tbaa !17
  store i32 %834, ptr %32, align 8, !tbaa !16
  %835 = icmp eq i32 %833, 0
  br i1 %835, label %838, label %836

836:                                              ; preds = %832
  %837 = load i32, ptr %428, align 8, !tbaa !28
  br label %843

838:                                              ; preds = %832
  store i32 %834, ptr %797, align 8, !tbaa !24
  %839 = load ptr, ptr %791, align 8, !tbaa !20
  store ptr %839, ptr %798, align 8, !tbaa !25
  store ptr %839, ptr %799, align 8, !tbaa !26
  br label %877

840:                                              ; preds = %802
  %841 = load i32, ptr %788, align 8, !tbaa !19
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %877, label %843

843:                                              ; preds = %840, %836, %818
  %844 = phi i32 [ %837, %836 ], [ %805, %840 ], [ %805, %818 ]
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %938, label %846

846:                                              ; preds = %843
  %847 = tail call ptr @__errno_location() #18
  %848 = load ptr, ptr %427, align 8, !tbaa !23
  br label %849

849:                                              ; preds = %871, %846
  %850 = phi ptr [ %848, %846 ], [ %875, %871 ]
  store i32 0, ptr %847, align 4, !tbaa !29
  store i32 0, ptr %795, align 4, !tbaa !15
  %851 = load i32, ptr %428, align 8, !tbaa !28
  %852 = tail call i32 @llvm.umin.i32(i32 %851, i32 1073741824)
  %853 = load i32, ptr %796, align 4, !tbaa !30
  %854 = zext nneg i32 %852 to i64
  %855 = tail call i64 @write(i32 noundef %853, ptr noundef %850, i64 noundef %854) #16
  %856 = trunc i64 %855 to i32
  %857 = icmp slt i32 %856, 0
  br i1 %857, label %858, label %866

858:                                              ; preds = %849
  %859 = load i32, ptr %847, align 4, !tbaa !29
  %860 = icmp eq i32 %859, 11
  br i1 %860, label %861, label %863

861:                                              ; preds = %858
  store i32 1, ptr %795, align 4, !tbaa !15
  %862 = load i32, ptr %847, align 4, !tbaa !29
  br label %863

863:                                              ; preds = %861, %858
  %864 = phi i32 [ %859, %858 ], [ %862, %861 ]
  %865 = tail call ptr @strerror(i32 noundef %864) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %865) #16
  br label %938

866:                                              ; preds = %849
  %867 = load i32, ptr %428, align 8, !tbaa !28
  %868 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %867, i32 %856), !nosanitize !31
  %869 = extractvalue { i32, i1 } %868, 1, !nosanitize !31
  br i1 %869, label %870, label %871, !nosanitize !31

870:                                              ; preds = %866, %933
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

871:                                              ; preds = %866
  %872 = extractvalue { i32, i1 } %868, 0, !nosanitize !31
  store i32 %872, ptr %428, align 8, !tbaa !28
  %873 = load ptr, ptr %427, align 8, !tbaa !23
  %874 = and i64 %855, 4294967295
  %875 = getelementptr inbounds i8, ptr %873, i64 %874
  store ptr %875, ptr %427, align 8, !tbaa !23
  %876 = icmp eq i32 %872, 0
  br i1 %876, label %938, label %849, !llvm.loop !32

877:                                              ; preds = %840, %838
  %878 = load i32, ptr %800, align 8, !tbaa !34
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %885, label %880

880:                                              ; preds = %877
  %881 = load i32, ptr %428, align 8, !tbaa !28
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %938, label %883

883:                                              ; preds = %880
  %884 = tail call i32 @deflateReset(ptr noundef nonnull %427) #16
  store i32 0, ptr %800, align 8, !tbaa !34
  br label %885

885:                                              ; preds = %883, %877
  %886 = load i32, ptr %797, align 8, !tbaa !24
  br label %887

887:                                              ; preds = %936, %885
  %888 = phi i32 [ %886, %885 ], [ %934, %936 ]
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %890, label %928

890:                                              ; preds = %887
  %891 = load ptr, ptr %798, align 8, !tbaa !25
  %892 = load ptr, ptr %799, align 8, !tbaa !26
  %893 = icmp ugt ptr %891, %892
  br i1 %893, label %894, label %925

894:                                              ; preds = %890
  %895 = tail call ptr @__errno_location() #18
  br label %896

896:                                              ; preds = %916, %894
  %897 = phi ptr [ %892, %894 ], [ %919, %916 ]
  %898 = phi ptr [ %891, %894 ], [ %920, %916 ]
  store i32 0, ptr %895, align 4, !tbaa !29
  store i32 0, ptr %795, align 4, !tbaa !15
  %899 = ptrtoint ptr %898 to i64
  %900 = ptrtoint ptr %897 to i64
  %901 = sub i64 %899, %900
  %902 = tail call i64 @llvm.smin.i64(i64 %901, i64 1073741824)
  %903 = load i32, ptr %796, align 4, !tbaa !30
  %904 = and i64 %902, 4294967295
  %905 = tail call i64 @write(i32 noundef %903, ptr noundef %897, i64 noundef %904) #16
  %906 = and i64 %905, 2147483648
  %907 = icmp eq i64 %906, 0
  br i1 %907, label %916, label %908

908:                                              ; preds = %896
  %909 = load i32, ptr %895, align 4, !tbaa !29
  %910 = icmp eq i32 %909, 11
  br i1 %910, label %911, label %913

911:                                              ; preds = %908
  store i32 1, ptr %795, align 4, !tbaa !15
  %912 = load i32, ptr %895, align 4, !tbaa !29
  br label %913

913:                                              ; preds = %911, %908
  %914 = phi i32 [ %909, %908 ], [ %912, %911 ]
  %915 = tail call ptr @strerror(i32 noundef %914) #16
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %915) #16
  br label %938

916:                                              ; preds = %896
  %917 = load ptr, ptr %799, align 8, !tbaa !26
  %918 = and i64 %905, 2147483647
  %919 = getelementptr inbounds i8, ptr %917, i64 %918
  store ptr %919, ptr %799, align 8, !tbaa !26
  %920 = load ptr, ptr %798, align 8, !tbaa !25
  %921 = icmp ugt ptr %920, %919
  br i1 %921, label %896, label %922, !llvm.loop !35

922:                                              ; preds = %916
  %923 = load i32, ptr %797, align 8, !tbaa !24
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %925, label %928

925:                                              ; preds = %922, %890
  %926 = load i32, ptr %32, align 8, !tbaa !16
  store i32 %926, ptr %797, align 8, !tbaa !24
  %927 = load ptr, ptr %791, align 8, !tbaa !20
  store ptr %927, ptr %798, align 8, !tbaa !25
  store ptr %927, ptr %799, align 8, !tbaa !26
  br label %928

928:                                              ; preds = %925, %922, %887
  %929 = phi i32 [ %923, %922 ], [ %926, %925 ], [ %888, %887 ]
  %930 = tail call i32 @deflate(ptr noundef nonnull %427, i32 noundef 0) #16
  %931 = icmp eq i32 %930, -2
  br i1 %931, label %932, label %933

932:                                              ; preds = %928
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %938

933:                                              ; preds = %928
  %934 = load i32, ptr %797, align 8, !tbaa !24
  %935 = icmp ult i32 %929, %934
  br i1 %935, label %870, label %936, !nosanitize !31

936:                                              ; preds = %933
  %937 = icmp eq i32 %929, %934
  br i1 %937, label %938, label %887, !llvm.loop !36

938:                                              ; preds = %871, %936, %932, %913, %880, %863, %843, %829, %823, %814
  %939 = phi i1 [ true, %863 ], [ true, %913 ], [ true, %932 ], [ false, %880 ], [ true, %814 ], [ true, %823 ], [ true, %829 ], [ false, %843 ], [ false, %936 ], [ false, %871 ]
  %940 = load i32, ptr %428, align 8, !tbaa !39
  %941 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %805, i32 %940), !nosanitize !31
  %942 = extractvalue { i32, i1 } %941, 1, !nosanitize !31
  br i1 %942, label %466, label %943, !nosanitize !31

943:                                              ; preds = %938
  %944 = extractvalue { i32, i1 } %941, 0, !nosanitize !31
  %945 = zext i32 %944 to i64
  %946 = load i64, ptr %801, align 8, !tbaa !37
  %947 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %946, i64 %945), !nosanitize !31
  %948 = extractvalue { i64, i1 } %947, 1, !nosanitize !31
  br i1 %948, label %479, label %949, !nosanitize !31

949:                                              ; preds = %943
  %950 = extractvalue { i64, i1 } %947, 0, !nosanitize !31
  store i64 %950, ptr %801, align 8, !tbaa !37
  %951 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %803, i64 %945), !nosanitize !31
  %952 = extractvalue { i64, i1 } %951, 0, !nosanitize !31
  %953 = extractvalue { i64, i1 } %951, 1, !nosanitize !31
  br i1 %953, label %466, label %954, !nosanitize !31

954:                                              ; preds = %949
  br i1 %939, label %955, label %962

955:                                              ; preds = %954
  %956 = load i32, ptr %795, align 4, !tbaa !15
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %964, label %958

958:                                              ; preds = %955
  %959 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 %952), !nosanitize !31
  %960 = extractvalue { i64, i1 } %959, 0, !nosanitize !31
  %961 = extractvalue { i64, i1 } %959, 1, !nosanitize !31
  br i1 %961, label %466, label %964, !nosanitize !31

962:                                              ; preds = %954
  %963 = icmp eq i64 %952, 0
  br i1 %963, label %964, label %802, !llvm.loop !41

964:                                              ; preds = %418, %962, %491, %44, %55, %64, %96, %107, %116, %154, %211, %230, %627, %630, %647, %658, %667, %705, %762, %781, %955, %958
  %965 = phi i64 [ 0, %44 ], [ 0, %55 ], [ 0, %64 ], [ 0, %154 ], [ 0, %211 ], [ 0, %230 ], [ 0, %96 ], [ 0, %107 ], [ 0, %116 ], [ 0, %627 ], [ %632, %630 ], [ 0, %705 ], [ 0, %762 ], [ 0, %781 ], [ 0, %647 ], [ 0, %658 ], [ 0, %667 ], [ 0, %955 ], [ %960, %958 ], [ %20, %491 ], [ %20, %962 ], [ 0, %418 ]
  %966 = udiv i64 %965, %1
  br label %967

967:                                              ; preds = %964, %29, %6, %14, %4, %28
  %968 = phi i64 [ 0, %28 ], [ 0, %4 ], [ 0, %14 ], [ 0, %6 ], [ %966, %964 ], [ 0, %29 ]
  ret i64 %968
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gzputc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1337, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %1337

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %12 = load i32, ptr %11, align 8, !tbaa !14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %1337, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #16
  %19 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %20 = load i64, ptr %19, align 8, !tbaa !27
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %364, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !28
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %178, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !17
  %33 = shl i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = tail call noalias ptr @malloc(i64 noundef %34) #17
  %36 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %35, ptr %36, align 8, !tbaa !18
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1337

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %41 = load i32, ptr %40, align 8, !tbaa !19
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 %32, ptr %27, align 8, !tbaa !16
  br label %77

44:                                               ; preds = %39
  %45 = zext i32 %32 to i64
  %46 = tail call noalias ptr @malloc(i64 noundef %45) #17
  %47 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %46, ptr %47, align 8, !tbaa !20
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  tail call void @free(ptr noundef nonnull %35) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1337

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %52 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %53 = load i32, ptr %52, align 8, !tbaa !21
  %54 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %55 = load i32, ptr %54, align 4, !tbaa !22
  %56 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %53, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %55, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load ptr, ptr %47, align 8, !tbaa !20
  tail call void @free(ptr noundef %59) #16
  %60 = load ptr, ptr %36, align 8, !tbaa !18
  tail call void @free(ptr noundef %60) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1337

61:                                               ; preds = %50
  store ptr null, ptr %6, align 8, !tbaa !23
  %62 = load i32, ptr %40, align 8, !tbaa !19
  %63 = load i32, ptr %31, align 4, !tbaa !17
  store i32 %63, ptr %27, align 8, !tbaa !16
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %63, ptr %66, align 8, !tbaa !24
  %67 = load ptr, ptr %47, align 8, !tbaa !20
  %68 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %67, ptr %68, align 8, !tbaa !25
  %69 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %67, ptr %69, align 8, !tbaa !26
  br label %110

70:                                               ; preds = %26
  %71 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %72 = load i32, ptr %71, align 8, !tbaa !19
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %110, label %77

74:                                               ; preds = %61
  %75 = load i32, ptr %23, align 8, !tbaa !28
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %178, label %77

77:                                               ; preds = %74, %70, %43
  %78 = tail call ptr @__errno_location() #18
  %79 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %80 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %81 = load ptr, ptr %6, align 8, !tbaa !23
  br label %82

82:                                               ; preds = %104, %77
  %83 = phi ptr [ %81, %77 ], [ %108, %104 ]
  store i32 0, ptr %78, align 4, !tbaa !29
  store i32 0, ptr %79, align 4, !tbaa !15
  %84 = load i32, ptr %23, align 8, !tbaa !28
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 1073741824)
  %86 = load i32, ptr %80, align 4, !tbaa !30
  %87 = zext nneg i32 %85 to i64
  %88 = tail call i64 @write(i32 noundef %86, ptr noundef %83, i64 noundef %87) #16
  %89 = trunc i64 %88 to i32
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %82
  %92 = load i32, ptr %78, align 4, !tbaa !29
  %93 = icmp eq i32 %92, 11
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  store i32 1, ptr %79, align 4, !tbaa !15
  %95 = load i32, ptr %78, align 4, !tbaa !29
  br label %96

96:                                               ; preds = %94, %91
  %97 = phi i32 [ %92, %91 ], [ %95, %94 ]
  %98 = tail call ptr @strerror(i32 noundef %97) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %98) #16
  br label %1337

99:                                               ; preds = %82
  %100 = load i32, ptr %23, align 8, !tbaa !28
  %101 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %100, i32 %89), !nosanitize !31
  %102 = extractvalue { i32, i1 } %101, 1, !nosanitize !31
  br i1 %102, label %103, label %104, !nosanitize !31

103:                                              ; preds = %99, %173
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

104:                                              ; preds = %99
  %105 = extractvalue { i32, i1 } %101, 0, !nosanitize !31
  store i32 %105, ptr %23, align 8, !tbaa !28
  %106 = load ptr, ptr %6, align 8, !tbaa !23
  %107 = and i64 %88, 4294967295
  %108 = getelementptr inbounds i8, ptr %106, i64 %107
  store ptr %108, ptr %6, align 8, !tbaa !23
  %109 = icmp eq i32 %105, 0
  br i1 %109, label %178, label %82, !llvm.loop !32

110:                                              ; preds = %70, %65
  %111 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %112 = load i32, ptr %111, align 8, !tbaa !34
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = load i32, ptr %23, align 8, !tbaa !28
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %178, label %117

117:                                              ; preds = %114
  %118 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %111, align 8, !tbaa !34
  br label %119

119:                                              ; preds = %117, %110
  %120 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %121 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %122 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %123 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %124 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %125 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %126 = load i32, ptr %120, align 8, !tbaa !24
  br label %127

127:                                              ; preds = %176, %119
  %128 = phi i32 [ %126, %119 ], [ %174, %176 ]
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %168

130:                                              ; preds = %127
  %131 = load ptr, ptr %121, align 8, !tbaa !25
  %132 = load ptr, ptr %122, align 8, !tbaa !26
  %133 = icmp ugt ptr %131, %132
  br i1 %133, label %134, label %165

134:                                              ; preds = %130
  %135 = tail call ptr @__errno_location() #18
  br label %136

136:                                              ; preds = %156, %134
  %137 = phi ptr [ %132, %134 ], [ %159, %156 ]
  %138 = phi ptr [ %131, %134 ], [ %160, %156 ]
  store i32 0, ptr %135, align 4, !tbaa !29
  store i32 0, ptr %123, align 4, !tbaa !15
  %139 = ptrtoint ptr %138 to i64
  %140 = ptrtoint ptr %137 to i64
  %141 = sub i64 %139, %140
  %142 = tail call i64 @llvm.smin.i64(i64 %141, i64 1073741824)
  %143 = load i32, ptr %124, align 4, !tbaa !30
  %144 = and i64 %142, 4294967295
  %145 = tail call i64 @write(i32 noundef %143, ptr noundef %137, i64 noundef %144) #16
  %146 = and i64 %145, 2147483648
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %136
  %149 = load i32, ptr %135, align 4, !tbaa !29
  %150 = icmp eq i32 %149, 11
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  store i32 1, ptr %123, align 4, !tbaa !15
  %152 = load i32, ptr %135, align 4, !tbaa !29
  br label %153

153:                                              ; preds = %151, %148
  %154 = phi i32 [ %149, %148 ], [ %152, %151 ]
  %155 = tail call ptr @strerror(i32 noundef %154) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %155) #16
  br label %1337

156:                                              ; preds = %136
  %157 = load ptr, ptr %122, align 8, !tbaa !26
  %158 = and i64 %145, 2147483647
  %159 = getelementptr inbounds i8, ptr %157, i64 %158
  store ptr %159, ptr %122, align 8, !tbaa !26
  %160 = load ptr, ptr %121, align 8, !tbaa !25
  %161 = icmp ugt ptr %160, %159
  br i1 %161, label %136, label %162, !llvm.loop !35

162:                                              ; preds = %156
  %163 = load i32, ptr %120, align 8, !tbaa !24
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162, %130
  %166 = load i32, ptr %27, align 8, !tbaa !16
  store i32 %166, ptr %120, align 8, !tbaa !24
  %167 = load ptr, ptr %125, align 8, !tbaa !20
  store ptr %167, ptr %121, align 8, !tbaa !25
  store ptr %167, ptr %122, align 8, !tbaa !26
  br label %168

168:                                              ; preds = %165, %162, %127
  %169 = phi i32 [ %163, %162 ], [ %166, %165 ], [ %128, %127 ]
  %170 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %171 = icmp eq i32 %170, -2
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %1337

173:                                              ; preds = %168
  %174 = load i32, ptr %120, align 8, !tbaa !24
  %175 = icmp ult i32 %169, %174
  br i1 %175, label %103, label %176, !nosanitize !31

176:                                              ; preds = %173
  %177 = icmp eq i32 %169, %174
  br i1 %177, label %178, label %127, !llvm.loop !36

178:                                              ; preds = %104, %176, %114, %74, %22
  %179 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %180 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %181 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %182 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %183 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %184 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %185 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %186 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %187 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %188 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %189 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %190 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %191 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %192 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %193 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %194 = load i64, ptr %19, align 8, !tbaa !27
  br label %195

195:                                              ; preds = %362, %178
  %196 = phi i64 [ %194, %178 ], [ %359, %362 ]
  %197 = phi i1 [ false, %178 ], [ true, %362 ]
  %198 = load i32, ptr %179, align 8, !tbaa !16
  %199 = zext i32 %198 to i64
  %200 = icmp slt i64 %196, %199
  %201 = trunc i64 %196 to i32
  %202 = select i1 %200, i32 %201, i32 %198
  %203 = load ptr, ptr %180, align 8, !tbaa !18
  br i1 %197, label %208, label %204

204:                                              ; preds = %195
  %205 = zext i32 %202 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %203, i8 0, i64 %205, i1 false)
  %206 = load ptr, ptr %180, align 8, !tbaa !18
  %207 = load i32, ptr %179, align 8, !tbaa !16
  br label %208

208:                                              ; preds = %204, %195
  %209 = phi i32 [ %207, %204 ], [ %198, %195 ]
  %210 = phi ptr [ %206, %204 ], [ %203, %195 ]
  store i32 %202, ptr %23, align 8, !tbaa !28
  store ptr %210, ptr %6, align 8, !tbaa !23
  %211 = icmp eq i32 %209, 0
  br i1 %211, label %212, label %244

212:                                              ; preds = %208
  %213 = load i32, ptr %182, align 4, !tbaa !17
  %214 = shl i32 %213, 1
  %215 = zext i32 %214 to i64
  %216 = tail call noalias ptr @malloc(i64 noundef %215) #17
  store ptr %216, ptr %180, align 8, !tbaa !18
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %342

219:                                              ; preds = %212
  %220 = load i32, ptr %181, align 8, !tbaa !19
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %219
  store i32 %213, ptr %179, align 8, !tbaa !16
  br label %247

223:                                              ; preds = %219
  %224 = zext i32 %213 to i64
  %225 = tail call noalias ptr @malloc(i64 noundef %224) #17
  store ptr %225, ptr %183, align 8, !tbaa !20
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  tail call void @free(ptr noundef nonnull %216) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %342

228:                                              ; preds = %223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %184, i8 0, i64 24, i1 false)
  %229 = load i32, ptr %185, align 8, !tbaa !21
  %230 = load i32, ptr %186, align 4, !tbaa !22
  %231 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %229, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %230, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %228
  %234 = load ptr, ptr %183, align 8, !tbaa !20
  tail call void @free(ptr noundef %234) #16
  %235 = load ptr, ptr %180, align 8, !tbaa !18
  tail call void @free(ptr noundef %235) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %342

236:                                              ; preds = %228
  store ptr null, ptr %6, align 8, !tbaa !23
  %237 = load i32, ptr %181, align 8, !tbaa !19
  %238 = load i32, ptr %182, align 4, !tbaa !17
  store i32 %238, ptr %179, align 8, !tbaa !16
  %239 = icmp eq i32 %237, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %236
  %241 = load i32, ptr %23, align 8, !tbaa !28
  br label %247

242:                                              ; preds = %236
  store i32 %238, ptr %189, align 8, !tbaa !24
  %243 = load ptr, ptr %183, align 8, !tbaa !20
  store ptr %243, ptr %190, align 8, !tbaa !25
  store ptr %243, ptr %191, align 8, !tbaa !26
  br label %281

244:                                              ; preds = %208
  %245 = load i32, ptr %181, align 8, !tbaa !19
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %281, label %247

247:                                              ; preds = %244, %240, %222
  %248 = phi ptr [ null, %240 ], [ %210, %244 ], [ %210, %222 ]
  %249 = phi i32 [ %241, %240 ], [ %202, %244 ], [ %202, %222 ]
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %342, label %251

251:                                              ; preds = %247
  %252 = tail call ptr @__errno_location() #18
  br label %253

253:                                              ; preds = %275, %251
  %254 = phi ptr [ %248, %251 ], [ %279, %275 ]
  store i32 0, ptr %252, align 4, !tbaa !29
  store i32 0, ptr %187, align 4, !tbaa !15
  %255 = load i32, ptr %23, align 8, !tbaa !28
  %256 = tail call i32 @llvm.umin.i32(i32 %255, i32 1073741824)
  %257 = load i32, ptr %188, align 4, !tbaa !30
  %258 = zext nneg i32 %256 to i64
  %259 = tail call i64 @write(i32 noundef %257, ptr noundef %254, i64 noundef %258) #16
  %260 = trunc i64 %259 to i32
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %253
  %263 = load i32, ptr %252, align 4, !tbaa !29
  %264 = icmp eq i32 %263, 11
  br i1 %264, label %265, label %267

265:                                              ; preds = %262
  store i32 1, ptr %187, align 4, !tbaa !15
  %266 = load i32, ptr %252, align 4, !tbaa !29
  br label %267

267:                                              ; preds = %265, %262
  %268 = phi i32 [ %263, %262 ], [ %266, %265 ]
  %269 = tail call ptr @strerror(i32 noundef %268) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %269) #16
  br label %342

270:                                              ; preds = %253
  %271 = load i32, ptr %23, align 8, !tbaa !28
  %272 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %271, i32 %260), !nosanitize !31
  %273 = extractvalue { i32, i1 } %272, 1, !nosanitize !31
  br i1 %273, label %274, label %275, !nosanitize !31

274:                                              ; preds = %270, %337
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

275:                                              ; preds = %270
  %276 = extractvalue { i32, i1 } %272, 0, !nosanitize !31
  store i32 %276, ptr %23, align 8, !tbaa !28
  %277 = load ptr, ptr %6, align 8, !tbaa !23
  %278 = and i64 %259, 4294967295
  %279 = getelementptr inbounds i8, ptr %277, i64 %278
  store ptr %279, ptr %6, align 8, !tbaa !23
  %280 = icmp eq i32 %276, 0
  br i1 %280, label %342, label %253, !llvm.loop !32

281:                                              ; preds = %244, %242
  %282 = load i32, ptr %192, align 8, !tbaa !34
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %289, label %284

284:                                              ; preds = %281
  %285 = load i32, ptr %23, align 8, !tbaa !28
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %342, label %287

287:                                              ; preds = %284
  %288 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %192, align 8, !tbaa !34
  br label %289

289:                                              ; preds = %287, %281
  %290 = load i32, ptr %189, align 8, !tbaa !24
  br label %291

291:                                              ; preds = %340, %289
  %292 = phi i32 [ %290, %289 ], [ %338, %340 ]
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %332

294:                                              ; preds = %291
  %295 = load ptr, ptr %190, align 8, !tbaa !25
  %296 = load ptr, ptr %191, align 8, !tbaa !26
  %297 = icmp ugt ptr %295, %296
  br i1 %297, label %298, label %329

298:                                              ; preds = %294
  %299 = tail call ptr @__errno_location() #18
  br label %300

300:                                              ; preds = %320, %298
  %301 = phi ptr [ %296, %298 ], [ %323, %320 ]
  %302 = phi ptr [ %295, %298 ], [ %324, %320 ]
  store i32 0, ptr %299, align 4, !tbaa !29
  store i32 0, ptr %187, align 4, !tbaa !15
  %303 = ptrtoint ptr %302 to i64
  %304 = ptrtoint ptr %301 to i64
  %305 = sub i64 %303, %304
  %306 = tail call i64 @llvm.smin.i64(i64 %305, i64 1073741824)
  %307 = load i32, ptr %188, align 4, !tbaa !30
  %308 = and i64 %306, 4294967295
  %309 = tail call i64 @write(i32 noundef %307, ptr noundef %301, i64 noundef %308) #16
  %310 = and i64 %309, 2147483648
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %320, label %312

312:                                              ; preds = %300
  %313 = load i32, ptr %299, align 4, !tbaa !29
  %314 = icmp eq i32 %313, 11
  br i1 %314, label %315, label %317

315:                                              ; preds = %312
  store i32 1, ptr %187, align 4, !tbaa !15
  %316 = load i32, ptr %299, align 4, !tbaa !29
  br label %317

317:                                              ; preds = %315, %312
  %318 = phi i32 [ %313, %312 ], [ %316, %315 ]
  %319 = tail call ptr @strerror(i32 noundef %318) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %319) #16
  br label %342

320:                                              ; preds = %300
  %321 = load ptr, ptr %191, align 8, !tbaa !26
  %322 = and i64 %309, 2147483647
  %323 = getelementptr inbounds i8, ptr %321, i64 %322
  store ptr %323, ptr %191, align 8, !tbaa !26
  %324 = load ptr, ptr %190, align 8, !tbaa !25
  %325 = icmp ugt ptr %324, %323
  br i1 %325, label %300, label %326, !llvm.loop !35

326:                                              ; preds = %320
  %327 = load i32, ptr %189, align 8, !tbaa !24
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %326, %294
  %330 = load i32, ptr %179, align 8, !tbaa !16
  store i32 %330, ptr %189, align 8, !tbaa !24
  %331 = load ptr, ptr %183, align 8, !tbaa !20
  store ptr %331, ptr %190, align 8, !tbaa !25
  store ptr %331, ptr %191, align 8, !tbaa !26
  br label %332

332:                                              ; preds = %329, %326, %291
  %333 = phi i32 [ %327, %326 ], [ %330, %329 ], [ %292, %291 ]
  %334 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %335 = icmp eq i32 %334, -2
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %342

337:                                              ; preds = %332
  %338 = load i32, ptr %189, align 8, !tbaa !24
  %339 = icmp ult i32 %333, %338
  br i1 %339, label %274, label %340, !nosanitize !31

340:                                              ; preds = %337
  %341 = icmp eq i32 %333, %338
  br i1 %341, label %342, label %291, !llvm.loop !36

342:                                              ; preds = %275, %340, %336, %317, %284, %267, %247, %233, %227, %218
  %343 = phi i1 [ true, %267 ], [ true, %317 ], [ true, %336 ], [ false, %284 ], [ true, %218 ], [ true, %227 ], [ true, %233 ], [ false, %247 ], [ false, %340 ], [ false, %275 ]
  %344 = load i32, ptr %23, align 8, !tbaa !28
  %345 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %202, i32 %344), !nosanitize !31
  %346 = extractvalue { i32, i1 } %345, 1, !nosanitize !31
  br i1 %346, label %347, label %348, !nosanitize !31

347:                                              ; preds = %355, %342
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

348:                                              ; preds = %342
  %349 = extractvalue { i32, i1 } %345, 0, !nosanitize !31
  %350 = zext i32 %349 to i64
  %351 = load i64, ptr %193, align 8, !tbaa !37
  %352 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %351, i64 %350), !nosanitize !31
  %353 = extractvalue { i64, i1 } %352, 1, !nosanitize !31
  br i1 %353, label %354, label %355, !nosanitize !31

354:                                              ; preds = %348
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

355:                                              ; preds = %348
  %356 = extractvalue { i64, i1 } %352, 0, !nosanitize !31
  store i64 %356, ptr %193, align 8, !tbaa !37
  %357 = load i64, ptr %19, align 8, !tbaa !27
  %358 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %357, i64 %350), !nosanitize !31
  %359 = extractvalue { i64, i1 } %358, 0, !nosanitize !31
  %360 = extractvalue { i64, i1 } %358, 1, !nosanitize !31
  br i1 %360, label %347, label %361, !nosanitize !31

361:                                              ; preds = %355
  store i64 %359, ptr %19, align 8, !tbaa !27
  br i1 %343, label %1337, label %362

362:                                              ; preds = %361
  %363 = icmp eq i64 %359, 0
  br i1 %363, label %364, label %195, !llvm.loop !38

364:                                              ; preds = %362, %18
  %365 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %366 = load i32, ptr %365, align 8, !tbaa !16
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %407, label %368

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %370 = load i32, ptr %369, align 8, !tbaa !28
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %376, label %372

372:                                              ; preds = %368
  %373 = load ptr, ptr %6, align 8, !tbaa !23
  %374 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %375 = load ptr, ptr %374, align 8, !tbaa !18
  br label %379

376:                                              ; preds = %368
  %377 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %378 = load ptr, ptr %377, align 8, !tbaa !18
  store ptr %378, ptr %6, align 8, !tbaa !23
  br label %379

379:                                              ; preds = %372, %376
  %380 = phi ptr [ %375, %372 ], [ %378, %376 ]
  %381 = phi ptr [ %373, %372 ], [ %378, %376 ]
  %382 = zext i32 %370 to i64
  %383 = getelementptr inbounds i8, ptr %381, i64 %382
  %384 = ptrtoint ptr %383 to i64
  %385 = ptrtoint ptr %380 to i64
  %386 = sub i64 %384, %385
  %387 = trunc i64 %386 to i32
  %388 = icmp ugt i32 %366, %387
  %389 = trunc i32 %1 to i8
  br i1 %388, label %390, label %406

390:                                              ; preds = %379
  %391 = and i64 %386, 4294967295
  %392 = getelementptr inbounds i8, ptr %380, i64 %391
  store i8 %389, ptr %392, align 1, !tbaa !42
  %393 = load i32, ptr %369, align 8, !tbaa !28
  %394 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %393, i32 1), !nosanitize !31
  %395 = extractvalue { i32, i1 } %394, 1, !nosanitize !31
  br i1 %395, label %396, label %397, !nosanitize !31

396:                                              ; preds = %397, %390
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

397:                                              ; preds = %390
  %398 = extractvalue { i32, i1 } %394, 0, !nosanitize !31
  store i32 %398, ptr %369, align 8, !tbaa !28
  %399 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %400 = load i64, ptr %399, align 8, !tbaa !37
  %401 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %400, i64 1), !nosanitize !31
  %402 = extractvalue { i64, i1 } %401, 1, !nosanitize !31
  br i1 %402, label %396, label %403, !nosanitize !31

403:                                              ; preds = %397
  %404 = extractvalue { i64, i1 } %401, 0, !nosanitize !31
  store i64 %404, ptr %399, align 8, !tbaa !37
  %405 = and i32 %1, 255
  br label %1337

406:                                              ; preds = %379
  store i8 %389, ptr %3, align 1, !tbaa !42
  br label %448

407:                                              ; preds = %364
  %408 = trunc i32 %1 to i8
  store i8 %408, ptr %3, align 1, !tbaa !42
  %409 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %410 = load i32, ptr %409, align 4, !tbaa !17
  %411 = shl i32 %410, 1
  %412 = zext i32 %411 to i64
  %413 = tail call noalias ptr @malloc(i64 noundef %412) #17
  %414 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %413, ptr %414, align 8, !tbaa !18
  %415 = icmp eq ptr %413, null
  br i1 %415, label %416, label %417

416:                                              ; preds = %407
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1337

417:                                              ; preds = %407
  %418 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %419 = load i32, ptr %418, align 8, !tbaa !19
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %422, label %421

421:                                              ; preds = %417
  store i32 %410, ptr %365, align 8, !tbaa !16
  br label %448

422:                                              ; preds = %417
  %423 = zext i32 %410 to i64
  %424 = tail call noalias ptr @malloc(i64 noundef %423) #17
  %425 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %424, ptr %425, align 8, !tbaa !20
  %426 = icmp eq ptr %424, null
  br i1 %426, label %427, label %428

427:                                              ; preds = %422
  tail call void @free(ptr noundef nonnull %413) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1337

428:                                              ; preds = %422
  %429 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %430 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %429, i8 0, i64 24, i1 false)
  %431 = load i32, ptr %430, align 8, !tbaa !21
  %432 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %433 = load i32, ptr %432, align 4, !tbaa !22
  %434 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %431, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %433, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %439, label %436

436:                                              ; preds = %428
  %437 = load ptr, ptr %425, align 8, !tbaa !20
  tail call void @free(ptr noundef %437) #16
  %438 = load ptr, ptr %414, align 8, !tbaa !18
  tail call void @free(ptr noundef %438) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1337

439:                                              ; preds = %428
  store ptr null, ptr %6, align 8, !tbaa !23
  %440 = load i32, ptr %418, align 8, !tbaa !19
  %441 = load i32, ptr %409, align 4, !tbaa !17
  store i32 %441, ptr %365, align 8, !tbaa !16
  %442 = icmp eq i32 %440, 0
  br i1 %442, label %443, label %448

443:                                              ; preds = %439
  %444 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %441, ptr %444, align 8, !tbaa !24
  %445 = load ptr, ptr %425, align 8, !tbaa !20
  %446 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %445, ptr %446, align 8, !tbaa !25
  %447 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %445, ptr %447, align 8, !tbaa !26
  br label %448

448:                                              ; preds = %406, %443, %439, %421
  %449 = phi i32 [ %441, %443 ], [ %441, %439 ], [ %410, %421 ], [ %366, %406 ]
  %450 = load i64, ptr %19, align 8, !tbaa !27
  %451 = icmp eq i64 %450, 0
  br i1 %451, label %793, label %452

452:                                              ; preds = %448
  %453 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %454 = load i32, ptr %453, align 8, !tbaa !28
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %606, label %456

456:                                              ; preds = %452
  %457 = icmp eq i32 %449, 0
  br i1 %457, label %458, label %498

458:                                              ; preds = %456
  %459 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %460 = load i32, ptr %459, align 4, !tbaa !17
  %461 = shl i32 %460, 1
  %462 = zext i32 %461 to i64
  %463 = tail call noalias ptr @malloc(i64 noundef %462) #17
  %464 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %463, ptr %464, align 8, !tbaa !18
  %465 = icmp eq ptr %463, null
  br i1 %465, label %466, label %467

466:                                              ; preds = %458
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1337

467:                                              ; preds = %458
  %468 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %469 = load i32, ptr %468, align 8, !tbaa !19
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %472, label %471

471:                                              ; preds = %467
  store i32 %460, ptr %365, align 8, !tbaa !16
  br label %505

472:                                              ; preds = %467
  %473 = zext i32 %460 to i64
  %474 = tail call noalias ptr @malloc(i64 noundef %473) #17
  %475 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %474, ptr %475, align 8, !tbaa !20
  %476 = icmp eq ptr %474, null
  br i1 %476, label %477, label %478

477:                                              ; preds = %472
  tail call void @free(ptr noundef nonnull %463) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1337

478:                                              ; preds = %472
  %479 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %480 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %479, i8 0, i64 24, i1 false)
  %481 = load i32, ptr %480, align 8, !tbaa !21
  %482 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %483 = load i32, ptr %482, align 4, !tbaa !22
  %484 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %481, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %483, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %489, label %486

486:                                              ; preds = %478
  %487 = load ptr, ptr %475, align 8, !tbaa !20
  tail call void @free(ptr noundef %487) #16
  %488 = load ptr, ptr %464, align 8, !tbaa !18
  tail call void @free(ptr noundef %488) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1337

489:                                              ; preds = %478
  store ptr null, ptr %6, align 8, !tbaa !23
  %490 = load i32, ptr %468, align 8, !tbaa !19
  %491 = load i32, ptr %459, align 4, !tbaa !17
  store i32 %491, ptr %365, align 8, !tbaa !16
  %492 = icmp eq i32 %490, 0
  br i1 %492, label %493, label %502

493:                                              ; preds = %489
  %494 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %491, ptr %494, align 8, !tbaa !24
  %495 = load ptr, ptr %475, align 8, !tbaa !20
  %496 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %495, ptr %496, align 8, !tbaa !25
  %497 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %495, ptr %497, align 8, !tbaa !26
  br label %538

498:                                              ; preds = %456
  %499 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %500 = load i32, ptr %499, align 8, !tbaa !19
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %538, label %505

502:                                              ; preds = %489
  %503 = load i32, ptr %453, align 8, !tbaa !28
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %606, label %505

505:                                              ; preds = %502, %498, %471
  %506 = tail call ptr @__errno_location() #18
  %507 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %508 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %509 = load ptr, ptr %6, align 8, !tbaa !23
  br label %510

510:                                              ; preds = %532, %505
  %511 = phi ptr [ %509, %505 ], [ %536, %532 ]
  store i32 0, ptr %506, align 4, !tbaa !29
  store i32 0, ptr %507, align 4, !tbaa !15
  %512 = load i32, ptr %453, align 8, !tbaa !28
  %513 = tail call i32 @llvm.umin.i32(i32 %512, i32 1073741824)
  %514 = load i32, ptr %508, align 4, !tbaa !30
  %515 = zext nneg i32 %513 to i64
  %516 = tail call i64 @write(i32 noundef %514, ptr noundef %511, i64 noundef %515) #16
  %517 = trunc i64 %516 to i32
  %518 = icmp slt i32 %517, 0
  br i1 %518, label %519, label %527

519:                                              ; preds = %510
  %520 = load i32, ptr %506, align 4, !tbaa !29
  %521 = icmp eq i32 %520, 11
  br i1 %521, label %522, label %524

522:                                              ; preds = %519
  store i32 1, ptr %507, align 4, !tbaa !15
  %523 = load i32, ptr %506, align 4, !tbaa !29
  br label %524

524:                                              ; preds = %522, %519
  %525 = phi i32 [ %520, %519 ], [ %523, %522 ]
  %526 = tail call ptr @strerror(i32 noundef %525) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %526) #16
  br label %1337

527:                                              ; preds = %510
  %528 = load i32, ptr %453, align 8, !tbaa !28
  %529 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %528, i32 %517), !nosanitize !31
  %530 = extractvalue { i32, i1 } %529, 1, !nosanitize !31
  br i1 %530, label %531, label %532, !nosanitize !31

531:                                              ; preds = %527, %601
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

532:                                              ; preds = %527
  %533 = extractvalue { i32, i1 } %529, 0, !nosanitize !31
  store i32 %533, ptr %453, align 8, !tbaa !28
  %534 = load ptr, ptr %6, align 8, !tbaa !23
  %535 = and i64 %516, 4294967295
  %536 = getelementptr inbounds i8, ptr %534, i64 %535
  store ptr %536, ptr %6, align 8, !tbaa !23
  %537 = icmp eq i32 %533, 0
  br i1 %537, label %606, label %510, !llvm.loop !32

538:                                              ; preds = %498, %493
  %539 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %540 = load i32, ptr %539, align 8, !tbaa !34
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %547, label %542

542:                                              ; preds = %538
  %543 = load i32, ptr %453, align 8, !tbaa !28
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %606, label %545

545:                                              ; preds = %542
  %546 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %539, align 8, !tbaa !34
  br label %547

547:                                              ; preds = %545, %538
  %548 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %549 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %550 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %551 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %552 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %553 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %554 = load i32, ptr %548, align 8, !tbaa !24
  br label %555

555:                                              ; preds = %604, %547
  %556 = phi i32 [ %554, %547 ], [ %602, %604 ]
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %596

558:                                              ; preds = %555
  %559 = load ptr, ptr %549, align 8, !tbaa !25
  %560 = load ptr, ptr %550, align 8, !tbaa !26
  %561 = icmp ugt ptr %559, %560
  br i1 %561, label %562, label %593

562:                                              ; preds = %558
  %563 = tail call ptr @__errno_location() #18
  br label %564

564:                                              ; preds = %584, %562
  %565 = phi ptr [ %560, %562 ], [ %587, %584 ]
  %566 = phi ptr [ %559, %562 ], [ %588, %584 ]
  store i32 0, ptr %563, align 4, !tbaa !29
  store i32 0, ptr %551, align 4, !tbaa !15
  %567 = ptrtoint ptr %566 to i64
  %568 = ptrtoint ptr %565 to i64
  %569 = sub i64 %567, %568
  %570 = tail call i64 @llvm.smin.i64(i64 %569, i64 1073741824)
  %571 = load i32, ptr %552, align 4, !tbaa !30
  %572 = and i64 %570, 4294967295
  %573 = tail call i64 @write(i32 noundef %571, ptr noundef %565, i64 noundef %572) #16
  %574 = and i64 %573, 2147483648
  %575 = icmp eq i64 %574, 0
  br i1 %575, label %584, label %576

576:                                              ; preds = %564
  %577 = load i32, ptr %563, align 4, !tbaa !29
  %578 = icmp eq i32 %577, 11
  br i1 %578, label %579, label %581

579:                                              ; preds = %576
  store i32 1, ptr %551, align 4, !tbaa !15
  %580 = load i32, ptr %563, align 4, !tbaa !29
  br label %581

581:                                              ; preds = %579, %576
  %582 = phi i32 [ %577, %576 ], [ %580, %579 ]
  %583 = tail call ptr @strerror(i32 noundef %582) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %583) #16
  br label %1337

584:                                              ; preds = %564
  %585 = load ptr, ptr %550, align 8, !tbaa !26
  %586 = and i64 %573, 2147483647
  %587 = getelementptr inbounds i8, ptr %585, i64 %586
  store ptr %587, ptr %550, align 8, !tbaa !26
  %588 = load ptr, ptr %549, align 8, !tbaa !25
  %589 = icmp ugt ptr %588, %587
  br i1 %589, label %564, label %590, !llvm.loop !35

590:                                              ; preds = %584
  %591 = load i32, ptr %548, align 8, !tbaa !24
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %593, label %596

593:                                              ; preds = %590, %558
  %594 = load i32, ptr %365, align 8, !tbaa !16
  store i32 %594, ptr %548, align 8, !tbaa !24
  %595 = load ptr, ptr %553, align 8, !tbaa !20
  store ptr %595, ptr %549, align 8, !tbaa !25
  store ptr %595, ptr %550, align 8, !tbaa !26
  br label %596

596:                                              ; preds = %593, %590, %555
  %597 = phi i32 [ %591, %590 ], [ %594, %593 ], [ %556, %555 ]
  %598 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %599 = icmp eq i32 %598, -2
  br i1 %599, label %600, label %601

600:                                              ; preds = %596
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %1337

601:                                              ; preds = %596
  %602 = load i32, ptr %548, align 8, !tbaa !24
  %603 = icmp ult i32 %597, %602
  br i1 %603, label %531, label %604, !nosanitize !31

604:                                              ; preds = %601
  %605 = icmp eq i32 %597, %602
  br i1 %605, label %606, label %555, !llvm.loop !36

606:                                              ; preds = %532, %604, %542, %502, %452
  %607 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %608 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %609 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %610 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %611 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %612 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %613 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %614 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %615 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %616 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %617 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %618 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %619 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %620 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %621 = load i64, ptr %19, align 8, !tbaa !27
  br label %622

622:                                              ; preds = %789, %606
  %623 = phi i64 [ %621, %606 ], [ %786, %789 ]
  %624 = phi i1 [ false, %606 ], [ true, %789 ]
  %625 = load i32, ptr %365, align 8, !tbaa !16
  %626 = zext i32 %625 to i64
  %627 = icmp slt i64 %623, %626
  %628 = trunc i64 %623 to i32
  %629 = select i1 %627, i32 %628, i32 %625
  %630 = load ptr, ptr %607, align 8, !tbaa !18
  br i1 %624, label %635, label %631

631:                                              ; preds = %622
  %632 = zext i32 %629 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %630, i8 0, i64 %632, i1 false)
  %633 = load ptr, ptr %607, align 8, !tbaa !18
  %634 = load i32, ptr %365, align 8, !tbaa !16
  br label %635

635:                                              ; preds = %631, %622
  %636 = phi i32 [ %634, %631 ], [ %625, %622 ]
  %637 = phi ptr [ %633, %631 ], [ %630, %622 ]
  store i32 %629, ptr %453, align 8, !tbaa !28
  store ptr %637, ptr %6, align 8, !tbaa !23
  %638 = icmp eq i32 %636, 0
  br i1 %638, label %639, label %671

639:                                              ; preds = %635
  %640 = load i32, ptr %609, align 4, !tbaa !17
  %641 = shl i32 %640, 1
  %642 = zext i32 %641 to i64
  %643 = tail call noalias ptr @malloc(i64 noundef %642) #17
  store ptr %643, ptr %607, align 8, !tbaa !18
  %644 = icmp eq ptr %643, null
  br i1 %644, label %645, label %646

645:                                              ; preds = %639
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %769

646:                                              ; preds = %639
  %647 = load i32, ptr %608, align 8, !tbaa !19
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %650, label %649

649:                                              ; preds = %646
  store i32 %640, ptr %365, align 8, !tbaa !16
  br label %674

650:                                              ; preds = %646
  %651 = zext i32 %640 to i64
  %652 = tail call noalias ptr @malloc(i64 noundef %651) #17
  store ptr %652, ptr %610, align 8, !tbaa !20
  %653 = icmp eq ptr %652, null
  br i1 %653, label %654, label %655

654:                                              ; preds = %650
  tail call void @free(ptr noundef nonnull %643) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %769

655:                                              ; preds = %650
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %611, i8 0, i64 24, i1 false)
  %656 = load i32, ptr %612, align 8, !tbaa !21
  %657 = load i32, ptr %613, align 4, !tbaa !22
  %658 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %656, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %657, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %663, label %660

660:                                              ; preds = %655
  %661 = load ptr, ptr %610, align 8, !tbaa !20
  tail call void @free(ptr noundef %661) #16
  %662 = load ptr, ptr %607, align 8, !tbaa !18
  tail call void @free(ptr noundef %662) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %769

663:                                              ; preds = %655
  store ptr null, ptr %6, align 8, !tbaa !23
  %664 = load i32, ptr %608, align 8, !tbaa !19
  %665 = load i32, ptr %609, align 4, !tbaa !17
  store i32 %665, ptr %365, align 8, !tbaa !16
  %666 = icmp eq i32 %664, 0
  br i1 %666, label %669, label %667

667:                                              ; preds = %663
  %668 = load i32, ptr %453, align 8, !tbaa !28
  br label %674

669:                                              ; preds = %663
  store i32 %665, ptr %616, align 8, !tbaa !24
  %670 = load ptr, ptr %610, align 8, !tbaa !20
  store ptr %670, ptr %617, align 8, !tbaa !25
  store ptr %670, ptr %618, align 8, !tbaa !26
  br label %708

671:                                              ; preds = %635
  %672 = load i32, ptr %608, align 8, !tbaa !19
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %708, label %674

674:                                              ; preds = %671, %667, %649
  %675 = phi ptr [ null, %667 ], [ %637, %671 ], [ %637, %649 ]
  %676 = phi i32 [ %668, %667 ], [ %629, %671 ], [ %629, %649 ]
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %769, label %678

678:                                              ; preds = %674
  %679 = tail call ptr @__errno_location() #18
  br label %680

680:                                              ; preds = %702, %678
  %681 = phi ptr [ %675, %678 ], [ %706, %702 ]
  store i32 0, ptr %679, align 4, !tbaa !29
  store i32 0, ptr %614, align 4, !tbaa !15
  %682 = load i32, ptr %453, align 8, !tbaa !28
  %683 = tail call i32 @llvm.umin.i32(i32 %682, i32 1073741824)
  %684 = load i32, ptr %615, align 4, !tbaa !30
  %685 = zext nneg i32 %683 to i64
  %686 = tail call i64 @write(i32 noundef %684, ptr noundef %681, i64 noundef %685) #16
  %687 = trunc i64 %686 to i32
  %688 = icmp slt i32 %687, 0
  br i1 %688, label %689, label %697

689:                                              ; preds = %680
  %690 = load i32, ptr %679, align 4, !tbaa !29
  %691 = icmp eq i32 %690, 11
  br i1 %691, label %692, label %694

692:                                              ; preds = %689
  store i32 1, ptr %614, align 4, !tbaa !15
  %693 = load i32, ptr %679, align 4, !tbaa !29
  br label %694

694:                                              ; preds = %692, %689
  %695 = phi i32 [ %690, %689 ], [ %693, %692 ]
  %696 = tail call ptr @strerror(i32 noundef %695) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %696) #16
  br label %769

697:                                              ; preds = %680
  %698 = load i32, ptr %453, align 8, !tbaa !28
  %699 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %698, i32 %687), !nosanitize !31
  %700 = extractvalue { i32, i1 } %699, 1, !nosanitize !31
  br i1 %700, label %701, label %702, !nosanitize !31

701:                                              ; preds = %697, %764
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

702:                                              ; preds = %697
  %703 = extractvalue { i32, i1 } %699, 0, !nosanitize !31
  store i32 %703, ptr %453, align 8, !tbaa !28
  %704 = load ptr, ptr %6, align 8, !tbaa !23
  %705 = and i64 %686, 4294967295
  %706 = getelementptr inbounds i8, ptr %704, i64 %705
  store ptr %706, ptr %6, align 8, !tbaa !23
  %707 = icmp eq i32 %703, 0
  br i1 %707, label %769, label %680, !llvm.loop !32

708:                                              ; preds = %671, %669
  %709 = load i32, ptr %619, align 8, !tbaa !34
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %716, label %711

711:                                              ; preds = %708
  %712 = load i32, ptr %453, align 8, !tbaa !28
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %769, label %714

714:                                              ; preds = %711
  %715 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %619, align 8, !tbaa !34
  br label %716

716:                                              ; preds = %714, %708
  %717 = load i32, ptr %616, align 8, !tbaa !24
  br label %718

718:                                              ; preds = %767, %716
  %719 = phi i32 [ %717, %716 ], [ %765, %767 ]
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %721, label %759

721:                                              ; preds = %718
  %722 = load ptr, ptr %617, align 8, !tbaa !25
  %723 = load ptr, ptr %618, align 8, !tbaa !26
  %724 = icmp ugt ptr %722, %723
  br i1 %724, label %725, label %756

725:                                              ; preds = %721
  %726 = tail call ptr @__errno_location() #18
  br label %727

727:                                              ; preds = %747, %725
  %728 = phi ptr [ %723, %725 ], [ %750, %747 ]
  %729 = phi ptr [ %722, %725 ], [ %751, %747 ]
  store i32 0, ptr %726, align 4, !tbaa !29
  store i32 0, ptr %614, align 4, !tbaa !15
  %730 = ptrtoint ptr %729 to i64
  %731 = ptrtoint ptr %728 to i64
  %732 = sub i64 %730, %731
  %733 = tail call i64 @llvm.smin.i64(i64 %732, i64 1073741824)
  %734 = load i32, ptr %615, align 4, !tbaa !30
  %735 = and i64 %733, 4294967295
  %736 = tail call i64 @write(i32 noundef %734, ptr noundef %728, i64 noundef %735) #16
  %737 = and i64 %736, 2147483648
  %738 = icmp eq i64 %737, 0
  br i1 %738, label %747, label %739

739:                                              ; preds = %727
  %740 = load i32, ptr %726, align 4, !tbaa !29
  %741 = icmp eq i32 %740, 11
  br i1 %741, label %742, label %744

742:                                              ; preds = %739
  store i32 1, ptr %614, align 4, !tbaa !15
  %743 = load i32, ptr %726, align 4, !tbaa !29
  br label %744

744:                                              ; preds = %742, %739
  %745 = phi i32 [ %740, %739 ], [ %743, %742 ]
  %746 = tail call ptr @strerror(i32 noundef %745) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %746) #16
  br label %769

747:                                              ; preds = %727
  %748 = load ptr, ptr %618, align 8, !tbaa !26
  %749 = and i64 %736, 2147483647
  %750 = getelementptr inbounds i8, ptr %748, i64 %749
  store ptr %750, ptr %618, align 8, !tbaa !26
  %751 = load ptr, ptr %617, align 8, !tbaa !25
  %752 = icmp ugt ptr %751, %750
  br i1 %752, label %727, label %753, !llvm.loop !35

753:                                              ; preds = %747
  %754 = load i32, ptr %616, align 8, !tbaa !24
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %759

756:                                              ; preds = %753, %721
  %757 = load i32, ptr %365, align 8, !tbaa !16
  store i32 %757, ptr %616, align 8, !tbaa !24
  %758 = load ptr, ptr %610, align 8, !tbaa !20
  store ptr %758, ptr %617, align 8, !tbaa !25
  store ptr %758, ptr %618, align 8, !tbaa !26
  br label %759

759:                                              ; preds = %756, %753, %718
  %760 = phi i32 [ %754, %753 ], [ %757, %756 ], [ %719, %718 ]
  %761 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %762 = icmp eq i32 %761, -2
  br i1 %762, label %763, label %764

763:                                              ; preds = %759
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %769

764:                                              ; preds = %759
  %765 = load i32, ptr %616, align 8, !tbaa !24
  %766 = icmp ult i32 %760, %765
  br i1 %766, label %701, label %767, !nosanitize !31

767:                                              ; preds = %764
  %768 = icmp eq i32 %760, %765
  br i1 %768, label %769, label %718, !llvm.loop !36

769:                                              ; preds = %702, %767, %763, %744, %711, %694, %674, %660, %654, %645
  %770 = phi i1 [ true, %694 ], [ true, %744 ], [ true, %763 ], [ false, %711 ], [ true, %645 ], [ true, %654 ], [ true, %660 ], [ false, %674 ], [ false, %767 ], [ false, %702 ]
  %771 = load i32, ptr %453, align 8, !tbaa !28
  %772 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %629, i32 %771), !nosanitize !31
  %773 = extractvalue { i32, i1 } %772, 1, !nosanitize !31
  br i1 %773, label %774, label %775, !nosanitize !31

774:                                              ; preds = %782, %769
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

775:                                              ; preds = %769
  %776 = extractvalue { i32, i1 } %772, 0, !nosanitize !31
  %777 = zext i32 %776 to i64
  %778 = load i64, ptr %620, align 8, !tbaa !37
  %779 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %778, i64 %777), !nosanitize !31
  %780 = extractvalue { i64, i1 } %779, 1, !nosanitize !31
  br i1 %780, label %781, label %782, !nosanitize !31

781:                                              ; preds = %775
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

782:                                              ; preds = %775
  %783 = extractvalue { i64, i1 } %779, 0, !nosanitize !31
  store i64 %783, ptr %620, align 8, !tbaa !37
  %784 = load i64, ptr %19, align 8, !tbaa !27
  %785 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %784, i64 %777), !nosanitize !31
  %786 = extractvalue { i64, i1 } %785, 0, !nosanitize !31
  %787 = extractvalue { i64, i1 } %785, 1, !nosanitize !31
  br i1 %787, label %774, label %788, !nosanitize !31

788:                                              ; preds = %782
  store i64 %786, ptr %19, align 8, !tbaa !27
  br i1 %770, label %1337, label %789

789:                                              ; preds = %788
  %790 = icmp eq i64 %786, 0
  br i1 %790, label %791, label %622, !llvm.loop !38

791:                                              ; preds = %789
  %792 = load i32, ptr %365, align 8, !tbaa !16
  br label %793

793:                                              ; preds = %791, %448
  %794 = phi i32 [ %792, %791 ], [ %449, %448 ]
  %795 = icmp ugt i32 %794, 1
  %796 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  br i1 %795, label %797, label %1001

797:                                              ; preds = %793
  %798 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %799 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %800 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %801 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %802 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %803 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %804 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %805 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %806 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %807 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %808 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %809 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %810 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %811 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  br label %812

812:                                              ; preds = %939, %797
  %813 = phi i64 [ 1, %797 ], [ %857, %939 ]
  %814 = phi ptr [ %3, %797 ], [ %855, %939 ]
  %815 = load i32, ptr %796, align 8, !tbaa !39
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %820, label %817

817:                                              ; preds = %812
  %818 = load ptr, ptr %6, align 8, !tbaa !40
  %819 = load ptr, ptr %798, align 8, !tbaa !18
  br label %822

820:                                              ; preds = %812
  %821 = load ptr, ptr %798, align 8, !tbaa !18
  store ptr %821, ptr %6, align 8, !tbaa !40
  br label %822

822:                                              ; preds = %820, %817
  %823 = phi ptr [ %819, %817 ], [ %821, %820 ]
  %824 = phi ptr [ %818, %817 ], [ %821, %820 ]
  %825 = zext i32 %815 to i64
  %826 = getelementptr inbounds i8, ptr %824, i64 %825
  %827 = ptrtoint ptr %826 to i64
  %828 = ptrtoint ptr %823 to i64
  %829 = sub i64 %827, %828
  %830 = trunc i64 %829 to i32
  %831 = load i32, ptr %365, align 8, !tbaa !16
  %832 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %831, i32 %830), !nosanitize !31
  %833 = extractvalue { i32, i1 } %832, 1, !nosanitize !31
  br i1 %833, label %834, label %835, !nosanitize !31

834:                                              ; preds = %1314, %1303, %853, %822, %1323, %998
  call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

835:                                              ; preds = %822
  %836 = extractvalue { i32, i1 } %832, 0, !nosanitize !31
  %837 = zext i32 %836 to i64
  %838 = icmp ult i64 %813, %837
  %839 = trunc i64 %813 to i32
  %840 = select i1 %838, i32 %839, i32 %836
  %841 = and i64 %829, 4294967295
  %842 = getelementptr inbounds i8, ptr %823, i64 %841
  %843 = zext i32 %840 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %842, ptr align 1 %814, i64 %843, i1 false)
  %844 = load i32, ptr %796, align 8, !tbaa !39
  %845 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %844, i32 %840), !nosanitize !31
  %846 = extractvalue { i32, i1 } %845, 1, !nosanitize !31
  br i1 %846, label %847, label %848, !nosanitize !31

847:                                              ; preds = %1308, %848, %835
  call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

848:                                              ; preds = %835
  %849 = extractvalue { i32, i1 } %845, 0, !nosanitize !31
  store i32 %849, ptr %796, align 8, !tbaa !39
  %850 = load i64, ptr %799, align 8, !tbaa !37
  %851 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %850, i64 %843), !nosanitize !31
  %852 = extractvalue { i64, i1 } %851, 1, !nosanitize !31
  br i1 %852, label %847, label %853, !nosanitize !31

853:                                              ; preds = %848
  %854 = extractvalue { i64, i1 } %851, 0, !nosanitize !31
  store i64 %854, ptr %799, align 8, !tbaa !37
  %855 = getelementptr inbounds i8, ptr %814, i64 %843
  %856 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %813, i64 %843), !nosanitize !31
  %857 = extractvalue { i64, i1 } %856, 0, !nosanitize !31
  %858 = extractvalue { i64, i1 } %856, 1, !nosanitize !31
  br i1 %858, label %834, label %859, !nosanitize !31

859:                                              ; preds = %853
  %860 = icmp eq i64 %857, 0
  br i1 %860, label %1328, label %861

861:                                              ; preds = %859
  %862 = load i32, ptr %365, align 8, !tbaa !16
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %864, label %896

864:                                              ; preds = %861
  %865 = load i32, ptr %801, align 4, !tbaa !17
  %866 = shl i32 %865, 1
  %867 = zext i32 %866 to i64
  %868 = tail call noalias ptr @malloc(i64 noundef %867) #17
  store ptr %868, ptr %798, align 8, !tbaa !18
  %869 = icmp eq ptr %868, null
  br i1 %869, label %870, label %871

870:                                              ; preds = %864
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %995

871:                                              ; preds = %864
  %872 = load i32, ptr %800, align 8, !tbaa !19
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %875, label %874

874:                                              ; preds = %871
  store i32 %865, ptr %365, align 8, !tbaa !16
  br label %899

875:                                              ; preds = %871
  %876 = zext i32 %865 to i64
  %877 = tail call noalias ptr @malloc(i64 noundef %876) #17
  store ptr %877, ptr %802, align 8, !tbaa !20
  %878 = icmp eq ptr %877, null
  br i1 %878, label %879, label %880

879:                                              ; preds = %875
  tail call void @free(ptr noundef nonnull %868) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %995

880:                                              ; preds = %875
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %803, i8 0, i64 24, i1 false)
  %881 = load i32, ptr %804, align 8, !tbaa !21
  %882 = load i32, ptr %805, align 4, !tbaa !22
  %883 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %881, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %882, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %888, label %885

885:                                              ; preds = %880
  %886 = load ptr, ptr %802, align 8, !tbaa !20
  tail call void @free(ptr noundef %886) #16
  %887 = load ptr, ptr %798, align 8, !tbaa !18
  tail call void @free(ptr noundef %887) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %995

888:                                              ; preds = %880
  store ptr null, ptr %6, align 8, !tbaa !23
  %889 = load i32, ptr %800, align 8, !tbaa !19
  %890 = load i32, ptr %801, align 4, !tbaa !17
  store i32 %890, ptr %365, align 8, !tbaa !16
  %891 = icmp eq i32 %889, 0
  br i1 %891, label %894, label %892

892:                                              ; preds = %888
  %893 = load i32, ptr %796, align 8, !tbaa !28
  br label %899

894:                                              ; preds = %888
  store i32 %890, ptr %808, align 8, !tbaa !24
  %895 = load ptr, ptr %802, align 8, !tbaa !20
  store ptr %895, ptr %809, align 8, !tbaa !25
  store ptr %895, ptr %810, align 8, !tbaa !26
  br label %933

896:                                              ; preds = %861
  %897 = load i32, ptr %800, align 8, !tbaa !19
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %933, label %899

899:                                              ; preds = %896, %892, %874
  %900 = phi i32 [ %893, %892 ], [ %849, %896 ], [ %849, %874 ]
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %939, label %902

902:                                              ; preds = %899
  %903 = tail call ptr @__errno_location() #18
  %904 = load ptr, ptr %6, align 8, !tbaa !23
  br label %905

905:                                              ; preds = %927, %902
  %906 = phi ptr [ %904, %902 ], [ %931, %927 ]
  store i32 0, ptr %903, align 4, !tbaa !29
  store i32 0, ptr %806, align 4, !tbaa !15
  %907 = load i32, ptr %796, align 8, !tbaa !28
  %908 = tail call i32 @llvm.umin.i32(i32 %907, i32 1073741824)
  %909 = load i32, ptr %807, align 4, !tbaa !30
  %910 = zext nneg i32 %908 to i64
  %911 = tail call i64 @write(i32 noundef %909, ptr noundef %906, i64 noundef %910) #16
  %912 = trunc i64 %911 to i32
  %913 = icmp slt i32 %912, 0
  br i1 %913, label %914, label %922

914:                                              ; preds = %905
  %915 = load i32, ptr %903, align 4, !tbaa !29
  %916 = icmp eq i32 %915, 11
  br i1 %916, label %917, label %919

917:                                              ; preds = %914
  store i32 1, ptr %806, align 4, !tbaa !15
  %918 = load i32, ptr %903, align 4, !tbaa !29
  br label %919

919:                                              ; preds = %917, %914
  %920 = phi i32 [ %915, %914 ], [ %918, %917 ]
  %921 = tail call ptr @strerror(i32 noundef %920) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %921) #16
  br label %995

922:                                              ; preds = %905
  %923 = load i32, ptr %796, align 8, !tbaa !28
  %924 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %923, i32 %912), !nosanitize !31
  %925 = extractvalue { i32, i1 } %924, 1, !nosanitize !31
  br i1 %925, label %926, label %927, !nosanitize !31

926:                                              ; preds = %922, %990
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

927:                                              ; preds = %922
  %928 = extractvalue { i32, i1 } %924, 0, !nosanitize !31
  store i32 %928, ptr %796, align 8, !tbaa !28
  %929 = load ptr, ptr %6, align 8, !tbaa !23
  %930 = and i64 %911, 4294967295
  %931 = getelementptr inbounds i8, ptr %929, i64 %930
  store ptr %931, ptr %6, align 8, !tbaa !23
  %932 = icmp eq i32 %928, 0
  br i1 %932, label %939, label %905, !llvm.loop !32

933:                                              ; preds = %896, %894
  %934 = load i32, ptr %811, align 8, !tbaa !34
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %942, label %936

936:                                              ; preds = %933
  %937 = load i32, ptr %796, align 8, !tbaa !28
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %939, label %940

939:                                              ; preds = %927, %993, %936, %899
  br label %812

940:                                              ; preds = %936
  %941 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %811, align 8, !tbaa !34
  br label %942

942:                                              ; preds = %940, %933
  %943 = load i32, ptr %808, align 8, !tbaa !24
  br label %944

944:                                              ; preds = %993, %942
  %945 = phi i32 [ %943, %942 ], [ %991, %993 ]
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %947, label %985

947:                                              ; preds = %944
  %948 = load ptr, ptr %809, align 8, !tbaa !25
  %949 = load ptr, ptr %810, align 8, !tbaa !26
  %950 = icmp ugt ptr %948, %949
  br i1 %950, label %951, label %982

951:                                              ; preds = %947
  %952 = tail call ptr @__errno_location() #18
  br label %953

953:                                              ; preds = %973, %951
  %954 = phi ptr [ %949, %951 ], [ %976, %973 ]
  %955 = phi ptr [ %948, %951 ], [ %977, %973 ]
  store i32 0, ptr %952, align 4, !tbaa !29
  store i32 0, ptr %806, align 4, !tbaa !15
  %956 = ptrtoint ptr %955 to i64
  %957 = ptrtoint ptr %954 to i64
  %958 = sub i64 %956, %957
  %959 = tail call i64 @llvm.smin.i64(i64 %958, i64 1073741824)
  %960 = load i32, ptr %807, align 4, !tbaa !30
  %961 = and i64 %959, 4294967295
  %962 = tail call i64 @write(i32 noundef %960, ptr noundef %954, i64 noundef %961) #16
  %963 = and i64 %962, 2147483648
  %964 = icmp eq i64 %963, 0
  br i1 %964, label %973, label %965

965:                                              ; preds = %953
  %966 = load i32, ptr %952, align 4, !tbaa !29
  %967 = icmp eq i32 %966, 11
  br i1 %967, label %968, label %970

968:                                              ; preds = %965
  store i32 1, ptr %806, align 4, !tbaa !15
  %969 = load i32, ptr %952, align 4, !tbaa !29
  br label %970

970:                                              ; preds = %968, %965
  %971 = phi i32 [ %966, %965 ], [ %969, %968 ]
  %972 = tail call ptr @strerror(i32 noundef %971) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %972) #16
  br label %995

973:                                              ; preds = %953
  %974 = load ptr, ptr %810, align 8, !tbaa !26
  %975 = and i64 %962, 2147483647
  %976 = getelementptr inbounds i8, ptr %974, i64 %975
  store ptr %976, ptr %810, align 8, !tbaa !26
  %977 = load ptr, ptr %809, align 8, !tbaa !25
  %978 = icmp ugt ptr %977, %976
  br i1 %978, label %953, label %979, !llvm.loop !35

979:                                              ; preds = %973
  %980 = load i32, ptr %808, align 8, !tbaa !24
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %982, label %985

982:                                              ; preds = %979, %947
  %983 = load i32, ptr %365, align 8, !tbaa !16
  store i32 %983, ptr %808, align 8, !tbaa !24
  %984 = load ptr, ptr %802, align 8, !tbaa !20
  store ptr %984, ptr %809, align 8, !tbaa !25
  store ptr %984, ptr %810, align 8, !tbaa !26
  br label %985

985:                                              ; preds = %982, %979, %944
  %986 = phi i32 [ %980, %979 ], [ %983, %982 ], [ %945, %944 ]
  %987 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %988 = icmp eq i32 %987, -2
  br i1 %988, label %989, label %990

989:                                              ; preds = %985
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %995

990:                                              ; preds = %985
  %991 = load i32, ptr %808, align 8, !tbaa !24
  %992 = icmp ult i32 %986, %991
  br i1 %992, label %926, label %993, !nosanitize !31

993:                                              ; preds = %990
  %994 = icmp eq i32 %986, %991
  br i1 %994, label %939, label %944, !llvm.loop !36

995:                                              ; preds = %989, %970, %919, %885, %879, %870
  %996 = load i32, ptr %806, align 4, !tbaa !15
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %1337, label %998

998:                                              ; preds = %995
  %999 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 1, i64 %857), !nosanitize !31
  %1000 = extractvalue { i64, i1 } %999, 1, !nosanitize !31
  br i1 %1000, label %834, label %1330, !nosanitize !31

1001:                                             ; preds = %793
  %1002 = load i32, ptr %796, align 8, !tbaa !28
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1154, label %1004

1004:                                             ; preds = %1001
  %1005 = icmp eq i32 %794, 0
  br i1 %1005, label %1006, label %1046

1006:                                             ; preds = %1004
  %1007 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %1008 = load i32, ptr %1007, align 4, !tbaa !17
  %1009 = shl i32 %1008, 1
  %1010 = zext i32 %1009 to i64
  %1011 = tail call noalias ptr @malloc(i64 noundef %1010) #17
  %1012 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %1011, ptr %1012, align 8, !tbaa !18
  %1013 = icmp eq ptr %1011, null
  br i1 %1013, label %1014, label %1015

1014:                                             ; preds = %1006
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1337

1015:                                             ; preds = %1006
  %1016 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %1017 = load i32, ptr %1016, align 8, !tbaa !19
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1020, label %1019

1019:                                             ; preds = %1015
  store i32 %1008, ptr %365, align 8, !tbaa !16
  br label %1053

1020:                                             ; preds = %1015
  %1021 = zext i32 %1008 to i64
  %1022 = tail call noalias ptr @malloc(i64 noundef %1021) #17
  %1023 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %1022, ptr %1023, align 8, !tbaa !20
  %1024 = icmp eq ptr %1022, null
  br i1 %1024, label %1025, label %1026

1025:                                             ; preds = %1020
  tail call void @free(ptr noundef nonnull %1011) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1337

1026:                                             ; preds = %1020
  %1027 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %1028 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1027, i8 0, i64 24, i1 false)
  %1029 = load i32, ptr %1028, align 8, !tbaa !21
  %1030 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %1031 = load i32, ptr %1030, align 4, !tbaa !22
  %1032 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %1029, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %1031, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1037, label %1034

1034:                                             ; preds = %1026
  %1035 = load ptr, ptr %1023, align 8, !tbaa !20
  tail call void @free(ptr noundef %1035) #16
  %1036 = load ptr, ptr %1012, align 8, !tbaa !18
  tail call void @free(ptr noundef %1036) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1337

1037:                                             ; preds = %1026
  store ptr null, ptr %6, align 8, !tbaa !23
  %1038 = load i32, ptr %1016, align 8, !tbaa !19
  %1039 = load i32, ptr %1007, align 4, !tbaa !17
  store i32 %1039, ptr %365, align 8, !tbaa !16
  %1040 = icmp eq i32 %1038, 0
  br i1 %1040, label %1041, label %1050

1041:                                             ; preds = %1037
  %1042 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %1039, ptr %1042, align 8, !tbaa !24
  %1043 = load ptr, ptr %1023, align 8, !tbaa !20
  %1044 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %1043, ptr %1044, align 8, !tbaa !25
  %1045 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %1043, ptr %1045, align 8, !tbaa !26
  br label %1086

1046:                                             ; preds = %1004
  %1047 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %1048 = load i32, ptr %1047, align 8, !tbaa !19
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1086, label %1053

1050:                                             ; preds = %1037
  %1051 = load i32, ptr %796, align 8, !tbaa !28
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1154, label %1053

1053:                                             ; preds = %1050, %1046, %1019
  %1054 = tail call ptr @__errno_location() #18
  %1055 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %1056 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %1057 = load ptr, ptr %6, align 8, !tbaa !23
  br label %1058

1058:                                             ; preds = %1080, %1053
  %1059 = phi ptr [ %1057, %1053 ], [ %1084, %1080 ]
  store i32 0, ptr %1054, align 4, !tbaa !29
  store i32 0, ptr %1055, align 4, !tbaa !15
  %1060 = load i32, ptr %796, align 8, !tbaa !28
  %1061 = tail call i32 @llvm.umin.i32(i32 %1060, i32 1073741824)
  %1062 = load i32, ptr %1056, align 4, !tbaa !30
  %1063 = zext nneg i32 %1061 to i64
  %1064 = tail call i64 @write(i32 noundef %1062, ptr noundef %1059, i64 noundef %1063) #16
  %1065 = trunc i64 %1064 to i32
  %1066 = icmp slt i32 %1065, 0
  br i1 %1066, label %1067, label %1075

1067:                                             ; preds = %1058
  %1068 = load i32, ptr %1054, align 4, !tbaa !29
  %1069 = icmp eq i32 %1068, 11
  br i1 %1069, label %1070, label %1072

1070:                                             ; preds = %1067
  store i32 1, ptr %1055, align 4, !tbaa !15
  %1071 = load i32, ptr %1054, align 4, !tbaa !29
  br label %1072

1072:                                             ; preds = %1070, %1067
  %1073 = phi i32 [ %1068, %1067 ], [ %1071, %1070 ]
  %1074 = tail call ptr @strerror(i32 noundef %1073) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1074) #16
  br label %1337

1075:                                             ; preds = %1058
  %1076 = load i32, ptr %796, align 8, !tbaa !28
  %1077 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1076, i32 %1065), !nosanitize !31
  %1078 = extractvalue { i32, i1 } %1077, 1, !nosanitize !31
  br i1 %1078, label %1079, label %1080, !nosanitize !31

1079:                                             ; preds = %1075, %1149
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

1080:                                             ; preds = %1075
  %1081 = extractvalue { i32, i1 } %1077, 0, !nosanitize !31
  store i32 %1081, ptr %796, align 8, !tbaa !28
  %1082 = load ptr, ptr %6, align 8, !tbaa !23
  %1083 = and i64 %1064, 4294967295
  %1084 = getelementptr inbounds i8, ptr %1082, i64 %1083
  store ptr %1084, ptr %6, align 8, !tbaa !23
  %1085 = icmp eq i32 %1081, 0
  br i1 %1085, label %1154, label %1058, !llvm.loop !32

1086:                                             ; preds = %1046, %1041
  %1087 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %1088 = load i32, ptr %1087, align 8, !tbaa !34
  %1089 = icmp eq i32 %1088, 0
  br i1 %1089, label %1095, label %1090

1090:                                             ; preds = %1086
  %1091 = load i32, ptr %796, align 8, !tbaa !28
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1154, label %1093

1093:                                             ; preds = %1090
  %1094 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %1087, align 8, !tbaa !34
  br label %1095

1095:                                             ; preds = %1093, %1086
  %1096 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %1097 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %1098 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %1099 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %1100 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %1101 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %1102 = load i32, ptr %1096, align 8, !tbaa !24
  br label %1103

1103:                                             ; preds = %1152, %1095
  %1104 = phi i32 [ %1102, %1095 ], [ %1150, %1152 ]
  %1105 = icmp eq i32 %1104, 0
  br i1 %1105, label %1106, label %1144

1106:                                             ; preds = %1103
  %1107 = load ptr, ptr %1097, align 8, !tbaa !25
  %1108 = load ptr, ptr %1098, align 8, !tbaa !26
  %1109 = icmp ugt ptr %1107, %1108
  br i1 %1109, label %1110, label %1141

1110:                                             ; preds = %1106
  %1111 = tail call ptr @__errno_location() #18
  br label %1112

1112:                                             ; preds = %1132, %1110
  %1113 = phi ptr [ %1108, %1110 ], [ %1135, %1132 ]
  %1114 = phi ptr [ %1107, %1110 ], [ %1136, %1132 ]
  store i32 0, ptr %1111, align 4, !tbaa !29
  store i32 0, ptr %1099, align 4, !tbaa !15
  %1115 = ptrtoint ptr %1114 to i64
  %1116 = ptrtoint ptr %1113 to i64
  %1117 = sub i64 %1115, %1116
  %1118 = tail call i64 @llvm.smin.i64(i64 %1117, i64 1073741824)
  %1119 = load i32, ptr %1100, align 4, !tbaa !30
  %1120 = and i64 %1118, 4294967295
  %1121 = tail call i64 @write(i32 noundef %1119, ptr noundef %1113, i64 noundef %1120) #16
  %1122 = and i64 %1121, 2147483648
  %1123 = icmp eq i64 %1122, 0
  br i1 %1123, label %1132, label %1124

1124:                                             ; preds = %1112
  %1125 = load i32, ptr %1111, align 4, !tbaa !29
  %1126 = icmp eq i32 %1125, 11
  br i1 %1126, label %1127, label %1129

1127:                                             ; preds = %1124
  store i32 1, ptr %1099, align 4, !tbaa !15
  %1128 = load i32, ptr %1111, align 4, !tbaa !29
  br label %1129

1129:                                             ; preds = %1127, %1124
  %1130 = phi i32 [ %1125, %1124 ], [ %1128, %1127 ]
  %1131 = tail call ptr @strerror(i32 noundef %1130) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1131) #16
  br label %1337

1132:                                             ; preds = %1112
  %1133 = load ptr, ptr %1098, align 8, !tbaa !26
  %1134 = and i64 %1121, 2147483647
  %1135 = getelementptr inbounds i8, ptr %1133, i64 %1134
  store ptr %1135, ptr %1098, align 8, !tbaa !26
  %1136 = load ptr, ptr %1097, align 8, !tbaa !25
  %1137 = icmp ugt ptr %1136, %1135
  br i1 %1137, label %1112, label %1138, !llvm.loop !35

1138:                                             ; preds = %1132
  %1139 = load i32, ptr %1096, align 8, !tbaa !24
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1141, label %1144

1141:                                             ; preds = %1138, %1106
  %1142 = load i32, ptr %365, align 8, !tbaa !16
  store i32 %1142, ptr %1096, align 8, !tbaa !24
  %1143 = load ptr, ptr %1101, align 8, !tbaa !20
  store ptr %1143, ptr %1097, align 8, !tbaa !25
  store ptr %1143, ptr %1098, align 8, !tbaa !26
  br label %1144

1144:                                             ; preds = %1141, %1138, %1103
  %1145 = phi i32 [ %1139, %1138 ], [ %1142, %1141 ], [ %1104, %1103 ]
  %1146 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %1147 = icmp eq i32 %1146, -2
  br i1 %1147, label %1148, label %1149

1148:                                             ; preds = %1144
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %1337

1149:                                             ; preds = %1144
  %1150 = load i32, ptr %1096, align 8, !tbaa !24
  %1151 = icmp ult i32 %1145, %1150
  br i1 %1151, label %1079, label %1152, !nosanitize !31

1152:                                             ; preds = %1149
  %1153 = icmp eq i32 %1145, %1150
  br i1 %1153, label %1154, label %1103, !llvm.loop !36

1154:                                             ; preds = %1080, %1152, %1090, %1050, %1001
  store ptr %3, ptr %6, align 8, !tbaa !40
  %1155 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %1156 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %1157 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %1158 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %1159 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %1160 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %1161 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %1162 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %1163 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %1164 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %1165 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %1166 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %1167 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %1168 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  br label %1169

1169:                                             ; preds = %1326, %1154
  %1170 = phi i64 [ 1, %1154 ], [ %1317, %1326 ]
  %1171 = call i64 @llvm.umin.i64(i64 %1170, i64 4294967295)
  %1172 = trunc i64 %1171 to i32
  store i32 %1172, ptr %796, align 8, !tbaa !39
  %1173 = load i32, ptr %365, align 8, !tbaa !16
  %1174 = icmp eq i32 %1173, 0
  br i1 %1174, label %1175, label %1205

1175:                                             ; preds = %1169
  %1176 = load i32, ptr %1156, align 4, !tbaa !17
  %1177 = shl i32 %1176, 1
  %1178 = zext i32 %1177 to i64
  %1179 = call noalias ptr @malloc(i64 noundef %1178) #17
  store ptr %1179, ptr %1157, align 8, !tbaa !18
  %1180 = icmp eq ptr %1179, null
  br i1 %1180, label %1181, label %1182

1181:                                             ; preds = %1175
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1303

1182:                                             ; preds = %1175
  %1183 = load i32, ptr %1155, align 8, !tbaa !19
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1186, label %1185

1185:                                             ; preds = %1182
  store i32 %1176, ptr %365, align 8, !tbaa !16
  br label %1211

1186:                                             ; preds = %1182
  %1187 = zext i32 %1176 to i64
  %1188 = call noalias ptr @malloc(i64 noundef %1187) #17
  store ptr %1188, ptr %1158, align 8, !tbaa !20
  %1189 = icmp eq ptr %1188, null
  br i1 %1189, label %1190, label %1191

1190:                                             ; preds = %1186
  call void @free(ptr noundef nonnull %1179) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1303

1191:                                             ; preds = %1186
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1159, i8 0, i64 24, i1 false)
  %1192 = load i32, ptr %1160, align 8, !tbaa !21
  %1193 = load i32, ptr %1161, align 4, !tbaa !22
  %1194 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %1192, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %1193, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %1199, label %1196

1196:                                             ; preds = %1191
  %1197 = load ptr, ptr %1158, align 8, !tbaa !20
  call void @free(ptr noundef %1197) #16
  %1198 = load ptr, ptr %1157, align 8, !tbaa !18
  call void @free(ptr noundef %1198) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %1303

1199:                                             ; preds = %1191
  store ptr null, ptr %6, align 8, !tbaa !23
  %1200 = load i32, ptr %1155, align 8, !tbaa !19
  %1201 = load i32, ptr %1156, align 4, !tbaa !17
  store i32 %1201, ptr %365, align 8, !tbaa !16
  %1202 = icmp eq i32 %1200, 0
  br i1 %1202, label %1203, label %1208

1203:                                             ; preds = %1199
  store i32 %1201, ptr %1164, align 8, !tbaa !24
  %1204 = load ptr, ptr %1158, align 8, !tbaa !20
  store ptr %1204, ptr %1165, align 8, !tbaa !25
  store ptr %1204, ptr %1166, align 8, !tbaa !26
  br label %1242

1205:                                             ; preds = %1169
  %1206 = load i32, ptr %1155, align 8, !tbaa !19
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1242, label %1211

1208:                                             ; preds = %1199
  %1209 = load i32, ptr %796, align 8, !tbaa !28
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %1303, label %1211

1211:                                             ; preds = %1185, %1205, %1208
  %1212 = tail call ptr @__errno_location() #18
  %1213 = load ptr, ptr %6, align 8, !tbaa !23
  br label %1214

1214:                                             ; preds = %1236, %1211
  %1215 = phi ptr [ %1213, %1211 ], [ %1240, %1236 ]
  store i32 0, ptr %1212, align 4, !tbaa !29
  store i32 0, ptr %1162, align 4, !tbaa !15
  %1216 = load i32, ptr %796, align 8, !tbaa !28
  %1217 = call i32 @llvm.umin.i32(i32 %1216, i32 1073741824)
  %1218 = load i32, ptr %1163, align 4, !tbaa !30
  %1219 = zext nneg i32 %1217 to i64
  %1220 = call i64 @write(i32 noundef %1218, ptr noundef %1215, i64 noundef %1219) #16
  %1221 = trunc i64 %1220 to i32
  %1222 = icmp slt i32 %1221, 0
  br i1 %1222, label %1223, label %1231

1223:                                             ; preds = %1214
  %1224 = load i32, ptr %1212, align 4, !tbaa !29
  %1225 = icmp eq i32 %1224, 11
  br i1 %1225, label %1226, label %1228

1226:                                             ; preds = %1223
  store i32 1, ptr %1162, align 4, !tbaa !15
  %1227 = load i32, ptr %1212, align 4, !tbaa !29
  br label %1228

1228:                                             ; preds = %1226, %1223
  %1229 = phi i32 [ %1224, %1223 ], [ %1227, %1226 ]
  %1230 = call ptr @strerror(i32 noundef %1229) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1230) #16
  br label %1303

1231:                                             ; preds = %1214
  %1232 = load i32, ptr %796, align 8, !tbaa !28
  %1233 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1232, i32 %1221), !nosanitize !31
  %1234 = extractvalue { i32, i1 } %1233, 1, !nosanitize !31
  br i1 %1234, label %1235, label %1236, !nosanitize !31

1235:                                             ; preds = %1231, %1298
  call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

1236:                                             ; preds = %1231
  %1237 = extractvalue { i32, i1 } %1233, 0, !nosanitize !31
  store i32 %1237, ptr %796, align 8, !tbaa !28
  %1238 = load ptr, ptr %6, align 8, !tbaa !23
  %1239 = and i64 %1220, 4294967295
  %1240 = getelementptr inbounds i8, ptr %1238, i64 %1239
  store ptr %1240, ptr %6, align 8, !tbaa !23
  %1241 = icmp eq i32 %1237, 0
  br i1 %1241, label %1303, label %1214, !llvm.loop !32

1242:                                             ; preds = %1205, %1203
  %1243 = load i32, ptr %1167, align 8, !tbaa !34
  %1244 = icmp eq i32 %1243, 0
  br i1 %1244, label %1250, label %1245

1245:                                             ; preds = %1242
  %1246 = load i32, ptr %796, align 8, !tbaa !28
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1303, label %1248

1248:                                             ; preds = %1245
  %1249 = call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %1167, align 8, !tbaa !34
  br label %1250

1250:                                             ; preds = %1248, %1242
  %1251 = load i32, ptr %1164, align 8, !tbaa !24
  br label %1252

1252:                                             ; preds = %1301, %1250
  %1253 = phi i32 [ %1251, %1250 ], [ %1299, %1301 ]
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1255, label %1293

1255:                                             ; preds = %1252
  %1256 = load ptr, ptr %1165, align 8, !tbaa !25
  %1257 = load ptr, ptr %1166, align 8, !tbaa !26
  %1258 = icmp ugt ptr %1256, %1257
  br i1 %1258, label %1259, label %1290

1259:                                             ; preds = %1255
  %1260 = tail call ptr @__errno_location() #18
  br label %1261

1261:                                             ; preds = %1281, %1259
  %1262 = phi ptr [ %1257, %1259 ], [ %1284, %1281 ]
  %1263 = phi ptr [ %1256, %1259 ], [ %1285, %1281 ]
  store i32 0, ptr %1260, align 4, !tbaa !29
  store i32 0, ptr %1162, align 4, !tbaa !15
  %1264 = ptrtoint ptr %1263 to i64
  %1265 = ptrtoint ptr %1262 to i64
  %1266 = sub i64 %1264, %1265
  %1267 = call i64 @llvm.smin.i64(i64 %1266, i64 1073741824)
  %1268 = load i32, ptr %1163, align 4, !tbaa !30
  %1269 = and i64 %1267, 4294967295
  %1270 = call i64 @write(i32 noundef %1268, ptr noundef %1262, i64 noundef %1269) #16
  %1271 = and i64 %1270, 2147483648
  %1272 = icmp eq i64 %1271, 0
  br i1 %1272, label %1281, label %1273

1273:                                             ; preds = %1261
  %1274 = load i32, ptr %1260, align 4, !tbaa !29
  %1275 = icmp eq i32 %1274, 11
  br i1 %1275, label %1276, label %1278

1276:                                             ; preds = %1273
  store i32 1, ptr %1162, align 4, !tbaa !15
  %1277 = load i32, ptr %1260, align 4, !tbaa !29
  br label %1278

1278:                                             ; preds = %1276, %1273
  %1279 = phi i32 [ %1274, %1273 ], [ %1277, %1276 ]
  %1280 = call ptr @strerror(i32 noundef %1279) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1280) #16
  br label %1303

1281:                                             ; preds = %1261
  %1282 = load ptr, ptr %1166, align 8, !tbaa !26
  %1283 = and i64 %1270, 2147483647
  %1284 = getelementptr inbounds i8, ptr %1282, i64 %1283
  store ptr %1284, ptr %1166, align 8, !tbaa !26
  %1285 = load ptr, ptr %1165, align 8, !tbaa !25
  %1286 = icmp ugt ptr %1285, %1284
  br i1 %1286, label %1261, label %1287, !llvm.loop !35

1287:                                             ; preds = %1281
  %1288 = load i32, ptr %1164, align 8, !tbaa !24
  %1289 = icmp eq i32 %1288, 0
  br i1 %1289, label %1290, label %1293

1290:                                             ; preds = %1287, %1255
  %1291 = load i32, ptr %365, align 8, !tbaa !16
  store i32 %1291, ptr %1164, align 8, !tbaa !24
  %1292 = load ptr, ptr %1158, align 8, !tbaa !20
  store ptr %1292, ptr %1165, align 8, !tbaa !25
  store ptr %1292, ptr %1166, align 8, !tbaa !26
  br label %1293

1293:                                             ; preds = %1290, %1287, %1252
  %1294 = phi i32 [ %1288, %1287 ], [ %1291, %1290 ], [ %1253, %1252 ]
  %1295 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %1296 = icmp eq i32 %1295, -2
  br i1 %1296, label %1297, label %1298

1297:                                             ; preds = %1293
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %1303

1298:                                             ; preds = %1293
  %1299 = load i32, ptr %1164, align 8, !tbaa !24
  %1300 = icmp ult i32 %1294, %1299
  br i1 %1300, label %1235, label %1301, !nosanitize !31

1301:                                             ; preds = %1298
  %1302 = icmp eq i32 %1294, %1299
  br i1 %1302, label %1303, label %1252, !llvm.loop !36

1303:                                             ; preds = %1236, %1301, %1297, %1278, %1245, %1228, %1208, %1196, %1190, %1181
  %1304 = phi i1 [ true, %1228 ], [ true, %1278 ], [ true, %1297 ], [ false, %1245 ], [ true, %1181 ], [ true, %1190 ], [ true, %1196 ], [ false, %1208 ], [ false, %1301 ], [ false, %1236 ]
  %1305 = load i32, ptr %796, align 8, !tbaa !39
  %1306 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1172, i32 %1305), !nosanitize !31
  %1307 = extractvalue { i32, i1 } %1306, 1, !nosanitize !31
  br i1 %1307, label %834, label %1308, !nosanitize !31

1308:                                             ; preds = %1303
  %1309 = extractvalue { i32, i1 } %1306, 0, !nosanitize !31
  %1310 = zext i32 %1309 to i64
  %1311 = load i64, ptr %1168, align 8, !tbaa !37
  %1312 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1311, i64 %1310), !nosanitize !31
  %1313 = extractvalue { i64, i1 } %1312, 1, !nosanitize !31
  br i1 %1313, label %847, label %1314, !nosanitize !31

1314:                                             ; preds = %1308
  %1315 = extractvalue { i64, i1 } %1312, 0, !nosanitize !31
  store i64 %1315, ptr %1168, align 8, !tbaa !37
  %1316 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1170, i64 %1310), !nosanitize !31
  %1317 = extractvalue { i64, i1 } %1316, 0, !nosanitize !31
  %1318 = extractvalue { i64, i1 } %1316, 1, !nosanitize !31
  br i1 %1318, label %834, label %1319, !nosanitize !31

1319:                                             ; preds = %1314
  br i1 %1304, label %1320, label %1326

1320:                                             ; preds = %1319
  %1321 = load i32, ptr %1162, align 4, !tbaa !15
  %1322 = icmp eq i32 %1321, 0
  br i1 %1322, label %1337, label %1323

1323:                                             ; preds = %1320
  %1324 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 1, i64 %1317), !nosanitize !31
  %1325 = extractvalue { i64, i1 } %1324, 1, !nosanitize !31
  br i1 %1325, label %834, label %1330, !nosanitize !31

1326:                                             ; preds = %1319
  %1327 = icmp eq i64 %1317, 0
  br i1 %1327, label %1328, label %1169, !llvm.loop !41

1328:                                             ; preds = %1326, %859
  %1329 = and i32 %1, 255
  br label %1337

1330:                                             ; preds = %998, %1323
  %1331 = phi { i64, i1 } [ %999, %998 ], [ %1324, %1323 ]
  %1332 = freeze { i64, i1 } %1331
  %1333 = extractvalue { i64, i1 } %1332, 0
  %1334 = icmp eq i64 %1333, 1
  %1335 = and i32 %1, 255
  %1336 = select i1 %1334, i32 %1335, i32 -1
  br label %1337

1337:                                             ; preds = %361, %788, %1330, %1320, %1034, %1025, %1014, %1148, %1129, %1072, %995, %486, %477, %466, %600, %581, %524, %436, %427, %416, %58, %49, %38, %172, %153, %96, %1328, %5, %14, %2, %403
  %1338 = phi i32 [ %405, %403 ], [ -1, %2 ], [ -1, %14 ], [ -1, %5 ], [ %1329, %1328 ], [ -1, %96 ], [ -1, %153 ], [ -1, %172 ], [ -1, %38 ], [ -1, %49 ], [ -1, %58 ], [ -1, %416 ], [ -1, %427 ], [ -1, %436 ], [ -1, %524 ], [ -1, %581 ], [ -1, %600 ], [ -1, %466 ], [ -1, %477 ], [ -1, %486 ], [ -1, %995 ], [ -1, %1072 ], [ -1, %1129 ], [ -1, %1148 ], [ -1, %1014 ], [ -1, %1025 ], [ -1, %1034 ], [ -1, %1320 ], [ %1336, %1330 ], [ -1, %788 ], [ -1, %361 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  ret i32 %1338
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gzputs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %962, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %962

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %10 = load i32, ptr %9, align 8, !tbaa !14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %962, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #16
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %18 = icmp ult i64 %17, 2147483648
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.2) #16
  br label %962

20:                                               ; preds = %16
  %21 = icmp eq i64 %17, 0
  br i1 %21, label %955, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %28 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !17
  %30 = shl i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #17
  %33 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %32, ptr %33, align 8, !tbaa !18
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !19
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 %29, ptr %23, align 8, !tbaa !16
  br label %67

41:                                               ; preds = %36
  %42 = zext i32 %29 to i64
  %43 = tail call noalias ptr @malloc(i64 noundef %42) #17
  %44 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %43, ptr %44, align 8, !tbaa !20
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  tail call void @free(ptr noundef nonnull %32) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %49 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  %50 = load i32, ptr %49, align 8, !tbaa !21
  %51 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %52 = load i32, ptr %51, align 4, !tbaa !22
  %53 = tail call i32 @deflateInit2_(ptr noundef nonnull %27, i32 noundef %50, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %52, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load ptr, ptr %44, align 8, !tbaa !20
  tail call void @free(ptr noundef %56) #16
  %57 = load ptr, ptr %33, align 8, !tbaa !18
  tail call void @free(ptr noundef %57) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

58:                                               ; preds = %47
  store ptr null, ptr %27, align 8, !tbaa !23
  %59 = load i32, ptr %37, align 8, !tbaa !19
  %60 = load i32, ptr %28, align 4, !tbaa !17
  store i32 %60, ptr %23, align 8, !tbaa !16
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %60, ptr %63, align 8, !tbaa !24
  %64 = load ptr, ptr %44, align 8, !tbaa !20
  %65 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %64, ptr %65, align 8, !tbaa !25
  %66 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %64, ptr %66, align 8, !tbaa !26
  br label %67

67:                                               ; preds = %62, %58, %40, %22
  %68 = phi i32 [ %60, %62 ], [ %60, %58 ], [ %29, %40 ], [ %24, %22 ]
  %69 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %70 = load i64, ptr %69, align 8, !tbaa !27
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %414, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %74 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !28
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %227, label %77

77:                                               ; preds = %72
  %78 = icmp eq i32 %68, 0
  br i1 %78, label %79, label %119

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %81 = load i32, ptr %80, align 4, !tbaa !17
  %82 = shl i32 %81, 1
  %83 = zext i32 %82 to i64
  %84 = tail call noalias ptr @malloc(i64 noundef %83) #17
  %85 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %84, ptr %85, align 8, !tbaa !18
  %86 = icmp eq ptr %84, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %90 = load i32, ptr %89, align 8, !tbaa !19
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  store i32 %81, ptr %23, align 8, !tbaa !16
  br label %126

93:                                               ; preds = %88
  %94 = zext i32 %81 to i64
  %95 = tail call noalias ptr @malloc(i64 noundef %94) #17
  %96 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %95, ptr %96, align 8, !tbaa !20
  %97 = icmp eq ptr %95, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  tail call void @free(ptr noundef nonnull %84) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %101 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %100, i8 0, i64 24, i1 false)
  %102 = load i32, ptr %101, align 8, !tbaa !21
  %103 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %104 = load i32, ptr %103, align 4, !tbaa !22
  %105 = tail call i32 @deflateInit2_(ptr noundef nonnull %73, i32 noundef %102, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %104, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %99
  %108 = load ptr, ptr %96, align 8, !tbaa !20
  tail call void @free(ptr noundef %108) #16
  %109 = load ptr, ptr %85, align 8, !tbaa !18
  tail call void @free(ptr noundef %109) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

110:                                              ; preds = %99
  store ptr null, ptr %73, align 8, !tbaa !23
  %111 = load i32, ptr %89, align 8, !tbaa !19
  %112 = load i32, ptr %80, align 4, !tbaa !17
  store i32 %112, ptr %23, align 8, !tbaa !16
  %113 = icmp eq i32 %111, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %112, ptr %115, align 8, !tbaa !24
  %116 = load ptr, ptr %96, align 8, !tbaa !20
  %117 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %116, ptr %117, align 8, !tbaa !25
  %118 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %116, ptr %118, align 8, !tbaa !26
  br label %159

119:                                              ; preds = %77
  %120 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %121 = load i32, ptr %120, align 8, !tbaa !19
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %159, label %126

123:                                              ; preds = %110
  %124 = load i32, ptr %74, align 8, !tbaa !28
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %227, label %126

126:                                              ; preds = %123, %119, %92
  %127 = tail call ptr @__errno_location() #18
  %128 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %129 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %130 = load ptr, ptr %73, align 8, !tbaa !23
  br label %131

131:                                              ; preds = %153, %126
  %132 = phi ptr [ %130, %126 ], [ %157, %153 ]
  store i32 0, ptr %127, align 4, !tbaa !29
  store i32 0, ptr %128, align 4, !tbaa !15
  %133 = load i32, ptr %74, align 8, !tbaa !28
  %134 = tail call i32 @llvm.umin.i32(i32 %133, i32 1073741824)
  %135 = load i32, ptr %129, align 4, !tbaa !30
  %136 = zext nneg i32 %134 to i64
  %137 = tail call i64 @write(i32 noundef %135, ptr noundef %132, i64 noundef %136) #16
  %138 = trunc i64 %137 to i32
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %131
  %141 = load i32, ptr %127, align 4, !tbaa !29
  %142 = icmp eq i32 %141, 11
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  store i32 1, ptr %128, align 4, !tbaa !15
  %144 = load i32, ptr %127, align 4, !tbaa !29
  br label %145

145:                                              ; preds = %143, %140
  %146 = phi i32 [ %141, %140 ], [ %144, %143 ]
  %147 = tail call ptr @strerror(i32 noundef %146) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %147) #16
  br label %955

148:                                              ; preds = %131
  %149 = load i32, ptr %74, align 8, !tbaa !28
  %150 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %138), !nosanitize !31
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !31
  br i1 %151, label %152, label %153, !nosanitize !31

152:                                              ; preds = %148, %222
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

153:                                              ; preds = %148
  %154 = extractvalue { i32, i1 } %150, 0, !nosanitize !31
  store i32 %154, ptr %74, align 8, !tbaa !28
  %155 = load ptr, ptr %73, align 8, !tbaa !23
  %156 = and i64 %137, 4294967295
  %157 = getelementptr inbounds i8, ptr %155, i64 %156
  store ptr %157, ptr %73, align 8, !tbaa !23
  %158 = icmp eq i32 %154, 0
  br i1 %158, label %227, label %131, !llvm.loop !32

159:                                              ; preds = %119, %114
  %160 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %161 = load i32, ptr %160, align 8, !tbaa !34
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %159
  %164 = load i32, ptr %74, align 8, !tbaa !28
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %227, label %166

166:                                              ; preds = %163
  %167 = tail call i32 @deflateReset(ptr noundef nonnull %73) #16
  store i32 0, ptr %160, align 8, !tbaa !34
  br label %168

168:                                              ; preds = %166, %159
  %169 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %170 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %171 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %172 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %173 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %174 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %175 = load i32, ptr %169, align 8, !tbaa !24
  br label %176

176:                                              ; preds = %225, %168
  %177 = phi i32 [ %175, %168 ], [ %223, %225 ]
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %217

179:                                              ; preds = %176
  %180 = load ptr, ptr %170, align 8, !tbaa !25
  %181 = load ptr, ptr %171, align 8, !tbaa !26
  %182 = icmp ugt ptr %180, %181
  br i1 %182, label %183, label %214

183:                                              ; preds = %179
  %184 = tail call ptr @__errno_location() #18
  br label %185

185:                                              ; preds = %205, %183
  %186 = phi ptr [ %181, %183 ], [ %208, %205 ]
  %187 = phi ptr [ %180, %183 ], [ %209, %205 ]
  store i32 0, ptr %184, align 4, !tbaa !29
  store i32 0, ptr %172, align 4, !tbaa !15
  %188 = ptrtoint ptr %187 to i64
  %189 = ptrtoint ptr %186 to i64
  %190 = sub i64 %188, %189
  %191 = tail call i64 @llvm.smin.i64(i64 %190, i64 1073741824)
  %192 = load i32, ptr %173, align 4, !tbaa !30
  %193 = and i64 %191, 4294967295
  %194 = tail call i64 @write(i32 noundef %192, ptr noundef %186, i64 noundef %193) #16
  %195 = and i64 %194, 2147483648
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %205, label %197

197:                                              ; preds = %185
  %198 = load i32, ptr %184, align 4, !tbaa !29
  %199 = icmp eq i32 %198, 11
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  store i32 1, ptr %172, align 4, !tbaa !15
  %201 = load i32, ptr %184, align 4, !tbaa !29
  br label %202

202:                                              ; preds = %200, %197
  %203 = phi i32 [ %198, %197 ], [ %201, %200 ]
  %204 = tail call ptr @strerror(i32 noundef %203) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %204) #16
  br label %955

205:                                              ; preds = %185
  %206 = load ptr, ptr %171, align 8, !tbaa !26
  %207 = and i64 %194, 2147483647
  %208 = getelementptr inbounds i8, ptr %206, i64 %207
  store ptr %208, ptr %171, align 8, !tbaa !26
  %209 = load ptr, ptr %170, align 8, !tbaa !25
  %210 = icmp ugt ptr %209, %208
  br i1 %210, label %185, label %211, !llvm.loop !35

211:                                              ; preds = %205
  %212 = load i32, ptr %169, align 8, !tbaa !24
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211, %179
  %215 = load i32, ptr %23, align 8, !tbaa !16
  store i32 %215, ptr %169, align 8, !tbaa !24
  %216 = load ptr, ptr %174, align 8, !tbaa !20
  store ptr %216, ptr %170, align 8, !tbaa !25
  store ptr %216, ptr %171, align 8, !tbaa !26
  br label %217

217:                                              ; preds = %214, %211, %176
  %218 = phi i32 [ %212, %211 ], [ %215, %214 ], [ %177, %176 ]
  %219 = tail call i32 @deflate(ptr noundef nonnull %73, i32 noundef 0) #16
  %220 = icmp eq i32 %219, -2
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %955

222:                                              ; preds = %217
  %223 = load i32, ptr %169, align 8, !tbaa !24
  %224 = icmp ult i32 %218, %223
  br i1 %224, label %152, label %225, !nosanitize !31

225:                                              ; preds = %222
  %226 = icmp eq i32 %218, %223
  br i1 %226, label %227, label %176, !llvm.loop !36

227:                                              ; preds = %153, %225, %163, %123, %72
  %228 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %229 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %230 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %231 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %232 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %233 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %234 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %235 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %236 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %237 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %238 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %239 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %240 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %241 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %242 = load i64, ptr %69, align 8, !tbaa !27
  br label %243

243:                                              ; preds = %410, %227
  %244 = phi i64 [ %242, %227 ], [ %407, %410 ]
  %245 = phi i1 [ false, %227 ], [ true, %410 ]
  %246 = load i32, ptr %23, align 8, !tbaa !16
  %247 = zext i32 %246 to i64
  %248 = icmp slt i64 %244, %247
  %249 = trunc i64 %244 to i32
  %250 = select i1 %248, i32 %249, i32 %246
  %251 = load ptr, ptr %228, align 8, !tbaa !18
  br i1 %245, label %256, label %252

252:                                              ; preds = %243
  %253 = zext i32 %250 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %251, i8 0, i64 %253, i1 false)
  %254 = load ptr, ptr %228, align 8, !tbaa !18
  %255 = load i32, ptr %23, align 8, !tbaa !16
  br label %256

256:                                              ; preds = %252, %243
  %257 = phi i32 [ %255, %252 ], [ %246, %243 ]
  %258 = phi ptr [ %254, %252 ], [ %251, %243 ]
  store i32 %250, ptr %74, align 8, !tbaa !28
  store ptr %258, ptr %73, align 8, !tbaa !23
  %259 = icmp eq i32 %257, 0
  br i1 %259, label %260, label %292

260:                                              ; preds = %256
  %261 = load i32, ptr %230, align 4, !tbaa !17
  %262 = shl i32 %261, 1
  %263 = zext i32 %262 to i64
  %264 = tail call noalias ptr @malloc(i64 noundef %263) #17
  store ptr %264, ptr %228, align 8, !tbaa !18
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %267

266:                                              ; preds = %260
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %390

267:                                              ; preds = %260
  %268 = load i32, ptr %229, align 8, !tbaa !19
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %267
  store i32 %261, ptr %23, align 8, !tbaa !16
  br label %295

271:                                              ; preds = %267
  %272 = zext i32 %261 to i64
  %273 = tail call noalias ptr @malloc(i64 noundef %272) #17
  store ptr %273, ptr %231, align 8, !tbaa !20
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %276

275:                                              ; preds = %271
  tail call void @free(ptr noundef nonnull %264) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %390

276:                                              ; preds = %271
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %232, i8 0, i64 24, i1 false)
  %277 = load i32, ptr %233, align 8, !tbaa !21
  %278 = load i32, ptr %234, align 4, !tbaa !22
  %279 = tail call i32 @deflateInit2_(ptr noundef nonnull %73, i32 noundef %277, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %278, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %276
  %282 = load ptr, ptr %231, align 8, !tbaa !20
  tail call void @free(ptr noundef %282) #16
  %283 = load ptr, ptr %228, align 8, !tbaa !18
  tail call void @free(ptr noundef %283) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %390

284:                                              ; preds = %276
  store ptr null, ptr %73, align 8, !tbaa !23
  %285 = load i32, ptr %229, align 8, !tbaa !19
  %286 = load i32, ptr %230, align 4, !tbaa !17
  store i32 %286, ptr %23, align 8, !tbaa !16
  %287 = icmp eq i32 %285, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %284
  %289 = load i32, ptr %74, align 8, !tbaa !28
  br label %295

290:                                              ; preds = %284
  store i32 %286, ptr %237, align 8, !tbaa !24
  %291 = load ptr, ptr %231, align 8, !tbaa !20
  store ptr %291, ptr %238, align 8, !tbaa !25
  store ptr %291, ptr %239, align 8, !tbaa !26
  br label %329

292:                                              ; preds = %256
  %293 = load i32, ptr %229, align 8, !tbaa !19
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %329, label %295

295:                                              ; preds = %292, %288, %270
  %296 = phi ptr [ null, %288 ], [ %258, %292 ], [ %258, %270 ]
  %297 = phi i32 [ %289, %288 ], [ %250, %292 ], [ %250, %270 ]
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %390, label %299

299:                                              ; preds = %295
  %300 = tail call ptr @__errno_location() #18
  br label %301

301:                                              ; preds = %323, %299
  %302 = phi ptr [ %296, %299 ], [ %327, %323 ]
  store i32 0, ptr %300, align 4, !tbaa !29
  store i32 0, ptr %235, align 4, !tbaa !15
  %303 = load i32, ptr %74, align 8, !tbaa !28
  %304 = tail call i32 @llvm.umin.i32(i32 %303, i32 1073741824)
  %305 = load i32, ptr %236, align 4, !tbaa !30
  %306 = zext nneg i32 %304 to i64
  %307 = tail call i64 @write(i32 noundef %305, ptr noundef %302, i64 noundef %306) #16
  %308 = trunc i64 %307 to i32
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %301
  %311 = load i32, ptr %300, align 4, !tbaa !29
  %312 = icmp eq i32 %311, 11
  br i1 %312, label %313, label %315

313:                                              ; preds = %310
  store i32 1, ptr %235, align 4, !tbaa !15
  %314 = load i32, ptr %300, align 4, !tbaa !29
  br label %315

315:                                              ; preds = %313, %310
  %316 = phi i32 [ %311, %310 ], [ %314, %313 ]
  %317 = tail call ptr @strerror(i32 noundef %316) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %317) #16
  br label %390

318:                                              ; preds = %301
  %319 = load i32, ptr %74, align 8, !tbaa !28
  %320 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %319, i32 %308), !nosanitize !31
  %321 = extractvalue { i32, i1 } %320, 1, !nosanitize !31
  br i1 %321, label %322, label %323, !nosanitize !31

322:                                              ; preds = %318, %385
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

323:                                              ; preds = %318
  %324 = extractvalue { i32, i1 } %320, 0, !nosanitize !31
  store i32 %324, ptr %74, align 8, !tbaa !28
  %325 = load ptr, ptr %73, align 8, !tbaa !23
  %326 = and i64 %307, 4294967295
  %327 = getelementptr inbounds i8, ptr %325, i64 %326
  store ptr %327, ptr %73, align 8, !tbaa !23
  %328 = icmp eq i32 %324, 0
  br i1 %328, label %390, label %301, !llvm.loop !32

329:                                              ; preds = %292, %290
  %330 = load i32, ptr %240, align 8, !tbaa !34
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %337, label %332

332:                                              ; preds = %329
  %333 = load i32, ptr %74, align 8, !tbaa !28
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %390, label %335

335:                                              ; preds = %332
  %336 = tail call i32 @deflateReset(ptr noundef nonnull %73) #16
  store i32 0, ptr %240, align 8, !tbaa !34
  br label %337

337:                                              ; preds = %335, %329
  %338 = load i32, ptr %237, align 8, !tbaa !24
  br label %339

339:                                              ; preds = %388, %337
  %340 = phi i32 [ %338, %337 ], [ %386, %388 ]
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %380

342:                                              ; preds = %339
  %343 = load ptr, ptr %238, align 8, !tbaa !25
  %344 = load ptr, ptr %239, align 8, !tbaa !26
  %345 = icmp ugt ptr %343, %344
  br i1 %345, label %346, label %377

346:                                              ; preds = %342
  %347 = tail call ptr @__errno_location() #18
  br label %348

348:                                              ; preds = %368, %346
  %349 = phi ptr [ %344, %346 ], [ %371, %368 ]
  %350 = phi ptr [ %343, %346 ], [ %372, %368 ]
  store i32 0, ptr %347, align 4, !tbaa !29
  store i32 0, ptr %235, align 4, !tbaa !15
  %351 = ptrtoint ptr %350 to i64
  %352 = ptrtoint ptr %349 to i64
  %353 = sub i64 %351, %352
  %354 = tail call i64 @llvm.smin.i64(i64 %353, i64 1073741824)
  %355 = load i32, ptr %236, align 4, !tbaa !30
  %356 = and i64 %354, 4294967295
  %357 = tail call i64 @write(i32 noundef %355, ptr noundef %349, i64 noundef %356) #16
  %358 = and i64 %357, 2147483648
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %368, label %360

360:                                              ; preds = %348
  %361 = load i32, ptr %347, align 4, !tbaa !29
  %362 = icmp eq i32 %361, 11
  br i1 %362, label %363, label %365

363:                                              ; preds = %360
  store i32 1, ptr %235, align 4, !tbaa !15
  %364 = load i32, ptr %347, align 4, !tbaa !29
  br label %365

365:                                              ; preds = %363, %360
  %366 = phi i32 [ %361, %360 ], [ %364, %363 ]
  %367 = tail call ptr @strerror(i32 noundef %366) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %367) #16
  br label %390

368:                                              ; preds = %348
  %369 = load ptr, ptr %239, align 8, !tbaa !26
  %370 = and i64 %357, 2147483647
  %371 = getelementptr inbounds i8, ptr %369, i64 %370
  store ptr %371, ptr %239, align 8, !tbaa !26
  %372 = load ptr, ptr %238, align 8, !tbaa !25
  %373 = icmp ugt ptr %372, %371
  br i1 %373, label %348, label %374, !llvm.loop !35

374:                                              ; preds = %368
  %375 = load i32, ptr %237, align 8, !tbaa !24
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %374, %342
  %378 = load i32, ptr %23, align 8, !tbaa !16
  store i32 %378, ptr %237, align 8, !tbaa !24
  %379 = load ptr, ptr %231, align 8, !tbaa !20
  store ptr %379, ptr %238, align 8, !tbaa !25
  store ptr %379, ptr %239, align 8, !tbaa !26
  br label %380

380:                                              ; preds = %377, %374, %339
  %381 = phi i32 [ %375, %374 ], [ %378, %377 ], [ %340, %339 ]
  %382 = tail call i32 @deflate(ptr noundef nonnull %73, i32 noundef 0) #16
  %383 = icmp eq i32 %382, -2
  br i1 %383, label %384, label %385

384:                                              ; preds = %380
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %390

385:                                              ; preds = %380
  %386 = load i32, ptr %237, align 8, !tbaa !24
  %387 = icmp ult i32 %381, %386
  br i1 %387, label %322, label %388, !nosanitize !31

388:                                              ; preds = %385
  %389 = icmp eq i32 %381, %386
  br i1 %389, label %390, label %339, !llvm.loop !36

390:                                              ; preds = %323, %388, %384, %365, %332, %315, %295, %281, %275, %266
  %391 = phi i1 [ true, %315 ], [ true, %365 ], [ true, %384 ], [ false, %332 ], [ true, %266 ], [ true, %275 ], [ true, %281 ], [ false, %295 ], [ false, %388 ], [ false, %323 ]
  %392 = load i32, ptr %74, align 8, !tbaa !28
  %393 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %250, i32 %392), !nosanitize !31
  %394 = extractvalue { i32, i1 } %393, 1, !nosanitize !31
  br i1 %394, label %395, label %396, !nosanitize !31

395:                                              ; preds = %403, %390
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

396:                                              ; preds = %390
  %397 = extractvalue { i32, i1 } %393, 0, !nosanitize !31
  %398 = zext i32 %397 to i64
  %399 = load i64, ptr %241, align 8, !tbaa !37
  %400 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %399, i64 %398), !nosanitize !31
  %401 = extractvalue { i64, i1 } %400, 1, !nosanitize !31
  br i1 %401, label %402, label %403, !nosanitize !31

402:                                              ; preds = %396
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

403:                                              ; preds = %396
  %404 = extractvalue { i64, i1 } %400, 0, !nosanitize !31
  store i64 %404, ptr %241, align 8, !tbaa !37
  %405 = load i64, ptr %69, align 8, !tbaa !27
  %406 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %405, i64 %398), !nosanitize !31
  %407 = extractvalue { i64, i1 } %406, 0, !nosanitize !31
  %408 = extractvalue { i64, i1 } %406, 1, !nosanitize !31
  br i1 %408, label %395, label %409, !nosanitize !31

409:                                              ; preds = %403
  store i64 %407, ptr %69, align 8, !tbaa !27
  br i1 %391, label %955, label %410

410:                                              ; preds = %409
  %411 = icmp eq i64 %407, 0
  br i1 %411, label %412, label %243, !llvm.loop !38

412:                                              ; preds = %410
  %413 = load i32, ptr %23, align 8, !tbaa !16
  br label %414

414:                                              ; preds = %412, %67
  %415 = phi i32 [ %413, %412 ], [ %68, %67 ]
  %416 = zext i32 %415 to i64
  %417 = icmp ult i64 %17, %416
  %418 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %419 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  br i1 %417, label %420, label %625

420:                                              ; preds = %414
  %421 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %422 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %423 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %424 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %425 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %426 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %427 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %428 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %429 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %430 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %431 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %432 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %433 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %434 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  br label %435

435:                                              ; preds = %562, %420
  %436 = phi i64 [ %17, %420 ], [ %480, %562 ]
  %437 = phi ptr [ %1, %420 ], [ %478, %562 ]
  %438 = load i32, ptr %419, align 8, !tbaa !39
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %443, label %440

440:                                              ; preds = %435
  %441 = load ptr, ptr %418, align 8, !tbaa !40
  %442 = load ptr, ptr %421, align 8, !tbaa !18
  br label %445

443:                                              ; preds = %435
  %444 = load ptr, ptr %421, align 8, !tbaa !18
  store ptr %444, ptr %418, align 8, !tbaa !40
  br label %445

445:                                              ; preds = %443, %440
  %446 = phi ptr [ %442, %440 ], [ %444, %443 ]
  %447 = phi ptr [ %441, %440 ], [ %444, %443 ]
  %448 = zext i32 %438 to i64
  %449 = getelementptr inbounds i8, ptr %447, i64 %448
  %450 = ptrtoint ptr %449 to i64
  %451 = ptrtoint ptr %446 to i64
  %452 = sub i64 %450, %451
  %453 = trunc i64 %452 to i32
  %454 = load i32, ptr %23, align 8, !tbaa !16
  %455 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %454, i32 %453), !nosanitize !31
  %456 = extractvalue { i32, i1 } %455, 1, !nosanitize !31
  br i1 %456, label %457, label %458, !nosanitize !31

457:                                              ; preds = %940, %929, %476, %445, %949, %621
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

458:                                              ; preds = %445
  %459 = extractvalue { i32, i1 } %455, 0, !nosanitize !31
  %460 = zext i32 %459 to i64
  %461 = icmp ult i64 %436, %460
  %462 = trunc i64 %436 to i32
  %463 = select i1 %461, i32 %462, i32 %459
  %464 = and i64 %452, 4294967295
  %465 = getelementptr inbounds i8, ptr %446, i64 %464
  %466 = zext i32 %463 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %465, ptr align 1 %437, i64 %466, i1 false)
  %467 = load i32, ptr %419, align 8, !tbaa !39
  %468 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %467, i32 %463), !nosanitize !31
  %469 = extractvalue { i32, i1 } %468, 1, !nosanitize !31
  br i1 %469, label %470, label %471, !nosanitize !31

470:                                              ; preds = %934, %471, %458
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

471:                                              ; preds = %458
  %472 = extractvalue { i32, i1 } %468, 0, !nosanitize !31
  store i32 %472, ptr %419, align 8, !tbaa !39
  %473 = load i64, ptr %422, align 8, !tbaa !37
  %474 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %473, i64 %466), !nosanitize !31
  %475 = extractvalue { i64, i1 } %474, 1, !nosanitize !31
  br i1 %475, label %470, label %476, !nosanitize !31

476:                                              ; preds = %471
  %477 = extractvalue { i64, i1 } %474, 0, !nosanitize !31
  store i64 %477, ptr %422, align 8, !tbaa !37
  %478 = getelementptr inbounds i8, ptr %437, i64 %466
  %479 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %436, i64 %466), !nosanitize !31
  %480 = extractvalue { i64, i1 } %479, 0, !nosanitize !31
  %481 = extractvalue { i64, i1 } %479, 1, !nosanitize !31
  br i1 %481, label %457, label %482, !nosanitize !31

482:                                              ; preds = %476
  %483 = icmp eq i64 %480, 0
  br i1 %483, label %955, label %484

484:                                              ; preds = %482
  %485 = load i32, ptr %23, align 8, !tbaa !16
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %519

487:                                              ; preds = %484
  %488 = load i32, ptr %424, align 4, !tbaa !17
  %489 = shl i32 %488, 1
  %490 = zext i32 %489 to i64
  %491 = tail call noalias ptr @malloc(i64 noundef %490) #17
  store ptr %491, ptr %421, align 8, !tbaa !18
  %492 = icmp eq ptr %491, null
  br i1 %492, label %493, label %494

493:                                              ; preds = %487
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %618

494:                                              ; preds = %487
  %495 = load i32, ptr %423, align 8, !tbaa !19
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %498, label %497

497:                                              ; preds = %494
  store i32 %488, ptr %23, align 8, !tbaa !16
  br label %522

498:                                              ; preds = %494
  %499 = zext i32 %488 to i64
  %500 = tail call noalias ptr @malloc(i64 noundef %499) #17
  store ptr %500, ptr %425, align 8, !tbaa !20
  %501 = icmp eq ptr %500, null
  br i1 %501, label %502, label %503

502:                                              ; preds = %498
  tail call void @free(ptr noundef nonnull %491) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %618

503:                                              ; preds = %498
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %426, i8 0, i64 24, i1 false)
  %504 = load i32, ptr %427, align 8, !tbaa !21
  %505 = load i32, ptr %428, align 4, !tbaa !22
  %506 = tail call i32 @deflateInit2_(ptr noundef nonnull %418, i32 noundef %504, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %505, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %511, label %508

508:                                              ; preds = %503
  %509 = load ptr, ptr %425, align 8, !tbaa !20
  tail call void @free(ptr noundef %509) #16
  %510 = load ptr, ptr %421, align 8, !tbaa !18
  tail call void @free(ptr noundef %510) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %618

511:                                              ; preds = %503
  store ptr null, ptr %418, align 8, !tbaa !23
  %512 = load i32, ptr %423, align 8, !tbaa !19
  %513 = load i32, ptr %424, align 4, !tbaa !17
  store i32 %513, ptr %23, align 8, !tbaa !16
  %514 = icmp eq i32 %512, 0
  br i1 %514, label %517, label %515

515:                                              ; preds = %511
  %516 = load i32, ptr %419, align 8, !tbaa !28
  br label %522

517:                                              ; preds = %511
  store i32 %513, ptr %431, align 8, !tbaa !24
  %518 = load ptr, ptr %425, align 8, !tbaa !20
  store ptr %518, ptr %432, align 8, !tbaa !25
  store ptr %518, ptr %433, align 8, !tbaa !26
  br label %556

519:                                              ; preds = %484
  %520 = load i32, ptr %423, align 8, !tbaa !19
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %556, label %522

522:                                              ; preds = %519, %515, %497
  %523 = phi i32 [ %516, %515 ], [ %472, %519 ], [ %472, %497 ]
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %562, label %525

525:                                              ; preds = %522
  %526 = tail call ptr @__errno_location() #18
  %527 = load ptr, ptr %418, align 8, !tbaa !23
  br label %528

528:                                              ; preds = %550, %525
  %529 = phi ptr [ %527, %525 ], [ %554, %550 ]
  store i32 0, ptr %526, align 4, !tbaa !29
  store i32 0, ptr %429, align 4, !tbaa !15
  %530 = load i32, ptr %419, align 8, !tbaa !28
  %531 = tail call i32 @llvm.umin.i32(i32 %530, i32 1073741824)
  %532 = load i32, ptr %430, align 4, !tbaa !30
  %533 = zext nneg i32 %531 to i64
  %534 = tail call i64 @write(i32 noundef %532, ptr noundef %529, i64 noundef %533) #16
  %535 = trunc i64 %534 to i32
  %536 = icmp slt i32 %535, 0
  br i1 %536, label %537, label %545

537:                                              ; preds = %528
  %538 = load i32, ptr %526, align 4, !tbaa !29
  %539 = icmp eq i32 %538, 11
  br i1 %539, label %540, label %542

540:                                              ; preds = %537
  store i32 1, ptr %429, align 4, !tbaa !15
  %541 = load i32, ptr %526, align 4, !tbaa !29
  br label %542

542:                                              ; preds = %540, %537
  %543 = phi i32 [ %538, %537 ], [ %541, %540 ]
  %544 = tail call ptr @strerror(i32 noundef %543) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %544) #16
  br label %618

545:                                              ; preds = %528
  %546 = load i32, ptr %419, align 8, !tbaa !28
  %547 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %546, i32 %535), !nosanitize !31
  %548 = extractvalue { i32, i1 } %547, 1, !nosanitize !31
  br i1 %548, label %549, label %550, !nosanitize !31

549:                                              ; preds = %545, %613
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

550:                                              ; preds = %545
  %551 = extractvalue { i32, i1 } %547, 0, !nosanitize !31
  store i32 %551, ptr %419, align 8, !tbaa !28
  %552 = load ptr, ptr %418, align 8, !tbaa !23
  %553 = and i64 %534, 4294967295
  %554 = getelementptr inbounds i8, ptr %552, i64 %553
  store ptr %554, ptr %418, align 8, !tbaa !23
  %555 = icmp eq i32 %551, 0
  br i1 %555, label %562, label %528, !llvm.loop !32

556:                                              ; preds = %519, %517
  %557 = load i32, ptr %434, align 8, !tbaa !34
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %565, label %559

559:                                              ; preds = %556
  %560 = load i32, ptr %419, align 8, !tbaa !28
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %550, %616, %559, %522
  br label %435

563:                                              ; preds = %559
  %564 = tail call i32 @deflateReset(ptr noundef nonnull %418) #16
  store i32 0, ptr %434, align 8, !tbaa !34
  br label %565

565:                                              ; preds = %563, %556
  %566 = load i32, ptr %431, align 8, !tbaa !24
  br label %567

567:                                              ; preds = %616, %565
  %568 = phi i32 [ %566, %565 ], [ %614, %616 ]
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %608

570:                                              ; preds = %567
  %571 = load ptr, ptr %432, align 8, !tbaa !25
  %572 = load ptr, ptr %433, align 8, !tbaa !26
  %573 = icmp ugt ptr %571, %572
  br i1 %573, label %574, label %605

574:                                              ; preds = %570
  %575 = tail call ptr @__errno_location() #18
  br label %576

576:                                              ; preds = %596, %574
  %577 = phi ptr [ %572, %574 ], [ %599, %596 ]
  %578 = phi ptr [ %571, %574 ], [ %600, %596 ]
  store i32 0, ptr %575, align 4, !tbaa !29
  store i32 0, ptr %429, align 4, !tbaa !15
  %579 = ptrtoint ptr %578 to i64
  %580 = ptrtoint ptr %577 to i64
  %581 = sub i64 %579, %580
  %582 = tail call i64 @llvm.smin.i64(i64 %581, i64 1073741824)
  %583 = load i32, ptr %430, align 4, !tbaa !30
  %584 = and i64 %582, 4294967295
  %585 = tail call i64 @write(i32 noundef %583, ptr noundef %577, i64 noundef %584) #16
  %586 = and i64 %585, 2147483648
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %596, label %588

588:                                              ; preds = %576
  %589 = load i32, ptr %575, align 4, !tbaa !29
  %590 = icmp eq i32 %589, 11
  br i1 %590, label %591, label %593

591:                                              ; preds = %588
  store i32 1, ptr %429, align 4, !tbaa !15
  %592 = load i32, ptr %575, align 4, !tbaa !29
  br label %593

593:                                              ; preds = %591, %588
  %594 = phi i32 [ %589, %588 ], [ %592, %591 ]
  %595 = tail call ptr @strerror(i32 noundef %594) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %595) #16
  br label %618

596:                                              ; preds = %576
  %597 = load ptr, ptr %433, align 8, !tbaa !26
  %598 = and i64 %585, 2147483647
  %599 = getelementptr inbounds i8, ptr %597, i64 %598
  store ptr %599, ptr %433, align 8, !tbaa !26
  %600 = load ptr, ptr %432, align 8, !tbaa !25
  %601 = icmp ugt ptr %600, %599
  br i1 %601, label %576, label %602, !llvm.loop !35

602:                                              ; preds = %596
  %603 = load i32, ptr %431, align 8, !tbaa !24
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %602, %570
  %606 = load i32, ptr %23, align 8, !tbaa !16
  store i32 %606, ptr %431, align 8, !tbaa !24
  %607 = load ptr, ptr %425, align 8, !tbaa !20
  store ptr %607, ptr %432, align 8, !tbaa !25
  store ptr %607, ptr %433, align 8, !tbaa !26
  br label %608

608:                                              ; preds = %605, %602, %567
  %609 = phi i32 [ %603, %602 ], [ %606, %605 ], [ %568, %567 ]
  %610 = tail call i32 @deflate(ptr noundef nonnull %418, i32 noundef 0) #16
  %611 = icmp eq i32 %610, -2
  br i1 %611, label %612, label %613

612:                                              ; preds = %608
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %618

613:                                              ; preds = %608
  %614 = load i32, ptr %431, align 8, !tbaa !24
  %615 = icmp ult i32 %609, %614
  br i1 %615, label %549, label %616, !nosanitize !31

616:                                              ; preds = %613
  %617 = icmp eq i32 %609, %614
  br i1 %617, label %562, label %567, !llvm.loop !36

618:                                              ; preds = %612, %593, %542, %508, %502, %493
  %619 = load i32, ptr %429, align 4, !tbaa !15
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %955, label %621

621:                                              ; preds = %618
  %622 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %17, i64 %480), !nosanitize !31
  %623 = extractvalue { i64, i1 } %622, 0, !nosanitize !31
  %624 = extractvalue { i64, i1 } %622, 1, !nosanitize !31
  br i1 %624, label %457, label %955, !nosanitize !31

625:                                              ; preds = %414
  %626 = load i32, ptr %419, align 8, !tbaa !28
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %778, label %628

628:                                              ; preds = %625
  %629 = icmp eq i32 %415, 0
  br i1 %629, label %630, label %670

630:                                              ; preds = %628
  %631 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %632 = load i32, ptr %631, align 4, !tbaa !17
  %633 = shl i32 %632, 1
  %634 = zext i32 %633 to i64
  %635 = tail call noalias ptr @malloc(i64 noundef %634) #17
  %636 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %635, ptr %636, align 8, !tbaa !18
  %637 = icmp eq ptr %635, null
  br i1 %637, label %638, label %639

638:                                              ; preds = %630
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

639:                                              ; preds = %630
  %640 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %641 = load i32, ptr %640, align 8, !tbaa !19
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %644, label %643

643:                                              ; preds = %639
  store i32 %632, ptr %23, align 8, !tbaa !16
  br label %677

644:                                              ; preds = %639
  %645 = zext i32 %632 to i64
  %646 = tail call noalias ptr @malloc(i64 noundef %645) #17
  %647 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %646, ptr %647, align 8, !tbaa !20
  %648 = icmp eq ptr %646, null
  br i1 %648, label %649, label %650

649:                                              ; preds = %644
  tail call void @free(ptr noundef nonnull %635) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

650:                                              ; preds = %644
  %651 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %652 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %651, i8 0, i64 24, i1 false)
  %653 = load i32, ptr %652, align 8, !tbaa !21
  %654 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %655 = load i32, ptr %654, align 4, !tbaa !22
  %656 = tail call i32 @deflateInit2_(ptr noundef nonnull %418, i32 noundef %653, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %655, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %661, label %658

658:                                              ; preds = %650
  %659 = load ptr, ptr %647, align 8, !tbaa !20
  tail call void @free(ptr noundef %659) #16
  %660 = load ptr, ptr %636, align 8, !tbaa !18
  tail call void @free(ptr noundef %660) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %955

661:                                              ; preds = %650
  store ptr null, ptr %418, align 8, !tbaa !23
  %662 = load i32, ptr %640, align 8, !tbaa !19
  %663 = load i32, ptr %631, align 4, !tbaa !17
  store i32 %663, ptr %23, align 8, !tbaa !16
  %664 = icmp eq i32 %662, 0
  br i1 %664, label %665, label %674

665:                                              ; preds = %661
  %666 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %663, ptr %666, align 8, !tbaa !24
  %667 = load ptr, ptr %647, align 8, !tbaa !20
  %668 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %667, ptr %668, align 8, !tbaa !25
  %669 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %667, ptr %669, align 8, !tbaa !26
  br label %710

670:                                              ; preds = %628
  %671 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %672 = load i32, ptr %671, align 8, !tbaa !19
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %710, label %677

674:                                              ; preds = %661
  %675 = load i32, ptr %419, align 8, !tbaa !28
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %778, label %677

677:                                              ; preds = %674, %670, %643
  %678 = tail call ptr @__errno_location() #18
  %679 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %680 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %681 = load ptr, ptr %418, align 8, !tbaa !23
  br label %682

682:                                              ; preds = %704, %677
  %683 = phi ptr [ %681, %677 ], [ %708, %704 ]
  store i32 0, ptr %678, align 4, !tbaa !29
  store i32 0, ptr %679, align 4, !tbaa !15
  %684 = load i32, ptr %419, align 8, !tbaa !28
  %685 = tail call i32 @llvm.umin.i32(i32 %684, i32 1073741824)
  %686 = load i32, ptr %680, align 4, !tbaa !30
  %687 = zext nneg i32 %685 to i64
  %688 = tail call i64 @write(i32 noundef %686, ptr noundef %683, i64 noundef %687) #16
  %689 = trunc i64 %688 to i32
  %690 = icmp slt i32 %689, 0
  br i1 %690, label %691, label %699

691:                                              ; preds = %682
  %692 = load i32, ptr %678, align 4, !tbaa !29
  %693 = icmp eq i32 %692, 11
  br i1 %693, label %694, label %696

694:                                              ; preds = %691
  store i32 1, ptr %679, align 4, !tbaa !15
  %695 = load i32, ptr %678, align 4, !tbaa !29
  br label %696

696:                                              ; preds = %694, %691
  %697 = phi i32 [ %692, %691 ], [ %695, %694 ]
  %698 = tail call ptr @strerror(i32 noundef %697) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %698) #16
  br label %955

699:                                              ; preds = %682
  %700 = load i32, ptr %419, align 8, !tbaa !28
  %701 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %700, i32 %689), !nosanitize !31
  %702 = extractvalue { i32, i1 } %701, 1, !nosanitize !31
  br i1 %702, label %703, label %704, !nosanitize !31

703:                                              ; preds = %699, %773
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

704:                                              ; preds = %699
  %705 = extractvalue { i32, i1 } %701, 0, !nosanitize !31
  store i32 %705, ptr %419, align 8, !tbaa !28
  %706 = load ptr, ptr %418, align 8, !tbaa !23
  %707 = and i64 %688, 4294967295
  %708 = getelementptr inbounds i8, ptr %706, i64 %707
  store ptr %708, ptr %418, align 8, !tbaa !23
  %709 = icmp eq i32 %705, 0
  br i1 %709, label %778, label %682, !llvm.loop !32

710:                                              ; preds = %670, %665
  %711 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %712 = load i32, ptr %711, align 8, !tbaa !34
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %719, label %714

714:                                              ; preds = %710
  %715 = load i32, ptr %419, align 8, !tbaa !28
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %778, label %717

717:                                              ; preds = %714
  %718 = tail call i32 @deflateReset(ptr noundef nonnull %418) #16
  store i32 0, ptr %711, align 8, !tbaa !34
  br label %719

719:                                              ; preds = %717, %710
  %720 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %721 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %722 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %723 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %724 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %725 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %726 = load i32, ptr %720, align 8, !tbaa !24
  br label %727

727:                                              ; preds = %776, %719
  %728 = phi i32 [ %726, %719 ], [ %774, %776 ]
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %730, label %768

730:                                              ; preds = %727
  %731 = load ptr, ptr %721, align 8, !tbaa !25
  %732 = load ptr, ptr %722, align 8, !tbaa !26
  %733 = icmp ugt ptr %731, %732
  br i1 %733, label %734, label %765

734:                                              ; preds = %730
  %735 = tail call ptr @__errno_location() #18
  br label %736

736:                                              ; preds = %756, %734
  %737 = phi ptr [ %732, %734 ], [ %759, %756 ]
  %738 = phi ptr [ %731, %734 ], [ %760, %756 ]
  store i32 0, ptr %735, align 4, !tbaa !29
  store i32 0, ptr %723, align 4, !tbaa !15
  %739 = ptrtoint ptr %738 to i64
  %740 = ptrtoint ptr %737 to i64
  %741 = sub i64 %739, %740
  %742 = tail call i64 @llvm.smin.i64(i64 %741, i64 1073741824)
  %743 = load i32, ptr %724, align 4, !tbaa !30
  %744 = and i64 %742, 4294967295
  %745 = tail call i64 @write(i32 noundef %743, ptr noundef %737, i64 noundef %744) #16
  %746 = and i64 %745, 2147483648
  %747 = icmp eq i64 %746, 0
  br i1 %747, label %756, label %748

748:                                              ; preds = %736
  %749 = load i32, ptr %735, align 4, !tbaa !29
  %750 = icmp eq i32 %749, 11
  br i1 %750, label %751, label %753

751:                                              ; preds = %748
  store i32 1, ptr %723, align 4, !tbaa !15
  %752 = load i32, ptr %735, align 4, !tbaa !29
  br label %753

753:                                              ; preds = %751, %748
  %754 = phi i32 [ %749, %748 ], [ %752, %751 ]
  %755 = tail call ptr @strerror(i32 noundef %754) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %755) #16
  br label %955

756:                                              ; preds = %736
  %757 = load ptr, ptr %722, align 8, !tbaa !26
  %758 = and i64 %745, 2147483647
  %759 = getelementptr inbounds i8, ptr %757, i64 %758
  store ptr %759, ptr %722, align 8, !tbaa !26
  %760 = load ptr, ptr %721, align 8, !tbaa !25
  %761 = icmp ugt ptr %760, %759
  br i1 %761, label %736, label %762, !llvm.loop !35

762:                                              ; preds = %756
  %763 = load i32, ptr %720, align 8, !tbaa !24
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %768

765:                                              ; preds = %762, %730
  %766 = load i32, ptr %23, align 8, !tbaa !16
  store i32 %766, ptr %720, align 8, !tbaa !24
  %767 = load ptr, ptr %725, align 8, !tbaa !20
  store ptr %767, ptr %721, align 8, !tbaa !25
  store ptr %767, ptr %722, align 8, !tbaa !26
  br label %768

768:                                              ; preds = %765, %762, %727
  %769 = phi i32 [ %763, %762 ], [ %766, %765 ], [ %728, %727 ]
  %770 = tail call i32 @deflate(ptr noundef nonnull %418, i32 noundef 0) #16
  %771 = icmp eq i32 %770, -2
  br i1 %771, label %772, label %773

772:                                              ; preds = %768
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %955

773:                                              ; preds = %768
  %774 = load i32, ptr %720, align 8, !tbaa !24
  %775 = icmp ult i32 %769, %774
  br i1 %775, label %703, label %776, !nosanitize !31

776:                                              ; preds = %773
  %777 = icmp eq i32 %769, %774
  br i1 %777, label %778, label %727, !llvm.loop !36

778:                                              ; preds = %704, %776, %714, %674, %625
  store ptr %1, ptr %418, align 8, !tbaa !40
  %779 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %780 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %781 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %782 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %783 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %784 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %785 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %786 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %787 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %788 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %789 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %790 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %791 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %792 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  br label %793

793:                                              ; preds = %953, %778
  %794 = phi i64 [ %17, %778 ], [ %943, %953 ]
  %795 = tail call i64 @llvm.umin.i64(i64 %794, i64 4294967295)
  %796 = trunc i64 %795 to i32
  store i32 %796, ptr %419, align 8, !tbaa !39
  %797 = load i32, ptr %23, align 8, !tbaa !16
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %799, label %831

799:                                              ; preds = %793
  %800 = load i32, ptr %780, align 4, !tbaa !17
  %801 = shl i32 %800, 1
  %802 = zext i32 %801 to i64
  %803 = tail call noalias ptr @malloc(i64 noundef %802) #17
  store ptr %803, ptr %781, align 8, !tbaa !18
  %804 = icmp eq ptr %803, null
  br i1 %804, label %805, label %806

805:                                              ; preds = %799
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %929

806:                                              ; preds = %799
  %807 = load i32, ptr %779, align 8, !tbaa !19
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %810, label %809

809:                                              ; preds = %806
  store i32 %800, ptr %23, align 8, !tbaa !16
  br label %834

810:                                              ; preds = %806
  %811 = zext i32 %800 to i64
  %812 = tail call noalias ptr @malloc(i64 noundef %811) #17
  store ptr %812, ptr %782, align 8, !tbaa !20
  %813 = icmp eq ptr %812, null
  br i1 %813, label %814, label %815

814:                                              ; preds = %810
  tail call void @free(ptr noundef nonnull %803) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %929

815:                                              ; preds = %810
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %783, i8 0, i64 24, i1 false)
  %816 = load i32, ptr %784, align 8, !tbaa !21
  %817 = load i32, ptr %785, align 4, !tbaa !22
  %818 = tail call i32 @deflateInit2_(ptr noundef nonnull %418, i32 noundef %816, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %817, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %823, label %820

820:                                              ; preds = %815
  %821 = load ptr, ptr %782, align 8, !tbaa !20
  tail call void @free(ptr noundef %821) #16
  %822 = load ptr, ptr %781, align 8, !tbaa !18
  tail call void @free(ptr noundef %822) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %929

823:                                              ; preds = %815
  store ptr null, ptr %418, align 8, !tbaa !23
  %824 = load i32, ptr %779, align 8, !tbaa !19
  %825 = load i32, ptr %780, align 4, !tbaa !17
  store i32 %825, ptr %23, align 8, !tbaa !16
  %826 = icmp eq i32 %824, 0
  br i1 %826, label %829, label %827

827:                                              ; preds = %823
  %828 = load i32, ptr %419, align 8, !tbaa !28
  br label %834

829:                                              ; preds = %823
  store i32 %825, ptr %788, align 8, !tbaa !24
  %830 = load ptr, ptr %782, align 8, !tbaa !20
  store ptr %830, ptr %789, align 8, !tbaa !25
  store ptr %830, ptr %790, align 8, !tbaa !26
  br label %868

831:                                              ; preds = %793
  %832 = load i32, ptr %779, align 8, !tbaa !19
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %868, label %834

834:                                              ; preds = %831, %827, %809
  %835 = phi i32 [ %828, %827 ], [ %796, %831 ], [ %796, %809 ]
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %929, label %837

837:                                              ; preds = %834
  %838 = tail call ptr @__errno_location() #18
  %839 = load ptr, ptr %418, align 8, !tbaa !23
  br label %840

840:                                              ; preds = %862, %837
  %841 = phi ptr [ %839, %837 ], [ %866, %862 ]
  store i32 0, ptr %838, align 4, !tbaa !29
  store i32 0, ptr %786, align 4, !tbaa !15
  %842 = load i32, ptr %419, align 8, !tbaa !28
  %843 = tail call i32 @llvm.umin.i32(i32 %842, i32 1073741824)
  %844 = load i32, ptr %787, align 4, !tbaa !30
  %845 = zext nneg i32 %843 to i64
  %846 = tail call i64 @write(i32 noundef %844, ptr noundef %841, i64 noundef %845) #16
  %847 = trunc i64 %846 to i32
  %848 = icmp slt i32 %847, 0
  br i1 %848, label %849, label %857

849:                                              ; preds = %840
  %850 = load i32, ptr %838, align 4, !tbaa !29
  %851 = icmp eq i32 %850, 11
  br i1 %851, label %852, label %854

852:                                              ; preds = %849
  store i32 1, ptr %786, align 4, !tbaa !15
  %853 = load i32, ptr %838, align 4, !tbaa !29
  br label %854

854:                                              ; preds = %852, %849
  %855 = phi i32 [ %850, %849 ], [ %853, %852 ]
  %856 = tail call ptr @strerror(i32 noundef %855) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %856) #16
  br label %929

857:                                              ; preds = %840
  %858 = load i32, ptr %419, align 8, !tbaa !28
  %859 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %858, i32 %847), !nosanitize !31
  %860 = extractvalue { i32, i1 } %859, 1, !nosanitize !31
  br i1 %860, label %861, label %862, !nosanitize !31

861:                                              ; preds = %857, %924
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

862:                                              ; preds = %857
  %863 = extractvalue { i32, i1 } %859, 0, !nosanitize !31
  store i32 %863, ptr %419, align 8, !tbaa !28
  %864 = load ptr, ptr %418, align 8, !tbaa !23
  %865 = and i64 %846, 4294967295
  %866 = getelementptr inbounds i8, ptr %864, i64 %865
  store ptr %866, ptr %418, align 8, !tbaa !23
  %867 = icmp eq i32 %863, 0
  br i1 %867, label %929, label %840, !llvm.loop !32

868:                                              ; preds = %831, %829
  %869 = load i32, ptr %791, align 8, !tbaa !34
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %876, label %871

871:                                              ; preds = %868
  %872 = load i32, ptr %419, align 8, !tbaa !28
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %929, label %874

874:                                              ; preds = %871
  %875 = tail call i32 @deflateReset(ptr noundef nonnull %418) #16
  store i32 0, ptr %791, align 8, !tbaa !34
  br label %876

876:                                              ; preds = %874, %868
  %877 = load i32, ptr %788, align 8, !tbaa !24
  br label %878

878:                                              ; preds = %927, %876
  %879 = phi i32 [ %877, %876 ], [ %925, %927 ]
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %881, label %919

881:                                              ; preds = %878
  %882 = load ptr, ptr %789, align 8, !tbaa !25
  %883 = load ptr, ptr %790, align 8, !tbaa !26
  %884 = icmp ugt ptr %882, %883
  br i1 %884, label %885, label %916

885:                                              ; preds = %881
  %886 = tail call ptr @__errno_location() #18
  br label %887

887:                                              ; preds = %907, %885
  %888 = phi ptr [ %883, %885 ], [ %910, %907 ]
  %889 = phi ptr [ %882, %885 ], [ %911, %907 ]
  store i32 0, ptr %886, align 4, !tbaa !29
  store i32 0, ptr %786, align 4, !tbaa !15
  %890 = ptrtoint ptr %889 to i64
  %891 = ptrtoint ptr %888 to i64
  %892 = sub i64 %890, %891
  %893 = tail call i64 @llvm.smin.i64(i64 %892, i64 1073741824)
  %894 = load i32, ptr %787, align 4, !tbaa !30
  %895 = and i64 %893, 4294967295
  %896 = tail call i64 @write(i32 noundef %894, ptr noundef %888, i64 noundef %895) #16
  %897 = and i64 %896, 2147483648
  %898 = icmp eq i64 %897, 0
  br i1 %898, label %907, label %899

899:                                              ; preds = %887
  %900 = load i32, ptr %886, align 4, !tbaa !29
  %901 = icmp eq i32 %900, 11
  br i1 %901, label %902, label %904

902:                                              ; preds = %899
  store i32 1, ptr %786, align 4, !tbaa !15
  %903 = load i32, ptr %886, align 4, !tbaa !29
  br label %904

904:                                              ; preds = %902, %899
  %905 = phi i32 [ %900, %899 ], [ %903, %902 ]
  %906 = tail call ptr @strerror(i32 noundef %905) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %906) #16
  br label %929

907:                                              ; preds = %887
  %908 = load ptr, ptr %790, align 8, !tbaa !26
  %909 = and i64 %896, 2147483647
  %910 = getelementptr inbounds i8, ptr %908, i64 %909
  store ptr %910, ptr %790, align 8, !tbaa !26
  %911 = load ptr, ptr %789, align 8, !tbaa !25
  %912 = icmp ugt ptr %911, %910
  br i1 %912, label %887, label %913, !llvm.loop !35

913:                                              ; preds = %907
  %914 = load i32, ptr %788, align 8, !tbaa !24
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %916, label %919

916:                                              ; preds = %913, %881
  %917 = load i32, ptr %23, align 8, !tbaa !16
  store i32 %917, ptr %788, align 8, !tbaa !24
  %918 = load ptr, ptr %782, align 8, !tbaa !20
  store ptr %918, ptr %789, align 8, !tbaa !25
  store ptr %918, ptr %790, align 8, !tbaa !26
  br label %919

919:                                              ; preds = %916, %913, %878
  %920 = phi i32 [ %914, %913 ], [ %917, %916 ], [ %879, %878 ]
  %921 = tail call i32 @deflate(ptr noundef nonnull %418, i32 noundef 0) #16
  %922 = icmp eq i32 %921, -2
  br i1 %922, label %923, label %924

923:                                              ; preds = %919
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %929

924:                                              ; preds = %919
  %925 = load i32, ptr %788, align 8, !tbaa !24
  %926 = icmp ult i32 %920, %925
  br i1 %926, label %861, label %927, !nosanitize !31

927:                                              ; preds = %924
  %928 = icmp eq i32 %920, %925
  br i1 %928, label %929, label %878, !llvm.loop !36

929:                                              ; preds = %862, %927, %923, %904, %871, %854, %834, %820, %814, %805
  %930 = phi i1 [ true, %854 ], [ true, %904 ], [ true, %923 ], [ false, %871 ], [ true, %805 ], [ true, %814 ], [ true, %820 ], [ false, %834 ], [ false, %927 ], [ false, %862 ]
  %931 = load i32, ptr %419, align 8, !tbaa !39
  %932 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %796, i32 %931), !nosanitize !31
  %933 = extractvalue { i32, i1 } %932, 1, !nosanitize !31
  br i1 %933, label %457, label %934, !nosanitize !31

934:                                              ; preds = %929
  %935 = extractvalue { i32, i1 } %932, 0, !nosanitize !31
  %936 = zext i32 %935 to i64
  %937 = load i64, ptr %792, align 8, !tbaa !37
  %938 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %937, i64 %936), !nosanitize !31
  %939 = extractvalue { i64, i1 } %938, 1, !nosanitize !31
  br i1 %939, label %470, label %940, !nosanitize !31

940:                                              ; preds = %934
  %941 = extractvalue { i64, i1 } %938, 0, !nosanitize !31
  store i64 %941, ptr %792, align 8, !tbaa !37
  %942 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %794, i64 %936), !nosanitize !31
  %943 = extractvalue { i64, i1 } %942, 0, !nosanitize !31
  %944 = extractvalue { i64, i1 } %942, 1, !nosanitize !31
  br i1 %944, label %457, label %945, !nosanitize !31

945:                                              ; preds = %940
  br i1 %930, label %946, label %953

946:                                              ; preds = %945
  %947 = load i32, ptr %786, align 4, !tbaa !15
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %955, label %949

949:                                              ; preds = %946
  %950 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %17, i64 %943), !nosanitize !31
  %951 = extractvalue { i64, i1 } %950, 0, !nosanitize !31
  %952 = extractvalue { i64, i1 } %950, 1, !nosanitize !31
  br i1 %952, label %457, label %955, !nosanitize !31

953:                                              ; preds = %945
  %954 = icmp eq i64 %943, 0
  br i1 %954, label %955, label %793, !llvm.loop !41

955:                                              ; preds = %409, %953, %482, %20, %35, %46, %55, %87, %98, %107, %145, %202, %221, %618, %621, %638, %649, %658, %696, %753, %772, %946, %949
  %956 = phi i64 [ 0, %20 ], [ 0, %35 ], [ 0, %46 ], [ 0, %55 ], [ 0, %145 ], [ 0, %202 ], [ 0, %221 ], [ 0, %87 ], [ 0, %98 ], [ 0, %107 ], [ 0, %618 ], [ %623, %621 ], [ 0, %696 ], [ 0, %753 ], [ 0, %772 ], [ 0, %638 ], [ 0, %649 ], [ 0, %658 ], [ 0, %946 ], [ %951, %949 ], [ %17, %482 ], [ %17, %953 ], [ 0, %409 ]
  %957 = icmp ne i64 %17, 0
  %958 = icmp eq i64 %956, 0
  %959 = select i1 %957, i1 %958, i1 false
  %960 = trunc i64 %956 to i32
  %961 = select i1 %959, i32 -1, i32 %960
  br label %962

962:                                              ; preds = %4, %12, %2, %955, %19
  %963 = phi i32 [ -1, %19 ], [ %961, %955 ], [ -1, %2 ], [ -1, %12 ], [ -1, %4 ]
  ret i32 %963
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gzvprintf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %662, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %662

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %12 = load i32, ptr %11, align 8, !tbaa !14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %662, label %18

18:                                               ; preds = %14, %10
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #16
  %19 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !17
  %25 = shl i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = tail call noalias ptr @malloc(i64 noundef %26) #17
  %28 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %27, ptr %28, align 8, !tbaa !18
  %29 = icmp eq ptr %27, null
  br i1 %29, label %61, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %32 = load i32, ptr %31, align 8, !tbaa !19
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 %24, ptr %19, align 8, !tbaa !16
  br label %63

35:                                               ; preds = %30
  %36 = zext i32 %24 to i64
  %37 = tail call noalias ptr @malloc(i64 noundef %36) #17
  %38 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %37, ptr %38, align 8, !tbaa !20
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  tail call void @free(ptr noundef nonnull %27) #16
  br label %61

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %43 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %44 = load i32, ptr %43, align 8, !tbaa !21
  %45 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %46 = load i32, ptr %45, align 4, !tbaa !22
  %47 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %44, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %46, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %38, align 8, !tbaa !20
  tail call void @free(ptr noundef %50) #16
  %51 = load ptr, ptr %28, align 8, !tbaa !18
  tail call void @free(ptr noundef %51) #16
  br label %61

52:                                               ; preds = %41
  store ptr null, ptr %6, align 8, !tbaa !23
  %53 = load i32, ptr %31, align 8, !tbaa !19
  %54 = load i32, ptr %23, align 4, !tbaa !17
  store i32 %54, ptr %19, align 8, !tbaa !16
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %54, ptr %57, align 8, !tbaa !24
  %58 = load ptr, ptr %38, align 8, !tbaa !20
  %59 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %58, ptr %59, align 8, !tbaa !25
  %60 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %58, ptr %60, align 8, !tbaa !26
  br label %63

61:                                               ; preds = %22, %40, %49
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  %62 = load i32, ptr %11, align 8, !tbaa !14
  br label %662

63:                                               ; preds = %56, %52, %34, %18
  %64 = phi i32 [ %54, %56 ], [ %54, %52 ], [ %24, %34 ], [ %20, %18 ]
  %65 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %66 = load i64, ptr %65, align 8, !tbaa !27
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %409, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !28
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %222, label %72

72:                                               ; preds = %68
  %73 = icmp eq i32 %64, 0
  br i1 %73, label %74, label %114

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %76 = load i32, ptr %75, align 4, !tbaa !17
  %77 = shl i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = tail call noalias ptr @malloc(i64 noundef %78) #17
  %80 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %79, ptr %80, align 8, !tbaa !18
  %81 = icmp eq ptr %79, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %407

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %85 = load i32, ptr %84, align 8, !tbaa !19
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i32 %76, ptr %19, align 8, !tbaa !16
  br label %121

88:                                               ; preds = %83
  %89 = zext i32 %76 to i64
  %90 = tail call noalias ptr @malloc(i64 noundef %89) #17
  %91 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %90, ptr %91, align 8, !tbaa !20
  %92 = icmp eq ptr %90, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  tail call void @free(ptr noundef nonnull %79) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %407

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %96 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %95, i8 0, i64 24, i1 false)
  %97 = load i32, ptr %96, align 8, !tbaa !21
  %98 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %99 = load i32, ptr %98, align 4, !tbaa !22
  %100 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %97, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %99, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %94
  %103 = load ptr, ptr %91, align 8, !tbaa !20
  tail call void @free(ptr noundef %103) #16
  %104 = load ptr, ptr %80, align 8, !tbaa !18
  tail call void @free(ptr noundef %104) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %407

105:                                              ; preds = %94
  store ptr null, ptr %6, align 8, !tbaa !23
  %106 = load i32, ptr %84, align 8, !tbaa !19
  %107 = load i32, ptr %75, align 4, !tbaa !17
  store i32 %107, ptr %19, align 8, !tbaa !16
  %108 = icmp eq i32 %106, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %107, ptr %110, align 8, !tbaa !24
  %111 = load ptr, ptr %91, align 8, !tbaa !20
  %112 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %111, ptr %112, align 8, !tbaa !25
  %113 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %111, ptr %113, align 8, !tbaa !26
  br label %154

114:                                              ; preds = %72
  %115 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %116 = load i32, ptr %115, align 8, !tbaa !19
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %154, label %121

118:                                              ; preds = %105
  %119 = load i32, ptr %69, align 8, !tbaa !28
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %222, label %121

121:                                              ; preds = %118, %114, %87
  %122 = tail call ptr @__errno_location() #18
  %123 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %124 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %125 = load ptr, ptr %6, align 8, !tbaa !23
  br label %126

126:                                              ; preds = %148, %121
  %127 = phi ptr [ %125, %121 ], [ %152, %148 ]
  store i32 0, ptr %122, align 4, !tbaa !29
  store i32 0, ptr %123, align 4, !tbaa !15
  %128 = load i32, ptr %69, align 8, !tbaa !28
  %129 = tail call i32 @llvm.umin.i32(i32 %128, i32 1073741824)
  %130 = load i32, ptr %124, align 4, !tbaa !30
  %131 = zext nneg i32 %129 to i64
  %132 = tail call i64 @write(i32 noundef %130, ptr noundef %127, i64 noundef %131) #16
  %133 = trunc i64 %132 to i32
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %126
  %136 = load i32, ptr %122, align 4, !tbaa !29
  %137 = icmp eq i32 %136, 11
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  store i32 1, ptr %123, align 4, !tbaa !15
  %139 = load i32, ptr %122, align 4, !tbaa !29
  br label %140

140:                                              ; preds = %138, %135
  %141 = phi i32 [ %136, %135 ], [ %139, %138 ]
  %142 = tail call ptr @strerror(i32 noundef %141) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %142) #16
  br label %407

143:                                              ; preds = %126
  %144 = load i32, ptr %69, align 8, !tbaa !28
  %145 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %144, i32 %133), !nosanitize !31
  %146 = extractvalue { i32, i1 } %145, 1, !nosanitize !31
  br i1 %146, label %147, label %148, !nosanitize !31

147:                                              ; preds = %143, %217
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

148:                                              ; preds = %143
  %149 = extractvalue { i32, i1 } %145, 0, !nosanitize !31
  store i32 %149, ptr %69, align 8, !tbaa !28
  %150 = load ptr, ptr %6, align 8, !tbaa !23
  %151 = and i64 %132, 4294967295
  %152 = getelementptr inbounds i8, ptr %150, i64 %151
  store ptr %152, ptr %6, align 8, !tbaa !23
  %153 = icmp eq i32 %149, 0
  br i1 %153, label %222, label %126, !llvm.loop !32

154:                                              ; preds = %114, %109
  %155 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %156 = load i32, ptr %155, align 8, !tbaa !34
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %154
  %159 = load i32, ptr %69, align 8, !tbaa !28
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %222, label %161

161:                                              ; preds = %158
  %162 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %155, align 8, !tbaa !34
  br label %163

163:                                              ; preds = %161, %154
  %164 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %165 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %166 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %167 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %168 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %169 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %170 = load i32, ptr %164, align 8, !tbaa !24
  br label %171

171:                                              ; preds = %220, %163
  %172 = phi i32 [ %170, %163 ], [ %218, %220 ]
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %212

174:                                              ; preds = %171
  %175 = load ptr, ptr %165, align 8, !tbaa !25
  %176 = load ptr, ptr %166, align 8, !tbaa !26
  %177 = icmp ugt ptr %175, %176
  br i1 %177, label %178, label %209

178:                                              ; preds = %174
  %179 = tail call ptr @__errno_location() #18
  br label %180

180:                                              ; preds = %200, %178
  %181 = phi ptr [ %176, %178 ], [ %203, %200 ]
  %182 = phi ptr [ %175, %178 ], [ %204, %200 ]
  store i32 0, ptr %179, align 4, !tbaa !29
  store i32 0, ptr %167, align 4, !tbaa !15
  %183 = ptrtoint ptr %182 to i64
  %184 = ptrtoint ptr %181 to i64
  %185 = sub i64 %183, %184
  %186 = tail call i64 @llvm.smin.i64(i64 %185, i64 1073741824)
  %187 = load i32, ptr %168, align 4, !tbaa !30
  %188 = and i64 %186, 4294967295
  %189 = tail call i64 @write(i32 noundef %187, ptr noundef %181, i64 noundef %188) #16
  %190 = and i64 %189, 2147483648
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %180
  %193 = load i32, ptr %179, align 4, !tbaa !29
  %194 = icmp eq i32 %193, 11
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  store i32 1, ptr %167, align 4, !tbaa !15
  %196 = load i32, ptr %179, align 4, !tbaa !29
  br label %197

197:                                              ; preds = %195, %192
  %198 = phi i32 [ %193, %192 ], [ %196, %195 ]
  %199 = tail call ptr @strerror(i32 noundef %198) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %199) #16
  br label %407

200:                                              ; preds = %180
  %201 = load ptr, ptr %166, align 8, !tbaa !26
  %202 = and i64 %189, 2147483647
  %203 = getelementptr inbounds i8, ptr %201, i64 %202
  store ptr %203, ptr %166, align 8, !tbaa !26
  %204 = load ptr, ptr %165, align 8, !tbaa !25
  %205 = icmp ugt ptr %204, %203
  br i1 %205, label %180, label %206, !llvm.loop !35

206:                                              ; preds = %200
  %207 = load i32, ptr %164, align 8, !tbaa !24
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206, %174
  %210 = load i32, ptr %19, align 8, !tbaa !16
  store i32 %210, ptr %164, align 8, !tbaa !24
  %211 = load ptr, ptr %169, align 8, !tbaa !20
  store ptr %211, ptr %165, align 8, !tbaa !25
  store ptr %211, ptr %166, align 8, !tbaa !26
  br label %212

212:                                              ; preds = %209, %206, %171
  %213 = phi i32 [ %207, %206 ], [ %210, %209 ], [ %172, %171 ]
  %214 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %215 = icmp eq i32 %214, -2
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %407

217:                                              ; preds = %212
  %218 = load i32, ptr %164, align 8, !tbaa !24
  %219 = icmp ult i32 %213, %218
  br i1 %219, label %147, label %220, !nosanitize !31

220:                                              ; preds = %217
  %221 = icmp eq i32 %213, %218
  br i1 %221, label %222, label %171, !llvm.loop !36

222:                                              ; preds = %148, %220, %158, %118, %68
  %223 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %224 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %225 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %226 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %227 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %228 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %229 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %230 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %231 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %232 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %233 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %234 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %235 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %236 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %237 = load i64, ptr %65, align 8, !tbaa !27
  br label %238

238:                                              ; preds = %405, %222
  %239 = phi i64 [ %237, %222 ], [ %402, %405 ]
  %240 = phi i1 [ false, %222 ], [ true, %405 ]
  %241 = load i32, ptr %19, align 8, !tbaa !16
  %242 = zext i32 %241 to i64
  %243 = icmp slt i64 %239, %242
  %244 = trunc i64 %239 to i32
  %245 = select i1 %243, i32 %244, i32 %241
  %246 = load ptr, ptr %223, align 8, !tbaa !18
  br i1 %240, label %251, label %247

247:                                              ; preds = %238
  %248 = zext i32 %245 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %246, i8 0, i64 %248, i1 false)
  %249 = load ptr, ptr %223, align 8, !tbaa !18
  %250 = load i32, ptr %19, align 8, !tbaa !16
  br label %251

251:                                              ; preds = %247, %238
  %252 = phi i32 [ %250, %247 ], [ %241, %238 ]
  %253 = phi ptr [ %249, %247 ], [ %246, %238 ]
  store i32 %245, ptr %69, align 8, !tbaa !28
  store ptr %253, ptr %6, align 8, !tbaa !23
  %254 = icmp eq i32 %252, 0
  br i1 %254, label %255, label %287

255:                                              ; preds = %251
  %256 = load i32, ptr %225, align 4, !tbaa !17
  %257 = shl i32 %256, 1
  %258 = zext i32 %257 to i64
  %259 = tail call noalias ptr @malloc(i64 noundef %258) #17
  store ptr %259, ptr %223, align 8, !tbaa !18
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %385

262:                                              ; preds = %255
  %263 = load i32, ptr %224, align 8, !tbaa !19
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %262
  store i32 %256, ptr %19, align 8, !tbaa !16
  br label %290

266:                                              ; preds = %262
  %267 = zext i32 %256 to i64
  %268 = tail call noalias ptr @malloc(i64 noundef %267) #17
  store ptr %268, ptr %226, align 8, !tbaa !20
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  tail call void @free(ptr noundef nonnull %259) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %385

271:                                              ; preds = %266
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %227, i8 0, i64 24, i1 false)
  %272 = load i32, ptr %228, align 8, !tbaa !21
  %273 = load i32, ptr %229, align 4, !tbaa !22
  %274 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %272, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %273, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %271
  %277 = load ptr, ptr %226, align 8, !tbaa !20
  tail call void @free(ptr noundef %277) #16
  %278 = load ptr, ptr %223, align 8, !tbaa !18
  tail call void @free(ptr noundef %278) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %385

279:                                              ; preds = %271
  store ptr null, ptr %6, align 8, !tbaa !23
  %280 = load i32, ptr %224, align 8, !tbaa !19
  %281 = load i32, ptr %225, align 4, !tbaa !17
  store i32 %281, ptr %19, align 8, !tbaa !16
  %282 = icmp eq i32 %280, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = load i32, ptr %69, align 8, !tbaa !28
  br label %290

285:                                              ; preds = %279
  store i32 %281, ptr %232, align 8, !tbaa !24
  %286 = load ptr, ptr %226, align 8, !tbaa !20
  store ptr %286, ptr %233, align 8, !tbaa !25
  store ptr %286, ptr %234, align 8, !tbaa !26
  br label %324

287:                                              ; preds = %251
  %288 = load i32, ptr %224, align 8, !tbaa !19
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %324, label %290

290:                                              ; preds = %287, %283, %265
  %291 = phi ptr [ null, %283 ], [ %253, %287 ], [ %253, %265 ]
  %292 = phi i32 [ %284, %283 ], [ %245, %287 ], [ %245, %265 ]
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %385, label %294

294:                                              ; preds = %290
  %295 = tail call ptr @__errno_location() #18
  br label %296

296:                                              ; preds = %318, %294
  %297 = phi ptr [ %291, %294 ], [ %322, %318 ]
  store i32 0, ptr %295, align 4, !tbaa !29
  store i32 0, ptr %230, align 4, !tbaa !15
  %298 = load i32, ptr %69, align 8, !tbaa !28
  %299 = tail call i32 @llvm.umin.i32(i32 %298, i32 1073741824)
  %300 = load i32, ptr %231, align 4, !tbaa !30
  %301 = zext nneg i32 %299 to i64
  %302 = tail call i64 @write(i32 noundef %300, ptr noundef %297, i64 noundef %301) #16
  %303 = trunc i64 %302 to i32
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %296
  %306 = load i32, ptr %295, align 4, !tbaa !29
  %307 = icmp eq i32 %306, 11
  br i1 %307, label %308, label %310

308:                                              ; preds = %305
  store i32 1, ptr %230, align 4, !tbaa !15
  %309 = load i32, ptr %295, align 4, !tbaa !29
  br label %310

310:                                              ; preds = %308, %305
  %311 = phi i32 [ %306, %305 ], [ %309, %308 ]
  %312 = tail call ptr @strerror(i32 noundef %311) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %312) #16
  br label %385

313:                                              ; preds = %296
  %314 = load i32, ptr %69, align 8, !tbaa !28
  %315 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %314, i32 %303), !nosanitize !31
  %316 = extractvalue { i32, i1 } %315, 1, !nosanitize !31
  br i1 %316, label %317, label %318, !nosanitize !31

317:                                              ; preds = %313, %380
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

318:                                              ; preds = %313
  %319 = extractvalue { i32, i1 } %315, 0, !nosanitize !31
  store i32 %319, ptr %69, align 8, !tbaa !28
  %320 = load ptr, ptr %6, align 8, !tbaa !23
  %321 = and i64 %302, 4294967295
  %322 = getelementptr inbounds i8, ptr %320, i64 %321
  store ptr %322, ptr %6, align 8, !tbaa !23
  %323 = icmp eq i32 %319, 0
  br i1 %323, label %385, label %296, !llvm.loop !32

324:                                              ; preds = %287, %285
  %325 = load i32, ptr %235, align 8, !tbaa !34
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %324
  %328 = load i32, ptr %69, align 8, !tbaa !28
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %385, label %330

330:                                              ; preds = %327
  %331 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %235, align 8, !tbaa !34
  br label %332

332:                                              ; preds = %330, %324
  %333 = load i32, ptr %232, align 8, !tbaa !24
  br label %334

334:                                              ; preds = %383, %332
  %335 = phi i32 [ %333, %332 ], [ %381, %383 ]
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %375

337:                                              ; preds = %334
  %338 = load ptr, ptr %233, align 8, !tbaa !25
  %339 = load ptr, ptr %234, align 8, !tbaa !26
  %340 = icmp ugt ptr %338, %339
  br i1 %340, label %341, label %372

341:                                              ; preds = %337
  %342 = tail call ptr @__errno_location() #18
  br label %343

343:                                              ; preds = %363, %341
  %344 = phi ptr [ %339, %341 ], [ %366, %363 ]
  %345 = phi ptr [ %338, %341 ], [ %367, %363 ]
  store i32 0, ptr %342, align 4, !tbaa !29
  store i32 0, ptr %230, align 4, !tbaa !15
  %346 = ptrtoint ptr %345 to i64
  %347 = ptrtoint ptr %344 to i64
  %348 = sub i64 %346, %347
  %349 = tail call i64 @llvm.smin.i64(i64 %348, i64 1073741824)
  %350 = load i32, ptr %231, align 4, !tbaa !30
  %351 = and i64 %349, 4294967295
  %352 = tail call i64 @write(i32 noundef %350, ptr noundef %344, i64 noundef %351) #16
  %353 = and i64 %352, 2147483648
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %363, label %355

355:                                              ; preds = %343
  %356 = load i32, ptr %342, align 4, !tbaa !29
  %357 = icmp eq i32 %356, 11
  br i1 %357, label %358, label %360

358:                                              ; preds = %355
  store i32 1, ptr %230, align 4, !tbaa !15
  %359 = load i32, ptr %342, align 4, !tbaa !29
  br label %360

360:                                              ; preds = %358, %355
  %361 = phi i32 [ %356, %355 ], [ %359, %358 ]
  %362 = tail call ptr @strerror(i32 noundef %361) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %362) #16
  br label %385

363:                                              ; preds = %343
  %364 = load ptr, ptr %234, align 8, !tbaa !26
  %365 = and i64 %352, 2147483647
  %366 = getelementptr inbounds i8, ptr %364, i64 %365
  store ptr %366, ptr %234, align 8, !tbaa !26
  %367 = load ptr, ptr %233, align 8, !tbaa !25
  %368 = icmp ugt ptr %367, %366
  br i1 %368, label %343, label %369, !llvm.loop !35

369:                                              ; preds = %363
  %370 = load i32, ptr %232, align 8, !tbaa !24
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %369, %337
  %373 = load i32, ptr %19, align 8, !tbaa !16
  store i32 %373, ptr %232, align 8, !tbaa !24
  %374 = load ptr, ptr %226, align 8, !tbaa !20
  store ptr %374, ptr %233, align 8, !tbaa !25
  store ptr %374, ptr %234, align 8, !tbaa !26
  br label %375

375:                                              ; preds = %372, %369, %334
  %376 = phi i32 [ %370, %369 ], [ %373, %372 ], [ %335, %334 ]
  %377 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %378 = icmp eq i32 %377, -2
  br i1 %378, label %379, label %380

379:                                              ; preds = %375
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %385

380:                                              ; preds = %375
  %381 = load i32, ptr %232, align 8, !tbaa !24
  %382 = icmp ult i32 %376, %381
  br i1 %382, label %317, label %383, !nosanitize !31

383:                                              ; preds = %380
  %384 = icmp eq i32 %376, %381
  br i1 %384, label %385, label %334, !llvm.loop !36

385:                                              ; preds = %318, %383, %379, %360, %327, %310, %290, %276, %270, %261
  %386 = phi i1 [ true, %310 ], [ true, %360 ], [ true, %379 ], [ false, %327 ], [ true, %261 ], [ true, %270 ], [ true, %276 ], [ false, %290 ], [ false, %383 ], [ false, %318 ]
  %387 = load i32, ptr %69, align 8, !tbaa !28
  %388 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %245, i32 %387), !nosanitize !31
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !31
  br i1 %389, label %390, label %391, !nosanitize !31

390:                                              ; preds = %398, %385
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

391:                                              ; preds = %385
  %392 = extractvalue { i32, i1 } %388, 0, !nosanitize !31
  %393 = zext i32 %392 to i64
  %394 = load i64, ptr %236, align 8, !tbaa !37
  %395 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %394, i64 %393), !nosanitize !31
  %396 = extractvalue { i64, i1 } %395, 1, !nosanitize !31
  br i1 %396, label %397, label %398, !nosanitize !31

397:                                              ; preds = %391
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

398:                                              ; preds = %391
  %399 = extractvalue { i64, i1 } %395, 0, !nosanitize !31
  store i64 %399, ptr %236, align 8, !tbaa !37
  %400 = load i64, ptr %65, align 8, !tbaa !27
  %401 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %400, i64 %393), !nosanitize !31
  %402 = extractvalue { i64, i1 } %401, 0, !nosanitize !31
  %403 = extractvalue { i64, i1 } %401, 1, !nosanitize !31
  br i1 %403, label %390, label %404, !nosanitize !31

404:                                              ; preds = %398
  store i64 %402, ptr %65, align 8, !tbaa !27
  br i1 %386, label %407, label %405

405:                                              ; preds = %404
  %406 = icmp eq i64 %402, 0
  br i1 %406, label %409, label %238, !llvm.loop !38

407:                                              ; preds = %404, %140, %197, %216, %82, %93, %102
  %408 = load i32, ptr %11, align 8, !tbaa !14
  br label %662

409:                                              ; preds = %405, %63
  %410 = load ptr, ptr %6, align 8, !tbaa !23
  %411 = icmp eq ptr %410, null
  br i1 %411, label %587, label %412

412:                                              ; preds = %409
  %413 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %414 = load i32, ptr %413, align 8, !tbaa !28
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds i8, ptr %410, i64 %415
  %417 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %418 = load ptr, ptr %417, align 8, !tbaa !18
  %419 = load i32, ptr %19, align 8, !tbaa !16
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds i8, ptr %418, i64 %420
  %422 = icmp ugt ptr %416, %421
  br i1 %422, label %423, label %587

423:                                              ; preds = %412
  %424 = icmp eq i32 %419, 0
  br i1 %424, label %425, label %466

425:                                              ; preds = %423
  %426 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %427 = load i32, ptr %426, align 4, !tbaa !17
  %428 = shl i32 %427, 1
  %429 = zext i32 %428 to i64
  %430 = tail call noalias ptr @malloc(i64 noundef %429) #17
  store ptr %430, ptr %417, align 8, !tbaa !18
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %433

432:                                              ; preds = %425
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %574

433:                                              ; preds = %425
  %434 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %435 = load i32, ptr %434, align 8, !tbaa !19
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %438, label %437

437:                                              ; preds = %433
  store i32 %427, ptr %19, align 8, !tbaa !16
  br label %470

438:                                              ; preds = %433
  %439 = zext i32 %427 to i64
  %440 = tail call noalias ptr @malloc(i64 noundef %439) #17
  %441 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %440, ptr %441, align 8, !tbaa !20
  %442 = icmp eq ptr %440, null
  br i1 %442, label %443, label %444

443:                                              ; preds = %438
  tail call void @free(ptr noundef nonnull %430) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %574

444:                                              ; preds = %438
  %445 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %446 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %445, i8 0, i64 24, i1 false)
  %447 = load i32, ptr %446, align 8, !tbaa !21
  %448 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %449 = load i32, ptr %448, align 4, !tbaa !22
  %450 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %447, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %449, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %455, label %452

452:                                              ; preds = %444
  %453 = load ptr, ptr %441, align 8, !tbaa !20
  tail call void @free(ptr noundef %453) #16
  %454 = load ptr, ptr %417, align 8, !tbaa !18
  tail call void @free(ptr noundef %454) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %574

455:                                              ; preds = %444
  store ptr null, ptr %6, align 8, !tbaa !23
  %456 = load i32, ptr %434, align 8, !tbaa !19
  %457 = load i32, ptr %426, align 4, !tbaa !17
  store i32 %457, ptr %19, align 8, !tbaa !16
  %458 = icmp eq i32 %456, 0
  br i1 %458, label %461, label %459

459:                                              ; preds = %455
  %460 = load i32, ptr %413, align 8, !tbaa !28
  br label %470

461:                                              ; preds = %455
  %462 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %457, ptr %462, align 8, !tbaa !24
  %463 = load ptr, ptr %441, align 8, !tbaa !20
  %464 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %463, ptr %464, align 8, !tbaa !25
  %465 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %463, ptr %465, align 8, !tbaa !26
  br label %506

466:                                              ; preds = %423
  %467 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %468 = load i32, ptr %467, align 8, !tbaa !19
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %506, label %470

470:                                              ; preds = %466, %459, %437
  %471 = phi ptr [ null, %459 ], [ %410, %466 ], [ %410, %437 ]
  %472 = phi i32 [ %460, %459 ], [ %414, %466 ], [ %414, %437 ]
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %577, label %474

474:                                              ; preds = %470
  %475 = tail call ptr @__errno_location() #18
  %476 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %477 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  br label %478

478:                                              ; preds = %500, %474
  %479 = phi ptr [ %471, %474 ], [ %504, %500 ]
  store i32 0, ptr %475, align 4, !tbaa !29
  store i32 0, ptr %476, align 4, !tbaa !15
  %480 = load i32, ptr %413, align 8, !tbaa !28
  %481 = tail call i32 @llvm.umin.i32(i32 %480, i32 1073741824)
  %482 = load i32, ptr %477, align 4, !tbaa !30
  %483 = zext nneg i32 %481 to i64
  %484 = tail call i64 @write(i32 noundef %482, ptr noundef %479, i64 noundef %483) #16
  %485 = trunc i64 %484 to i32
  %486 = icmp slt i32 %485, 0
  br i1 %486, label %487, label %495

487:                                              ; preds = %478
  %488 = load i32, ptr %475, align 4, !tbaa !29
  %489 = icmp eq i32 %488, 11
  br i1 %489, label %490, label %492

490:                                              ; preds = %487
  store i32 1, ptr %476, align 4, !tbaa !15
  %491 = load i32, ptr %475, align 4, !tbaa !29
  br label %492

492:                                              ; preds = %490, %487
  %493 = phi i32 [ %488, %487 ], [ %491, %490 ]
  %494 = tail call ptr @strerror(i32 noundef %493) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %494) #16
  br label %574

495:                                              ; preds = %478
  %496 = load i32, ptr %413, align 8, !tbaa !28
  %497 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %496, i32 %485), !nosanitize !31
  %498 = extractvalue { i32, i1 } %497, 1, !nosanitize !31
  br i1 %498, label %499, label %500, !nosanitize !31

499:                                              ; preds = %495, %569
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

500:                                              ; preds = %495
  %501 = extractvalue { i32, i1 } %497, 0, !nosanitize !31
  store i32 %501, ptr %413, align 8, !tbaa !28
  %502 = load ptr, ptr %6, align 8, !tbaa !23
  %503 = and i64 %484, 4294967295
  %504 = getelementptr inbounds i8, ptr %502, i64 %503
  store ptr %504, ptr %6, align 8, !tbaa !23
  %505 = icmp eq i32 %501, 0
  br i1 %505, label %574, label %478, !llvm.loop !32

506:                                              ; preds = %466, %461
  %507 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %508 = load i32, ptr %507, align 8, !tbaa !34
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %515, label %510

510:                                              ; preds = %506
  %511 = load i32, ptr %413, align 8, !tbaa !28
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %577, label %513

513:                                              ; preds = %510
  %514 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %507, align 8, !tbaa !34
  br label %515

515:                                              ; preds = %513, %506
  %516 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %517 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %518 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %519 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %520 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %521 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %522 = load i32, ptr %516, align 8, !tbaa !24
  br label %523

523:                                              ; preds = %572, %515
  %524 = phi i32 [ %522, %515 ], [ %570, %572 ]
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %564

526:                                              ; preds = %523
  %527 = load ptr, ptr %517, align 8, !tbaa !25
  %528 = load ptr, ptr %518, align 8, !tbaa !26
  %529 = icmp ugt ptr %527, %528
  br i1 %529, label %530, label %561

530:                                              ; preds = %526
  %531 = tail call ptr @__errno_location() #18
  br label %532

532:                                              ; preds = %552, %530
  %533 = phi ptr [ %528, %530 ], [ %555, %552 ]
  %534 = phi ptr [ %527, %530 ], [ %556, %552 ]
  store i32 0, ptr %531, align 4, !tbaa !29
  store i32 0, ptr %519, align 4, !tbaa !15
  %535 = ptrtoint ptr %534 to i64
  %536 = ptrtoint ptr %533 to i64
  %537 = sub i64 %535, %536
  %538 = tail call i64 @llvm.smin.i64(i64 %537, i64 1073741824)
  %539 = load i32, ptr %520, align 4, !tbaa !30
  %540 = and i64 %538, 4294967295
  %541 = tail call i64 @write(i32 noundef %539, ptr noundef %533, i64 noundef %540) #16
  %542 = and i64 %541, 2147483648
  %543 = icmp eq i64 %542, 0
  br i1 %543, label %552, label %544

544:                                              ; preds = %532
  %545 = load i32, ptr %531, align 4, !tbaa !29
  %546 = icmp eq i32 %545, 11
  br i1 %546, label %547, label %549

547:                                              ; preds = %544
  store i32 1, ptr %519, align 4, !tbaa !15
  %548 = load i32, ptr %531, align 4, !tbaa !29
  br label %549

549:                                              ; preds = %547, %544
  %550 = phi i32 [ %545, %544 ], [ %548, %547 ]
  %551 = tail call ptr @strerror(i32 noundef %550) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %551) #16
  br label %574

552:                                              ; preds = %532
  %553 = load ptr, ptr %518, align 8, !tbaa !26
  %554 = and i64 %541, 2147483647
  %555 = getelementptr inbounds i8, ptr %553, i64 %554
  store ptr %555, ptr %518, align 8, !tbaa !26
  %556 = load ptr, ptr %517, align 8, !tbaa !25
  %557 = icmp ugt ptr %556, %555
  br i1 %557, label %532, label %558, !llvm.loop !35

558:                                              ; preds = %552
  %559 = load i32, ptr %516, align 8, !tbaa !24
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %564

561:                                              ; preds = %558, %526
  %562 = load i32, ptr %19, align 8, !tbaa !16
  store i32 %562, ptr %516, align 8, !tbaa !24
  %563 = load ptr, ptr %521, align 8, !tbaa !20
  store ptr %563, ptr %517, align 8, !tbaa !25
  store ptr %563, ptr %518, align 8, !tbaa !26
  br label %564

564:                                              ; preds = %561, %558, %523
  %565 = phi i32 [ %559, %558 ], [ %562, %561 ], [ %524, %523 ]
  %566 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %567 = icmp eq i32 %566, -2
  br i1 %567, label %568, label %569

568:                                              ; preds = %564
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %574

569:                                              ; preds = %564
  %570 = load i32, ptr %516, align 8, !tbaa !24
  %571 = icmp ult i32 %565, %570
  br i1 %571, label %499, label %572, !nosanitize !31

572:                                              ; preds = %569
  %573 = icmp eq i32 %565, %570
  br i1 %573, label %574, label %523, !llvm.loop !36

574:                                              ; preds = %500, %572, %568, %549, %492, %452, %443, %432
  %575 = load i32, ptr %413, align 8, !tbaa !28
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %574, %510, %470
  %578 = load ptr, ptr %417, align 8, !tbaa !18
  store ptr %578, ptr %6, align 8, !tbaa !23
  br label %587

579:                                              ; preds = %574
  %580 = load ptr, ptr %417, align 8, !tbaa !18
  %581 = load ptr, ptr %6, align 8, !tbaa !23
  %582 = zext i32 %575 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %580, ptr align 1 %581, i64 %582, i1 false)
  %583 = load ptr, ptr %417, align 8, !tbaa !18
  store ptr %583, ptr %6, align 8, !tbaa !23
  %584 = load i32, ptr %413, align 8, !tbaa !28
  %585 = load i32, ptr %19, align 8, !tbaa !16
  %586 = icmp ule i32 %584, %585
  br label %587

587:                                              ; preds = %409, %412, %577, %579
  %588 = phi i1 [ true, %577 ], [ %586, %579 ], [ true, %412 ], [ true, %409 ]
  %589 = load i32, ptr %11, align 8, !tbaa !14
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %603, label %591

591:                                              ; preds = %587
  br i1 %588, label %597, label %592

592:                                              ; preds = %591
  %593 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %594 = load i32, ptr %593, align 4, !tbaa !15
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %597, label %596

596:                                              ; preds = %592
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #16
  br label %597

597:                                              ; preds = %596, %592, %591
  %598 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %599 = load i32, ptr %598, align 4, !tbaa !15
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %603

601:                                              ; preds = %597
  %602 = load i32, ptr %11, align 8, !tbaa !14
  br label %662

603:                                              ; preds = %597, %587
  %604 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %605 = load i32, ptr %604, align 8, !tbaa !28
  %606 = icmp eq i32 %605, 0
  %607 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %608 = load ptr, ptr %607, align 8, !tbaa !18
  br i1 %606, label %611, label %609

609:                                              ; preds = %603
  %610 = load ptr, ptr %6, align 8, !tbaa !23
  br label %612

611:                                              ; preds = %603
  store ptr %608, ptr %6, align 8, !tbaa !23
  br label %612

612:                                              ; preds = %609, %611
  %613 = phi ptr [ %610, %609 ], [ %608, %611 ]
  %614 = ptrtoint ptr %613 to i64
  %615 = ptrtoint ptr %608 to i64
  %616 = sub i64 %614, %615
  %617 = getelementptr inbounds i8, ptr %608, i64 %616
  %618 = zext i32 %605 to i64
  %619 = getelementptr inbounds i8, ptr %617, i64 %618
  %620 = load i32, ptr %19, align 8, !tbaa !16
  %621 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %620, i32 1), !nosanitize !31
  %622 = extractvalue { i32, i1 } %621, 1, !nosanitize !31
  br i1 %622, label %623, label %624, !nosanitize !31

623:                                              ; preds = %612
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

624:                                              ; preds = %612
  %625 = extractvalue { i32, i1 } %621, 0, !nosanitize !31
  %626 = zext i32 %625 to i64
  %627 = getelementptr inbounds i8, ptr %619, i64 %626
  store i8 0, ptr %627, align 1, !tbaa !42
  %628 = load i32, ptr %19, align 8, !tbaa !16
  %629 = zext i32 %628 to i64
  %630 = tail call i32 @vsnprintf(ptr noundef %619, i64 noundef %629, ptr noundef %1, ptr noundef %2) #16
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %662, label %632

632:                                              ; preds = %624
  %633 = load i32, ptr %19, align 8, !tbaa !16
  %634 = icmp ult i32 %630, %633
  br i1 %634, label %635, label %662

635:                                              ; preds = %632
  %636 = add i32 %633, -1
  %637 = zext i32 %636 to i64
  %638 = getelementptr inbounds i8, ptr %619, i64 %637
  %639 = load i8, ptr %638, align 1, !tbaa !42
  %640 = icmp eq i8 %639, 0
  br i1 %640, label %641, label %662

641:                                              ; preds = %635
  %642 = load i32, ptr %604, align 8, !tbaa !28
  %643 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %642, i32 %630), !nosanitize !31
  %644 = extractvalue { i32, i1 } %643, 1, !nosanitize !31
  br i1 %644, label %645, label %646, !nosanitize !31

645:                                              ; preds = %646, %641
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

646:                                              ; preds = %641
  %647 = extractvalue { i32, i1 } %643, 0, !nosanitize !31
  store i32 %647, ptr %604, align 8, !tbaa !28
  %648 = sext i32 %630 to i64
  %649 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %650 = load i64, ptr %649, align 8, !tbaa !37
  %651 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %650, i64 %648), !nosanitize !31
  %652 = extractvalue { i64, i1 } %651, 1, !nosanitize !31
  br i1 %652, label %645, label %653, !nosanitize !31

653:                                              ; preds = %646
  %654 = extractvalue { i64, i1 } %651, 0, !nosanitize !31
  store i64 %654, ptr %649, align 8, !tbaa !37
  tail call fastcc void @gz_vacate(ptr noundef nonnull %0)
  %655 = load i32, ptr %11, align 8, !tbaa !14
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %661, label %657

657:                                              ; preds = %653
  %658 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %659 = load i32, ptr %658, align 4, !tbaa !15
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %662, label %661

661:                                              ; preds = %657, %653
  br label %662

662:                                              ; preds = %657, %624, %632, %635, %5, %14, %3, %661, %601, %407, %61
  %663 = phi i32 [ %62, %61 ], [ %408, %407 ], [ %630, %661 ], [ %602, %601 ], [ -2, %3 ], [ -2, %14 ], [ -2, %5 ], [ 0, %635 ], [ 0, %632 ], [ 0, %624 ], [ %655, %657 ]
  ret i32 %663
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gz_vacate(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %177, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !28
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %3, i64 %8
  %10 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !16
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = icmp ugt ptr %9, %15
  br i1 %16, label %17, label %177

17:                                               ; preds = %5
  %18 = icmp eq i32 %13, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !17
  %22 = shl i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #17
  store ptr %24, ptr %10, align 8, !tbaa !18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %168

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %29 = load i32, ptr %28, align 8, !tbaa !19
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 %21, ptr %12, align 8, !tbaa !16
  br label %64

32:                                               ; preds = %27
  %33 = zext i32 %21 to i64
  %34 = tail call noalias ptr @malloc(i64 noundef %33) #17
  %35 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %34, ptr %35, align 8, !tbaa !20
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  tail call void @free(ptr noundef nonnull %24) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %168

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %40 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %41 = load i32, ptr %40, align 8, !tbaa !21
  %42 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %43 = load i32, ptr %42, align 4, !tbaa !22
  %44 = tail call i32 @deflateInit2_(ptr noundef nonnull %2, i32 noundef %41, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %43, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load ptr, ptr %35, align 8, !tbaa !20
  tail call void @free(ptr noundef %47) #16
  %48 = load ptr, ptr %10, align 8, !tbaa !18
  tail call void @free(ptr noundef %48) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %168

49:                                               ; preds = %38
  store ptr null, ptr %2, align 8, !tbaa !23
  %50 = load i32, ptr %28, align 8, !tbaa !19
  %51 = load i32, ptr %20, align 4, !tbaa !17
  store i32 %51, ptr %12, align 8, !tbaa !16
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr %6, align 8, !tbaa !28
  br label %64

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %51, ptr %56, align 8, !tbaa !24
  %57 = load ptr, ptr %35, align 8, !tbaa !20
  %58 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %57, ptr %58, align 8, !tbaa !25
  %59 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %57, ptr %59, align 8, !tbaa !26
  br label %100

60:                                               ; preds = %17
  %61 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %62 = load i32, ptr %61, align 8, !tbaa !19
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %100, label %64

64:                                               ; preds = %53, %60, %31
  %65 = phi ptr [ null, %53 ], [ %3, %60 ], [ %3, %31 ]
  %66 = phi i32 [ %54, %53 ], [ %7, %60 ], [ %7, %31 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %175, label %68

68:                                               ; preds = %64
  %69 = tail call ptr @__errno_location() #18
  %70 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %71 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  br label %72

72:                                               ; preds = %94, %68
  %73 = phi ptr [ %65, %68 ], [ %98, %94 ]
  store i32 0, ptr %69, align 4, !tbaa !29
  store i32 0, ptr %70, align 4, !tbaa !15
  %74 = load i32, ptr %6, align 8, !tbaa !28
  %75 = tail call i32 @llvm.umin.i32(i32 %74, i32 1073741824)
  %76 = load i32, ptr %71, align 4, !tbaa !30
  %77 = zext nneg i32 %75 to i64
  %78 = tail call i64 @write(i32 noundef %76, ptr noundef %73, i64 noundef %77) #16
  %79 = trunc i64 %78 to i32
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %72
  %82 = load i32, ptr %69, align 4, !tbaa !29
  %83 = icmp eq i32 %82, 11
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  store i32 1, ptr %70, align 4, !tbaa !15
  %85 = load i32, ptr %69, align 4, !tbaa !29
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i32 [ %82, %81 ], [ %85, %84 ]
  %88 = tail call ptr @strerror(i32 noundef %87) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %88) #16
  br label %168

89:                                               ; preds = %72
  %90 = load i32, ptr %6, align 8, !tbaa !28
  %91 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %90, i32 %79), !nosanitize !31
  %92 = extractvalue { i32, i1 } %91, 1, !nosanitize !31
  br i1 %92, label %93, label %94, !nosanitize !31

93:                                               ; preds = %89, %163
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

94:                                               ; preds = %89
  %95 = extractvalue { i32, i1 } %91, 0, !nosanitize !31
  store i32 %95, ptr %6, align 8, !tbaa !28
  %96 = load ptr, ptr %2, align 8, !tbaa !23
  %97 = and i64 %78, 4294967295
  %98 = getelementptr inbounds i8, ptr %96, i64 %97
  store ptr %98, ptr %2, align 8, !tbaa !23
  %99 = icmp eq i32 %95, 0
  br i1 %99, label %168, label %72, !llvm.loop !32

100:                                              ; preds = %60, %55
  %101 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %102 = load i32, ptr %101, align 8, !tbaa !34
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr %6, align 8, !tbaa !28
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %175, label %107

107:                                              ; preds = %104
  %108 = tail call i32 @deflateReset(ptr noundef nonnull %2) #16
  store i32 0, ptr %101, align 8, !tbaa !34
  br label %109

109:                                              ; preds = %107, %100
  %110 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %111 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %112 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %113 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %114 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %115 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %116 = load i32, ptr %110, align 8, !tbaa !24
  br label %117

117:                                              ; preds = %166, %109
  %118 = phi i32 [ %116, %109 ], [ %164, %166 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %158

120:                                              ; preds = %117
  %121 = load ptr, ptr %111, align 8, !tbaa !25
  %122 = load ptr, ptr %112, align 8, !tbaa !26
  %123 = icmp ugt ptr %121, %122
  br i1 %123, label %124, label %155

124:                                              ; preds = %120
  %125 = tail call ptr @__errno_location() #18
  br label %126

126:                                              ; preds = %146, %124
  %127 = phi ptr [ %122, %124 ], [ %149, %146 ]
  %128 = phi ptr [ %121, %124 ], [ %150, %146 ]
  store i32 0, ptr %125, align 4, !tbaa !29
  store i32 0, ptr %113, align 4, !tbaa !15
  %129 = ptrtoint ptr %128 to i64
  %130 = ptrtoint ptr %127 to i64
  %131 = sub i64 %129, %130
  %132 = tail call i64 @llvm.smin.i64(i64 %131, i64 1073741824)
  %133 = load i32, ptr %114, align 4, !tbaa !30
  %134 = and i64 %132, 4294967295
  %135 = tail call i64 @write(i32 noundef %133, ptr noundef %127, i64 noundef %134) #16
  %136 = and i64 %135, 2147483648
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %126
  %139 = load i32, ptr %125, align 4, !tbaa !29
  %140 = icmp eq i32 %139, 11
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  store i32 1, ptr %113, align 4, !tbaa !15
  %142 = load i32, ptr %125, align 4, !tbaa !29
  br label %143

143:                                              ; preds = %141, %138
  %144 = phi i32 [ %139, %138 ], [ %142, %141 ]
  %145 = tail call ptr @strerror(i32 noundef %144) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %145) #16
  br label %168

146:                                              ; preds = %126
  %147 = load ptr, ptr %112, align 8, !tbaa !26
  %148 = and i64 %135, 2147483647
  %149 = getelementptr inbounds i8, ptr %147, i64 %148
  store ptr %149, ptr %112, align 8, !tbaa !26
  %150 = load ptr, ptr %111, align 8, !tbaa !25
  %151 = icmp ugt ptr %150, %149
  br i1 %151, label %126, label %152, !llvm.loop !35

152:                                              ; preds = %146
  %153 = load i32, ptr %110, align 8, !tbaa !24
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %120, %152
  %156 = load i32, ptr %12, align 8, !tbaa !16
  store i32 %156, ptr %110, align 8, !tbaa !24
  %157 = load ptr, ptr %115, align 8, !tbaa !20
  store ptr %157, ptr %111, align 8, !tbaa !25
  store ptr %157, ptr %112, align 8, !tbaa !26
  br label %158

158:                                              ; preds = %117, %155, %152
  %159 = phi i32 [ %153, %152 ], [ %156, %155 ], [ %118, %117 ]
  %160 = tail call i32 @deflate(ptr noundef nonnull %2, i32 noundef 0) #16
  %161 = icmp eq i32 %160, -2
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %168

163:                                              ; preds = %158
  %164 = load i32, ptr %110, align 8, !tbaa !24
  %165 = icmp ult i32 %159, %164
  br i1 %165, label %93, label %166, !nosanitize !31

166:                                              ; preds = %163
  %167 = icmp eq i32 %159, %164
  br i1 %167, label %168, label %117, !llvm.loop !36

168:                                              ; preds = %94, %166, %26, %37, %46, %86, %143, %162
  %169 = load i32, ptr %6, align 8, !tbaa !28
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr %10, align 8, !tbaa !18
  %173 = load ptr, ptr %2, align 8, !tbaa !23
  %174 = zext i32 %169 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %172, ptr align 1 %173, i64 %174, i1 false)
  br label %175

175:                                              ; preds = %168, %64, %104, %171
  %176 = load ptr, ptr %10, align 8, !tbaa !18
  store ptr %176, ptr %2, align 8, !tbaa !23
  br label %177

177:                                              ; preds = %175, %1, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @gzprintf(ptr noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.va_start(ptr nonnull %3)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %662, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %662

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %12 = load i32, ptr %11, align 8, !tbaa !14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %662, label %18

18:                                               ; preds = %14, %10
  call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #16
  %19 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !17
  %25 = shl i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call noalias ptr @malloc(i64 noundef %26) #17
  %28 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %27, ptr %28, align 8, !tbaa !18
  %29 = icmp eq ptr %27, null
  br i1 %29, label %61, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %32 = load i32, ptr %31, align 8, !tbaa !19
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 %24, ptr %19, align 8, !tbaa !16
  br label %63

35:                                               ; preds = %30
  %36 = zext i32 %24 to i64
  %37 = call noalias ptr @malloc(i64 noundef %36) #17
  %38 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %37, ptr %38, align 8, !tbaa !20
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  call void @free(ptr noundef nonnull %27) #16
  br label %61

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %43 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %44 = load i32, ptr %43, align 8, !tbaa !21
  %45 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %46 = load i32, ptr %45, align 4, !tbaa !22
  %47 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %44, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %46, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %38, align 8, !tbaa !20
  call void @free(ptr noundef %50) #16
  %51 = load ptr, ptr %28, align 8, !tbaa !18
  call void @free(ptr noundef %51) #16
  br label %61

52:                                               ; preds = %41
  store ptr null, ptr %6, align 8, !tbaa !23
  %53 = load i32, ptr %31, align 8, !tbaa !19
  %54 = load i32, ptr %23, align 4, !tbaa !17
  store i32 %54, ptr %19, align 8, !tbaa !16
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %54, ptr %57, align 8, !tbaa !24
  %58 = load ptr, ptr %38, align 8, !tbaa !20
  %59 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %58, ptr %59, align 8, !tbaa !25
  %60 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %58, ptr %60, align 8, !tbaa !26
  br label %63

61:                                               ; preds = %49, %40, %22
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  %62 = load i32, ptr %11, align 8, !tbaa !14
  br label %662

63:                                               ; preds = %56, %52, %34, %18
  %64 = phi i32 [ %54, %56 ], [ %54, %52 ], [ %24, %34 ], [ %20, %18 ]
  %65 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %66 = load i64, ptr %65, align 8, !tbaa !27
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %409, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !28
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %222, label %72

72:                                               ; preds = %68
  %73 = icmp eq i32 %64, 0
  br i1 %73, label %74, label %114

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %76 = load i32, ptr %75, align 4, !tbaa !17
  %77 = shl i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = call noalias ptr @malloc(i64 noundef %78) #17
  %80 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %79, ptr %80, align 8, !tbaa !18
  %81 = icmp eq ptr %79, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %407

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %85 = load i32, ptr %84, align 8, !tbaa !19
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i32 %76, ptr %19, align 8, !tbaa !16
  br label %121

88:                                               ; preds = %83
  %89 = zext i32 %76 to i64
  %90 = call noalias ptr @malloc(i64 noundef %89) #17
  %91 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %90, ptr %91, align 8, !tbaa !20
  %92 = icmp eq ptr %90, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  call void @free(ptr noundef nonnull %79) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %407

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %96 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %95, i8 0, i64 24, i1 false)
  %97 = load i32, ptr %96, align 8, !tbaa !21
  %98 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %99 = load i32, ptr %98, align 4, !tbaa !22
  %100 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %97, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %99, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %94
  %103 = load ptr, ptr %91, align 8, !tbaa !20
  call void @free(ptr noundef %103) #16
  %104 = load ptr, ptr %80, align 8, !tbaa !18
  call void @free(ptr noundef %104) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %407

105:                                              ; preds = %94
  store ptr null, ptr %6, align 8, !tbaa !23
  %106 = load i32, ptr %84, align 8, !tbaa !19
  %107 = load i32, ptr %75, align 4, !tbaa !17
  store i32 %107, ptr %19, align 8, !tbaa !16
  %108 = icmp eq i32 %106, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %107, ptr %110, align 8, !tbaa !24
  %111 = load ptr, ptr %91, align 8, !tbaa !20
  %112 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %111, ptr %112, align 8, !tbaa !25
  %113 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %111, ptr %113, align 8, !tbaa !26
  br label %154

114:                                              ; preds = %72
  %115 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %116 = load i32, ptr %115, align 8, !tbaa !19
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %154, label %121

118:                                              ; preds = %105
  %119 = load i32, ptr %69, align 8, !tbaa !28
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %222, label %121

121:                                              ; preds = %118, %114, %87
  %122 = tail call ptr @__errno_location() #18
  %123 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %124 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %125 = load ptr, ptr %6, align 8, !tbaa !23
  br label %126

126:                                              ; preds = %148, %121
  %127 = phi ptr [ %125, %121 ], [ %152, %148 ]
  store i32 0, ptr %122, align 4, !tbaa !29
  store i32 0, ptr %123, align 4, !tbaa !15
  %128 = load i32, ptr %69, align 8, !tbaa !28
  %129 = call i32 @llvm.umin.i32(i32 %128, i32 1073741824)
  %130 = load i32, ptr %124, align 4, !tbaa !30
  %131 = zext nneg i32 %129 to i64
  %132 = call i64 @write(i32 noundef %130, ptr noundef %127, i64 noundef %131) #16
  %133 = trunc i64 %132 to i32
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %126
  %136 = load i32, ptr %122, align 4, !tbaa !29
  %137 = icmp eq i32 %136, 11
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  store i32 1, ptr %123, align 4, !tbaa !15
  %139 = load i32, ptr %122, align 4, !tbaa !29
  br label %140

140:                                              ; preds = %138, %135
  %141 = phi i32 [ %136, %135 ], [ %139, %138 ]
  %142 = call ptr @strerror(i32 noundef %141) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %142) #16
  br label %407

143:                                              ; preds = %126
  %144 = load i32, ptr %69, align 8, !tbaa !28
  %145 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %144, i32 %133), !nosanitize !31
  %146 = extractvalue { i32, i1 } %145, 1, !nosanitize !31
  br i1 %146, label %147, label %148, !nosanitize !31

147:                                              ; preds = %143, %217
  call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

148:                                              ; preds = %143
  %149 = extractvalue { i32, i1 } %145, 0, !nosanitize !31
  store i32 %149, ptr %69, align 8, !tbaa !28
  %150 = load ptr, ptr %6, align 8, !tbaa !23
  %151 = and i64 %132, 4294967295
  %152 = getelementptr inbounds i8, ptr %150, i64 %151
  store ptr %152, ptr %6, align 8, !tbaa !23
  %153 = icmp eq i32 %149, 0
  br i1 %153, label %222, label %126, !llvm.loop !32

154:                                              ; preds = %114, %109
  %155 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %156 = load i32, ptr %155, align 8, !tbaa !34
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %154
  %159 = load i32, ptr %69, align 8, !tbaa !28
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %222, label %161

161:                                              ; preds = %158
  %162 = call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %155, align 8, !tbaa !34
  br label %163

163:                                              ; preds = %161, %154
  %164 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %165 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %166 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %167 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %168 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %169 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %170 = load i32, ptr %164, align 8, !tbaa !24
  br label %171

171:                                              ; preds = %220, %163
  %172 = phi i32 [ %170, %163 ], [ %218, %220 ]
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %212

174:                                              ; preds = %171
  %175 = load ptr, ptr %165, align 8, !tbaa !25
  %176 = load ptr, ptr %166, align 8, !tbaa !26
  %177 = icmp ugt ptr %175, %176
  br i1 %177, label %178, label %209

178:                                              ; preds = %174
  %179 = tail call ptr @__errno_location() #18
  br label %180

180:                                              ; preds = %200, %178
  %181 = phi ptr [ %176, %178 ], [ %203, %200 ]
  %182 = phi ptr [ %175, %178 ], [ %204, %200 ]
  store i32 0, ptr %179, align 4, !tbaa !29
  store i32 0, ptr %167, align 4, !tbaa !15
  %183 = ptrtoint ptr %182 to i64
  %184 = ptrtoint ptr %181 to i64
  %185 = sub i64 %183, %184
  %186 = call i64 @llvm.smin.i64(i64 %185, i64 1073741824)
  %187 = load i32, ptr %168, align 4, !tbaa !30
  %188 = and i64 %186, 4294967295
  %189 = call i64 @write(i32 noundef %187, ptr noundef %181, i64 noundef %188) #16
  %190 = and i64 %189, 2147483648
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %180
  %193 = load i32, ptr %179, align 4, !tbaa !29
  %194 = icmp eq i32 %193, 11
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  store i32 1, ptr %167, align 4, !tbaa !15
  %196 = load i32, ptr %179, align 4, !tbaa !29
  br label %197

197:                                              ; preds = %195, %192
  %198 = phi i32 [ %193, %192 ], [ %196, %195 ]
  %199 = call ptr @strerror(i32 noundef %198) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %199) #16
  br label %407

200:                                              ; preds = %180
  %201 = load ptr, ptr %166, align 8, !tbaa !26
  %202 = and i64 %189, 2147483647
  %203 = getelementptr inbounds i8, ptr %201, i64 %202
  store ptr %203, ptr %166, align 8, !tbaa !26
  %204 = load ptr, ptr %165, align 8, !tbaa !25
  %205 = icmp ugt ptr %204, %203
  br i1 %205, label %180, label %206, !llvm.loop !35

206:                                              ; preds = %200
  %207 = load i32, ptr %164, align 8, !tbaa !24
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206, %174
  %210 = load i32, ptr %19, align 8, !tbaa !16
  store i32 %210, ptr %164, align 8, !tbaa !24
  %211 = load ptr, ptr %169, align 8, !tbaa !20
  store ptr %211, ptr %165, align 8, !tbaa !25
  store ptr %211, ptr %166, align 8, !tbaa !26
  br label %212

212:                                              ; preds = %209, %206, %171
  %213 = phi i32 [ %207, %206 ], [ %210, %209 ], [ %172, %171 ]
  %214 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %215 = icmp eq i32 %214, -2
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %407

217:                                              ; preds = %212
  %218 = load i32, ptr %164, align 8, !tbaa !24
  %219 = icmp ult i32 %213, %218
  br i1 %219, label %147, label %220, !nosanitize !31

220:                                              ; preds = %217
  %221 = icmp eq i32 %213, %218
  br i1 %221, label %222, label %171, !llvm.loop !36

222:                                              ; preds = %148, %220, %158, %118, %68
  %223 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %224 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %225 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %226 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %227 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %228 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %229 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %230 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %231 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %232 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %233 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %234 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %235 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %236 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %237 = load i64, ptr %65, align 8, !tbaa !27
  br label %238

238:                                              ; preds = %405, %222
  %239 = phi i64 [ %237, %222 ], [ %402, %405 ]
  %240 = phi i1 [ false, %222 ], [ true, %405 ]
  %241 = load i32, ptr %19, align 8, !tbaa !16
  %242 = zext i32 %241 to i64
  %243 = icmp slt i64 %239, %242
  %244 = trunc i64 %239 to i32
  %245 = select i1 %243, i32 %244, i32 %241
  %246 = load ptr, ptr %223, align 8, !tbaa !18
  br i1 %240, label %251, label %247

247:                                              ; preds = %238
  %248 = zext i32 %245 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %246, i8 0, i64 %248, i1 false)
  %249 = load ptr, ptr %223, align 8, !tbaa !18
  %250 = load i32, ptr %19, align 8, !tbaa !16
  br label %251

251:                                              ; preds = %247, %238
  %252 = phi i32 [ %250, %247 ], [ %241, %238 ]
  %253 = phi ptr [ %249, %247 ], [ %246, %238 ]
  store i32 %245, ptr %69, align 8, !tbaa !28
  store ptr %253, ptr %6, align 8, !tbaa !23
  %254 = icmp eq i32 %252, 0
  br i1 %254, label %255, label %287

255:                                              ; preds = %251
  %256 = load i32, ptr %225, align 4, !tbaa !17
  %257 = shl i32 %256, 1
  %258 = zext i32 %257 to i64
  %259 = call noalias ptr @malloc(i64 noundef %258) #17
  store ptr %259, ptr %223, align 8, !tbaa !18
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %385

262:                                              ; preds = %255
  %263 = load i32, ptr %224, align 8, !tbaa !19
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %262
  store i32 %256, ptr %19, align 8, !tbaa !16
  br label %290

266:                                              ; preds = %262
  %267 = zext i32 %256 to i64
  %268 = call noalias ptr @malloc(i64 noundef %267) #17
  store ptr %268, ptr %226, align 8, !tbaa !20
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  call void @free(ptr noundef nonnull %259) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %385

271:                                              ; preds = %266
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %227, i8 0, i64 24, i1 false)
  %272 = load i32, ptr %228, align 8, !tbaa !21
  %273 = load i32, ptr %229, align 4, !tbaa !22
  %274 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %272, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %273, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %271
  %277 = load ptr, ptr %226, align 8, !tbaa !20
  call void @free(ptr noundef %277) #16
  %278 = load ptr, ptr %223, align 8, !tbaa !18
  call void @free(ptr noundef %278) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %385

279:                                              ; preds = %271
  store ptr null, ptr %6, align 8, !tbaa !23
  %280 = load i32, ptr %224, align 8, !tbaa !19
  %281 = load i32, ptr %225, align 4, !tbaa !17
  store i32 %281, ptr %19, align 8, !tbaa !16
  %282 = icmp eq i32 %280, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = load i32, ptr %69, align 8, !tbaa !28
  br label %290

285:                                              ; preds = %279
  store i32 %281, ptr %232, align 8, !tbaa !24
  %286 = load ptr, ptr %226, align 8, !tbaa !20
  store ptr %286, ptr %233, align 8, !tbaa !25
  store ptr %286, ptr %234, align 8, !tbaa !26
  br label %324

287:                                              ; preds = %251
  %288 = load i32, ptr %224, align 8, !tbaa !19
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %324, label %290

290:                                              ; preds = %287, %283, %265
  %291 = phi ptr [ null, %283 ], [ %253, %287 ], [ %253, %265 ]
  %292 = phi i32 [ %284, %283 ], [ %245, %287 ], [ %245, %265 ]
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %385, label %294

294:                                              ; preds = %290
  %295 = tail call ptr @__errno_location() #18
  br label %296

296:                                              ; preds = %318, %294
  %297 = phi ptr [ %291, %294 ], [ %322, %318 ]
  store i32 0, ptr %295, align 4, !tbaa !29
  store i32 0, ptr %230, align 4, !tbaa !15
  %298 = load i32, ptr %69, align 8, !tbaa !28
  %299 = call i32 @llvm.umin.i32(i32 %298, i32 1073741824)
  %300 = load i32, ptr %231, align 4, !tbaa !30
  %301 = zext nneg i32 %299 to i64
  %302 = call i64 @write(i32 noundef %300, ptr noundef %297, i64 noundef %301) #16
  %303 = trunc i64 %302 to i32
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %296
  %306 = load i32, ptr %295, align 4, !tbaa !29
  %307 = icmp eq i32 %306, 11
  br i1 %307, label %308, label %310

308:                                              ; preds = %305
  store i32 1, ptr %230, align 4, !tbaa !15
  %309 = load i32, ptr %295, align 4, !tbaa !29
  br label %310

310:                                              ; preds = %308, %305
  %311 = phi i32 [ %306, %305 ], [ %309, %308 ]
  %312 = call ptr @strerror(i32 noundef %311) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %312) #16
  br label %385

313:                                              ; preds = %296
  %314 = load i32, ptr %69, align 8, !tbaa !28
  %315 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %314, i32 %303), !nosanitize !31
  %316 = extractvalue { i32, i1 } %315, 1, !nosanitize !31
  br i1 %316, label %317, label %318, !nosanitize !31

317:                                              ; preds = %313, %380
  call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

318:                                              ; preds = %313
  %319 = extractvalue { i32, i1 } %315, 0, !nosanitize !31
  store i32 %319, ptr %69, align 8, !tbaa !28
  %320 = load ptr, ptr %6, align 8, !tbaa !23
  %321 = and i64 %302, 4294967295
  %322 = getelementptr inbounds i8, ptr %320, i64 %321
  store ptr %322, ptr %6, align 8, !tbaa !23
  %323 = icmp eq i32 %319, 0
  br i1 %323, label %385, label %296, !llvm.loop !32

324:                                              ; preds = %287, %285
  %325 = load i32, ptr %235, align 8, !tbaa !34
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %324
  %328 = load i32, ptr %69, align 8, !tbaa !28
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %385, label %330

330:                                              ; preds = %327
  %331 = call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %235, align 8, !tbaa !34
  br label %332

332:                                              ; preds = %330, %324
  %333 = load i32, ptr %232, align 8, !tbaa !24
  br label %334

334:                                              ; preds = %383, %332
  %335 = phi i32 [ %333, %332 ], [ %381, %383 ]
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %375

337:                                              ; preds = %334
  %338 = load ptr, ptr %233, align 8, !tbaa !25
  %339 = load ptr, ptr %234, align 8, !tbaa !26
  %340 = icmp ugt ptr %338, %339
  br i1 %340, label %341, label %372

341:                                              ; preds = %337
  %342 = tail call ptr @__errno_location() #18
  br label %343

343:                                              ; preds = %363, %341
  %344 = phi ptr [ %339, %341 ], [ %366, %363 ]
  %345 = phi ptr [ %338, %341 ], [ %367, %363 ]
  store i32 0, ptr %342, align 4, !tbaa !29
  store i32 0, ptr %230, align 4, !tbaa !15
  %346 = ptrtoint ptr %345 to i64
  %347 = ptrtoint ptr %344 to i64
  %348 = sub i64 %346, %347
  %349 = call i64 @llvm.smin.i64(i64 %348, i64 1073741824)
  %350 = load i32, ptr %231, align 4, !tbaa !30
  %351 = and i64 %349, 4294967295
  %352 = call i64 @write(i32 noundef %350, ptr noundef %344, i64 noundef %351) #16
  %353 = and i64 %352, 2147483648
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %363, label %355

355:                                              ; preds = %343
  %356 = load i32, ptr %342, align 4, !tbaa !29
  %357 = icmp eq i32 %356, 11
  br i1 %357, label %358, label %360

358:                                              ; preds = %355
  store i32 1, ptr %230, align 4, !tbaa !15
  %359 = load i32, ptr %342, align 4, !tbaa !29
  br label %360

360:                                              ; preds = %358, %355
  %361 = phi i32 [ %356, %355 ], [ %359, %358 ]
  %362 = call ptr @strerror(i32 noundef %361) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %362) #16
  br label %385

363:                                              ; preds = %343
  %364 = load ptr, ptr %234, align 8, !tbaa !26
  %365 = and i64 %352, 2147483647
  %366 = getelementptr inbounds i8, ptr %364, i64 %365
  store ptr %366, ptr %234, align 8, !tbaa !26
  %367 = load ptr, ptr %233, align 8, !tbaa !25
  %368 = icmp ugt ptr %367, %366
  br i1 %368, label %343, label %369, !llvm.loop !35

369:                                              ; preds = %363
  %370 = load i32, ptr %232, align 8, !tbaa !24
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %369, %337
  %373 = load i32, ptr %19, align 8, !tbaa !16
  store i32 %373, ptr %232, align 8, !tbaa !24
  %374 = load ptr, ptr %226, align 8, !tbaa !20
  store ptr %374, ptr %233, align 8, !tbaa !25
  store ptr %374, ptr %234, align 8, !tbaa !26
  br label %375

375:                                              ; preds = %372, %369, %334
  %376 = phi i32 [ %370, %369 ], [ %373, %372 ], [ %335, %334 ]
  %377 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %378 = icmp eq i32 %377, -2
  br i1 %378, label %379, label %380

379:                                              ; preds = %375
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %385

380:                                              ; preds = %375
  %381 = load i32, ptr %232, align 8, !tbaa !24
  %382 = icmp ult i32 %376, %381
  br i1 %382, label %317, label %383, !nosanitize !31

383:                                              ; preds = %380
  %384 = icmp eq i32 %376, %381
  br i1 %384, label %385, label %334, !llvm.loop !36

385:                                              ; preds = %318, %383, %379, %360, %327, %310, %290, %276, %270, %261
  %386 = phi i1 [ true, %310 ], [ true, %360 ], [ true, %379 ], [ false, %327 ], [ true, %261 ], [ true, %270 ], [ true, %276 ], [ false, %290 ], [ false, %383 ], [ false, %318 ]
  %387 = load i32, ptr %69, align 8, !tbaa !28
  %388 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %245, i32 %387), !nosanitize !31
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !31
  br i1 %389, label %390, label %391, !nosanitize !31

390:                                              ; preds = %398, %385
  call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

391:                                              ; preds = %385
  %392 = extractvalue { i32, i1 } %388, 0, !nosanitize !31
  %393 = zext i32 %392 to i64
  %394 = load i64, ptr %236, align 8, !tbaa !37
  %395 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %394, i64 %393), !nosanitize !31
  %396 = extractvalue { i64, i1 } %395, 1, !nosanitize !31
  br i1 %396, label %397, label %398, !nosanitize !31

397:                                              ; preds = %391
  call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

398:                                              ; preds = %391
  %399 = extractvalue { i64, i1 } %395, 0, !nosanitize !31
  store i64 %399, ptr %236, align 8, !tbaa !37
  %400 = load i64, ptr %65, align 8, !tbaa !27
  %401 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %400, i64 %393), !nosanitize !31
  %402 = extractvalue { i64, i1 } %401, 0, !nosanitize !31
  %403 = extractvalue { i64, i1 } %401, 1, !nosanitize !31
  br i1 %403, label %390, label %404, !nosanitize !31

404:                                              ; preds = %398
  store i64 %402, ptr %65, align 8, !tbaa !27
  br i1 %386, label %407, label %405

405:                                              ; preds = %404
  %406 = icmp eq i64 %402, 0
  br i1 %406, label %409, label %238, !llvm.loop !38

407:                                              ; preds = %404, %216, %197, %140, %102, %93, %82
  %408 = load i32, ptr %11, align 8, !tbaa !14
  br label %662

409:                                              ; preds = %405, %63
  %410 = load ptr, ptr %6, align 8, !tbaa !23
  %411 = icmp eq ptr %410, null
  br i1 %411, label %587, label %412

412:                                              ; preds = %409
  %413 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %414 = load i32, ptr %413, align 8, !tbaa !28
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds i8, ptr %410, i64 %415
  %417 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %418 = load ptr, ptr %417, align 8, !tbaa !18
  %419 = load i32, ptr %19, align 8, !tbaa !16
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds i8, ptr %418, i64 %420
  %422 = icmp ugt ptr %416, %421
  br i1 %422, label %423, label %587

423:                                              ; preds = %412
  %424 = icmp eq i32 %419, 0
  br i1 %424, label %425, label %466

425:                                              ; preds = %423
  %426 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %427 = load i32, ptr %426, align 4, !tbaa !17
  %428 = shl i32 %427, 1
  %429 = zext i32 %428 to i64
  %430 = call noalias ptr @malloc(i64 noundef %429) #17
  store ptr %430, ptr %417, align 8, !tbaa !18
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %433

432:                                              ; preds = %425
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %574

433:                                              ; preds = %425
  %434 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %435 = load i32, ptr %434, align 8, !tbaa !19
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %438, label %437

437:                                              ; preds = %433
  store i32 %427, ptr %19, align 8, !tbaa !16
  br label %470

438:                                              ; preds = %433
  %439 = zext i32 %427 to i64
  %440 = call noalias ptr @malloc(i64 noundef %439) #17
  %441 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %440, ptr %441, align 8, !tbaa !20
  %442 = icmp eq ptr %440, null
  br i1 %442, label %443, label %444

443:                                              ; preds = %438
  call void @free(ptr noundef nonnull %430) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %574

444:                                              ; preds = %438
  %445 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %446 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %445, i8 0, i64 24, i1 false)
  %447 = load i32, ptr %446, align 8, !tbaa !21
  %448 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %449 = load i32, ptr %448, align 4, !tbaa !22
  %450 = call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %447, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %449, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %455, label %452

452:                                              ; preds = %444
  %453 = load ptr, ptr %441, align 8, !tbaa !20
  call void @free(ptr noundef %453) #16
  %454 = load ptr, ptr %417, align 8, !tbaa !18
  call void @free(ptr noundef %454) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %574

455:                                              ; preds = %444
  store ptr null, ptr %6, align 8, !tbaa !23
  %456 = load i32, ptr %434, align 8, !tbaa !19
  %457 = load i32, ptr %426, align 4, !tbaa !17
  store i32 %457, ptr %19, align 8, !tbaa !16
  %458 = icmp eq i32 %456, 0
  br i1 %458, label %461, label %459

459:                                              ; preds = %455
  %460 = load i32, ptr %413, align 8, !tbaa !28
  br label %470

461:                                              ; preds = %455
  %462 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %457, ptr %462, align 8, !tbaa !24
  %463 = load ptr, ptr %441, align 8, !tbaa !20
  %464 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %463, ptr %464, align 8, !tbaa !25
  %465 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %463, ptr %465, align 8, !tbaa !26
  br label %506

466:                                              ; preds = %423
  %467 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %468 = load i32, ptr %467, align 8, !tbaa !19
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %506, label %470

470:                                              ; preds = %466, %459, %437
  %471 = phi ptr [ null, %459 ], [ %410, %466 ], [ %410, %437 ]
  %472 = phi i32 [ %460, %459 ], [ %414, %466 ], [ %414, %437 ]
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %577, label %474

474:                                              ; preds = %470
  %475 = tail call ptr @__errno_location() #18
  %476 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %477 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  br label %478

478:                                              ; preds = %500, %474
  %479 = phi ptr [ %471, %474 ], [ %504, %500 ]
  store i32 0, ptr %475, align 4, !tbaa !29
  store i32 0, ptr %476, align 4, !tbaa !15
  %480 = load i32, ptr %413, align 8, !tbaa !28
  %481 = call i32 @llvm.umin.i32(i32 %480, i32 1073741824)
  %482 = load i32, ptr %477, align 4, !tbaa !30
  %483 = zext nneg i32 %481 to i64
  %484 = call i64 @write(i32 noundef %482, ptr noundef %479, i64 noundef %483) #16
  %485 = trunc i64 %484 to i32
  %486 = icmp slt i32 %485, 0
  br i1 %486, label %487, label %495

487:                                              ; preds = %478
  %488 = load i32, ptr %475, align 4, !tbaa !29
  %489 = icmp eq i32 %488, 11
  br i1 %489, label %490, label %492

490:                                              ; preds = %487
  store i32 1, ptr %476, align 4, !tbaa !15
  %491 = load i32, ptr %475, align 4, !tbaa !29
  br label %492

492:                                              ; preds = %490, %487
  %493 = phi i32 [ %488, %487 ], [ %491, %490 ]
  %494 = call ptr @strerror(i32 noundef %493) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %494) #16
  br label %574

495:                                              ; preds = %478
  %496 = load i32, ptr %413, align 8, !tbaa !28
  %497 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %496, i32 %485), !nosanitize !31
  %498 = extractvalue { i32, i1 } %497, 1, !nosanitize !31
  br i1 %498, label %499, label %500, !nosanitize !31

499:                                              ; preds = %495, %569
  call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

500:                                              ; preds = %495
  %501 = extractvalue { i32, i1 } %497, 0, !nosanitize !31
  store i32 %501, ptr %413, align 8, !tbaa !28
  %502 = load ptr, ptr %6, align 8, !tbaa !23
  %503 = and i64 %484, 4294967295
  %504 = getelementptr inbounds i8, ptr %502, i64 %503
  store ptr %504, ptr %6, align 8, !tbaa !23
  %505 = icmp eq i32 %501, 0
  br i1 %505, label %574, label %478, !llvm.loop !32

506:                                              ; preds = %466, %461
  %507 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %508 = load i32, ptr %507, align 8, !tbaa !34
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %515, label %510

510:                                              ; preds = %506
  %511 = load i32, ptr %413, align 8, !tbaa !28
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %577, label %513

513:                                              ; preds = %510
  %514 = call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %507, align 8, !tbaa !34
  br label %515

515:                                              ; preds = %513, %506
  %516 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %517 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %518 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %519 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %520 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %521 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %522 = load i32, ptr %516, align 8, !tbaa !24
  br label %523

523:                                              ; preds = %572, %515
  %524 = phi i32 [ %522, %515 ], [ %570, %572 ]
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %564

526:                                              ; preds = %523
  %527 = load ptr, ptr %517, align 8, !tbaa !25
  %528 = load ptr, ptr %518, align 8, !tbaa !26
  %529 = icmp ugt ptr %527, %528
  br i1 %529, label %530, label %561

530:                                              ; preds = %526
  %531 = tail call ptr @__errno_location() #18
  br label %532

532:                                              ; preds = %552, %530
  %533 = phi ptr [ %528, %530 ], [ %555, %552 ]
  %534 = phi ptr [ %527, %530 ], [ %556, %552 ]
  store i32 0, ptr %531, align 4, !tbaa !29
  store i32 0, ptr %519, align 4, !tbaa !15
  %535 = ptrtoint ptr %534 to i64
  %536 = ptrtoint ptr %533 to i64
  %537 = sub i64 %535, %536
  %538 = call i64 @llvm.smin.i64(i64 %537, i64 1073741824)
  %539 = load i32, ptr %520, align 4, !tbaa !30
  %540 = and i64 %538, 4294967295
  %541 = call i64 @write(i32 noundef %539, ptr noundef %533, i64 noundef %540) #16
  %542 = and i64 %541, 2147483648
  %543 = icmp eq i64 %542, 0
  br i1 %543, label %552, label %544

544:                                              ; preds = %532
  %545 = load i32, ptr %531, align 4, !tbaa !29
  %546 = icmp eq i32 %545, 11
  br i1 %546, label %547, label %549

547:                                              ; preds = %544
  store i32 1, ptr %519, align 4, !tbaa !15
  %548 = load i32, ptr %531, align 4, !tbaa !29
  br label %549

549:                                              ; preds = %547, %544
  %550 = phi i32 [ %545, %544 ], [ %548, %547 ]
  %551 = call ptr @strerror(i32 noundef %550) #16
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %551) #16
  br label %574

552:                                              ; preds = %532
  %553 = load ptr, ptr %518, align 8, !tbaa !26
  %554 = and i64 %541, 2147483647
  %555 = getelementptr inbounds i8, ptr %553, i64 %554
  store ptr %555, ptr %518, align 8, !tbaa !26
  %556 = load ptr, ptr %517, align 8, !tbaa !25
  %557 = icmp ugt ptr %556, %555
  br i1 %557, label %532, label %558, !llvm.loop !35

558:                                              ; preds = %552
  %559 = load i32, ptr %516, align 8, !tbaa !24
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %564

561:                                              ; preds = %558, %526
  %562 = load i32, ptr %19, align 8, !tbaa !16
  store i32 %562, ptr %516, align 8, !tbaa !24
  %563 = load ptr, ptr %521, align 8, !tbaa !20
  store ptr %563, ptr %517, align 8, !tbaa !25
  store ptr %563, ptr %518, align 8, !tbaa !26
  br label %564

564:                                              ; preds = %561, %558, %523
  %565 = phi i32 [ %559, %558 ], [ %562, %561 ], [ %524, %523 ]
  %566 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %567 = icmp eq i32 %566, -2
  br i1 %567, label %568, label %569

568:                                              ; preds = %564
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %574

569:                                              ; preds = %564
  %570 = load i32, ptr %516, align 8, !tbaa !24
  %571 = icmp ult i32 %565, %570
  br i1 %571, label %499, label %572, !nosanitize !31

572:                                              ; preds = %569
  %573 = icmp eq i32 %565, %570
  br i1 %573, label %574, label %523, !llvm.loop !36

574:                                              ; preds = %500, %572, %568, %549, %492, %452, %443, %432
  %575 = load i32, ptr %413, align 8, !tbaa !28
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %574, %510, %470
  %578 = load ptr, ptr %417, align 8, !tbaa !18
  store ptr %578, ptr %6, align 8, !tbaa !23
  br label %587

579:                                              ; preds = %574
  %580 = load ptr, ptr %417, align 8, !tbaa !18
  %581 = load ptr, ptr %6, align 8, !tbaa !23
  %582 = zext i32 %575 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %580, ptr align 1 %581, i64 %582, i1 false)
  %583 = load ptr, ptr %417, align 8, !tbaa !18
  store ptr %583, ptr %6, align 8, !tbaa !23
  %584 = load i32, ptr %413, align 8, !tbaa !28
  %585 = load i32, ptr %19, align 8, !tbaa !16
  %586 = icmp ule i32 %584, %585
  br label %587

587:                                              ; preds = %579, %577, %412, %409
  %588 = phi i1 [ true, %577 ], [ %586, %579 ], [ true, %412 ], [ true, %409 ]
  %589 = load i32, ptr %11, align 8, !tbaa !14
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %603, label %591

591:                                              ; preds = %587
  br i1 %588, label %597, label %592

592:                                              ; preds = %591
  %593 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %594 = load i32, ptr %593, align 4, !tbaa !15
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %597, label %596

596:                                              ; preds = %592
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #16
  br label %597

597:                                              ; preds = %596, %592, %591
  %598 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %599 = load i32, ptr %598, align 4, !tbaa !15
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %603

601:                                              ; preds = %597
  %602 = load i32, ptr %11, align 8, !tbaa !14
  br label %662

603:                                              ; preds = %597, %587
  %604 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %605 = load i32, ptr %604, align 8, !tbaa !28
  %606 = icmp eq i32 %605, 0
  %607 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %608 = load ptr, ptr %607, align 8, !tbaa !18
  br i1 %606, label %611, label %609

609:                                              ; preds = %603
  %610 = load ptr, ptr %6, align 8, !tbaa !23
  br label %612

611:                                              ; preds = %603
  store ptr %608, ptr %6, align 8, !tbaa !23
  br label %612

612:                                              ; preds = %611, %609
  %613 = phi ptr [ %610, %609 ], [ %608, %611 ]
  %614 = ptrtoint ptr %613 to i64
  %615 = ptrtoint ptr %608 to i64
  %616 = sub i64 %614, %615
  %617 = getelementptr inbounds i8, ptr %608, i64 %616
  %618 = zext i32 %605 to i64
  %619 = getelementptr inbounds i8, ptr %617, i64 %618
  %620 = load i32, ptr %19, align 8, !tbaa !16
  %621 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %620, i32 1), !nosanitize !31
  %622 = extractvalue { i32, i1 } %621, 1, !nosanitize !31
  br i1 %622, label %623, label %624, !nosanitize !31

623:                                              ; preds = %612
  call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

624:                                              ; preds = %612
  %625 = extractvalue { i32, i1 } %621, 0, !nosanitize !31
  %626 = zext i32 %625 to i64
  %627 = getelementptr inbounds i8, ptr %619, i64 %626
  store i8 0, ptr %627, align 1, !tbaa !42
  %628 = load i32, ptr %19, align 8, !tbaa !16
  %629 = zext i32 %628 to i64
  %630 = call i32 @vsnprintf(ptr noundef %619, i64 noundef %629, ptr noundef %1, ptr noundef nonnull %3) #16
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %662, label %632

632:                                              ; preds = %624
  %633 = load i32, ptr %19, align 8, !tbaa !16
  %634 = icmp ult i32 %630, %633
  br i1 %634, label %635, label %662

635:                                              ; preds = %632
  %636 = add i32 %633, -1
  %637 = zext i32 %636 to i64
  %638 = getelementptr inbounds i8, ptr %619, i64 %637
  %639 = load i8, ptr %638, align 1, !tbaa !42
  %640 = icmp eq i8 %639, 0
  br i1 %640, label %641, label %662

641:                                              ; preds = %635
  %642 = load i32, ptr %604, align 8, !tbaa !28
  %643 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %642, i32 %630), !nosanitize !31
  %644 = extractvalue { i32, i1 } %643, 1, !nosanitize !31
  br i1 %644, label %645, label %646, !nosanitize !31

645:                                              ; preds = %646, %641
  call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

646:                                              ; preds = %641
  %647 = extractvalue { i32, i1 } %643, 0, !nosanitize !31
  store i32 %647, ptr %604, align 8, !tbaa !28
  %648 = sext i32 %630 to i64
  %649 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %650 = load i64, ptr %649, align 8, !tbaa !37
  %651 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %650, i64 %648), !nosanitize !31
  %652 = extractvalue { i64, i1 } %651, 1, !nosanitize !31
  br i1 %652, label %645, label %653, !nosanitize !31

653:                                              ; preds = %646
  %654 = extractvalue { i64, i1 } %651, 0, !nosanitize !31
  store i64 %654, ptr %649, align 8, !tbaa !37
  call fastcc void @gz_vacate(ptr noundef nonnull %0)
  %655 = load i32, ptr %11, align 8, !tbaa !14
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %661, label %657

657:                                              ; preds = %653
  %658 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %659 = load i32, ptr %658, align 4, !tbaa !15
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %662, label %661

661:                                              ; preds = %657, %653
  br label %662

662:                                              ; preds = %2, %5, %14, %61, %407, %601, %624, %632, %635, %657, %661
  %663 = phi i32 [ %62, %61 ], [ %408, %407 ], [ %630, %661 ], [ %602, %601 ], [ -2, %2 ], [ -2, %14 ], [ -2, %5 ], [ 0, %635 ], [ 0, %632 ], [ 0, %624 ], [ %655, %657 ]
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret i32 %663
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: nounwind uwtable
define dso_local i32 @gzflush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %535, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %535

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %10 = load i32, ptr %9, align 8, !tbaa !14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %535, label %16

16:                                               ; preds = %12, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #16
  %17 = icmp ugt i32 %1, 4
  br i1 %17, label %535, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %20 = load i64, ptr %19, align 8, !tbaa !27
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %365, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %24 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !28
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %179, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !17
  %34 = shl i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = tail call noalias ptr @malloc(i64 noundef %35) #17
  %37 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %36, ptr %37, align 8, !tbaa !18
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %533

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !19
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 %33, ptr %28, align 8, !tbaa !16
  br label %78

45:                                               ; preds = %40
  %46 = zext i32 %33 to i64
  %47 = tail call noalias ptr @malloc(i64 noundef %46) #17
  %48 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %47, ptr %48, align 8, !tbaa !20
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  tail call void @free(ptr noundef nonnull %36) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %533

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %53 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  %54 = load i32, ptr %53, align 8, !tbaa !21
  %55 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %56 = load i32, ptr %55, align 4, !tbaa !22
  %57 = tail call i32 @deflateInit2_(ptr noundef nonnull %23, i32 noundef %54, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %56, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = load ptr, ptr %48, align 8, !tbaa !20
  tail call void @free(ptr noundef %60) #16
  %61 = load ptr, ptr %37, align 8, !tbaa !18
  tail call void @free(ptr noundef %61) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %533

62:                                               ; preds = %51
  store ptr null, ptr %23, align 8, !tbaa !23
  %63 = load i32, ptr %41, align 8, !tbaa !19
  %64 = load i32, ptr %32, align 4, !tbaa !17
  store i32 %64, ptr %28, align 8, !tbaa !16
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %64, ptr %67, align 8, !tbaa !24
  %68 = load ptr, ptr %48, align 8, !tbaa !20
  %69 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %68, ptr %69, align 8, !tbaa !25
  %70 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %68, ptr %70, align 8, !tbaa !26
  br label %111

71:                                               ; preds = %27
  %72 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %73 = load i32, ptr %72, align 8, !tbaa !19
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %111, label %78

75:                                               ; preds = %62
  %76 = load i32, ptr %24, align 8, !tbaa !28
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %179, label %78

78:                                               ; preds = %75, %71, %44
  %79 = tail call ptr @__errno_location() #18
  %80 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %81 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %82 = load ptr, ptr %23, align 8, !tbaa !23
  br label %83

83:                                               ; preds = %105, %78
  %84 = phi ptr [ %82, %78 ], [ %109, %105 ]
  store i32 0, ptr %79, align 4, !tbaa !29
  store i32 0, ptr %80, align 4, !tbaa !15
  %85 = load i32, ptr %24, align 8, !tbaa !28
  %86 = tail call i32 @llvm.umin.i32(i32 %85, i32 1073741824)
  %87 = load i32, ptr %81, align 4, !tbaa !30
  %88 = zext nneg i32 %86 to i64
  %89 = tail call i64 @write(i32 noundef %87, ptr noundef %84, i64 noundef %88) #16
  %90 = trunc i64 %89 to i32
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %83
  %93 = load i32, ptr %79, align 4, !tbaa !29
  %94 = icmp eq i32 %93, 11
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  store i32 1, ptr %80, align 4, !tbaa !15
  %96 = load i32, ptr %79, align 4, !tbaa !29
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i32 [ %93, %92 ], [ %96, %95 ]
  %99 = tail call ptr @strerror(i32 noundef %98) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %99) #16
  br label %533

100:                                              ; preds = %83
  %101 = load i32, ptr %24, align 8, !tbaa !28
  %102 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %101, i32 %90), !nosanitize !31
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !31
  br i1 %103, label %104, label %105, !nosanitize !31

104:                                              ; preds = %100, %174
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

105:                                              ; preds = %100
  %106 = extractvalue { i32, i1 } %102, 0, !nosanitize !31
  store i32 %106, ptr %24, align 8, !tbaa !28
  %107 = load ptr, ptr %23, align 8, !tbaa !23
  %108 = and i64 %89, 4294967295
  %109 = getelementptr inbounds i8, ptr %107, i64 %108
  store ptr %109, ptr %23, align 8, !tbaa !23
  %110 = icmp eq i32 %106, 0
  br i1 %110, label %179, label %83, !llvm.loop !32

111:                                              ; preds = %71, %66
  %112 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %113 = load i32, ptr %112, align 8, !tbaa !34
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = load i32, ptr %24, align 8, !tbaa !28
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %179, label %118

118:                                              ; preds = %115
  %119 = tail call i32 @deflateReset(ptr noundef nonnull %23) #16
  store i32 0, ptr %112, align 8, !tbaa !34
  br label %120

120:                                              ; preds = %118, %111
  %121 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %122 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %123 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %124 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %125 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %126 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %127 = load i32, ptr %121, align 8, !tbaa !24
  br label %128

128:                                              ; preds = %177, %120
  %129 = phi i32 [ %127, %120 ], [ %175, %177 ]
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %169

131:                                              ; preds = %128
  %132 = load ptr, ptr %122, align 8, !tbaa !25
  %133 = load ptr, ptr %123, align 8, !tbaa !26
  %134 = icmp ugt ptr %132, %133
  br i1 %134, label %135, label %166

135:                                              ; preds = %131
  %136 = tail call ptr @__errno_location() #18
  br label %137

137:                                              ; preds = %157, %135
  %138 = phi ptr [ %133, %135 ], [ %160, %157 ]
  %139 = phi ptr [ %132, %135 ], [ %161, %157 ]
  store i32 0, ptr %136, align 4, !tbaa !29
  store i32 0, ptr %124, align 4, !tbaa !15
  %140 = ptrtoint ptr %139 to i64
  %141 = ptrtoint ptr %138 to i64
  %142 = sub i64 %140, %141
  %143 = tail call i64 @llvm.smin.i64(i64 %142, i64 1073741824)
  %144 = load i32, ptr %125, align 4, !tbaa !30
  %145 = and i64 %143, 4294967295
  %146 = tail call i64 @write(i32 noundef %144, ptr noundef %138, i64 noundef %145) #16
  %147 = and i64 %146, 2147483648
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %137
  %150 = load i32, ptr %136, align 4, !tbaa !29
  %151 = icmp eq i32 %150, 11
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  store i32 1, ptr %124, align 4, !tbaa !15
  %153 = load i32, ptr %136, align 4, !tbaa !29
  br label %154

154:                                              ; preds = %152, %149
  %155 = phi i32 [ %150, %149 ], [ %153, %152 ]
  %156 = tail call ptr @strerror(i32 noundef %155) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %156) #16
  br label %533

157:                                              ; preds = %137
  %158 = load ptr, ptr %123, align 8, !tbaa !26
  %159 = and i64 %146, 2147483647
  %160 = getelementptr inbounds i8, ptr %158, i64 %159
  store ptr %160, ptr %123, align 8, !tbaa !26
  %161 = load ptr, ptr %122, align 8, !tbaa !25
  %162 = icmp ugt ptr %161, %160
  br i1 %162, label %137, label %163, !llvm.loop !35

163:                                              ; preds = %157
  %164 = load i32, ptr %121, align 8, !tbaa !24
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163, %131
  %167 = load i32, ptr %28, align 8, !tbaa !16
  store i32 %167, ptr %121, align 8, !tbaa !24
  %168 = load ptr, ptr %126, align 8, !tbaa !20
  store ptr %168, ptr %122, align 8, !tbaa !25
  store ptr %168, ptr %123, align 8, !tbaa !26
  br label %169

169:                                              ; preds = %166, %163, %128
  %170 = phi i32 [ %164, %163 ], [ %167, %166 ], [ %129, %128 ]
  %171 = tail call i32 @deflate(ptr noundef nonnull %23, i32 noundef 0) #16
  %172 = icmp eq i32 %171, -2
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %533

174:                                              ; preds = %169
  %175 = load i32, ptr %121, align 8, !tbaa !24
  %176 = icmp ult i32 %170, %175
  br i1 %176, label %104, label %177, !nosanitize !31

177:                                              ; preds = %174
  %178 = icmp eq i32 %170, %175
  br i1 %178, label %179, label %128, !llvm.loop !36

179:                                              ; preds = %105, %177, %115, %75, %22
  %180 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %181 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %182 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %183 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %184 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %185 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %186 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %187 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %188 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %189 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %190 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %191 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %192 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %193 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %194 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %195 = load i64, ptr %19, align 8, !tbaa !27
  br label %196

196:                                              ; preds = %363, %179
  %197 = phi i64 [ %195, %179 ], [ %360, %363 ]
  %198 = phi i1 [ false, %179 ], [ true, %363 ]
  %199 = load i32, ptr %180, align 8, !tbaa !16
  %200 = zext i32 %199 to i64
  %201 = icmp slt i64 %197, %200
  %202 = trunc i64 %197 to i32
  %203 = select i1 %201, i32 %202, i32 %199
  %204 = load ptr, ptr %181, align 8, !tbaa !18
  br i1 %198, label %209, label %205

205:                                              ; preds = %196
  %206 = zext i32 %203 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %204, i8 0, i64 %206, i1 false)
  %207 = load ptr, ptr %181, align 8, !tbaa !18
  %208 = load i32, ptr %180, align 8, !tbaa !16
  br label %209

209:                                              ; preds = %205, %196
  %210 = phi i32 [ %208, %205 ], [ %199, %196 ]
  %211 = phi ptr [ %207, %205 ], [ %204, %196 ]
  store i32 %203, ptr %24, align 8, !tbaa !28
  store ptr %211, ptr %23, align 8, !tbaa !23
  %212 = icmp eq i32 %210, 0
  br i1 %212, label %213, label %245

213:                                              ; preds = %209
  %214 = load i32, ptr %183, align 4, !tbaa !17
  %215 = shl i32 %214, 1
  %216 = zext i32 %215 to i64
  %217 = tail call noalias ptr @malloc(i64 noundef %216) #17
  store ptr %217, ptr %181, align 8, !tbaa !18
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %343

220:                                              ; preds = %213
  %221 = load i32, ptr %182, align 8, !tbaa !19
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %220
  store i32 %214, ptr %180, align 8, !tbaa !16
  br label %248

224:                                              ; preds = %220
  %225 = zext i32 %214 to i64
  %226 = tail call noalias ptr @malloc(i64 noundef %225) #17
  store ptr %226, ptr %184, align 8, !tbaa !20
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  tail call void @free(ptr noundef nonnull %217) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %343

229:                                              ; preds = %224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %185, i8 0, i64 24, i1 false)
  %230 = load i32, ptr %186, align 8, !tbaa !21
  %231 = load i32, ptr %187, align 4, !tbaa !22
  %232 = tail call i32 @deflateInit2_(ptr noundef nonnull %23, i32 noundef %230, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %231, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %229
  %235 = load ptr, ptr %184, align 8, !tbaa !20
  tail call void @free(ptr noundef %235) #16
  %236 = load ptr, ptr %181, align 8, !tbaa !18
  tail call void @free(ptr noundef %236) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %343

237:                                              ; preds = %229
  store ptr null, ptr %23, align 8, !tbaa !23
  %238 = load i32, ptr %182, align 8, !tbaa !19
  %239 = load i32, ptr %183, align 4, !tbaa !17
  store i32 %239, ptr %180, align 8, !tbaa !16
  %240 = icmp eq i32 %238, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %237
  %242 = load i32, ptr %24, align 8, !tbaa !28
  br label %248

243:                                              ; preds = %237
  store i32 %239, ptr %190, align 8, !tbaa !24
  %244 = load ptr, ptr %184, align 8, !tbaa !20
  store ptr %244, ptr %191, align 8, !tbaa !25
  store ptr %244, ptr %192, align 8, !tbaa !26
  br label %282

245:                                              ; preds = %209
  %246 = load i32, ptr %182, align 8, !tbaa !19
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %282, label %248

248:                                              ; preds = %245, %241, %223
  %249 = phi ptr [ null, %241 ], [ %211, %245 ], [ %211, %223 ]
  %250 = phi i32 [ %242, %241 ], [ %203, %245 ], [ %203, %223 ]
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %343, label %252

252:                                              ; preds = %248
  %253 = tail call ptr @__errno_location() #18
  br label %254

254:                                              ; preds = %276, %252
  %255 = phi ptr [ %249, %252 ], [ %280, %276 ]
  store i32 0, ptr %253, align 4, !tbaa !29
  store i32 0, ptr %188, align 4, !tbaa !15
  %256 = load i32, ptr %24, align 8, !tbaa !28
  %257 = tail call i32 @llvm.umin.i32(i32 %256, i32 1073741824)
  %258 = load i32, ptr %189, align 4, !tbaa !30
  %259 = zext nneg i32 %257 to i64
  %260 = tail call i64 @write(i32 noundef %258, ptr noundef %255, i64 noundef %259) #16
  %261 = trunc i64 %260 to i32
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %271

263:                                              ; preds = %254
  %264 = load i32, ptr %253, align 4, !tbaa !29
  %265 = icmp eq i32 %264, 11
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  store i32 1, ptr %188, align 4, !tbaa !15
  %267 = load i32, ptr %253, align 4, !tbaa !29
  br label %268

268:                                              ; preds = %266, %263
  %269 = phi i32 [ %264, %263 ], [ %267, %266 ]
  %270 = tail call ptr @strerror(i32 noundef %269) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %270) #16
  br label %343

271:                                              ; preds = %254
  %272 = load i32, ptr %24, align 8, !tbaa !28
  %273 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %272, i32 %261), !nosanitize !31
  %274 = extractvalue { i32, i1 } %273, 1, !nosanitize !31
  br i1 %274, label %275, label %276, !nosanitize !31

275:                                              ; preds = %271, %338
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

276:                                              ; preds = %271
  %277 = extractvalue { i32, i1 } %273, 0, !nosanitize !31
  store i32 %277, ptr %24, align 8, !tbaa !28
  %278 = load ptr, ptr %23, align 8, !tbaa !23
  %279 = and i64 %260, 4294967295
  %280 = getelementptr inbounds i8, ptr %278, i64 %279
  store ptr %280, ptr %23, align 8, !tbaa !23
  %281 = icmp eq i32 %277, 0
  br i1 %281, label %343, label %254, !llvm.loop !32

282:                                              ; preds = %245, %243
  %283 = load i32, ptr %193, align 8, !tbaa !34
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %290, label %285

285:                                              ; preds = %282
  %286 = load i32, ptr %24, align 8, !tbaa !28
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %343, label %288

288:                                              ; preds = %285
  %289 = tail call i32 @deflateReset(ptr noundef nonnull %23) #16
  store i32 0, ptr %193, align 8, !tbaa !34
  br label %290

290:                                              ; preds = %288, %282
  %291 = load i32, ptr %190, align 8, !tbaa !24
  br label %292

292:                                              ; preds = %341, %290
  %293 = phi i32 [ %291, %290 ], [ %339, %341 ]
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %333

295:                                              ; preds = %292
  %296 = load ptr, ptr %191, align 8, !tbaa !25
  %297 = load ptr, ptr %192, align 8, !tbaa !26
  %298 = icmp ugt ptr %296, %297
  br i1 %298, label %299, label %330

299:                                              ; preds = %295
  %300 = tail call ptr @__errno_location() #18
  br label %301

301:                                              ; preds = %321, %299
  %302 = phi ptr [ %297, %299 ], [ %324, %321 ]
  %303 = phi ptr [ %296, %299 ], [ %325, %321 ]
  store i32 0, ptr %300, align 4, !tbaa !29
  store i32 0, ptr %188, align 4, !tbaa !15
  %304 = ptrtoint ptr %303 to i64
  %305 = ptrtoint ptr %302 to i64
  %306 = sub i64 %304, %305
  %307 = tail call i64 @llvm.smin.i64(i64 %306, i64 1073741824)
  %308 = load i32, ptr %189, align 4, !tbaa !30
  %309 = and i64 %307, 4294967295
  %310 = tail call i64 @write(i32 noundef %308, ptr noundef %302, i64 noundef %309) #16
  %311 = and i64 %310, 2147483648
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %321, label %313

313:                                              ; preds = %301
  %314 = load i32, ptr %300, align 4, !tbaa !29
  %315 = icmp eq i32 %314, 11
  br i1 %315, label %316, label %318

316:                                              ; preds = %313
  store i32 1, ptr %188, align 4, !tbaa !15
  %317 = load i32, ptr %300, align 4, !tbaa !29
  br label %318

318:                                              ; preds = %316, %313
  %319 = phi i32 [ %314, %313 ], [ %317, %316 ]
  %320 = tail call ptr @strerror(i32 noundef %319) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %320) #16
  br label %343

321:                                              ; preds = %301
  %322 = load ptr, ptr %192, align 8, !tbaa !26
  %323 = and i64 %310, 2147483647
  %324 = getelementptr inbounds i8, ptr %322, i64 %323
  store ptr %324, ptr %192, align 8, !tbaa !26
  %325 = load ptr, ptr %191, align 8, !tbaa !25
  %326 = icmp ugt ptr %325, %324
  br i1 %326, label %301, label %327, !llvm.loop !35

327:                                              ; preds = %321
  %328 = load i32, ptr %190, align 8, !tbaa !24
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %327, %295
  %331 = load i32, ptr %180, align 8, !tbaa !16
  store i32 %331, ptr %190, align 8, !tbaa !24
  %332 = load ptr, ptr %184, align 8, !tbaa !20
  store ptr %332, ptr %191, align 8, !tbaa !25
  store ptr %332, ptr %192, align 8, !tbaa !26
  br label %333

333:                                              ; preds = %330, %327, %292
  %334 = phi i32 [ %328, %327 ], [ %331, %330 ], [ %293, %292 ]
  %335 = tail call i32 @deflate(ptr noundef nonnull %23, i32 noundef 0) #16
  %336 = icmp eq i32 %335, -2
  br i1 %336, label %337, label %338

337:                                              ; preds = %333
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %343

338:                                              ; preds = %333
  %339 = load i32, ptr %190, align 8, !tbaa !24
  %340 = icmp ult i32 %334, %339
  br i1 %340, label %275, label %341, !nosanitize !31

341:                                              ; preds = %338
  %342 = icmp eq i32 %334, %339
  br i1 %342, label %343, label %292, !llvm.loop !36

343:                                              ; preds = %276, %341, %337, %318, %285, %268, %248, %234, %228, %219
  %344 = phi i1 [ true, %268 ], [ true, %318 ], [ true, %337 ], [ false, %285 ], [ true, %219 ], [ true, %228 ], [ true, %234 ], [ false, %248 ], [ false, %341 ], [ false, %276 ]
  %345 = load i32, ptr %24, align 8, !tbaa !28
  %346 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %203, i32 %345), !nosanitize !31
  %347 = extractvalue { i32, i1 } %346, 1, !nosanitize !31
  br i1 %347, label %348, label %349, !nosanitize !31

348:                                              ; preds = %356, %343
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

349:                                              ; preds = %343
  %350 = extractvalue { i32, i1 } %346, 0, !nosanitize !31
  %351 = zext i32 %350 to i64
  %352 = load i64, ptr %194, align 8, !tbaa !37
  %353 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %352, i64 %351), !nosanitize !31
  %354 = extractvalue { i64, i1 } %353, 1, !nosanitize !31
  br i1 %354, label %355, label %356, !nosanitize !31

355:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

356:                                              ; preds = %349
  %357 = extractvalue { i64, i1 } %353, 0, !nosanitize !31
  store i64 %357, ptr %194, align 8, !tbaa !37
  %358 = load i64, ptr %19, align 8, !tbaa !27
  %359 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %358, i64 %351), !nosanitize !31
  %360 = extractvalue { i64, i1 } %359, 0, !nosanitize !31
  %361 = extractvalue { i64, i1 } %359, 1, !nosanitize !31
  br i1 %361, label %348, label %362, !nosanitize !31

362:                                              ; preds = %356
  store i64 %360, ptr %19, align 8, !tbaa !27
  br i1 %344, label %533, label %363

363:                                              ; preds = %362
  %364 = icmp eq i64 %360, 0
  br i1 %364, label %365, label %196, !llvm.loop !38

365:                                              ; preds = %363, %18
  %366 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %367 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %368 = load i32, ptr %367, align 8, !tbaa !16
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %410

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %372 = load i32, ptr %371, align 4, !tbaa !17
  %373 = shl i32 %372, 1
  %374 = zext i32 %373 to i64
  %375 = tail call noalias ptr @malloc(i64 noundef %374) #17
  %376 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %375, ptr %376, align 8, !tbaa !18
  %377 = icmp eq ptr %375, null
  br i1 %377, label %378, label %379

378:                                              ; preds = %370
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %533

379:                                              ; preds = %370
  %380 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %381 = load i32, ptr %380, align 8, !tbaa !19
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %384, label %383

383:                                              ; preds = %379
  store i32 %372, ptr %367, align 8, !tbaa !16
  br label %414

384:                                              ; preds = %379
  %385 = zext i32 %372 to i64
  %386 = tail call noalias ptr @malloc(i64 noundef %385) #17
  %387 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %386, ptr %387, align 8, !tbaa !20
  %388 = icmp eq ptr %386, null
  br i1 %388, label %389, label %390

389:                                              ; preds = %384
  tail call void @free(ptr noundef nonnull %375) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %533

390:                                              ; preds = %384
  %391 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %392 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %391, i8 0, i64 24, i1 false)
  %393 = load i32, ptr %392, align 8, !tbaa !21
  %394 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %395 = load i32, ptr %394, align 4, !tbaa !22
  %396 = tail call i32 @deflateInit2_(ptr noundef nonnull %366, i32 noundef %393, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %395, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %401, label %398

398:                                              ; preds = %390
  %399 = load ptr, ptr %387, align 8, !tbaa !20
  tail call void @free(ptr noundef %399) #16
  %400 = load ptr, ptr %376, align 8, !tbaa !18
  tail call void @free(ptr noundef %400) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %533

401:                                              ; preds = %390
  store ptr null, ptr %366, align 8, !tbaa !23
  %402 = load i32, ptr %380, align 8, !tbaa !19
  %403 = load i32, ptr %371, align 4, !tbaa !17
  store i32 %403, ptr %367, align 8, !tbaa !16
  %404 = icmp eq i32 %402, 0
  br i1 %404, label %405, label %414

405:                                              ; preds = %401
  %406 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %403, ptr %406, align 8, !tbaa !24
  %407 = load ptr, ptr %387, align 8, !tbaa !20
  %408 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %407, ptr %408, align 8, !tbaa !25
  %409 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %407, ptr %409, align 8, !tbaa !26
  br label %451

410:                                              ; preds = %365
  %411 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %412 = load i32, ptr %411, align 8, !tbaa !19
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %451, label %414

414:                                              ; preds = %410, %401, %383
  %415 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %416 = load i32, ptr %415, align 8, !tbaa !28
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %533, label %418

418:                                              ; preds = %414
  %419 = tail call ptr @__errno_location() #18
  %420 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %421 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %422 = load ptr, ptr %366, align 8, !tbaa !23
  br label %423

423:                                              ; preds = %445, %418
  %424 = phi ptr [ %422, %418 ], [ %449, %445 ]
  store i32 0, ptr %419, align 4, !tbaa !29
  store i32 0, ptr %420, align 4, !tbaa !15
  %425 = load i32, ptr %415, align 8, !tbaa !28
  %426 = tail call i32 @llvm.umin.i32(i32 %425, i32 1073741824)
  %427 = load i32, ptr %421, align 4, !tbaa !30
  %428 = zext nneg i32 %426 to i64
  %429 = tail call i64 @write(i32 noundef %427, ptr noundef %424, i64 noundef %428) #16
  %430 = trunc i64 %429 to i32
  %431 = icmp slt i32 %430, 0
  br i1 %431, label %432, label %440

432:                                              ; preds = %423
  %433 = load i32, ptr %419, align 4, !tbaa !29
  %434 = icmp eq i32 %433, 11
  br i1 %434, label %435, label %437

435:                                              ; preds = %432
  store i32 1, ptr %420, align 4, !tbaa !15
  %436 = load i32, ptr %419, align 4, !tbaa !29
  br label %437

437:                                              ; preds = %435, %432
  %438 = phi i32 [ %433, %432 ], [ %436, %435 ]
  %439 = tail call ptr @strerror(i32 noundef %438) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %439) #16
  br label %533

440:                                              ; preds = %423
  %441 = load i32, ptr %415, align 8, !tbaa !28
  %442 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %441, i32 %430), !nosanitize !31
  %443 = extractvalue { i32, i1 } %442, 1, !nosanitize !31
  br i1 %443, label %444, label %445, !nosanitize !31

444:                                              ; preds = %440, %525
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

445:                                              ; preds = %440
  %446 = extractvalue { i32, i1 } %442, 0, !nosanitize !31
  store i32 %446, ptr %415, align 8, !tbaa !28
  %447 = load ptr, ptr %366, align 8, !tbaa !23
  %448 = and i64 %429, 4294967295
  %449 = getelementptr inbounds i8, ptr %447, i64 %448
  store ptr %449, ptr %366, align 8, !tbaa !23
  %450 = icmp eq i32 %446, 0
  br i1 %450, label %533, label %423, !llvm.loop !32

451:                                              ; preds = %410, %405
  %452 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %453 = load i32, ptr %452, align 8, !tbaa !34
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %462, label %455

455:                                              ; preds = %451
  %456 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %457 = load i32, ptr %456, align 8, !tbaa !28
  %458 = or i32 %457, %1
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %533, label %460

460:                                              ; preds = %455
  %461 = tail call i32 @deflateReset(ptr noundef nonnull %366) #16
  store i32 0, ptr %452, align 8, !tbaa !34
  br label %462

462:                                              ; preds = %460, %451
  %463 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %464 = icmp ne i32 %1, 0
  %465 = icmp ne i32 %1, 4
  %466 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %467 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %468 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %469 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %470 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %471 = load i32, ptr %463, align 8, !tbaa !24
  br label %472

472:                                              ; preds = %528, %462
  %473 = phi i32 [ %471, %462 ], [ %526, %528 ]
  %474 = phi i32 [ 0, %462 ], [ %522, %528 ]
  %475 = icmp eq i32 %473, 0
  br i1 %475, label %480, label %476

476:                                              ; preds = %472
  %477 = icmp eq i32 %474, 1
  %478 = or i1 %465, %477
  %479 = and i1 %464, %478
  br i1 %479, label %480, label %520

480:                                              ; preds = %476, %472
  %481 = load ptr, ptr %466, align 8, !tbaa !25
  %482 = load ptr, ptr %467, align 8, !tbaa !26
  %483 = icmp ugt ptr %481, %482
  br i1 %483, label %484, label %514

484:                                              ; preds = %480
  %485 = tail call ptr @__errno_location() #18
  br label %486

486:                                              ; preds = %506, %484
  %487 = phi ptr [ %482, %484 ], [ %509, %506 ]
  %488 = phi ptr [ %481, %484 ], [ %510, %506 ]
  store i32 0, ptr %485, align 4, !tbaa !29
  store i32 0, ptr %468, align 4, !tbaa !15
  %489 = ptrtoint ptr %488 to i64
  %490 = ptrtoint ptr %487 to i64
  %491 = sub i64 %489, %490
  %492 = tail call i64 @llvm.smin.i64(i64 %491, i64 1073741824)
  %493 = load i32, ptr %469, align 4, !tbaa !30
  %494 = and i64 %492, 4294967295
  %495 = tail call i64 @write(i32 noundef %493, ptr noundef %487, i64 noundef %494) #16
  %496 = and i64 %495, 2147483648
  %497 = icmp eq i64 %496, 0
  br i1 %497, label %506, label %498

498:                                              ; preds = %486
  %499 = load i32, ptr %485, align 4, !tbaa !29
  %500 = icmp eq i32 %499, 11
  br i1 %500, label %501, label %503

501:                                              ; preds = %498
  store i32 1, ptr %468, align 4, !tbaa !15
  %502 = load i32, ptr %485, align 4, !tbaa !29
  br label %503

503:                                              ; preds = %501, %498
  %504 = phi i32 [ %499, %498 ], [ %502, %501 ]
  %505 = tail call ptr @strerror(i32 noundef %504) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %505) #16
  br label %533

506:                                              ; preds = %486
  %507 = load ptr, ptr %467, align 8, !tbaa !26
  %508 = and i64 %495, 2147483647
  %509 = getelementptr inbounds i8, ptr %507, i64 %508
  store ptr %509, ptr %467, align 8, !tbaa !26
  %510 = load ptr, ptr %466, align 8, !tbaa !25
  %511 = icmp ugt ptr %510, %509
  br i1 %511, label %486, label %512, !llvm.loop !35

512:                                              ; preds = %506
  %513 = load i32, ptr %463, align 8, !tbaa !24
  br label %514

514:                                              ; preds = %512, %480
  %515 = phi i32 [ %513, %512 ], [ %473, %480 ]
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %520

517:                                              ; preds = %514
  %518 = load i32, ptr %367, align 8, !tbaa !16
  store i32 %518, ptr %463, align 8, !tbaa !24
  %519 = load ptr, ptr %470, align 8, !tbaa !20
  store ptr %519, ptr %466, align 8, !tbaa !25
  store ptr %519, ptr %467, align 8, !tbaa !26
  br label %520

520:                                              ; preds = %517, %514, %476
  %521 = phi i32 [ %515, %514 ], [ %518, %517 ], [ %473, %476 ]
  %522 = tail call i32 @deflate(ptr noundef nonnull %366, i32 noundef %1) #16
  %523 = icmp eq i32 %522, -2
  br i1 %523, label %524, label %525

524:                                              ; preds = %520
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %533

525:                                              ; preds = %520
  %526 = load i32, ptr %463, align 8, !tbaa !24
  %527 = icmp ult i32 %521, %526
  br i1 %527, label %444, label %528, !nosanitize !31

528:                                              ; preds = %525
  %529 = icmp eq i32 %521, %526
  br i1 %529, label %530, label %472, !llvm.loop !36

530:                                              ; preds = %528
  %531 = icmp eq i32 %1, 4
  br i1 %531, label %532, label %533

532:                                              ; preds = %530
  store i32 1, ptr %452, align 8, !tbaa !34
  br label %533

533:                                              ; preds = %362, %445, %532, %530, %524, %503, %455, %437, %414, %398, %389, %378, %59, %50, %39, %173, %154, %97
  %534 = load i32, ptr %9, align 8, !tbaa !14
  br label %535

535:                                              ; preds = %533, %16, %4, %12, %2
  %536 = phi i32 [ -2, %2 ], [ -2, %12 ], [ -2, %4 ], [ -2, %16 ], [ %534, %533 ]
  ret i32 %536
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gzsetparams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %487, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %487

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %12 = load i32, ptr %11, align 8, !tbaa !14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %487, label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %20 = load i32, ptr %19, align 8, !tbaa !19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %487

22:                                               ; preds = %18
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #16
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %24 = load i32, ptr %23, align 8, !tbaa !21
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %28 = load i32, ptr %27, align 4, !tbaa !22
  %29 = icmp eq i32 %28, %2
  br i1 %29, label %487, label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %32 = load i64, ptr %31, align 8, !tbaa !27
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %372, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !28
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %186, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !17
  %45 = shl i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = tail call noalias ptr @malloc(i64 noundef %46) #17
  %48 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %47, ptr %48, align 8, !tbaa !18
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %370

51:                                               ; preds = %42
  %52 = load i32, ptr %19, align 8, !tbaa !19
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 %44, ptr %39, align 8, !tbaa !16
  br label %85

55:                                               ; preds = %51
  %56 = zext i32 %44 to i64
  %57 = tail call noalias ptr @malloc(i64 noundef %56) #17
  %58 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %57, ptr %58, align 8, !tbaa !20
  %59 = icmp eq ptr %57, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  tail call void @free(ptr noundef nonnull %47) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %370

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %62, i8 0, i64 24, i1 false)
  %63 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %64 = load i32, ptr %63, align 4, !tbaa !22
  %65 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %24, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %64, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load ptr, ptr %58, align 8, !tbaa !20
  tail call void @free(ptr noundef %68) #16
  %69 = load ptr, ptr %48, align 8, !tbaa !18
  tail call void @free(ptr noundef %69) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %370

70:                                               ; preds = %61
  store ptr null, ptr %6, align 8, !tbaa !23
  %71 = load i32, ptr %19, align 8, !tbaa !19
  %72 = load i32, ptr %43, align 4, !tbaa !17
  store i32 %72, ptr %39, align 8, !tbaa !16
  %73 = icmp eq i32 %71, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %72, ptr %75, align 8, !tbaa !24
  %76 = load ptr, ptr %58, align 8, !tbaa !20
  %77 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %76, ptr %77, align 8, !tbaa !25
  %78 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %76, ptr %78, align 8, !tbaa !26
  br label %118

79:                                               ; preds = %38
  %80 = load i32, ptr %19, align 8, !tbaa !19
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %118, label %85

82:                                               ; preds = %70
  %83 = load i32, ptr %35, align 8, !tbaa !28
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %186, label %85

85:                                               ; preds = %82, %79, %54
  %86 = tail call ptr @__errno_location() #18
  %87 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %88 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %89 = load ptr, ptr %6, align 8, !tbaa !23
  br label %90

90:                                               ; preds = %112, %85
  %91 = phi ptr [ %89, %85 ], [ %116, %112 ]
  store i32 0, ptr %86, align 4, !tbaa !29
  store i32 0, ptr %87, align 4, !tbaa !15
  %92 = load i32, ptr %35, align 8, !tbaa !28
  %93 = tail call i32 @llvm.umin.i32(i32 %92, i32 1073741824)
  %94 = load i32, ptr %88, align 4, !tbaa !30
  %95 = zext nneg i32 %93 to i64
  %96 = tail call i64 @write(i32 noundef %94, ptr noundef %91, i64 noundef %95) #16
  %97 = trunc i64 %96 to i32
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %90
  %100 = load i32, ptr %86, align 4, !tbaa !29
  %101 = icmp eq i32 %100, 11
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  store i32 1, ptr %87, align 4, !tbaa !15
  %103 = load i32, ptr %86, align 4, !tbaa !29
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi i32 [ %100, %99 ], [ %103, %102 ]
  %106 = tail call ptr @strerror(i32 noundef %105) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %106) #16
  br label %370

107:                                              ; preds = %90
  %108 = load i32, ptr %35, align 8, !tbaa !28
  %109 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %108, i32 %97), !nosanitize !31
  %110 = extractvalue { i32, i1 } %109, 1, !nosanitize !31
  br i1 %110, label %111, label %112, !nosanitize !31

111:                                              ; preds = %107, %181
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

112:                                              ; preds = %107
  %113 = extractvalue { i32, i1 } %109, 0, !nosanitize !31
  store i32 %113, ptr %35, align 8, !tbaa !28
  %114 = load ptr, ptr %6, align 8, !tbaa !23
  %115 = and i64 %96, 4294967295
  %116 = getelementptr inbounds i8, ptr %114, i64 %115
  store ptr %116, ptr %6, align 8, !tbaa !23
  %117 = icmp eq i32 %113, 0
  br i1 %117, label %186, label %90, !llvm.loop !32

118:                                              ; preds = %79, %74
  %119 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %120 = load i32, ptr %119, align 8, !tbaa !34
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load i32, ptr %35, align 8, !tbaa !28
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %186, label %125

125:                                              ; preds = %122
  %126 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %119, align 8, !tbaa !34
  br label %127

127:                                              ; preds = %125, %118
  %128 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %129 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %130 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %131 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %132 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %133 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %134 = load i32, ptr %128, align 8, !tbaa !24
  br label %135

135:                                              ; preds = %184, %127
  %136 = phi i32 [ %134, %127 ], [ %182, %184 ]
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %176

138:                                              ; preds = %135
  %139 = load ptr, ptr %129, align 8, !tbaa !25
  %140 = load ptr, ptr %130, align 8, !tbaa !26
  %141 = icmp ugt ptr %139, %140
  br i1 %141, label %142, label %173

142:                                              ; preds = %138
  %143 = tail call ptr @__errno_location() #18
  br label %144

144:                                              ; preds = %164, %142
  %145 = phi ptr [ %140, %142 ], [ %167, %164 ]
  %146 = phi ptr [ %139, %142 ], [ %168, %164 ]
  store i32 0, ptr %143, align 4, !tbaa !29
  store i32 0, ptr %131, align 4, !tbaa !15
  %147 = ptrtoint ptr %146 to i64
  %148 = ptrtoint ptr %145 to i64
  %149 = sub i64 %147, %148
  %150 = tail call i64 @llvm.smin.i64(i64 %149, i64 1073741824)
  %151 = load i32, ptr %132, align 4, !tbaa !30
  %152 = and i64 %150, 4294967295
  %153 = tail call i64 @write(i32 noundef %151, ptr noundef %145, i64 noundef %152) #16
  %154 = and i64 %153, 2147483648
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %144
  %157 = load i32, ptr %143, align 4, !tbaa !29
  %158 = icmp eq i32 %157, 11
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  store i32 1, ptr %131, align 4, !tbaa !15
  %160 = load i32, ptr %143, align 4, !tbaa !29
  br label %161

161:                                              ; preds = %159, %156
  %162 = phi i32 [ %157, %156 ], [ %160, %159 ]
  %163 = tail call ptr @strerror(i32 noundef %162) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %163) #16
  br label %370

164:                                              ; preds = %144
  %165 = load ptr, ptr %130, align 8, !tbaa !26
  %166 = and i64 %153, 2147483647
  %167 = getelementptr inbounds i8, ptr %165, i64 %166
  store ptr %167, ptr %130, align 8, !tbaa !26
  %168 = load ptr, ptr %129, align 8, !tbaa !25
  %169 = icmp ugt ptr %168, %167
  br i1 %169, label %144, label %170, !llvm.loop !35

170:                                              ; preds = %164
  %171 = load i32, ptr %128, align 8, !tbaa !24
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170, %138
  %174 = load i32, ptr %39, align 8, !tbaa !16
  store i32 %174, ptr %128, align 8, !tbaa !24
  %175 = load ptr, ptr %133, align 8, !tbaa !20
  store ptr %175, ptr %129, align 8, !tbaa !25
  store ptr %175, ptr %130, align 8, !tbaa !26
  br label %176

176:                                              ; preds = %173, %170, %135
  %177 = phi i32 [ %171, %170 ], [ %174, %173 ], [ %136, %135 ]
  %178 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %179 = icmp eq i32 %178, -2
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %370

181:                                              ; preds = %176
  %182 = load i32, ptr %128, align 8, !tbaa !24
  %183 = icmp ult i32 %177, %182
  br i1 %183, label %111, label %184, !nosanitize !31

184:                                              ; preds = %181
  %185 = icmp eq i32 %177, %182
  br i1 %185, label %186, label %135, !llvm.loop !36

186:                                              ; preds = %112, %184, %122, %82, %34
  %187 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %188 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %189 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %190 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %191 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %192 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %193 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %194 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %195 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %196 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %197 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %198 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %199 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %200 = load i64, ptr %31, align 8, !tbaa !27
  br label %201

201:                                              ; preds = %368, %186
  %202 = phi i64 [ %200, %186 ], [ %365, %368 ]
  %203 = phi i1 [ false, %186 ], [ true, %368 ]
  %204 = load i32, ptr %187, align 8, !tbaa !16
  %205 = zext i32 %204 to i64
  %206 = icmp slt i64 %202, %205
  %207 = trunc i64 %202 to i32
  %208 = select i1 %206, i32 %207, i32 %204
  %209 = load ptr, ptr %188, align 8, !tbaa !18
  br i1 %203, label %214, label %210

210:                                              ; preds = %201
  %211 = zext i32 %208 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %209, i8 0, i64 %211, i1 false)
  %212 = load ptr, ptr %188, align 8, !tbaa !18
  %213 = load i32, ptr %187, align 8, !tbaa !16
  br label %214

214:                                              ; preds = %210, %201
  %215 = phi i32 [ %213, %210 ], [ %204, %201 ]
  %216 = phi ptr [ %212, %210 ], [ %209, %201 ]
  store i32 %208, ptr %35, align 8, !tbaa !28
  store ptr %216, ptr %6, align 8, !tbaa !23
  %217 = icmp eq i32 %215, 0
  br i1 %217, label %218, label %250

218:                                              ; preds = %214
  %219 = load i32, ptr %189, align 4, !tbaa !17
  %220 = shl i32 %219, 1
  %221 = zext i32 %220 to i64
  %222 = tail call noalias ptr @malloc(i64 noundef %221) #17
  store ptr %222, ptr %188, align 8, !tbaa !18
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %348

225:                                              ; preds = %218
  %226 = load i32, ptr %19, align 8, !tbaa !19
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %225
  store i32 %219, ptr %187, align 8, !tbaa !16
  br label %253

229:                                              ; preds = %225
  %230 = zext i32 %219 to i64
  %231 = tail call noalias ptr @malloc(i64 noundef %230) #17
  store ptr %231, ptr %190, align 8, !tbaa !20
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  tail call void @free(ptr noundef nonnull %222) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %348

234:                                              ; preds = %229
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %191, i8 0, i64 24, i1 false)
  %235 = load i32, ptr %23, align 8, !tbaa !21
  %236 = load i32, ptr %192, align 4, !tbaa !22
  %237 = tail call i32 @deflateInit2_(ptr noundef nonnull %6, i32 noundef %235, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %236, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %234
  %240 = load ptr, ptr %190, align 8, !tbaa !20
  tail call void @free(ptr noundef %240) #16
  %241 = load ptr, ptr %188, align 8, !tbaa !18
  tail call void @free(ptr noundef %241) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %348

242:                                              ; preds = %234
  store ptr null, ptr %6, align 8, !tbaa !23
  %243 = load i32, ptr %19, align 8, !tbaa !19
  %244 = load i32, ptr %189, align 4, !tbaa !17
  store i32 %244, ptr %187, align 8, !tbaa !16
  %245 = icmp eq i32 %243, 0
  br i1 %245, label %248, label %246

246:                                              ; preds = %242
  %247 = load i32, ptr %35, align 8, !tbaa !28
  br label %253

248:                                              ; preds = %242
  store i32 %244, ptr %195, align 8, !tbaa !24
  %249 = load ptr, ptr %190, align 8, !tbaa !20
  store ptr %249, ptr %196, align 8, !tbaa !25
  store ptr %249, ptr %197, align 8, !tbaa !26
  br label %287

250:                                              ; preds = %214
  %251 = load i32, ptr %19, align 8, !tbaa !19
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %287, label %253

253:                                              ; preds = %250, %246, %228
  %254 = phi ptr [ null, %246 ], [ %216, %250 ], [ %216, %228 ]
  %255 = phi i32 [ %247, %246 ], [ %208, %250 ], [ %208, %228 ]
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %348, label %257

257:                                              ; preds = %253
  %258 = tail call ptr @__errno_location() #18
  br label %259

259:                                              ; preds = %281, %257
  %260 = phi ptr [ %254, %257 ], [ %285, %281 ]
  store i32 0, ptr %258, align 4, !tbaa !29
  store i32 0, ptr %193, align 4, !tbaa !15
  %261 = load i32, ptr %35, align 8, !tbaa !28
  %262 = tail call i32 @llvm.umin.i32(i32 %261, i32 1073741824)
  %263 = load i32, ptr %194, align 4, !tbaa !30
  %264 = zext nneg i32 %262 to i64
  %265 = tail call i64 @write(i32 noundef %263, ptr noundef %260, i64 noundef %264) #16
  %266 = trunc i64 %265 to i32
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %259
  %269 = load i32, ptr %258, align 4, !tbaa !29
  %270 = icmp eq i32 %269, 11
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  store i32 1, ptr %193, align 4, !tbaa !15
  %272 = load i32, ptr %258, align 4, !tbaa !29
  br label %273

273:                                              ; preds = %271, %268
  %274 = phi i32 [ %269, %268 ], [ %272, %271 ]
  %275 = tail call ptr @strerror(i32 noundef %274) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %275) #16
  br label %348

276:                                              ; preds = %259
  %277 = load i32, ptr %35, align 8, !tbaa !28
  %278 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %277, i32 %266), !nosanitize !31
  %279 = extractvalue { i32, i1 } %278, 1, !nosanitize !31
  br i1 %279, label %280, label %281, !nosanitize !31

280:                                              ; preds = %276, %343
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

281:                                              ; preds = %276
  %282 = extractvalue { i32, i1 } %278, 0, !nosanitize !31
  store i32 %282, ptr %35, align 8, !tbaa !28
  %283 = load ptr, ptr %6, align 8, !tbaa !23
  %284 = and i64 %265, 4294967295
  %285 = getelementptr inbounds i8, ptr %283, i64 %284
  store ptr %285, ptr %6, align 8, !tbaa !23
  %286 = icmp eq i32 %282, 0
  br i1 %286, label %348, label %259, !llvm.loop !32

287:                                              ; preds = %250, %248
  %288 = load i32, ptr %198, align 8, !tbaa !34
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %295, label %290

290:                                              ; preds = %287
  %291 = load i32, ptr %35, align 8, !tbaa !28
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %348, label %293

293:                                              ; preds = %290
  %294 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %198, align 8, !tbaa !34
  br label %295

295:                                              ; preds = %293, %287
  %296 = load i32, ptr %195, align 8, !tbaa !24
  br label %297

297:                                              ; preds = %346, %295
  %298 = phi i32 [ %296, %295 ], [ %344, %346 ]
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %338

300:                                              ; preds = %297
  %301 = load ptr, ptr %196, align 8, !tbaa !25
  %302 = load ptr, ptr %197, align 8, !tbaa !26
  %303 = icmp ugt ptr %301, %302
  br i1 %303, label %304, label %335

304:                                              ; preds = %300
  %305 = tail call ptr @__errno_location() #18
  br label %306

306:                                              ; preds = %326, %304
  %307 = phi ptr [ %302, %304 ], [ %329, %326 ]
  %308 = phi ptr [ %301, %304 ], [ %330, %326 ]
  store i32 0, ptr %305, align 4, !tbaa !29
  store i32 0, ptr %193, align 4, !tbaa !15
  %309 = ptrtoint ptr %308 to i64
  %310 = ptrtoint ptr %307 to i64
  %311 = sub i64 %309, %310
  %312 = tail call i64 @llvm.smin.i64(i64 %311, i64 1073741824)
  %313 = load i32, ptr %194, align 4, !tbaa !30
  %314 = and i64 %312, 4294967295
  %315 = tail call i64 @write(i32 noundef %313, ptr noundef %307, i64 noundef %314) #16
  %316 = and i64 %315, 2147483648
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %326, label %318

318:                                              ; preds = %306
  %319 = load i32, ptr %305, align 4, !tbaa !29
  %320 = icmp eq i32 %319, 11
  br i1 %320, label %321, label %323

321:                                              ; preds = %318
  store i32 1, ptr %193, align 4, !tbaa !15
  %322 = load i32, ptr %305, align 4, !tbaa !29
  br label %323

323:                                              ; preds = %321, %318
  %324 = phi i32 [ %319, %318 ], [ %322, %321 ]
  %325 = tail call ptr @strerror(i32 noundef %324) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %325) #16
  br label %348

326:                                              ; preds = %306
  %327 = load ptr, ptr %197, align 8, !tbaa !26
  %328 = and i64 %315, 2147483647
  %329 = getelementptr inbounds i8, ptr %327, i64 %328
  store ptr %329, ptr %197, align 8, !tbaa !26
  %330 = load ptr, ptr %196, align 8, !tbaa !25
  %331 = icmp ugt ptr %330, %329
  br i1 %331, label %306, label %332, !llvm.loop !35

332:                                              ; preds = %326
  %333 = load i32, ptr %195, align 8, !tbaa !24
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %332, %300
  %336 = load i32, ptr %187, align 8, !tbaa !16
  store i32 %336, ptr %195, align 8, !tbaa !24
  %337 = load ptr, ptr %190, align 8, !tbaa !20
  store ptr %337, ptr %196, align 8, !tbaa !25
  store ptr %337, ptr %197, align 8, !tbaa !26
  br label %338

338:                                              ; preds = %335, %332, %297
  %339 = phi i32 [ %333, %332 ], [ %336, %335 ], [ %298, %297 ]
  %340 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 0) #16
  %341 = icmp eq i32 %340, -2
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %348

343:                                              ; preds = %338
  %344 = load i32, ptr %195, align 8, !tbaa !24
  %345 = icmp ult i32 %339, %344
  br i1 %345, label %280, label %346, !nosanitize !31

346:                                              ; preds = %343
  %347 = icmp eq i32 %339, %344
  br i1 %347, label %348, label %297, !llvm.loop !36

348:                                              ; preds = %281, %346, %342, %323, %290, %273, %253, %239, %233, %224
  %349 = phi i1 [ true, %273 ], [ true, %323 ], [ true, %342 ], [ false, %290 ], [ true, %224 ], [ true, %233 ], [ true, %239 ], [ false, %253 ], [ false, %346 ], [ false, %281 ]
  %350 = load i32, ptr %35, align 8, !tbaa !28
  %351 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %208, i32 %350), !nosanitize !31
  %352 = extractvalue { i32, i1 } %351, 1, !nosanitize !31
  br i1 %352, label %353, label %354, !nosanitize !31

353:                                              ; preds = %361, %348
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

354:                                              ; preds = %348
  %355 = extractvalue { i32, i1 } %351, 0, !nosanitize !31
  %356 = zext i32 %355 to i64
  %357 = load i64, ptr %199, align 8, !tbaa !37
  %358 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %357, i64 %356), !nosanitize !31
  %359 = extractvalue { i64, i1 } %358, 1, !nosanitize !31
  br i1 %359, label %360, label %361, !nosanitize !31

360:                                              ; preds = %354
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

361:                                              ; preds = %354
  %362 = extractvalue { i64, i1 } %358, 0, !nosanitize !31
  store i64 %362, ptr %199, align 8, !tbaa !37
  %363 = load i64, ptr %31, align 8, !tbaa !27
  %364 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %363, i64 %356), !nosanitize !31
  %365 = extractvalue { i64, i1 } %364, 0, !nosanitize !31
  %366 = extractvalue { i64, i1 } %364, 1, !nosanitize !31
  br i1 %366, label %353, label %367, !nosanitize !31

367:                                              ; preds = %361
  store i64 %365, ptr %31, align 8, !tbaa !27
  br i1 %349, label %370, label %368

368:                                              ; preds = %367
  %369 = icmp eq i64 %365, 0
  br i1 %369, label %372, label %201, !llvm.loop !38

370:                                              ; preds = %367, %104, %161, %180, %50, %60, %67
  %371 = load i32, ptr %11, align 8, !tbaa !14
  br label %487

372:                                              ; preds = %368, %30
  %373 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %374 = load i32, ptr %373, align 8, !tbaa !16
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %485, label %376

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %378 = load i32, ptr %377, align 8, !tbaa !28
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %483, label %380

380:                                              ; preds = %376
  %381 = load i32, ptr %19, align 8, !tbaa !19
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %416, label %383

383:                                              ; preds = %380
  %384 = tail call ptr @__errno_location() #18
  %385 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %386 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %387 = load ptr, ptr %6, align 8, !tbaa !23
  br label %388

388:                                              ; preds = %410, %383
  %389 = phi ptr [ %387, %383 ], [ %414, %410 ]
  store i32 0, ptr %384, align 4, !tbaa !29
  store i32 0, ptr %385, align 4, !tbaa !15
  %390 = load i32, ptr %377, align 8, !tbaa !28
  %391 = tail call i32 @llvm.umin.i32(i32 %390, i32 1073741824)
  %392 = load i32, ptr %386, align 4, !tbaa !30
  %393 = zext nneg i32 %391 to i64
  %394 = tail call i64 @write(i32 noundef %392, ptr noundef %389, i64 noundef %393) #16
  %395 = trunc i64 %394 to i32
  %396 = icmp slt i32 %395, 0
  br i1 %396, label %397, label %405

397:                                              ; preds = %388
  %398 = load i32, ptr %384, align 4, !tbaa !29
  %399 = icmp eq i32 %398, 11
  br i1 %399, label %400, label %402

400:                                              ; preds = %397
  store i32 1, ptr %385, align 4, !tbaa !15
  %401 = load i32, ptr %384, align 4, !tbaa !29
  br label %402

402:                                              ; preds = %400, %397
  %403 = phi i32 [ %398, %397 ], [ %401, %400 ]
  %404 = tail call ptr @strerror(i32 noundef %403) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %404) #16
  br label %481

405:                                              ; preds = %388
  %406 = load i32, ptr %377, align 8, !tbaa !28
  %407 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %406, i32 %395), !nosanitize !31
  %408 = extractvalue { i32, i1 } %407, 1, !nosanitize !31
  br i1 %408, label %409, label %410, !nosanitize !31

409:                                              ; preds = %405, %476
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

410:                                              ; preds = %405
  %411 = extractvalue { i32, i1 } %407, 0, !nosanitize !31
  store i32 %411, ptr %377, align 8, !tbaa !28
  %412 = load ptr, ptr %6, align 8, !tbaa !23
  %413 = and i64 %394, 4294967295
  %414 = getelementptr inbounds i8, ptr %412, i64 %413
  store ptr %414, ptr %6, align 8, !tbaa !23
  %415 = icmp eq i32 %411, 0
  br i1 %415, label %483, label %388, !llvm.loop !32

416:                                              ; preds = %380
  %417 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %418 = load i32, ptr %417, align 8, !tbaa !34
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %422, label %420

420:                                              ; preds = %416
  %421 = tail call i32 @deflateReset(ptr noundef nonnull %6) #16
  store i32 0, ptr %417, align 8, !tbaa !34
  br label %422

422:                                              ; preds = %420, %416
  %423 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %424 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %425 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %426 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %427 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %428 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %429 = load i32, ptr %423, align 8, !tbaa !24
  br label %430

430:                                              ; preds = %479, %422
  %431 = phi i32 [ %429, %422 ], [ %477, %479 ]
  %432 = load ptr, ptr %424, align 8, !tbaa !25
  %433 = load ptr, ptr %425, align 8, !tbaa !26
  %434 = icmp ugt ptr %432, %433
  br i1 %434, label %435, label %465

435:                                              ; preds = %430
  %436 = tail call ptr @__errno_location() #18
  br label %437

437:                                              ; preds = %457, %435
  %438 = phi ptr [ %433, %435 ], [ %460, %457 ]
  %439 = phi ptr [ %432, %435 ], [ %461, %457 ]
  store i32 0, ptr %436, align 4, !tbaa !29
  store i32 0, ptr %426, align 4, !tbaa !15
  %440 = ptrtoint ptr %439 to i64
  %441 = ptrtoint ptr %438 to i64
  %442 = sub i64 %440, %441
  %443 = tail call i64 @llvm.smin.i64(i64 %442, i64 1073741824)
  %444 = load i32, ptr %427, align 4, !tbaa !30
  %445 = and i64 %443, 4294967295
  %446 = tail call i64 @write(i32 noundef %444, ptr noundef %438, i64 noundef %445) #16
  %447 = and i64 %446, 2147483648
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %457, label %449

449:                                              ; preds = %437
  %450 = load i32, ptr %436, align 4, !tbaa !29
  %451 = icmp eq i32 %450, 11
  br i1 %451, label %452, label %454

452:                                              ; preds = %449
  store i32 1, ptr %426, align 4, !tbaa !15
  %453 = load i32, ptr %436, align 4, !tbaa !29
  br label %454

454:                                              ; preds = %452, %449
  %455 = phi i32 [ %450, %449 ], [ %453, %452 ]
  %456 = tail call ptr @strerror(i32 noundef %455) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %456) #16
  br label %481

457:                                              ; preds = %437
  %458 = load ptr, ptr %425, align 8, !tbaa !26
  %459 = and i64 %446, 2147483647
  %460 = getelementptr inbounds i8, ptr %458, i64 %459
  store ptr %460, ptr %425, align 8, !tbaa !26
  %461 = load ptr, ptr %424, align 8, !tbaa !25
  %462 = icmp ugt ptr %461, %460
  br i1 %462, label %437, label %463, !llvm.loop !35

463:                                              ; preds = %457
  %464 = load i32, ptr %423, align 8, !tbaa !24
  br label %465

465:                                              ; preds = %463, %430
  %466 = phi i32 [ %464, %463 ], [ %431, %430 ]
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %471

468:                                              ; preds = %465
  %469 = load i32, ptr %373, align 8, !tbaa !16
  store i32 %469, ptr %423, align 8, !tbaa !24
  %470 = load ptr, ptr %428, align 8, !tbaa !20
  store ptr %470, ptr %424, align 8, !tbaa !25
  store ptr %470, ptr %425, align 8, !tbaa !26
  br label %471

471:                                              ; preds = %468, %465
  %472 = phi i32 [ %466, %465 ], [ %469, %468 ]
  %473 = tail call i32 @deflate(ptr noundef nonnull %6, i32 noundef 5) #16
  %474 = icmp eq i32 %473, -2
  br i1 %474, label %475, label %476

475:                                              ; preds = %471
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %481

476:                                              ; preds = %471
  %477 = load i32, ptr %423, align 8, !tbaa !24
  %478 = icmp ult i32 %472, %477
  br i1 %478, label %409, label %479, !nosanitize !31

479:                                              ; preds = %476
  %480 = icmp eq i32 %472, %477
  br i1 %480, label %483, label %430, !llvm.loop !36

481:                                              ; preds = %402, %454, %475
  %482 = load i32, ptr %11, align 8, !tbaa !14
  br label %487

483:                                              ; preds = %410, %479, %376
  %484 = tail call i32 @deflateParams(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2) #16
  br label %485

485:                                              ; preds = %483, %372
  store i32 %1, ptr %23, align 8, !tbaa !21
  %486 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  store i32 %2, ptr %486, align 4, !tbaa !22
  br label %487

487:                                              ; preds = %26, %5, %14, %18, %3, %485, %481, %370
  %488 = phi i32 [ %371, %370 ], [ %482, %481 ], [ 0, %485 ], [ -2, %3 ], [ -2, %18 ], [ -2, %14 ], [ -2, %5 ], [ 0, %26 ]
  ret i32 %488
}

declare i32 @deflateParams(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gzclose_w(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %541, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 31153
  br i1 %6, label %7, label %541

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %9 = load i64, ptr %8, align 8, !tbaa !27
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %357, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !28
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %168, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !17
  %23 = shl i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = tail call noalias ptr @malloc(i64 noundef %24) #17
  %26 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %25, ptr %26, align 8, !tbaa !18
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %354

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %31 = load i32, ptr %30, align 8, !tbaa !19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 %22, ptr %17, align 8, !tbaa !16
  br label %67

34:                                               ; preds = %29
  %35 = zext i32 %22 to i64
  %36 = tail call noalias ptr @malloc(i64 noundef %35) #17
  %37 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %36, ptr %37, align 8, !tbaa !20
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void @free(ptr noundef nonnull %25) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %354

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %42 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %43 = load i32, ptr %42, align 8, !tbaa !21
  %44 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %45 = load i32, ptr %44, align 4, !tbaa !22
  %46 = tail call i32 @deflateInit2_(ptr noundef nonnull %12, i32 noundef %43, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %45, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load ptr, ptr %37, align 8, !tbaa !20
  tail call void @free(ptr noundef %49) #16
  %50 = load ptr, ptr %26, align 8, !tbaa !18
  tail call void @free(ptr noundef %50) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %354

51:                                               ; preds = %40
  store ptr null, ptr %12, align 8, !tbaa !23
  %52 = load i32, ptr %30, align 8, !tbaa !19
  %53 = load i32, ptr %21, align 4, !tbaa !17
  store i32 %53, ptr %17, align 8, !tbaa !16
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %53, ptr %56, align 8, !tbaa !24
  %57 = load ptr, ptr %37, align 8, !tbaa !20
  %58 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %57, ptr %58, align 8, !tbaa !25
  %59 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %57, ptr %59, align 8, !tbaa !26
  br label %100

60:                                               ; preds = %16
  %61 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %62 = load i32, ptr %61, align 8, !tbaa !19
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %100, label %67

64:                                               ; preds = %51
  %65 = load i32, ptr %13, align 8, !tbaa !28
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %168, label %67

67:                                               ; preds = %64, %60, %33
  %68 = tail call ptr @__errno_location() #18
  %69 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %70 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %71 = load ptr, ptr %12, align 8, !tbaa !23
  br label %72

72:                                               ; preds = %94, %67
  %73 = phi ptr [ %71, %67 ], [ %98, %94 ]
  store i32 0, ptr %68, align 4, !tbaa !29
  store i32 0, ptr %69, align 4, !tbaa !15
  %74 = load i32, ptr %13, align 8, !tbaa !28
  %75 = tail call i32 @llvm.umin.i32(i32 %74, i32 1073741824)
  %76 = load i32, ptr %70, align 4, !tbaa !30
  %77 = zext nneg i32 %75 to i64
  %78 = tail call i64 @write(i32 noundef %76, ptr noundef %73, i64 noundef %77) #16
  %79 = trunc i64 %78 to i32
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %72
  %82 = load i32, ptr %68, align 4, !tbaa !29
  %83 = icmp eq i32 %82, 11
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  store i32 1, ptr %69, align 4, !tbaa !15
  %85 = load i32, ptr %68, align 4, !tbaa !29
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i32 [ %82, %81 ], [ %85, %84 ]
  %88 = tail call ptr @strerror(i32 noundef %87) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %88) #16
  br label %354

89:                                               ; preds = %72
  %90 = load i32, ptr %13, align 8, !tbaa !28
  %91 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %90, i32 %79), !nosanitize !31
  %92 = extractvalue { i32, i1 } %91, 1, !nosanitize !31
  br i1 %92, label %93, label %94, !nosanitize !31

93:                                               ; preds = %89, %163
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

94:                                               ; preds = %89
  %95 = extractvalue { i32, i1 } %91, 0, !nosanitize !31
  store i32 %95, ptr %13, align 8, !tbaa !28
  %96 = load ptr, ptr %12, align 8, !tbaa !23
  %97 = and i64 %78, 4294967295
  %98 = getelementptr inbounds i8, ptr %96, i64 %97
  store ptr %98, ptr %12, align 8, !tbaa !23
  %99 = icmp eq i32 %95, 0
  br i1 %99, label %168, label %72, !llvm.loop !32

100:                                              ; preds = %60, %55
  %101 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %102 = load i32, ptr %101, align 8, !tbaa !34
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr %13, align 8, !tbaa !28
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %168, label %107

107:                                              ; preds = %104
  %108 = tail call i32 @deflateReset(ptr noundef nonnull %12) #16
  store i32 0, ptr %101, align 8, !tbaa !34
  br label %109

109:                                              ; preds = %107, %100
  %110 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %111 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %112 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %113 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %114 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %115 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %116 = load i32, ptr %110, align 8, !tbaa !24
  br label %117

117:                                              ; preds = %166, %109
  %118 = phi i32 [ %116, %109 ], [ %164, %166 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %158

120:                                              ; preds = %117
  %121 = load ptr, ptr %111, align 8, !tbaa !25
  %122 = load ptr, ptr %112, align 8, !tbaa !26
  %123 = icmp ugt ptr %121, %122
  br i1 %123, label %124, label %155

124:                                              ; preds = %120
  %125 = tail call ptr @__errno_location() #18
  br label %126

126:                                              ; preds = %146, %124
  %127 = phi ptr [ %122, %124 ], [ %149, %146 ]
  %128 = phi ptr [ %121, %124 ], [ %150, %146 ]
  store i32 0, ptr %125, align 4, !tbaa !29
  store i32 0, ptr %113, align 4, !tbaa !15
  %129 = ptrtoint ptr %128 to i64
  %130 = ptrtoint ptr %127 to i64
  %131 = sub i64 %129, %130
  %132 = tail call i64 @llvm.smin.i64(i64 %131, i64 1073741824)
  %133 = load i32, ptr %114, align 4, !tbaa !30
  %134 = and i64 %132, 4294967295
  %135 = tail call i64 @write(i32 noundef %133, ptr noundef %127, i64 noundef %134) #16
  %136 = and i64 %135, 2147483648
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %126
  %139 = load i32, ptr %125, align 4, !tbaa !29
  %140 = icmp eq i32 %139, 11
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  store i32 1, ptr %113, align 4, !tbaa !15
  %142 = load i32, ptr %125, align 4, !tbaa !29
  br label %143

143:                                              ; preds = %141, %138
  %144 = phi i32 [ %139, %138 ], [ %142, %141 ]
  %145 = tail call ptr @strerror(i32 noundef %144) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %145) #16
  br label %354

146:                                              ; preds = %126
  %147 = load ptr, ptr %112, align 8, !tbaa !26
  %148 = and i64 %135, 2147483647
  %149 = getelementptr inbounds i8, ptr %147, i64 %148
  store ptr %149, ptr %112, align 8, !tbaa !26
  %150 = load ptr, ptr %111, align 8, !tbaa !25
  %151 = icmp ugt ptr %150, %149
  br i1 %151, label %126, label %152, !llvm.loop !35

152:                                              ; preds = %146
  %153 = load i32, ptr %110, align 8, !tbaa !24
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152, %120
  %156 = load i32, ptr %17, align 8, !tbaa !16
  store i32 %156, ptr %110, align 8, !tbaa !24
  %157 = load ptr, ptr %115, align 8, !tbaa !20
  store ptr %157, ptr %111, align 8, !tbaa !25
  store ptr %157, ptr %112, align 8, !tbaa !26
  br label %158

158:                                              ; preds = %155, %152, %117
  %159 = phi i32 [ %153, %152 ], [ %156, %155 ], [ %118, %117 ]
  %160 = tail call i32 @deflate(ptr noundef nonnull %12, i32 noundef 0) #16
  %161 = icmp eq i32 %160, -2
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %354

163:                                              ; preds = %158
  %164 = load i32, ptr %110, align 8, !tbaa !24
  %165 = icmp ult i32 %159, %164
  br i1 %165, label %93, label %166, !nosanitize !31

166:                                              ; preds = %163
  %167 = icmp eq i32 %159, %164
  br i1 %167, label %168, label %117, !llvm.loop !36

168:                                              ; preds = %94, %166, %104, %64, %11
  %169 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %170 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %171 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %172 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %173 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %174 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %175 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %176 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %177 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %178 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %179 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %180 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %181 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %182 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %183 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %184 = load i64, ptr %8, align 8, !tbaa !27
  br label %185

185:                                              ; preds = %352, %168
  %186 = phi i64 [ %184, %168 ], [ %349, %352 ]
  %187 = phi i1 [ false, %168 ], [ true, %352 ]
  %188 = load i32, ptr %169, align 8, !tbaa !16
  %189 = zext i32 %188 to i64
  %190 = icmp slt i64 %186, %189
  %191 = trunc i64 %186 to i32
  %192 = select i1 %190, i32 %191, i32 %188
  %193 = load ptr, ptr %170, align 8, !tbaa !18
  br i1 %187, label %198, label %194

194:                                              ; preds = %185
  %195 = zext i32 %192 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %193, i8 0, i64 %195, i1 false)
  %196 = load ptr, ptr %170, align 8, !tbaa !18
  %197 = load i32, ptr %169, align 8, !tbaa !16
  br label %198

198:                                              ; preds = %194, %185
  %199 = phi i32 [ %197, %194 ], [ %188, %185 ]
  %200 = phi ptr [ %196, %194 ], [ %193, %185 ]
  store i32 %192, ptr %13, align 8, !tbaa !28
  store ptr %200, ptr %12, align 8, !tbaa !23
  %201 = icmp eq i32 %199, 0
  br i1 %201, label %202, label %234

202:                                              ; preds = %198
  %203 = load i32, ptr %172, align 4, !tbaa !17
  %204 = shl i32 %203, 1
  %205 = zext i32 %204 to i64
  %206 = tail call noalias ptr @malloc(i64 noundef %205) #17
  store ptr %206, ptr %170, align 8, !tbaa !18
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %332

209:                                              ; preds = %202
  %210 = load i32, ptr %171, align 8, !tbaa !19
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %209
  store i32 %203, ptr %169, align 8, !tbaa !16
  br label %237

213:                                              ; preds = %209
  %214 = zext i32 %203 to i64
  %215 = tail call noalias ptr @malloc(i64 noundef %214) #17
  store ptr %215, ptr %173, align 8, !tbaa !20
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  tail call void @free(ptr noundef nonnull %206) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %332

218:                                              ; preds = %213
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %174, i8 0, i64 24, i1 false)
  %219 = load i32, ptr %175, align 8, !tbaa !21
  %220 = load i32, ptr %176, align 4, !tbaa !22
  %221 = tail call i32 @deflateInit2_(ptr noundef nonnull %12, i32 noundef %219, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %220, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %218
  %224 = load ptr, ptr %173, align 8, !tbaa !20
  tail call void @free(ptr noundef %224) #16
  %225 = load ptr, ptr %170, align 8, !tbaa !18
  tail call void @free(ptr noundef %225) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %332

226:                                              ; preds = %218
  store ptr null, ptr %12, align 8, !tbaa !23
  %227 = load i32, ptr %171, align 8, !tbaa !19
  %228 = load i32, ptr %172, align 4, !tbaa !17
  store i32 %228, ptr %169, align 8, !tbaa !16
  %229 = icmp eq i32 %227, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %226
  %231 = load i32, ptr %13, align 8, !tbaa !28
  br label %237

232:                                              ; preds = %226
  store i32 %228, ptr %179, align 8, !tbaa !24
  %233 = load ptr, ptr %173, align 8, !tbaa !20
  store ptr %233, ptr %180, align 8, !tbaa !25
  store ptr %233, ptr %181, align 8, !tbaa !26
  br label %271

234:                                              ; preds = %198
  %235 = load i32, ptr %171, align 8, !tbaa !19
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %271, label %237

237:                                              ; preds = %234, %230, %212
  %238 = phi ptr [ null, %230 ], [ %200, %234 ], [ %200, %212 ]
  %239 = phi i32 [ %231, %230 ], [ %192, %234 ], [ %192, %212 ]
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %332, label %241

241:                                              ; preds = %237
  %242 = tail call ptr @__errno_location() #18
  br label %243

243:                                              ; preds = %265, %241
  %244 = phi ptr [ %238, %241 ], [ %269, %265 ]
  store i32 0, ptr %242, align 4, !tbaa !29
  store i32 0, ptr %177, align 4, !tbaa !15
  %245 = load i32, ptr %13, align 8, !tbaa !28
  %246 = tail call i32 @llvm.umin.i32(i32 %245, i32 1073741824)
  %247 = load i32, ptr %178, align 4, !tbaa !30
  %248 = zext nneg i32 %246 to i64
  %249 = tail call i64 @write(i32 noundef %247, ptr noundef %244, i64 noundef %248) #16
  %250 = trunc i64 %249 to i32
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %243
  %253 = load i32, ptr %242, align 4, !tbaa !29
  %254 = icmp eq i32 %253, 11
  br i1 %254, label %255, label %257

255:                                              ; preds = %252
  store i32 1, ptr %177, align 4, !tbaa !15
  %256 = load i32, ptr %242, align 4, !tbaa !29
  br label %257

257:                                              ; preds = %255, %252
  %258 = phi i32 [ %253, %252 ], [ %256, %255 ]
  %259 = tail call ptr @strerror(i32 noundef %258) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %259) #16
  br label %332

260:                                              ; preds = %243
  %261 = load i32, ptr %13, align 8, !tbaa !28
  %262 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %261, i32 %250), !nosanitize !31
  %263 = extractvalue { i32, i1 } %262, 1, !nosanitize !31
  br i1 %263, label %264, label %265, !nosanitize !31

264:                                              ; preds = %260, %327
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

265:                                              ; preds = %260
  %266 = extractvalue { i32, i1 } %262, 0, !nosanitize !31
  store i32 %266, ptr %13, align 8, !tbaa !28
  %267 = load ptr, ptr %12, align 8, !tbaa !23
  %268 = and i64 %249, 4294967295
  %269 = getelementptr inbounds i8, ptr %267, i64 %268
  store ptr %269, ptr %12, align 8, !tbaa !23
  %270 = icmp eq i32 %266, 0
  br i1 %270, label %332, label %243, !llvm.loop !32

271:                                              ; preds = %234, %232
  %272 = load i32, ptr %182, align 8, !tbaa !34
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %279, label %274

274:                                              ; preds = %271
  %275 = load i32, ptr %13, align 8, !tbaa !28
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %332, label %277

277:                                              ; preds = %274
  %278 = tail call i32 @deflateReset(ptr noundef nonnull %12) #16
  store i32 0, ptr %182, align 8, !tbaa !34
  br label %279

279:                                              ; preds = %277, %271
  %280 = load i32, ptr %179, align 8, !tbaa !24
  br label %281

281:                                              ; preds = %330, %279
  %282 = phi i32 [ %280, %279 ], [ %328, %330 ]
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %322

284:                                              ; preds = %281
  %285 = load ptr, ptr %180, align 8, !tbaa !25
  %286 = load ptr, ptr %181, align 8, !tbaa !26
  %287 = icmp ugt ptr %285, %286
  br i1 %287, label %288, label %319

288:                                              ; preds = %284
  %289 = tail call ptr @__errno_location() #18
  br label %290

290:                                              ; preds = %310, %288
  %291 = phi ptr [ %286, %288 ], [ %313, %310 ]
  %292 = phi ptr [ %285, %288 ], [ %314, %310 ]
  store i32 0, ptr %289, align 4, !tbaa !29
  store i32 0, ptr %177, align 4, !tbaa !15
  %293 = ptrtoint ptr %292 to i64
  %294 = ptrtoint ptr %291 to i64
  %295 = sub i64 %293, %294
  %296 = tail call i64 @llvm.smin.i64(i64 %295, i64 1073741824)
  %297 = load i32, ptr %178, align 4, !tbaa !30
  %298 = and i64 %296, 4294967295
  %299 = tail call i64 @write(i32 noundef %297, ptr noundef %291, i64 noundef %298) #16
  %300 = and i64 %299, 2147483648
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %310, label %302

302:                                              ; preds = %290
  %303 = load i32, ptr %289, align 4, !tbaa !29
  %304 = icmp eq i32 %303, 11
  br i1 %304, label %305, label %307

305:                                              ; preds = %302
  store i32 1, ptr %177, align 4, !tbaa !15
  %306 = load i32, ptr %289, align 4, !tbaa !29
  br label %307

307:                                              ; preds = %305, %302
  %308 = phi i32 [ %303, %302 ], [ %306, %305 ]
  %309 = tail call ptr @strerror(i32 noundef %308) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %309) #16
  br label %332

310:                                              ; preds = %290
  %311 = load ptr, ptr %181, align 8, !tbaa !26
  %312 = and i64 %299, 2147483647
  %313 = getelementptr inbounds i8, ptr %311, i64 %312
  store ptr %313, ptr %181, align 8, !tbaa !26
  %314 = load ptr, ptr %180, align 8, !tbaa !25
  %315 = icmp ugt ptr %314, %313
  br i1 %315, label %290, label %316, !llvm.loop !35

316:                                              ; preds = %310
  %317 = load i32, ptr %179, align 8, !tbaa !24
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %316, %284
  %320 = load i32, ptr %169, align 8, !tbaa !16
  store i32 %320, ptr %179, align 8, !tbaa !24
  %321 = load ptr, ptr %173, align 8, !tbaa !20
  store ptr %321, ptr %180, align 8, !tbaa !25
  store ptr %321, ptr %181, align 8, !tbaa !26
  br label %322

322:                                              ; preds = %319, %316, %281
  %323 = phi i32 [ %317, %316 ], [ %320, %319 ], [ %282, %281 ]
  %324 = tail call i32 @deflate(ptr noundef nonnull %12, i32 noundef 0) #16
  %325 = icmp eq i32 %324, -2
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %332

327:                                              ; preds = %322
  %328 = load i32, ptr %179, align 8, !tbaa !24
  %329 = icmp ult i32 %323, %328
  br i1 %329, label %264, label %330, !nosanitize !31

330:                                              ; preds = %327
  %331 = icmp eq i32 %323, %328
  br i1 %331, label %332, label %281, !llvm.loop !36

332:                                              ; preds = %265, %330, %326, %307, %274, %257, %237, %223, %217, %208
  %333 = phi i1 [ true, %257 ], [ true, %307 ], [ true, %326 ], [ false, %274 ], [ true, %208 ], [ true, %217 ], [ true, %223 ], [ false, %237 ], [ false, %330 ], [ false, %265 ]
  %334 = load i32, ptr %13, align 8, !tbaa !28
  %335 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %192, i32 %334), !nosanitize !31
  %336 = extractvalue { i32, i1 } %335, 1, !nosanitize !31
  br i1 %336, label %337, label %338, !nosanitize !31

337:                                              ; preds = %345, %332
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

338:                                              ; preds = %332
  %339 = extractvalue { i32, i1 } %335, 0, !nosanitize !31
  %340 = zext i32 %339 to i64
  %341 = load i64, ptr %183, align 8, !tbaa !37
  %342 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %341, i64 %340), !nosanitize !31
  %343 = extractvalue { i64, i1 } %342, 1, !nosanitize !31
  br i1 %343, label %344, label %345, !nosanitize !31

344:                                              ; preds = %338
  tail call void @llvm.ubsantrap(i8 0) #19, !nosanitize !31
  unreachable, !nosanitize !31

345:                                              ; preds = %338
  %346 = extractvalue { i64, i1 } %342, 0, !nosanitize !31
  store i64 %346, ptr %183, align 8, !tbaa !37
  %347 = load i64, ptr %8, align 8, !tbaa !27
  %348 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %347, i64 %340), !nosanitize !31
  %349 = extractvalue { i64, i1 } %348, 0, !nosanitize !31
  %350 = extractvalue { i64, i1 } %348, 1, !nosanitize !31
  br i1 %350, label %337, label %351, !nosanitize !31

351:                                              ; preds = %345
  store i64 %349, ptr %8, align 8, !tbaa !27
  br i1 %333, label %354, label %352

352:                                              ; preds = %351
  %353 = icmp eq i64 %349, 0
  br i1 %353, label %357, label %185, !llvm.loop !38

354:                                              ; preds = %351, %86, %143, %162, %28, %39, %48
  %355 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %356 = load i32, ptr %355, align 8, !tbaa !14
  br label %357

357:                                              ; preds = %352, %354, %7
  %358 = phi i32 [ %356, %354 ], [ 0, %7 ], [ 0, %352 ]
  %359 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21
  %360 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %361 = load i32, ptr %360, align 8, !tbaa !16
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %403

363:                                              ; preds = %357
  %364 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %365 = load i32, ptr %364, align 4, !tbaa !17
  %366 = shl i32 %365, 1
  %367 = zext i32 %366 to i64
  %368 = tail call noalias ptr @malloc(i64 noundef %367) #17
  %369 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %368, ptr %369, align 8, !tbaa !18
  %370 = icmp eq ptr %368, null
  br i1 %370, label %371, label %372

371:                                              ; preds = %363
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %515

372:                                              ; preds = %363
  %373 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %374 = load i32, ptr %373, align 8, !tbaa !19
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %377, label %376

376:                                              ; preds = %372
  store i32 %365, ptr %360, align 8, !tbaa !16
  br label %407

377:                                              ; preds = %372
  %378 = zext i32 %365 to i64
  %379 = tail call noalias ptr @malloc(i64 noundef %378) #17
  %380 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %379, ptr %380, align 8, !tbaa !20
  %381 = icmp eq ptr %379, null
  br i1 %381, label %382, label %383

382:                                              ; preds = %377
  tail call void @free(ptr noundef nonnull %368) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %515

383:                                              ; preds = %377
  %384 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 8
  %385 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %384, i8 0, i64 24, i1 false)
  %386 = load i32, ptr %385, align 8, !tbaa !21
  %387 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %388 = load i32, ptr %387, align 4, !tbaa !22
  %389 = tail call i32 @deflateInit2_(ptr noundef nonnull %359, i32 noundef %386, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %388, ptr noundef nonnull @.str.5, i32 noundef 112) #16
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %394, label %391

391:                                              ; preds = %383
  %392 = load ptr, ptr %380, align 8, !tbaa !20
  tail call void @free(ptr noundef %392) #16
  %393 = load ptr, ptr %369, align 8, !tbaa !18
  tail call void @free(ptr noundef %393) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #16
  br label %515

394:                                              ; preds = %383
  store ptr null, ptr %359, align 8, !tbaa !23
  %395 = load i32, ptr %373, align 8, !tbaa !19
  %396 = load i32, ptr %364, align 4, !tbaa !17
  store i32 %396, ptr %360, align 8, !tbaa !16
  %397 = icmp eq i32 %395, 0
  br i1 %397, label %398, label %407

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  store i32 %396, ptr %399, align 8, !tbaa !24
  %400 = load ptr, ptr %380, align 8, !tbaa !20
  %401 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  store ptr %400, ptr %401, align 8, !tbaa !25
  %402 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %400, ptr %402, align 8, !tbaa !26
  br label %444

403:                                              ; preds = %357
  %404 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %405 = load i32, ptr %404, align 8, !tbaa !19
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %444, label %407

407:                                              ; preds = %403, %394, %376
  %408 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 1
  %409 = load i32, ptr %408, align 8, !tbaa !28
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %518, label %411

411:                                              ; preds = %407
  %412 = tail call ptr @__errno_location() #18
  %413 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %414 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %415 = load ptr, ptr %359, align 8, !tbaa !23
  br label %416

416:                                              ; preds = %438, %411
  %417 = phi ptr [ %415, %411 ], [ %442, %438 ]
  store i32 0, ptr %412, align 4, !tbaa !29
  store i32 0, ptr %413, align 4, !tbaa !15
  %418 = load i32, ptr %408, align 8, !tbaa !28
  %419 = tail call i32 @llvm.umin.i32(i32 %418, i32 1073741824)
  %420 = load i32, ptr %414, align 4, !tbaa !30
  %421 = zext nneg i32 %419 to i64
  %422 = tail call i64 @write(i32 noundef %420, ptr noundef %417, i64 noundef %421) #16
  %423 = trunc i64 %422 to i32
  %424 = icmp slt i32 %423, 0
  br i1 %424, label %425, label %433

425:                                              ; preds = %416
  %426 = load i32, ptr %412, align 4, !tbaa !29
  %427 = icmp eq i32 %426, 11
  br i1 %427, label %428, label %430

428:                                              ; preds = %425
  store i32 1, ptr %413, align 4, !tbaa !15
  %429 = load i32, ptr %412, align 4, !tbaa !29
  br label %430

430:                                              ; preds = %428, %425
  %431 = phi i32 [ %426, %425 ], [ %429, %428 ]
  %432 = tail call ptr @strerror(i32 noundef %431) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %432) #16
  br label %515

433:                                              ; preds = %416
  %434 = load i32, ptr %408, align 8, !tbaa !28
  %435 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %434, i32 %423), !nosanitize !31
  %436 = extractvalue { i32, i1 } %435, 1, !nosanitize !31
  br i1 %436, label %437, label %438, !nosanitize !31

437:                                              ; preds = %433, %509
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !31
  unreachable, !nosanitize !31

438:                                              ; preds = %433
  %439 = extractvalue { i32, i1 } %435, 0, !nosanitize !31
  store i32 %439, ptr %408, align 8, !tbaa !28
  %440 = load ptr, ptr %359, align 8, !tbaa !23
  %441 = and i64 %422, 4294967295
  %442 = getelementptr inbounds i8, ptr %440, i64 %441
  store ptr %442, ptr %359, align 8, !tbaa !23
  %443 = icmp eq i32 %439, 0
  br i1 %443, label %518, label %416, !llvm.loop !32

444:                                              ; preds = %403, %398
  %445 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %446 = load i32, ptr %445, align 8, !tbaa !34
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %450, label %448

448:                                              ; preds = %444
  %449 = tail call i32 @deflateReset(ptr noundef nonnull %359) #16
  store i32 0, ptr %445, align 8, !tbaa !34
  br label %450

450:                                              ; preds = %448, %444
  %451 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 4
  %452 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 21, i32 3
  %453 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %454 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %455 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %456 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %457 = load i32, ptr %451, align 8, !tbaa !24
  br label %458

458:                                              ; preds = %512, %450
  %459 = phi i32 [ %457, %450 ], [ %510, %512 ]
  %460 = phi i32 [ 0, %450 ], [ %506, %512 ]
  %461 = icmp eq i32 %459, 0
  %462 = icmp eq i32 %460, 1
  %463 = or i1 %461, %462
  br i1 %463, label %464, label %504

464:                                              ; preds = %458
  %465 = load ptr, ptr %452, align 8, !tbaa !25
  %466 = load ptr, ptr %453, align 8, !tbaa !26
  %467 = icmp ugt ptr %465, %466
  br i1 %467, label %468, label %498

468:                                              ; preds = %464
  %469 = tail call ptr @__errno_location() #18
  br label %470

470:                                              ; preds = %490, %468
  %471 = phi ptr [ %466, %468 ], [ %493, %490 ]
  %472 = phi ptr [ %465, %468 ], [ %494, %490 ]
  store i32 0, ptr %469, align 4, !tbaa !29
  store i32 0, ptr %454, align 4, !tbaa !15
  %473 = ptrtoint ptr %472 to i64
  %474 = ptrtoint ptr %471 to i64
  %475 = sub i64 %473, %474
  %476 = tail call i64 @llvm.smin.i64(i64 %475, i64 1073741824)
  %477 = load i32, ptr %455, align 4, !tbaa !30
  %478 = and i64 %476, 4294967295
  %479 = tail call i64 @write(i32 noundef %477, ptr noundef %471, i64 noundef %478) #16
  %480 = and i64 %479, 2147483648
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %490, label %482

482:                                              ; preds = %470
  %483 = load i32, ptr %469, align 4, !tbaa !29
  %484 = icmp eq i32 %483, 11
  br i1 %484, label %485, label %487

485:                                              ; preds = %482
  store i32 1, ptr %454, align 4, !tbaa !15
  %486 = load i32, ptr %469, align 4, !tbaa !29
  br label %487

487:                                              ; preds = %485, %482
  %488 = phi i32 [ %483, %482 ], [ %486, %485 ]
  %489 = tail call ptr @strerror(i32 noundef %488) #16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %489) #16
  br label %515

490:                                              ; preds = %470
  %491 = load ptr, ptr %453, align 8, !tbaa !26
  %492 = and i64 %479, 2147483647
  %493 = getelementptr inbounds i8, ptr %491, i64 %492
  store ptr %493, ptr %453, align 8, !tbaa !26
  %494 = load ptr, ptr %452, align 8, !tbaa !25
  %495 = icmp ugt ptr %494, %493
  br i1 %495, label %470, label %496, !llvm.loop !35

496:                                              ; preds = %490
  %497 = load i32, ptr %451, align 8, !tbaa !24
  br label %498

498:                                              ; preds = %496, %464
  %499 = phi i32 [ %497, %496 ], [ %459, %464 ]
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %504

501:                                              ; preds = %498
  %502 = load i32, ptr %360, align 8, !tbaa !16
  store i32 %502, ptr %451, align 8, !tbaa !24
  %503 = load ptr, ptr %456, align 8, !tbaa !20
  store ptr %503, ptr %452, align 8, !tbaa !25
  store ptr %503, ptr %453, align 8, !tbaa !26
  br label %504

504:                                              ; preds = %458, %501, %498
  %505 = phi i32 [ %499, %498 ], [ %502, %501 ], [ %459, %458 ]
  %506 = tail call i32 @deflate(ptr noundef nonnull %359, i32 noundef 4) #16
  %507 = icmp eq i32 %506, -2
  br i1 %507, label %508, label %509

508:                                              ; preds = %504
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #16
  br label %515

509:                                              ; preds = %504
  %510 = load i32, ptr %451, align 8, !tbaa !24
  %511 = icmp ult i32 %505, %510
  br i1 %511, label %437, label %512, !nosanitize !31

512:                                              ; preds = %509
  %513 = icmp eq i32 %505, %510
  br i1 %513, label %514, label %458, !llvm.loop !36

514:                                              ; preds = %512
  store i32 1, ptr %445, align 8, !tbaa !34
  br label %518

515:                                              ; preds = %430, %487, %508, %371, %382, %391
  %516 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %517 = load i32, ptr %516, align 8, !tbaa !14
  br label %518

518:                                              ; preds = %438, %514, %407, %515
  %519 = phi i32 [ %517, %515 ], [ %358, %407 ], [ %358, %514 ], [ %358, %438 ]
  %520 = load i32, ptr %360, align 8, !tbaa !16
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %533, label %522

522:                                              ; preds = %518
  %523 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %524 = load i32, ptr %523, align 8, !tbaa !19
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %530

526:                                              ; preds = %522
  %527 = tail call i32 @deflateEnd(ptr noundef nonnull %359) #16
  %528 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %529 = load ptr, ptr %528, align 8, !tbaa !20
  tail call void @free(ptr noundef %529) #16
  br label %530

530:                                              ; preds = %526, %522
  %531 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %532 = load ptr, ptr %531, align 8, !tbaa !18
  tail call void @free(ptr noundef %532) #16
  br label %533

533:                                              ; preds = %530, %518
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #16
  %534 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 3
  %535 = load ptr, ptr %534, align 8, !tbaa !43
  tail call void @free(ptr noundef %535) #16
  %536 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %537 = load i32, ptr %536, align 4, !tbaa !30
  %538 = tail call i32 @close(i32 noundef %537) #16
  %539 = icmp eq i32 %538, -1
  %540 = select i1 %539, i32 -1, i32 %519
  tail call void @free(ptr noundef nonnull %0) #16
  br label %541

541:                                              ; preds = %3, %1, %533
  %542 = phi i32 [ %540, %533 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %542
}

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #14

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #2

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }

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
!16 = !{!6, !8, i64 40}
!17 = !{!6, !8, i64 44}
!18 = !{!6, !11, i64 48}
!19 = !{!6, !8, i64 64}
!20 = !{!6, !11, i64 56}
!21 = !{!6, !8, i64 96}
!22 = !{!6, !8, i64 100}
!23 = !{!13, !11, i64 0}
!24 = !{!13, !8, i64 32}
!25 = !{!13, !11, i64 24}
!26 = !{!6, !11, i64 8}
!27 = !{!6, !12, i64 112}
!28 = !{!13, !8, i64 8}
!29 = !{!8, !8, i64 0}
!30 = !{!6, !8, i64 28}
!31 = !{}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!6, !8, i64 104}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = !{!6, !12, i64 16}
!38 = distinct !{!38, !33}
!39 = !{!6, !8, i64 144}
!40 = !{!6, !11, i64 136}
!41 = distinct !{!41, !33}
!42 = !{!9, !9, i64 0}
!43 = !{!6, !11, i64 32}
