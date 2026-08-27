; ModuleID = '/mydata/zstd/lib/common/fse_decompress.c'
source_filename = "/mydata/zstd/lib/common/fse_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FSE_decode_t = type { i16, i8, i8 }
%struct.BIT_DStream_t = type { i64, i32, ptr, ptr, ptr }
%struct.FSE_DState_t = type { i64, ptr }

@BIT_reloadDStream.zeroFilled = internal constant i64 0, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -46, 1) i64 @FSE_buildDTable_wksp(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc i64 @FSE_buildDTable_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5)
  ret i64 %7
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -46, 1) i64 @FSE_buildDTable_internal(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef captures(none) %4, i64 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds nuw i16, ptr %4, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 2
  %11 = add i32 %2, 1
  %12 = shl nuw i32 1, %3
  %13 = add i32 %12, -1
  %14 = zext i32 %11 to i64
  %15 = shl nuw nsw i64 %14, 1
  %16 = zext nneg i32 %3 to i64
  %17 = shl nuw i64 1, %16
  %18 = add nuw i64 %17, 8
  %19 = add nuw i64 %18, %15
  %20 = icmp ugt i64 %19, %5
  %21 = icmp ugt i32 %2, 255
  %22 = or i1 %21, %20
  br i1 %22, label %215, label %23

23:                                               ; preds = %6
  %24 = icmp ugt i32 %3, 12
  br i1 %24, label %215, label %25

25:                                               ; preds = %23
  %26 = trunc nuw nsw i32 %3 to i16
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %28 = shl nuw nsw i32 32768, %3
  %29 = lshr exact i32 %28, 16
  br label %30

30:                                               ; preds = %25, %47
  %31 = phi i64 [ 0, %25 ], [ %52, %47 ]
  %32 = phi i32 [ %13, %25 ], [ %50, %47 ]
  %33 = phi i16 [ 1, %25 ], [ %49, %47 ]
  %34 = getelementptr inbounds nuw i16, ptr %1, i64 %31
  %35 = load i16, ptr %34, align 2, !tbaa !5
  %36 = icmp eq i16 %35, -1
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = trunc i64 %31 to i8
  %39 = add i32 %32, -1
  %40 = zext i32 %32 to i64
  %41 = shl nuw nsw i64 %40, 2
  %42 = getelementptr inbounds nuw i8, ptr %27, i64 %41
  store i8 %38, ptr %42, align 2, !tbaa !9
  br label %47

43:                                               ; preds = %30
  %44 = sext i16 %35 to i32
  %45 = icmp sgt i32 %29, %44
  %46 = select i1 %45, i16 %33, i16 0
  br label %47

47:                                               ; preds = %37, %43
  %48 = phi i16 [ 1, %37 ], [ %35, %43 ]
  %49 = phi i16 [ %33, %37 ], [ %46, %43 ]
  %50 = phi i32 [ %39, %37 ], [ %32, %43 ]
  %51 = getelementptr inbounds nuw i16, ptr %4, i64 %31
  store i16 %48, ptr %51, align 2, !tbaa !5
  %52 = add nuw nsw i64 %31, 1
  %53 = icmp eq i64 %52, %14
  br i1 %53, label %54, label %30, !llvm.loop !11

54:                                               ; preds = %47
  store i16 %26, ptr %0, align 4
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %49, ptr %55, align 2
  %56 = icmp eq i32 %50, %13
  %57 = lshr i32 %12, 1
  br i1 %56, label %58, label %130

58:                                               ; preds = %54
  %59 = zext nneg i32 %13 to i64
  %60 = lshr i32 %12, 3
  %61 = add nuw nsw i32 %60, 3
  %62 = add nuw nsw i32 %61, %57
  %63 = zext nneg i32 %62 to i64
  %64 = zext nneg i32 %11 to i64
  br label %68

65:                                               ; preds = %106
  %66 = zext nneg i32 %12 to i64
  %67 = shl nuw nsw i64 %63, 1
  br label %112

68:                                               ; preds = %58, %106
  %69 = phi i64 [ 0, %58 ], [ %109, %106 ]
  %70 = phi i64 [ 0, %58 ], [ %108, %106 ]
  %71 = phi i64 [ 0, %58 ], [ %110, %106 ]
  %72 = getelementptr inbounds nuw i16, ptr %1, i64 %69
  %73 = load i16, ptr %72, align 2, !tbaa !5
  %74 = getelementptr inbounds nuw i8, ptr %10, i64 %70
  store i64 %71, ptr %74, align 1, !tbaa !13
  %75 = icmp sgt i16 %73, 8
  br i1 %75, label %76, label %106

76:                                               ; preds = %68
  %77 = zext nneg i16 %73 to i64
  %78 = tail call i64 @llvm.umax.i64(i64 %77, i64 16)
  %79 = add nsw i64 %78, -9
  %80 = lshr i64 %79, 3
  %81 = add nuw nsw i64 %80, 1
  %82 = icmp ult i64 %79, 24
  br i1 %82, label %99, label %83

83:                                               ; preds = %76
  %84 = and i64 %81, 4611686018427387900
  %85 = shl i64 %84, 3
  %86 = or disjoint i64 %85, 8
  %87 = insertelement <2 x i64> poison, i64 %71, i64 0
  %88 = shufflevector <2 x i64> %87, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %89

89:                                               ; preds = %89, %83
  %90 = phi i64 [ 0, %83 ], [ %95, %89 ]
  %91 = shl i64 %90, 3
  %92 = getelementptr inbounds nuw i8, ptr %74, i64 %91
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 8
  %94 = getelementptr inbounds nuw i8, ptr %92, i64 24
  store <2 x i64> %88, ptr %93, align 1, !tbaa !13
  store <2 x i64> %88, ptr %94, align 1, !tbaa !13
  %95 = add nuw i64 %90, 4
  %96 = icmp eq i64 %95, %84
  br i1 %96, label %97, label %89, !llvm.loop !15

97:                                               ; preds = %89
  %98 = icmp eq i64 %81, %84
  br i1 %98, label %106, label %99

99:                                               ; preds = %76, %97
  %100 = phi i64 [ 8, %76 ], [ %86, %97 ]
  br label %101

101:                                              ; preds = %99, %101
  %102 = phi i64 [ %104, %101 ], [ %100, %99 ]
  %103 = getelementptr inbounds nuw i8, ptr %74, i64 %102
  store i64 %71, ptr %103, align 1, !tbaa !13
  %104 = add nuw nsw i64 %102, 8
  %105 = icmp samesign ult i64 %104, %77
  br i1 %105, label %101, label %106, !llvm.loop !18

106:                                              ; preds = %101, %97, %68
  %107 = sext i16 %73 to i64
  %108 = add i64 %70, %107
  %109 = add nuw nsw i64 %69, 1
  %110 = add i64 %71, 72340172838076673
  %111 = icmp eq i64 %109, %64
  br i1 %111, label %65, label %68, !llvm.loop !19

112:                                              ; preds = %65, %112
  %113 = phi i64 [ 0, %65 ], [ %128, %112 ]
  %114 = phi i64 [ 0, %65 ], [ %127, %112 ]
  %115 = getelementptr inbounds nuw i8, ptr %10, i64 %113
  %116 = and i64 %114, %59
  %117 = load i8, ptr %115, align 1, !tbaa !20
  %118 = shl nuw nsw i64 %116, 2
  %119 = getelementptr inbounds nuw i8, ptr %27, i64 %118
  store i8 %117, ptr %119, align 2, !tbaa !9
  %120 = add nuw nsw i64 %114, %63
  %121 = and i64 %120, %59
  %122 = getelementptr inbounds nuw i8, ptr %115, i64 1
  %123 = load i8, ptr %122, align 1, !tbaa !20
  %124 = shl nuw nsw i64 %121, 2
  %125 = getelementptr inbounds nuw i8, ptr %27, i64 %124
  store i8 %123, ptr %125, align 2, !tbaa !9
  %126 = add nuw nsw i64 %114, %67
  %127 = and i64 %126, %59
  %128 = add nuw nsw i64 %113, 2
  %129 = icmp samesign ult i64 %128, %66
  br i1 %129, label %112, label %192, !llvm.loop !21

130:                                              ; preds = %54
  %131 = lshr i32 %12, 3
  %132 = add nuw nsw i32 %131, 3
  %133 = add nuw nsw i32 %132, %57
  %134 = zext nneg i32 %11 to i64
  br label %135

135:                                              ; preds = %130, %184
  %136 = phi i64 [ 0, %130 ], [ %186, %184 ]
  %137 = phi i32 [ 0, %130 ], [ %185, %184 ]
  %138 = getelementptr inbounds nuw i16, ptr %1, i64 %136
  %139 = load i16, ptr %138, align 2, !tbaa !5
  %140 = icmp sgt i16 %139, 0
  br i1 %140, label %141, label %184

141:                                              ; preds = %135
  %142 = trunc i64 %136 to i8
  %143 = icmp eq i16 %139, 1
  br i1 %143, label %170, label %144

144:                                              ; preds = %141
  %145 = and i16 %139, 32766
  %146 = zext nneg i16 %145 to i32
  br label %147

147:                                              ; preds = %167, %144
  %148 = phi i32 [ %137, %144 ], [ %165, %167 ]
  %149 = phi i32 [ 0, %144 ], [ %168, %167 ]
  %150 = zext nneg i32 %148 to i64
  %151 = shl nuw nsw i64 %150, 2
  %152 = getelementptr inbounds nuw i8, ptr %27, i64 %151
  store i8 %142, ptr %152, align 2, !tbaa !9
  br label %153

153:                                              ; preds = %153, %147
  %154 = phi i32 [ %148, %147 ], [ %156, %153 ]
  %155 = add nuw i32 %133, %154
  %156 = and i32 %155, %13
  %157 = icmp ugt i32 %156, %50
  br i1 %157, label %153, label %158, !llvm.loop !22

158:                                              ; preds = %153
  %159 = zext nneg i32 %156 to i64
  %160 = shl nuw nsw i64 %159, 2
  %161 = getelementptr inbounds nuw i8, ptr %27, i64 %160
  store i8 %142, ptr %161, align 2, !tbaa !9
  br label %162

162:                                              ; preds = %162, %158
  %163 = phi i32 [ %156, %158 ], [ %165, %162 ]
  %164 = add nuw i32 %133, %163
  %165 = and i32 %164, %13
  %166 = icmp ugt i32 %165, %50
  br i1 %166, label %162, label %167, !llvm.loop !22

167:                                              ; preds = %162
  %168 = add i32 %149, 2
  %169 = icmp eq i32 %168, %146
  br i1 %169, label %170, label %147, !llvm.loop !23

170:                                              ; preds = %167, %141
  %171 = phi i32 [ poison, %141 ], [ %165, %167 ]
  %172 = phi i32 [ %137, %141 ], [ %165, %167 ]
  %173 = and i16 %139, 1
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %184, label %175

175:                                              ; preds = %170
  %176 = zext nneg i32 %172 to i64
  %177 = shl nuw nsw i64 %176, 2
  %178 = getelementptr inbounds nuw i8, ptr %27, i64 %177
  store i8 %142, ptr %178, align 2, !tbaa !9
  br label %179

179:                                              ; preds = %179, %175
  %180 = phi i32 [ %172, %175 ], [ %182, %179 ]
  %181 = add nuw i32 %133, %180
  %182 = and i32 %181, %13
  %183 = icmp ugt i32 %182, %50
  br i1 %183, label %179, label %184, !llvm.loop !22

184:                                              ; preds = %170, %179, %135
  %185 = phi i32 [ %137, %135 ], [ %171, %170 ], [ %182, %179 ]
  %186 = add nuw nsw i64 %136, 1
  %187 = icmp eq i64 %186, %134
  br i1 %187, label %188, label %135, !llvm.loop !24

188:                                              ; preds = %184
  %189 = icmp eq i32 %185, 0
  br i1 %189, label %190, label %215

190:                                              ; preds = %188
  %191 = zext nneg i32 %12 to i64
  br label %192

192:                                              ; preds = %112, %190
  %193 = phi i64 [ %191, %190 ], [ %66, %112 ]
  br label %194

194:                                              ; preds = %192, %194
  %195 = phi i64 [ 0, %192 ], [ %213, %194 ]
  %196 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %7, i64 %195
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 2
  %198 = load i8, ptr %197, align 2, !tbaa !9
  %199 = zext i8 %198 to i64
  %200 = getelementptr inbounds nuw i16, ptr %4, i64 %199
  %201 = load i16, ptr %200, align 2, !tbaa !5
  %202 = add i16 %201, 1
  store i16 %202, ptr %200, align 2, !tbaa !5
  %203 = zext i16 %201 to i32
  %204 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %203, i1 true)
  %205 = xor i32 %204, 31
  %206 = sub nsw i32 %3, %205
  %207 = trunc nsw i32 %206 to i8
  %208 = getelementptr inbounds nuw i8, ptr %196, i64 3
  store i8 %207, ptr %208, align 1, !tbaa !25
  %209 = and i32 %206, 255
  %210 = shl i32 %203, %209
  %211 = sub i32 %210, %12
  %212 = trunc i32 %211 to i16
  store i16 %212, ptr %196, align 2, !tbaa !26
  %213 = add nuw nsw i64 %195, 1
  %214 = icmp eq i64 %213, %193
  br i1 %214, label %215, label %194, !llvm.loop !27

215:                                              ; preds = %194, %23, %6, %188
  %216 = phi i64 [ -1, %188 ], [ -46, %6 ], [ -44, %23 ], [ 0, %194 ]
  ret i64 %216
}

; Function Attrs: nounwind uwtable
define dso_local i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #1 {
  %9 = alloca %struct.BIT_DStream_t, align 8
  %10 = alloca %struct.FSE_DState_t, align 8
  %11 = alloca %struct.FSE_DState_t, align 8
  %12 = alloca %struct.BIT_DStream_t, align 8
  %13 = alloca %struct.FSE_DState_t, align 8
  %14 = alloca %struct.FSE_DState_t, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = icmp eq i32 %7, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = tail call fastcc i64 @FSE_decompress_wksp_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6)
  br label %793

20:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #11
  store i32 255, ptr %16, align 4, !tbaa !28
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 512
  %22 = icmp ult i64 %6, 512
  br i1 %22, label %791, label %23

