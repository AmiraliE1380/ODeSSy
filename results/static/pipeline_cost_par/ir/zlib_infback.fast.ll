; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_infback.fast.mid.ll'
source_filename = "/mydata/zlib/infback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inflateBack.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @inflateBackInit_(ptr noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %5
  %8 = load i8, ptr %3, align 1, !tbaa !5
  %9 = icmp ne i8 %8, 49
  %10 = icmp ne i32 %4, 112
  %11 = or i1 %10, %9
  br i1 %11, label %47, label %12

12:                                               ; preds = %7
  %13 = icmp eq ptr %0, null
  %14 = icmp eq ptr %2, null
  %15 = or i1 %13, %14
  %16 = add i32 %1, -16
  %17 = icmp ult i32 %16, -8
  %18 = or i1 %17, %15
  br i1 %18, label %47, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %20, align 8, !tbaa !8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  store ptr @zcalloc, ptr %21, align 8, !tbaa !15
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %25, align 8, !tbaa !16
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ @zcalloc, %24 ], [ %22, %19 ]
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %29 = load ptr, ptr %28, align 8, !tbaa !17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store ptr @zcfree, ptr %28, align 8, !tbaa !17
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %34 = load ptr, ptr %33, align 8, !tbaa !16
  %35 = tail call ptr %27(ptr noundef %34, i32 noundef 1, i32 noundef 7160) #6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %35, ptr %38, align 8, !tbaa !18
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 28
  store i32 32768, ptr %39, align 4, !tbaa !19
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 56
  store i32 %1, ptr %40, align 8, !tbaa !23
  %41 = shl nuw nsw i32 1, %1
  %42 = getelementptr inbounds nuw i8, ptr %35, i64 60
  store i32 %41, ptr %42, align 4, !tbaa !24
  %43 = getelementptr inbounds nuw i8, ptr %35, i64 72
  store ptr %2, ptr %43, align 8, !tbaa !25
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 68
  store i32 0, ptr %44, align 4, !tbaa !26
  %45 = getelementptr inbounds nuw i8, ptr %35, i64 64
  store i32 0, ptr %45, align 8, !tbaa !27
  %46 = getelementptr inbounds nuw i8, ptr %35, i64 7144
  store i32 1, ptr %46, align 8, !tbaa !28
  br label %47

47:                                               ; preds = %37, %32, %12, %7, %5
  %48 = phi i32 [ 0, %37 ], [ -6, %7 ], [ -6, %5 ], [ -2, %12 ], [ -4, %32 ]
  ret i32 %48
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @inflateBack(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, ptr noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %7 = icmp eq ptr %0, null
  br i1 %7, label %1214, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1214, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %13, align 8, !tbaa !8
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 16191, ptr %14, align 8, !tbaa !29
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 0, ptr %15, align 4, !tbaa !30
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i32 0, ptr %16, align 8, !tbaa !27
  %17 = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %17, ptr %6, align 8, !tbaa !32
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !33
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi i32 [ %21, %19 ], [ 0, %12 ]
  %24 = getelementptr inbounds nuw i8, ptr %10, i64 72
  %25 = load ptr, ptr %24, align 8, !tbaa !25
  %26 = getelementptr inbounds nuw i8, ptr %10, i64 60
  %27 = load i32, ptr %26, align 4, !tbaa !24
  %28 = getelementptr inbounds nuw i8, ptr %10, i64 132
  %29 = getelementptr inbounds nuw i8, ptr %10, i64 136
  %30 = getelementptr inbounds nuw i8, ptr %10, i64 128
  %31 = getelementptr inbounds nuw i8, ptr %10, i64 140
  %32 = getelementptr inbounds nuw i8, ptr %10, i64 152
  %33 = getelementptr inbounds nuw i8, ptr %10, i64 1368
  %34 = getelementptr inbounds nuw i8, ptr %10, i64 144
  %35 = getelementptr inbounds nuw i8, ptr %10, i64 104
  %36 = getelementptr inbounds nuw i8, ptr %10, i64 120
  %37 = getelementptr inbounds nuw i8, ptr %10, i64 792
  %38 = getelementptr inbounds nuw i8, ptr %10, i64 664
  %39 = getelementptr inbounds nuw i8, ptr %10, i64 112
  %40 = getelementptr inbounds nuw i8, ptr %10, i64 124
  %41 = getelementptr inbounds nuw i8, ptr %10, i64 92
  %42 = getelementptr inbounds nuw i8, ptr %10, i64 100
  %43 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %47 = getelementptr inbounds nuw i8, ptr %10, i64 80
  %48 = getelementptr inbounds nuw i8, ptr %10, i64 88
  br label %49

49:                                               ; preds = %.loopexit103, %22
  %50 = phi i32 [ 16191, %22 ], [ %1197, %.loopexit103 ]
  %51 = phi ptr [ %25, %22 ], [ %1192, %.loopexit103 ]
  %52 = phi i32 [ %23, %22 ], [ %1193, %.loopexit103 ]
  %53 = phi i32 [ %27, %22 ], [ %1194, %.loopexit103 ]
  %54 = phi i64 [ 0, %22 ], [ %1195, %.loopexit103 ]
  %55 = phi i32 [ 0, %22 ], [ %1196, %.loopexit103 ]
  switch i32 %50, label %.loopexit.loopexit996 [
    i32 16191, label %60
    i32 16193, label %106
    i32 16196, label %56
    i32 16200, label %631
    i32 16208, label %.loopexit.loopexit1277
    i32 16209, label %.loopexit
  ]

56:                                               ; preds = %49
  %57 = icmp ult i32 %55, 14
  br i1 %57, label %58, label %223

58:                                               ; preds = %56
  %59 = zext nneg i32 %55 to i64
  br label %197

60:                                               ; preds = %49
  %61 = load i32, ptr %15, align 4, !tbaa !30
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = icmp ult i32 %55, 3
  br i1 %64, label %65, label %91

65:                                               ; preds = %63
  %66 = or disjoint i32 %55, 8
  %67 = icmp eq i32 %52, 0
  br i1 %67, label %73, label %77

68:                                               ; preds = %60
  %69 = and i32 %55, 7
  %70 = and i32 %55, -8
  %71 = zext nneg i32 %69 to i64
  %72 = lshr i64 %54, %71
  store i32 16208, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

73:                                               ; preds = %65
  %74 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

77:                                               ; preds = %73, %65
  %78 = phi i32 [ %74, %73 ], [ %52, %65 ]
  %79 = load ptr, ptr %6, align 8, !tbaa !32
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 1
  store ptr %80, ptr %6, align 8, !tbaa !32
  %81 = load i8, ptr %79, align 1, !tbaa !5
  %82 = zext i8 %81 to i64
  %83 = zext nneg i32 %55 to i64
  %84 = shl nuw nsw i64 %82, %83
  %85 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %54, i64 %84), !nosanitize !34
  %86 = extractvalue { i64, i1 } %85, 1, !nosanitize !34
  br i1 %86, label %87, label %88, !prof !35, !nosanitize !34

87:                                               ; preds = %77
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

88:                                               ; preds = %77
  %89 = extractvalue { i64, i1 } %85, 0, !nosanitize !34
  %90 = add i32 %78, -1
  br label %91

91:                                               ; preds = %88, %63
  %92 = phi i32 [ %90, %88 ], [ %52, %63 ]
  %93 = phi i64 [ %89, %88 ], [ %54, %63 ]
  %94 = phi i32 [ %66, %88 ], [ %55, %63 ]
  %95 = trunc i64 %93 to i32
  %96 = and i32 %95, 1
  store i32 %96, ptr %15, align 4, !tbaa !30
  %97 = lshr i32 %95, 1
  %98 = and i32 %97, 3
  switch i32 %98, label %default.unreachable735 [
    i32 0, label %102
    i32 1, label %99
    i32 2, label %100
    i32 3, label %101
  ]

99:                                               ; preds = %91
  call void @inflate_fixed(ptr noundef nonnull %10) #6
  br label %102

100:                                              ; preds = %91
  br label %102

default.unreachable735:                           ; preds = %91
  unreachable

101:                                              ; preds = %91
  store ptr @.str.1, ptr %13, align 8, !tbaa !8
  br label %102

102:                                              ; preds = %101, %100, %99, %91
  %103 = phi i32 [ 16209, %101 ], [ 16196, %100 ], [ 16200, %99 ], [ 16193, %91 ]
  store i32 %103, ptr %14, align 8, !tbaa !29
  %104 = add i32 %94, -3
  %105 = lshr i64 %93, 3
  br label %.loopexit103

106:                                              ; preds = %49
  %107 = and i32 %55, 7
  %108 = zext nneg i32 %107 to i64
  %109 = lshr i64 %54, %108
  %110 = and i32 %55, -8
  %111 = icmp ult i32 %55, 32
  br i1 %111, label %112, label %141

112:                                              ; preds = %106
  %113 = and i32 %55, 24
  %114 = zext nneg i32 %113 to i64
  br label %115

115:                                              ; preds = %134, %112
  %116 = phi i64 [ %114, %112 ], [ %137, %134 ]
  %117 = phi i64 [ %109, %112 ], [ %135, %134 ]
  %118 = phi i32 [ %52, %112 ], [ %136, %134 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

124:                                              ; preds = %120, %115
  %125 = phi i32 [ %121, %120 ], [ %118, %115 ]
  %126 = load ptr, ptr %6, align 8, !tbaa !32
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 1
  store ptr %127, ptr %6, align 8, !tbaa !32
  %128 = load i8, ptr %126, align 1, !tbaa !5
  %129 = zext i8 %128 to i64
  %130 = shl nuw nsw i64 %129, %116
  %131 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %117, i64 %130), !nosanitize !34
  %132 = extractvalue { i64, i1 } %131, 1, !nosanitize !34
  br i1 %132, label %133, label %134, !prof !35, !nosanitize !34

133:                                              ; preds = %124
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

134:                                              ; preds = %124
  %135 = extractvalue { i64, i1 } %131, 0, !nosanitize !34
  %136 = add i32 %125, -1
  %137 = add nuw nsw i64 %116, 8
  %138 = icmp samesign ult i64 %116, 24
  br i1 %138, label %115, label %139, !llvm.loop !36

139:                                              ; preds = %134
  %140 = trunc nuw nsw i64 %137 to i32
  br label %141

141:                                              ; preds = %139, %106
  %142 = phi i32 [ %52, %106 ], [ %136, %139 ]
  %143 = phi i64 [ %109, %106 ], [ %135, %139 ]
  %144 = phi i32 [ %110, %106 ], [ %140, %139 ]
  %145 = and i64 %143, 65535
  %146 = lshr i64 %143, 16
  %147 = xor i64 %146, %145
  %148 = icmp eq i64 %147, 65535
  br i1 %148, label %150, label %149

149:                                              ; preds = %141
  store ptr @.str.2, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

150:                                              ; preds = %141
  %151 = trunc i64 %143 to i32
  %152 = and i32 %151, 65535
  store i32 %152, ptr %41, align 4, !tbaa !38
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %.loopexit100, label %.preheader

.preheader:                                       ; preds = %150, %189
  %154 = phi i32 [ %190, %189 ], [ %53, %150 ]
  %155 = phi i32 [ %179, %189 ], [ %142, %150 ]
  %156 = phi ptr [ %192, %189 ], [ %51, %150 ]
  %157 = phi i32 [ %191, %189 ], [ %152, %150 ]
  %158 = icmp eq i32 %155, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %.preheader
  %160 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

163:                                              ; preds = %159, %.preheader
  %164 = phi i32 [ %160, %159 ], [ %155, %.preheader ]
  %165 = icmp eq i32 %154, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load ptr, ptr %24, align 8, !tbaa !25
  %168 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %168, ptr %16, align 8, !tbaa !27
  %169 = call i32 %3(ptr noundef %4, ptr noundef %167, i32 noundef %168) #6
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %.loopexit

