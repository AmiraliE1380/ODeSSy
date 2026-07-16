; ModuleID = '/home/amiralie1380/michigan/pl/zlib/adler32.c'
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
  br label %534

21:                                               ; preds = %3
  %22 = icmp eq ptr %1, null
  br i1 %22, label %534, label %23

23:                                               ; preds = %21
  %24 = icmp ult i64 %2, 16
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp ugt i64 %2, 5551
  br i1 %26, label %52, label %282

27:                                               ; preds = %23
  %28 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 1), !nosanitize !9
  %29 = extractvalue { i64, i1 } %28, 1, !nosanitize !9
  br i1 %29, label %30, label %31, !prof !10, !nosanitize !9

30:                                               ; preds = %48, %27
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !9
  unreachable, !nosanitize !9

31:                                               ; preds = %27, %48
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

52:                                               ; preds = %25, %274
  %53 = phi i64 [ %276, %274 ], [ %5, %25 ]
  %54 = phi i64 [ %57, %274 ], [ %2, %25 ]
  %55 = phi ptr [ %58, %274 ], [ %1, %25 ]
  %56 = phi i64 [ %275, %274 ], [ %6, %25 ]
  %57 = add i64 %54, -5552
  %58 = getelementptr i8, ptr %55, i64 5552
  br label %59

59:                                               ; preds = %269, %52
  %60 = phi i64 [ %56, %52 ], [ %262, %269 ]
  %61 = phi ptr [ %55, %52 ], [ %271, %269 ]
  %62 = phi i64 [ %53, %52 ], [ %270, %269 ]
  %63 = phi i32 [ 347, %52 ], [ %272, %269 ]
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
  %94 = extractvalue { i64, i1 } %92, 1, !nosanitize !9
  br i1 %94, label %95, label %96, !prof !11, !nosanitize !9

95:                                               ; preds = %88
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

96:                                               ; preds = %88
  %97 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %85, i64 %93), !nosanitize !9
  %98 = extractvalue { i64, i1 } %97, 0, !nosanitize !9
  %99 = extractvalue { i64, i1 } %97, 1, !nosanitize !9
  br i1 %99, label %100, label %101, !prof !11, !nosanitize !9

100:                                              ; preds = %96
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

101:                                              ; preds = %96
  %102 = getelementptr inbounds nuw i8, ptr %61, i64 3
  %103 = load i8, ptr %102, align 1, !tbaa !8
  %104 = zext i8 %103 to i64
  %105 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %93, i64 %104), !nosanitize !9
  %106 = extractvalue { i64, i1 } %105, 0, !nosanitize !9
  %107 = extractvalue { i64, i1 } %105, 1, !nosanitize !9
  br i1 %107, label %108, label %109, !prof !11, !nosanitize !9

108:                                              ; preds = %101
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

109:                                              ; preds = %101
  %110 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %98, i64 %106), !nosanitize !9
  %111 = extractvalue { i64, i1 } %110, 0, !nosanitize !9
  %112 = extractvalue { i64, i1 } %110, 1, !nosanitize !9
  br i1 %112, label %113, label %114, !prof !11, !nosanitize !9

113:                                              ; preds = %109
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

114:                                              ; preds = %109
  %115 = getelementptr inbounds nuw i8, ptr %61, i64 4
  %116 = load i8, ptr %115, align 1, !tbaa !8
  %117 = zext i8 %116 to i64
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %106, i64 %117), !nosanitize !9
  %119 = extractvalue { i64, i1 } %118, 0, !nosanitize !9
  %120 = extractvalue { i64, i1 } %118, 1, !nosanitize !9
  br i1 %120, label %121, label %122, !prof !11, !nosanitize !9

121:                                              ; preds = %114
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

122:                                              ; preds = %114
  %123 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %111, i64 %119), !nosanitize !9
  %124 = extractvalue { i64, i1 } %123, 0, !nosanitize !9
  %125 = extractvalue { i64, i1 } %123, 1, !nosanitize !9
  br i1 %125, label %126, label %127, !prof !11, !nosanitize !9

126:                                              ; preds = %122
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

127:                                              ; preds = %122
  %128 = getelementptr inbounds nuw i8, ptr %61, i64 5
  %129 = load i8, ptr %128, align 1, !tbaa !8
  %130 = zext i8 %129 to i64
  %131 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %119, i64 %130), !nosanitize !9
  %132 = extractvalue { i64, i1 } %131, 0, !nosanitize !9
  %133 = extractvalue { i64, i1 } %131, 1, !nosanitize !9
  br i1 %133, label %134, label %135, !prof !11, !nosanitize !9

134:                                              ; preds = %127
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

135:                                              ; preds = %127
  %136 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 %132), !nosanitize !9
  %137 = extractvalue { i64, i1 } %136, 0, !nosanitize !9
  %138 = extractvalue { i64, i1 } %136, 1, !nosanitize !9
  br i1 %138, label %139, label %140, !prof !11, !nosanitize !9

139:                                              ; preds = %135
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

140:                                              ; preds = %135
  %141 = getelementptr inbounds nuw i8, ptr %61, i64 6
  %142 = load i8, ptr %141, align 1, !tbaa !8
  %143 = zext i8 %142 to i64
  %144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %132, i64 %143), !nosanitize !9
  %145 = extractvalue { i64, i1 } %144, 0, !nosanitize !9
  %146 = extractvalue { i64, i1 } %144, 1, !nosanitize !9
  br i1 %146, label %147, label %148, !prof !11, !nosanitize !9

147:                                              ; preds = %140
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

148:                                              ; preds = %140
  %149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %137, i64 %145), !nosanitize !9
  %150 = extractvalue { i64, i1 } %149, 0, !nosanitize !9
  %151 = extractvalue { i64, i1 } %149, 1, !nosanitize !9
  br i1 %151, label %152, label %153, !prof !11, !nosanitize !9

152:                                              ; preds = %148
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

153:                                              ; preds = %148
  %154 = getelementptr inbounds nuw i8, ptr %61, i64 7
  %155 = load i8, ptr %154, align 1, !tbaa !8
  %156 = zext i8 %155 to i64
  %157 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %145, i64 %156), !nosanitize !9
  %158 = extractvalue { i64, i1 } %157, 0, !nosanitize !9
  %159 = extractvalue { i64, i1 } %157, 1, !nosanitize !9
  br i1 %159, label %160, label %161, !prof !11, !nosanitize !9

160:                                              ; preds = %153
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

161:                                              ; preds = %153
  %162 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %150, i64 %158), !nosanitize !9
  %163 = extractvalue { i64, i1 } %162, 0, !nosanitize !9
  %164 = extractvalue { i64, i1 } %162, 1, !nosanitize !9
  br i1 %164, label %165, label %166, !prof !11, !nosanitize !9

165:                                              ; preds = %161
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

166:                                              ; preds = %161
  %167 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %168 = load i8, ptr %167, align 1, !tbaa !8
  %169 = zext i8 %168 to i64
  %170 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %158, i64 %169), !nosanitize !9
  %171 = extractvalue { i64, i1 } %170, 0, !nosanitize !9
  %172 = extractvalue { i64, i1 } %170, 1, !nosanitize !9
  br i1 %172, label %173, label %174, !prof !11, !nosanitize !9

173:                                              ; preds = %166
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

174:                                              ; preds = %166
  %175 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %163, i64 %171), !nosanitize !9
  %176 = extractvalue { i64, i1 } %175, 0, !nosanitize !9
  %177 = extractvalue { i64, i1 } %175, 1, !nosanitize !9
  br i1 %177, label %178, label %179, !prof !11, !nosanitize !9

178:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

179:                                              ; preds = %174
  %180 = getelementptr inbounds nuw i8, ptr %61, i64 9
  %181 = load i8, ptr %180, align 1, !tbaa !8
  %182 = zext i8 %181 to i64
  %183 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %171, i64 %182), !nosanitize !9
  %184 = extractvalue { i64, i1 } %183, 0, !nosanitize !9
  %185 = extractvalue { i64, i1 } %183, 1, !nosanitize !9
  br i1 %185, label %186, label %187, !prof !11, !nosanitize !9

186:                                              ; preds = %179
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