23:                                               ; preds = %20
  %24 = call i64 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef %2, i64 noundef %3, i32 noundef 0) #11
  %25 = icmp ult i64 %24, -119
  br i1 %25, label %26, label %791

26:                                               ; preds = %23
  %27 = load i32, ptr %15, align 4, !tbaa !28
  %28 = icmp ugt i32 %27, %4
  br i1 %28, label %791, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 %24
  %31 = sub i64 %3, %24
  %32 = shl nuw i32 1, %27
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %32, i32 1), !nosanitize !30
  %34 = extractvalue { i32, i1 } %33, 0, !nosanitize !30
  %35 = extractvalue { i32, i1 } %33, 1, !nosanitize !30
  br i1 %35, label %36, label %37, !prof !31, !nosanitize !30

36:                                               ; preds = %37, %29
  call void @llvm.ubsantrap(i8 0) #12, !nosanitize !30
  unreachable, !nosanitize !30

37:                                               ; preds = %29
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !30
  %39 = extractvalue { i32, i1 } %38, 1, !nosanitize !30
  br i1 %39, label %36, label %40, !prof !31, !nosanitize !30

40:                                               ; preds = %37
  %41 = extractvalue { i32, i1 } %38, 0, !nosanitize !30
  %42 = sext i32 %41 to i64
  %43 = load i32, ptr %16, align 4, !tbaa !28
  %44 = add i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = shl nuw nsw i64 %45, 1
  %47 = zext nneg i32 %27 to i64
  %48 = shl nuw i64 1, %47
  %49 = shl nsw i64 %42, 2
  %50 = add nuw i64 %48, 11
  %51 = add i64 %50, %49
  %52 = add i64 %51, %46
  %53 = and i64 %52, -4
  %54 = add i64 %53, 516
  %55 = icmp ugt i64 %54, %6
  br i1 %55, label %791, label %56

56:                                               ; preds = %40
  %57 = sext i32 %34 to i64
  %58 = shl nsw i64 %57, 2
  %59 = getelementptr inbounds nuw i8, ptr %21, i64 %58
  %60 = add i64 %6, -512
  %61 = sub i64 %60, %58
  %62 = call fastcc i64 @FSE_buildDTable_internal(ptr noundef nonnull %21, ptr noundef %5, i32 noundef %43, i32 noundef %27, ptr noundef nonnull %59, i64 noundef %61)
  %63 = icmp ult i64 %62, -119
  br i1 %63, label %64, label %791

64:                                               ; preds = %56
  %65 = getelementptr inbounds nuw i8, ptr %5, i64 514
  %66 = load i16, ptr %65, align 2, !tbaa !32
  %67 = icmp eq i16 %66, 0
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %69 = getelementptr inbounds i8, ptr %68, i64 -3
  br i1 %67, label %463, label %70

70:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #11
  %71 = icmp eq i64 %31, 0
  br i1 %71, label %461, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %30, ptr %73, align 8, !tbaa !34
  %74 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %75 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %74, ptr %75, align 8, !tbaa !38
  %76 = icmp ugt i64 %31, 7
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %79, ptr %80, align 8, !tbaa !39
  %81 = load i64, ptr %79, align 1
  store i64 %81, ptr %9, align 8, !tbaa !40
  %82 = icmp ult i64 %81, 72057594037927936
  br i1 %82, label %461, label %141

83:                                               ; preds = %72
  %84 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %30, ptr %84, align 8, !tbaa !39
  %85 = load i8, ptr %30, align 1, !tbaa !20
  %86 = zext i8 %85 to i64
  store i64 %86, ptr %9, align 8, !tbaa !40
  switch i64 %31, label %128 [
    i64 7, label %87
    i64 6, label %93
    i64 5, label %100
    i64 4, label %107
    i64 3, label %114
    i64 2, label %121
  ]

87:                                               ; preds = %83
  %88 = getelementptr inbounds nuw i8, ptr %30, i64 6
  %89 = load i8, ptr %88, align 1, !tbaa !20
  %90 = zext i8 %89 to i64
  %91 = shl nuw nsw i64 %90, 48
  %92 = or disjoint i64 %91, %86
  br label %93

93:                                               ; preds = %87, %83
  %94 = phi i64 [ %86, %83 ], [ %92, %87 ]
  %95 = getelementptr inbounds nuw i8, ptr %30, i64 5
  %96 = load i8, ptr %95, align 1, !tbaa !20
  %97 = zext i8 %96 to i64
  %98 = shl nuw nsw i64 %97, 40
  %99 = add nuw nsw i64 %98, %94
  br label %100

100:                                              ; preds = %93, %83
  %101 = phi i64 [ %86, %83 ], [ %99, %93 ]
  %102 = getelementptr inbounds nuw i8, ptr %30, i64 4
  %103 = load i8, ptr %102, align 1, !tbaa !20
  %104 = zext i8 %103 to i64
  %105 = shl nuw nsw i64 %104, 32
  %106 = add nuw nsw i64 %105, %101
  br label %107

107:                                              ; preds = %100, %83
  %108 = phi i64 [ %86, %83 ], [ %106, %100 ]
  %109 = getelementptr inbounds nuw i8, ptr %30, i64 3
  %110 = load i8, ptr %109, align 1, !tbaa !20
  %111 = zext i8 %110 to i64
  %112 = shl nuw nsw i64 %111, 24
  %113 = add nuw nsw i64 %112, %108
  br label %114

114:                                              ; preds = %107, %83
  %115 = phi i64 [ %86, %83 ], [ %113, %107 ]
  %116 = getelementptr inbounds nuw i8, ptr %30, i64 2
  %117 = load i8, ptr %116, align 1, !tbaa !20
  %118 = zext i8 %117 to i64
  %119 = shl nuw nsw i64 %118, 16
  %120 = add nuw nsw i64 %119, %115
  br label %121

121:                                              ; preds = %114, %83
  %122 = phi i64 [ %86, %83 ], [ %120, %114 ]
  %123 = getelementptr inbounds nuw i8, ptr %30, i64 1
  %124 = load i8, ptr %123, align 1, !tbaa !20
  %125 = zext i8 %124 to i64
  %126 = shl nuw nsw i64 %125, 8
  %127 = add nuw nsw i64 %126, %122
  store i64 %127, ptr %9, align 8, !tbaa !40
  br label %128

128:                                              ; preds = %121, %83
  %129 = getelementptr i8, ptr %2, i64 %3
  %130 = getelementptr i8, ptr %129, i64 -1
  %131 = load i8, ptr %130, align 1, !tbaa !20
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %461, label %133

133:                                              ; preds = %128
  %134 = zext i8 %131 to i32
  %135 = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %134, i1 true)
  %136 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %137 = trunc nuw nsw i64 %31 to i32
  %138 = shl nuw nsw i32 %137, 3
  %139 = sub nsw i32 %135, %138
  %140 = add nsw i32 %139, 41
  store i32 %140, ptr %136, align 8, !tbaa !41
  br label %149

141:                                              ; preds = %77
  %142 = lshr i64 %81, 56
  %143 = trunc nuw nsw i64 %142 to i32
  %144 = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %143, i1 true)
  %145 = xor i32 %144, 31
  %146 = sub nuw nsw i32 8, %145
  %147 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %146, ptr %147, align 8, !tbaa !41
  %148 = icmp ult i64 %31, -119
  br i1 %148, label %149, label %461

149:                                              ; preds = %141, %133
  call fastcc void @FSE_initDState(ptr noundef %10, ptr noundef %9, ptr noundef nonnull %21)
  call fastcc void @FSE_initDState(ptr noundef %11, ptr noundef %9, ptr noundef nonnull %21)
  %150 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %151 = load i32, ptr %150, align 8, !tbaa !41
  %152 = icmp ugt i32 %151, 64
  br i1 %152, label %461, label %153, !prof !42

153:                                              ; preds = %149
  %154 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %155 = load ptr, ptr %154, align 8, !tbaa !39
  %156 = load ptr, ptr %75, align 8, !tbaa !38
  %157 = icmp ult ptr %155, %156
  br i1 %157, label %166, label %158

158:                                              ; preds = %153
  %159 = lshr i32 %151, 3
  %160 = zext nneg i32 %159 to i64
  %161 = sub nsw i64 0, %160
  %162 = getelementptr inbounds i8, ptr %155, i64 %161
  %163 = and i32 %151, 7
  %164 = load i64, ptr %162, align 1, !tbaa !13
  store i64 %164, ptr %9, align 8, !tbaa !40
  %165 = load ptr, ptr %73, align 8
  br label %171

166:                                              ; preds = %153
  %167 = load ptr, ptr %73, align 8, !tbaa !34
  %168 = icmp eq ptr %155, %167
  br i1 %168, label %169, label %183

169:                                              ; preds = %166
  %170 = load i64, ptr %9, align 8
  br label %171

171:                                              ; preds = %169, %158
  %172 = phi ptr [ %162, %158 ], [ %155, %169 ]
  %173 = phi ptr [ %165, %158 ], [ %155, %169 ]
  %174 = phi i64 [ %164, %158 ], [ %170, %169 ]
  %175 = phi i32 [ %163, %158 ], [ %151, %169 ]
  %176 = load i64, ptr %10, align 8
  %177 = load i64, ptr %11, align 8
  %178 = ptrtoint ptr %173 to i64
  %179 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %180 = load ptr, ptr %179, align 8
  %181 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %182 = load ptr, ptr %181, align 8
  br label %208

183:                                              ; preds = %166
  %184 = lshr i32 %151, 3
  %185 = zext nneg i32 %184 to i64
  %186 = sub nsw i64 0, %185
  %187 = getelementptr inbounds i8, ptr %155, i64 %186
  %188 = icmp ult ptr %187, %167
  %189 = ptrtoint ptr %155 to i64
  %190 = ptrtoint ptr %167 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  %193 = select i1 %188, i32 %192, i32 %184
  %194 = zext i32 %193 to i64
  %195 = sub nsw i64 0, %194
  %196 = getelementptr inbounds i8, ptr %155, i64 %195
  %197 = shl i32 %193, 3
  %198 = sub i32 %151, %197
  %199 = load i64, ptr %196, align 1, !tbaa !13
  store i64 %199, ptr %9, align 8, !tbaa !40
  %200 = load i64, ptr %10, align 8
  %201 = load i64, ptr %11, align 8
  %202 = ptrtoint ptr %167 to i64
  %203 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %204 = load ptr, ptr %203, align 8
  %205 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %206 = load ptr, ptr %205, align 8
  %207 = icmp ugt i32 %198, 64
  br i1 %207, label %253, label %208, !prof !43

208:                                              ; preds = %171, %183
  %209 = phi ptr [ %182, %171 ], [ %206, %183 ]
  %210 = phi ptr [ %180, %171 ], [ %204, %183 ]
  %211 = phi i64 [ %178, %171 ], [ %202, %183 ]
  %212 = phi i64 [ %177, %171 ], [ %201, %183 ]
  %213 = phi i64 [ %176, %171 ], [ %200, %183 ]
  %214 = phi i32 [ %175, %171 ], [ %198, %183 ]
  %215 = phi i64 [ %174, %171 ], [ %199, %183 ]
  %216 = phi ptr [ %173, %171 ], [ %167, %183 ]
  %217 = phi ptr [ %172, %171 ], [ %196, %183 ]
  br label %218

218:                                              ; preds = %208, %266
  %219 = phi ptr [ %338, %266 ], [ %0, %208 ]
  %220 = phi i32 [ %334, %266 ], [ %214, %208 ]
  %221 = phi i64 [ %250, %266 ], [ %215, %208 ]
  %222 = phi i64 [ %317, %266 ], [ %213, %208 ]
  %223 = phi i64 [ %336, %266 ], [ %212, %208 ]
  %224 = phi ptr [ %249, %266 ], [ %217, %208 ]
  %225 = icmp ult ptr %224, %156
  br i1 %225, label %229, label %226

226:                                              ; preds = %218
  %227 = lshr i32 %220, 3
  %228 = and i32 %220, 7
  br label %243

229:                                              ; preds = %218
  %230 = icmp eq ptr %224, %216
  br i1 %230, label %253, label %231

231:                                              ; preds = %229
  %232 = lshr i32 %220, 3
  %233 = zext nneg i32 %232 to i64
  %234 = sub nsw i64 0, %233
  %235 = getelementptr inbounds i8, ptr %224, i64 %234
  %236 = icmp uge ptr %235, %216
  %237 = ptrtoint ptr %224 to i64
  %238 = sub i64 %237, %211
  %239 = trunc i64 %238 to i32
  %240 = select i1 %236, i32 %232, i32 %239
  %241 = shl i32 %240, 3
  %242 = sub i32 %220, %241
  br label %243

243:                                              ; preds = %231, %226
  %244 = phi i32 [ %227, %226 ], [ %240, %231 ]
  %245 = phi i32 [ %228, %226 ], [ %242, %231 ]
  %246 = phi i1 [ true, %226 ], [ %236, %231 ]
  %247 = zext i32 %244 to i64
  %248 = sub nsw i64 0, %247
  %249 = getelementptr inbounds i8, ptr %224, i64 %248
  %250 = load i64, ptr %249, align 1, !tbaa !13
  %251 = icmp ult ptr %219, %69
  %252 = and i1 %251, %246
  br i1 %252, label %266, label %253

253:                                              ; preds = %266, %229, %243, %183
  %254 = phi ptr [ %206, %183 ], [ %209, %243 ], [ %209, %229 ], [ %209, %266 ]
  %255 = phi ptr [ %204, %183 ], [ %210, %243 ], [ %210, %229 ], [ %210, %266 ]
  %256 = phi i64 [ %202, %183 ], [ %211, %243 ], [ %211, %229 ], [ %211, %266 ]
  %257 = phi ptr [ %167, %183 ], [ %216, %243 ], [ %216, %229 ], [ %216, %266 ]
  %258 = phi i64 [ %199, %183 ], [ %250, %266 ], [ %221, %229 ], [ %250, %243 ]
  %259 = phi i64 [ %201, %183 ], [ %336, %266 ], [ %223, %229 ], [ %223, %243 ]
  %260 = phi i64 [ %200, %183 ], [ %317, %266 ], [ %222, %229 ], [ %222, %243 ]
  %261 = phi ptr [ %0, %183 ], [ %338, %266 ], [ %219, %229 ], [ %219, %243 ]
  %262 = phi i32 [ %198, %183 ], [ %334, %266 ], [ %220, %229 ], [ %245, %243 ]
  %263 = phi ptr [ @BIT_reloadDStream.zeroFilled, %183 ], [ @BIT_reloadDStream.zeroFilled, %266 ], [ %224, %229 ], [ %249, %243 ]
  store i64 %258, ptr %9, align 8
  store i64 %260, ptr %10, align 8
  store i64 %259, ptr %11, align 8
  %264 = getelementptr inbounds i8, ptr %68, i64 -2
  %265 = icmp ugt ptr %261, %264
  br i1 %265, label %461, label %340

