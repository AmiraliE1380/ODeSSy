; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.adler32.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/adler32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @adler32_z(i64 noundef %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = lshr i64 %0, 16
  %5 = and i64 %4, 65535
  %6 = and i64 %0, 65535
  %7 = icmp eq i64 %2, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = load i8, ptr %1, align 1, !tbaa !8
  %10 = zext i8 %9 to i64
  %11 = add nuw nsw i64 %6, %10
  %12 = icmp samesign ugt i64 %11, 65520
  %13 = add nsw i64 %11, -65521
  %14 = select i1 %12, i64 %13, i64 %11
  %15 = add nsw i64 %14, %5
  %16 = icmp ugt i64 %15, 65520
  %17 = shl nsw i64 %15, 16
  %18 = add nsw i64 %17, -4293984256
  %19 = select i1 %16, i64 %18, i64 %17
  %20 = or i64 %19, %14
  br label %450

21:                                               ; preds = %3
  %22 = icmp eq ptr %1, null
  br i1 %22, label %450, label %23

23:                                               ; preds = %21
  %24 = icmp ult i64 %2, 16
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp ugt i64 %2, 5551
  br i1 %26, label %52, label %240

27:                                               ; preds = %23
  %28 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 1), !nosanitize !9
  %29 = extractvalue { i64, i1 } %28, 1, !nosanitize !9
  br i1 %29, label %30, label %31, !prof !10, !nosanitize !9

30:                                               ; preds = %48, %27
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !9
  unreachable, !nosanitize !9

31:                                               ; preds = %48, %27
  %32 = phi { i64, i1 } [ %50, %48 ], [ %28, %27 ]
  %33 = phi i64 [ %49, %48 ], [ %5, %27 ]
  %34 = phi ptr [ %37, %48 ], [ %1, %27 ]
  %35 = phi i64 [ %41, %48 ], [ %6, %27 ]
  %36 = extractvalue { i64, i1 } %32, 0
  %37 = getelementptr inbounds nuw i8, ptr %34, i64 1
  %38 = load i8, ptr %34, align 1, !tbaa !8
  %39 = zext i8 %38 to i64
  %40 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %35, i64 %39), !nosanitize !9
  %41 = extractvalue { i64, i1 } %40, 0, !nosanitize !9
  %42 = extractvalue { i64, i1 } %40, 1, !nosanitize !9
  br i1 %42, label %43, label %44, !prof !11, !nosanitize !9

43:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

44:                                               ; preds = %31
  %45 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %41), !nosanitize !9
  %46 = extractvalue { i64, i1 } %45, 1, !nosanitize !9
  br i1 %46, label %47, label %48, !prof !11, !nosanitize !9

47:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

48:                                               ; preds = %44
  %49 = extractvalue { i64, i1 } %45, 0, !nosanitize !9
  %50 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %36, i64 1), !nosanitize !9
  %51 = extractvalue { i64, i1 } %50, 1, !nosanitize !9
  br i1 %51, label %30, label %31, !prof !12, !llvm.loop !13, !nosanitize !9

52:                                               ; preds = %232, %25
  %53 = phi i64 [ %234, %232 ], [ %5, %25 ]
  %54 = phi i64 [ %57, %232 ], [ %2, %25 ]
  %55 = phi ptr [ %58, %232 ], [ %1, %25 ]
  %56 = phi i64 [ %233, %232 ], [ %6, %25 ]
  %57 = add i64 %54, -5552
  %58 = getelementptr i8, ptr %55, i64 5552
  br label %59

59:                                               ; preds = %227, %52
  %60 = phi i64 [ %56, %52 ], [ %223, %227 ]
  %61 = phi ptr [ %55, %52 ], [ %229, %227 ]
  %62 = phi i64 [ %53, %52 ], [ %228, %227 ]
  %63 = phi i32 [ 347, %52 ], [ %230, %227 ]
  %64 = load i8, ptr %61, align 1, !tbaa !8
  %65 = zext i8 %64 to i64
  %66 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %60, i64 %65), !nosanitize !9
  %67 = extractvalue { i64, i1 } %66, 0, !nosanitize !9
  %68 = extractvalue { i64, i1 } %66, 1, !nosanitize !9
  br i1 %68, label %69, label %70, !prof !11, !nosanitize !9

69:                                               ; preds = %59
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

70:                                               ; preds = %59
  %71 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %62, i64 %67), !nosanitize !9
  %72 = extractvalue { i64, i1 } %71, 0, !nosanitize !9
  %73 = extractvalue { i64, i1 } %71, 1, !nosanitize !9
  br i1 %73, label %74, label %75, !prof !11, !nosanitize !9

74:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

75:                                               ; preds = %70
  %76 = getelementptr inbounds nuw i8, ptr %61, i64 1
  %77 = load i8, ptr %76, align 1, !tbaa !8
  %78 = zext i8 %77 to i64
  %79 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %67, i64 %78), !nosanitize !9
  %80 = extractvalue { i64, i1 } %79, 0, !nosanitize !9
  %81 = extractvalue { i64, i1 } %79, 1, !nosanitize !9
  br i1 %81, label %82, label %83, !prof !11, !nosanitize !9

82:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

83:                                               ; preds = %75
  %84 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %72, i64 %80), !nosanitize !9
  %85 = extractvalue { i64, i1 } %84, 0, !nosanitize !9
  %86 = extractvalue { i64, i1 } %84, 1, !nosanitize !9
  br i1 %86, label %87, label %88, !prof !11, !nosanitize !9

87:                                               ; preds = %83
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

88:                                               ; preds = %83
  %89 = getelementptr inbounds nuw i8, ptr %61, i64 2
  %90 = load i8, ptr %89, align 1, !tbaa !8
  %91 = zext i8 %90 to i64
  %92 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %80, i64 %91), !nosanitize !9
  %93 = extractvalue { i64, i1 } %92, 0, !nosanitize !9
  %94 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %85, i64 %93), !nosanitize !9
  %95 = extractvalue { i64, i1 } %94, 0, !nosanitize !9
  %96 = extractvalue { i64, i1 } %94, 1, !nosanitize !9
  br i1 %96, label %97, label %98, !prof !11, !nosanitize !9

97:                                               ; preds = %88
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

98:                                               ; preds = %88
  %99 = getelementptr inbounds nuw i8, ptr %61, i64 3
  %100 = load i8, ptr %99, align 1, !tbaa !8
  %101 = zext i8 %100 to i64
  %102 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %93, i64 %101), !nosanitize !9
  %103 = extractvalue { i64, i1 } %102, 0, !nosanitize !9
  %104 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %95, i64 %103), !nosanitize !9
  %105 = extractvalue { i64, i1 } %104, 0, !nosanitize !9
  %106 = extractvalue { i64, i1 } %104, 1, !nosanitize !9
  br i1 %106, label %107, label %108, !prof !11, !nosanitize !9

107:                                              ; preds = %98
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

108:                                              ; preds = %98
  %109 = getelementptr inbounds nuw i8, ptr %61, i64 4
  %110 = load i8, ptr %109, align 1, !tbaa !8
  %111 = zext i8 %110 to i64
  %112 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %103, i64 %111), !nosanitize !9
  %113 = extractvalue { i64, i1 } %112, 0, !nosanitize !9
  %114 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %105, i64 %113), !nosanitize !9
  %115 = extractvalue { i64, i1 } %114, 0, !nosanitize !9
  %116 = extractvalue { i64, i1 } %114, 1, !nosanitize !9
  br i1 %116, label %117, label %118, !prof !11, !nosanitize !9

117:                                              ; preds = %108
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

118:                                              ; preds = %108
  %119 = getelementptr inbounds nuw i8, ptr %61, i64 5
  %120 = load i8, ptr %119, align 1, !tbaa !8
  %121 = zext i8 %120 to i64
  %122 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %113, i64 %121), !nosanitize !9
  %123 = extractvalue { i64, i1 } %122, 0, !nosanitize !9
  %124 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %115, i64 %123), !nosanitize !9
  %125 = extractvalue { i64, i1 } %124, 0, !nosanitize !9
  %126 = extractvalue { i64, i1 } %124, 1, !nosanitize !9
  br i1 %126, label %127, label %128, !prof !11, !nosanitize !9