171:                                              ; preds = %166, %163
  %172 = phi ptr [ %167, %166 ], [ %156, %163 ]
  %173 = phi i32 [ %168, %166 ], [ %154, %163 ]
  %174 = call i32 @llvm.umin.i32(i32 %157, i32 %164)
  %175 = call i32 @llvm.umin.i32(i32 %174, i32 %173)
  %176 = load ptr, ptr %6, align 8, !tbaa !32
  %177 = zext i32 %175 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %172, ptr align 1 %176, i64 %177, i1 false)
  %178 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %164, i32 %175), !nosanitize !34
  %179 = extractvalue { i32, i1 } %178, 0, !nosanitize !34
  %180 = extractvalue { i32, i1 } %178, 1, !nosanitize !34
  br i1 %180, label %181, label %182, !prof !35, !nosanitize !34

181:                                              ; preds = %171
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

182:                                              ; preds = %171
  %183 = load ptr, ptr %6, align 8, !tbaa !32
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 %177
  store ptr %184, ptr %6, align 8, !tbaa !32
  %185 = load i32, ptr %41, align 4, !tbaa !38
  %186 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %185, i32 %175), !nosanitize !34
  %187 = extractvalue { i32, i1 } %186, 1, !nosanitize !34
  br i1 %187, label %188, label %189, !prof !35, !nosanitize !34

188:                                              ; preds = %182
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

189:                                              ; preds = %182
  %190 = sub i32 %173, %175
  %191 = extractvalue { i32, i1 } %186, 0, !nosanitize !34
  %192 = getelementptr inbounds nuw i8, ptr %172, i64 %177
  store i32 %191, ptr %41, align 4, !tbaa !38
  %193 = icmp eq i32 %191, 0
  br i1 %193, label %.loopexit100, label %.preheader, !llvm.loop !39

.loopexit100:                                     ; preds = %189, %150
  %194 = phi ptr [ %51, %150 ], [ %192, %189 ]
  %195 = phi i32 [ %142, %150 ], [ %179, %189 ]
  %196 = phi i32 [ %53, %150 ], [ %190, %189 ]
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

197:                                              ; preds = %216, %58
  %198 = phi i64 [ %59, %58 ], [ %219, %216 ]
  %199 = phi i64 [ %54, %58 ], [ %217, %216 ]
  %200 = phi i32 [ %52, %58 ], [ %218, %216 ]
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

206:                                              ; preds = %202, %197
  %207 = phi i32 [ %203, %202 ], [ %200, %197 ]
  %208 = load ptr, ptr %6, align 8, !tbaa !32
  %209 = getelementptr inbounds nuw i8, ptr %208, i64 1
  store ptr %209, ptr %6, align 8, !tbaa !32
  %210 = load i8, ptr %208, align 1, !tbaa !5
  %211 = zext i8 %210 to i64
  %212 = shl nuw nsw i64 %211, %198
  %213 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %199, i64 %212), !nosanitize !34
  %214 = extractvalue { i64, i1 } %213, 1, !nosanitize !34
  br i1 %214, label %215, label %216, !prof !35, !nosanitize !34

215:                                              ; preds = %206
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

216:                                              ; preds = %206
  %217 = extractvalue { i64, i1 } %213, 0, !nosanitize !34
  %218 = add i32 %207, -1
  %219 = add nuw nsw i64 %198, 8
  %220 = icmp samesign ult i64 %198, 6
  br i1 %220, label %197, label %221, !llvm.loop !40

221:                                              ; preds = %216
  %222 = trunc nuw nsw i64 %219 to i32
  br label %223

223:                                              ; preds = %221, %56
  %224 = phi i32 [ %52, %56 ], [ %218, %221 ]
  %225 = phi i64 [ %54, %56 ], [ %217, %221 ]
  %226 = phi i32 [ %55, %56 ], [ %222, %221 ]
  %227 = trunc i64 %225 to i32
  %228 = and i32 %227, 31
  %229 = add nuw nsw i32 %228, 257
  store i32 %229, ptr %28, align 4, !tbaa !41
  %230 = lshr i32 %227, 5
  %231 = and i32 %230, 31
  %232 = add nuw nsw i32 %231, 1
  store i32 %232, ptr %29, align 8, !tbaa !42
  %233 = lshr i32 %227, 10
  %234 = and i32 %233, 15
  %235 = add nuw nsw i32 %234, 4
  store i32 %235, ptr %30, align 8, !tbaa !43
  %236 = lshr i64 %225, 14
  %237 = add i32 %226, -14
  %238 = icmp samesign ugt i32 %228, 29
  %239 = icmp samesign ugt i32 %231, 29
  %240 = select i1 %238, i1 true, i1 %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %223
  store ptr @.str.3, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

242:                                              ; preds = %223
  store i32 0, ptr %31, align 4, !tbaa !44
  br label %247

243:                                              ; preds = %279
  %244 = icmp ult i32 %280, 19
  br i1 %244, label %245, label %302

245:                                              ; preds = %243
  %246 = zext nneg i32 %280 to i64
  br label %292

247:                                              ; preds = %279, %242
  %248 = phi i32 [ %280, %279 ], [ 0, %242 ]
  %249 = phi i32 [ %288, %279 ], [ %237, %242 ]
  %250 = phi i64 [ %289, %279 ], [ %236, %242 ]
  %251 = phi i32 [ %273, %279 ], [ %224, %242 ]
  %252 = icmp ult i32 %249, 3
  br i1 %252, label %253, label %271

253:                                              ; preds = %247
  %254 = or disjoint i32 %249, 8
  %255 = icmp eq i32 %251, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %._crit_edge

._crit_edge:                                      ; preds = %256
  %.pre = load i32, ptr %31, align 4, !tbaa !44
  br label %260

259:                                              ; preds = %256
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

260:                                              ; preds = %._crit_edge, %253
  %261 = phi i32 [ %.pre, %._crit_edge ], [ %248, %253 ]
  %262 = phi i32 [ %257, %._crit_edge ], [ %251, %253 ]
  %263 = load ptr, ptr %6, align 8, !tbaa !32
  %264 = getelementptr inbounds nuw i8, ptr %263, i64 1
  store ptr %264, ptr %6, align 8, !tbaa !32
  %265 = load i8, ptr %263, align 1, !tbaa !5
  %266 = zext i8 %265 to i64
  %267 = zext nneg i32 %249 to i64
  %268 = shl nuw nsw i64 %266, %267
  %269 = add nuw nsw i64 %268, %250
  %270 = add i32 %262, -1
  br label %271

271:                                              ; preds = %260, %247
  %272 = phi i32 [ %261, %260 ], [ %248, %247 ]
  %273 = phi i32 [ %270, %260 ], [ %251, %247 ]
  %274 = phi i64 [ %269, %260 ], [ %250, %247 ]
  %275 = phi i32 [ %254, %260 ], [ %249, %247 ]
  %276 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %272, i32 1), !nosanitize !34
  %277 = extractvalue { i32, i1 } %276, 1, !nosanitize !34
  br i1 %277, label %278, label %279, !prof !35, !nosanitize !34

278:                                              ; preds = %271
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

279:                                              ; preds = %271
  %280 = extractvalue { i32, i1 } %276, 0, !nosanitize !34
  %281 = trunc i64 %274 to i16
  %282 = and i16 %281, 7
  store i32 %280, ptr %31, align 4, !tbaa !44
  %283 = zext i32 %272 to i64
  %284 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %283
  %285 = load i16, ptr %284, align 2, !tbaa !45
  %286 = zext i16 %285 to i64
  %287 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %286
  store i16 %282, ptr %287, align 2, !tbaa !45
  %288 = add i32 %275, -3
  %289 = lshr i64 %274, 3
  %290 = load i32, ptr %30, align 8, !tbaa !43
  %291 = icmp ult i32 %280, %290
  br i1 %291, label %247, label %243, !llvm.loop !47

292:                                              ; preds = %292, %245
  %293 = phi i64 [ %246, %245 ], [ %294, %292 ]
  %294 = add nuw nsw i64 %293, 1
  %295 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %293
  %296 = load i16, ptr %295, align 2, !tbaa !45
  %297 = zext i16 %296 to i64
  %298 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %297
  store i16 0, ptr %298, align 2, !tbaa !45
  %299 = and i64 %294, 4294967295
  %300 = icmp eq i64 %299, 19
  br i1 %300, label %301, label %292, !llvm.loop !48

301:                                              ; preds = %292
  store i32 19, ptr %31, align 4, !tbaa !44
  br label %302

302:                                              ; preds = %301, %243
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 7, ptr %36, align 8, !tbaa !51
  %303 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %32, i32 noundef 19, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %302
  store ptr @.str.4, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

306:                                              ; preds = %302
  store i32 0, ptr %31, align 4, !tbaa !44
  %307 = load i32, ptr %28, align 4, !tbaa !41
  %308 = load i32, ptr %29, align 8, !tbaa !42
  %309 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %307, i32 %308), !nosanitize !34
  %310 = extractvalue { i32, i1 } %309, 1, !nosanitize !34
  br i1 %310, label %.loopexit109, label %311, !prof !52, !nosanitize !34

311:                                              ; preds = %306
  %312 = extractvalue { i32, i1 } %309, 0, !nosanitize !34
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %.loopexit110, label %.preheader108.preheader

.preheader108.preheader:                          ; preds = %311
  %.pre637 = load i32, ptr %36, align 8, !tbaa !51
  %.pre638 = load ptr, ptr %35, align 8, !tbaa !50
  br label %.preheader108

.loopexit109:                                     ; preds = %306, %599
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

314:                                              ; preds = %599
  %315 = extractvalue { i32, i1 } %605, 0, !nosanitize !34
  %316 = icmp ult i32 %600, %315
  br i1 %316, label %.preheader108, label %.loopexit110, !llvm.loop !53

.preheader108:                                    ; preds = %.preheader108.preheader, %314
  %317 = phi ptr [ %373, %314 ], [ %.pre638, %.preheader108.preheader ]
  %318 = phi i32 [ %374, %314 ], [ %.pre637, %.preheader108.preheader ]
  %319 = phi i32 [ %375, %314 ], [ %273, %.preheader108.preheader ]
  %320 = phi i64 [ %386, %314 ], [ %289, %.preheader108.preheader ]
  %321 = phi i32 [ %388, %314 ], [ %288, %.preheader108.preheader ]
  %322 = shl nsw i32 -1, %318
  %323 = xor i32 %322, -1
  %324 = trunc i64 %320 to i32
  %325 = and i32 %323, %324
  %326 = zext nneg i32 %325 to i64
  %327 = getelementptr inbounds nuw [4 x i8], ptr %317, i64 %326
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 1
  %329 = load i8, ptr %328, align 1, !tbaa !5
  %330 = zext i8 %329 to i32
  %331 = icmp ult i32 %321, %330
  br i1 %331, label %332, label %372

332:                                              ; preds = %.preheader108
  %333 = zext nneg i32 %321 to i64
  br label %334

334:                                              ; preds = %353, %332
  %335 = phi i64 [ %333, %332 ], [ %356, %353 ]
  %336 = phi i64 [ %320, %332 ], [ %354, %353 ]
  %337 = phi i32 [ %319, %332 ], [ %355, %353 ]
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %334
  %340 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %339
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

343:                                              ; preds = %339, %334
  %344 = phi i32 [ %340, %339 ], [ %337, %334 ]
  %345 = load ptr, ptr %6, align 8, !tbaa !32
  %346 = getelementptr inbounds nuw i8, ptr %345, i64 1
  store ptr %346, ptr %6, align 8, !tbaa !32
  %347 = load i8, ptr %345, align 1, !tbaa !5
  %348 = zext i8 %347 to i64
  %349 = shl i64 %348, %335
  %350 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %336, i64 %349), !nosanitize !34
  %351 = extractvalue { i64, i1 } %350, 1, !nosanitize !34
  br i1 %351, label %352, label %353, !prof !35, !nosanitize !34

352:                                              ; preds = %343
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