266:                                              ; preds = %243
  %267 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %210, i64 %222
  %268 = load i16, ptr %267, align 2, !tbaa !5
  %269 = getelementptr inbounds nuw i8, ptr %267, i64 2
  %270 = load i8, ptr %269, align 2, !tbaa !20
  %271 = getelementptr inbounds nuw i8, ptr %267, i64 3
  %272 = load i8, ptr %271, align 1, !tbaa !20
  %273 = zext i8 %272 to i32
  %274 = and i32 %245, 63
  %275 = zext nneg i32 %274 to i64
  %276 = shl i64 %250, %275
  %277 = sub nsw i32 0, %273
  %278 = and i32 %277, 63
  %279 = zext nneg i32 %278 to i64
  %280 = lshr i64 %276, %279
  %281 = add i32 %245, %273
  %282 = zext i16 %268 to i64
  store i8 %270, ptr %219, align 1, !tbaa !20
  %283 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %209, i64 %223
  %284 = load i16, ptr %283, align 2, !tbaa !5
  %285 = getelementptr inbounds nuw i8, ptr %283, i64 2
  %286 = load i8, ptr %285, align 2, !tbaa !20
  %287 = getelementptr inbounds nuw i8, ptr %283, i64 3
  %288 = load i8, ptr %287, align 1, !tbaa !20
  %289 = zext i8 %288 to i32
  %290 = and i32 %281, 63
  %291 = zext nneg i32 %290 to i64
  %292 = shl i64 %250, %291
  %293 = sub nsw i32 0, %289
  %294 = and i32 %293, 63
  %295 = zext nneg i32 %294 to i64
  %296 = lshr i64 %292, %295
  %297 = add i32 %281, %289
  %298 = zext i16 %284 to i64
  %299 = getelementptr inbounds nuw i8, ptr %219, i64 1
  store i8 %286, ptr %299, align 1, !tbaa !20
  %300 = getelementptr %struct.FSE_decode_t, ptr %210, i64 %280
  %301 = getelementptr %struct.FSE_decode_t, ptr %300, i64 %282
  %302 = load i16, ptr %301, align 2, !tbaa !5
  %303 = getelementptr inbounds nuw i8, ptr %301, i64 2
  %304 = load i8, ptr %303, align 2, !tbaa !20
  %305 = getelementptr inbounds nuw i8, ptr %301, i64 3
  %306 = load i8, ptr %305, align 1, !tbaa !20
  %307 = zext i8 %306 to i32
  %308 = and i32 %297, 63
  %309 = zext nneg i32 %308 to i64
  %310 = shl i64 %250, %309
  %311 = sub nsw i32 0, %307
  %312 = and i32 %311, 63
  %313 = zext nneg i32 %312 to i64
  %314 = lshr i64 %310, %313
  %315 = add i32 %297, %307
  %316 = zext i16 %302 to i64
  %317 = add i64 %314, %316
  %318 = getelementptr inbounds nuw i8, ptr %219, i64 2
  store i8 %304, ptr %318, align 1, !tbaa !20
  %319 = getelementptr %struct.FSE_decode_t, ptr %209, i64 %296
  %320 = getelementptr %struct.FSE_decode_t, ptr %319, i64 %298
  %321 = load i16, ptr %320, align 2, !tbaa !5
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 2
  %323 = load i8, ptr %322, align 2, !tbaa !20
  %324 = getelementptr inbounds nuw i8, ptr %320, i64 3
  %325 = load i8, ptr %324, align 1, !tbaa !20
  %326 = zext i8 %325 to i32
  %327 = and i32 %315, 63
  %328 = zext nneg i32 %327 to i64
  %329 = shl i64 %250, %328
  %330 = sub nsw i32 0, %326
  %331 = and i32 %330, 63
  %332 = zext nneg i32 %331 to i64
  %333 = lshr i64 %329, %332
  %334 = add i32 %315, %326
  %335 = zext i16 %321 to i64
  %336 = add i64 %333, %335
  %337 = getelementptr inbounds nuw i8, ptr %219, i64 3
  store i8 %323, ptr %337, align 1, !tbaa !20
  %338 = getelementptr inbounds nuw i8, ptr %219, i64 4
  %339 = icmp ugt i32 %334, 64
  br i1 %339, label %253, label %218, !prof !44, !llvm.loop !45

340:                                              ; preds = %253, %447
  %341 = phi ptr [ %448, %447 ], [ %263, %253 ]
  %342 = phi ptr [ %419, %447 ], [ %261, %253 ]
  %343 = phi i64 [ %363, %447 ], [ %260, %253 ]
  %344 = phi i64 [ %450, %447 ], [ %258, %253 ]
  %345 = phi i32 [ %449, %447 ], [ %262, %253 ]
  %346 = phi i64 [ %418, %447 ], [ %259, %253 ]
  %347 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %255, i64 %343
  %348 = load i16, ptr %347, align 2, !tbaa !5
  %349 = getelementptr inbounds nuw i8, ptr %347, i64 2
  %350 = load i8, ptr %349, align 2, !tbaa !20
  %351 = getelementptr inbounds nuw i8, ptr %347, i64 3
  %352 = load i8, ptr %351, align 1, !tbaa !20
  %353 = zext i8 %352 to i32
  %354 = and i32 %345, 63
  %355 = zext nneg i32 %354 to i64
  %356 = shl i64 %344, %355
  %357 = sub nsw i32 0, %353
  %358 = and i32 %357, 63
  %359 = zext nneg i32 %358 to i64
  %360 = lshr i64 %356, %359
  %361 = add i32 %345, %353
  %362 = zext i16 %348 to i64
  %363 = add i64 %360, %362
  %364 = getelementptr inbounds nuw i8, ptr %342, i64 1
  store i8 %350, ptr %342, align 1, !tbaa !20
  %365 = icmp ugt i32 %361, 64
  br i1 %365, label %385, label %366, !prof !42

366:                                              ; preds = %340
  %367 = icmp ult ptr %341, %156
  br i1 %367, label %371, label %368

368:                                              ; preds = %366
  %369 = lshr i32 %361, 3
  %370 = and i32 %361, 7
  br label %389

371:                                              ; preds = %366
  %372 = icmp eq ptr %341, %257
  br i1 %372, label %396, label %373

373:                                              ; preds = %371
  %374 = lshr i32 %361, 3
  %375 = zext nneg i32 %374 to i64
  %376 = sub nsw i64 0, %375
  %377 = getelementptr inbounds i8, ptr %341, i64 %376
  %378 = icmp ult ptr %377, %257
  %379 = ptrtoint ptr %341 to i64
  %380 = sub i64 %379, %256
  %381 = trunc i64 %380 to i32
  %382 = select i1 %378, i32 %381, i32 %374
  %383 = shl i32 %382, 3
  %384 = sub i32 %361, %383
  br label %389

385:                                              ; preds = %340
  %386 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %254, i64 %346, i32 1
  %387 = load i8, ptr %386, align 2, !tbaa !20
  %388 = getelementptr inbounds nuw i8, ptr %342, i64 2
  store i8 %387, ptr %364, align 1, !tbaa !20
  br label %456

389:                                              ; preds = %373, %368
  %390 = phi i32 [ %369, %368 ], [ %382, %373 ]
  %391 = phi i32 [ %370, %368 ], [ %384, %373 ]
  %392 = zext i32 %390 to i64
  %393 = sub nsw i64 0, %392
  %394 = getelementptr inbounds i8, ptr %341, i64 %393
  %395 = load i64, ptr %394, align 1, !tbaa !13
  store i64 %395, ptr %9, align 8, !tbaa !40
  br label %396

396:                                              ; preds = %389, %371
  %397 = phi ptr [ %341, %371 ], [ %394, %389 ]
  %398 = phi i32 [ %361, %371 ], [ %391, %389 ]
  %399 = phi i64 [ %344, %371 ], [ %395, %389 ]
  %400 = icmp ugt ptr %364, %264
  br i1 %400, label %461, label %401

401:                                              ; preds = %396
  %402 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %254, i64 %346
  %403 = load i16, ptr %402, align 2, !tbaa !5
  %404 = getelementptr inbounds nuw i8, ptr %402, i64 2
  %405 = load i8, ptr %404, align 2, !tbaa !20
  %406 = getelementptr inbounds nuw i8, ptr %402, i64 3
  %407 = load i8, ptr %406, align 1, !tbaa !20
  %408 = zext i8 %407 to i32
  %409 = and i32 %398, 63
  %410 = zext nneg i32 %409 to i64
  %411 = shl i64 %399, %410
  %412 = sub nsw i32 0, %408
  %413 = and i32 %412, 63
  %414 = zext nneg i32 %413 to i64
  %415 = lshr i64 %411, %414
  %416 = add i32 %398, %408
  %417 = zext i16 %403 to i64
  %418 = add i64 %415, %417
  %419 = getelementptr inbounds nuw i8, ptr %342, i64 2
  store i8 %405, ptr %364, align 1, !tbaa !20
  %420 = icmp ugt i32 %416, 64
  br i1 %420, label %452, label %421, !prof !42

421:                                              ; preds = %401
  %422 = icmp ult ptr %397, %156
  br i1 %422, label %426, label %423

423:                                              ; preds = %421
  %424 = lshr i32 %416, 3
  %425 = and i32 %416, 7
  br label %440

426:                                              ; preds = %421
  %427 = icmp eq ptr %397, %257
  br i1 %427, label %447, label %428

428:                                              ; preds = %426
  %429 = lshr i32 %416, 3
  %430 = zext nneg i32 %429 to i64
  %431 = sub nsw i64 0, %430
  %432 = getelementptr inbounds i8, ptr %397, i64 %431
  %433 = icmp ult ptr %432, %257
  %434 = ptrtoint ptr %397 to i64
  %435 = sub i64 %434, %256
  %436 = trunc i64 %435 to i32
  %437 = select i1 %433, i32 %436, i32 %429
  %438 = shl i32 %437, 3
  %439 = sub i32 %416, %438
  br label %440

440:                                              ; preds = %428, %423
  %441 = phi i32 [ %424, %423 ], [ %437, %428 ]
  %442 = phi i32 [ %425, %423 ], [ %439, %428 ]
  %443 = zext i32 %441 to i64
  %444 = sub nsw i64 0, %443
  %445 = getelementptr inbounds i8, ptr %397, i64 %444
  %446 = load i64, ptr %445, align 1, !tbaa !13
  store i64 %446, ptr %9, align 8, !tbaa !40
  br label %447

447:                                              ; preds = %440, %426
  %448 = phi ptr [ %397, %426 ], [ %445, %440 ]
  %449 = phi i32 [ %416, %426 ], [ %442, %440 ]
  %450 = phi i64 [ %399, %426 ], [ %446, %440 ]
  %451 = icmp ugt ptr %419, %264
  br i1 %451, label %461, label %340

452:                                              ; preds = %401
  %453 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %255, i64 %363, i32 1
  %454 = load i8, ptr %453, align 2, !tbaa !20
  %455 = getelementptr inbounds nuw i8, ptr %342, i64 3
  store i8 %454, ptr %419, align 1, !tbaa !20
  br label %456

456:                                              ; preds = %452, %385
  %457 = phi ptr [ %388, %385 ], [ %455, %452 ]
  %458 = ptrtoint ptr %457 to i64
  %459 = ptrtoint ptr %0 to i64
  %460 = sub i64 %458, %459
  br label %461

