; ModuleID = '<stdin>'
source_filename = "/mydata/zstd/lib/compress/zstd_compress_literals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_noCompressLiterals(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt i64 %3, 31
  %6 = select i1 %5, i32 2, i32 1
  %7 = icmp ugt i64 %3, 4095
  %8 = zext i1 %7 to i32
  %9 = add nuw nsw i32 %6, %8
  %10 = zext nneg i32 %9 to i64
  %11 = add i64 %3, %10
  %12 = icmp ugt i64 %11, %1
  br i1 %12, label %27, label %13

13:                                               ; preds = %4
  switch i32 %9, label %default.unreachable1 [
    i32 1, label %14
    i32 2, label %17
    i32 3, label %21
  ]

14:                                               ; preds = %13
  %15 = trunc i64 %3 to i8
  %16 = shl i8 %15, 3
  store i8 %16, ptr %0, align 1, !tbaa !5
  br label %25

17:                                               ; preds = %13
  %18 = trunc i64 %3 to i16
  %19 = shl i16 %18, 4
  %20 = or disjoint i16 %19, 4
  store i16 %20, ptr %0, align 1, !tbaa !8
  br label %25

21:                                               ; preds = %13
  %22 = trunc i64 %3 to i32
  %23 = shl i32 %22, 4
  %24 = or disjoint i32 %23, 12
  store i32 %24, ptr %0, align 1, !tbaa !10
  br label %25

default.unreachable1:                             ; preds = %13
  unreachable

25:                                               ; preds = %21, %17, %14
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr align 1 %2, i64 %3, i1 false)
  br label %27

27:                                               ; preds = %25, %4
  %28 = phi i64 [ %11, %25 ], [ -70, %4 ]
  ret i64 %28
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 2, 5) i64 @ZSTD_compressRleLiteralsBlock(ptr noundef writeonly captures(none) %0, i64 %1, ptr noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt i64 %3, 31
  %6 = select i1 %5, i32 2, i32 1
  %7 = icmp ugt i64 %3, 4095
  %8 = zext i1 %7 to i32
  %9 = add nuw nsw i32 %6, %8
  switch i32 %9, label %default.unreachable1 [
    i32 1, label %10
    i32 2, label %14
    i32 3, label %18
  ]

10:                                               ; preds = %4
  %11 = trunc i64 %3 to i8
  %12 = shl i8 %11, 3
  %13 = or disjoint i8 %12, 1
  store i8 %13, ptr %0, align 1, !tbaa !5
  br label %22

14:                                               ; preds = %4
  %15 = trunc i64 %3 to i16
  %16 = shl i16 %15, 4
  %17 = or disjoint i16 %16, 5
  store i16 %17, ptr %0, align 1, !tbaa !8
  br label %22

18:                                               ; preds = %4
  %19 = trunc i64 %3 to i32
  %20 = shl i32 %19, 4
  %21 = or disjoint i32 %20, 13
  store i32 %21, ptr %0, align 1, !tbaa !10
  br label %22

default.unreachable1:                             ; preds = %4
  unreachable

22:                                               ; preds = %18, %14, %10
  %23 = load i8, ptr %2, align 1, !tbaa !5
  %24 = zext nneg i32 %9 to i64
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 %24
  store i8 %23, ptr %25, align 1, !tbaa !5
  %26 = add nuw nsw i32 %9, 1
  %27 = zext nneg i32 %26 to i64
  ret i64 %27
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressLiterals(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef readonly captures(none) %6, ptr noundef initializes((0, 2064)) %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #3 {
  %13 = alloca i32, align 4
  %14 = icmp ugt i64 %3, 1023
  %15 = select i1 %14, i64 4, i64 3
  %16 = icmp ugt i64 %3, 16383
  %17 = zext i1 %16 to i64
  %18 = add nuw nsw i64 %15, %17
  %19 = icmp ugt i64 %3, 255
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %7, ptr noundef nonnull align 8 dereferenceable(2064) %6, i64 2064, i1 false)
  %20 = icmp eq i32 %9, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %12
  %22 = icmp ugt i64 %3, 31
  %23 = select i1 %22, i32 2, i32 1
  %24 = icmp ugt i64 %3, 4095
  %25 = zext i1 %24 to i32
  %26 = add nuw nsw i32 %23, %25
  %27 = zext nneg i32 %26 to i64
  %28 = add i64 %3, %27
  %29 = icmp ugt i64 %28, %1
  br i1 %29, label %220, label %30

30:                                               ; preds = %21
  switch i32 %26, label %default.unreachable15 [
    i32 1, label %31
    i32 2, label %34
    i32 3, label %38
  ]

31:                                               ; preds = %30
  %32 = trunc i64 %3 to i8
  %33 = shl i8 %32, 3
  store i8 %33, ptr %0, align 1, !tbaa !5
  br label %42

34:                                               ; preds = %30
  %35 = trunc i64 %3 to i16
  %36 = shl i16 %35, 4
  %37 = or disjoint i16 %36, 4
  store i16 %37, ptr %0, align 1, !tbaa !8
  br label %42

38:                                               ; preds = %30
  %39 = trunc i64 %3 to i32
  %40 = shl i32 %39, 4
  %41 = or disjoint i32 %40, 12
  store i32 %41, ptr %0, align 1, !tbaa !10
  br label %42

default.unreachable15:                            ; preds = %185, %125, %67, %30
  unreachable

42:                                               ; preds = %38, %34, %31
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 %27
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %43, ptr readonly align 1 %2, i64 %3, i1 false)
  br label %220