187:                                              ; preds = %179
  %188 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %176, i64 %184), !nosanitize !9
  %189 = extractvalue { i64, i1 } %188, 0, !nosanitize !9
  %190 = extractvalue { i64, i1 } %188, 1, !nosanitize !9
  br i1 %190, label %191, label %192, !prof !11, !nosanitize !9

191:                                              ; preds = %187
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

192:                                              ; preds = %187
  %193 = getelementptr inbounds nuw i8, ptr %61, i64 10
  %194 = load i8, ptr %193, align 1, !tbaa !8
  %195 = zext i8 %194 to i64
  %196 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 %195), !nosanitize !9
  %197 = extractvalue { i64, i1 } %196, 0, !nosanitize !9
  %198 = extractvalue { i64, i1 } %196, 1, !nosanitize !9
  br i1 %198, label %199, label %200, !prof !11, !nosanitize !9

199:                                              ; preds = %192
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

200:                                              ; preds = %192
  %201 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %189, i64 %197), !nosanitize !9
  %202 = extractvalue { i64, i1 } %201, 0, !nosanitize !9
  %203 = extractvalue { i64, i1 } %201, 1, !nosanitize !9
  br i1 %203, label %204, label %205, !prof !11, !nosanitize !9

204:                                              ; preds = %200
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

205:                                              ; preds = %200
  %206 = getelementptr inbounds nuw i8, ptr %61, i64 11
  %207 = load i8, ptr %206, align 1, !tbaa !8
  %208 = zext i8 %207 to i64
  %209 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %197, i64 %208), !nosanitize !9
  %210 = extractvalue { i64, i1 } %209, 0, !nosanitize !9
  %211 = extractvalue { i64, i1 } %209, 1, !nosanitize !9
  br i1 %211, label %212, label %213, !prof !11, !nosanitize !9

212:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

213:                                              ; preds = %205
  %214 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %202, i64 %210), !nosanitize !9
  %215 = extractvalue { i64, i1 } %214, 0, !nosanitize !9
  %216 = extractvalue { i64, i1 } %214, 1, !nosanitize !9
  br i1 %216, label %217, label %218, !prof !11, !nosanitize !9

217:                                              ; preds = %213
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

218:                                              ; preds = %213
  %219 = getelementptr inbounds nuw i8, ptr %61, i64 12
  %220 = load i8, ptr %219, align 1, !tbaa !8
  %221 = zext i8 %220 to i64
  %222 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %210, i64 %221), !nosanitize !9
  %223 = extractvalue { i64, i1 } %222, 0, !nosanitize !9
  %224 = extractvalue { i64, i1 } %222, 1, !nosanitize !9
  br i1 %224, label %225, label %226, !prof !11, !nosanitize !9

225:                                              ; preds = %218
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

226:                                              ; preds = %218
  %227 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %215, i64 %223), !nosanitize !9
  %228 = extractvalue { i64, i1 } %227, 0, !nosanitize !9
  %229 = extractvalue { i64, i1 } %227, 1, !nosanitize !9
  br i1 %229, label %230, label %231, !prof !11, !nosanitize !9

230:                                              ; preds = %226
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

231:                                              ; preds = %226
  %232 = getelementptr inbounds nuw i8, ptr %61, i64 13
  %233 = load i8, ptr %232, align 1, !tbaa !8
  %234 = zext i8 %233 to i64
  %235 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %223, i64 %234), !nosanitize !9
  %236 = extractvalue { i64, i1 } %235, 0, !nosanitize !9
  %237 = extractvalue { i64, i1 } %235, 1, !nosanitize !9
  br i1 %237, label %238, label %239, !prof !11, !nosanitize !9

238:                                              ; preds = %231
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

239:                                              ; preds = %231
  %240 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %228, i64 %236), !nosanitize !9
  %241 = extractvalue { i64, i1 } %240, 0, !nosanitize !9
  %242 = extractvalue { i64, i1 } %240, 1, !nosanitize !9
  br i1 %242, label %243, label %244, !prof !11, !nosanitize !9

243:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

244:                                              ; preds = %239
  %245 = getelementptr inbounds nuw i8, ptr %61, i64 14
  %246 = load i8, ptr %245, align 1, !tbaa !8
  %247 = zext i8 %246 to i64
  %248 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %236, i64 %247), !nosanitize !9
  %249 = extractvalue { i64, i1 } %248, 0, !nosanitize !9
  %250 = extractvalue { i64, i1 } %248, 1, !nosanitize !9
  br i1 %250, label %251, label %252, !prof !11, !nosanitize !9

251:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

252:                                              ; preds = %244
  %253 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %241, i64 %249), !nosanitize !9
  %254 = extractvalue { i64, i1 } %253, 0, !nosanitize !9
  %255 = extractvalue { i64, i1 } %253, 1, !nosanitize !9
  br i1 %255, label %256, label %257, !prof !11, !nosanitize !9

256:                                              ; preds = %252
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

257:                                              ; preds = %252
  %258 = getelementptr inbounds nuw i8, ptr %61, i64 15
  %259 = load i8, ptr %258, align 1, !tbaa !8
  %260 = zext i8 %259 to i64
  %261 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %249, i64 %260), !nosanitize !9
  %262 = extractvalue { i64, i1 } %261, 0, !nosanitize !9
  %263 = extractvalue { i64, i1 } %261, 1, !nosanitize !9
  br i1 %263, label %264, label %265, !prof !11, !nosanitize !9

264:                                              ; preds = %257
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

265:                                              ; preds = %257
  %266 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %254, i64 %262), !nosanitize !9
  %267 = extractvalue { i64, i1 } %266, 1, !nosanitize !9
  br i1 %267, label %268, label %269, !prof !11, !nosanitize !9

268:                                              ; preds = %265
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

269:                                              ; preds = %265
  %270 = extractvalue { i64, i1 } %266, 0, !nosanitize !9
  %271 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %272 = add nsw i32 %63, -1
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %59, !llvm.loop !15

274:                                              ; preds = %269
  %275 = urem i64 %262, 65521
  %276 = urem i64 %270, 65521
  %277 = icmp ugt i64 %57, 5551
  br i1 %277, label %52, label %278, !llvm.loop !16

278:                                              ; preds = %274
  %279 = icmp eq i64 %57, 0
  br i1 %279, label %531, label %280

280:                                              ; preds = %278
  %281 = icmp samesign ugt i64 %57, 15
  br i1 %281, label %282, label %287

282:                                              ; preds = %25, %280
  %283 = phi i64 [ %5, %25 ], [ %276, %280 ]
  %284 = phi i64 [ %2, %25 ], [ %57, %280 ]
  %285 = phi ptr [ %1, %25 ], [ %58, %280 ]
  %286 = phi i64 [ %6, %25 ], [ %275, %280 ]
  br label %294

287:                                              ; preds = %505, %280
  %288 = phi i64 [ %275, %280 ], [ %498, %505 ]
  %289 = phi ptr [ %58, %280 ], [ %507, %505 ]
  %290 = phi i64 [ %57, %280 ], [ %299, %505 ]
  %291 = phi i64 [ %276, %280 ], [ %506, %505 ]
  %292 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %290, i64 1), !nosanitize !9
  %293 = extractvalue { i64, i1 } %292, 1, !nosanitize !9
  br i1 %293, label %509, label %510, !prof !10, !nosanitize !9

294:                                              ; preds = %282, %505
  %295 = phi i64 [ %506, %505 ], [ %283, %282 ]
  %296 = phi i64 [ %299, %505 ], [ %284, %282 ]
  %297 = phi ptr [ %507, %505 ], [ %285, %282 ]
  %298 = phi i64 [ %498, %505 ], [ %286, %282 ]
  %299 = add nsw i64 %296, -16
  %300 = load i8, ptr %297, align 1, !tbaa !8
  %301 = zext i8 %300 to i64
  %302 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %298, i64 %301), !nosanitize !9
  %303 = extractvalue { i64, i1 } %302, 0, !nosanitize !9
  %304 = extractvalue { i64, i1 } %302, 1, !nosanitize !9
  br i1 %304, label %305, label %306, !prof !11, !nosanitize !9

305:                                              ; preds = %294
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