461:                                              ; preds = %447, %396, %456, %253, %149, %141, %128, %77, %70
  %462 = phi i64 [ %460, %456 ], [ %31, %141 ], [ -72, %70 ], [ -1, %77 ], [ -20, %128 ], [ -20, %149 ], [ -70, %253 ], [ -70, %396 ], [ -70, %447 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #11
  br label %791

463:                                              ; preds = %64
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #11
  %464 = call fastcc i64 @BIT_initDStream(ptr noundef %12, ptr noundef %30, i64 noundef %31)
  %465 = icmp ult i64 %464, -119
  br i1 %465, label %466, label %789

466:                                              ; preds = %463
  call fastcc void @FSE_initDState(ptr noundef %13, ptr noundef %12, ptr noundef nonnull %21)
  call fastcc void @FSE_initDState(ptr noundef %14, ptr noundef %12, ptr noundef nonnull %21)
  %467 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %468 = load i32, ptr %467, align 8, !tbaa !41
  %469 = icmp ugt i32 %468, 64
  br i1 %469, label %789, label %470, !prof !42

470:                                              ; preds = %466
  %471 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %472 = load ptr, ptr %471, align 8, !tbaa !39
  %473 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %474 = load ptr, ptr %473, align 8, !tbaa !38
  %475 = icmp ult ptr %472, %474
  br i1 %475, label %485, label %476

476:                                              ; preds = %470
  %477 = lshr i32 %468, 3
  %478 = zext nneg i32 %477 to i64
  %479 = sub nsw i64 0, %478
  %480 = getelementptr inbounds i8, ptr %472, i64 %479
  %481 = and i32 %468, 7
  %482 = load i64, ptr %480, align 1, !tbaa !13
  store i64 %482, ptr %12, align 8, !tbaa !40
  %483 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %484 = load ptr, ptr %483, align 8
  br label %491

485:                                              ; preds = %470
  %486 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %487 = load ptr, ptr %486, align 8, !tbaa !34
  %488 = icmp eq ptr %472, %487
  br i1 %488, label %489, label %503

489:                                              ; preds = %485
  %490 = load i64, ptr %12, align 8
  br label %491

491:                                              ; preds = %489, %476
  %492 = phi ptr [ %480, %476 ], [ %472, %489 ]
  %493 = phi ptr [ %484, %476 ], [ %472, %489 ]
  %494 = phi i64 [ %482, %476 ], [ %490, %489 ]
  %495 = phi i32 [ %481, %476 ], [ %468, %489 ]
  %496 = load i64, ptr %13, align 8
  %497 = load i64, ptr %14, align 8
  %498 = ptrtoint ptr %493 to i64
  %499 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %500 = load ptr, ptr %499, align 8
  %501 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %502 = load ptr, ptr %501, align 8
  br label %528

503:                                              ; preds = %485
  %504 = lshr i32 %468, 3
  %505 = zext nneg i32 %504 to i64
  %506 = sub nsw i64 0, %505
  %507 = getelementptr inbounds i8, ptr %472, i64 %506
  %508 = icmp ult ptr %507, %487
  %509 = ptrtoint ptr %472 to i64
  %510 = ptrtoint ptr %487 to i64
  %511 = sub i64 %509, %510
  %512 = trunc i64 %511 to i32
  %513 = select i1 %508, i32 %512, i32 %504
  %514 = zext i32 %513 to i64
  %515 = sub nsw i64 0, %514
  %516 = getelementptr inbounds i8, ptr %472, i64 %515
  %517 = shl i32 %513, 3
  %518 = sub i32 %468, %517
  %519 = load i64, ptr %516, align 1, !tbaa !13
  store i64 %519, ptr %12, align 8, !tbaa !40
  %520 = load i64, ptr %13, align 8
  %521 = load i64, ptr %14, align 8
  %522 = ptrtoint ptr %487 to i64
  %523 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %524 = load ptr, ptr %523, align 8
  %525 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %526 = load ptr, ptr %525, align 8
  %527 = icmp ugt i32 %518, 64
  br i1 %527, label %573, label %528, !prof !43

528:                                              ; preds = %491, %503
  %529 = phi ptr [ %502, %491 ], [ %526, %503 ]
  %530 = phi ptr [ %500, %491 ], [ %524, %503 ]
  %531 = phi i64 [ %498, %491 ], [ %522, %503 ]
  %532 = phi i64 [ %497, %491 ], [ %521, %503 ]
  %533 = phi i64 [ %496, %491 ], [ %520, %503 ]
  %534 = phi i32 [ %495, %491 ], [ %518, %503 ]
  %535 = phi i64 [ %494, %491 ], [ %519, %503 ]
  %536 = phi ptr [ %493, %491 ], [ %487, %503 ]
  %537 = phi ptr [ %492, %491 ], [ %516, %503 ]
  br label %538

538:                                              ; preds = %528, %586
  %539 = phi ptr [ %662, %586 ], [ %0, %528 ]
  %540 = phi i32 [ %650, %586 ], [ %534, %528 ]
  %541 = phi i64 [ %570, %586 ], [ %535, %528 ]
  %542 = phi i64 [ %640, %586 ], [ %533, %528 ]
  %543 = phi i64 [ %660, %586 ], [ %532, %528 ]
  %544 = phi ptr [ %569, %586 ], [ %537, %528 ]
  %545 = icmp ult ptr %544, %474
  br i1 %545, label %549, label %546

546:                                              ; preds = %538
  %547 = lshr i32 %540, 3
  %548 = and i32 %540, 7
  br label %563

549:                                              ; preds = %538
  %550 = icmp eq ptr %544, %536
  br i1 %550, label %573, label %551

551:                                              ; preds = %549
  %552 = lshr i32 %540, 3
  %553 = zext nneg i32 %552 to i64
  %554 = sub nsw i64 0, %553
  %555 = getelementptr inbounds i8, ptr %544, i64 %554
  %556 = icmp uge ptr %555, %536
  %557 = ptrtoint ptr %544 to i64
  %558 = sub i64 %557, %531
  %559 = trunc i64 %558 to i32
  %560 = select i1 %556, i32 %552, i32 %559
  %561 = shl i32 %560, 3
  %562 = sub i32 %540, %561
  br label %563

563:                                              ; preds = %551, %546
  %564 = phi i32 [ %547, %546 ], [ %560, %551 ]
  %565 = phi i32 [ %548, %546 ], [ %562, %551 ]
  %566 = phi i1 [ true, %546 ], [ %556, %551 ]
  %567 = zext i32 %564 to i64
  %568 = sub nsw i64 0, %567
  %569 = getelementptr inbounds i8, ptr %544, i64 %568
  %570 = load i64, ptr %569, align 1, !tbaa !13
  %571 = icmp ult ptr %539, %69
  %572 = and i1 %571, %566
  br i1 %572, label %586, label %573

573:                                              ; preds = %586, %549, %563, %503
  %574 = phi ptr [ %526, %503 ], [ %529, %563 ], [ %529, %549 ], [ %529, %586 ]
  %575 = phi ptr [ %524, %503 ], [ %530, %563 ], [ %530, %549 ], [ %530, %586 ]
  %576 = phi i64 [ %522, %503 ], [ %531, %563 ], [ %531, %549 ], [ %531, %586 ]
  %577 = phi ptr [ %487, %503 ], [ %536, %563 ], [ %536, %549 ], [ %536, %586 ]
  %578 = phi i64 [ %521, %503 ], [ %660, %586 ], [ %543, %549 ], [ %543, %563 ]
  %579 = phi i64 [ %520, %503 ], [ %640, %586 ], [ %542, %549 ], [ %542, %563 ]
  %580 = phi ptr [ %0, %503 ], [ %662, %586 ], [ %539, %549 ], [ %539, %563 ]
  %581 = phi i32 [ %518, %503 ], [ %650, %586 ], [ %540, %549 ], [ %565, %563 ]
  %582 = phi i64 [ %519, %503 ], [ %570, %586 ], [ %541, %549 ], [ %570, %563 ]
  %583 = phi ptr [ @BIT_reloadDStream.zeroFilled, %503 ], [ @BIT_reloadDStream.zeroFilled, %586 ], [ %544, %549 ], [ %569, %563 ]
  store ptr %583, ptr %471, align 8
  store i32 %581, ptr %467, align 8
  store i64 %582, ptr %12, align 8
  store i64 %579, ptr %13, align 8
  store i64 %578, ptr %14, align 8
  %584 = getelementptr inbounds i8, ptr %68, i64 -2
  %585 = icmp ugt ptr %580, %584
  br i1 %585, label %789, label %664

586:                                              ; preds = %563
  %587 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %530, i64 %542
  %588 = load i16, ptr %587, align 2, !tbaa !5
  %589 = getelementptr inbounds nuw i8, ptr %587, i64 2
  %590 = load i8, ptr %589, align 2, !tbaa !20
  %591 = getelementptr inbounds nuw i8, ptr %587, i64 3
  %592 = load i8, ptr %591, align 1, !tbaa !20
  %593 = zext i8 %592 to i32
  %594 = add i32 %565, %593
  %595 = sub i32 0, %594
  %596 = and i32 %595, 63
  %597 = zext nneg i32 %596 to i64
  %598 = lshr i64 %570, %597
  %599 = zext nneg i8 %592 to i64
  %600 = shl nsw i64 -1, %599
  %601 = xor i64 %600, -1
  %602 = and i64 %598, %601
  %603 = zext i16 %588 to i64
  store i8 %590, ptr %539, align 1, !tbaa !20
  %604 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %529, i64 %543
  %605 = load i16, ptr %604, align 2, !tbaa !5
  %606 = getelementptr inbounds nuw i8, ptr %604, i64 2
  %607 = load i8, ptr %606, align 2, !tbaa !20
  %608 = getelementptr inbounds nuw i8, ptr %604, i64 3
  %609 = load i8, ptr %608, align 1, !tbaa !20
  %610 = zext i8 %609 to i32
  %611 = add i32 %594, %610
  %612 = sub i32 0, %611
  %613 = and i32 %612, 63
  %614 = zext nneg i32 %613 to i64
  %615 = lshr i64 %570, %614
  %616 = zext nneg i8 %609 to i64
  %617 = shl nsw i64 -1, %616
  %618 = xor i64 %617, -1
  %619 = and i64 %615, %618
  %620 = zext i16 %605 to i64
  %621 = getelementptr inbounds nuw i8, ptr %539, i64 1
  store i8 %607, ptr %621, align 1, !tbaa !20
  %622 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %530, i64 %602
  %623 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %622, i64 %603
  %624 = load i16, ptr %623, align 2, !tbaa !5
  %625 = getelementptr inbounds nuw i8, ptr %623, i64 2
  %626 = load i8, ptr %625, align 2, !tbaa !20
  %627 = getelementptr inbounds nuw i8, ptr %623, i64 3
  %628 = load i8, ptr %627, align 1, !tbaa !20
  %629 = zext i8 %628 to i32
  %630 = add i32 %611, %629
  %631 = sub i32 0, %630
  %632 = and i32 %631, 63
  %633 = zext nneg i32 %632 to i64
  %634 = lshr i64 %570, %633
  %635 = zext nneg i8 %628 to i64
  %636 = shl nsw i64 -1, %635
  %637 = xor i64 %636, -1
  %638 = and i64 %634, %637
  %639 = zext i16 %624 to i64
  %640 = add nuw i64 %638, %639
  %641 = getelementptr inbounds nuw i8, ptr %539, i64 2
  store i8 %626, ptr %641, align 1, !tbaa !20
  %642 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %529, i64 %619
  %643 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %642, i64 %620
  %644 = load i16, ptr %643, align 2, !tbaa !5
  %645 = getelementptr inbounds nuw i8, ptr %643, i64 2
  %646 = load i8, ptr %645, align 2, !tbaa !20
  %647 = getelementptr inbounds nuw i8, ptr %643, i64 3
  %648 = load i8, ptr %647, align 1, !tbaa !20
  %649 = zext i8 %648 to i32
  %650 = add i32 %630, %649
  %651 = sub i32 0, %650
  %652 = and i32 %651, 63
  %653 = zext nneg i32 %652 to i64
  %654 = lshr i64 %570, %653
  %655 = zext nneg i8 %648 to i64
  %656 = shl nsw i64 -1, %655
  %657 = xor i64 %656, -1
  %658 = and i64 %654, %657
  %659 = zext i16 %644 to i64
  %660 = add nuw i64 %658, %659
  %661 = getelementptr inbounds nuw i8, ptr %539, i64 3
  store i8 %646, ptr %661, align 1, !tbaa !20
  %662 = getelementptr inbounds nuw i8, ptr %539, i64 4
  %663 = icmp ugt i32 %650, 64
  br i1 %663, label %573, label %538, !prof !44, !llvm.loop !45

664:                                              ; preds = %573, %775
  %665 = phi ptr [ %776, %775 ], [ %583, %573 ]
  %666 = phi ptr [ %746, %775 ], [ %580, %573 ]
  %667 = phi i64 [ %688, %775 ], [ %579, %573 ]
  %668 = phi i64 [ %778, %775 ], [ %582, %573 ]
  %669 = phi i32 [ %777, %775 ], [ %581, %573 ]
  %670 = phi i64 [ %745, %775 ], [ %578, %573 ]
  %671 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %575, i64 %667
  %672 = load i16, ptr %671, align 2, !tbaa !5
  %673 = getelementptr inbounds nuw i8, ptr %671, i64 2
  %674 = load i8, ptr %673, align 2, !tbaa !20
  %675 = getelementptr inbounds nuw i8, ptr %671, i64 3
  %676 = load i8, ptr %675, align 1, !tbaa !20
  %677 = zext i8 %676 to i32
  %678 = add i32 %669, %677
  %679 = sub i32 0, %678
  %680 = and i32 %679, 63
  %681 = zext nneg i32 %680 to i64
  %682 = lshr i64 %668, %681
  %683 = zext nneg i8 %676 to i64
  %684 = shl nsw i64 -1, %683
  %685 = xor i64 %684, -1
  %686 = and i64 %682, %685
  %687 = zext i16 %672 to i64
  %688 = add nuw i64 %686, %687
  %689 = getelementptr inbounds nuw i8, ptr %666, i64 1
  store i8 %674, ptr %666, align 1, !tbaa !20
  %690 = icmp ugt i32 %678, 64
  br i1 %690, label %718, label %691, !prof !42

691:                                              ; preds = %664
  %692 = icmp ult ptr %665, %474
  br i1 %692, label %700, label %693

693:                                              ; preds = %691
  %694 = lshr i32 %678, 3
  %695 = zext nneg i32 %694 to i64
  %696 = sub nsw i64 0, %695
  %697 = getelementptr inbounds i8, ptr %665, i64 %696
  %698 = and i32 %678, 7
  %699 = load i64, ptr %697, align 1, !tbaa !13
  br label %722

700:                                              ; preds = %691
  %701 = icmp eq ptr %665, %577
  br i1 %701, label %722, label %702

702:                                              ; preds = %700
  %703 = lshr i32 %678, 3
  %704 = zext nneg i32 %703 to i64
  %705 = sub nsw i64 0, %704
  %706 = getelementptr inbounds i8, ptr %665, i64 %705
  %707 = icmp ult ptr %706, %577
  %708 = ptrtoint ptr %665 to i64
  %709 = sub i64 %708, %576
  %710 = trunc i64 %709 to i32
  %711 = select i1 %707, i32 %710, i32 %703
  %712 = zext i32 %711 to i64
  %713 = sub nsw i64 0, %712
  %714 = getelementptr inbounds i8, ptr %665, i64 %713
  %715 = shl i32 %711, 3
  %716 = sub i32 %678, %715
  %717 = load i64, ptr %714, align 1, !tbaa !13
  br label %722

718:                                              ; preds = %664
  %719 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %574, i64 %670, i32 1
  %720 = load i8, ptr %719, align 2, !tbaa !20
  %721 = getelementptr inbounds nuw i8, ptr %666, i64 2
  store i8 %720, ptr %689, align 1, !tbaa !20
  br label %784

722:                                              ; preds = %702, %700, %693
  %723 = phi ptr [ %665, %700 ], [ %697, %693 ], [ %714, %702 ]
  %724 = phi i32 [ %678, %700 ], [ %698, %693 ], [ %716, %702 ]
  %725 = phi i64 [ %668, %700 ], [ %699, %693 ], [ %717, %702 ]
  %726 = icmp ugt ptr %689, %584
  br i1 %726, label %789, label %727

727:                                              ; preds = %722
  %728 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %574, i64 %670
  %729 = load i16, ptr %728, align 2, !tbaa !5
  %730 = getelementptr inbounds nuw i8, ptr %728, i64 2
  %731 = load i8, ptr %730, align 2, !tbaa !20
  %732 = getelementptr inbounds nuw i8, ptr %728, i64 3
  %733 = load i8, ptr %732, align 1, !tbaa !20
  %734 = zext i8 %733 to i32
  %735 = add i32 %724, %734
  %736 = sub i32 0, %735
  %737 = and i32 %736, 63
  %738 = zext nneg i32 %737 to i64
  %739 = lshr i64 %725, %738
  %740 = zext nneg i8 %733 to i64
  %741 = shl nsw i64 -1, %740
  %742 = xor i64 %741, -1
  %743 = and i64 %739, %742
  %744 = zext i16 %729 to i64
  %745 = add nuw i64 %743, %744
  %746 = getelementptr inbounds nuw i8, ptr %666, i64 2
  store i8 %731, ptr %689, align 1, !tbaa !20
  %747 = icmp ugt i32 %735, 64
  br i1 %747, label %780, label %748, !prof !42

748:                                              ; preds = %727
  %749 = icmp ult ptr %723, %474
  br i1 %749, label %757, label %750

750:                                              ; preds = %748
  %751 = lshr i32 %735, 3
  %752 = zext nneg i32 %751 to i64
  %753 = sub nsw i64 0, %752
  %754 = getelementptr inbounds i8, ptr %723, i64 %753
  %755 = and i32 %735, 7
  %756 = load i64, ptr %754, align 1, !tbaa !13
  br label %775

757:                                              ; preds = %748
  %758 = icmp eq ptr %723, %577
  br i1 %758, label %775, label %759

759:                                              ; preds = %757
  %760 = lshr i32 %735, 3
  %761 = zext nneg i32 %760 to i64
  %762 = sub nsw i64 0, %761
  %763 = getelementptr inbounds i8, ptr %723, i64 %762
  %764 = icmp ult ptr %763, %577
  %765 = ptrtoint ptr %723 to i64
  %766 = sub i64 %765, %576
  %767 = trunc i64 %766 to i32
  %768 = select i1 %764, i32 %767, i32 %760
  %769 = zext i32 %768 to i64
  %770 = sub nsw i64 0, %769
  %771 = getelementptr inbounds i8, ptr %723, i64 %770
  %772 = shl i32 %768, 3
  %773 = sub i32 %735, %772
  %774 = load i64, ptr %771, align 1, !tbaa !13
  br label %775

775:                                              ; preds = %759, %757, %750
  %776 = phi ptr [ %723, %757 ], [ %754, %750 ], [ %771, %759 ]
  %777 = phi i32 [ %735, %757 ], [ %755, %750 ], [ %773, %759 ]
  %778 = phi i64 [ %725, %757 ], [ %756, %750 ], [ %774, %759 ]
  %779 = icmp ugt ptr %746, %584
  br i1 %779, label %789, label %664

780:                                              ; preds = %727
  %781 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %575, i64 %688, i32 1
  %782 = load i8, ptr %781, align 2, !tbaa !20
  %783 = getelementptr inbounds nuw i8, ptr %666, i64 3
  store i8 %782, ptr %746, align 1, !tbaa !20
  br label %784

784:                                              ; preds = %780, %718
  %785 = phi ptr [ %721, %718 ], [ %783, %780 ]
  %786 = ptrtoint ptr %785 to i64
  %787 = ptrtoint ptr %0 to i64
  %788 = sub i64 %786, %787
  br label %789

789:                                              ; preds = %775, %722, %784, %573, %466, %463
  %790 = phi i64 [ %788, %784 ], [ %464, %463 ], [ -20, %466 ], [ -70, %573 ], [ -70, %722 ], [ -70, %775 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #11
  br label %791

791:                                              ; preds = %20, %23, %26, %40, %56, %461, %789
  %792 = phi i64 [ %62, %56 ], [ -1, %20 ], [ -44, %40 ], [ %462, %461 ], [ %790, %789 ], [ -44, %26 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  br label %793

793:                                              ; preds = %791, %18
  %794 = phi i64 [ %19, %18 ], [ %792, %791 ]
  ret i64 %794
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @FSE_decompress_wksp_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) unnamed_addr #2 {
  %8 = alloca %struct.BIT_DStream_t, align 8
  %9 = alloca %struct.FSE_DState_t, align 8
  %10 = alloca %struct.FSE_DState_t, align 8
  %11 = alloca %struct.BIT_DStream_t, align 8
  %12 = alloca %struct.FSE_DState_t, align 8
  %13 = alloca %struct.FSE_DState_t, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  store i32 255, ptr %15, align 4, !tbaa !28
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 512
  %17 = icmp ult i64 %6, 512
  br i1 %17, label %755, label %18

18:                                               ; preds = %7
  %19 = call i64 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef %2, i64 noundef %3, i32 noundef 1) #11
  %20 = icmp ult i64 %19, -119
  br i1 %20, label %21, label %755

21:                                               ; preds = %18
  %22 = load i32, ptr %14, align 4, !tbaa !28
  %23 = icmp ugt i32 %22, %4
  br i1 %23, label %755, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 %19
  %26 = sub i64 %3, %19
  %27 = shl nuw i32 1, %22
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %27, i32 1), !nosanitize !30
  %29 = extractvalue { i32, i1 } %28, 0, !nosanitize !30
  %30 = extractvalue { i32, i1 } %28, 1, !nosanitize !30
  br i1 %30, label %31, label %32, !prof !31, !nosanitize !30

