; ModuleID = '/mydata/zstd/lib/compress/zstd_compress_literals.c'
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
  br i1 %12, label %28, label %13

13:                                               ; preds = %4
  switch i32 %9, label %25 [
    i32 1, label %14
    i32 2, label %17
    i32 3, label %21
  ]

14:                                               ; preds = %13
  %15 = trunc i64 %3 to i8
  %16 = shl i8 %15, 3
  store i8 %16, ptr %0, align 1, !tbaa !5
  br label %26

17:                                               ; preds = %13
  %18 = trunc i64 %3 to i16
  %19 = shl i16 %18, 4
  %20 = or disjoint i16 %19, 4
  store i16 %20, ptr %0, align 1, !tbaa !8
  br label %26

21:                                               ; preds = %13
  %22 = trunc i64 %3 to i32
  %23 = shl i32 %22, 4
  %24 = or disjoint i32 %23, 12
  store i32 %24, ptr %0, align 1, !tbaa !10
  br label %26

25:                                               ; preds = %13
  unreachable

26:                                               ; preds = %21, %17, %14
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr align 1 %2, i64 %3, i1 false)
  br label %28

28:                                               ; preds = %4, %26
  %29 = phi i64 [ %11, %26 ], [ -70, %4 ]
  ret i64 %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 2, 5) i64 @ZSTD_compressRleLiteralsBlock(ptr noundef writeonly captures(none) %0, i64 %1, ptr noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt i64 %3, 31
  %6 = select i1 %5, i32 2, i32 1
  %7 = icmp ugt i64 %3, 4095
  %8 = zext i1 %7 to i32
  %9 = add nuw nsw i32 %6, %8
  switch i32 %9, label %22 [
    i32 1, label %10
    i32 2, label %14
    i32 3, label %18
  ]

10:                                               ; preds = %4
  %11 = trunc i64 %3 to i8
  %12 = shl i8 %11, 3
  %13 = or disjoint i8 %12, 1
  store i8 %13, ptr %0, align 1, !tbaa !5
  br label %23

14:                                               ; preds = %4
  %15 = trunc i64 %3 to i16
  %16 = shl i16 %15, 4
  %17 = or disjoint i16 %16, 5
  store i16 %17, ptr %0, align 1, !tbaa !8
  br label %23

18:                                               ; preds = %4
  %19 = trunc i64 %3 to i32
  %20 = shl i32 %19, 4
  %21 = or disjoint i32 %20, 13
  store i32 %21, ptr %0, align 1, !tbaa !10
  br label %23

22:                                               ; preds = %4
  unreachable

23:                                               ; preds = %18, %14, %10
  %24 = load i8, ptr %2, align 1, !tbaa !5
  %25 = zext nneg i32 %9 to i64
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 %25
  store i8 %24, ptr %26, align 1, !tbaa !5
  %27 = add nuw nsw i32 %9, 1
  %28 = zext nneg i32 %27 to i64
  ret i64 %28
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressLiterals(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef readonly captures(none) %6, ptr noundef initializes((0, 2064)) %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #4 {
  %13 = alloca i32, align 4
  %14 = icmp ugt i64 %3, 1023
  %15 = select i1 %14, i64 4, i64 3
  %16 = icmp ugt i64 %3, 16383
  %17 = zext i1 %16 to i64
  %18 = add nuw nsw i64 %15, %17
  %19 = icmp ugt i64 %3, 255
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %7, ptr noundef nonnull align 8 dereferenceable(2064) %6, i64 2064, i1 false)
  %20 = icmp eq i32 %9, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %12
  %22 = icmp ugt i64 %3, 31
  %23 = select i1 %22, i32 2, i32 1
  %24 = icmp ugt i64 %3, 4095
  %25 = zext i1 %24 to i32
  %26 = add nuw nsw i32 %23, %25
  %27 = zext nneg i32 %26 to i64
  %28 = add i64 %3, %27
  %29 = icmp ugt i64 %28, %1
  br i1 %29, label %222, label %30

30:                                               ; preds = %21
  switch i32 %26, label %42 [
    i32 1, label %31
    i32 2, label %34
    i32 3, label %38
  ]

31:                                               ; preds = %30
  %32 = trunc i64 %3 to i8
  %33 = shl i8 %32, 3
  store i8 %33, ptr %0, align 1, !tbaa !5
  br label %43

34:                                               ; preds = %30
  %35 = trunc i64 %3 to i16
  %36 = shl i16 %35, 4
  %37 = or disjoint i16 %36, 4
  store i16 %37, ptr %0, align 1, !tbaa !8
  br label %43

38:                                               ; preds = %30
  %39 = trunc i64 %3 to i32
  %40 = shl i32 %39, 4
  %41 = or disjoint i32 %40, 12
  store i32 %41, ptr %0, align 1, !tbaa !10
  br label %43

42:                                               ; preds = %187, %127, %68, %30
  unreachable

43:                                               ; preds = %38, %34, %31
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 %27
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %44, ptr readonly align 1 %2, i64 %3, i1 false)
  br label %222