306:                                              ; preds = %294
  %307 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %295, i64 %303), !nosanitize !9
  %308 = extractvalue { i64, i1 } %307, 0, !nosanitize !9
  %309 = extractvalue { i64, i1 } %307, 1, !nosanitize !9
  br i1 %309, label %310, label %311, !prof !11, !nosanitize !9

310:                                              ; preds = %306
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

311:                                              ; preds = %306
  %312 = getelementptr inbounds nuw i8, ptr %297, i64 1
  %313 = load i8, ptr %312, align 1, !tbaa !8
  %314 = zext i8 %313 to i64
  %315 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %303, i64 %314), !nosanitize !9
  %316 = extractvalue { i64, i1 } %315, 0, !nosanitize !9
  %317 = extractvalue { i64, i1 } %315, 1, !nosanitize !9
  br i1 %317, label %318, label %319, !prof !11, !nosanitize !9

318:                                              ; preds = %311
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

319:                                              ; preds = %311
  %320 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %308, i64 %316), !nosanitize !9
  %321 = extractvalue { i64, i1 } %320, 0, !nosanitize !9
  %322 = extractvalue { i64, i1 } %320, 1, !nosanitize !9
  br i1 %322, label %323, label %324, !prof !11, !nosanitize !9

323:                                              ; preds = %319
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

324:                                              ; preds = %319
  %325 = getelementptr inbounds nuw i8, ptr %297, i64 2
  %326 = load i8, ptr %325, align 1, !tbaa !8
  %327 = zext i8 %326 to i64
  %328 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %316, i64 %327), !nosanitize !9
  %329 = extractvalue { i64, i1 } %328, 0, !nosanitize !9
  %330 = extractvalue { i64, i1 } %328, 1, !nosanitize !9
  br i1 %330, label %331, label %332, !prof !11, !nosanitize !9

331:                                              ; preds = %324
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

332:                                              ; preds = %324
  %333 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %321, i64 %329), !nosanitize !9
  %334 = extractvalue { i64, i1 } %333, 0, !nosanitize !9
  %335 = extractvalue { i64, i1 } %333, 1, !nosanitize !9
  br i1 %335, label %336, label %337, !prof !11, !nosanitize !9

336:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

337:                                              ; preds = %332
  %338 = getelementptr inbounds nuw i8, ptr %297, i64 3
  %339 = load i8, ptr %338, align 1, !tbaa !8
  %340 = zext i8 %339 to i64
  %341 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %329, i64 %340), !nosanitize !9
  %342 = extractvalue { i64, i1 } %341, 0, !nosanitize !9
  %343 = extractvalue { i64, i1 } %341, 1, !nosanitize !9
  br i1 %343, label %344, label %345, !prof !11, !nosanitize !9

344:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

345:                                              ; preds = %337
  %346 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %334, i64 %342), !nosanitize !9
  %347 = extractvalue { i64, i1 } %346, 0, !nosanitize !9
  %348 = extractvalue { i64, i1 } %346, 1, !nosanitize !9
  br i1 %348, label %349, label %350, !prof !11, !nosanitize !9

349:                                              ; preds = %345
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

350:                                              ; preds = %345
  %351 = getelementptr inbounds nuw i8, ptr %297, i64 4
  %352 = load i8, ptr %351, align 1, !tbaa !8
  %353 = zext i8 %352 to i64
  %354 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %342, i64 %353), !nosanitize !9
  %355 = extractvalue { i64, i1 } %354, 0, !nosanitize !9
  %356 = extractvalue { i64, i1 } %354, 1, !nosanitize !9
  br i1 %356, label %357, label %358, !prof !11, !nosanitize !9

357:                                              ; preds = %350
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

358:                                              ; preds = %350
  %359 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %347, i64 %355), !nosanitize !9
  %360 = extractvalue { i64, i1 } %359, 0, !nosanitize !9
  %361 = extractvalue { i64, i1 } %359, 1, !nosanitize !9
  br i1 %361, label %362, label %363, !prof !11, !nosanitize !9

362:                                              ; preds = %358
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

363:                                              ; preds = %358
  %364 = getelementptr inbounds nuw i8, ptr %297, i64 5
  %365 = load i8, ptr %364, align 1, !tbaa !8
  %366 = zext i8 %365 to i64
  %367 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %355, i64 %366), !nosanitize !9
  %368 = extractvalue { i64, i1 } %367, 0, !nosanitize !9
  %369 = extractvalue { i64, i1 } %367, 1, !nosanitize !9
  br i1 %369, label %370, label %371, !prof !11, !nosanitize !9

370:                                              ; preds = %363
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

371:                                              ; preds = %363
  %372 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %360, i64 %368), !nosanitize !9
  %373 = extractvalue { i64, i1 } %372, 0, !nosanitize !9
  %374 = extractvalue { i64, i1 } %372, 1, !nosanitize !9
  br i1 %374, label %375, label %376, !prof !11, !nosanitize !9

375:                                              ; preds = %371
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

376:                                              ; preds = %371
  %377 = getelementptr inbounds nuw i8, ptr %297, i64 6
  %378 = load i8, ptr %377, align 1, !tbaa !8
  %379 = zext i8 %378 to i64
  %380 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %368, i64 %379), !nosanitize !9
  %381 = extractvalue { i64, i1 } %380, 0, !nosanitize !9
  %382 = extractvalue { i64, i1 } %380, 1, !nosanitize !9
  br i1 %382, label %383, label %384, !prof !11, !nosanitize !9

383:                                              ; preds = %376
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

384:                                              ; preds = %376
  %385 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %373, i64 %381), !nosanitize !9
  %386 = extractvalue { i64, i1 } %385, 0, !nosanitize !9
  %387 = extractvalue { i64, i1 } %385, 1, !nosanitize !9
  br i1 %387, label %388, label %389, !prof !11, !nosanitize !9

388:                                              ; preds = %384
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

389:                                              ; preds = %384
  %390 = getelementptr inbounds nuw i8, ptr %297, i64 7
  %391 = load i8, ptr %390, align 1, !tbaa !8
  %392 = zext i8 %391 to i64
  %393 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %381, i64 %392), !nosanitize !9
  %394 = extractvalue { i64, i1 } %393, 0, !nosanitize !9
  %395 = extractvalue { i64, i1 } %393, 1, !nosanitize !9
  br i1 %395, label %396, label %397, !prof !11, !nosanitize !9

396:                                              ; preds = %389
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

397:                                              ; preds = %389
  %398 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %386, i64 %394), !nosanitize !9
  %399 = extractvalue { i64, i1 } %398, 0, !nosanitize !9
  %400 = extractvalue { i64, i1 } %398, 1, !nosanitize !9
  br i1 %400, label %401, label %402, !prof !11, !nosanitize !9

401:                                              ; preds = %397
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

402:                                              ; preds = %397
  %403 = getelementptr inbounds nuw i8, ptr %297, i64 8
  %404 = load i8, ptr %403, align 1, !tbaa !8
  %405 = zext i8 %404 to i64
  %406 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %394, i64 %405), !nosanitize !9
  %407 = extractvalue { i64, i1 } %406, 0, !nosanitize !9
  %408 = extractvalue { i64, i1 } %406, 1, !nosanitize !9
  br i1 %408, label %409, label %410, !prof !11, !nosanitize !9

409:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

410:                                              ; preds = %402
  %411 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %399, i64 %407), !nosanitize !9
  %412 = extractvalue { i64, i1 } %411, 0, !nosanitize !9
  %413 = extractvalue { i64, i1 } %411, 1, !nosanitize !9
  br i1 %413, label %414, label %415, !prof !11, !nosanitize !9

414:                                              ; preds = %410
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

415:                                              ; preds = %410
  %416 = getelementptr inbounds nuw i8, ptr %297, i64 9
  %417 = load i8, ptr %416, align 1, !tbaa !8
  %418 = zext i8 %417 to i64
  %419 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %407, i64 %418), !nosanitize !9
  %420 = extractvalue { i64, i1 } %419, 0, !nosanitize !9
  %421 = extractvalue { i64, i1 } %419, 1, !nosanitize !9
  br i1 %421, label %422, label %423, !prof !11, !nosanitize !9

422:                                              ; preds = %415
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