127:                                              ; preds = %118
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

128:                                              ; preds = %118
  %129 = getelementptr inbounds nuw i8, ptr %61, i64 6
  %130 = load i8, ptr %129, align 1, !tbaa !8
  %131 = zext i8 %130 to i64
  %132 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %123, i64 %131), !nosanitize !9
  %133 = extractvalue { i64, i1 } %132, 0, !nosanitize !9
  %134 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %125, i64 %133), !nosanitize !9
  %135 = extractvalue { i64, i1 } %134, 0, !nosanitize !9
  %136 = extractvalue { i64, i1 } %134, 1, !nosanitize !9
  br i1 %136, label %137, label %138, !prof !11, !nosanitize !9

137:                                              ; preds = %128
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

138:                                              ; preds = %128
  %139 = getelementptr inbounds nuw i8, ptr %61, i64 7
  %140 = load i8, ptr %139, align 1, !tbaa !8
  %141 = zext i8 %140 to i64
  %142 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %133, i64 %141), !nosanitize !9
  %143 = extractvalue { i64, i1 } %142, 0, !nosanitize !9
  %144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %135, i64 %143), !nosanitize !9
  %145 = extractvalue { i64, i1 } %144, 0, !nosanitize !9
  %146 = extractvalue { i64, i1 } %144, 1, !nosanitize !9
  br i1 %146, label %147, label %148, !prof !11, !nosanitize !9

147:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

148:                                              ; preds = %138
  %149 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %150 = load i8, ptr %149, align 1, !tbaa !8
  %151 = zext i8 %150 to i64
  %152 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %143, i64 %151), !nosanitize !9
  %153 = extractvalue { i64, i1 } %152, 0, !nosanitize !9
  %154 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %145, i64 %153), !nosanitize !9
  %155 = extractvalue { i64, i1 } %154, 0, !nosanitize !9
  %156 = extractvalue { i64, i1 } %154, 1, !nosanitize !9
  br i1 %156, label %157, label %158, !prof !11, !nosanitize !9

157:                                              ; preds = %148
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

158:                                              ; preds = %148
  %159 = getelementptr inbounds nuw i8, ptr %61, i64 9
  %160 = load i8, ptr %159, align 1, !tbaa !8
  %161 = zext i8 %160 to i64
  %162 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %153, i64 %161), !nosanitize !9
  %163 = extractvalue { i64, i1 } %162, 0, !nosanitize !9
  %164 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %155, i64 %163), !nosanitize !9
  %165 = extractvalue { i64, i1 } %164, 0, !nosanitize !9
  %166 = extractvalue { i64, i1 } %164, 1, !nosanitize !9
  br i1 %166, label %167, label %168, !prof !11, !nosanitize !9

167:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

168:                                              ; preds = %158
  %169 = getelementptr inbounds nuw i8, ptr %61, i64 10
  %170 = load i8, ptr %169, align 1, !tbaa !8
  %171 = zext i8 %170 to i64
  %172 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %163, i64 %171), !nosanitize !9
  %173 = extractvalue { i64, i1 } %172, 0, !nosanitize !9
  %174 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %165, i64 %173), !nosanitize !9
  %175 = extractvalue { i64, i1 } %174, 0, !nosanitize !9
  %176 = extractvalue { i64, i1 } %174, 1, !nosanitize !9
  br i1 %176, label %177, label %178, !prof !11, !nosanitize !9

177:                                              ; preds = %168
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

178:                                              ; preds = %168
  %179 = getelementptr inbounds nuw i8, ptr %61, i64 11
  %180 = load i8, ptr %179, align 1, !tbaa !8
  %181 = zext i8 %180 to i64
  %182 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %173, i64 %181), !nosanitize !9
  %183 = extractvalue { i64, i1 } %182, 0, !nosanitize !9
  %184 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %175, i64 %183), !nosanitize !9
  %185 = extractvalue { i64, i1 } %184, 0, !nosanitize !9
  %186 = extractvalue { i64, i1 } %184, 1, !nosanitize !9
  br i1 %186, label %187, label %188, !prof !11, !nosanitize !9

187:                                              ; preds = %178
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

188:                                              ; preds = %178
  %189 = getelementptr inbounds nuw i8, ptr %61, i64 12
  %190 = load i8, ptr %189, align 1, !tbaa !8
  %191 = zext i8 %190 to i64
  %192 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %183, i64 %191), !nosanitize !9
  %193 = extractvalue { i64, i1 } %192, 0, !nosanitize !9
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %185, i64 %193), !nosanitize !9
  %195 = extractvalue { i64, i1 } %194, 0, !nosanitize !9
  %196 = extractvalue { i64, i1 } %194, 1, !nosanitize !9
  br i1 %196, label %197, label %198, !prof !11, !nosanitize !9

197:                                              ; preds = %188
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

198:                                              ; preds = %188
  %199 = getelementptr inbounds nuw i8, ptr %61, i64 13
  %200 = load i8, ptr %199, align 1, !tbaa !8
  %201 = zext i8 %200 to i64
  %202 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 %201), !nosanitize !9
  %203 = extractvalue { i64, i1 } %202, 0, !nosanitize !9
  %204 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %195, i64 %203), !nosanitize !9
  %205 = extractvalue { i64, i1 } %204, 0, !nosanitize !9
  %206 = extractvalue { i64, i1 } %204, 1, !nosanitize !9
  br i1 %206, label %207, label %208, !prof !11, !nosanitize !9

207:                                              ; preds = %198
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

208:                                              ; preds = %198
  %209 = getelementptr inbounds nuw i8, ptr %61, i64 14
  %210 = load i8, ptr %209, align 1, !tbaa !8
  %211 = zext i8 %210 to i64
  %212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %203, i64 %211), !nosanitize !9
  %213 = extractvalue { i64, i1 } %212, 0, !nosanitize !9
  %214 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %205, i64 %213), !nosanitize !9
  %215 = extractvalue { i64, i1 } %214, 0, !nosanitize !9
  %216 = extractvalue { i64, i1 } %214, 1, !nosanitize !9
  br i1 %216, label %217, label %218, !prof !11, !nosanitize !9

217:                                              ; preds = %208
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

218:                                              ; preds = %208
  %219 = getelementptr inbounds nuw i8, ptr %61, i64 15
  %220 = load i8, ptr %219, align 1, !tbaa !8
  %221 = zext i8 %220 to i64
  %222 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %213, i64 %221), !nosanitize !9
  %223 = extractvalue { i64, i1 } %222, 0, !nosanitize !9
  %224 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %215, i64 %223), !nosanitize !9
  %225 = extractvalue { i64, i1 } %224, 1, !nosanitize !9
  br i1 %225, label %226, label %227, !prof !11, !nosanitize !9

226:                                              ; preds = %218
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

227:                                              ; preds = %218
  %228 = extractvalue { i64, i1 } %224, 0, !nosanitize !9
  %229 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %230 = add nsw i32 %63, -1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %59, !llvm.loop !15

232:                                              ; preds = %227
  %233 = urem i64 %223, 65521
  %234 = urem i64 %228, 65521
  %235 = icmp ugt i64 %57, 5551
  br i1 %235, label %52, label %236, !llvm.loop !16

236:                                              ; preds = %232
  %237 = icmp eq i64 %57, 0
  br i1 %237, label %447, label %238

238:                                              ; preds = %236
  %239 = icmp samesign ugt i64 %57, 15
  br i1 %239, label %240, label %245

240:                                              ; preds = %238, %25
  %241 = phi i64 [ %5, %25 ], [ %234, %238 ]
  %242 = phi i64 [ %2, %25 ], [ %57, %238 ]
  %243 = phi ptr [ %1, %25 ], [ %58, %238 ]
  %244 = phi i64 [ %6, %25 ], [ %233, %238 ]
  br label %252