31:                                               ; preds = %32, %24
  call void @llvm.ubsantrap(i8 0) #12, !nosanitize !30
  unreachable, !nosanitize !30

32:                                               ; preds = %24
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 1), !nosanitize !30
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !30
  br i1 %34, label %31, label %35, !prof !31, !nosanitize !30

35:                                               ; preds = %32
  %36 = extractvalue { i32, i1 } %33, 0, !nosanitize !30
  %37 = sext i32 %36 to i64
  %38 = load i32, ptr %15, align 4, !tbaa !28
  %39 = add i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 1
  %42 = zext nneg i32 %22 to i64
  %43 = shl nuw i64 1, %42
  %44 = shl nsw i64 %37, 2
  %45 = add nuw i64 %43, 11
  %46 = add i64 %45, %44
  %47 = add i64 %46, %41
  %48 = and i64 %47, -4
  %49 = add i64 %48, 516
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %755, label %51

51:                                               ; preds = %35
  %52 = sext i32 %29 to i64
  %53 = shl nsw i64 %52, 2
  %54 = getelementptr inbounds nuw i8, ptr %16, i64 %53
  %55 = add i64 %6, -512
  %56 = sub i64 %55, %53
  %57 = call fastcc i64 @FSE_buildDTable_internal(ptr noundef nonnull %16, ptr noundef %5, i32 noundef %38, i32 noundef %22, ptr noundef nonnull %54, i64 noundef %56)
  %58 = icmp ult i64 %57, -119
  br i1 %58, label %59, label %755

59:                                               ; preds = %51
  %60 = getelementptr inbounds nuw i8, ptr %5, i64 514
  %61 = load i16, ptr %60, align 2, !tbaa !32
  %62 = icmp eq i16 %61, 0
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %64 = getelementptr inbounds i8, ptr %63, i64 -3
  br i1 %62, label %448, label %65

65:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  %66 = icmp eq i64 %26, 0
  br i1 %66, label %446, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %25, ptr %68, align 8, !tbaa !34
  %69 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %70 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %69, ptr %70, align 8, !tbaa !38
  %71 = icmp ugt i64 %26, 7
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %74 = getelementptr inbounds i8, ptr %73, i64 -8
  %75 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %74, ptr %75, align 8, !tbaa !39
  %76 = load i64, ptr %74, align 1
  store i64 %76, ptr %8, align 8, !tbaa !40
  %77 = icmp ult i64 %76, 72057594037927936
  br i1 %77, label %446, label %136

78:                                               ; preds = %67
  %79 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %25, ptr %79, align 8, !tbaa !39
  %80 = load i8, ptr %25, align 1, !tbaa !20
  %81 = zext i8 %80 to i64
  store i64 %81, ptr %8, align 8, !tbaa !40
  switch i64 %26, label %123 [
    i64 7, label %82
    i64 6, label %88
    i64 5, label %95
    i64 4, label %102
    i64 3, label %109
    i64 2, label %116
  ]

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %25, i64 6
  %84 = load i8, ptr %83, align 1, !tbaa !20
  %85 = zext i8 %84 to i64
  %86 = shl nuw nsw i64 %85, 48
  %87 = or disjoint i64 %86, %81
  br label %88

88:                                               ; preds = %82, %78
  %89 = phi i64 [ %81, %78 ], [ %87, %82 ]
  %90 = getelementptr inbounds nuw i8, ptr %25, i64 5
  %91 = load i8, ptr %90, align 1, !tbaa !20
  %92 = zext i8 %91 to i64
  %93 = shl nuw nsw i64 %92, 40
  %94 = add nuw nsw i64 %93, %89
  br label %95

95:                                               ; preds = %88, %78
  %96 = phi i64 [ %81, %78 ], [ %94, %88 ]
  %97 = getelementptr inbounds nuw i8, ptr %25, i64 4
  %98 = load i8, ptr %97, align 1, !tbaa !20
  %99 = zext i8 %98 to i64
  %100 = shl nuw nsw i64 %99, 32
  %101 = add nuw nsw i64 %100, %96
  br label %102

102:                                              ; preds = %95, %78
  %103 = phi i64 [ %81, %78 ], [ %101, %95 ]
  %104 = getelementptr inbounds nuw i8, ptr %25, i64 3
  %105 = load i8, ptr %104, align 1, !tbaa !20
  %106 = zext i8 %105 to i64
  %107 = shl nuw nsw i64 %106, 24
  %108 = add nuw nsw i64 %107, %103
  br label %109

109:                                              ; preds = %102, %78
  %110 = phi i64 [ %81, %78 ], [ %108, %102 ]
  %111 = getelementptr inbounds nuw i8, ptr %25, i64 2
  %112 = load i8, ptr %111, align 1, !tbaa !20
  %113 = zext i8 %112 to i64
  %114 = shl nuw nsw i64 %113, 16
  %115 = add nuw nsw i64 %114, %110
  br label %116

116:                                              ; preds = %109, %78
  %117 = phi i64 [ %81, %78 ], [ %115, %109 ]
  %118 = getelementptr inbounds nuw i8, ptr %25, i64 1
  %119 = load i8, ptr %118, align 1, !tbaa !20
  %120 = zext i8 %119 to i64
  %121 = shl nuw nsw i64 %120, 8
  %122 = add nuw nsw i64 %121, %117
  store i64 %122, ptr %8, align 8, !tbaa !40
  br label %123

123:                                              ; preds = %116, %78
  %124 = getelementptr i8, ptr %2, i64 %3
  %125 = getelementptr i8, ptr %124, i64 -1
  %126 = load i8, ptr %125, align 1, !tbaa !20
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %446, label %128

128:                                              ; preds = %123
  %129 = zext i8 %126 to i32
  %130 = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %129, i1 true)
  %131 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %132 = trunc nuw nsw i64 %26 to i32
  %133 = shl nuw nsw i32 %132, 3
  %134 = sub nsw i32 %130, %133
  %135 = add nsw i32 %134, 41
  store i32 %135, ptr %131, align 8, !tbaa !41
  br label %144

136:                                              ; preds = %72
  %137 = lshr i64 %76, 56
  %138 = trunc nuw nsw i64 %137 to i32
  %139 = call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %138, i1 true)
  %140 = xor i32 %139, 31
  %141 = sub nuw nsw i32 8, %140
  %142 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %141, ptr %142, align 8, !tbaa !41
  %143 = icmp ult i64 %26, -119
  br i1 %143, label %144, label %446

144:                                              ; preds = %128, %136
  call fastcc void @FSE_initDState(ptr noundef %9, ptr noundef %8, ptr noundef nonnull %16)
  call fastcc void @FSE_initDState(ptr noundef %10, ptr noundef %8, ptr noundef nonnull %16)
  %145 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %146 = load i32, ptr %145, align 8, !tbaa !41
  %147 = icmp ugt i32 %146, 64
  br i1 %147, label %446, label %148, !prof !42

148:                                              ; preds = %144
  %149 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %150 = load ptr, ptr %149, align 8, !tbaa !39
  %151 = load ptr, ptr %70, align 8, !tbaa !38
  %152 = icmp ult ptr %150, %151
  br i1 %152, label %161, label %153

153:                                              ; preds = %148
  %154 = lshr i32 %146, 3
  %155 = zext nneg i32 %154 to i64
  %156 = sub nsw i64 0, %155
  %157 = getelementptr inbounds i8, ptr %150, i64 %156
  %158 = and i32 %146, 7
  %159 = load i64, ptr %157, align 1, !tbaa !13
  store i64 %159, ptr %8, align 8, !tbaa !40
  %160 = load ptr, ptr %68, align 8
  br label %183

161:                                              ; preds = %148
  %162 = load ptr, ptr %68, align 8, !tbaa !34
  %163 = icmp eq ptr %150, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i64, ptr %8, align 8
  br label %183

166:                                              ; preds = %161
  %167 = lshr i32 %146, 3
  %168 = zext nneg i32 %167 to i64
  %169 = sub nsw i64 0, %168
  %170 = getelementptr inbounds i8, ptr %150, i64 %169
  %171 = icmp ult ptr %170, %162
  %172 = ptrtoint ptr %150 to i64
  %173 = ptrtoint ptr %162 to i64
  %174 = sub i64 %172, %173
  %175 = trunc i64 %174 to i32
  %176 = select i1 %171, i32 %175, i32 %167
  %177 = zext i32 %176 to i64
  %178 = sub nsw i64 0, %177
  %179 = getelementptr inbounds i8, ptr %150, i64 %178
  %180 = shl i32 %176, 3
  %181 = sub i32 %146, %180
  %182 = load i64, ptr %179, align 1, !tbaa !13
  store i64 %182, ptr %8, align 8, !tbaa !40
  br label %183