44:                                               ; preds = %12
  %45 = getelementptr inbounds nuw i8, ptr %6, i64 2056
  %46 = load i32, ptr %45, align 8, !tbaa !12
  %47 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 9, i32 %8), !nosanitize !14
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !14
  br i1 %48, label %49, label %50, !prof !15, !nosanitize !14

49:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !14
  unreachable, !nosanitize !14

50:                                               ; preds = %44
  %51 = extractvalue { i32, i1 } %47, 0, !nosanitize !14
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 3)
  %53 = zext nneg i32 %52 to i64
  %54 = icmp ne i32 %46, 2
  %55 = shl i64 8, %53
  %56 = select i1 %54, i64 %55, i64 6
  %57 = icmp ult i64 %3, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %50
  %59 = icmp ugt i64 %3, 31
  %60 = select i1 %59, i32 2, i32 1
  %61 = icmp ugt i64 %3, 4095
  %62 = zext i1 %61 to i32
  %63 = add nuw nsw i32 %60, %62
  %64 = zext nneg i32 %63 to i64
  %65 = add i64 %3, %64
  %66 = icmp ugt i64 %65, %1
  br i1 %66, label %220, label %67

67:                                               ; preds = %58
  switch i32 %63, label %default.unreachable15 [
    i32 1, label %68
    i32 2, label %71
    i32 3, label %75
  ]

68:                                               ; preds = %67
  %69 = trunc i64 %3 to i8
  %70 = shl i8 %69, 3
  store i8 %70, ptr %0, align 1, !tbaa !5
  br label %79

71:                                               ; preds = %67
  %72 = trunc i64 %3 to i16
  %73 = shl i16 %72, 4
  %74 = or disjoint i16 %73, 4
  store i16 %74, ptr %0, align 1, !tbaa !8
  br label %79

75:                                               ; preds = %67
  %76 = trunc i64 %3 to i32
  %77 = shl i32 %76, 4
  %78 = or disjoint i32 %77, 12
  store i32 %78, ptr %0, align 1, !tbaa !10
  br label %79

79:                                               ; preds = %75, %71, %68
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 %64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %80, ptr readonly align 1 %2, i64 %3, i1 false)
  br label %220

81:                                               ; preds = %50
  %82 = icmp ugt i64 %1, %18
  br i1 %82, label %83, label %220

83:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store i32 %46, ptr %13, align 4, !tbaa !10
  %84 = icmp ne i32 %11, 0
  %85 = zext i1 %84 to i32
  %86 = icmp ult i32 %8, 4
  %87 = icmp ult i64 %3, 1025
  %88 = and i1 %87, %86
  %89 = select i1 %88, i32 4, i32 0
  %90 = icmp ugt i32 %8, 7
  %91 = select i1 %90, i32 2, i32 0
  %92 = icmp eq i32 %10, 0
  %93 = select i1 %92, i32 0, i32 8
  %94 = or disjoint i32 %89, %91
  %95 = or disjoint i32 %94, %93
  %96 = or disjoint i32 %95, %85
  %97 = or i1 %14, %54
  %98 = and i1 %19, %97
  %99 = select i1 %98, ptr @HUF_compress4X_repeat, ptr @HUF_compress1X_repeat
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 %18
  %101 = sub nuw i64 %1, %18
  %102 = call i64 %99(ptr noundef nonnull %100, i64 noundef %101, ptr noundef %2, i64 noundef %3, i32 noundef 255, i32 noundef 11, ptr noundef %4, i64 noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %13, i32 noundef %96) #8, !callees !16
  %103 = load i32, ptr %13, align 4, !tbaa !10
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i32 2, i32 3
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %106 = call i32 @llvm.umax.i32(i32 %8, i32 7)
  %107 = add i32 %106, -1
  %108 = zext nneg i32 %107 to i64
  %109 = lshr i64 %3, %108
  %110 = add i64 %3, -2
  %111 = sub i64 %110, %109
  %112 = icmp ult i64 %102, %111
  %113 = add i64 %102, -1
  %114 = icmp ult i64 %113, -120
  %115 = select i1 %114, i1 %112, i1 false
  br i1 %115, label %139, label %116

116:                                              ; preds = %83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %7, ptr noundef nonnull align 8 dereferenceable(2064) %6, i64 2064, i1 false)
  %117 = icmp ugt i64 %3, 31
  %118 = select i1 %117, i32 2, i32 1
  %119 = icmp ugt i64 %3, 4095
  %120 = zext i1 %119 to i32
  %121 = add nuw nsw i32 %118, %120
  %122 = zext nneg i32 %121 to i64
  %123 = add i64 %3, %122
  %124 = icmp ugt i64 %123, %1
  br i1 %124, label %220, label %125

125:                                              ; preds = %116
  switch i32 %121, label %default.unreachable15 [
    i32 1, label %126
    i32 2, label %129
    i32 3, label %133
  ]

126:                                              ; preds = %125
  %127 = trunc i64 %3 to i8
  %128 = shl i8 %127, 3
  store i8 %128, ptr %0, align 1, !tbaa !5
  br label %137

129:                                              ; preds = %125
  %130 = trunc i64 %3 to i16
  %131 = shl i16 %130, 4
  %132 = or disjoint i16 %131, 4
  store i16 %132, ptr %0, align 1, !tbaa !8
  br label %137

133:                                              ; preds = %125
  %134 = trunc i64 %3 to i32
  %135 = shl i32 %134, 4
  %136 = or disjoint i32 %135, 12
  store i32 %136, ptr %0, align 1, !tbaa !10
  br label %137

137:                                              ; preds = %133, %129, %126
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 %122
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %138, ptr readonly align 1 %2, i64 %3, i1 false)
  br label %220

139:                                              ; preds = %83
  %140 = icmp eq i64 %102, 1
  br i1 %140, label %141, label %182

141:                                              ; preds = %139
  %142 = icmp ugt i64 %3, 7
  br i1 %142, label %180, label %143

143:                                              ; preds = %141
  %144 = load i8, ptr %2, align 1, !tbaa !5
  %145 = icmp samesign ugt i64 %3, 1
  br i1 %145, label %176, label %180

146:                                              ; preds = %176
  %147 = icmp eq i64 %3, 2
  br i1 %147, label %180, label %148, !llvm.loop !17

148:                                              ; preds = %146
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %150 = load i8, ptr %149, align 1, !tbaa !5
  %151 = icmp eq i8 %150, %144
  br i1 %151, label %152, label %182

152:                                              ; preds = %148
  %153 = icmp eq i64 %3, 3
  br i1 %153, label %180, label %154, !llvm.loop !17

154:                                              ; preds = %152
  %155 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %156 = load i8, ptr %155, align 1, !tbaa !5
  %157 = icmp eq i8 %156, %144
  br i1 %157, label %158, label %182

158:                                              ; preds = %154
  %159 = icmp eq i64 %3, 4
  br i1 %159, label %180, label %160, !llvm.loop !17

160:                                              ; preds = %158
  %161 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %162 = load i8, ptr %161, align 1, !tbaa !5
  %163 = icmp eq i8 %162, %144
  br i1 %163, label %164, label %182