353:                                              ; preds = %343
  %354 = extractvalue { i64, i1 } %350, 0, !nosanitize !34
  %355 = add i32 %344, -1
  %356 = add nuw nsw i64 %335, 8
  %357 = load i32, ptr %36, align 8, !tbaa !51
  %358 = shl nsw i32 -1, %357
  %359 = xor i32 %358, -1
  %360 = trunc i64 %354 to i32
  %361 = load ptr, ptr %35, align 8, !tbaa !50
  %362 = and i32 %359, %360
  %363 = zext nneg i32 %362 to i64
  %364 = getelementptr inbounds nuw [4 x i8], ptr %361, i64 %363
  %365 = getelementptr inbounds nuw i8, ptr %364, i64 1
  %366 = load i8, ptr %365, align 1, !tbaa !5
  %367 = zext i8 %366 to i64
  %368 = icmp samesign ult i64 %356, %367
  br i1 %368, label %334, label %369

369:                                              ; preds = %353
  %370 = zext i8 %366 to i32
  %371 = trunc nuw nsw i64 %356 to i32
  br label %372

372:                                              ; preds = %369, %.preheader108
  %373 = phi ptr [ %317, %.preheader108 ], [ %361, %369 ]
  %374 = phi i32 [ %318, %.preheader108 ], [ %357, %369 ]
  %375 = phi i32 [ %319, %.preheader108 ], [ %355, %369 ]
  %376 = phi i64 [ %320, %.preheader108 ], [ %354, %369 ]
  %377 = phi i32 [ %321, %.preheader108 ], [ %371, %369 ]
  %378 = phi i8 [ %329, %.preheader108 ], [ %366, %369 ]
  %379 = phi ptr [ %327, %.preheader108 ], [ %364, %369 ]
  %380 = phi i32 [ %330, %.preheader108 ], [ %370, %369 ]
  %381 = getelementptr inbounds nuw i8, ptr %379, i64 2
  %382 = load i16, ptr %381, align 2, !tbaa !45
  %383 = icmp ult i16 %382, 16
  br i1 %383, label %384, label %396

384:                                              ; preds = %372
  %385 = zext nneg i8 %378 to i64
  %386 = lshr i64 %376, %385
  %387 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %377, i32 %380), !nosanitize !34
  %388 = extractvalue { i32, i1 } %387, 0, !nosanitize !34
  %389 = extractvalue { i32, i1 } %387, 1, !nosanitize !34
  br i1 %389, label %390, label %391, !prof !35, !nosanitize !34

390:                                              ; preds = %384
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

391:                                              ; preds = %384
  %392 = load i32, ptr %31, align 4, !tbaa !44
  %393 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %392, i32 1), !nosanitize !34
  %394 = extractvalue { i32, i1 } %393, 1, !nosanitize !34
  br i1 %394, label %395, label %599, !prof !35, !nosanitize !34

395:                                              ; preds = %391
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

396:                                              ; preds = %372
  switch i16 %382, label %409 [
    i16 16, label %403
    i16 17, label %397
  ]

397:                                              ; preds = %396
  %398 = add nuw nsw i32 %380, 3
  %399 = icmp ult i32 %377, %398
  br i1 %399, label %400, label %490

400:                                              ; preds = %397
  %401 = zext nneg i32 %377 to i64
  %402 = zext nneg i32 %398 to i64
  br label %464

403:                                              ; preds = %396
  %404 = add nuw nsw i32 %380, 2
  %405 = icmp ult i32 %377, %404
  br i1 %405, label %406, label %441

406:                                              ; preds = %403
  %407 = zext nneg i32 %377 to i64
  %408 = zext nneg i32 %404 to i64
  br label %415

409:                                              ; preds = %396
  %410 = add nuw nsw i32 %380, 7
  %411 = icmp ult i32 %377, %410
  br i1 %411, label %412, label %531

412:                                              ; preds = %409
  %413 = zext nneg i32 %377 to i64
  %414 = zext nneg i32 %410 to i64
  br label %505

415:                                              ; preds = %434, %406
  %416 = phi i64 [ %407, %406 ], [ %437, %434 ]
  %417 = phi i64 [ %376, %406 ], [ %435, %434 ]
  %418 = phi i32 [ %375, %406 ], [ %436, %434 ]
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %415
  %421 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %424

423:                                              ; preds = %420
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

424:                                              ; preds = %420, %415
  %425 = phi i32 [ %421, %420 ], [ %418, %415 ]
  %426 = load ptr, ptr %6, align 8, !tbaa !32
  %427 = getelementptr inbounds nuw i8, ptr %426, i64 1
  store ptr %427, ptr %6, align 8, !tbaa !32
  %428 = load i8, ptr %426, align 1, !tbaa !5
  %429 = zext i8 %428 to i64
  %430 = shl i64 %429, %416
  %431 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %417, i64 %430), !nosanitize !34
  %432 = extractvalue { i64, i1 } %431, 1, !nosanitize !34
  br i1 %432, label %433, label %434, !prof !35, !nosanitize !34

433:                                              ; preds = %424
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

434:                                              ; preds = %424
  %435 = extractvalue { i64, i1 } %431, 0, !nosanitize !34
  %436 = add i32 %425, -1
  %437 = add nuw nsw i64 %416, 8
  %438 = icmp samesign ult i64 %437, %408
  br i1 %438, label %415, label %439, !llvm.loop !54

439:                                              ; preds = %434
  %440 = trunc nuw nsw i64 %437 to i32
  br label %441

441:                                              ; preds = %439, %403
  %442 = phi i32 [ %375, %403 ], [ %436, %439 ]
  %443 = phi i64 [ %376, %403 ], [ %435, %439 ]
  %444 = phi i32 [ %377, %403 ], [ %440, %439 ]
  %445 = zext nneg i8 %378 to i64
  %446 = lshr i64 %443, %445
  %447 = sub nuw i32 %444, %380
  %448 = load i32, ptr %31, align 4, !tbaa !44
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %451

450:                                              ; preds = %441
  store ptr @.str.5, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

451:                                              ; preds = %441
  %452 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %447, i32 2), !nosanitize !34
  %453 = extractvalue { i32, i1 } %452, 1, !nosanitize !34
  br i1 %453, label %454, label %455, !prof !35, !nosanitize !34

454:                                              ; preds = %451
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

455:                                              ; preds = %451
  %456 = trunc i64 %446 to i32
  %457 = and i32 %456, 3
  %458 = add nuw nsw i32 %457, 3
  %459 = add i32 %448, -1
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %460
  %462 = load i16, ptr %461, align 2, !tbaa !45
  %463 = lshr i64 %446, 2
  br label %546

464:                                              ; preds = %483, %400
  %465 = phi i64 [ %401, %400 ], [ %486, %483 ]
  %466 = phi i64 [ %376, %400 ], [ %484, %483 ]
  %467 = phi i32 [ %375, %400 ], [ %485, %483 ]
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %473

469:                                              ; preds = %464
  %470 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %473

472:                                              ; preds = %469
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

473:                                              ; preds = %469, %464
  %474 = phi i32 [ %470, %469 ], [ %467, %464 ]
  %475 = load ptr, ptr %6, align 8, !tbaa !32
  %476 = getelementptr inbounds nuw i8, ptr %475, i64 1
  store ptr %476, ptr %6, align 8, !tbaa !32
  %477 = load i8, ptr %475, align 1, !tbaa !5
  %478 = zext i8 %477 to i64
  %479 = shl i64 %478, %465
  %480 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %466, i64 %479), !nosanitize !34
  %481 = extractvalue { i64, i1 } %480, 1, !nosanitize !34
  br i1 %481, label %482, label %483, !prof !35, !nosanitize !34

482:                                              ; preds = %473
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

483:                                              ; preds = %473
  %484 = extractvalue { i64, i1 } %480, 0, !nosanitize !34
  %485 = add i32 %474, -1
  %486 = add nuw nsw i64 %465, 8
  %487 = icmp samesign ult i64 %486, %402
  br i1 %487, label %464, label %488, !llvm.loop !55

488:                                              ; preds = %483
  %489 = trunc nuw nsw i64 %486 to i32
  br label %490

490:                                              ; preds = %488, %397
  %491 = phi i32 [ %375, %397 ], [ %485, %488 ]
  %492 = phi i64 [ %376, %397 ], [ %484, %488 ]
  %493 = phi i32 [ %377, %397 ], [ %489, %488 ]
  %494 = sub nuw i32 %493, %380
  %495 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %494, i32 3), !nosanitize !34
  %496 = extractvalue { i32, i1 } %495, 1, !nosanitize !34
  br i1 %496, label %497, label %498, !prof !35, !nosanitize !34

497:                                              ; preds = %490
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

498:                                              ; preds = %490
  %499 = zext nneg i8 %378 to i64
  %500 = lshr i64 %492, %499
  %501 = trunc i64 %500 to i32
  %502 = and i32 %501, 7
  %503 = add nuw nsw i32 %502, 3
  %504 = lshr i64 %500, 3
  br label %546

505:                                              ; preds = %524, %412
  %506 = phi i64 [ %413, %412 ], [ %527, %524 ]
  %507 = phi i64 [ %376, %412 ], [ %525, %524 ]
  %508 = phi i32 [ %375, %412 ], [ %526, %524 ]
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %514

510:                                              ; preds = %505
  %511 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %514

513:                                              ; preds = %510
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

514:                                              ; preds = %510, %505
  %515 = phi i32 [ %511, %510 ], [ %508, %505 ]
  %516 = load ptr, ptr %6, align 8, !tbaa !32
  %517 = getelementptr inbounds nuw i8, ptr %516, i64 1
  store ptr %517, ptr %6, align 8, !tbaa !32
  %518 = load i8, ptr %516, align 1, !tbaa !5
  %519 = zext i8 %518 to i64
  %520 = shl i64 %519, %506
  %521 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %507, i64 %520), !nosanitize !34
  %522 = extractvalue { i64, i1 } %521, 1, !nosanitize !34
  br i1 %522, label %523, label %524, !prof !35, !nosanitize !34

523:                                              ; preds = %514
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

524:                                              ; preds = %514
  %525 = extractvalue { i64, i1 } %521, 0, !nosanitize !34
  %526 = add i32 %515, -1
  %527 = add nuw nsw i64 %506, 8
  %528 = icmp samesign ult i64 %527, %414
  br i1 %528, label %505, label %529, !llvm.loop !56

529:                                              ; preds = %524
  %530 = trunc nuw nsw i64 %527 to i32
  br label %531

531:                                              ; preds = %529, %409
  %532 = phi i32 [ %375, %409 ], [ %526, %529 ]
  %533 = phi i64 [ %376, %409 ], [ %525, %529 ]
  %534 = phi i32 [ %377, %409 ], [ %530, %529 ]
  %535 = sub nuw i32 %534, %380
  %536 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %535, i32 7), !nosanitize !34
  %537 = extractvalue { i32, i1 } %536, 1, !nosanitize !34
  br i1 %537, label %538, label %539, !prof !35, !nosanitize !34

538:                                              ; preds = %531
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

539:                                              ; preds = %531
  %540 = zext nneg i8 %378 to i64
  %541 = lshr i64 %533, %540
  %542 = trunc i64 %541 to i32
  %543 = and i32 %542, 127
  %544 = add nuw nsw i32 %543, 11
  %545 = lshr i64 %541, 7
  br label %546

546:                                              ; preds = %539, %498, %455
  %547 = phi i32 [ %442, %455 ], [ %491, %498 ], [ %532, %539 ]
  %548 = phi i64 [ %463, %455 ], [ %504, %498 ], [ %545, %539 ]
  %549 = phi { i32, i1 } [ %452, %455 ], [ %495, %498 ], [ %536, %539 ]
  %550 = phi i32 [ %458, %455 ], [ %503, %498 ], [ %544, %539 ]
  %551 = phi i16 [ %462, %455 ], [ 0, %498 ], [ 0, %539 ]
  %552 = extractvalue { i32, i1 } %549, 0
  %553 = load i32, ptr %31, align 4, !tbaa !44
  %.fr1545 = freeze i32 %553
  %554 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.fr1545, i32 %550), !nosanitize !34
  %555 = extractvalue { i32, i1 } %554, 0, !nosanitize !34
  %556 = extractvalue { i32, i1 } %554, 1, !nosanitize !34
  br i1 %556, label %557, label %558, !prof !35, !nosanitize !34