245:                                              ; preds = %421, %238
  %246 = phi i64 [ %233, %238 ], [ %417, %421 ]
  %247 = phi ptr [ %58, %238 ], [ %423, %421 ]
  %248 = phi i64 [ %57, %238 ], [ %257, %421 ]
  %249 = phi i64 [ %234, %238 ], [ %422, %421 ]
  %250 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %248, i64 1), !nosanitize !9
  %251 = extractvalue { i64, i1 } %250, 1, !nosanitize !9
  br i1 %251, label %425, label %426, !prof !10, !nosanitize !9

252:                                              ; preds = %421, %240
  %253 = phi i64 [ %422, %421 ], [ %241, %240 ]
  %254 = phi i64 [ %257, %421 ], [ %242, %240 ]
  %255 = phi ptr [ %423, %421 ], [ %243, %240 ]
  %256 = phi i64 [ %417, %421 ], [ %244, %240 ]
  %257 = add nsw i64 %254, -16
  %258 = load i8, ptr %255, align 1, !tbaa !8
  %259 = zext i8 %258 to i64
  %260 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %256, i64 %259), !nosanitize !9
  %261 = extractvalue { i64, i1 } %260, 0, !nosanitize !9
  %262 = extractvalue { i64, i1 } %260, 1, !nosanitize !9
  br i1 %262, label %263, label %264, !prof !11, !nosanitize !9

263:                                              ; preds = %252
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

264:                                              ; preds = %252
  %265 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %253, i64 %261), !nosanitize !9
  %266 = extractvalue { i64, i1 } %265, 0, !nosanitize !9
  %267 = extractvalue { i64, i1 } %265, 1, !nosanitize !9
  br i1 %267, label %268, label %269, !prof !11, !nosanitize !9

268:                                              ; preds = %264
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

269:                                              ; preds = %264
  %270 = getelementptr inbounds nuw i8, ptr %255, i64 1
  %271 = load i8, ptr %270, align 1, !tbaa !8
  %272 = zext i8 %271 to i64
  %273 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %261, i64 %272), !nosanitize !9
  %274 = extractvalue { i64, i1 } %273, 0, !nosanitize !9
  %275 = extractvalue { i64, i1 } %273, 1, !nosanitize !9
  br i1 %275, label %276, label %277, !prof !11, !nosanitize !9

276:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

277:                                              ; preds = %269
  %278 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %266, i64 %274), !nosanitize !9
  %279 = extractvalue { i64, i1 } %278, 0, !nosanitize !9
  %280 = extractvalue { i64, i1 } %278, 1, !nosanitize !9
  br i1 %280, label %281, label %282, !prof !11, !nosanitize !9

281:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

282:                                              ; preds = %277
  %283 = getelementptr inbounds nuw i8, ptr %255, i64 2
  %284 = load i8, ptr %283, align 1, !tbaa !8
  %285 = zext i8 %284 to i64
  %286 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %274, i64 %285), !nosanitize !9
  %287 = extractvalue { i64, i1 } %286, 0, !nosanitize !9
  %288 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %279, i64 %287), !nosanitize !9
  %289 = extractvalue { i64, i1 } %288, 0, !nosanitize !9
  %290 = extractvalue { i64, i1 } %288, 1, !nosanitize !9
  br i1 %290, label %291, label %292, !prof !11, !nosanitize !9

291:                                              ; preds = %282
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

292:                                              ; preds = %282
  %293 = getelementptr inbounds nuw i8, ptr %255, i64 3
  %294 = load i8, ptr %293, align 1, !tbaa !8
  %295 = zext i8 %294 to i64
  %296 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %287, i64 %295), !nosanitize !9
  %297 = extractvalue { i64, i1 } %296, 0, !nosanitize !9
  %298 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %289, i64 %297), !nosanitize !9
  %299 = extractvalue { i64, i1 } %298, 0, !nosanitize !9
  %300 = extractvalue { i64, i1 } %298, 1, !nosanitize !9
  br i1 %300, label %301, label %302, !prof !11, !nosanitize !9

301:                                              ; preds = %292
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

302:                                              ; preds = %292
  %303 = getelementptr inbounds nuw i8, ptr %255, i64 4
  %304 = load i8, ptr %303, align 1, !tbaa !8
  %305 = zext i8 %304 to i64
  %306 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %297, i64 %305), !nosanitize !9
  %307 = extractvalue { i64, i1 } %306, 0, !nosanitize !9
  %308 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %299, i64 %307), !nosanitize !9
  %309 = extractvalue { i64, i1 } %308, 0, !nosanitize !9
  %310 = extractvalue { i64, i1 } %308, 1, !nosanitize !9
  br i1 %310, label %311, label %312, !prof !11, !nosanitize !9

311:                                              ; preds = %302
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

312:                                              ; preds = %302
  %313 = getelementptr inbounds nuw i8, ptr %255, i64 5
  %314 = load i8, ptr %313, align 1, !tbaa !8
  %315 = zext i8 %314 to i64
  %316 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %307, i64 %315), !nosanitize !9
  %317 = extractvalue { i64, i1 } %316, 0, !nosanitize !9
  %318 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %309, i64 %317), !nosanitize !9
  %319 = extractvalue { i64, i1 } %318, 0, !nosanitize !9
  %320 = extractvalue { i64, i1 } %318, 1, !nosanitize !9
  br i1 %320, label %321, label %322, !prof !11, !nosanitize !9

321:                                              ; preds = %312
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

322:                                              ; preds = %312
  %323 = getelementptr inbounds nuw i8, ptr %255, i64 6
  %324 = load i8, ptr %323, align 1, !tbaa !8
  %325 = zext i8 %324 to i64
  %326 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %317, i64 %325), !nosanitize !9
  %327 = extractvalue { i64, i1 } %326, 0, !nosanitize !9
  %328 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %319, i64 %327), !nosanitize !9
  %329 = extractvalue { i64, i1 } %328, 0, !nosanitize !9
  %330 = extractvalue { i64, i1 } %328, 1, !nosanitize !9
  br i1 %330, label %331, label %332, !prof !11, !nosanitize !9

331:                                              ; preds = %322
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

332:                                              ; preds = %322
  %333 = getelementptr inbounds nuw i8, ptr %255, i64 7
  %334 = load i8, ptr %333, align 1, !tbaa !8
  %335 = zext i8 %334 to i64
  %336 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %327, i64 %335), !nosanitize !9
  %337 = extractvalue { i64, i1 } %336, 0, !nosanitize !9
  %338 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %329, i64 %337), !nosanitize !9
  %339 = extractvalue { i64, i1 } %338, 0, !nosanitize !9
  %340 = extractvalue { i64, i1 } %338, 1, !nosanitize !9
  br i1 %340, label %341, label %342, !prof !11, !nosanitize !9

341:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

342:                                              ; preds = %332
  %343 = getelementptr inbounds nuw i8, ptr %255, i64 8
  %344 = load i8, ptr %343, align 1, !tbaa !8
  %345 = zext i8 %344 to i64
  %346 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %337, i64 %345), !nosanitize !9
  %347 = extractvalue { i64, i1 } %346, 0, !nosanitize !9
  %348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %339, i64 %347), !nosanitize !9
  %349 = extractvalue { i64, i1 } %348, 0, !nosanitize !9
  %350 = extractvalue { i64, i1 } %348, 1, !nosanitize !9
  br i1 %350, label %351, label %352, !prof !11, !nosanitize !9

351:                                              ; preds = %342
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

352:                                              ; preds = %342
  %353 = getelementptr inbounds nuw i8, ptr %255, i64 9
  %354 = load i8, ptr %353, align 1, !tbaa !8
  %355 = zext i8 %354 to i64
  %356 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %347, i64 %355), !nosanitize !9
  %357 = extractvalue { i64, i1 } %356, 0, !nosanitize !9
  %358 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %349, i64 %357), !nosanitize !9
  %359 = extractvalue { i64, i1 } %358, 0, !nosanitize !9
  %360 = extractvalue { i64, i1 } %358, 1, !nosanitize !9
  br i1 %360, label %361, label %362, !prof !11, !nosanitize !9

361:                                              ; preds = %352
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