164:                                              ; preds = %160
  %165 = icmp eq i64 %3, 5
  br i1 %165, label %180, label %166, !llvm.loop !17

166:                                              ; preds = %164
  %167 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %168 = load i8, ptr %167, align 1, !tbaa !5
  %169 = icmp eq i8 %168, %144
  br i1 %169, label %170, label %182

170:                                              ; preds = %166
  %171 = icmp eq i64 %3, 6
  br i1 %171, label %180, label %172, !llvm.loop !17

172:                                              ; preds = %170
  %173 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %174 = load i8, ptr %173, align 1, !tbaa !5
  %175 = icmp eq i8 %174, %144
  br i1 %175, label %180, label %182

176:                                              ; preds = %143
  %177 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %178 = load i8, ptr %177, align 1, !tbaa !5
  %179 = icmp eq i8 %178, %144
  br i1 %179, label %146, label %182

180:                                              ; preds = %172, %170, %164, %158, %152, %146, %143, %141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %7, ptr noundef nonnull align 8 dereferenceable(2064) %6, i64 2064, i1 false)
  %181 = call i64 @ZSTD_compressRleLiteralsBlock(ptr noundef nonnull %0, i64 poison, ptr noundef %2, i64 noundef %3)
  br label %220

182:                                              ; preds = %176, %172, %166, %160, %154, %148, %139
  br i1 %104, label %183, label %185

183:                                              ; preds = %182
  %184 = getelementptr inbounds nuw i8, ptr %7, i64 2056
  store i32 1, ptr %184, align 8, !tbaa !12
  br label %185

185:                                              ; preds = %183, %182
  switch i64 %18, label %default.unreachable15 [
    i64 3, label %186
    i64 4, label %199
    i64 5, label %207
  ]

186:                                              ; preds = %185
  %187 = select i1 %98, i32 4, i32 0
  %188 = trunc i64 %3 to i32
  %189 = shl i32 %188, 4
  %190 = or disjoint i32 %187, %189
  %191 = trunc i64 %102 to i32
  %192 = shl i32 %191, 14
  %193 = add i32 %190, %192
  %194 = or disjoint i32 %193, %105
  %195 = trunc i32 %194 to i16
  store i16 %195, ptr %0, align 1, !tbaa !8
  %196 = lshr i32 %193, 16
  %197 = trunc i32 %196 to i8
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %197, ptr %198, align 1, !tbaa !5
  br label %218

199:                                              ; preds = %185
  %200 = trunc i64 %3 to i32
  %201 = shl i32 %200, 4
  %202 = trunc i64 %102 to i32
  %203 = shl i32 %202, 18
  %204 = or disjoint i32 %201, 8
  %205 = add i32 %204, %203
  %206 = or disjoint i32 %205, %105
  store i32 %206, ptr %0, align 1, !tbaa !10
  br label %218

207:                                              ; preds = %185
  %208 = trunc i64 %3 to i32
  %209 = shl i32 %208, 4
  %210 = trunc i64 %102 to i32
  %211 = shl i32 %210, 22
  %212 = or disjoint i32 %209, 12
  %213 = add i32 %212, %211
  %214 = or disjoint i32 %213, %105
  store i32 %214, ptr %0, align 1, !tbaa !10
  %215 = lshr i64 %102, 10
  %216 = trunc i64 %215 to i8
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %216, ptr %217, align 1, !tbaa !5
  br label %218

218:                                              ; preds = %207, %199, %186
  %219 = add nuw i64 %102, %18
  br label %220

220:                                              ; preds = %218, %180, %137, %116, %81, %79, %58, %42, %21
  %221 = phi i64 [ %181, %180 ], [ %219, %218 ], [ -70, %81 ], [ %28, %42 ], [ -70, %21 ], [ %65, %79 ], [ -70, %58 ], [ -70, %116 ], [ %123, %137 ]
  ret i64 %221
}

declare i64 @HUF_compress1X_repeat(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @HUF_compress4X_repeat(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !11, i64 2056}
!13 = !{!"", !6, i64 0, !11, i64 2056}
!14 = !{}
!15 = !{!"branch_weights", i32 1, i32 1048575}
!16 = !{ptr @HUF_compress1X_repeat, ptr @HUF_compress4X_repeat}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