557:                                              ; preds = %546
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

558:                                              ; preds = %546
  %559 = load i32, ptr %28, align 4, !tbaa !41
  %560 = load i32, ptr %29, align 8, !tbaa !42
  %561 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %559, i32 %560), !nosanitize !34
  %562 = extractvalue { i32, i1 } %561, 1, !nosanitize !34
  br i1 %562, label %563, label %564, !prof !35, !nosanitize !34

563:                                              ; preds = %558
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

564:                                              ; preds = %558
  %565 = extractvalue { i32, i1 } %561, 0, !nosanitize !34
  %566 = icmp ugt i32 %555, %565
  br i1 %566, label %579, label %567

567:                                              ; preds = %564
  %568 = icmp eq i32 %.fr1545, -1
  br i1 %568, label %._crit_edge1255, label %.lr.ph, !prof !52, !nosanitize !34

.lr.ph:                                           ; preds = %567
  %569 = zext i32 %.fr1545 to i64
  %570 = add nsw i32 %550, -1
  %571 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %570, 0
  %572 = and i64 %569, 1
  %lcmp.mod1540.not.not = icmp eq i64 %572, 0
  br i1 %lcmp.mod1540.not.not, label %.prol.preheader, label %.prol.loopexit, !prof !52

.prol.preheader:                                  ; preds = %.lr.ph
  %573 = or disjoint i64 %569, 1
  %574 = trunc nuw i64 %573 to i32
  store i32 %574, ptr %31, align 4, !tbaa !44
  %575 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %569
  store i16 %551, ptr %575, align 2, !tbaa !45
  %576 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %570, i32 1), !nosanitize !34
  %577 = extractvalue { i32, i1 } %576, 1, !nosanitize !34
  br i1 %577, label %581, label %.prol.loopexit, !prof !57, !llvm.loop !58, !nosanitize !34

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.unr1542 = phi { i32, i1 } [ %571, %.lr.ph ], [ %576, %.prol.preheader ]
  %.unr1543 = phi i64 [ %569, %.lr.ph ], [ %573, %.prol.preheader ]
  %578 = icmp eq i32 %.fr1545, -2
  br i1 %578, label %._crit_edge1255, label %.lr.ph.new, !prof !52

579:                                              ; preds = %564
  store ptr @.str.5, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

.loopexit1544:                                    ; preds = %582, %.lr.ph.new
  %580 = phi i32 [ %585, %582 ], [ %595, %.lr.ph.new ]
  store i32 %580, ptr %31, align 4, !tbaa !44
  br label %581

581:                                              ; preds = %.loopexit1544, %.prol.preheader
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

582:                                              ; preds = %.lr.ph.new
  %583 = extractvalue { i32, i1 } %597, 0
  %584 = add nuw nsw i64 %592, 2
  %585 = trunc nuw i64 %584 to i32
  %586 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %594
  store i16 %551, ptr %586, align 2, !tbaa !45
  %587 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %583, i32 1), !nosanitize !34
  %588 = extractvalue { i32, i1 } %587, 1, !nosanitize !34
  br i1 %588, label %.loopexit1544, label %589, !prof !57, !llvm.loop !58, !nosanitize !34

589:                                              ; preds = %582
  %590 = icmp eq i64 %584, 4294967295
  br i1 %590, label %._crit_edge1255.loopexit.unr-lcssa, label %.lr.ph.new, !prof !57, !llvm.loop !59, !nosanitize !34

._crit_edge1255.loopexit.unr-lcssa:               ; preds = %589
  store i32 %585, ptr %31, align 4, !tbaa !44
  br label %._crit_edge1255

._crit_edge1255:                                  ; preds = %._crit_edge1255.loopexit.unr-lcssa, %.prol.loopexit, %567
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

.lr.ph.new:                                       ; preds = %.prol.loopexit, %589
  %591 = phi { i32, i1 } [ %587, %589 ], [ %.unr1542, %.prol.loopexit ]
  %592 = phi i64 [ %584, %589 ], [ %.unr1543, %.prol.loopexit ]
  %593 = extractvalue { i32, i1 } %591, 0
  %594 = add nuw nsw i64 %592, 1
  %595 = trunc nuw i64 %594 to i32
  %596 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %592
  store i16 %551, ptr %596, align 2, !tbaa !45
  %597 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %593, i32 1), !nosanitize !34
  %598 = extractvalue { i32, i1 } %597, 1, !nosanitize !34
  br i1 %598, label %.loopexit1544, label %582, !prof !57, !llvm.loop !58, !nosanitize !34

599:                                              ; preds = %391
  %600 = extractvalue { i32, i1 } %393, 0, !nosanitize !34
  store i32 %600, ptr %31, align 4, !tbaa !44
  %601 = zext i32 %392 to i64
  %602 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %601
  store i16 %382, ptr %602, align 2, !tbaa !45
  %603 = load i32, ptr %28, align 4, !tbaa !41
  %604 = load i32, ptr %29, align 8, !tbaa !42
  %605 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %603, i32 %604), !nosanitize !34
  %606 = extractvalue { i32, i1 } %605, 1, !nosanitize !34
  br i1 %606, label %.loopexit109, label %314, !prof !57, !llvm.loop !53, !nosanitize !34

.loopexit110:                                     ; preds = %314, %311
  %607 = phi i32 [ %307, %311 ], [ %603, %314 ]
  %608 = phi i32 [ %288, %311 ], [ %388, %314 ]
  %609 = phi i64 [ %289, %311 ], [ %386, %314 ]
  %610 = phi i32 [ %273, %311 ], [ %375, %314 ]
  %611 = load i32, ptr %14, align 8, !tbaa !29
  %612 = icmp eq i32 %611, 16209
  br i1 %612, label %.loopexit103, label %613

613:                                              ; preds = %.loopexit110
  %614 = load i16, ptr %38, align 8, !tbaa !45
  %615 = icmp eq i16 %614, 0
  br i1 %615, label %616, label %617

616:                                              ; preds = %613
  store ptr @.str.6, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

617:                                              ; preds = %613
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 9, ptr %36, align 8, !tbaa !51
  %618 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %32, i32 noundef %607, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %621, label %620

620:                                              ; preds = %617
  store ptr @.str.7, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

621:                                              ; preds = %617
  %622 = load ptr, ptr %34, align 8, !tbaa !49
  store ptr %622, ptr %39, align 8, !tbaa !61
  store i32 6, ptr %40, align 4, !tbaa !62
  %623 = load i32, ptr %28, align 4, !tbaa !41
  %624 = zext i32 %623 to i64
  %625 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %624
  %626 = load i32, ptr %29, align 8, !tbaa !42
  %627 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %625, i32 noundef %626, ptr noundef nonnull %34, ptr noundef nonnull %40, ptr noundef nonnull %37) #6
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %630, label %629

629:                                              ; preds = %621
  store ptr @.str.8, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

630:                                              ; preds = %621
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %631

631:                                              ; preds = %630, %49
  %632 = phi i32 [ %610, %630 ], [ %52, %49 ]
  %633 = phi i64 [ %609, %630 ], [ %54, %49 ]
  %634 = phi i32 [ %608, %630 ], [ %55, %49 ]
  %635 = icmp ugt i32 %632, 5
  %636 = icmp ugt i32 %53, 257
  %637 = select i1 %635, i1 %636, i1 false
  br i1 %637, label %653, label %638

638:                                              ; preds = %631
  %639 = load i32, ptr %36, align 8, !tbaa !51
  %640 = shl nsw i32 -1, %639
  %641 = xor i32 %640, -1
  %642 = trunc i64 %633 to i32
  %643 = load ptr, ptr %35, align 8, !tbaa !50
  %644 = and i32 %641, %642
  %645 = zext nneg i32 %644 to i64
  %646 = getelementptr inbounds nuw [4 x i8], ptr %643, i64 %645
  %647 = getelementptr inbounds nuw i8, ptr %646, i64 1
  %648 = load i8, ptr %647, align 1, !tbaa !5
  %649 = zext i8 %648 to i32
  %650 = icmp ult i32 %634, %649
  br i1 %650, label %651, label %700

651:                                              ; preds = %638
  %652 = zext nneg i32 %634 to i64
  br label %662

653:                                              ; preds = %631
  store ptr %51, ptr %44, align 8, !tbaa !63
  store i32 %53, ptr %45, align 8, !tbaa !64
  %654 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %654, ptr %0, align 8, !tbaa !31
  store i32 %632, ptr %46, align 8, !tbaa !33
  store i64 %633, ptr %47, align 8, !tbaa !65
  store i32 %634, ptr %48, align 8, !tbaa !66
  %655 = load i32, ptr %26, align 4, !tbaa !24
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %655) #6
  %656 = load ptr, ptr %44, align 8, !tbaa !63
  %657 = load i32, ptr %45, align 8, !tbaa !64
  %658 = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %658, ptr %6, align 8, !tbaa !32
  %659 = load i32, ptr %46, align 8, !tbaa !33
  %660 = load i64, ptr %47, align 8, !tbaa !65
  %661 = load i32, ptr %48, align 8, !tbaa !66
  br label %.loopexit103

662:                                              ; preds = %681, %651
  %663 = phi i64 [ %652, %651 ], [ %684, %681 ]
  %664 = phi i64 [ %633, %651 ], [ %682, %681 ]
  %665 = phi i32 [ %632, %651 ], [ %683, %681 ]
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %667, label %671

667:                                              ; preds = %662
  %668 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %671

670:                                              ; preds = %667
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

671:                                              ; preds = %667, %662
  %672 = phi i32 [ %668, %667 ], [ %665, %662 ]
  %673 = load ptr, ptr %6, align 8, !tbaa !32
  %674 = getelementptr inbounds nuw i8, ptr %673, i64 1
  store ptr %674, ptr %6, align 8, !tbaa !32
  %675 = load i8, ptr %673, align 1, !tbaa !5
  %676 = zext i8 %675 to i64
  %677 = shl i64 %676, %663
  %678 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %664, i64 %677), !nosanitize !34
  %679 = extractvalue { i64, i1 } %678, 1, !nosanitize !34
  br i1 %679, label %680, label %681, !prof !35, !nosanitize !34

680:                                              ; preds = %671
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

681:                                              ; preds = %671
  %682 = extractvalue { i64, i1 } %678, 0, !nosanitize !34
  %683 = add i32 %672, -1
  %684 = add nuw nsw i64 %663, 8
  %685 = load i32, ptr %36, align 8, !tbaa !51
  %686 = shl nsw i32 -1, %685
  %687 = xor i32 %686, -1
  %688 = trunc i64 %682 to i32
  %689 = load ptr, ptr %35, align 8, !tbaa !50
  %690 = and i32 %687, %688
  %691 = zext nneg i32 %690 to i64
  %692 = getelementptr inbounds nuw [4 x i8], ptr %689, i64 %691
  %693 = getelementptr inbounds nuw i8, ptr %692, i64 1
  %694 = load i8, ptr %693, align 1, !tbaa !5
  %695 = zext i8 %694 to i64
  %696 = icmp samesign ult i64 %684, %695
  br i1 %696, label %662, label %697

697:                                              ; preds = %681
  %698 = zext i8 %694 to i32
  %699 = trunc nuw nsw i64 %684 to i32
  br label %700

700:                                              ; preds = %697, %638
  %701 = phi ptr [ %643, %638 ], [ %689, %697 ]
  %702 = phi i32 [ %632, %638 ], [ %683, %697 ]
  %703 = phi i64 [ %633, %638 ], [ %682, %697 ]
  %704 = phi i32 [ %634, %638 ], [ %699, %697 ]
  %705 = phi ptr [ %646, %638 ], [ %692, %697 ]
  %706 = phi i8 [ %648, %638 ], [ %694, %697 ]
  %707 = phi i32 [ %649, %638 ], [ %698, %697 ]
  %708 = getelementptr inbounds nuw i8, ptr %705, i64 2
  %709 = load i16, ptr %708, align 2, !tbaa !45
  %710 = load i8, ptr %705, align 2, !tbaa !5
  %711 = add i8 %710, -1
  %712 = icmp ult i8 %711, 15
  br i1 %712, label %713, label %776