45:                                               ; preds = %12
  %46 = getelementptr inbounds nuw i8, ptr %6, i64 2056
  %47 = load i32, ptr %46, align 8, !tbaa !12
  %48 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 9, i32 %8), !nosanitize !14
  %49 = extractvalue { i32, i1 } %48, 1, !nosanitize !14
  br i1 %49, label %50, label %51, !prof !15, !nosanitize !14

50:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !14
  unreachable, !nosanitize !14

51:                                               ; preds = %45
  %52 = extractvalue { i32, i1 } %48, 0, !nosanitize !14
  %53 = tail call i32 @llvm.smin.i32(i32 %52, i32 3)
  %54 = zext nneg i32 %53 to i64
  %55 = icmp ne i32 %47, 2
  %56 = shl i64 8, %54
  %57 = select i1 %55, i64 %56, i64 6
  %58 = icmp ult i64 %3, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %51
  %60 = icmp ugt i64 %3, 31
  %61 = select i1 %60, i32 2, i32 1
  %62 = icmp ugt i64 %3, 4095
  %63 = zext i1 %62 to i32
  %64 = add nuw nsw i32 %61, %63
  %65 = zext nneg i32 %64 to i64
  %66 = add i64 %3, %65
  %67 = icmp ugt i64 %66, %1
  br i1 %67, label %222, label %68

68:                                               ; preds = %59
  switch i32 %64, label %42 [
    i32 1, label %69
    i32 2, label %72
    i32 3, label %76
  ]

69:                                               ; preds = %68
  %70 = trunc i64 %3 to i8
  %71 = shl i8 %70, 3
  store i8 %71, ptr %0, align 1, !tbaa !5
  br label %80

72:                                               ; preds = %68
  %73 = trunc i64 %3 to i16
  %74 = shl i16 %73, 4
  %75 = or disjoint i16 %74, 4
  store i16 %75, ptr %0, align 1, !tbaa !8
  br label %80

76:                                               ; preds = %68
  %77 = trunc i64 %3 to i32
  %78 = shl i32 %77, 4
  %79 = or disjoint i32 %78, 12
  store i32 %79, ptr %0, align 1, !tbaa !10
  br label %80

80:                                               ; preds = %76, %72, %69
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %81, ptr readonly align 1 %2, i64 %3, i1 false)
  br label %222

82:                                               ; preds = %51
  %83 = icmp ugt i64 %1, %18
  br i1 %83, label %84, label %222

84:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #9
  store i32 %47, ptr %13, align 4, !tbaa !10
  %85 = icmp ne i32 %11, 0
  %86 = zext i1 %85 to i32
  %87 = icmp ult i32 %8, 4
  %88 = icmp ult i64 %3, 1025
  %89 = and i1 %88, %87
  %90 = select i1 %89, i32 4, i32 0
  %91 = icmp ugt i32 %8, 7
  %92 = select i1 %91, i32 2, i32 0
  %93 = icmp eq i32 %10, 0
  %94 = select i1 %93, i32 0, i32 8
  %95 = or disjoint i32 %90, %92
  %96 = or disjoint i32 %95, %94
  %97 = or disjoint i32 %96, %86
  %98 = icmp ne i64 %18, 3
  %99 = select i1 %55, i1 true, i1 %98
  %100 = and i1 %19, %99
  %101 = select i1 %100, ptr @HUF_compress4X_repeat, ptr @HUF_compress1X_repeat
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 %18
  %103 = sub nuw i64 %1, %18
  %104 = call i64 %101(ptr noundef nonnull %102, i64 noundef %103, ptr noundef %2, i64 noundef %3, i32 noundef 255, i32 noundef 11, ptr noundef %4, i64 noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %13, i32 noundef %97) #9, !callees !16
  %105 = load i32, ptr %13, align 4, !tbaa !10
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 2, i32 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #9
  %108 = call i32 @llvm.umax.i32(i32 %8, i32 7)
  %109 = add i32 %108, -1
  %110 = zext nneg i32 %109 to i64
  %111 = lshr i64 %3, %110
  %112 = add i64 %3, -2
  %113 = sub i64 %112, %111
  %114 = icmp ult i64 %104, %113
  %115 = add i64 %104, -1
  %116 = icmp ult i64 %115, -120
  %117 = select i1 %116, i1 %114, i1 false
  br i1 %117, label %141, label %118

118:                                              ; preds = %84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %7, ptr noundef nonnull align 8 dereferenceable(2064) %6, i64 2064, i1 false)
  %119 = icmp ugt i64 %3, 31
  %120 = select i1 %119, i32 2, i32 1
  %121 = icmp ugt i64 %3, 4095
  %122 = zext i1 %121 to i32
  %123 = add nuw nsw i32 %120, %122
  %124 = zext nneg i32 %123 to i64
  %125 = add i64 %3, %124
  %126 = icmp ugt i64 %125, %1
  br i1 %126, label %222, label %127

127:                                              ; preds = %118
  switch i32 %123, label %42 [
    i32 1, label %128
    i32 2, label %131
    i32 3, label %135
  ]

128:                                              ; preds = %127
  %129 = trunc i64 %3 to i8
  %130 = shl i8 %129, 3
  store i8 %130, ptr %0, align 1, !tbaa !5
  br label %139

131:                                              ; preds = %127
  %132 = trunc i64 %3 to i16
  %133 = shl i16 %132, 4
  %134 = or disjoint i16 %133, 4
  store i16 %134, ptr %0, align 1, !tbaa !8
  br label %139

135:                                              ; preds = %127
  %136 = trunc i64 %3 to i32
  %137 = shl i32 %136, 4
  %138 = or disjoint i32 %137, 12
  store i32 %138, ptr %0, align 1, !tbaa !10
  br label %139

139:                                              ; preds = %135, %131, %128
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 %124
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %140, ptr readonly align 1 %2, i64 %3, i1 false)
  br label %222

141:                                              ; preds = %84
  %142 = icmp eq i64 %104, 1
  br i1 %142, label %143, label %184

143:                                              ; preds = %141
  %144 = icmp ugt i64 %3, 7
  br i1 %144, label %182, label %145

145:                                              ; preds = %143
  %146 = load i8, ptr %2, align 1, !tbaa !5
  %147 = icmp samesign ugt i64 %3, 1
  br i1 %147, label %178, label %182

148:                                              ; preds = %178
  %149 = icmp eq i64 %3, 2
  br i1 %149, label %182, label %150, !llvm.loop !17

150:                                              ; preds = %148
  %151 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %152 = load i8, ptr %151, align 1, !tbaa !5
  %153 = icmp eq i8 %152, %146
  br i1 %153, label %154, label %184

154:                                              ; preds = %150
  %155 = icmp eq i64 %3, 3
  br i1 %155, label %182, label %156, !llvm.loop !17

156:                                              ; preds = %154
  %157 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %158 = load i8, ptr %157, align 1, !tbaa !5
  %159 = icmp eq i8 %158, %146
  br i1 %159, label %160, label %184

160:                                              ; preds = %156
  %161 = icmp eq i64 %3, 4
  br i1 %161, label %182, label %162, !llvm.loop !17