362:                                              ; preds = %352
  %363 = getelementptr inbounds nuw i8, ptr %255, i64 10
  %364 = load i8, ptr %363, align 1, !tbaa !8
  %365 = zext i8 %364 to i64
  %366 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %357, i64 %365), !nosanitize !9
  %367 = extractvalue { i64, i1 } %366, 0, !nosanitize !9
  %368 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %359, i64 %367), !nosanitize !9
  %369 = extractvalue { i64, i1 } %368, 0, !nosanitize !9
  %370 = extractvalue { i64, i1 } %368, 1, !nosanitize !9
  br i1 %370, label %371, label %372, !prof !11, !nosanitize !9

371:                                              ; preds = %362
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

372:                                              ; preds = %362
  %373 = getelementptr inbounds nuw i8, ptr %255, i64 11
  %374 = load i8, ptr %373, align 1, !tbaa !8
  %375 = zext i8 %374 to i64
  %376 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %367, i64 %375), !nosanitize !9
  %377 = extractvalue { i64, i1 } %376, 0, !nosanitize !9
  %378 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %369, i64 %377), !nosanitize !9
  %379 = extractvalue { i64, i1 } %378, 0, !nosanitize !9
  %380 = extractvalue { i64, i1 } %378, 1, !nosanitize !9
  br i1 %380, label %381, label %382, !prof !11, !nosanitize !9

381:                                              ; preds = %372
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

382:                                              ; preds = %372
  %383 = getelementptr inbounds nuw i8, ptr %255, i64 12
  %384 = load i8, ptr %383, align 1, !tbaa !8
  %385 = zext i8 %384 to i64
  %386 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %377, i64 %385), !nosanitize !9
  %387 = extractvalue { i64, i1 } %386, 0, !nosanitize !9
  %388 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %379, i64 %387), !nosanitize !9
  %389 = extractvalue { i64, i1 } %388, 0, !nosanitize !9
  %390 = extractvalue { i64, i1 } %388, 1, !nosanitize !9
  br i1 %390, label %391, label %392, !prof !11, !nosanitize !9

391:                                              ; preds = %382
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

392:                                              ; preds = %382
  %393 = getelementptr inbounds nuw i8, ptr %255, i64 13
  %394 = load i8, ptr %393, align 1, !tbaa !8
  %395 = zext i8 %394 to i64
  %396 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %387, i64 %395), !nosanitize !9
  %397 = extractvalue { i64, i1 } %396, 0, !nosanitize !9
  %398 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %389, i64 %397), !nosanitize !9
  %399 = extractvalue { i64, i1 } %398, 0, !nosanitize !9
  %400 = extractvalue { i64, i1 } %398, 1, !nosanitize !9
  br i1 %400, label %401, label %402, !prof !11, !nosanitize !9

401:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

402:                                              ; preds = %392
  %403 = getelementptr inbounds nuw i8, ptr %255, i64 14
  %404 = load i8, ptr %403, align 1, !tbaa !8
  %405 = zext i8 %404 to i64
  %406 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %397, i64 %405), !nosanitize !9
  %407 = extractvalue { i64, i1 } %406, 0, !nosanitize !9
  %408 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %399, i64 %407), !nosanitize !9
  %409 = extractvalue { i64, i1 } %408, 0, !nosanitize !9
  %410 = extractvalue { i64, i1 } %408, 1, !nosanitize !9
  br i1 %410, label %411, label %412, !prof !11, !nosanitize !9

411:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

412:                                              ; preds = %402
  %413 = getelementptr inbounds nuw i8, ptr %255, i64 15
  %414 = load i8, ptr %413, align 1, !tbaa !8
  %415 = zext i8 %414 to i64
  %416 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %407, i64 %415), !nosanitize !9
  %417 = extractvalue { i64, i1 } %416, 0, !nosanitize !9
  %418 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %409, i64 %417), !nosanitize !9
  %419 = extractvalue { i64, i1 } %418, 1, !nosanitize !9
  br i1 %419, label %420, label %421, !prof !11, !nosanitize !9

420:                                              ; preds = %412
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

421:                                              ; preds = %412
  %422 = extractvalue { i64, i1 } %418, 0, !nosanitize !9
  %423 = getelementptr inbounds nuw i8, ptr %255, i64 16
  %424 = icmp ugt i64 %257, 15
  br i1 %424, label %252, label %245, !llvm.loop !17

425:                                              ; preds = %443, %245
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !9
  unreachable, !nosanitize !9

426:                                              ; preds = %443, %245
  %427 = phi { i64, i1 } [ %445, %443 ], [ %250, %245 ]
  %428 = phi i64 [ %444, %443 ], [ %249, %245 ]
  %429 = phi ptr [ %432, %443 ], [ %247, %245 ]
  %430 = phi i64 [ %436, %443 ], [ %246, %245 ]
  %431 = extractvalue { i64, i1 } %427, 0
  %432 = getelementptr inbounds nuw i8, ptr %429, i64 1
  %433 = load i8, ptr %429, align 1, !tbaa !8
  %434 = zext i8 %433 to i64
  %435 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %430, i64 %434), !nosanitize !9
  %436 = extractvalue { i64, i1 } %435, 0, !nosanitize !9
  %437 = extractvalue { i64, i1 } %435, 1, !nosanitize !9
  br i1 %437, label %438, label %439, !prof !11, !nosanitize !9

438:                                              ; preds = %426
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

439:                                              ; preds = %426
  %440 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %428, i64 %436), !nosanitize !9
  %441 = extractvalue { i64, i1 } %440, 1, !nosanitize !9
  br i1 %441, label %442, label %443, !prof !11, !nosanitize !9

442:                                              ; preds = %439
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

443:                                              ; preds = %439
  %444 = extractvalue { i64, i1 } %440, 0, !nosanitize !9
  %445 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %431, i64 1), !nosanitize !9
  %446 = extractvalue { i64, i1 } %445, 1, !nosanitize !9
  br i1 %446, label %425, label %426, !prof !12, !llvm.loop !18, !nosanitize !9

447:                                              ; preds = %236
  %448 = shl nuw nsw i64 %234, 16
  %449 = or disjoint i64 %448, %233
  br label %450

450:                                              ; preds = %447, %21, %8
  %451 = phi i64 [ %20, %8 ], [ %449, %447 ], [ 1, %21 ]
  ret i64 %451
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @adler32(i64 noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %2 to i64
  %5 = lshr i64 %0, 16
  %6 = and i64 %5, 65535
  %7 = and i64 %0, 65535
  %8 = icmp eq i32 %2, 1
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = load i8, ptr %1, align 1, !tbaa !8
  %11 = zext i8 %10 to i64
  %12 = add nuw nsw i64 %7, %11
  %13 = icmp samesign ugt i64 %12, 65520
  %14 = add nsw i64 %12, -65521
  %15 = select i1 %13, i64 %14, i64 %12
  %16 = add nsw i64 %15, %6
  %17 = icmp ugt i64 %16, 65520
  %18 = shl nsw i64 %16, 16
  %19 = add nsw i64 %18, -4293984256
  %20 = select i1 %17, i64 %19, i64 %18
  %21 = or i64 %20, %15
  br label %451

22:                                               ; preds = %3
  %23 = icmp eq ptr %1, null
  br i1 %23, label %451, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %2, 16
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = icmp ugt i32 %2, 5551
  br i1 %27, label %58, label %28

28:                                               ; preds = %244, %26
  %29 = phi i64 [ %6, %26 ], [ %240, %244 ]
  %30 = phi i64 [ %4, %26 ], [ %63, %244 ]
  %31 = phi ptr [ %1, %26 ], [ %64, %244 ]
  %32 = phi i64 [ %7, %26 ], [ %239, %244 ]
  br label %253

33:                                               ; preds = %24
  %34 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 1), !nosanitize !9
  %35 = extractvalue { i64, i1 } %34, 1, !nosanitize !9
  br i1 %35, label %36, label %37, !prof !10, !nosanitize !9

36:                                               ; preds = %54, %33
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !9
  unreachable, !nosanitize !9