713:                                              ; preds = %700
  %714 = zext nneg i8 %710 to i32
  %715 = add nuw nsw i32 %707, %714
  %716 = shl nsw i32 -1, %715
  %717 = xor i32 %716, -1
  %718 = zext i16 %709 to i32
  %719 = trunc i64 %703 to i32
  %720 = and i32 %717, %719
  %721 = lshr i32 %720, %707
  %722 = add nuw i32 %721, %718
  %723 = zext i32 %722 to i64
  %724 = getelementptr inbounds nuw [4 x i8], ptr %701, i64 %723
  %725 = getelementptr inbounds nuw i8, ptr %724, i64 1
  %726 = load i8, ptr %725, align 1, !tbaa !5
  %727 = zext i8 %726 to i32
  %728 = add nuw nsw i32 %707, %727
  %729 = icmp ugt i32 %728, %704
  br i1 %729, label %.preheader106.preheader, label %.loopexit107

.preheader106.preheader:                          ; preds = %713
  %730 = zext nneg i32 %704 to i64
  br label %.preheader106

.preheader106:                                    ; preds = %.preheader106.preheader, %748
  %indvars.iv = phi i64 [ %730, %.preheader106.preheader ], [ %indvars.iv.next, %748 ]
  %731 = phi i64 [ %703, %.preheader106.preheader ], [ %749, %748 ]
  %732 = phi i32 [ %702, %.preheader106.preheader ], [ %750, %748 ]
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %734, label %738

734:                                              ; preds = %.preheader106
  %735 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %737, label %738

737:                                              ; preds = %734
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

738:                                              ; preds = %734, %.preheader106
  %739 = phi i32 [ %735, %734 ], [ %732, %.preheader106 ]
  %740 = load ptr, ptr %6, align 8, !tbaa !32
  %741 = getelementptr inbounds nuw i8, ptr %740, i64 1
  store ptr %741, ptr %6, align 8, !tbaa !32
  %742 = load i8, ptr %740, align 1, !tbaa !5
  %743 = zext i8 %742 to i64
  %744 = shl i64 %743, %indvars.iv
  %745 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %731, i64 %744), !nosanitize !34
  %746 = extractvalue { i64, i1 } %745, 1, !nosanitize !34
  br i1 %746, label %747, label %748, !prof !35, !nosanitize !34

747:                                              ; preds = %738
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

748:                                              ; preds = %738
  %749 = extractvalue { i64, i1 } %745, 0, !nosanitize !34
  %750 = add i32 %739, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %751 = load ptr, ptr %35, align 8, !tbaa !50
  %752 = trunc i64 %749 to i32
  %753 = and i32 %752, %717
  %754 = lshr i32 %753, %707
  %755 = add nuw i32 %754, %718
  %756 = zext i32 %755 to i64
  %757 = getelementptr inbounds nuw [4 x i8], ptr %751, i64 %756
  %758 = getelementptr inbounds nuw i8, ptr %757, i64 1
  %759 = load i8, ptr %758, align 1, !tbaa !5
  %760 = zext i8 %759 to i32
  %761 = add nuw nsw i32 %707, %760
  %762 = zext nneg i32 %761 to i64
  %763 = icmp samesign ult i64 %indvars.iv.next, %762
  br i1 %763, label %.preheader106, label %.loopexit107.loopexit

.loopexit107.loopexit:                            ; preds = %748
  %764 = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit107

.loopexit107:                                     ; preds = %.loopexit107.loopexit, %713
  %765 = phi i32 [ %702, %713 ], [ %750, %.loopexit107.loopexit ]
  %766 = phi i64 [ %703, %713 ], [ %749, %.loopexit107.loopexit ]
  %767 = phi i32 [ %704, %713 ], [ %764, %.loopexit107.loopexit ]
  %768 = phi ptr [ %724, %713 ], [ %757, %.loopexit107.loopexit ]
  %769 = phi i8 [ %726, %713 ], [ %759, %.loopexit107.loopexit ]
  %770 = getelementptr inbounds nuw i8, ptr %768, i64 2
  %771 = load i16, ptr %770, align 2, !tbaa !45
  %772 = load i8, ptr %768, align 2, !tbaa !5
  %773 = sub nuw i32 %767, %707
  %774 = zext nneg i8 %706 to i64
  %775 = lshr i64 %766, %774
  br label %776

776:                                              ; preds = %.loopexit107, %700
  %777 = phi i32 [ %765, %.loopexit107 ], [ %702, %700 ]
  %778 = phi i64 [ %775, %.loopexit107 ], [ %703, %700 ]
  %779 = phi i32 [ %773, %.loopexit107 ], [ %704, %700 ]
  %780 = phi i16 [ %771, %.loopexit107 ], [ %709, %700 ]
  %781 = phi i8 [ %769, %.loopexit107 ], [ %706, %700 ]
  %782 = phi i8 [ %772, %.loopexit107 ], [ %710, %700 ]
  %783 = zext i8 %781 to i32
  %784 = zext nneg i8 %781 to i64
  %785 = lshr i64 %778, %784
  %786 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %779, i32 %783), !nosanitize !34
  %787 = extractvalue { i32, i1 } %786, 0, !nosanitize !34
  %788 = extractvalue { i32, i1 } %786, 1, !nosanitize !34
  br i1 %788, label %789, label %790, !prof !35, !nosanitize !34

789:                                              ; preds = %776
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

790:                                              ; preds = %776
  %791 = zext i16 %780 to i32
  store i32 %791, ptr %41, align 4, !tbaa !38
  %792 = zext i8 %782 to i32
  %793 = icmp eq i8 %782, 0
  br i1 %793, label %794, label %814

794:                                              ; preds = %790
  %795 = icmp eq i32 %53, 0
  br i1 %795, label %796, label %803

796:                                              ; preds = %794
  %797 = load ptr, ptr %24, align 8, !tbaa !25
  %798 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %798, ptr %16, align 8, !tbaa !27
  %799 = call i32 %3(ptr noundef %4, ptr noundef %797, i32 noundef %798) #6
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %801, label %.loopexit

801:                                              ; preds = %796
  %802 = load i32, ptr %41, align 4, !tbaa !38
  br label %803

803:                                              ; preds = %801, %794
  %804 = phi i32 [ %802, %801 ], [ %791, %794 ]
  %805 = phi ptr [ %797, %801 ], [ %51, %794 ]
  %806 = phi i32 [ %798, %801 ], [ %53, %794 ]
  %807 = trunc i32 %804 to i8
  store i8 %807, ptr %805, align 1, !tbaa !5
  %808 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %806, i32 1), !nosanitize !34
  %809 = extractvalue { i32, i1 } %808, 1, !nosanitize !34
  br i1 %809, label %810, label %811, !prof !35, !nosanitize !34

810:                                              ; preds = %803
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

811:                                              ; preds = %803
  %812 = extractvalue { i32, i1 } %808, 0, !nosanitize !34
  %813 = getelementptr inbounds nuw i8, ptr %805, i64 1
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

814:                                              ; preds = %790
  %815 = and i32 %792, 32
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %818, label %817

817:                                              ; preds = %814
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

818:                                              ; preds = %814
  %819 = and i32 %792, 64
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %822, label %821

821:                                              ; preds = %818
  store ptr @.str.9, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

822:                                              ; preds = %818
  %823 = and i32 %792, 15
  store i32 %823, ptr %42, align 4, !tbaa !67
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %879, label %825

825:                                              ; preds = %822
  %826 = icmp ult i32 %787, %823
  br i1 %826, label %827, label %857

827:                                              ; preds = %825
  %828 = zext nneg i32 %787 to i64
  br label %829

829:                                              ; preds = %848, %827
  %830 = phi i64 [ %828, %827 ], [ %851, %848 ]
  %831 = phi i64 [ %785, %827 ], [ %849, %848 ]
  %832 = phi i32 [ %777, %827 ], [ %850, %848 ]
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %834, label %838

834:                                              ; preds = %829
  %835 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %837, label %838

837:                                              ; preds = %834
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

838:                                              ; preds = %834, %829
  %839 = phi i32 [ %835, %834 ], [ %832, %829 ]
  %840 = load ptr, ptr %6, align 8, !tbaa !32
  %841 = getelementptr inbounds nuw i8, ptr %840, i64 1
  store ptr %841, ptr %6, align 8, !tbaa !32
  %842 = load i8, ptr %840, align 1, !tbaa !5
  %843 = zext i8 %842 to i64
  %844 = shl i64 %843, %830
  %845 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %831, i64 %844), !nosanitize !34
  %846 = extractvalue { i64, i1 } %845, 1, !nosanitize !34
  br i1 %846, label %847, label %848, !prof !35, !nosanitize !34

847:                                              ; preds = %838
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

848:                                              ; preds = %838
  %849 = extractvalue { i64, i1 } %845, 0, !nosanitize !34
  %850 = add i32 %839, -1
  %851 = add nuw nsw i64 %830, 8
  %852 = trunc nuw i64 %851 to i32
  %853 = load i32, ptr %42, align 4, !tbaa !67
  %854 = icmp ugt i32 %853, %852
  br i1 %854, label %829, label %855, !llvm.loop !68

855:                                              ; preds = %848
  %856 = load i32, ptr %41, align 4, !tbaa !38
  br label %857

857:                                              ; preds = %855, %825
  %858 = phi i32 [ %791, %825 ], [ %856, %855 ]
  %859 = phi i32 [ %777, %825 ], [ %850, %855 ]
  %860 = phi i64 [ %785, %825 ], [ %849, %855 ]
  %861 = phi i32 [ %787, %825 ], [ %852, %855 ]
  %862 = phi i32 [ %823, %825 ], [ %853, %855 ]
  %863 = shl nsw i32 -1, %862
  %864 = xor i32 %863, -1
  %865 = trunc i64 %860 to i32
  %866 = and i32 %864, %865
  %867 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %858, i32 %866), !nosanitize !34
  %868 = extractvalue { i32, i1 } %867, 1, !nosanitize !34
  br i1 %868, label %869, label %870, !prof !35, !nosanitize !34

869:                                              ; preds = %857
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

870:                                              ; preds = %857
  %871 = extractvalue { i32, i1 } %867, 0, !nosanitize !34
  store i32 %871, ptr %41, align 4, !tbaa !38
  %872 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %861, i32 %862), !nosanitize !34
  %873 = extractvalue { i32, i1 } %872, 1, !nosanitize !34
  br i1 %873, label %874, label %875, !prof !35, !nosanitize !34

874:                                              ; preds = %870
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

875:                                              ; preds = %870
  %876 = extractvalue { i32, i1 } %872, 0, !nosanitize !34
  %877 = zext nneg i32 %862 to i64
  %878 = lshr i64 %860, %877
  br label %879

879:                                              ; preds = %875, %822
  %880 = phi i32 [ %859, %875 ], [ %777, %822 ]
  %881 = phi i64 [ %878, %875 ], [ %785, %822 ]
  %882 = phi i32 [ %876, %875 ], [ %787, %822 ]
  %883 = load i32, ptr %40, align 4, !tbaa !62
  %884 = shl nsw i32 -1, %883
  %885 = xor i32 %884, -1
  %886 = trunc i64 %881 to i32
  %887 = load ptr, ptr %39, align 8, !tbaa !61
  %888 = and i32 %885, %886
  %889 = zext nneg i32 %888 to i64
  %890 = getelementptr inbounds nuw [4 x i8], ptr %887, i64 %889
  %891 = getelementptr inbounds nuw i8, ptr %890, i64 1
  %892 = load i8, ptr %891, align 1, !tbaa !5
  %893 = zext i8 %892 to i32
  %894 = icmp ult i32 %882, %893
  br i1 %894, label %895, label %935