162:                                              ; preds = %160
  %163 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %164 = load i8, ptr %163, align 1, !tbaa !5
  %165 = icmp eq i8 %164, %146
  br i1 %165, label %166, label %184

166:                                              ; preds = %162
  %167 = icmp eq i64 %3, 5
  br i1 %167, label %182, label %168, !llvm.loop !17

168:                                              ; preds = %166
  %169 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %170 = load i8, ptr %169, align 1, !tbaa !5
  %171 = icmp eq i8 %170, %146
  br i1 %171, label %172, label %184

172:                                              ; preds = %168
  %173 = icmp eq i64 %3, 6
  br i1 %173, label %182, label %174, !llvm.loop !17

174:                                              ; preds = %172
  %175 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %176 = load i8, ptr %175, align 1, !tbaa !5
  %177 = icmp eq i8 %176, %146
  br i1 %177, label %182, label %184

178:                                              ; preds = %145
  %179 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %180 = load i8, ptr %179, align 1, !tbaa !5
  %181 = icmp eq i8 %180, %146
  br i1 %181, label %148, label %184

182:                                              ; preds = %148, %154, %160, %166, %172, %174, %145, %143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %7, ptr noundef nonnull align 8 dereferenceable(2064) %6, i64 2064, i1 false)
  %183 = call i64 @ZSTD_compressRleLiteralsBlock(ptr noundef %0, i64 poison, ptr noundef %2, i64 noundef %3)
  br label %222

184:                                              ; preds = %178, %150, %156, %162, %168, %174, %141
  br i1 %106, label %185, label %187

185:                                              ; preds = %184
  %186 = getelementptr inbounds nuw i8, ptr %7, i64 2056
  store i32 1, ptr %186, align 8, !tbaa !12
  br label %187

187:                                              ; preds = %185, %184
  switch i64 %18, label %42 [
    i64 3, label %188
    i64 4, label %201
    i64 5, label %209
  ]

188:                                              ; preds = %187
  %189 = select i1 %100, i32 4, i32 0
  %190 = trunc i64 %3 to i32
  %191 = shl i32 %190, 4
  %192 = or disjoint i32 %189, %191
  %193 = trunc i64 %104 to i32
  %194 = shl i32 %193, 14
  %195 = add i32 %192, %194
  %196 = or disjoint i32 %195, %107
  %197 = trunc i32 %196 to i16
  store i16 %197, ptr %0, align 1, !tbaa !8
  %198 = lshr i32 %195, 16
  %199 = trunc i32 %198 to i8
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %199, ptr %200, align 1, !tbaa !5
  br label %220

201:                                              ; preds = %187
  %202 = trunc i64 %3 to i32
  %203 = shl i32 %202, 4
  %204 = trunc i64 %104 to i32
  %205 = shl i32 %204, 18
  %206 = or disjoint i32 %203, 8
  %207 = add i32 %206, %205
  %208 = or disjoint i32 %207, %107
  store i32 %208, ptr %0, align 1, !tbaa !10
  br label %220

209:                                              ; preds = %187
  %210 = trunc i64 %3 to i32
  %211 = shl i32 %210, 4
  %212 = trunc i64 %104 to i32
  %213 = shl i32 %212, 22
  %214 = or disjoint i32 %211, 12
  %215 = add i32 %214, %213
  %216 = or disjoint i32 %215, %107
  store i32 %216, ptr %0, align 1, !tbaa !10
  %217 = lshr i64 %104, 10
  %218 = trunc i64 %217 to i8
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %218, ptr %219, align 1, !tbaa !5
  br label %220

220:                                              ; preds = %188, %201, %209
  %221 = add i64 %104, %18
  br label %222

222:                                              ; preds = %139, %118, %80, %59, %43, %21, %82, %220, %182
  %223 = phi i64 [ %183, %182 ], [ %221, %220 ], [ -70, %82 ], [ %28, %43 ], [ -70, %21 ], [ %66, %80 ], [ -70, %59 ], [ -70, %118 ], [ %125, %139 ]
  ret i64 %223
}

declare i64 @HUF_compress1X_repeat(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @HUF_compress4X_repeat(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noreturn nounwind }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

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