37:                                               ; preds = %54, %33
  %38 = phi { i64, i1 } [ %56, %54 ], [ %34, %33 ]
  %39 = phi i64 [ %55, %54 ], [ %6, %33 ]
  %40 = phi ptr [ %43, %54 ], [ %1, %33 ]
  %41 = phi i64 [ %47, %54 ], [ %7, %33 ]
  %42 = extractvalue { i64, i1 } %38, 0
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 1
  %44 = load i8, ptr %40, align 1, !tbaa !8
  %45 = zext i8 %44 to i64
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %41, i64 %45), !nosanitize !9
  %47 = extractvalue { i64, i1 } %46, 0, !nosanitize !9
  %48 = extractvalue { i64, i1 } %46, 1, !nosanitize !9
  br i1 %48, label %49, label %50, !prof !11, !nosanitize !9

49:                                               ; preds = %37
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

50:                                               ; preds = %37
  %51 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %47), !nosanitize !9
  %52 = extractvalue { i64, i1 } %51, 1, !nosanitize !9
  br i1 %52, label %53, label %54, !prof !11, !nosanitize !9

53:                                               ; preds = %50
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

54:                                               ; preds = %50
  %55 = extractvalue { i64, i1 } %51, 0, !nosanitize !9
  %56 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %42, i64 1), !nosanitize !9
  %57 = extractvalue { i64, i1 } %56, 1, !nosanitize !9
  br i1 %57, label %36, label %37, !prof !12, !llvm.loop !13, !nosanitize !9

58:                                               ; preds = %238, %26
  %59 = phi i64 [ %240, %238 ], [ %6, %26 ]
  %60 = phi i64 [ %63, %238 ], [ %4, %26 ]
  %61 = phi ptr [ %64, %238 ], [ %1, %26 ]
  %62 = phi i64 [ %239, %238 ], [ %7, %26 ]
  %63 = add i64 %60, -5552
  %64 = getelementptr i8, ptr %61, i64 5552
  br label %65

65:                                               ; preds = %233, %58
  %66 = phi i64 [ %62, %58 ], [ %229, %233 ]
  %67 = phi ptr [ %61, %58 ], [ %235, %233 ]
  %68 = phi i64 [ %59, %58 ], [ %234, %233 ]
  %69 = phi i32 [ 347, %58 ], [ %236, %233 ]
  %70 = load i8, ptr %67, align 1, !tbaa !8
  %71 = zext i8 %70 to i64
  %72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %66, i64 %71), !nosanitize !9
  %73 = extractvalue { i64, i1 } %72, 0, !nosanitize !9
  %74 = extractvalue { i64, i1 } %72, 1, !nosanitize !9
  br i1 %74, label %75, label %76, !prof !11, !nosanitize !9

75:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

76:                                               ; preds = %65
  %77 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %68, i64 %73), !nosanitize !9
  %78 = extractvalue { i64, i1 } %77, 0, !nosanitize !9
  %79 = extractvalue { i64, i1 } %77, 1, !nosanitize !9
  br i1 %79, label %80, label %81, !prof !11, !nosanitize !9

80:                                               ; preds = %76
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %67, i64 1
  %83 = load i8, ptr %82, align 1, !tbaa !8
  %84 = zext i8 %83 to i64
  %85 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 %84), !nosanitize !9
  %86 = extractvalue { i64, i1 } %85, 0, !nosanitize !9
  %87 = extractvalue { i64, i1 } %85, 1, !nosanitize !9
  br i1 %87, label %88, label %89, !prof !11, !nosanitize !9

88:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

89:                                               ; preds = %81
  %90 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %78, i64 %86), !nosanitize !9
  %91 = extractvalue { i64, i1 } %90, 0, !nosanitize !9
  %92 = extractvalue { i64, i1 } %90, 1, !nosanitize !9
  br i1 %92, label %93, label %94, !prof !11, !nosanitize !9

93:                                               ; preds = %89
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

94:                                               ; preds = %89
  %95 = getelementptr inbounds nuw i8, ptr %67, i64 2
  %96 = load i8, ptr %95, align 1, !tbaa !8
  %97 = zext i8 %96 to i64
  %98 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 %97), !nosanitize !9
  %99 = extractvalue { i64, i1 } %98, 0, !nosanitize !9
  %100 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %91, i64 %99), !nosanitize !9
  %101 = extractvalue { i64, i1 } %100, 0, !nosanitize !9
  %102 = extractvalue { i64, i1 } %100, 1, !nosanitize !9
  br i1 %102, label %103, label %104, !prof !11, !nosanitize !9

103:                                              ; preds = %94
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

104:                                              ; preds = %94
  %105 = getelementptr inbounds nuw i8, ptr %67, i64 3
  %106 = load i8, ptr %105, align 1, !tbaa !8
  %107 = zext i8 %106 to i64
  %108 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %99, i64 %107), !nosanitize !9
  %109 = extractvalue { i64, i1 } %108, 0, !nosanitize !9
  %110 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %101, i64 %109), !nosanitize !9
  %111 = extractvalue { i64, i1 } %110, 0, !nosanitize !9
  %112 = extractvalue { i64, i1 } %110, 1, !nosanitize !9
  br i1 %112, label %113, label %114, !prof !11, !nosanitize !9

113:                                              ; preds = %104
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

114:                                              ; preds = %104
  %115 = getelementptr inbounds nuw i8, ptr %67, i64 4
  %116 = load i8, ptr %115, align 1, !tbaa !8
  %117 = zext i8 %116 to i64
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %109, i64 %117), !nosanitize !9
  %119 = extractvalue { i64, i1 } %118, 0, !nosanitize !9
  %120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %111, i64 %119), !nosanitize !9
  %121 = extractvalue { i64, i1 } %120, 0, !nosanitize !9
  %122 = extractvalue { i64, i1 } %120, 1, !nosanitize !9
  br i1 %122, label %123, label %124, !prof !11, !nosanitize !9

123:                                              ; preds = %114
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

124:                                              ; preds = %114
  %125 = getelementptr inbounds nuw i8, ptr %67, i64 5
  %126 = load i8, ptr %125, align 1, !tbaa !8
  %127 = zext i8 %126 to i64
  %128 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %119, i64 %127), !nosanitize !9
  %129 = extractvalue { i64, i1 } %128, 0, !nosanitize !9
  %130 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %121, i64 %129), !nosanitize !9
  %131 = extractvalue { i64, i1 } %130, 0, !nosanitize !9
  %132 = extractvalue { i64, i1 } %130, 1, !nosanitize !9
  br i1 %132, label %133, label %134, !prof !11, !nosanitize !9

133:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

134:                                              ; preds = %124
  %135 = getelementptr inbounds nuw i8, ptr %67, i64 6
  %136 = load i8, ptr %135, align 1, !tbaa !8
  %137 = zext i8 %136 to i64
  %138 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %129, i64 %137), !nosanitize !9
  %139 = extractvalue { i64, i1 } %138, 0, !nosanitize !9
  %140 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %131, i64 %139), !nosanitize !9
  %141 = extractvalue { i64, i1 } %140, 0, !nosanitize !9
  %142 = extractvalue { i64, i1 } %140, 1, !nosanitize !9
  br i1 %142, label %143, label %144, !prof !11, !nosanitize !9

143:                                              ; preds = %134
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

144:                                              ; preds = %134
  %145 = getelementptr inbounds nuw i8, ptr %67, i64 7
  %146 = load i8, ptr %145, align 1, !tbaa !8
  %147 = zext i8 %146 to i64
  %148 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %139, i64 %147), !nosanitize !9
  %149 = extractvalue { i64, i1 } %148, 0, !nosanitize !9
  %150 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %141, i64 %149), !nosanitize !9
  %151 = extractvalue { i64, i1 } %150, 0, !nosanitize !9
  %152 = extractvalue { i64, i1 } %150, 1, !nosanitize !9
  br i1 %152, label %153, label %154, !prof !11, !nosanitize !9

153:                                              ; preds = %144
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