895:                                              ; preds = %879
  %896 = zext nneg i32 %882 to i64
  br label %897

897:                                              ; preds = %916, %895
  %898 = phi i64 [ %896, %895 ], [ %919, %916 ]
  %899 = phi i64 [ %881, %895 ], [ %917, %916 ]
  %900 = phi i32 [ %880, %895 ], [ %918, %916 ]
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %902, label %906

902:                                              ; preds = %897
  %903 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %905, label %906

905:                                              ; preds = %902
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

906:                                              ; preds = %902, %897
  %907 = phi i32 [ %903, %902 ], [ %900, %897 ]
  %908 = load ptr, ptr %6, align 8, !tbaa !32
  %909 = getelementptr inbounds nuw i8, ptr %908, i64 1
  store ptr %909, ptr %6, align 8, !tbaa !32
  %910 = load i8, ptr %908, align 1, !tbaa !5
  %911 = zext i8 %910 to i64
  %912 = shl i64 %911, %898
  %913 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %899, i64 %912), !nosanitize !34
  %914 = extractvalue { i64, i1 } %913, 1, !nosanitize !34
  br i1 %914, label %915, label %916, !prof !35, !nosanitize !34

915:                                              ; preds = %906
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

916:                                              ; preds = %906
  %917 = extractvalue { i64, i1 } %913, 0, !nosanitize !34
  %918 = add i32 %907, -1
  %919 = add nuw nsw i64 %898, 8
  %920 = load i32, ptr %40, align 4, !tbaa !62
  %921 = shl nsw i32 -1, %920
  %922 = xor i32 %921, -1
  %923 = trunc i64 %917 to i32
  %924 = load ptr, ptr %39, align 8, !tbaa !61
  %925 = and i32 %922, %923
  %926 = zext nneg i32 %925 to i64
  %927 = getelementptr inbounds nuw [4 x i8], ptr %924, i64 %926
  %928 = getelementptr inbounds nuw i8, ptr %927, i64 1
  %929 = load i8, ptr %928, align 1, !tbaa !5
  %930 = zext i8 %929 to i64
  %931 = icmp samesign ult i64 %919, %930
  br i1 %931, label %897, label %932

932:                                              ; preds = %916
  %933 = zext i8 %929 to i32
  %934 = trunc nuw nsw i64 %919 to i32
  br label %935

935:                                              ; preds = %932, %879
  %936 = phi ptr [ %887, %879 ], [ %924, %932 ]
  %937 = phi i32 [ %880, %879 ], [ %918, %932 ]
  %938 = phi i64 [ %881, %879 ], [ %917, %932 ]
  %939 = phi i32 [ %882, %879 ], [ %934, %932 ]
  %940 = phi ptr [ %890, %879 ], [ %927, %932 ]
  %941 = phi i8 [ %892, %879 ], [ %929, %932 ]
  %942 = phi i32 [ %893, %879 ], [ %933, %932 ]
  %943 = getelementptr inbounds nuw i8, ptr %940, i64 2
  %944 = load i16, ptr %943, align 2, !tbaa !45
  %945 = load i8, ptr %940, align 2, !tbaa !5
  %946 = icmp ult i8 %945, 16
  br i1 %946, label %947, label %1010

947:                                              ; preds = %935
  %948 = zext nneg i8 %945 to i32
  %949 = add nuw nsw i32 %942, %948
  %950 = shl nsw i32 -1, %949
  %951 = xor i32 %950, -1
  %952 = zext i16 %944 to i32
  %953 = trunc i64 %938 to i32
  %954 = and i32 %951, %953
  %955 = lshr i32 %954, %942
  %956 = add nuw i32 %955, %952
  %957 = zext i32 %956 to i64
  %958 = getelementptr inbounds nuw [4 x i8], ptr %936, i64 %957
  %959 = getelementptr inbounds nuw i8, ptr %958, i64 1
  %960 = load i8, ptr %959, align 1, !tbaa !5
  %961 = zext i8 %960 to i32
  %962 = add nuw nsw i32 %942, %961
  %963 = icmp ugt i32 %962, %939
  br i1 %963, label %.preheader104.preheader, label %.loopexit105

.preheader104.preheader:                          ; preds = %947
  %964 = zext nneg i32 %939 to i64
  br label %.preheader104

.preheader104:                                    ; preds = %.preheader104.preheader, %982
  %indvars.iv622 = phi i64 [ %964, %.preheader104.preheader ], [ %indvars.iv.next623, %982 ]
  %965 = phi i64 [ %938, %.preheader104.preheader ], [ %983, %982 ]
  %966 = phi i32 [ %937, %.preheader104.preheader ], [ %984, %982 ]
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %968, label %972

968:                                              ; preds = %.preheader104
  %969 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %971, label %972

971:                                              ; preds = %968
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

972:                                              ; preds = %968, %.preheader104
  %973 = phi i32 [ %969, %968 ], [ %966, %.preheader104 ]
  %974 = load ptr, ptr %6, align 8, !tbaa !32
  %975 = getelementptr inbounds nuw i8, ptr %974, i64 1
  store ptr %975, ptr %6, align 8, !tbaa !32
  %976 = load i8, ptr %974, align 1, !tbaa !5
  %977 = zext i8 %976 to i64
  %978 = shl i64 %977, %indvars.iv622
  %979 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %965, i64 %978), !nosanitize !34
  %980 = extractvalue { i64, i1 } %979, 1, !nosanitize !34
  br i1 %980, label %981, label %982, !prof !35, !nosanitize !34

981:                                              ; preds = %972
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

982:                                              ; preds = %972
  %983 = extractvalue { i64, i1 } %979, 0, !nosanitize !34
  %984 = add i32 %973, -1
  %indvars.iv.next623 = add nuw nsw i64 %indvars.iv622, 8
  %985 = load ptr, ptr %39, align 8, !tbaa !61
  %986 = trunc i64 %983 to i32
  %987 = and i32 %986, %951
  %988 = lshr i32 %987, %942
  %989 = add nuw i32 %988, %952
  %990 = zext i32 %989 to i64
  %991 = getelementptr inbounds nuw [4 x i8], ptr %985, i64 %990
  %992 = getelementptr inbounds nuw i8, ptr %991, i64 1
  %993 = load i8, ptr %992, align 1, !tbaa !5
  %994 = zext i8 %993 to i32
  %995 = add nuw nsw i32 %942, %994
  %996 = zext nneg i32 %995 to i64
  %997 = icmp samesign ult i64 %indvars.iv.next623, %996
  br i1 %997, label %.preheader104, label %.loopexit105.loopexit

.loopexit105.loopexit:                            ; preds = %982
  %998 = trunc nuw nsw i64 %indvars.iv.next623 to i32
  br label %.loopexit105

.loopexit105:                                     ; preds = %.loopexit105.loopexit, %947
  %999 = phi i32 [ %937, %947 ], [ %984, %.loopexit105.loopexit ]
  %1000 = phi i64 [ %938, %947 ], [ %983, %.loopexit105.loopexit ]
  %1001 = phi i32 [ %939, %947 ], [ %998, %.loopexit105.loopexit ]
  %1002 = phi ptr [ %958, %947 ], [ %991, %.loopexit105.loopexit ]
  %1003 = phi i8 [ %960, %947 ], [ %993, %.loopexit105.loopexit ]
  %1004 = getelementptr inbounds nuw i8, ptr %1002, i64 2
  %1005 = load i16, ptr %1004, align 2, !tbaa !45
  %1006 = load i8, ptr %1002, align 2, !tbaa !5
  %1007 = sub nuw i32 %1001, %942
  %1008 = zext nneg i8 %941 to i64
  %1009 = lshr i64 %1000, %1008
  br label %1010

1010:                                             ; preds = %.loopexit105, %935
  %1011 = phi i32 [ %999, %.loopexit105 ], [ %937, %935 ]
  %1012 = phi i64 [ %1009, %.loopexit105 ], [ %938, %935 ]
  %1013 = phi i32 [ %1007, %.loopexit105 ], [ %939, %935 ]
  %1014 = phi i16 [ %1005, %.loopexit105 ], [ %944, %935 ]
  %1015 = phi i8 [ %1003, %.loopexit105 ], [ %941, %935 ]
  %1016 = phi i8 [ %1006, %.loopexit105 ], [ %945, %935 ]
  %1017 = zext i8 %1015 to i32
  %1018 = zext nneg i8 %1015 to i64
  %1019 = lshr i64 %1012, %1018
  %1020 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1013, i32 %1017), !nosanitize !34
  %1021 = extractvalue { i32, i1 } %1020, 0, !nosanitize !34
  %1022 = extractvalue { i32, i1 } %1020, 1, !nosanitize !34
  br i1 %1022, label %1023, label %1024, !prof !35, !nosanitize !34

1023:                                             ; preds = %1010
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1024:                                             ; preds = %1010
  %1025 = zext i8 %1016 to i32
  %1026 = and i32 %1025, 64
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1029, label %1028

1028:                                             ; preds = %1024
  store ptr @.str.10, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

1029:                                             ; preds = %1024
  %1030 = zext i16 %1014 to i32
  store i32 %1030, ptr %43, align 8, !tbaa !69
  %1031 = and i32 %1025, 15
  store i32 %1031, ptr %42, align 4, !tbaa !67
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1087, label %1033

1033:                                             ; preds = %1029
  %1034 = icmp ult i32 %1021, %1031
  br i1 %1034, label %1035, label %1065

1035:                                             ; preds = %1033
  %1036 = zext nneg i32 %1021 to i64
  br label %1037

1037:                                             ; preds = %1056, %1035
  %1038 = phi i64 [ %1036, %1035 ], [ %1059, %1056 ]
  %1039 = phi i64 [ %1019, %1035 ], [ %1057, %1056 ]
  %1040 = phi i32 [ %1011, %1035 ], [ %1058, %1056 ]
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1042, label %1046

1042:                                             ; preds = %1037
  %1043 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1045, label %1046

1045:                                             ; preds = %1042
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

1046:                                             ; preds = %1042, %1037
  %1047 = phi i32 [ %1043, %1042 ], [ %1040, %1037 ]
  %1048 = load ptr, ptr %6, align 8, !tbaa !32
  %1049 = getelementptr inbounds nuw i8, ptr %1048, i64 1
  store ptr %1049, ptr %6, align 8, !tbaa !32
  %1050 = load i8, ptr %1048, align 1, !tbaa !5
  %1051 = zext i8 %1050 to i64
  %1052 = shl i64 %1051, %1038
  %1053 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1039, i64 %1052), !nosanitize !34
  %1054 = extractvalue { i64, i1 } %1053, 1, !nosanitize !34
  br i1 %1054, label %1055, label %1056, !prof !35, !nosanitize !34

1055:                                             ; preds = %1046
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1056:                                             ; preds = %1046
  %1057 = extractvalue { i64, i1 } %1053, 0, !nosanitize !34
  %1058 = add i32 %1047, -1
  %1059 = add nuw nsw i64 %1038, 8
  %1060 = trunc nuw i64 %1059 to i32
  %1061 = load i32, ptr %42, align 4, !tbaa !67
  %1062 = icmp ugt i32 %1061, %1060
  br i1 %1062, label %1037, label %1063, !llvm.loop !70

1063:                                             ; preds = %1056
  %1064 = load i32, ptr %43, align 8, !tbaa !69
  br label %1065

1065:                                             ; preds = %1063, %1033
  %1066 = phi i32 [ %1030, %1033 ], [ %1064, %1063 ]
  %1067 = phi i32 [ %1011, %1033 ], [ %1058, %1063 ]
  %1068 = phi i64 [ %1019, %1033 ], [ %1057, %1063 ]
  %1069 = phi i32 [ %1021, %1033 ], [ %1060, %1063 ]
  %1070 = phi i32 [ %1031, %1033 ], [ %1061, %1063 ]
  %1071 = shl nsw i32 -1, %1070
  %1072 = xor i32 %1071, -1
  %1073 = trunc i64 %1068 to i32
  %1074 = and i32 %1072, %1073
  %1075 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1066, i32 %1074), !nosanitize !34
  %1076 = extractvalue { i32, i1 } %1075, 1, !nosanitize !34
  br i1 %1076, label %1077, label %1078, !prof !35, !nosanitize !34