423:                                              ; preds = %415
  %424 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %412, i64 %420), !nosanitize !9
  %425 = extractvalue { i64, i1 } %424, 0, !nosanitize !9
  %426 = extractvalue { i64, i1 } %424, 1, !nosanitize !9
  br i1 %426, label %427, label %428, !prof !11, !nosanitize !9

427:                                              ; preds = %423
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

428:                                              ; preds = %423
  %429 = getelementptr inbounds nuw i8, ptr %297, i64 10
  %430 = load i8, ptr %429, align 1, !tbaa !8
  %431 = zext i8 %430 to i64
  %432 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %420, i64 %431), !nosanitize !9
  %433 = extractvalue { i64, i1 } %432, 0, !nosanitize !9
  %434 = extractvalue { i64, i1 } %432, 1, !nosanitize !9
  br i1 %434, label %435, label %436, !prof !11, !nosanitize !9

435:                                              ; preds = %428
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

436:                                              ; preds = %428
  %437 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %425, i64 %433), !nosanitize !9
  %438 = extractvalue { i64, i1 } %437, 0, !nosanitize !9
  %439 = extractvalue { i64, i1 } %437, 1, !nosanitize !9
  br i1 %439, label %440, label %441, !prof !11, !nosanitize !9

440:                                              ; preds = %436
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

441:                                              ; preds = %436
  %442 = getelementptr inbounds nuw i8, ptr %297, i64 11
  %443 = load i8, ptr %442, align 1, !tbaa !8
  %444 = zext i8 %443 to i64
  %445 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %433, i64 %444), !nosanitize !9
  %446 = extractvalue { i64, i1 } %445, 0, !nosanitize !9
  %447 = extractvalue { i64, i1 } %445, 1, !nosanitize !9
  br i1 %447, label %448, label %449, !prof !11, !nosanitize !9

448:                                              ; preds = %441
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

449:                                              ; preds = %441
  %450 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %438, i64 %446), !nosanitize !9
  %451 = extractvalue { i64, i1 } %450, 0, !nosanitize !9
  %452 = extractvalue { i64, i1 } %450, 1, !nosanitize !9
  br i1 %452, label %453, label %454, !prof !11, !nosanitize !9

453:                                              ; preds = %449
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

454:                                              ; preds = %449
  %455 = getelementptr inbounds nuw i8, ptr %297, i64 12
  %456 = load i8, ptr %455, align 1, !tbaa !8
  %457 = zext i8 %456 to i64
  %458 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %446, i64 %457), !nosanitize !9
  %459 = extractvalue { i64, i1 } %458, 0, !nosanitize !9
  %460 = extractvalue { i64, i1 } %458, 1, !nosanitize !9
  br i1 %460, label %461, label %462, !prof !11, !nosanitize !9

461:                                              ; preds = %454
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

462:                                              ; preds = %454
  %463 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %451, i64 %459), !nosanitize !9
  %464 = extractvalue { i64, i1 } %463, 0, !nosanitize !9
  %465 = extractvalue { i64, i1 } %463, 1, !nosanitize !9
  br i1 %465, label %466, label %467, !prof !11, !nosanitize !9

466:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

467:                                              ; preds = %462
  %468 = getelementptr inbounds nuw i8, ptr %297, i64 13
  %469 = load i8, ptr %468, align 1, !tbaa !8
  %470 = zext i8 %469 to i64
  %471 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %459, i64 %470), !nosanitize !9
  %472 = extractvalue { i64, i1 } %471, 0, !nosanitize !9
  %473 = extractvalue { i64, i1 } %471, 1, !nosanitize !9
  br i1 %473, label %474, label %475, !prof !11, !nosanitize !9

474:                                              ; preds = %467
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

475:                                              ; preds = %467
  %476 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %464, i64 %472), !nosanitize !9
  %477 = extractvalue { i64, i1 } %476, 0, !nosanitize !9
  %478 = extractvalue { i64, i1 } %476, 1, !nosanitize !9
  br i1 %478, label %479, label %480, !prof !11, !nosanitize !9

479:                                              ; preds = %475
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

480:                                              ; preds = %475
  %481 = getelementptr inbounds nuw i8, ptr %297, i64 14
  %482 = load i8, ptr %481, align 1, !tbaa !8
  %483 = zext i8 %482 to i64
  %484 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %472, i64 %483), !nosanitize !9
  %485 = extractvalue { i64, i1 } %484, 0, !nosanitize !9
  %486 = extractvalue { i64, i1 } %484, 1, !nosanitize !9
  br i1 %486, label %487, label %488, !prof !11, !nosanitize !9

487:                                              ; preds = %480
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

488:                                              ; preds = %480
  %489 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %477, i64 %485), !nosanitize !9
  %490 = extractvalue { i64, i1 } %489, 0, !nosanitize !9
  %491 = extractvalue { i64, i1 } %489, 1, !nosanitize !9
  br i1 %491, label %492, label %493, !prof !11, !nosanitize !9

492:                                              ; preds = %488
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

493:                                              ; preds = %488
  %494 = getelementptr inbounds nuw i8, ptr %297, i64 15
  %495 = load i8, ptr %494, align 1, !tbaa !8
  %496 = zext i8 %495 to i64
  %497 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %485, i64 %496), !nosanitize !9
  %498 = extractvalue { i64, i1 } %497, 0, !nosanitize !9
  %499 = extractvalue { i64, i1 } %497, 1, !nosanitize !9
  br i1 %499, label %500, label %501, !prof !11, !nosanitize !9

500:                                              ; preds = %493
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

501:                                              ; preds = %493
  %502 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %490, i64 %498), !nosanitize !9
  %503 = extractvalue { i64, i1 } %502, 1, !nosanitize !9
  br i1 %503, label %504, label %505, !prof !11, !nosanitize !9

504:                                              ; preds = %501
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

505:                                              ; preds = %501
  %506 = extractvalue { i64, i1 } %502, 0, !nosanitize !9
  %507 = getelementptr inbounds nuw i8, ptr %297, i64 16
  %508 = icmp ugt i64 %299, 15
  br i1 %508, label %294, label %287, !llvm.loop !17

509:                                              ; preds = %527, %287
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !9
  unreachable, !nosanitize !9

510:                                              ; preds = %287, %527
  %511 = phi { i64, i1 } [ %529, %527 ], [ %292, %287 ]
  %512 = phi i64 [ %528, %527 ], [ %291, %287 ]
  %513 = phi ptr [ %516, %527 ], [ %289, %287 ]
  %514 = phi i64 [ %520, %527 ], [ %288, %287 ]
  %515 = extractvalue { i64, i1 } %511, 0
  %516 = getelementptr inbounds nuw i8, ptr %513, i64 1
  %517 = load i8, ptr %513, align 1, !tbaa !8
  %518 = zext i8 %517 to i64
  %519 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %514, i64 %518), !nosanitize !9
  %520 = extractvalue { i64, i1 } %519, 0, !nosanitize !9
  %521 = extractvalue { i64, i1 } %519, 1, !nosanitize !9
  br i1 %521, label %522, label %523, !prof !11, !nosanitize !9

522:                                              ; preds = %510
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

523:                                              ; preds = %510
  %524 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %512, i64 %520), !nosanitize !9
  %525 = extractvalue { i64, i1 } %524, 1, !nosanitize !9
  br i1 %525, label %526, label %527, !prof !11, !nosanitize !9

526:                                              ; preds = %523
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

527:                                              ; preds = %523
  %528 = extractvalue { i64, i1 } %524, 0, !nosanitize !9
  %529 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %515, i64 1), !nosanitize !9
  %530 = extractvalue { i64, i1 } %529, 1, !nosanitize !9
  br i1 %530, label %509, label %510, !prof !12, !llvm.loop !18, !nosanitize !9

531:                                              ; preds = %278
  %532 = shl nuw nsw i64 %276, 16
  %533 = or disjoint i64 %532, %275
  br label %534

534:                                              ; preds = %21, %531, %8
  %535 = phi i64 [ %20, %8 ], [ %533, %531 ], [ 1, %21 ]
  ret i64 %535
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
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
  br label %535