183:                                              ; preds = %164, %153, %166
  %184 = phi ptr [ %150, %164 ], [ %157, %153 ], [ %179, %166 ]
  %185 = phi ptr [ %150, %164 ], [ %160, %153 ], [ %162, %166 ]
  %186 = phi i64 [ %165, %164 ], [ %159, %153 ], [ %182, %166 ]
  %187 = phi i32 [ %146, %164 ], [ %158, %153 ], [ %181, %166 ]
  %188 = load i64, ptr %9, align 8
  %189 = load i64, ptr %10, align 8
  %190 = ptrtoint ptr %185 to i64
  %191 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %192 = load ptr, ptr %191, align 8
  %193 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %194 = load ptr, ptr %193, align 8
  %195 = icmp ugt i32 %187, 64
  br i1 %195, label %242, label %196, !prof !46

196:                                              ; preds = %183
  %197 = load i64, ptr %8, align 1
  br label %198

198:                                              ; preds = %196, %251
  %199 = phi i64 [ %231, %251 ], [ %197, %196 ]
  %200 = phi ptr [ %323, %251 ], [ %0, %196 ]
  %201 = phi i32 [ %319, %251 ], [ %187, %196 ]
  %202 = phi i64 [ %231, %251 ], [ %186, %196 ]
  %203 = phi i64 [ %302, %251 ], [ %188, %196 ]
  %204 = phi i64 [ %321, %251 ], [ %189, %196 ]
  %205 = phi ptr [ %230, %251 ], [ %184, %196 ]
  %206 = icmp ult ptr %205, %151
  br i1 %206, label %210, label %207

207:                                              ; preds = %198
  %208 = lshr i32 %201, 3
  %209 = and i32 %201, 7
  br label %224

210:                                              ; preds = %198
  %211 = icmp eq ptr %205, %185
  br i1 %211, label %234, label %212

212:                                              ; preds = %210
  %213 = lshr i32 %201, 3
  %214 = zext nneg i32 %213 to i64
  %215 = sub nsw i64 0, %214
  %216 = getelementptr inbounds i8, ptr %205, i64 %215
  %217 = icmp uge ptr %216, %185
  %218 = ptrtoint ptr %205 to i64
  %219 = sub i64 %218, %190
  %220 = trunc i64 %219 to i32
  %221 = select i1 %217, i32 %213, i32 %220
  %222 = shl i32 %221, 3
  %223 = sub i32 %201, %222
  br label %224

224:                                              ; preds = %207, %212
  %225 = phi i32 [ %208, %207 ], [ %221, %212 ]
  %226 = phi i32 [ %209, %207 ], [ %223, %212 ]
  %227 = phi i1 [ true, %207 ], [ %217, %212 ]
  %228 = zext i32 %225 to i64
  %229 = sub nsw i64 0, %228
  %230 = getelementptr inbounds i8, ptr %205, i64 %229
  %231 = load i64, ptr %230, align 1, !tbaa !13
  %232 = icmp ult ptr %200, %64
  %233 = and i1 %232, %227
  br i1 %233, label %251, label %234

234:                                              ; preds = %210, %224, %251
  %235 = phi i64 [ %231, %251 ], [ %231, %224 ], [ %199, %210 ]
  %236 = phi i64 [ %321, %251 ], [ %204, %224 ], [ %204, %210 ]
  %237 = phi i64 [ %302, %251 ], [ %203, %224 ], [ %203, %210 ]
  %238 = phi ptr [ %323, %251 ], [ %200, %224 ], [ %200, %210 ]
  %239 = phi i32 [ %319, %251 ], [ %226, %224 ], [ %201, %210 ]
  %240 = phi i64 [ %231, %251 ], [ %231, %224 ], [ %202, %210 ]
  %241 = phi ptr [ @BIT_reloadDStream.zeroFilled, %251 ], [ %230, %224 ], [ %205, %210 ]
  store i64 %235, ptr %8, align 1
  br label %242

242:                                              ; preds = %234, %183
  %243 = phi i64 [ %189, %183 ], [ %236, %234 ]
  %244 = phi i64 [ %188, %183 ], [ %237, %234 ]
  %245 = phi ptr [ %0, %183 ], [ %238, %234 ]
  %246 = phi i32 [ %187, %183 ], [ %239, %234 ]
  %247 = phi i64 [ %186, %183 ], [ %240, %234 ]
  %248 = phi ptr [ @BIT_reloadDStream.zeroFilled, %183 ], [ %241, %234 ]
  store i64 %244, ptr %9, align 8
  store i64 %243, ptr %10, align 8
  %249 = getelementptr inbounds i8, ptr %63, i64 -2
  %250 = icmp ugt ptr %245, %249
  br i1 %250, label %446, label %325

251:                                              ; preds = %224
  %252 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %192, i64 %203
  %253 = load i16, ptr %252, align 2, !tbaa !5
  %254 = getelementptr inbounds nuw i8, ptr %252, i64 2
  %255 = load i8, ptr %254, align 2, !tbaa !20
  %256 = getelementptr inbounds nuw i8, ptr %252, i64 3
  %257 = load i8, ptr %256, align 1, !tbaa !20
  %258 = zext i8 %257 to i32
  %259 = and i32 %226, 63
  %260 = zext nneg i32 %259 to i64
  %261 = shl i64 %231, %260
  %262 = sub nsw i32 0, %258
  %263 = and i32 %262, 63
  %264 = zext nneg i32 %263 to i64
  %265 = lshr i64 %261, %264
  %266 = add i32 %226, %258
  %267 = zext i16 %253 to i64
  store i8 %255, ptr %200, align 1, !tbaa !20
  %268 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %194, i64 %204
  %269 = load i16, ptr %268, align 2, !tbaa !5
  %270 = getelementptr inbounds nuw i8, ptr %268, i64 2
  %271 = load i8, ptr %270, align 2, !tbaa !20
  %272 = getelementptr inbounds nuw i8, ptr %268, i64 3
  %273 = load i8, ptr %272, align 1, !tbaa !20
  %274 = zext i8 %273 to i32
  %275 = and i32 %266, 63
  %276 = zext nneg i32 %275 to i64
  %277 = shl i64 %231, %276
  %278 = sub nsw i32 0, %274
  %279 = and i32 %278, 63
  %280 = zext nneg i32 %279 to i64
  %281 = lshr i64 %277, %280
  %282 = add i32 %266, %274
  %283 = zext i16 %269 to i64
  %284 = getelementptr inbounds nuw i8, ptr %200, i64 1
  store i8 %271, ptr %284, align 1, !tbaa !20
  %285 = getelementptr %struct.FSE_decode_t, ptr %192, i64 %265
  %286 = getelementptr %struct.FSE_decode_t, ptr %285, i64 %267
  %287 = load i16, ptr %286, align 2, !tbaa !5
  %288 = getelementptr inbounds nuw i8, ptr %286, i64 2
  %289 = load i8, ptr %288, align 2, !tbaa !20
  %290 = getelementptr inbounds nuw i8, ptr %286, i64 3
  %291 = load i8, ptr %290, align 1, !tbaa !20
  %292 = zext i8 %291 to i32
  %293 = and i32 %282, 63
  %294 = zext nneg i32 %293 to i64
  %295 = shl i64 %231, %294
  %296 = sub nsw i32 0, %292
  %297 = and i32 %296, 63
  %298 = zext nneg i32 %297 to i64
  %299 = lshr i64 %295, %298
  %300 = add i32 %282, %292
  %301 = zext i16 %287 to i64
  %302 = add i64 %299, %301
  %303 = getelementptr inbounds nuw i8, ptr %200, i64 2
  store i8 %289, ptr %303, align 1, !tbaa !20
  %304 = getelementptr %struct.FSE_decode_t, ptr %194, i64 %281
  %305 = getelementptr %struct.FSE_decode_t, ptr %304, i64 %283
  %306 = load i16, ptr %305, align 2, !tbaa !5
  %307 = getelementptr inbounds nuw i8, ptr %305, i64 2
  %308 = load i8, ptr %307, align 2, !tbaa !20
  %309 = getelementptr inbounds nuw i8, ptr %305, i64 3
  %310 = load i8, ptr %309, align 1, !tbaa !20
  %311 = zext i8 %310 to i32
  %312 = and i32 %300, 63
  %313 = zext nneg i32 %312 to i64
  %314 = shl i64 %231, %313
  %315 = sub nsw i32 0, %311
  %316 = and i32 %315, 63
  %317 = zext nneg i32 %316 to i64
  %318 = lshr i64 %314, %317
  %319 = add i32 %300, %311
  %320 = zext i16 %306 to i64
  %321 = add i64 %318, %320
  %322 = getelementptr inbounds nuw i8, ptr %200, i64 3
  store i8 %308, ptr %322, align 1, !tbaa !20
  %323 = getelementptr inbounds nuw i8, ptr %200, i64 4
  %324 = icmp ugt i32 %319, 64
  br i1 %324, label %234, label %198, !prof !44, !llvm.loop !45

325:                                              ; preds = %242, %432
  %326 = phi ptr [ %433, %432 ], [ %248, %242 ]
  %327 = phi ptr [ %404, %432 ], [ %245, %242 ]
  %328 = phi i64 [ %348, %432 ], [ %244, %242 ]
  %329 = phi i64 [ %435, %432 ], [ %247, %242 ]
  %330 = phi i32 [ %434, %432 ], [ %246, %242 ]
  %331 = phi i64 [ %403, %432 ], [ %243, %242 ]
  %332 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %192, i64 %328
  %333 = load i16, ptr %332, align 2, !tbaa !5
  %334 = getelementptr inbounds nuw i8, ptr %332, i64 2
  %335 = load i8, ptr %334, align 2, !tbaa !20
  %336 = getelementptr inbounds nuw i8, ptr %332, i64 3
  %337 = load i8, ptr %336, align 1, !tbaa !20
  %338 = zext i8 %337 to i32
  %339 = and i32 %330, 63
  %340 = zext nneg i32 %339 to i64
  %341 = shl i64 %329, %340
  %342 = sub nsw i32 0, %338
  %343 = and i32 %342, 63
  %344 = zext nneg i32 %343 to i64
  %345 = lshr i64 %341, %344
  %346 = add i32 %330, %338
  %347 = zext i16 %333 to i64
  %348 = add i64 %345, %347
  %349 = getelementptr inbounds nuw i8, ptr %327, i64 1
  store i8 %335, ptr %327, align 1, !tbaa !20
  %350 = icmp ugt i32 %346, 64
  br i1 %350, label %370, label %351, !prof !42

351:                                              ; preds = %325
  %352 = icmp ult ptr %326, %151
  br i1 %352, label %356, label %353

353:                                              ; preds = %351
  %354 = lshr i32 %346, 3
  %355 = and i32 %346, 7
  br label %374

356:                                              ; preds = %351
  %357 = icmp eq ptr %326, %185
  br i1 %357, label %381, label %358

358:                                              ; preds = %356
  %359 = lshr i32 %346, 3
  %360 = zext nneg i32 %359 to i64
  %361 = sub nsw i64 0, %360
  %362 = getelementptr inbounds i8, ptr %326, i64 %361
  %363 = icmp ult ptr %362, %185
  %364 = ptrtoint ptr %326 to i64
  %365 = sub i64 %364, %190
  %366 = trunc i64 %365 to i32
  %367 = select i1 %363, i32 %366, i32 %359
  %368 = shl i32 %367, 3
  %369 = sub i32 %346, %368
  br label %374

370:                                              ; preds = %325
  %371 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %194, i64 %331, i32 1
  %372 = load i8, ptr %371, align 2, !tbaa !20
  %373 = getelementptr inbounds nuw i8, ptr %327, i64 2
  store i8 %372, ptr %349, align 1, !tbaa !20
  br label %441

374:                                              ; preds = %358, %353
  %375 = phi i32 [ %354, %353 ], [ %367, %358 ]
  %376 = phi i32 [ %355, %353 ], [ %369, %358 ]
  %377 = zext i32 %375 to i64
  %378 = sub nsw i64 0, %377
  %379 = getelementptr inbounds i8, ptr %326, i64 %378
  %380 = load i64, ptr %379, align 1, !tbaa !13
  store i64 %380, ptr %8, align 8, !tbaa !40
  br label %381

381:                                              ; preds = %374, %356
  %382 = phi ptr [ %326, %356 ], [ %379, %374 ]
  %383 = phi i32 [ %346, %356 ], [ %376, %374 ]
  %384 = phi i64 [ %329, %356 ], [ %380, %374 ]
  %385 = icmp ugt ptr %349, %249
  br i1 %385, label %446, label %386

386:                                              ; preds = %381
  %387 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %194, i64 %331
  %388 = load i16, ptr %387, align 2, !tbaa !5
  %389 = getelementptr inbounds nuw i8, ptr %387, i64 2
  %390 = load i8, ptr %389, align 2, !tbaa !20
  %391 = getelementptr inbounds nuw i8, ptr %387, i64 3
  %392 = load i8, ptr %391, align 1, !tbaa !20
  %393 = zext i8 %392 to i32
  %394 = and i32 %383, 63
  %395 = zext nneg i32 %394 to i64
  %396 = shl i64 %384, %395
  %397 = sub nsw i32 0, %393
  %398 = and i32 %397, 63
  %399 = zext nneg i32 %398 to i64
  %400 = lshr i64 %396, %399
  %401 = add i32 %383, %393
  %402 = zext i16 %388 to i64
  %403 = add i64 %400, %402
  %404 = getelementptr inbounds nuw i8, ptr %327, i64 2
  store i8 %390, ptr %349, align 1, !tbaa !20
  %405 = icmp ugt i32 %401, 64
  br i1 %405, label %437, label %406, !prof !42

406:                                              ; preds = %386
  %407 = icmp ult ptr %382, %151
  br i1 %407, label %411, label %408

408:                                              ; preds = %406
  %409 = lshr i32 %401, 3
  %410 = and i32 %401, 7
  br label %425

411:                                              ; preds = %406
  %412 = icmp eq ptr %382, %185
  br i1 %412, label %432, label %413

413:                                              ; preds = %411
  %414 = lshr i32 %401, 3
  %415 = zext nneg i32 %414 to i64
  %416 = sub nsw i64 0, %415
  %417 = getelementptr inbounds i8, ptr %382, i64 %416
  %418 = icmp ult ptr %417, %185
  %419 = ptrtoint ptr %382 to i64
  %420 = sub i64 %419, %190
  %421 = trunc i64 %420 to i32
  %422 = select i1 %418, i32 %421, i32 %414
  %423 = shl i32 %422, 3
  %424 = sub i32 %401, %423
  br label %425