1077:                                             ; preds = %1065
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1078:                                             ; preds = %1065
  %1079 = extractvalue { i32, i1 } %1075, 0, !nosanitize !34
  store i32 %1079, ptr %43, align 8, !tbaa !69
  %1080 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1069, i32 %1070), !nosanitize !34
  %1081 = extractvalue { i32, i1 } %1080, 1, !nosanitize !34
  br i1 %1081, label %1082, label %1083, !prof !35, !nosanitize !34

1082:                                             ; preds = %1078
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1083:                                             ; preds = %1078
  %1084 = extractvalue { i32, i1 } %1080, 0, !nosanitize !34
  %1085 = zext nneg i32 %1070 to i64
  %1086 = lshr i64 %1068, %1085
  br label %1087

1087:                                             ; preds = %1083, %1029
  %1088 = phi i32 [ %1079, %1083 ], [ %1030, %1029 ]
  %1089 = phi i32 [ %1067, %1083 ], [ %1011, %1029 ]
  %1090 = phi i64 [ %1086, %1083 ], [ %1019, %1029 ]
  %1091 = phi i32 [ %1084, %1083 ], [ %1021, %1029 ]
  %1092 = load i32, ptr %26, align 4, !tbaa !24
  %1093 = load i32, ptr %16, align 8, !tbaa !27
  %1094 = icmp ult i32 %1093, %1092
  %1095 = select i1 %1094, i32 %53, i32 0
  %1096 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1092, i32 %1095), !nosanitize !34
  %1097 = extractvalue { i32, i1 } %1096, 1, !nosanitize !34
  br i1 %1097, label %1098, label %1099, !prof !35, !nosanitize !34

1098:                                             ; preds = %1087
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1099:                                             ; preds = %1087
  %1100 = extractvalue { i32, i1 } %1096, 0, !nosanitize !34
  %1101 = icmp ugt i32 %1088, %1100
  br i1 %1101, label %1102, label %.preheader101

1102:                                             ; preds = %1099
  store ptr @.str.11, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

.preheader101:                                    ; preds = %1099, %.loopexit1273
  %1103 = phi ptr [ %.lcssa1091, %.loopexit1273 ], [ %51, %1099 ]
  %1104 = phi i32 [ %1130, %.loopexit1273 ], [ %53, %1099 ]
  %1105 = icmp eq i32 %1104, 0
  %1106 = load i32, ptr %26, align 4, !tbaa !24
  br i1 %1105, label %1107, label %1113

1107:                                             ; preds = %.preheader101
  %1108 = load ptr, ptr %24, align 8, !tbaa !25
  store i32 %1106, ptr %16, align 8, !tbaa !27
  %1109 = call i32 %3(ptr noundef %4, ptr noundef %1108, i32 noundef %1106) #6
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1111, label %.loopexit

1111:                                             ; preds = %1107
  %1112 = load i32, ptr %26, align 4, !tbaa !24
  br label %1113

1113:                                             ; preds = %1111, %.preheader101
  %1114 = phi i32 [ %1112, %1111 ], [ %1106, %.preheader101 ]
  %1115 = phi ptr [ %1108, %1111 ], [ %1103, %.preheader101 ]
  %1116 = phi i32 [ %1106, %1111 ], [ %1104, %.preheader101 ]
  %1117 = load i32, ptr %43, align 8, !tbaa !69
  %1118 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1114, i32 %1117), !nosanitize !34
  %1119 = extractvalue { i32, i1 } %1118, 1, !nosanitize !34
  br i1 %1119, label %1120, label %1121, !prof !35, !nosanitize !34

1120:                                             ; preds = %1113
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1121:                                             ; preds = %1113
  %1122 = extractvalue { i32, i1 } %1118, 0, !nosanitize !34
  %1123 = icmp ult i32 %1122, %1116
  %1124 = select i1 %1123, i32 %1122, i32 0
  %1125 = sub i32 %1116, %1124
  %1126 = load i32, ptr %41, align 4, !tbaa !38
  %1127 = call i32 @llvm.umin.i32(i32 %1125, i32 %1126)
  %1128 = sub i32 %1126, %1127
  store i32 %1128, ptr %41, align 4, !tbaa !38
  %1129 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1116, i32 %1127), !nosanitize !34
  %1130 = extractvalue { i32, i1 } %1129, 0, !nosanitize !34
  %1131 = extractvalue { i32, i1 } %1129, 1, !nosanitize !34
  br i1 %1131, label %1160, label %1132, !prof !35, !nosanitize !34

1132:                                             ; preds = %1121
  %1133 = zext i32 %1122 to i64
  %1134 = zext i32 %1117 to i64
  %1135 = sub nsw i64 0, %1134
  %1136 = select i1 %1123, i64 %1133, i64 %1135
  %1137 = getelementptr inbounds i8, ptr %1115, i64 %1136
  %.not.not = icmp eq i32 %1127, 0
  br i1 %.not.not, label %.split.us, label %iter.check, !prof !35, !nosanitize !34

iter.check:                                       ; preds = %1132
  %1138 = call i32 @llvm.umin.i32(i32 %1126, i32 %1125)
  %umin = zext i32 %1138 to i64
  %min.iters.check = icmp ult i32 %1138, 4
  %1139 = add nsw i64 %1136, 31
  %diff.check = icmp ult i64 %1139, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1256 = icmp ult i32 %1138, 32
  br i1 %min.iters.check1256, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %umin, 28
  %n.vec = and i64 %umin, 4294967264
  %1140 = getelementptr i8, ptr %1115, i64 %n.vec
  %.cast = trunc nuw i64 %n.vec to i32
  %1141 = sub i32 %1127, %.cast
  %1142 = getelementptr i8, ptr %1137, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, ptr %1115, i64 %index
  %next.gep1257 = getelementptr i8, ptr %1137, i64 %index
  %1143 = getelementptr i8, ptr %next.gep1257, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep1257, align 1, !tbaa !5
  %wide.load1258 = load <16 x i8>, ptr %1143, align 1, !tbaa !5
  %1144 = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !5
  store <16 x i8> %wide.load1258, ptr %1144, align 1, !tbaa !5
  %index.next = add nuw i64 %index, 32
  %1145 = icmp eq i64 %index.next, %n.vec
  br i1 %1145, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %umin
  br i1 %cmp.n, label %.loopexit1273, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.split.preheader, label %vec.epilog.ph, !prof !74

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1262 = and i64 %umin, 4294967292
  %1146 = getelementptr i8, ptr %1115, i64 %n.vec1262
  %.cast1263 = trunc nuw i64 %n.vec1262 to i32
  %1147 = sub i32 %1127, %.cast1263
  %1148 = getelementptr i8, ptr %1137, i64 %n.vec1262
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1264 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1268, %vec.epilog.vector.body ]
  %next.gep1265 = getelementptr i8, ptr %1115, i64 %index1264
  %next.gep1266 = getelementptr i8, ptr %1137, i64 %index1264
  %wide.load1267 = load <4 x i8>, ptr %next.gep1266, align 1, !tbaa !5
  store <4 x i8> %wide.load1267, ptr %next.gep1265, align 1, !tbaa !5
  %index.next1268 = add nuw i64 %index1264, 4
  %1149 = icmp eq i64 %index.next1268, %n.vec1262
  br i1 %1149, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !75

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1269 = icmp eq i64 %n.vec1262, %umin
  br i1 %cmp.n1269, label %.loopexit1273, label %.split.preheader

.split.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %1115, %iter.check ], [ %1140, %vec.epilog.iter.check ], [ %1146, %vec.epilog.middle.block ]
  %.ph1274 = phi i32 [ %1127, %iter.check ], [ %1141, %vec.epilog.iter.check ], [ %1147, %vec.epilog.middle.block ]
  %.ph1275 = phi ptr [ %1137, %iter.check ], [ %1142, %vec.epilog.iter.check ], [ %1148, %vec.epilog.middle.block ]
  %1150 = add i32 %.ph1274, -1
  %xtraiter = and i32 %.ph1274, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.prol.loopexit, label %.split.prol

.split.prol:                                      ; preds = %.split.preheader, %.split.prol
  %1151 = phi ptr [ %1155, %.split.prol ], [ %.ph, %.split.preheader ]
  %1152 = phi i32 [ %1156, %.split.prol ], [ %.ph1274, %.split.preheader ]
  %1153 = phi ptr [ %1157, %.split.prol ], [ %.ph1275, %.split.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.split.prol ], [ 0, %.split.preheader ]
  %1154 = load i8, ptr %1153, align 1, !tbaa !5
  store i8 %1154, ptr %1151, align 1, !tbaa !5
  %1155 = getelementptr inbounds nuw i8, ptr %1151, i64 1
  %1156 = add i32 %1152, -1
  %1157 = getelementptr inbounds nuw i8, ptr %1153, i64 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.split.prol.loopexit, label %.split.prol, !llvm.loop !76

.split.prol.loopexit:                             ; preds = %.split.prol, %.split.preheader
  %.lcssa1374.unr = phi ptr [ poison, %.split.preheader ], [ %1155, %.split.prol ]
  %.unr = phi ptr [ %.ph, %.split.preheader ], [ %1155, %.split.prol ]
  %.unr1537 = phi i32 [ %.ph1274, %.split.preheader ], [ %1156, %.split.prol ]
  %.unr1538 = phi ptr [ %.ph1275, %.split.preheader ], [ %1157, %.split.prol ]
  %1158 = icmp ult i32 %1150, 7
  br i1 %1158, label %.loopexit1273, label %.split

.split.us:                                        ; preds = %1132
  %1159 = load i8, ptr %1137, align 1, !tbaa !5
  store i8 %1159, ptr %1115, align 1, !tbaa !5
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1160:                                             ; preds = %1121
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

.split:                                           ; preds = %.split.prol.loopexit, %.split
  %1161 = phi ptr [ %1186, %.split ], [ %.unr, %.split.prol.loopexit ]
  %1162 = phi i32 [ %1187, %.split ], [ %.unr1537, %.split.prol.loopexit ]
  %1163 = phi ptr [ %1188, %.split ], [ %.unr1538, %.split.prol.loopexit ]
  %1164 = load i8, ptr %1163, align 1, !tbaa !5
  store i8 %1164, ptr %1161, align 1, !tbaa !5
  %1165 = getelementptr inbounds nuw i8, ptr %1161, i64 1
  %1166 = getelementptr inbounds nuw i8, ptr %1163, i64 1
  %1167 = load i8, ptr %1166, align 1, !tbaa !5
  store i8 %1167, ptr %1165, align 1, !tbaa !5
  %1168 = getelementptr inbounds nuw i8, ptr %1161, i64 2
  %1169 = getelementptr inbounds nuw i8, ptr %1163, i64 2
  %1170 = load i8, ptr %1169, align 1, !tbaa !5
  store i8 %1170, ptr %1168, align 1, !tbaa !5
  %1171 = getelementptr inbounds nuw i8, ptr %1161, i64 3
  %1172 = getelementptr inbounds nuw i8, ptr %1163, i64 3
  %1173 = load i8, ptr %1172, align 1, !tbaa !5
  store i8 %1173, ptr %1171, align 1, !tbaa !5
  %1174 = getelementptr inbounds nuw i8, ptr %1161, i64 4
  %1175 = getelementptr inbounds nuw i8, ptr %1163, i64 4
  %1176 = load i8, ptr %1175, align 1, !tbaa !5
  store i8 %1176, ptr %1174, align 1, !tbaa !5
  %1177 = getelementptr inbounds nuw i8, ptr %1161, i64 5
  %1178 = getelementptr inbounds nuw i8, ptr %1163, i64 5
  %1179 = load i8, ptr %1178, align 1, !tbaa !5
  store i8 %1179, ptr %1177, align 1, !tbaa !5
  %1180 = getelementptr inbounds nuw i8, ptr %1161, i64 6
  %1181 = getelementptr inbounds nuw i8, ptr %1163, i64 6
  %1182 = load i8, ptr %1181, align 1, !tbaa !5
  store i8 %1182, ptr %1180, align 1, !tbaa !5
  %1183 = getelementptr inbounds nuw i8, ptr %1161, i64 7
  %1184 = getelementptr inbounds nuw i8, ptr %1163, i64 7
  %1185 = load i8, ptr %1184, align 1, !tbaa !5
  store i8 %1185, ptr %1183, align 1, !tbaa !5
  %1186 = getelementptr inbounds nuw i8, ptr %1161, i64 8
  %1187 = add i32 %1162, -8
  %1188 = getelementptr inbounds nuw i8, ptr %1163, i64 8
  %1189 = icmp eq i32 %1187, 0
  br i1 %1189, label %.loopexit1273, label %.split, !llvm.loop !78