22:                                               ; preds = %3
  %23 = icmp eq ptr %1, null
  br i1 %23, label %535, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %2, 16
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = icmp ugt i32 %2, 5551
  br i1 %27, label %58, label %28

28:                                               ; preds = %286, %26
  %29 = phi i64 [ %6, %26 ], [ %282, %286 ]
  %30 = phi i64 [ %4, %26 ], [ %63, %286 ]
  %31 = phi ptr [ %1, %26 ], [ %64, %286 ]
  %32 = phi i64 [ %7, %26 ], [ %281, %286 ]
  br label %295

33:                                               ; preds = %24
  %34 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 1), !nosanitize !9
  %35 = extractvalue { i64, i1 } %34, 1, !nosanitize !9
  br i1 %35, label %36, label %37, !prof !10, !nosanitize !9

36:                                               ; preds = %54, %33
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !9
  unreachable, !nosanitize !9

37:                                               ; preds = %33, %54
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

58:                                               ; preds = %26, %280
  %59 = phi i64 [ %282, %280 ], [ %6, %26 ]
  %60 = phi i64 [ %63, %280 ], [ %4, %26 ]
  %61 = phi ptr [ %64, %280 ], [ %1, %26 ]
  %62 = phi i64 [ %281, %280 ], [ %7, %26 ]
  %63 = add i64 %60, -5552
  %64 = getelementptr i8, ptr %61, i64 5552
  br label %65

65:                                               ; preds = %275, %58
  %66 = phi i64 [ %62, %58 ], [ %268, %275 ]
  %67 = phi ptr [ %61, %58 ], [ %277, %275 ]
  %68 = phi i64 [ %59, %58 ], [ %276, %275 ]
  %69 = phi i32 [ 347, %58 ], [ %278, %275 ]
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
  %100 = extractvalue { i64, i1 } %98, 1, !nosanitize !9
  br i1 %100, label %101, label %102, !prof !11, !nosanitize !9

101:                                              ; preds = %94
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

102:                                              ; preds = %94
  %103 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %91, i64 %99), !nosanitize !9
  %104 = extractvalue { i64, i1 } %103, 0, !nosanitize !9
  %105 = extractvalue { i64, i1 } %103, 1, !nosanitize !9
  br i1 %105, label %106, label %107, !prof !11, !nosanitize !9

106:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

107:                                              ; preds = %102
  %108 = getelementptr inbounds nuw i8, ptr %67, i64 3
  %109 = load i8, ptr %108, align 1, !tbaa !8
  %110 = zext i8 %109 to i64
  %111 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %99, i64 %110), !nosanitize !9
  %112 = extractvalue { i64, i1 } %111, 0, !nosanitize !9
  %113 = extractvalue { i64, i1 } %111, 1, !nosanitize !9
  br i1 %113, label %114, label %115, !prof !11, !nosanitize !9

114:                                              ; preds = %107
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

115:                                              ; preds = %107
  %116 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %104, i64 %112), !nosanitize !9
  %117 = extractvalue { i64, i1 } %116, 0, !nosanitize !9
  %118 = extractvalue { i64, i1 } %116, 1, !nosanitize !9
  br i1 %118, label %119, label %120, !prof !11, !nosanitize !9

119:                                              ; preds = %115
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

120:                                              ; preds = %115
  %121 = getelementptr inbounds nuw i8, ptr %67, i64 4
  %122 = load i8, ptr %121, align 1, !tbaa !8
  %123 = zext i8 %122 to i64
  %124 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %112, i64 %123), !nosanitize !9
  %125 = extractvalue { i64, i1 } %124, 0, !nosanitize !9
  %126 = extractvalue { i64, i1 } %124, 1, !nosanitize !9
  br i1 %126, label %127, label %128, !prof !11, !nosanitize !9

127:                                              ; preds = %120
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

128:                                              ; preds = %120
  %129 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %117, i64 %125), !nosanitize !9
  %130 = extractvalue { i64, i1 } %129, 0, !nosanitize !9
  %131 = extractvalue { i64, i1 } %129, 1, !nosanitize !9
  br i1 %131, label %132, label %133, !prof !11, !nosanitize !9

132:                                              ; preds = %128
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

133:                                              ; preds = %128
  %134 = getelementptr inbounds nuw i8, ptr %67, i64 5
  %135 = load i8, ptr %134, align 1, !tbaa !8
  %136 = zext i8 %135 to i64
  %137 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %125, i64 %136), !nosanitize !9
  %138 = extractvalue { i64, i1 } %137, 0, !nosanitize !9
  %139 = extractvalue { i64, i1 } %137, 1, !nosanitize !9
  br i1 %139, label %140, label %141, !prof !11, !nosanitize !9

140:                                              ; preds = %133
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

141:                                              ; preds = %133
  %142 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %130, i64 %138), !nosanitize !9
  %143 = extractvalue { i64, i1 } %142, 0, !nosanitize !9
  %144 = extractvalue { i64, i1 } %142, 1, !nosanitize !9
  br i1 %144, label %145, label %146, !prof !11, !nosanitize !9

145:                                              ; preds = %141
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

146:                                              ; preds = %141
  %147 = getelementptr inbounds nuw i8, ptr %67, i64 6
  %148 = load i8, ptr %147, align 1, !tbaa !8
  %149 = zext i8 %148 to i64
  %150 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %138, i64 %149), !nosanitize !9
  %151 = extractvalue { i64, i1 } %150, 0, !nosanitize !9
  %152 = extractvalue { i64, i1 } %150, 1, !nosanitize !9
  br i1 %152, label %153, label %154, !prof !11, !nosanitize !9

153:                                              ; preds = %146
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

154:                                              ; preds = %146
  %155 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %143, i64 %151), !nosanitize !9
  %156 = extractvalue { i64, i1 } %155, 0, !nosanitize !9
  %157 = extractvalue { i64, i1 } %155, 1, !nosanitize !9
  br i1 %157, label %158, label %159, !prof !11, !nosanitize !9

158:                                              ; preds = %154
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

159:                                              ; preds = %154
  %160 = getelementptr inbounds nuw i8, ptr %67, i64 7
  %161 = load i8, ptr %160, align 1, !tbaa !8
  %162 = zext i8 %161 to i64
  %163 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %151, i64 %162), !nosanitize !9
  %164 = extractvalue { i64, i1 } %163, 0, !nosanitize !9
  %165 = extractvalue { i64, i1 } %163, 1, !nosanitize !9
  br i1 %165, label %166, label %167, !prof !11, !nosanitize !9

166:                                              ; preds = %159
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

167:                                              ; preds = %159
  %168 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %156, i64 %164), !nosanitize !9
  %169 = extractvalue { i64, i1 } %168, 0, !nosanitize !9
  %170 = extractvalue { i64, i1 } %168, 1, !nosanitize !9
  br i1 %170, label %171, label %172, !prof !11, !nosanitize !9

171:                                              ; preds = %167
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

172:                                              ; preds = %167
  %173 = getelementptr inbounds nuw i8, ptr %67, i64 8
  %174 = load i8, ptr %173, align 1, !tbaa !8
  %175 = zext i8 %174 to i64
  %176 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %164, i64 %175), !nosanitize !9
  %177 = extractvalue { i64, i1 } %176, 0, !nosanitize !9
  %178 = extractvalue { i64, i1 } %176, 1, !nosanitize !9
  br i1 %178, label %179, label %180, !prof !11, !nosanitize !9

179:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

180:                                              ; preds = %172
  %181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %169, i64 %177), !nosanitize !9
  %182 = extractvalue { i64, i1 } %181, 0, !nosanitize !9
  %183 = extractvalue { i64, i1 } %181, 1, !nosanitize !9
  br i1 %183, label %184, label %185, !prof !11, !nosanitize !9

184:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

185:                                              ; preds = %180
  %186 = getelementptr inbounds nuw i8, ptr %67, i64 9
  %187 = load i8, ptr %186, align 1, !tbaa !8
  %188 = zext i8 %187 to i64
  %189 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %177, i64 %188), !nosanitize !9
  %190 = extractvalue { i64, i1 } %189, 0, !nosanitize !9
  %191 = extractvalue { i64, i1 } %189, 1, !nosanitize !9
  br i1 %191, label %192, label %193, !prof !11, !nosanitize !9

192:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

193:                                              ; preds = %185
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %182, i64 %190), !nosanitize !9
  %195 = extractvalue { i64, i1 } %194, 0, !nosanitize !9
  %196 = extractvalue { i64, i1 } %194, 1, !nosanitize !9
  br i1 %196, label %197, label %198, !prof !11, !nosanitize !9

197:                                              ; preds = %193
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

198:                                              ; preds = %193
  %199 = getelementptr inbounds nuw i8, ptr %67, i64 10
  %200 = load i8, ptr %199, align 1, !tbaa !8
  %201 = zext i8 %200 to i64
  %202 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %190, i64 %201), !nosanitize !9
  %203 = extractvalue { i64, i1 } %202, 0, !nosanitize !9
  %204 = extractvalue { i64, i1 } %202, 1, !nosanitize !9
  br i1 %204, label %205, label %206, !prof !11, !nosanitize !9

205:                                              ; preds = %198
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

206:                                              ; preds = %198
  %207 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %195, i64 %203), !nosanitize !9
  %208 = extractvalue { i64, i1 } %207, 0, !nosanitize !9
  %209 = extractvalue { i64, i1 } %207, 1, !nosanitize !9
  br i1 %209, label %210, label %211, !prof !11, !nosanitize !9

210:                                              ; preds = %206
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

211:                                              ; preds = %206
  %212 = getelementptr inbounds nuw i8, ptr %67, i64 11
  %213 = load i8, ptr %212, align 1, !tbaa !8
  %214 = zext i8 %213 to i64
  %215 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %203, i64 %214), !nosanitize !9
  %216 = extractvalue { i64, i1 } %215, 0, !nosanitize !9
  %217 = extractvalue { i64, i1 } %215, 1, !nosanitize !9
  br i1 %217, label %218, label %219, !prof !11, !nosanitize !9

218:                                              ; preds = %211
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

219:                                              ; preds = %211
  %220 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %208, i64 %216), !nosanitize !9
  %221 = extractvalue { i64, i1 } %220, 0, !nosanitize !9
  %222 = extractvalue { i64, i1 } %220, 1, !nosanitize !9
  br i1 %222, label %223, label %224, !prof !11, !nosanitize !9

223:                                              ; preds = %219
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

224:                                              ; preds = %219
  %225 = getelementptr inbounds nuw i8, ptr %67, i64 12
  %226 = load i8, ptr %225, align 1, !tbaa !8
  %227 = zext i8 %226 to i64
  %228 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %216, i64 %227), !nosanitize !9
  %229 = extractvalue { i64, i1 } %228, 0, !nosanitize !9
  %230 = extractvalue { i64, i1 } %228, 1, !nosanitize !9
  br i1 %230, label %231, label %232, !prof !11, !nosanitize !9

231:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

232:                                              ; preds = %224
  %233 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %221, i64 %229), !nosanitize !9
  %234 = extractvalue { i64, i1 } %233, 0, !nosanitize !9
  %235 = extractvalue { i64, i1 } %233, 1, !nosanitize !9
  br i1 %235, label %236, label %237, !prof !11, !nosanitize !9

236:                                              ; preds = %232
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

237:                                              ; preds = %232
  %238 = getelementptr inbounds nuw i8, ptr %67, i64 13
  %239 = load i8, ptr %238, align 1, !tbaa !8
  %240 = zext i8 %239 to i64
  %241 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %229, i64 %240), !nosanitize !9
  %242 = extractvalue { i64, i1 } %241, 0, !nosanitize !9
  %243 = extractvalue { i64, i1 } %241, 1, !nosanitize !9
  br i1 %243, label %244, label %245, !prof !11, !nosanitize !9

244:                                              ; preds = %237
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

245:                                              ; preds = %237
  %246 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %234, i64 %242), !nosanitize !9
  %247 = extractvalue { i64, i1 } %246, 0, !nosanitize !9
  %248 = extractvalue { i64, i1 } %246, 1, !nosanitize !9
  br i1 %248, label %249, label %250, !prof !11, !nosanitize !9

249:                                              ; preds = %245
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

250:                                              ; preds = %245
  %251 = getelementptr inbounds nuw i8, ptr %67, i64 14
  %252 = load i8, ptr %251, align 1, !tbaa !8
  %253 = zext i8 %252 to i64
  %254 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %242, i64 %253), !nosanitize !9
  %255 = extractvalue { i64, i1 } %254, 0, !nosanitize !9
  %256 = extractvalue { i64, i1 } %254, 1, !nosanitize !9
  br i1 %256, label %257, label %258, !prof !11, !nosanitize !9

257:                                              ; preds = %250
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

258:                                              ; preds = %250
  %259 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %247, i64 %255), !nosanitize !9
  %260 = extractvalue { i64, i1 } %259, 0, !nosanitize !9
  %261 = extractvalue { i64, i1 } %259, 1, !nosanitize !9
  br i1 %261, label %262, label %263, !prof !11, !nosanitize !9

262:                                              ; preds = %258
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

263:                                              ; preds = %258
  %264 = getelementptr inbounds nuw i8, ptr %67, i64 15
  %265 = load i8, ptr %264, align 1, !tbaa !8
  %266 = zext i8 %265 to i64
  %267 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %255, i64 %266), !nosanitize !9
  %268 = extractvalue { i64, i1 } %267, 0, !nosanitize !9
  %269 = extractvalue { i64, i1 } %267, 1, !nosanitize !9
  br i1 %269, label %270, label %271, !prof !11, !nosanitize !9

270:                                              ; preds = %263
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

271:                                              ; preds = %263
  %272 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %260, i64 %268), !nosanitize !9
  %273 = extractvalue { i64, i1 } %272, 1, !nosanitize !9
  br i1 %273, label %274, label %275, !prof !11, !nosanitize !9

274:                                              ; preds = %271
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

275:                                              ; preds = %271
  %276 = extractvalue { i64, i1 } %272, 0, !nosanitize !9
  %277 = getelementptr inbounds nuw i8, ptr %67, i64 16
  %278 = add nsw i32 %69, -1
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %65, !llvm.loop !15

280:                                              ; preds = %275
  %281 = urem i64 %268, 65521
  %282 = urem i64 %276, 65521
  %283 = icmp ugt i64 %63, 5551
  br i1 %283, label %58, label %284, !llvm.loop !16

284:                                              ; preds = %280
  %285 = icmp eq i64 %63, 0
  br i1 %285, label %532, label %286

286:                                              ; preds = %284
  %287 = icmp samesign ugt i64 %63, 15
  br i1 %287, label %28, label %288

288:                                              ; preds = %506, %286
  %289 = phi i64 [ %281, %286 ], [ %499, %506 ]
  %290 = phi ptr [ %64, %286 ], [ %508, %506 ]
  %291 = phi i64 [ %63, %286 ], [ %300, %506 ]
  %292 = phi i64 [ %282, %286 ], [ %507, %506 ]
  %293 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %291, i64 1), !nosanitize !9
  %294 = extractvalue { i64, i1 } %293, 1, !nosanitize !9
  br i1 %294, label %510, label %511, !prof !10, !nosanitize !9

295:                                              ; preds = %28, %506
  %296 = phi i64 [ %507, %506 ], [ %29, %28 ]
  %297 = phi i64 [ %300, %506 ], [ %30, %28 ]
  %298 = phi ptr [ %508, %506 ], [ %31, %28 ]
  %299 = phi i64 [ %499, %506 ], [ %32, %28 ]
  %300 = add nsw i64 %297, -16
  %301 = load i8, ptr %298, align 1, !tbaa !8
  %302 = zext i8 %301 to i64
  %303 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %299, i64 %302), !nosanitize !9
  %304 = extractvalue { i64, i1 } %303, 0, !nosanitize !9
  %305 = extractvalue { i64, i1 } %303, 1, !nosanitize !9
  br i1 %305, label %306, label %307, !prof !11, !nosanitize !9

306:                                              ; preds = %295
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

307:                                              ; preds = %295
  %308 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %296, i64 %304), !nosanitize !9
  %309 = extractvalue { i64, i1 } %308, 0, !nosanitize !9
  %310 = extractvalue { i64, i1 } %308, 1, !nosanitize !9
  br i1 %310, label %311, label %312, !prof !11, !nosanitize !9