154:                                              ; preds = %144
  %155 = getelementptr inbounds nuw i8, ptr %67, i64 8
  %156 = load i8, ptr %155, align 1, !tbaa !8
  %157 = zext i8 %156 to i64
  %158 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %149, i64 %157), !nosanitize !9
  %159 = extractvalue { i64, i1 } %158, 0, !nosanitize !9
  %160 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %151, i64 %159), !nosanitize !9
  %161 = extractvalue { i64, i1 } %160, 0, !nosanitize !9
  %162 = extractvalue { i64, i1 } %160, 1, !nosanitize !9
  br i1 %162, label %163, label %164, !prof !11, !nosanitize !9

163:                                              ; preds = %154
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

164:                                              ; preds = %154
  %165 = getelementptr inbounds nuw i8, ptr %67, i64 9
  %166 = load i8, ptr %165, align 1, !tbaa !8
  %167 = zext i8 %166 to i64
  %168 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %159, i64 %167), !nosanitize !9
  %169 = extractvalue { i64, i1 } %168, 0, !nosanitize !9
  %170 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %161, i64 %169), !nosanitize !9
  %171 = extractvalue { i64, i1 } %170, 0, !nosanitize !9
  %172 = extractvalue { i64, i1 } %170, 1, !nosanitize !9
  br i1 %172, label %173, label %174, !prof !11, !nosanitize !9

173:                                              ; preds = %164
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

174:                                              ; preds = %164
  %175 = getelementptr inbounds nuw i8, ptr %67, i64 10
  %176 = load i8, ptr %175, align 1, !tbaa !8
  %177 = zext i8 %176 to i64
  %178 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %169, i64 %177), !nosanitize !9
  %179 = extractvalue { i64, i1 } %178, 0, !nosanitize !9
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %171, i64 %179), !nosanitize !9
  %181 = extractvalue { i64, i1 } %180, 0, !nosanitize !9
  %182 = extractvalue { i64, i1 } %180, 1, !nosanitize !9
  br i1 %182, label %183, label %184, !prof !11, !nosanitize !9

183:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

184:                                              ; preds = %174
  %185 = getelementptr inbounds nuw i8, ptr %67, i64 11
  %186 = load i8, ptr %185, align 1, !tbaa !8
  %187 = zext i8 %186 to i64
  %188 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %179, i64 %187), !nosanitize !9
  %189 = extractvalue { i64, i1 } %188, 0, !nosanitize !9
  %190 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %181, i64 %189), !nosanitize !9
  %191 = extractvalue { i64, i1 } %190, 0, !nosanitize !9
  %192 = extractvalue { i64, i1 } %190, 1, !nosanitize !9
  br i1 %192, label %193, label %194, !prof !11, !nosanitize !9

193:                                              ; preds = %184
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

194:                                              ; preds = %184
  %195 = getelementptr inbounds nuw i8, ptr %67, i64 12
  %196 = load i8, ptr %195, align 1, !tbaa !8
  %197 = zext i8 %196 to i64
  %198 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %189, i64 %197), !nosanitize !9
  %199 = extractvalue { i64, i1 } %198, 0, !nosanitize !9
  %200 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %191, i64 %199), !nosanitize !9
  %201 = extractvalue { i64, i1 } %200, 0, !nosanitize !9
  %202 = extractvalue { i64, i1 } %200, 1, !nosanitize !9
  br i1 %202, label %203, label %204, !prof !11, !nosanitize !9

203:                                              ; preds = %194
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

204:                                              ; preds = %194
  %205 = getelementptr inbounds nuw i8, ptr %67, i64 13
  %206 = load i8, ptr %205, align 1, !tbaa !8
  %207 = zext i8 %206 to i64
  %208 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %199, i64 %207), !nosanitize !9
  %209 = extractvalue { i64, i1 } %208, 0, !nosanitize !9
  %210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %201, i64 %209), !nosanitize !9
  %211 = extractvalue { i64, i1 } %210, 0, !nosanitize !9
  %212 = extractvalue { i64, i1 } %210, 1, !nosanitize !9
  br i1 %212, label %213, label %214, !prof !11, !nosanitize !9

213:                                              ; preds = %204
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

214:                                              ; preds = %204
  %215 = getelementptr inbounds nuw i8, ptr %67, i64 14
  %216 = load i8, ptr %215, align 1, !tbaa !8
  %217 = zext i8 %216 to i64
  %218 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %209, i64 %217), !nosanitize !9
  %219 = extractvalue { i64, i1 } %218, 0, !nosanitize !9
  %220 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %211, i64 %219), !nosanitize !9
  %221 = extractvalue { i64, i1 } %220, 0, !nosanitize !9
  %222 = extractvalue { i64, i1 } %220, 1, !nosanitize !9
  br i1 %222, label %223, label %224, !prof !11, !nosanitize !9

223:                                              ; preds = %214
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

224:                                              ; preds = %214
  %225 = getelementptr inbounds nuw i8, ptr %67, i64 15
  %226 = load i8, ptr %225, align 1, !tbaa !8
  %227 = zext i8 %226 to i64
  %228 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %219, i64 %227), !nosanitize !9
  %229 = extractvalue { i64, i1 } %228, 0, !nosanitize !9
  %230 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %221, i64 %229), !nosanitize !9
  %231 = extractvalue { i64, i1 } %230, 1, !nosanitize !9
  br i1 %231, label %232, label %233, !prof !11, !nosanitize !9

232:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

233:                                              ; preds = %224
  %234 = extractvalue { i64, i1 } %230, 0, !nosanitize !9
  %235 = getelementptr inbounds nuw i8, ptr %67, i64 16
  %236 = add nsw i32 %69, -1
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %65, !llvm.loop !15

238:                                              ; preds = %233
  %239 = urem i64 %229, 65521
  %240 = urem i64 %234, 65521
  %241 = icmp ugt i64 %63, 5551
  br i1 %241, label %58, label %242, !llvm.loop !16

242:                                              ; preds = %238
  %243 = icmp eq i64 %63, 0
  br i1 %243, label %448, label %244

244:                                              ; preds = %242
  %245 = icmp samesign ugt i64 %63, 15
  br i1 %245, label %28, label %246

246:                                              ; preds = %422, %244
  %247 = phi i64 [ %239, %244 ], [ %418, %422 ]
  %248 = phi ptr [ %64, %244 ], [ %424, %422 ]
  %249 = phi i64 [ %63, %244 ], [ %258, %422 ]
  %250 = phi i64 [ %240, %244 ], [ %423, %422 ]
  %251 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %249, i64 1), !nosanitize !9
  %252 = extractvalue { i64, i1 } %251, 1, !nosanitize !9
  br i1 %252, label %426, label %427, !prof !10, !nosanitize !9

253:                                              ; preds = %422, %28
  %254 = phi i64 [ %423, %422 ], [ %29, %28 ]
  %255 = phi i64 [ %258, %422 ], [ %30, %28 ]
  %256 = phi ptr [ %424, %422 ], [ %31, %28 ]
  %257 = phi i64 [ %418, %422 ], [ %32, %28 ]
  %258 = add nsw i64 %255, -16
  %259 = load i8, ptr %256, align 1, !tbaa !8
  %260 = zext i8 %259 to i64
  %261 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %257, i64 %260), !nosanitize !9
  %262 = extractvalue { i64, i1 } %261, 0, !nosanitize !9
  %263 = extractvalue { i64, i1 } %261, 1, !nosanitize !9
  br i1 %263, label %264, label %265, !prof !11, !nosanitize !9

264:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

265:                                              ; preds = %253
  %266 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %254, i64 %262), !nosanitize !9
  %267 = extractvalue { i64, i1 } %266, 0, !nosanitize !9
  %268 = extractvalue { i64, i1 } %266, 1, !nosanitize !9
  br i1 %268, label %269, label %270, !prof !11, !nosanitize !9

269:                                              ; preds = %265
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

270:                                              ; preds = %265
  %271 = getelementptr inbounds nuw i8, ptr %256, i64 1
  %272 = load i8, ptr %271, align 1, !tbaa !8
  %273 = zext i8 %272 to i64
  %274 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %262, i64 %273), !nosanitize !9
  %275 = extractvalue { i64, i1 } %274, 0, !nosanitize !9
  %276 = extractvalue { i64, i1 } %274, 1, !nosanitize !9
  br i1 %276, label %277, label %278, !prof !11, !nosanitize !9