.loopexit1273:                                    ; preds = %.split.prol.loopexit, %.split, %vec.epilog.middle.block, %middle.block
  %.lcssa1091 = phi ptr [ %1146, %vec.epilog.middle.block ], [ %1140, %middle.block ], [ %.lcssa1374.unr, %.split.prol.loopexit ], [ %1186, %.split ]
  %1190 = load i32, ptr %41, align 4, !tbaa !38
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %.loopexit103, label %.preheader101, !llvm.loop !79

.loopexit103:                                     ; preds = %.loopexit1273, %1102, %1028, %821, %817, %811, %653, %629, %620, %616, %.loopexit110, %579, %450, %305, %241, %.loopexit100, %149, %102, %68
  %1192 = phi ptr [ %51, %68 ], [ %51, %102 ], [ %51, %149 ], [ %194, %.loopexit100 ], [ %51, %241 ], [ %51, %305 ], [ %51, %.loopexit110 ], [ %51, %616 ], [ %51, %620 ], [ %51, %629 ], [ %656, %653 ], [ %813, %811 ], [ %51, %817 ], [ %51, %821 ], [ %51, %1028 ], [ %51, %1102 ], [ %51, %579 ], [ %51, %450 ], [ %.lcssa1091, %.loopexit1273 ]
  %1193 = phi i32 [ %52, %68 ], [ %92, %102 ], [ %142, %149 ], [ %195, %.loopexit100 ], [ %224, %241 ], [ %273, %305 ], [ %610, %.loopexit110 ], [ %610, %616 ], [ %610, %620 ], [ %610, %629 ], [ %659, %653 ], [ %777, %811 ], [ %777, %817 ], [ %777, %821 ], [ %1011, %1028 ], [ %1089, %1102 ], [ %547, %579 ], [ %442, %450 ], [ %1089, %.loopexit1273 ]
  %1194 = phi i32 [ %53, %68 ], [ %53, %102 ], [ %53, %149 ], [ %196, %.loopexit100 ], [ %53, %241 ], [ %53, %305 ], [ %53, %.loopexit110 ], [ %53, %616 ], [ %53, %620 ], [ %53, %629 ], [ %657, %653 ], [ %812, %811 ], [ %53, %817 ], [ %53, %821 ], [ %53, %1028 ], [ %53, %1102 ], [ %53, %579 ], [ %53, %450 ], [ %1130, %.loopexit1273 ]
  %1195 = phi i64 [ %72, %68 ], [ %105, %102 ], [ %143, %149 ], [ 0, %.loopexit100 ], [ %236, %241 ], [ %289, %305 ], [ %609, %.loopexit110 ], [ %609, %616 ], [ %609, %620 ], [ %609, %629 ], [ %660, %653 ], [ %785, %811 ], [ %785, %817 ], [ %785, %821 ], [ %1019, %1028 ], [ %1090, %1102 ], [ %548, %579 ], [ %446, %450 ], [ %1090, %.loopexit1273 ]
  %1196 = phi i32 [ %70, %68 ], [ %104, %102 ], [ %144, %149 ], [ 0, %.loopexit100 ], [ %237, %241 ], [ %288, %305 ], [ %608, %.loopexit110 ], [ %608, %616 ], [ %608, %620 ], [ %608, %629 ], [ %661, %653 ], [ %787, %811 ], [ %787, %817 ], [ %787, %821 ], [ %1021, %1028 ], [ %1091, %1102 ], [ %552, %579 ], [ %447, %450 ], [ %1091, %.loopexit1273 ]
  %1197 = load i32, ptr %14, align 8, !tbaa !29
  br label %49

.loopexit.loopexit996:                            ; preds = %49
  br label %.loopexit

.loopexit.loopexit1277:                           ; preds = %49
  br label %.loopexit

.loopexit:                                        ; preds = %796, %1107, %166, %49, %.loopexit.loopexit1277, %.loopexit.loopexit996, %1045, %971, %905, %837, %737, %670, %513, %472, %423, %342, %259, %205, %162, %123, %76
  %1198 = phi i32 [ 0, %76 ], [ 0, %123 ], [ 0, %162 ], [ 0, %205 ], [ 0, %259 ], [ 0, %423 ], [ 0, %837 ], [ 0, %1045 ], [ 0, %971 ], [ 0, %905 ], [ 0, %737 ], [ 0, %670 ], [ 0, %472 ], [ 0, %513 ], [ 0, %342 ], [ %1089, %1107 ], [ %164, %166 ], [ %52, %.loopexit.loopexit996 ], [ %52, %49 ], [ %777, %796 ], [ %52, %.loopexit.loopexit1277 ]
  %1199 = phi i32 [ %53, %76 ], [ %53, %123 ], [ %154, %162 ], [ %53, %205 ], [ %53, %259 ], [ %53, %423 ], [ %53, %837 ], [ %53, %1045 ], [ %53, %971 ], [ %53, %905 ], [ %53, %737 ], [ %53, %670 ], [ %53, %472 ], [ %53, %513 ], [ %53, %342 ], [ %1106, %1107 ], [ %168, %166 ], [ %53, %.loopexit.loopexit996 ], [ %53, %49 ], [ %798, %796 ], [ %53, %.loopexit.loopexit1277 ]
  %1200 = phi i1 [ false, %76 ], [ false, %123 ], [ false, %162 ], [ false, %205 ], [ false, %259 ], [ false, %423 ], [ false, %837 ], [ false, %1045 ], [ false, %971 ], [ false, %905 ], [ false, %737 ], [ false, %670 ], [ false, %472 ], [ false, %513 ], [ false, %342 ], [ false, %1107 ], [ false, %166 ], [ false, %.loopexit.loopexit996 ], [ false, %49 ], [ false, %796 ], [ true, %.loopexit.loopexit1277 ]
  %1201 = phi i32 [ -5, %76 ], [ -5, %123 ], [ -5, %162 ], [ -5, %205 ], [ -5, %259 ], [ -5, %423 ], [ -5, %837 ], [ -5, %1045 ], [ -5, %971 ], [ -5, %905 ], [ -5, %737 ], [ -5, %670 ], [ -5, %472 ], [ -5, %513 ], [ -5, %342 ], [ -5, %1107 ], [ -5, %166 ], [ -2, %.loopexit.loopexit996 ], [ -3, %49 ], [ -5, %796 ], [ 1, %.loopexit.loopexit1277 ]
  %1202 = load i32, ptr %26, align 4, !tbaa !24
  %1203 = icmp ult i32 %1199, %1202
  br i1 %1203, label %1204, label %1211

1204:                                             ; preds = %.loopexit
  %1205 = sub nuw i32 %1202, %1199
  %1206 = load ptr, ptr %24, align 8, !tbaa !25
  %1207 = call i32 %3(ptr noundef %4, ptr noundef %1206, i32 noundef %1205) #6
  %1208 = icmp ne i32 %1207, 0
  %1209 = and i1 %1200, %1208
  %1210 = select i1 %1209, i32 -5, i32 %1201
  br label %1211

1211:                                             ; preds = %1204, %.loopexit
  %1212 = phi i32 [ %1210, %1204 ], [ %1201, %.loopexit ]
  %1213 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %1213, ptr %0, align 8, !tbaa !31
  store i32 %1198, ptr %46, align 8, !tbaa !33
  br label %1214

1214:                                             ; preds = %1211, %8, %5
  %1215 = phi i32 [ %1212, %1211 ], [ -2, %8 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i32 %1215
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

declare void @inflate_fixed(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflateBackEnd(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  tail call void %9(ptr noundef %13, ptr noundef nonnull %5) #6
  store ptr null, ptr %4, align 8, !tbaa !18
  br label %14

14:                                               ; preds = %11, %7, %3, %1
  %15 = phi i32 [ 0, %11 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nomerge noreturn nounwind }

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
!8 = !{!9, !10, i64 48}
!9 = !{!"z_stream_s", !10, i64 0, !12, i64 8, !13, i64 16, !10, i64 24, !12, i64 32, !13, i64 40, !10, i64 48, !14, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !12, i64 88, !13, i64 96, !13, i64 104}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS14internal_state", !11, i64 0}
!15 = !{!9, !11, i64 64}
!16 = !{!9, !11, i64 80}
!17 = !{!9, !11, i64 72}
!18 = !{!9, !14, i64 56}
!19 = !{!20, !12, i64 28}
!20 = !{!"inflate_state", !21, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !13, i64 32, !13, i64 40, !22, i64 48, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !10, i64 72, !13, i64 80, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !11, i64 104, !11, i64 112, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !11, i64 144, !6, i64 152, !6, i64 792, !6, i64 1368, !12, i64 7144, !12, i64 7148, !12, i64 7152}
!21 = !{!"p1 _ZTS10z_stream_s", !11, i64 0}
!22 = !{!"p1 _ZTS11gz_header_s", !11, i64 0}
!23 = !{!20, !12, i64 56}
!24 = !{!20, !12, i64 60}
!25 = !{!20, !10, i64 72}
!26 = !{!20, !12, i64 68}
!27 = !{!20, !12, i64 64}
!28 = !{!20, !12, i64 7144}
!29 = !{!20, !12, i64 8}
!30 = !{!20, !12, i64 12}
!31 = !{!9, !10, i64 0}
!32 = !{!10, !10, i64 0}
!33 = !{!9, !12, i64 8}
!34 = !{}
!35 = !{!"branch_weights", i32 1, i32 1048575}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!20, !12, i64 92}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !37}
!41 = !{!20, !12, i64 132}
!42 = !{!20, !12, i64 136}
!43 = !{!20, !12, i64 128}
!44 = !{!20, !12, i64 140}
!45 = !{!46, !46, i64 0}
!46 = !{!"short", !6, i64 0}
!47 = distinct !{!47, !37}
!48 = distinct !{!48, !37}
!49 = !{!20, !11, i64 144}
!50 = !{!20, !11, i64 104}
!51 = !{!20, !12, i64 120}
!52 = !{!"branch_weights", i32 1, i32 127}
!53 = distinct !{!53, !37}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !37}
!57 = !{!"branch_weights", i32 127, i32 134217473}
!58 = distinct !{!58, !37}
!59 = distinct !{!59, !37, !60}
!60 = !{!"llvm.loop.estimated_trip_count", i32 528415}
!61 = !{!20, !11, i64 112}
!62 = !{!20, !12, i64 124}
!63 = !{!9, !10, i64 24}
!64 = !{!9, !12, i64 32}
!65 = !{!20, !13, i64 80}
!66 = !{!20, !12, i64 88}
!67 = !{!20, !12, i64 100}
!68 = distinct !{!68, !37}
!69 = !{!20, !12, i64 96}
!70 = distinct !{!70, !37}
!71 = distinct !{!71, !37, !72, !73}
!72 = !{!"llvm.loop.isvectorized", i32 1}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = !{!"branch_weights", i32 4, i32 28}
!75 = distinct !{!75, !37, !72, !73}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !37, !72}
!79 = distinct !{!79, !37}