311:                                              ; preds = %307
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

312:                                              ; preds = %307
  %313 = getelementptr inbounds nuw i8, ptr %298, i64 1
  %314 = load i8, ptr %313, align 1, !tbaa !8
  %315 = zext i8 %314 to i64
  %316 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %304, i64 %315), !nosanitize !9
  %317 = extractvalue { i64, i1 } %316, 0, !nosanitize !9
  %318 = extractvalue { i64, i1 } %316, 1, !nosanitize !9
  br i1 %318, label %319, label %320, !prof !11, !nosanitize !9

319:                                              ; preds = %312
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

320:                                              ; preds = %312
  %321 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %309, i64 %317), !nosanitize !9
  %322 = extractvalue { i64, i1 } %321, 0, !nosanitize !9
  %323 = extractvalue { i64, i1 } %321, 1, !nosanitize !9
  br i1 %323, label %324, label %325, !prof !11, !nosanitize !9

324:                                              ; preds = %320
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

325:                                              ; preds = %320
  %326 = getelementptr inbounds nuw i8, ptr %298, i64 2
  %327 = load i8, ptr %326, align 1, !tbaa !8
  %328 = zext i8 %327 to i64
  %329 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %317, i64 %328), !nosanitize !9
  %330 = extractvalue { i64, i1 } %329, 0, !nosanitize !9
  %331 = extractvalue { i64, i1 } %329, 1, !nosanitize !9
  br i1 %331, label %332, label %333, !prof !11, !nosanitize !9

332:                                              ; preds = %325
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

333:                                              ; preds = %325
  %334 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %322, i64 %330), !nosanitize !9
  %335 = extractvalue { i64, i1 } %334, 0, !nosanitize !9
  %336 = extractvalue { i64, i1 } %334, 1, !nosanitize !9
  br i1 %336, label %337, label %338, !prof !11, !nosanitize !9

337:                                              ; preds = %333
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

338:                                              ; preds = %333
  %339 = getelementptr inbounds nuw i8, ptr %298, i64 3
  %340 = load i8, ptr %339, align 1, !tbaa !8
  %341 = zext i8 %340 to i64
  %342 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %330, i64 %341), !nosanitize !9
  %343 = extractvalue { i64, i1 } %342, 0, !nosanitize !9
  %344 = extractvalue { i64, i1 } %342, 1, !nosanitize !9
  br i1 %344, label %345, label %346, !prof !11, !nosanitize !9

345:                                              ; preds = %338
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

346:                                              ; preds = %338
  %347 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %335, i64 %343), !nosanitize !9
  %348 = extractvalue { i64, i1 } %347, 0, !nosanitize !9
  %349 = extractvalue { i64, i1 } %347, 1, !nosanitize !9
  br i1 %349, label %350, label %351, !prof !11, !nosanitize !9

350:                                              ; preds = %346
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

351:                                              ; preds = %346
  %352 = getelementptr inbounds nuw i8, ptr %298, i64 4
  %353 = load i8, ptr %352, align 1, !tbaa !8
  %354 = zext i8 %353 to i64
  %355 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %343, i64 %354), !nosanitize !9
  %356 = extractvalue { i64, i1 } %355, 0, !nosanitize !9
  %357 = extractvalue { i64, i1 } %355, 1, !nosanitize !9
  br i1 %357, label %358, label %359, !prof !11, !nosanitize !9

358:                                              ; preds = %351
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

359:                                              ; preds = %351
  %360 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %348, i64 %356), !nosanitize !9
  %361 = extractvalue { i64, i1 } %360, 0, !nosanitize !9
  %362 = extractvalue { i64, i1 } %360, 1, !nosanitize !9
  br i1 %362, label %363, label %364, !prof !11, !nosanitize !9

363:                                              ; preds = %359
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

364:                                              ; preds = %359
  %365 = getelementptr inbounds nuw i8, ptr %298, i64 5
  %366 = load i8, ptr %365, align 1, !tbaa !8
  %367 = zext i8 %366 to i64
  %368 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %356, i64 %367), !nosanitize !9
  %369 = extractvalue { i64, i1 } %368, 0, !nosanitize !9
  %370 = extractvalue { i64, i1 } %368, 1, !nosanitize !9
  br i1 %370, label %371, label %372, !prof !11, !nosanitize !9

371:                                              ; preds = %364
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

372:                                              ; preds = %364
  %373 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %361, i64 %369), !nosanitize !9
  %374 = extractvalue { i64, i1 } %373, 0, !nosanitize !9
  %375 = extractvalue { i64, i1 } %373, 1, !nosanitize !9
  br i1 %375, label %376, label %377, !prof !11, !nosanitize !9

376:                                              ; preds = %372
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

377:                                              ; preds = %372
  %378 = getelementptr inbounds nuw i8, ptr %298, i64 6
  %379 = load i8, ptr %378, align 1, !tbaa !8
  %380 = zext i8 %379 to i64
  %381 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %369, i64 %380), !nosanitize !9
  %382 = extractvalue { i64, i1 } %381, 0, !nosanitize !9
  %383 = extractvalue { i64, i1 } %381, 1, !nosanitize !9
  br i1 %383, label %384, label %385, !prof !11, !nosanitize !9

384:                                              ; preds = %377
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

385:                                              ; preds = %377
  %386 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %374, i64 %382), !nosanitize !9
  %387 = extractvalue { i64, i1 } %386, 0, !nosanitize !9
  %388 = extractvalue { i64, i1 } %386, 1, !nosanitize !9
  br i1 %388, label %389, label %390, !prof !11, !nosanitize !9

389:                                              ; preds = %385
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

390:                                              ; preds = %385
  %391 = getelementptr inbounds nuw i8, ptr %298, i64 7
  %392 = load i8, ptr %391, align 1, !tbaa !8
  %393 = zext i8 %392 to i64
  %394 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %382, i64 %393), !nosanitize !9
  %395 = extractvalue { i64, i1 } %394, 0, !nosanitize !9
  %396 = extractvalue { i64, i1 } %394, 1, !nosanitize !9
  br i1 %396, label %397, label %398, !prof !11, !nosanitize !9

397:                                              ; preds = %390
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

398:                                              ; preds = %390
  %399 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %387, i64 %395), !nosanitize !9
  %400 = extractvalue { i64, i1 } %399, 0, !nosanitize !9
  %401 = extractvalue { i64, i1 } %399, 1, !nosanitize !9
  br i1 %401, label %402, label %403, !prof !11, !nosanitize !9

402:                                              ; preds = %398
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

403:                                              ; preds = %398
  %404 = getelementptr inbounds nuw i8, ptr %298, i64 8
  %405 = load i8, ptr %404, align 1, !tbaa !8
  %406 = zext i8 %405 to i64
  %407 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %395, i64 %406), !nosanitize !9
  %408 = extractvalue { i64, i1 } %407, 0, !nosanitize !9
  %409 = extractvalue { i64, i1 } %407, 1, !nosanitize !9
  br i1 %409, label %410, label %411, !prof !11, !nosanitize !9

410:                                              ; preds = %403
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

411:                                              ; preds = %403
  %412 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %400, i64 %408), !nosanitize !9
  %413 = extractvalue { i64, i1 } %412, 0, !nosanitize !9
  %414 = extractvalue { i64, i1 } %412, 1, !nosanitize !9
  br i1 %414, label %415, label %416, !prof !11, !nosanitize !9

415:                                              ; preds = %411
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

416:                                              ; preds = %411
  %417 = getelementptr inbounds nuw i8, ptr %298, i64 9
  %418 = load i8, ptr %417, align 1, !tbaa !8
  %419 = zext i8 %418 to i64
  %420 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %408, i64 %419), !nosanitize !9
  %421 = extractvalue { i64, i1 } %420, 0, !nosanitize !9
  %422 = extractvalue { i64, i1 } %420, 1, !nosanitize !9
  br i1 %422, label %423, label %424, !prof !11, !nosanitize !9

423:                                              ; preds = %416
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