277:                                              ; preds = %270
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

278:                                              ; preds = %270
  %279 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %267, i64 %275), !nosanitize !9
  %280 = extractvalue { i64, i1 } %279, 0, !nosanitize !9
  %281 = extractvalue { i64, i1 } %279, 1, !nosanitize !9
  br i1 %281, label %282, label %283, !prof !11, !nosanitize !9

282:                                              ; preds = %278
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

283:                                              ; preds = %278
  %284 = getelementptr inbounds nuw i8, ptr %256, i64 2
  %285 = load i8, ptr %284, align 1, !tbaa !8
  %286 = zext i8 %285 to i64
  %287 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %275, i64 %286), !nosanitize !9
  %288 = extractvalue { i64, i1 } %287, 0, !nosanitize !9
  %289 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %280, i64 %288), !nosanitize !9
  %290 = extractvalue { i64, i1 } %289, 0, !nosanitize !9
  %291 = extractvalue { i64, i1 } %289, 1, !nosanitize !9
  br i1 %291, label %292, label %293, !prof !11, !nosanitize !9

292:                                              ; preds = %283
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

293:                                              ; preds = %283
  %294 = getelementptr inbounds nuw i8, ptr %256, i64 3
  %295 = load i8, ptr %294, align 1, !tbaa !8
  %296 = zext i8 %295 to i64
  %297 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %288, i64 %296), !nosanitize !9
  %298 = extractvalue { i64, i1 } %297, 0, !nosanitize !9
  %299 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %290, i64 %298), !nosanitize !9
  %300 = extractvalue { i64, i1 } %299, 0, !nosanitize !9
  %301 = extractvalue { i64, i1 } %299, 1, !nosanitize !9
  br i1 %301, label %302, label %303, !prof !11, !nosanitize !9

302:                                              ; preds = %293
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

303:                                              ; preds = %293
  %304 = getelementptr inbounds nuw i8, ptr %256, i64 4
  %305 = load i8, ptr %304, align 1, !tbaa !8
  %306 = zext i8 %305 to i64
  %307 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %298, i64 %306), !nosanitize !9
  %308 = extractvalue { i64, i1 } %307, 0, !nosanitize !9
  %309 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %300, i64 %308), !nosanitize !9
  %310 = extractvalue { i64, i1 } %309, 0, !nosanitize !9
  %311 = extractvalue { i64, i1 } %309, 1, !nosanitize !9
  br i1 %311, label %312, label %313, !prof !11, !nosanitize !9

312:                                              ; preds = %303
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

313:                                              ; preds = %303
  %314 = getelementptr inbounds nuw i8, ptr %256, i64 5
  %315 = load i8, ptr %314, align 1, !tbaa !8
  %316 = zext i8 %315 to i64
  %317 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %308, i64 %316), !nosanitize !9
  %318 = extractvalue { i64, i1 } %317, 0, !nosanitize !9
  %319 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %310, i64 %318), !nosanitize !9
  %320 = extractvalue { i64, i1 } %319, 0, !nosanitize !9
  %321 = extractvalue { i64, i1 } %319, 1, !nosanitize !9
  br i1 %321, label %322, label %323, !prof !11, !nosanitize !9

322:                                              ; preds = %313
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

323:                                              ; preds = %313
  %324 = getelementptr inbounds nuw i8, ptr %256, i64 6
  %325 = load i8, ptr %324, align 1, !tbaa !8
  %326 = zext i8 %325 to i64
  %327 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %318, i64 %326), !nosanitize !9
  %328 = extractvalue { i64, i1 } %327, 0, !nosanitize !9
  %329 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %320, i64 %328), !nosanitize !9
  %330 = extractvalue { i64, i1 } %329, 0, !nosanitize !9
  %331 = extractvalue { i64, i1 } %329, 1, !nosanitize !9
  br i1 %331, label %332, label %333, !prof !11, !nosanitize !9

332:                                              ; preds = %323
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

333:                                              ; preds = %323
  %334 = getelementptr inbounds nuw i8, ptr %256, i64 7
  %335 = load i8, ptr %334, align 1, !tbaa !8
  %336 = zext i8 %335 to i64
  %337 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %328, i64 %336), !nosanitize !9
  %338 = extractvalue { i64, i1 } %337, 0, !nosanitize !9
  %339 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %330, i64 %338), !nosanitize !9
  %340 = extractvalue { i64, i1 } %339, 0, !nosanitize !9
  %341 = extractvalue { i64, i1 } %339, 1, !nosanitize !9
  br i1 %341, label %342, label %343, !prof !11, !nosanitize !9

342:                                              ; preds = %333
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

343:                                              ; preds = %333
  %344 = getelementptr inbounds nuw i8, ptr %256, i64 8
  %345 = load i8, ptr %344, align 1, !tbaa !8
  %346 = zext i8 %345 to i64
  %347 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %338, i64 %346), !nosanitize !9
  %348 = extractvalue { i64, i1 } %347, 0, !nosanitize !9
  %349 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %340, i64 %348), !nosanitize !9
  %350 = extractvalue { i64, i1 } %349, 0, !nosanitize !9
  %351 = extractvalue { i64, i1 } %349, 1, !nosanitize !9
  br i1 %351, label %352, label %353, !prof !11, !nosanitize !9

352:                                              ; preds = %343
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

353:                                              ; preds = %343
  %354 = getelementptr inbounds nuw i8, ptr %256, i64 9
  %355 = load i8, ptr %354, align 1, !tbaa !8
  %356 = zext i8 %355 to i64
  %357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %348, i64 %356), !nosanitize !9
  %358 = extractvalue { i64, i1 } %357, 0, !nosanitize !9
  %359 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %350, i64 %358), !nosanitize !9
  %360 = extractvalue { i64, i1 } %359, 0, !nosanitize !9
  %361 = extractvalue { i64, i1 } %359, 1, !nosanitize !9
  br i1 %361, label %362, label %363, !prof !11, !nosanitize !9

362:                                              ; preds = %353
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

363:                                              ; preds = %353
  %364 = getelementptr inbounds nuw i8, ptr %256, i64 10
  %365 = load i8, ptr %364, align 1, !tbaa !8
  %366 = zext i8 %365 to i64
  %367 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %358, i64 %366), !nosanitize !9
  %368 = extractvalue { i64, i1 } %367, 0, !nosanitize !9
  %369 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %360, i64 %368), !nosanitize !9
  %370 = extractvalue { i64, i1 } %369, 0, !nosanitize !9
  %371 = extractvalue { i64, i1 } %369, 1, !nosanitize !9
  br i1 %371, label %372, label %373, !prof !11, !nosanitize !9

372:                                              ; preds = %363
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

373:                                              ; preds = %363
  %374 = getelementptr inbounds nuw i8, ptr %256, i64 11
  %375 = load i8, ptr %374, align 1, !tbaa !8
  %376 = zext i8 %375 to i64
  %377 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %368, i64 %376), !nosanitize !9
  %378 = extractvalue { i64, i1 } %377, 0, !nosanitize !9
  %379 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %370, i64 %378), !nosanitize !9
  %380 = extractvalue { i64, i1 } %379, 0, !nosanitize !9
  %381 = extractvalue { i64, i1 } %379, 1, !nosanitize !9
  br i1 %381, label %382, label %383, !prof !11, !nosanitize !9

382:                                              ; preds = %373
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

383:                                              ; preds = %373
  %384 = getelementptr inbounds nuw i8, ptr %256, i64 12
  %385 = load i8, ptr %384, align 1, !tbaa !8
  %386 = zext i8 %385 to i64
  %387 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %378, i64 %386), !nosanitize !9
  %388 = extractvalue { i64, i1 } %387, 0, !nosanitize !9
  %389 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %380, i64 %388), !nosanitize !9
  %390 = extractvalue { i64, i1 } %389, 0, !nosanitize !9
  %391 = extractvalue { i64, i1 } %389, 1, !nosanitize !9
  br i1 %391, label %392, label %393, !prof !11, !nosanitize !9

392:                                              ; preds = %383
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