425:                                              ; preds = %413, %408
  %426 = phi i32 [ %409, %408 ], [ %422, %413 ]
  %427 = phi i32 [ %410, %408 ], [ %424, %413 ]
  %428 = zext i32 %426 to i64
  %429 = sub nsw i64 0, %428
  %430 = getelementptr inbounds i8, ptr %382, i64 %429
  %431 = load i64, ptr %430, align 1, !tbaa !13
  store i64 %431, ptr %8, align 8, !tbaa !40
  br label %432

432:                                              ; preds = %425, %411
  %433 = phi ptr [ %382, %411 ], [ %430, %425 ]
  %434 = phi i32 [ %401, %411 ], [ %427, %425 ]
  %435 = phi i64 [ %384, %411 ], [ %431, %425 ]
  %436 = icmp ugt ptr %404, %249
  br i1 %436, label %446, label %325

437:                                              ; preds = %386
  %438 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %192, i64 %348, i32 1
  %439 = load i8, ptr %438, align 2, !tbaa !20
  %440 = getelementptr inbounds nuw i8, ptr %327, i64 3
  store i8 %439, ptr %404, align 1, !tbaa !20
  br label %441

441:                                              ; preds = %437, %370
  %442 = phi ptr [ %373, %370 ], [ %440, %437 ]
  %443 = ptrtoint ptr %442 to i64
  %444 = ptrtoint ptr %0 to i64
  %445 = sub i64 %443, %444
  br label %446