424:                                              ; preds = %416
  %425 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %413, i64 %421), !nosanitize !9
  %426 = extractvalue { i64, i1 } %425, 0, !nosanitize !9
  %427 = extractvalue { i64, i1 } %425, 1, !nosanitize !9
  br i1 %427, label %428, label %429, !prof !11, !nosanitize !9

428:                                              ; preds = %424
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

429:                                              ; preds = %424
  %430 = getelementptr inbounds nuw i8, ptr %298, i64 10
  %431 = load i8, ptr %430, align 1, !tbaa !8
  %432 = zext i8 %431 to i64
  %433 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %421, i64 %432), !nosanitize !9
  %434 = extractvalue { i64, i1 } %433, 0, !nosanitize !9
  %435 = extractvalue { i64, i1 } %433, 1, !nosanitize !9
  br i1 %435, label %436, label %437, !prof !11, !nosanitize !9

436:                                              ; preds = %429
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

437:                                              ; preds = %429
  %438 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %426, i64 %434), !nosanitize !9
  %439 = extractvalue { i64, i1 } %438, 0, !nosanitize !9
  %440 = extractvalue { i64, i1 } %438, 1, !nosanitize !9
  br i1 %440, label %441, label %442, !prof !11, !nosanitize !9

441:                                              ; preds = %437
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

442:                                              ; preds = %437
  %443 = getelementptr inbounds nuw i8, ptr %298, i64 11
  %444 = load i8, ptr %443, align 1, !tbaa !8
  %445 = zext i8 %444 to i64
  %446 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %434, i64 %445), !nosanitize !9
  %447 = extractvalue { i64, i1 } %446, 0, !nosanitize !9
  %448 = extractvalue { i64, i1 } %446, 1, !nosanitize !9
  br i1 %448, label %449, label %450, !prof !11, !nosanitize !9

449:                                              ; preds = %442
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

450:                                              ; preds = %442
  %451 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %439, i64 %447), !nosanitize !9
  %452 = extractvalue { i64, i1 } %451, 0, !nosanitize !9
  %453 = extractvalue { i64, i1 } %451, 1, !nosanitize !9
  br i1 %453, label %454, label %455, !prof !11, !nosanitize !9

454:                                              ; preds = %450
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

455:                                              ; preds = %450
  %456 = getelementptr inbounds nuw i8, ptr %298, i64 12
  %457 = load i8, ptr %456, align 1, !tbaa !8
  %458 = zext i8 %457 to i64
  %459 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %447, i64 %458), !nosanitize !9
  %460 = extractvalue { i64, i1 } %459, 0, !nosanitize !9
  %461 = extractvalue { i64, i1 } %459, 1, !nosanitize !9
  br i1 %461, label %462, label %463, !prof !11, !nosanitize !9

462:                                              ; preds = %455
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

463:                                              ; preds = %455
  %464 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %452, i64 %460), !nosanitize !9
  %465 = extractvalue { i64, i1 } %464, 0, !nosanitize !9
  %466 = extractvalue { i64, i1 } %464, 1, !nosanitize !9
  br i1 %466, label %467, label %468, !prof !11, !nosanitize !9

467:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

468:                                              ; preds = %463
  %469 = getelementptr inbounds nuw i8, ptr %298, i64 13
  %470 = load i8, ptr %469, align 1, !tbaa !8
  %471 = zext i8 %470 to i64
  %472 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %460, i64 %471), !nosanitize !9
  %473 = extractvalue { i64, i1 } %472, 0, !nosanitize !9
  %474 = extractvalue { i64, i1 } %472, 1, !nosanitize !9
  br i1 %474, label %475, label %476, !prof !11, !nosanitize !9

475:                                              ; preds = %468
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

476:                                              ; preds = %468
  %477 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %465, i64 %473), !nosanitize !9
  %478 = extractvalue { i64, i1 } %477, 0, !nosanitize !9
  %479 = extractvalue { i64, i1 } %477, 1, !nosanitize !9
  br i1 %479, label %480, label %481, !prof !11, !nosanitize !9

480:                                              ; preds = %476
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

481:                                              ; preds = %476
  %482 = getelementptr inbounds nuw i8, ptr %298, i64 14
  %483 = load i8, ptr %482, align 1, !tbaa !8
  %484 = zext i8 %483 to i64
  %485 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %473, i64 %484), !nosanitize !9
  %486 = extractvalue { i64, i1 } %485, 0, !nosanitize !9
  %487 = extractvalue { i64, i1 } %485, 1, !nosanitize !9
  br i1 %487, label %488, label %489, !prof !11, !nosanitize !9

488:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

489:                                              ; preds = %481
  %490 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %478, i64 %486), !nosanitize !9
  %491 = extractvalue { i64, i1 } %490, 0, !nosanitize !9
  %492 = extractvalue { i64, i1 } %490, 1, !nosanitize !9
  br i1 %492, label %493, label %494, !prof !11, !nosanitize !9

493:                                              ; preds = %489
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

494:                                              ; preds = %489
  %495 = getelementptr inbounds nuw i8, ptr %298, i64 15
  %496 = load i8, ptr %495, align 1, !tbaa !8
  %497 = zext i8 %496 to i64
  %498 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %486, i64 %497), !nosanitize !9
  %499 = extractvalue { i64, i1 } %498, 0, !nosanitize !9
  %500 = extractvalue { i64, i1 } %498, 1, !nosanitize !9
  br i1 %500, label %501, label %502, !prof !11, !nosanitize !9

501:                                              ; preds = %494
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

502:                                              ; preds = %494
  %503 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %491, i64 %499), !nosanitize !9
  %504 = extractvalue { i64, i1 } %503, 1, !nosanitize !9
  br i1 %504, label %505, label %506, !prof !11, !nosanitize !9

505:                                              ; preds = %502
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

506:                                              ; preds = %502
  %507 = extractvalue { i64, i1 } %503, 0, !nosanitize !9
  %508 = getelementptr inbounds nuw i8, ptr %298, i64 16
  %509 = icmp ugt i64 %300, 15
  br i1 %509, label %295, label %288, !llvm.loop !17

510:                                              ; preds = %528, %288
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !9
  unreachable, !nosanitize !9

511:                                              ; preds = %288, %528
  %512 = phi { i64, i1 } [ %530, %528 ], [ %293, %288 ]
  %513 = phi i64 [ %529, %528 ], [ %292, %288 ]
  %514 = phi ptr [ %517, %528 ], [ %290, %288 ]
  %515 = phi i64 [ %521, %528 ], [ %289, %288 ]
  %516 = extractvalue { i64, i1 } %512, 0
  %517 = getelementptr inbounds nuw i8, ptr %514, i64 1
  %518 = load i8, ptr %514, align 1, !tbaa !8
  %519 = zext i8 %518 to i64
  %520 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %515, i64 %519), !nosanitize !9
  %521 = extractvalue { i64, i1 } %520, 0, !nosanitize !9
  %522 = extractvalue { i64, i1 } %520, 1, !nosanitize !9
  br i1 %522, label %523, label %524, !prof !11, !nosanitize !9

523:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

524:                                              ; preds = %511
  %525 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %513, i64 %521), !nosanitize !9
  %526 = extractvalue { i64, i1 } %525, 1, !nosanitize !9
  br i1 %526, label %527, label %528, !prof !11, !nosanitize !9

527:                                              ; preds = %524
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !9
  unreachable, !nosanitize !9

528:                                              ; preds = %524
  %529 = extractvalue { i64, i1 } %525, 0, !nosanitize !9
  %530 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %516, i64 1), !nosanitize !9
  %531 = extractvalue { i64, i1 } %530, 1, !nosanitize !9
  br i1 %531, label %510, label %511, !prof !12, !llvm.loop !18, !nosanitize !9

532:                                              ; preds = %284
  %533 = shl nuw nsw i64 %282, 16
  %534 = or disjoint i64 %533, %281
  br label %535

535:                                              ; preds = %9, %22, %532
  %536 = phi i64 [ %21, %9 ], [ %534, %532 ], [ 1, %22 ]
  ret i64 %536
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

37:                                               ; preds = %3, %5
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

37:                                               ; preds = %3, %5
  %38 = phi i64 [ %36, %5 ], [ 4294967295, %3 ]
  ret i64 %38
}

attributes #0 = { nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