393:                                              ; preds = %383
  %394 = getelementptr inbounds nuw i8, ptr %256, i64 13
  %395 = load i8, ptr %394, align 1, !tbaa !8
  %396 = zext i8 %395 to i64
  %397 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %388, i64 %396), !nosanitize !9
  %398 = extractvalue { i64, i1 } %397, 0, !nosanitize !9
  %399 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %390, i64 %398), !nosanitize !9
  %400 = extractvalue { i64, i1 } %399, 0, !nosanitize !9
  %401 = extractvalue { i64, i1 } %399, 1, !nosanitize !9
  br i1 %401, label %402, label %403, !prof !11, !nosanitize !9

402:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

403:                                              ; preds = %393
  %404 = getelementptr inbounds nuw i8, ptr %256, i64 14
  %405 = load i8, ptr %404, align 1, !tbaa !8
  %406 = zext i8 %405 to i64
  %407 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %398, i64 %406), !nosanitize !9
  %408 = extractvalue { i64, i1 } %407, 0, !nosanitize !9
  %409 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %400, i64 %408), !nosanitize !9
  %410 = extractvalue { i64, i1 } %409, 0, !nosanitize !9
  %411 = extractvalue { i64, i1 } %409, 1, !nosanitize !9
  br i1 %411, label %412, label %413, !prof !11, !nosanitize !9

412:                                              ; preds = %403
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

413:                                              ; preds = %403
  %414 = getelementptr inbounds nuw i8, ptr %256, i64 15
  %415 = load i8, ptr %414, align 1, !tbaa !8
  %416 = zext i8 %415 to i64
  %417 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %408, i64 %416), !nosanitize !9
  %418 = extractvalue { i64, i1 } %417, 0, !nosanitize !9
  %419 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %410, i64 %418), !nosanitize !9
  %420 = extractvalue { i64, i1 } %419, 1, !nosanitize !9
  br i1 %420, label %421, label %422, !prof !11, !nosanitize !9

421:                                              ; preds = %413
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

422:                                              ; preds = %413
  %423 = extractvalue { i64, i1 } %419, 0, !nosanitize !9
  %424 = getelementptr inbounds nuw i8, ptr %256, i64 16
  %425 = icmp ugt i64 %258, 15
  br i1 %425, label %253, label %246, !llvm.loop !17

426:                                              ; preds = %444, %246
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !9
  unreachable, !nosanitize !9

427:                                              ; preds = %444, %246
  %428 = phi { i64, i1 } [ %446, %444 ], [ %251, %246 ]
  %429 = phi i64 [ %445, %444 ], [ %250, %246 ]
  %430 = phi ptr [ %433, %444 ], [ %248, %246 ]
  %431 = phi i64 [ %437, %444 ], [ %247, %246 ]
  %432 = extractvalue { i64, i1 } %428, 0
  %433 = getelementptr inbounds nuw i8, ptr %430, i64 1
  %434 = load i8, ptr %430, align 1, !tbaa !8
  %435 = zext i8 %434 to i64
  %436 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %431, i64 %435), !nosanitize !9
  %437 = extractvalue { i64, i1 } %436, 0, !nosanitize !9
  %438 = extractvalue { i64, i1 } %436, 1, !nosanitize !9
  br i1 %438, label %439, label %440, !prof !11, !nosanitize !9

439:                                              ; preds = %427
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

440:                                              ; preds = %427
  %441 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %429, i64 %437), !nosanitize !9
  %442 = extractvalue { i64, i1 } %441, 1, !nosanitize !9
  br i1 %442, label %443, label %444, !prof !11, !nosanitize !9

443:                                              ; preds = %440
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

444:                                              ; preds = %440
  %445 = extractvalue { i64, i1 } %441, 0, !nosanitize !9
  %446 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %432, i64 1), !nosanitize !9
  %447 = extractvalue { i64, i1 } %446, 1, !nosanitize !9
  br i1 %447, label %426, label %427, !prof !12, !llvm.loop !18, !nosanitize !9

448:                                              ; preds = %242
  %449 = shl nuw nsw i64 %240, 16
  %450 = or disjoint i64 %449, %239
  br label %451

451:                                              ; preds = %448, %22, %9
  %452 = phi i64 [ %21, %9 ], [ %450, %448 ], [ 1, %22 ]
  ret i64 %452
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @adler32_combine(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp slt i64 %2, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = urem i64 %2, 65521
  %7 = and i64 %0, 65535
  %8 = mul nuw nsw i64 %6, %7
  %9 = trunc nuw i64 %8 to i32
  %10 = urem i32 %9, 65521
  %11 = zext nneg i32 %10 to i64
  %12 = and i64 %1, 65535
  %13 = add nuw nsw i64 %7, 65520
  %14 = add nuw nsw i64 %13, %12
  %15 = lshr i64 %0, 16
  %16 = and i64 %15, 65535
  %17 = lshr i64 %1, 16
  %18 = and i64 %17, 65535
  %19 = add nuw nsw i64 %16, 65521
  %20 = add nuw nsw i64 %19, %18
  %21 = sub nuw nsw i64 %20, %6
  %22 = add nuw nsw i64 %21, %11
  %23 = icmp samesign ugt i64 %14, 65520
  %24 = add nsw i64 %14, -65521
  %25 = select i1 %23, i64 %24, i64 65520
  %26 = icmp samesign ugt i64 %25, 65520
  %27 = add nsw i64 %25, -65521
  %28 = select i1 %26, i64 %27, i64 %25
  %29 = icmp samesign ugt i64 %22, 131041
  %30 = add nsw i64 %22, -131042
  %31 = select i1 %29, i64 %30, i64 %22
  %32 = icmp ugt i64 %31, 65520
  %33 = shl nsw i64 %31, 16
  %34 = add nsw i64 %33, -4293984256
  %35 = select i1 %32, i64 %34, i64 %33
  %36 = or i64 %35, %28
  br label %37

37:                                               ; preds = %5, %3
  %38 = phi i64 [ %36, %5 ], [ 4294967295, %3 ]
  ret i64 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @adler32_combine64(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = icmp slt i64 %2, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = urem i64 %2, 65521
  %7 = and i64 %0, 65535
  %8 = mul nuw nsw i64 %6, %7
  %9 = trunc nuw i64 %8 to i32
  %10 = urem i32 %9, 65521
  %11 = zext nneg i32 %10 to i64
  %12 = and i64 %1, 65535
  %13 = add nuw nsw i64 %7, 65520
  %14 = add nuw nsw i64 %13, %12
  %15 = lshr i64 %0, 16
  %16 = and i64 %15, 65535
  %17 = lshr i64 %1, 16
  %18 = and i64 %17, 65535
  %19 = add nuw nsw i64 %16, 65521
  %20 = add nuw nsw i64 %19, %18
  %21 = sub nuw nsw i64 %20, %6
  %22 = add nuw nsw i64 %21, %11
  %23 = icmp samesign ugt i64 %14, 65520
  %24 = add nsw i64 %14, -65521
  %25 = select i1 %23, i64 %24, i64 65520
  %26 = icmp samesign ugt i64 %25, 65520
  %27 = add nsw i64 %25, -65521
  %28 = select i1 %26, i64 %27, i64 %25
  %29 = icmp samesign ugt i64 %22, 131041
  %30 = add nsw i64 %22, -131042
  %31 = select i1 %29, i64 %30, i64 %22
  %32 = icmp ugt i64 %31, 65520
  %33 = shl nsw i64 %31, 16
  %34 = add nsw i64 %33, -4293984256
  %35 = select i1 %32, i64 %34, i64 %33
  %36 = or i64 %35, %28
  br label %37

37:                                               ; preds = %5, %3
  %38 = phi i64 [ %36, %5 ], [ 4294967295, %3 ]
  ret i64 %38
}

attributes #0 = { nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nomerge noreturn nounwind }

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
!8 = !{!6, !6, i64 0}
!9 = !{}
!10 = !{!"branch_weights", i32 1, i32 127}
!11 = !{!"branch_weights", i32 1, i32 1048575}
!12 = !{!"branch_weights", i32 127, i32 134217473}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