446:                                              ; preds = %381, %432, %242, %144, %123, %72, %65, %136, %441
  %447 = phi i64 [ %445, %441 ], [ %26, %136 ], [ -72, %65 ], [ -1, %72 ], [ -20, %123 ], [ -20, %144 ], [ -70, %242 ], [ -70, %432 ], [ -70, %381 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #11
  br label %755

448:                                              ; preds = %59
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #11
  %449 = call fastcc i64 @BIT_initDStream(ptr noundef %11, ptr noundef %25, i64 noundef %26)
  %450 = icmp ult i64 %449, -119
  br i1 %450, label %451, label %753

451:                                              ; preds = %448
  call fastcc void @FSE_initDState(ptr noundef %12, ptr noundef %11, ptr noundef nonnull %16)
  call fastcc void @FSE_initDState(ptr noundef %13, ptr noundef %11, ptr noundef nonnull %16)
  %452 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %453 = load i32, ptr %452, align 8, !tbaa !41
  %454 = icmp ugt i32 %453, 64
  br i1 %454, label %753, label %455, !prof !42

455:                                              ; preds = %451
  %456 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %457 = load ptr, ptr %456, align 8, !tbaa !39
  %458 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %459 = load ptr, ptr %458, align 8, !tbaa !38
  %460 = icmp ult ptr %457, %459
  br i1 %460, label %470, label %461

461:                                              ; preds = %455
  %462 = lshr i32 %453, 3
  %463 = zext nneg i32 %462 to i64
  %464 = sub nsw i64 0, %463
  %465 = getelementptr inbounds i8, ptr %457, i64 %464
  %466 = and i32 %453, 7
  %467 = load i64, ptr %465, align 1, !tbaa !13
  store i64 %467, ptr %11, align 8, !tbaa !40
  %468 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %469 = load ptr, ptr %468, align 8
  br label %493

470:                                              ; preds = %455
  %471 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %472 = load ptr, ptr %471, align 8, !tbaa !34
  %473 = icmp eq ptr %457, %472
  br i1 %473, label %474, label %476

474:                                              ; preds = %470
  %475 = load i64, ptr %11, align 8
  br label %493

476:                                              ; preds = %470
  %477 = lshr i32 %453, 3
  %478 = zext nneg i32 %477 to i64
  %479 = sub nsw i64 0, %478
  %480 = getelementptr inbounds i8, ptr %457, i64 %479
  %481 = icmp ult ptr %480, %472
  %482 = ptrtoint ptr %457 to i64
  %483 = ptrtoint ptr %472 to i64
  %484 = sub i64 %482, %483
  %485 = trunc i64 %484 to i32
  %486 = select i1 %481, i32 %485, i32 %477
  %487 = zext i32 %486 to i64
  %488 = sub nsw i64 0, %487
  %489 = getelementptr inbounds i8, ptr %457, i64 %488
  %490 = shl i32 %486, 3
  %491 = sub i32 %453, %490
  %492 = load i64, ptr %489, align 1, !tbaa !13
  store i64 %492, ptr %11, align 8, !tbaa !40
  br label %493

493:                                              ; preds = %474, %461, %476
  %494 = phi ptr [ %457, %474 ], [ %465, %461 ], [ %489, %476 ]
  %495 = phi ptr [ %457, %474 ], [ %469, %461 ], [ %472, %476 ]
  %496 = phi i64 [ %475, %474 ], [ %467, %461 ], [ %492, %476 ]
  %497 = phi i32 [ %453, %474 ], [ %466, %461 ], [ %491, %476 ]
  %498 = load i64, ptr %12, align 8
  %499 = load i64, ptr %13, align 8
  %500 = ptrtoint ptr %495 to i64
  %501 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %502 = load ptr, ptr %501, align 8
  %503 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %504 = load ptr, ptr %503, align 8
  %505 = icmp ugt i32 %497, 64
  br i1 %505, label %541, label %506, !prof !46

506:                                              ; preds = %493, %550
  %507 = phi ptr [ %626, %550 ], [ %0, %493 ]
  %508 = phi i32 [ %614, %550 ], [ %497, %493 ]
  %509 = phi i64 [ %538, %550 ], [ %496, %493 ]
  %510 = phi i64 [ %604, %550 ], [ %498, %493 ]
  %511 = phi i64 [ %624, %550 ], [ %499, %493 ]
  %512 = phi ptr [ %537, %550 ], [ %494, %493 ]
  %513 = icmp ult ptr %512, %459
  br i1 %513, label %517, label %514

514:                                              ; preds = %506
  %515 = lshr i32 %508, 3
  %516 = and i32 %508, 7
  br label %531

517:                                              ; preds = %506
  %518 = icmp eq ptr %512, %495
  br i1 %518, label %541, label %519

519:                                              ; preds = %517
  %520 = lshr i32 %508, 3
  %521 = zext nneg i32 %520 to i64
  %522 = sub nsw i64 0, %521
  %523 = getelementptr inbounds i8, ptr %512, i64 %522
  %524 = icmp uge ptr %523, %495
  %525 = ptrtoint ptr %512 to i64
  %526 = sub i64 %525, %500
  %527 = trunc i64 %526 to i32
  %528 = select i1 %524, i32 %520, i32 %527
  %529 = shl i32 %528, 3
  %530 = sub i32 %508, %529
  br label %531

531:                                              ; preds = %514, %519
  %532 = phi i32 [ %515, %514 ], [ %528, %519 ]
  %533 = phi i32 [ %516, %514 ], [ %530, %519 ]
  %534 = phi i1 [ true, %514 ], [ %524, %519 ]
  %535 = zext i32 %532 to i64
  %536 = sub nsw i64 0, %535
  %537 = getelementptr inbounds i8, ptr %512, i64 %536
  %538 = load i64, ptr %537, align 1, !tbaa !13
  %539 = icmp ult ptr %507, %64
  %540 = and i1 %539, %534
  br i1 %540, label %550, label %541

541:                                              ; preds = %531, %517, %550, %493
  %542 = phi i64 [ %499, %493 ], [ %511, %531 ], [ %511, %517 ], [ %624, %550 ]
  %543 = phi i64 [ %498, %493 ], [ %510, %531 ], [ %510, %517 ], [ %604, %550 ]
  %544 = phi ptr [ %0, %493 ], [ %507, %531 ], [ %507, %517 ], [ %626, %550 ]
  %545 = phi i32 [ %497, %493 ], [ %533, %531 ], [ %508, %517 ], [ %614, %550 ]
  %546 = phi i64 [ %496, %493 ], [ %538, %531 ], [ %509, %517 ], [ %538, %550 ]
  %547 = phi ptr [ @BIT_reloadDStream.zeroFilled, %493 ], [ %537, %531 ], [ %512, %517 ], [ @BIT_reloadDStream.zeroFilled, %550 ]
  store ptr %547, ptr %456, align 8
  store i32 %545, ptr %452, align 8
  store i64 %546, ptr %11, align 8
  store i64 %543, ptr %12, align 8
  store i64 %542, ptr %13, align 8
  %548 = getelementptr inbounds i8, ptr %63, i64 -2
  %549 = icmp ugt ptr %544, %548
  br i1 %549, label %753, label %628

550:                                              ; preds = %531
  %551 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %502, i64 %510
  %552 = load i16, ptr %551, align 2, !tbaa !5
  %553 = getelementptr inbounds nuw i8, ptr %551, i64 2
  %554 = load i8, ptr %553, align 2, !tbaa !20
  %555 = getelementptr inbounds nuw i8, ptr %551, i64 3
  %556 = load i8, ptr %555, align 1, !tbaa !20
  %557 = zext i8 %556 to i32
  %558 = add i32 %533, %557
  %559 = sub i32 0, %558
  %560 = and i32 %559, 63
  %561 = zext nneg i32 %560 to i64
  %562 = lshr i64 %538, %561
  %563 = zext nneg i8 %556 to i64
  %564 = shl nsw i64 -1, %563
  %565 = xor i64 %564, -1
  %566 = and i64 %562, %565
  %567 = zext i16 %552 to i64
  store i8 %554, ptr %507, align 1, !tbaa !20
  %568 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %504, i64 %511
  %569 = load i16, ptr %568, align 2, !tbaa !5
  %570 = getelementptr inbounds nuw i8, ptr %568, i64 2
  %571 = load i8, ptr %570, align 2, !tbaa !20
  %572 = getelementptr inbounds nuw i8, ptr %568, i64 3
  %573 = load i8, ptr %572, align 1, !tbaa !20
  %574 = zext i8 %573 to i32
  %575 = add i32 %558, %574
  %576 = sub i32 0, %575
  %577 = and i32 %576, 63
  %578 = zext nneg i32 %577 to i64
  %579 = lshr i64 %538, %578
  %580 = zext nneg i8 %573 to i64
  %581 = shl nsw i64 -1, %580
  %582 = xor i64 %581, -1
  %583 = and i64 %579, %582
  %584 = zext i16 %569 to i64
  %585 = getelementptr inbounds nuw i8, ptr %507, i64 1
  store i8 %571, ptr %585, align 1, !tbaa !20
  %586 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %502, i64 %566
  %587 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %586, i64 %567
  %588 = load i16, ptr %587, align 2, !tbaa !5
  %589 = getelementptr inbounds nuw i8, ptr %587, i64 2
  %590 = load i8, ptr %589, align 2, !tbaa !20
  %591 = getelementptr inbounds nuw i8, ptr %587, i64 3
  %592 = load i8, ptr %591, align 1, !tbaa !20
  %593 = zext i8 %592 to i32
  %594 = add i32 %575, %593
  %595 = sub i32 0, %594
  %596 = and i32 %595, 63
  %597 = zext nneg i32 %596 to i64
  %598 = lshr i64 %538, %597
  %599 = zext nneg i8 %592 to i64
  %600 = shl nsw i64 -1, %599
  %601 = xor i64 %600, -1
  %602 = and i64 %598, %601
  %603 = zext i16 %588 to i64
  %604 = add nuw i64 %602, %603
  %605 = getelementptr inbounds nuw i8, ptr %507, i64 2
  store i8 %590, ptr %605, align 1, !tbaa !20
  %606 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %504, i64 %583
  %607 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %606, i64 %584
  %608 = load i16, ptr %607, align 2, !tbaa !5
  %609 = getelementptr inbounds nuw i8, ptr %607, i64 2
  %610 = load i8, ptr %609, align 2, !tbaa !20
  %611 = getelementptr inbounds nuw i8, ptr %607, i64 3
  %612 = load i8, ptr %611, align 1, !tbaa !20
  %613 = zext i8 %612 to i32
  %614 = add i32 %594, %613
  %615 = sub i32 0, %614
  %616 = and i32 %615, 63
  %617 = zext nneg i32 %616 to i64
  %618 = lshr i64 %538, %617
  %619 = zext nneg i8 %612 to i64
  %620 = shl nsw i64 -1, %619
  %621 = xor i64 %620, -1
  %622 = and i64 %618, %621
  %623 = zext i16 %608 to i64
  %624 = add nuw i64 %622, %623
  %625 = getelementptr inbounds nuw i8, ptr %507, i64 3
  store i8 %610, ptr %625, align 1, !tbaa !20
  %626 = getelementptr inbounds nuw i8, ptr %507, i64 4
  %627 = icmp ugt i32 %614, 64
  br i1 %627, label %541, label %506, !prof !44, !llvm.loop !45

628:                                              ; preds = %541, %739
  %629 = phi ptr [ %740, %739 ], [ %547, %541 ]
  %630 = phi ptr [ %710, %739 ], [ %544, %541 ]
  %631 = phi i64 [ %652, %739 ], [ %543, %541 ]
  %632 = phi i64 [ %742, %739 ], [ %546, %541 ]
  %633 = phi i32 [ %741, %739 ], [ %545, %541 ]
  %634 = phi i64 [ %709, %739 ], [ %542, %541 ]
  %635 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %502, i64 %631
  %636 = load i16, ptr %635, align 2, !tbaa !5
  %637 = getelementptr inbounds nuw i8, ptr %635, i64 2
  %638 = load i8, ptr %637, align 2, !tbaa !20
  %639 = getelementptr inbounds nuw i8, ptr %635, i64 3
  %640 = load i8, ptr %639, align 1, !tbaa !20
  %641 = zext i8 %640 to i32
  %642 = add i32 %633, %641
  %643 = sub i32 0, %642
  %644 = and i32 %643, 63
  %645 = zext nneg i32 %644 to i64
  %646 = lshr i64 %632, %645
  %647 = zext nneg i8 %640 to i64
  %648 = shl nsw i64 -1, %647
  %649 = xor i64 %648, -1
  %650 = and i64 %646, %649
  %651 = zext i16 %636 to i64
  %652 = add nuw i64 %650, %651
  %653 = getelementptr inbounds nuw i8, ptr %630, i64 1
  store i8 %638, ptr %630, align 1, !tbaa !20
  %654 = icmp ugt i32 %642, 64
  br i1 %654, label %682, label %655, !prof !42

655:                                              ; preds = %628
  %656 = icmp ult ptr %629, %459
  br i1 %656, label %664, label %657

657:                                              ; preds = %655
  %658 = lshr i32 %642, 3
  %659 = zext nneg i32 %658 to i64
  %660 = sub nsw i64 0, %659
  %661 = getelementptr inbounds i8, ptr %629, i64 %660
  %662 = and i32 %642, 7
  %663 = load i64, ptr %661, align 1, !tbaa !13
  br label %686

664:                                              ; preds = %655
  %665 = icmp eq ptr %629, %495
  br i1 %665, label %686, label %666

666:                                              ; preds = %664
  %667 = lshr i32 %642, 3
  %668 = zext nneg i32 %667 to i64
  %669 = sub nsw i64 0, %668
  %670 = getelementptr inbounds i8, ptr %629, i64 %669
  %671 = icmp ult ptr %670, %495
  %672 = ptrtoint ptr %629 to i64
  %673 = sub i64 %672, %500
  %674 = trunc i64 %673 to i32
  %675 = select i1 %671, i32 %674, i32 %667
  %676 = zext i32 %675 to i64
  %677 = sub nsw i64 0, %676
  %678 = getelementptr inbounds i8, ptr %629, i64 %677
  %679 = shl i32 %675, 3
  %680 = sub i32 %642, %679
  %681 = load i64, ptr %678, align 1, !tbaa !13
  br label %686

682:                                              ; preds = %628
  %683 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %504, i64 %634, i32 1
  %684 = load i8, ptr %683, align 2, !tbaa !20
  %685 = getelementptr inbounds nuw i8, ptr %630, i64 2
  store i8 %684, ptr %653, align 1, !tbaa !20
  br label %748

686:                                              ; preds = %664, %657, %666
  %687 = phi ptr [ %629, %664 ], [ %661, %657 ], [ %678, %666 ]
  %688 = phi i32 [ %642, %664 ], [ %662, %657 ], [ %680, %666 ]
  %689 = phi i64 [ %632, %664 ], [ %663, %657 ], [ %681, %666 ]
  %690 = icmp ugt ptr %653, %548
  br i1 %690, label %753, label %691

691:                                              ; preds = %686
  %692 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %504, i64 %634
  %693 = load i16, ptr %692, align 2, !tbaa !5
  %694 = getelementptr inbounds nuw i8, ptr %692, i64 2
  %695 = load i8, ptr %694, align 2, !tbaa !20
  %696 = getelementptr inbounds nuw i8, ptr %692, i64 3
  %697 = load i8, ptr %696, align 1, !tbaa !20
  %698 = zext i8 %697 to i32
  %699 = add i32 %688, %698
  %700 = sub i32 0, %699
  %701 = and i32 %700, 63
  %702 = zext nneg i32 %701 to i64
  %703 = lshr i64 %689, %702
  %704 = zext nneg i8 %697 to i64
  %705 = shl nsw i64 -1, %704
  %706 = xor i64 %705, -1
  %707 = and i64 %703, %706
  %708 = zext i16 %693 to i64
  %709 = add nuw i64 %707, %708
  %710 = getelementptr inbounds nuw i8, ptr %630, i64 2
  store i8 %695, ptr %653, align 1, !tbaa !20
  %711 = icmp ugt i32 %699, 64
  br i1 %711, label %744, label %712, !prof !42

712:                                              ; preds = %691
  %713 = icmp ult ptr %687, %459
  br i1 %713, label %721, label %714

714:                                              ; preds = %712
  %715 = lshr i32 %699, 3
  %716 = zext nneg i32 %715 to i64
  %717 = sub nsw i64 0, %716
  %718 = getelementptr inbounds i8, ptr %687, i64 %717
  %719 = and i32 %699, 7
  %720 = load i64, ptr %718, align 1, !tbaa !13
  br label %739

721:                                              ; preds = %712
  %722 = icmp eq ptr %687, %495
  br i1 %722, label %739, label %723

723:                                              ; preds = %721
  %724 = lshr i32 %699, 3
  %725 = zext nneg i32 %724 to i64
  %726 = sub nsw i64 0, %725
  %727 = getelementptr inbounds i8, ptr %687, i64 %726
  %728 = icmp ult ptr %727, %495
  %729 = ptrtoint ptr %687 to i64
  %730 = sub i64 %729, %500
  %731 = trunc i64 %730 to i32
  %732 = select i1 %728, i32 %731, i32 %724
  %733 = zext i32 %732 to i64
  %734 = sub nsw i64 0, %733
  %735 = getelementptr inbounds i8, ptr %687, i64 %734
  %736 = shl i32 %732, 3
  %737 = sub i32 %699, %736
  %738 = load i64, ptr %735, align 1, !tbaa !13
  br label %739

739:                                              ; preds = %721, %714, %723
  %740 = phi ptr [ %687, %721 ], [ %718, %714 ], [ %735, %723 ]
  %741 = phi i32 [ %699, %721 ], [ %719, %714 ], [ %737, %723 ]
  %742 = phi i64 [ %689, %721 ], [ %720, %714 ], [ %738, %723 ]
  %743 = icmp ugt ptr %710, %548
  br i1 %743, label %753, label %628

744:                                              ; preds = %691
  %745 = getelementptr inbounds nuw %struct.FSE_decode_t, ptr %502, i64 %652, i32 1
  %746 = load i8, ptr %745, align 2, !tbaa !20
  %747 = getelementptr inbounds nuw i8, ptr %630, i64 3
  store i8 %746, ptr %710, align 1, !tbaa !20
  br label %748

748:                                              ; preds = %744, %682
  %749 = phi ptr [ %685, %682 ], [ %747, %744 ]
  %750 = ptrtoint ptr %749 to i64
  %751 = ptrtoint ptr %0 to i64
  %752 = sub i64 %750, %751
  br label %753

753:                                              ; preds = %686, %739, %541, %451, %448, %748
  %754 = phi i64 [ %752, %748 ], [ %449, %448 ], [ -20, %451 ], [ -70, %541 ], [ -70, %739 ], [ -70, %686 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #11
  br label %755

755:                                              ; preds = %21, %18, %7, %35, %51, %446, %753
  %756 = phi i64 [ %57, %51 ], [ -1, %7 ], [ -44, %35 ], [ %447, %446 ], [ %754, %753 ], [ -44, %21 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #11
  ret i64 %756
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

declare i64 @FSE_readNCount_bmi2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i64 1, 0) i64 @BIT_initDStream(ptr noundef nonnull writeonly captures(none) initializes((0, 12), (16, 40)) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #7 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %87

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %8, ptr %9, align 8, !tbaa !38
  %10 = icmp ugt i64 %2, 7
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %13, ptr %14, align 8, !tbaa !39
  %15 = load i64, ptr %13, align 1, !tbaa !13
  store i64 %15, ptr %0, align 8, !tbaa !40
  %16 = getelementptr i8, ptr %12, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = zext i8 %17 to i32
  %21 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %20, i1 true)
  %22 = xor i32 %21, 31
  %23 = sub nuw nsw i32 8, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %23, ptr %24, align 8, !tbaa !41
  br label %87

25:                                               ; preds = %11
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %26, align 8, !tbaa !41
  br label %87

27:                                               ; preds = %6
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %28, align 8, !tbaa !39
  %29 = load i8, ptr %1, align 1, !tbaa !20
  %30 = zext i8 %29 to i64
  store i64 %30, ptr %0, align 8, !tbaa !40
  switch i64 %2, label %72 [
    i64 7, label %31
    i64 6, label %37
    i64 5, label %44
    i64 4, label %51
    i64 3, label %58
    i64 2, label %65
  ]

31:                                               ; preds = %27
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %33 = load i8, ptr %32, align 1, !tbaa !20
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 48
  %36 = or disjoint i64 %35, %30
  store i64 %36, ptr %0, align 8, !tbaa !40
  br label %37

37:                                               ; preds = %27, %31
  %38 = phi i64 [ %30, %27 ], [ %36, %31 ]
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !20
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 40
  %43 = add nuw nsw i64 %42, %38
  store i64 %43, ptr %0, align 8, !tbaa !40
  br label %44

44:                                               ; preds = %27, %37
  %45 = phi i64 [ %30, %27 ], [ %43, %37 ]
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %47 = load i8, ptr %46, align 1, !tbaa !20
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 32
  %50 = add nuw nsw i64 %49, %45
  store i64 %50, ptr %0, align 8, !tbaa !40
  br label %51

51:                                               ; preds = %27, %44
  %52 = phi i64 [ %30, %27 ], [ %50, %44 ]
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %54 = load i8, ptr %53, align 1, !tbaa !20
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 24
  %57 = add nuw nsw i64 %56, %52
  store i64 %57, ptr %0, align 8, !tbaa !40
  br label %58

58:                                               ; preds = %27, %51
  %59 = phi i64 [ %30, %27 ], [ %57, %51 ]
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %61 = load i8, ptr %60, align 1, !tbaa !20
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 16
  %64 = add nuw nsw i64 %63, %59
  store i64 %64, ptr %0, align 8, !tbaa !40
  br label %65

65:                                               ; preds = %27, %58
  %66 = phi i64 [ %30, %27 ], [ %64, %58 ]
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !20
  %69 = zext i8 %68 to i64
  %70 = shl nuw nsw i64 %69, 8
  %71 = add nuw nsw i64 %70, %66
  store i64 %71, ptr %0, align 8, !tbaa !40
  br label %72

72:                                               ; preds = %65, %27
  %73 = getelementptr i8, ptr %1, i64 %2
  %74 = getelementptr i8, ptr %73, i64 -1
  %75 = load i8, ptr %74, align 1, !tbaa !20
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %78, align 8, !tbaa !41
  br label %87

79:                                               ; preds = %72
  %80 = zext i8 %75 to i32
  %81 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %80, i1 true)
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %83 = trunc nuw nsw i64 %2 to i32
  %84 = shl nuw nsw i32 %83, 3
  %85 = sub nsw i32 %81, %84
  %86 = add nsw i32 %85, 41
  store i32 %86, ptr %82, align 8, !tbaa !41
  br label %87

87:                                               ; preds = %79, %19, %77, %25, %5
  %88 = phi i64 [ -72, %5 ], [ -1, %25 ], [ -20, %77 ], [ %2, %19 ], [ %2, %79 ]
  ret i64 %88
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @FSE_initDState(ptr noundef nonnull writeonly captures(none) initializes((0, 16)) %0, ptr noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #8 {
  %4 = load i16, ptr %2, align 2, !tbaa !47
  %5 = zext i16 %4 to i32
  %6 = load i64, ptr %1, align 8, !tbaa !40
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = add i32 %8, %5
  %10 = sub i32 0, %9
  %11 = and i32 %10, 63
  %12 = zext nneg i32 %11 to i64
  %13 = lshr i64 %6, %12
  %14 = zext nneg i16 %4 to i64
  %15 = shl nsw i64 -1, %14
  %16 = xor i64 %15, -1
  %17 = and i64 %13, %16
  store i32 %9, ptr %7, align 8, !tbaa !41
  store i64 %17, ptr %0, align 8, !tbaa !48
  %18 = icmp ugt i32 %9, 64
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %18, label %20, label %21, !prof !42

20:                                               ; preds = %3
  store ptr @BIT_reloadDStream.zeroFilled, ptr %19, align 8, !tbaa !39
  br label %54

21:                                               ; preds = %3
  %22 = load ptr, ptr %19, align 8, !tbaa !39
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  %25 = icmp ult ptr %22, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = lshr i32 %9, 3
  %28 = zext nneg i32 %27 to i64
  %29 = sub nsw i64 0, %28
  %30 = getelementptr inbounds i8, ptr %22, i64 %29
  store ptr %30, ptr %19, align 8, !tbaa !39
  %31 = and i32 %9, 7
  store i32 %31, ptr %7, align 8, !tbaa !41
  %32 = load i64, ptr %30, align 1, !tbaa !13
  store i64 %32, ptr %1, align 8, !tbaa !40
  br label %54

33:                                               ; preds = %21
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = icmp eq ptr %22, %35
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = lshr i32 %9, 3
  %39 = zext nneg i32 %38 to i64
  %40 = sub nsw i64 0, %39
  %41 = getelementptr inbounds i8, ptr %22, i64 %40
  %42 = icmp ult ptr %41, %35
  %43 = ptrtoint ptr %22 to i64
  %44 = ptrtoint ptr %35 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = select i1 %42, i32 %46, i32 %38
  %48 = zext i32 %47 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, ptr %22, i64 %49
  store ptr %50, ptr %19, align 8, !tbaa !39
  %51 = shl i32 %47, 3
  %52 = sub i32 %9, %51
  store i32 %52, ptr %7, align 8, !tbaa !41
  %53 = load i64, ptr %50, align 1, !tbaa !13
  store i64 %53, ptr %1, align 8, !tbaa !40
  br label %54

54:                                               ; preds = %33, %20, %26, %37
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %55, ptr %56, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noreturn nounwind }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !7, i64 2}
!10 = !{!"", !6, i64 0, !7, i64 2, !7, i64 3}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = distinct !{!15, !12, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !12, !17, !16}
!19 = distinct !{!19, !12}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = !{!10, !7, i64 3}
!26 = !{!10, !6, i64 0}
!27 = distinct !{!27, !12}
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !7, i64 0}
!30 = !{}
!31 = !{!"branch_weights", i32 1, i32 1048575}
!32 = !{!33, !6, i64 2}
!33 = !{!"", !6, i64 0, !6, i64 2}
!34 = !{!35, !36, i64 24}
!35 = !{!"", !14, i64 0, !29, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!36 = !{!"p1 omnipotent char", !37, i64 0}
!37 = !{!"any pointer", !7, i64 0}
!38 = !{!35, !36, i64 32}
!39 = !{!35, !36, i64 16}
!40 = !{!35, !14, i64 0}
!41 = !{!35, !29, i64 8}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!"branch_weights", i32 53687091, i32 2093796557}
!44 = !{!"branch_weights", i32 127, i32 255873}
!45 = distinct !{!45, !12}
!46 = !{!"branch_weights", i32 1, i32 127}
!47 = !{!33, !6, i64 0}
!48 = !{!49, !14, i64 0}
!49 = !{!"", !14, i64 0, !37, i64 8}
!50 = !{!49, !37, i64 8}
