; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_infback.light.mid.ll'
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
  br i1 %7, label %1218, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1218, label %12

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
  %50 = phi i32 [ 16191, %22 ], [ %1201, %.loopexit103 ]
  %51 = phi ptr [ %25, %22 ], [ %1196, %.loopexit103 ]
  %52 = phi i32 [ %23, %22 ], [ %1197, %.loopexit103 ]
  %53 = phi i32 [ %27, %22 ], [ %1198, %.loopexit103 ]
  %54 = phi i64 [ 0, %22 ], [ %1199, %.loopexit103 ]
  %55 = phi i32 [ 0, %22 ], [ %1200, %.loopexit103 ]
  switch i32 %50, label %.loopexit.loopexit1017 [
    i32 16191, label %60
    i32 16193, label %106
    i32 16196, label %56
    i32 16200, label %635
    i32 16208, label %.loopexit.loopexit1305
    i32 16209, label %.loopexit
  ]

56:                                               ; preds = %49
  %57 = icmp ult i32 %55, 14
  br i1 %57, label %58, label %227

58:                                               ; preds = %56
  %59 = zext nneg i32 %55 to i64
  br label %201

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
  switch i32 %98, label %default.unreachable749 [
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

default.unreachable749:                           ; preds = %91
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

.preheader:                                       ; preds = %150, %194
  %154 = phi i32 [ %186, %194 ], [ %53, %150 ]
  %155 = phi i32 [ %179, %194 ], [ %142, %150 ]
  %156 = phi ptr [ %196, %194 ], [ %51, %150 ]
  %157 = phi i32 [ %195, %194 ], [ %152, %150 ]
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
  %185 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %173, i32 %175), !nosanitize !34
  %186 = extractvalue { i32, i1 } %185, 0, !nosanitize !34
  %187 = extractvalue { i32, i1 } %185, 1, !nosanitize !34
  br i1 %187, label %188, label %189, !prof !35, !nosanitize !34

188:                                              ; preds = %182
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

189:                                              ; preds = %182
  %190 = load i32, ptr %41, align 4, !tbaa !38
  %191 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %190, i32 %175), !nosanitize !34
  %192 = extractvalue { i32, i1 } %191, 1, !nosanitize !34
  br i1 %192, label %193, label %194, !prof !35, !nosanitize !34

193:                                              ; preds = %189
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

194:                                              ; preds = %189
  %195 = extractvalue { i32, i1 } %191, 0, !nosanitize !34
  %196 = getelementptr inbounds nuw i8, ptr %172, i64 %177
  store i32 %195, ptr %41, align 4, !tbaa !38
  %197 = icmp eq i32 %195, 0
  br i1 %197, label %.loopexit100, label %.preheader, !llvm.loop !39

.loopexit100:                                     ; preds = %194, %150
  %198 = phi ptr [ %51, %150 ], [ %196, %194 ]
  %199 = phi i32 [ %142, %150 ], [ %179, %194 ]
  %200 = phi i32 [ %53, %150 ], [ %186, %194 ]
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

201:                                              ; preds = %220, %58
  %202 = phi i64 [ %59, %58 ], [ %223, %220 ]
  %203 = phi i64 [ %54, %58 ], [ %221, %220 ]
  %204 = phi i32 [ %52, %58 ], [ %222, %220 ]
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

210:                                              ; preds = %206, %201
  %211 = phi i32 [ %207, %206 ], [ %204, %201 ]
  %212 = load ptr, ptr %6, align 8, !tbaa !32
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 1
  store ptr %213, ptr %6, align 8, !tbaa !32
  %214 = load i8, ptr %212, align 1, !tbaa !5
  %215 = zext i8 %214 to i64
  %216 = shl nuw nsw i64 %215, %202
  %217 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %203, i64 %216), !nosanitize !34
  %218 = extractvalue { i64, i1 } %217, 1, !nosanitize !34
  br i1 %218, label %219, label %220, !prof !35, !nosanitize !34

219:                                              ; preds = %210
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

220:                                              ; preds = %210
  %221 = extractvalue { i64, i1 } %217, 0, !nosanitize !34
  %222 = add i32 %211, -1
  %223 = add nuw nsw i64 %202, 8
  %224 = icmp samesign ult i64 %202, 6
  br i1 %224, label %201, label %225, !llvm.loop !40

225:                                              ; preds = %220
  %226 = trunc nuw nsw i64 %223 to i32
  br label %227

227:                                              ; preds = %225, %56
  %228 = phi i32 [ %52, %56 ], [ %222, %225 ]
  %229 = phi i64 [ %54, %56 ], [ %221, %225 ]
  %230 = phi i32 [ %55, %56 ], [ %226, %225 ]
  %231 = trunc i64 %229 to i32
  %232 = and i32 %231, 31
  %233 = add nuw nsw i32 %232, 257
  store i32 %233, ptr %28, align 4, !tbaa !41
  %234 = lshr i32 %231, 5
  %235 = and i32 %234, 31
  %236 = add nuw nsw i32 %235, 1
  store i32 %236, ptr %29, align 8, !tbaa !42
  %237 = lshr i32 %231, 10
  %238 = and i32 %237, 15
  %239 = add nuw nsw i32 %238, 4
  store i32 %239, ptr %30, align 8, !tbaa !43
  %240 = lshr i64 %229, 14
  %241 = add i32 %230, -14
  %242 = icmp samesign ugt i32 %232, 29
  %243 = icmp samesign ugt i32 %235, 29
  %244 = select i1 %242, i1 true, i1 %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %227
  store ptr @.str.3, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

246:                                              ; preds = %227
  store i32 0, ptr %31, align 4, !tbaa !44
  br label %251

247:                                              ; preds = %283
  %248 = icmp ult i32 %284, 19
  br i1 %248, label %249, label %306

249:                                              ; preds = %247
  %250 = zext nneg i32 %284 to i64
  br label %296

251:                                              ; preds = %283, %246
  %252 = phi i32 [ %284, %283 ], [ 0, %246 ]
  %253 = phi i32 [ %292, %283 ], [ %241, %246 ]
  %254 = phi i64 [ %293, %283 ], [ %240, %246 ]
  %255 = phi i32 [ %277, %283 ], [ %228, %246 ]
  %256 = icmp ult i32 %253, 3
  br i1 %256, label %257, label %275

257:                                              ; preds = %251
  %258 = or disjoint i32 %253, 8
  %259 = icmp eq i32 %255, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %._crit_edge

._crit_edge:                                      ; preds = %260
  %.pre = load i32, ptr %31, align 4, !tbaa !44
  br label %264

263:                                              ; preds = %260
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

264:                                              ; preds = %._crit_edge, %257
  %265 = phi i32 [ %.pre, %._crit_edge ], [ %252, %257 ]
  %266 = phi i32 [ %261, %._crit_edge ], [ %255, %257 ]
  %267 = load ptr, ptr %6, align 8, !tbaa !32
  %268 = getelementptr inbounds nuw i8, ptr %267, i64 1
  store ptr %268, ptr %6, align 8, !tbaa !32
  %269 = load i8, ptr %267, align 1, !tbaa !5
  %270 = zext i8 %269 to i64
  %271 = zext nneg i32 %253 to i64
  %272 = shl nuw nsw i64 %270, %271
  %273 = add nuw nsw i64 %272, %254
  %274 = add i32 %266, -1
  br label %275

275:                                              ; preds = %264, %251
  %276 = phi i32 [ %265, %264 ], [ %252, %251 ]
  %277 = phi i32 [ %274, %264 ], [ %255, %251 ]
  %278 = phi i64 [ %273, %264 ], [ %254, %251 ]
  %279 = phi i32 [ %258, %264 ], [ %253, %251 ]
  %280 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %276, i32 1), !nosanitize !34
  %281 = extractvalue { i32, i1 } %280, 1, !nosanitize !34
  br i1 %281, label %282, label %283, !prof !35, !nosanitize !34

282:                                              ; preds = %275
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

283:                                              ; preds = %275
  %284 = extractvalue { i32, i1 } %280, 0, !nosanitize !34
  %285 = trunc i64 %278 to i16
  %286 = and i16 %285, 7
  store i32 %284, ptr %31, align 4, !tbaa !44
  %287 = zext i32 %276 to i64
  %288 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %287
  %289 = load i16, ptr %288, align 2, !tbaa !45
  %290 = zext i16 %289 to i64
  %291 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %290
  store i16 %286, ptr %291, align 2, !tbaa !45
  %292 = add i32 %279, -3
  %293 = lshr i64 %278, 3
  %294 = load i32, ptr %30, align 8, !tbaa !43
  %295 = icmp ult i32 %284, %294
  br i1 %295, label %251, label %247, !llvm.loop !47

296:                                              ; preds = %296, %249
  %297 = phi i64 [ %250, %249 ], [ %298, %296 ]
  %298 = add nuw nsw i64 %297, 1
  %299 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %297
  %300 = load i16, ptr %299, align 2, !tbaa !45
  %301 = zext i16 %300 to i64
  %302 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %301
  store i16 0, ptr %302, align 2, !tbaa !45
  %303 = and i64 %298, 4294967295
  %304 = icmp eq i64 %303, 19
  br i1 %304, label %305, label %296, !llvm.loop !48

305:                                              ; preds = %296
  store i32 19, ptr %31, align 4, !tbaa !44
  br label %306

306:                                              ; preds = %305, %247
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 7, ptr %36, align 8, !tbaa !51
  %307 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %32, i32 noundef 19, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %306
  store ptr @.str.4, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

310:                                              ; preds = %306
  store i32 0, ptr %31, align 4, !tbaa !44
  %311 = load i32, ptr %28, align 4, !tbaa !41
  %312 = load i32, ptr %29, align 8, !tbaa !42
  %313 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %311, i32 %312), !nosanitize !34
  %314 = extractvalue { i32, i1 } %313, 1, !nosanitize !34
  br i1 %314, label %.loopexit109, label %315, !prof !52, !nosanitize !34

315:                                              ; preds = %310
  %316 = extractvalue { i32, i1 } %313, 0, !nosanitize !34
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %.loopexit110, label %.preheader108.preheader

.preheader108.preheader:                          ; preds = %315
  %.pre651 = load i32, ptr %36, align 8, !tbaa !51
  %.pre652 = load ptr, ptr %35, align 8, !tbaa !50
  br label %.preheader108

.loopexit109:                                     ; preds = %310, %603
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

318:                                              ; preds = %603
  %319 = extractvalue { i32, i1 } %609, 0, !nosanitize !34
  %320 = icmp ult i32 %604, %319
  br i1 %320, label %.preheader108, label %.loopexit110, !llvm.loop !53

.preheader108:                                    ; preds = %.preheader108.preheader, %318
  %321 = phi ptr [ %377, %318 ], [ %.pre652, %.preheader108.preheader ]
  %322 = phi i32 [ %378, %318 ], [ %.pre651, %.preheader108.preheader ]
  %323 = phi i32 [ %379, %318 ], [ %277, %.preheader108.preheader ]
  %324 = phi i64 [ %390, %318 ], [ %293, %.preheader108.preheader ]
  %325 = phi i32 [ %392, %318 ], [ %292, %.preheader108.preheader ]
  %326 = shl nsw i32 -1, %322
  %327 = xor i32 %326, -1
  %328 = trunc i64 %324 to i32
  %329 = and i32 %327, %328
  %330 = zext nneg i32 %329 to i64
  %331 = getelementptr inbounds nuw [4 x i8], ptr %321, i64 %330
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 1
  %333 = load i8, ptr %332, align 1, !tbaa !5
  %334 = zext i8 %333 to i32
  %335 = icmp ult i32 %325, %334
  br i1 %335, label %336, label %376

336:                                              ; preds = %.preheader108
  %337 = zext nneg i32 %325 to i64
  br label %338

338:                                              ; preds = %357, %336
  %339 = phi i64 [ %337, %336 ], [ %360, %357 ]
  %340 = phi i64 [ %324, %336 ], [ %358, %357 ]
  %341 = phi i32 [ %323, %336 ], [ %359, %357 ]
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %338
  %344 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %343
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

347:                                              ; preds = %343, %338
  %348 = phi i32 [ %344, %343 ], [ %341, %338 ]
  %349 = load ptr, ptr %6, align 8, !tbaa !32
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 1
  store ptr %350, ptr %6, align 8, !tbaa !32
  %351 = load i8, ptr %349, align 1, !tbaa !5
  %352 = zext i8 %351 to i64
  %353 = shl i64 %352, %339
  %354 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %340, i64 %353), !nosanitize !34
  %355 = extractvalue { i64, i1 } %354, 1, !nosanitize !34
  br i1 %355, label %356, label %357, !prof !35, !nosanitize !34

356:                                              ; preds = %347
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

357:                                              ; preds = %347
  %358 = extractvalue { i64, i1 } %354, 0, !nosanitize !34
  %359 = add i32 %348, -1
  %360 = add nuw nsw i64 %339, 8
  %361 = load i32, ptr %36, align 8, !tbaa !51
  %362 = shl nsw i32 -1, %361
  %363 = xor i32 %362, -1
  %364 = trunc i64 %358 to i32
  %365 = load ptr, ptr %35, align 8, !tbaa !50
  %366 = and i32 %363, %364
  %367 = zext nneg i32 %366 to i64
  %368 = getelementptr inbounds nuw [4 x i8], ptr %365, i64 %367
  %369 = getelementptr inbounds nuw i8, ptr %368, i64 1
  %370 = load i8, ptr %369, align 1, !tbaa !5
  %371 = zext i8 %370 to i64
  %372 = icmp samesign ult i64 %360, %371
  br i1 %372, label %338, label %373

373:                                              ; preds = %357
  %374 = zext i8 %370 to i32
  %375 = trunc nuw nsw i64 %360 to i32
  br label %376

376:                                              ; preds = %373, %.preheader108
  %377 = phi ptr [ %321, %.preheader108 ], [ %365, %373 ]
  %378 = phi i32 [ %322, %.preheader108 ], [ %361, %373 ]
  %379 = phi i32 [ %323, %.preheader108 ], [ %359, %373 ]
  %380 = phi i64 [ %324, %.preheader108 ], [ %358, %373 ]
  %381 = phi i32 [ %325, %.preheader108 ], [ %375, %373 ]
  %382 = phi i8 [ %333, %.preheader108 ], [ %370, %373 ]
  %383 = phi ptr [ %331, %.preheader108 ], [ %368, %373 ]
  %384 = phi i32 [ %334, %.preheader108 ], [ %374, %373 ]
  %385 = getelementptr inbounds nuw i8, ptr %383, i64 2
  %386 = load i16, ptr %385, align 2, !tbaa !45
  %387 = icmp ult i16 %386, 16
  br i1 %387, label %388, label %400

388:                                              ; preds = %376
  %389 = zext nneg i8 %382 to i64
  %390 = lshr i64 %380, %389
  %391 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %381, i32 %384), !nosanitize !34
  %392 = extractvalue { i32, i1 } %391, 0, !nosanitize !34
  %393 = extractvalue { i32, i1 } %391, 1, !nosanitize !34
  br i1 %393, label %394, label %395, !prof !35, !nosanitize !34

394:                                              ; preds = %388
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

395:                                              ; preds = %388
  %396 = load i32, ptr %31, align 4, !tbaa !44
  %397 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %396, i32 1), !nosanitize !34
  %398 = extractvalue { i32, i1 } %397, 1, !nosanitize !34
  br i1 %398, label %399, label %603, !prof !35, !nosanitize !34

399:                                              ; preds = %395
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

400:                                              ; preds = %376
  switch i16 %386, label %413 [
    i16 16, label %407
    i16 17, label %401
  ]

401:                                              ; preds = %400
  %402 = add nuw nsw i32 %384, 3
  %403 = icmp ult i32 %381, %402
  br i1 %403, label %404, label %494

404:                                              ; preds = %401
  %405 = zext nneg i32 %381 to i64
  %406 = zext nneg i32 %402 to i64
  br label %468

407:                                              ; preds = %400
  %408 = add nuw nsw i32 %384, 2
  %409 = icmp ult i32 %381, %408
  br i1 %409, label %410, label %445

410:                                              ; preds = %407
  %411 = zext nneg i32 %381 to i64
  %412 = zext nneg i32 %408 to i64
  br label %419

413:                                              ; preds = %400
  %414 = add nuw nsw i32 %384, 7
  %415 = icmp ult i32 %381, %414
  br i1 %415, label %416, label %535

416:                                              ; preds = %413
  %417 = zext nneg i32 %381 to i64
  %418 = zext nneg i32 %414 to i64
  br label %509

419:                                              ; preds = %438, %410
  %420 = phi i64 [ %411, %410 ], [ %441, %438 ]
  %421 = phi i64 [ %380, %410 ], [ %439, %438 ]
  %422 = phi i32 [ %379, %410 ], [ %440, %438 ]
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %428

424:                                              ; preds = %419
  %425 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %424
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

428:                                              ; preds = %424, %419
  %429 = phi i32 [ %425, %424 ], [ %422, %419 ]
  %430 = load ptr, ptr %6, align 8, !tbaa !32
  %431 = getelementptr inbounds nuw i8, ptr %430, i64 1
  store ptr %431, ptr %6, align 8, !tbaa !32
  %432 = load i8, ptr %430, align 1, !tbaa !5
  %433 = zext i8 %432 to i64
  %434 = shl i64 %433, %420
  %435 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %421, i64 %434), !nosanitize !34
  %436 = extractvalue { i64, i1 } %435, 1, !nosanitize !34
  br i1 %436, label %437, label %438, !prof !35, !nosanitize !34

437:                                              ; preds = %428
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

438:                                              ; preds = %428
  %439 = extractvalue { i64, i1 } %435, 0, !nosanitize !34
  %440 = add i32 %429, -1
  %441 = add nuw nsw i64 %420, 8
  %442 = icmp samesign ult i64 %441, %412
  br i1 %442, label %419, label %443, !llvm.loop !54

443:                                              ; preds = %438
  %444 = trunc nuw nsw i64 %441 to i32
  br label %445

445:                                              ; preds = %443, %407
  %446 = phi i32 [ %379, %407 ], [ %440, %443 ]
  %447 = phi i64 [ %380, %407 ], [ %439, %443 ]
  %448 = phi i32 [ %381, %407 ], [ %444, %443 ]
  %449 = zext nneg i8 %382 to i64
  %450 = lshr i64 %447, %449
  %451 = sub nuw i32 %448, %384
  %452 = load i32, ptr %31, align 4, !tbaa !44
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %445
  store ptr @.str.5, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

455:                                              ; preds = %445
  %456 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %451, i32 2), !nosanitize !34
  %457 = extractvalue { i32, i1 } %456, 1, !nosanitize !34
  br i1 %457, label %458, label %459, !prof !35, !nosanitize !34

458:                                              ; preds = %455
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

459:                                              ; preds = %455
  %460 = trunc i64 %450 to i32
  %461 = and i32 %460, 3
  %462 = add nuw nsw i32 %461, 3
  %463 = add i32 %452, -1
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %464
  %466 = load i16, ptr %465, align 2, !tbaa !45
  %467 = lshr i64 %450, 2
  br label %550

468:                                              ; preds = %487, %404
  %469 = phi i64 [ %405, %404 ], [ %490, %487 ]
  %470 = phi i64 [ %380, %404 ], [ %488, %487 ]
  %471 = phi i32 [ %379, %404 ], [ %489, %487 ]
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %477

473:                                              ; preds = %468
  %474 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %477

476:                                              ; preds = %473
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

477:                                              ; preds = %473, %468
  %478 = phi i32 [ %474, %473 ], [ %471, %468 ]
  %479 = load ptr, ptr %6, align 8, !tbaa !32
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 1
  store ptr %480, ptr %6, align 8, !tbaa !32
  %481 = load i8, ptr %479, align 1, !tbaa !5
  %482 = zext i8 %481 to i64
  %483 = shl i64 %482, %469
  %484 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %470, i64 %483), !nosanitize !34
  %485 = extractvalue { i64, i1 } %484, 1, !nosanitize !34
  br i1 %485, label %486, label %487, !prof !35, !nosanitize !34

486:                                              ; preds = %477
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

487:                                              ; preds = %477
  %488 = extractvalue { i64, i1 } %484, 0, !nosanitize !34
  %489 = add i32 %478, -1
  %490 = add nuw nsw i64 %469, 8
  %491 = icmp samesign ult i64 %490, %406
  br i1 %491, label %468, label %492, !llvm.loop !55

492:                                              ; preds = %487
  %493 = trunc nuw nsw i64 %490 to i32
  br label %494

494:                                              ; preds = %492, %401
  %495 = phi i32 [ %379, %401 ], [ %489, %492 ]
  %496 = phi i64 [ %380, %401 ], [ %488, %492 ]
  %497 = phi i32 [ %381, %401 ], [ %493, %492 ]
  %498 = sub nuw i32 %497, %384
  %499 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %498, i32 3), !nosanitize !34
  %500 = extractvalue { i32, i1 } %499, 1, !nosanitize !34
  br i1 %500, label %501, label %502, !prof !35, !nosanitize !34

501:                                              ; preds = %494
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

502:                                              ; preds = %494
  %503 = zext nneg i8 %382 to i64
  %504 = lshr i64 %496, %503
  %505 = trunc i64 %504 to i32
  %506 = and i32 %505, 7
  %507 = add nuw nsw i32 %506, 3
  %508 = lshr i64 %504, 3
  br label %550

509:                                              ; preds = %528, %416
  %510 = phi i64 [ %417, %416 ], [ %531, %528 ]
  %511 = phi i64 [ %380, %416 ], [ %529, %528 ]
  %512 = phi i32 [ %379, %416 ], [ %530, %528 ]
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %518

514:                                              ; preds = %509
  %515 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %518

517:                                              ; preds = %514
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

518:                                              ; preds = %514, %509
  %519 = phi i32 [ %515, %514 ], [ %512, %509 ]
  %520 = load ptr, ptr %6, align 8, !tbaa !32
  %521 = getelementptr inbounds nuw i8, ptr %520, i64 1
  store ptr %521, ptr %6, align 8, !tbaa !32
  %522 = load i8, ptr %520, align 1, !tbaa !5
  %523 = zext i8 %522 to i64
  %524 = shl i64 %523, %510
  %525 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %511, i64 %524), !nosanitize !34
  %526 = extractvalue { i64, i1 } %525, 1, !nosanitize !34
  br i1 %526, label %527, label %528, !prof !35, !nosanitize !34

527:                                              ; preds = %518
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

528:                                              ; preds = %518
  %529 = extractvalue { i64, i1 } %525, 0, !nosanitize !34
  %530 = add i32 %519, -1
  %531 = add nuw nsw i64 %510, 8
  %532 = icmp samesign ult i64 %531, %418
  br i1 %532, label %509, label %533, !llvm.loop !56

533:                                              ; preds = %528
  %534 = trunc nuw nsw i64 %531 to i32
  br label %535

535:                                              ; preds = %533, %413
  %536 = phi i32 [ %379, %413 ], [ %530, %533 ]
  %537 = phi i64 [ %380, %413 ], [ %529, %533 ]
  %538 = phi i32 [ %381, %413 ], [ %534, %533 ]
  %539 = sub nuw i32 %538, %384
  %540 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %539, i32 7), !nosanitize !34
  %541 = extractvalue { i32, i1 } %540, 1, !nosanitize !34
  br i1 %541, label %542, label %543, !prof !35, !nosanitize !34

542:                                              ; preds = %535
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

543:                                              ; preds = %535
  %544 = zext nneg i8 %382 to i64
  %545 = lshr i64 %537, %544
  %546 = trunc i64 %545 to i32
  %547 = and i32 %546, 127
  %548 = add nuw nsw i32 %547, 11
  %549 = lshr i64 %545, 7
  br label %550

550:                                              ; preds = %543, %502, %459
  %551 = phi i32 [ %446, %459 ], [ %495, %502 ], [ %536, %543 ]
  %552 = phi i64 [ %467, %459 ], [ %508, %502 ], [ %549, %543 ]
  %553 = phi { i32, i1 } [ %456, %459 ], [ %499, %502 ], [ %540, %543 ]
  %554 = phi i32 [ %462, %459 ], [ %507, %502 ], [ %548, %543 ]
  %555 = phi i16 [ %466, %459 ], [ 0, %502 ], [ 0, %543 ]
  %556 = extractvalue { i32, i1 } %553, 0
  %557 = load i32, ptr %31, align 4, !tbaa !44
  %.fr1580 = freeze i32 %557
  %558 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.fr1580, i32 %554), !nosanitize !34
  %559 = extractvalue { i32, i1 } %558, 0, !nosanitize !34
  %560 = extractvalue { i32, i1 } %558, 1, !nosanitize !34
  br i1 %560, label %561, label %562, !prof !35, !nosanitize !34

561:                                              ; preds = %550
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

562:                                              ; preds = %550
  %563 = load i32, ptr %28, align 4, !tbaa !41
  %564 = load i32, ptr %29, align 8, !tbaa !42
  %565 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %563, i32 %564), !nosanitize !34
  %566 = extractvalue { i32, i1 } %565, 1, !nosanitize !34
  br i1 %566, label %567, label %568, !prof !35, !nosanitize !34

567:                                              ; preds = %562
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

568:                                              ; preds = %562
  %569 = extractvalue { i32, i1 } %565, 0, !nosanitize !34
  %570 = icmp ugt i32 %559, %569
  br i1 %570, label %583, label %571

571:                                              ; preds = %568
  %572 = icmp eq i32 %.fr1580, -1
  br i1 %572, label %._crit_edge1283, label %.lr.ph, !prof !52, !nosanitize !34

.lr.ph:                                           ; preds = %571
  %573 = zext i32 %.fr1580 to i64
  %574 = add nsw i32 %554, -1
  %575 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %574, 0
  %576 = and i64 %573, 1
  %lcmp.mod1575.not.not = icmp eq i64 %576, 0
  br i1 %lcmp.mod1575.not.not, label %.prol.preheader, label %.prol.loopexit, !prof !52

.prol.preheader:                                  ; preds = %.lr.ph
  %577 = or disjoint i64 %573, 1
  %578 = trunc nuw i64 %577 to i32
  store i32 %578, ptr %31, align 4, !tbaa !44
  %579 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %573
  store i16 %555, ptr %579, align 2, !tbaa !45
  %580 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %574, i32 1), !nosanitize !34
  %581 = extractvalue { i32, i1 } %580, 1, !nosanitize !34
  br i1 %581, label %585, label %.prol.loopexit, !prof !57, !llvm.loop !58, !nosanitize !34

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.unr1577 = phi { i32, i1 } [ %575, %.lr.ph ], [ %580, %.prol.preheader ]
  %.unr1578 = phi i64 [ %573, %.lr.ph ], [ %577, %.prol.preheader ]
  %582 = icmp eq i32 %.fr1580, -2
  br i1 %582, label %._crit_edge1283, label %.lr.ph.new, !prof !52

583:                                              ; preds = %568
  store ptr @.str.5, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

.loopexit1579:                                    ; preds = %586, %.lr.ph.new
  %584 = phi i32 [ %589, %586 ], [ %599, %.lr.ph.new ]
  store i32 %584, ptr %31, align 4, !tbaa !44
  br label %585

585:                                              ; preds = %.loopexit1579, %.prol.preheader
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

586:                                              ; preds = %.lr.ph.new
  %587 = extractvalue { i32, i1 } %601, 0
  %588 = add nuw nsw i64 %596, 2
  %589 = trunc nuw i64 %588 to i32
  %590 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %598
  store i16 %555, ptr %590, align 2, !tbaa !45
  %591 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %587, i32 1), !nosanitize !34
  %592 = extractvalue { i32, i1 } %591, 1, !nosanitize !34
  br i1 %592, label %.loopexit1579, label %593, !prof !57, !llvm.loop !58, !nosanitize !34

593:                                              ; preds = %586
  %594 = icmp eq i64 %588, 4294967295
  br i1 %594, label %._crit_edge1283.loopexit.unr-lcssa, label %.lr.ph.new, !prof !57, !llvm.loop !59, !nosanitize !34

._crit_edge1283.loopexit.unr-lcssa:               ; preds = %593
  store i32 %589, ptr %31, align 4, !tbaa !44
  br label %._crit_edge1283

._crit_edge1283:                                  ; preds = %._crit_edge1283.loopexit.unr-lcssa, %.prol.loopexit, %571
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

.lr.ph.new:                                       ; preds = %.prol.loopexit, %593
  %595 = phi { i32, i1 } [ %591, %593 ], [ %.unr1577, %.prol.loopexit ]
  %596 = phi i64 [ %588, %593 ], [ %.unr1578, %.prol.loopexit ]
  %597 = extractvalue { i32, i1 } %595, 0
  %598 = add nuw nsw i64 %596, 1
  %599 = trunc nuw i64 %598 to i32
  %600 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %596
  store i16 %555, ptr %600, align 2, !tbaa !45
  %601 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %597, i32 1), !nosanitize !34
  %602 = extractvalue { i32, i1 } %601, 1, !nosanitize !34
  br i1 %602, label %.loopexit1579, label %586, !prof !57, !llvm.loop !58, !nosanitize !34

603:                                              ; preds = %395
  %604 = extractvalue { i32, i1 } %397, 0, !nosanitize !34
  store i32 %604, ptr %31, align 4, !tbaa !44
  %605 = zext i32 %396 to i64
  %606 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %605
  store i16 %386, ptr %606, align 2, !tbaa !45
  %607 = load i32, ptr %28, align 4, !tbaa !41
  %608 = load i32, ptr %29, align 8, !tbaa !42
  %609 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %607, i32 %608), !nosanitize !34
  %610 = extractvalue { i32, i1 } %609, 1, !nosanitize !34
  br i1 %610, label %.loopexit109, label %318, !prof !57, !llvm.loop !53, !nosanitize !34

.loopexit110:                                     ; preds = %318, %315
  %611 = phi i32 [ %311, %315 ], [ %607, %318 ]
  %612 = phi i32 [ %292, %315 ], [ %392, %318 ]
  %613 = phi i64 [ %293, %315 ], [ %390, %318 ]
  %614 = phi i32 [ %277, %315 ], [ %379, %318 ]
  %615 = load i32, ptr %14, align 8, !tbaa !29
  %616 = icmp eq i32 %615, 16209
  br i1 %616, label %.loopexit103, label %617

617:                                              ; preds = %.loopexit110
  %618 = load i16, ptr %38, align 8, !tbaa !45
  %619 = icmp eq i16 %618, 0
  br i1 %619, label %620, label %621

620:                                              ; preds = %617
  store ptr @.str.6, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

621:                                              ; preds = %617
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 9, ptr %36, align 8, !tbaa !51
  %622 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %32, i32 noundef %611, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %625, label %624

624:                                              ; preds = %621
  store ptr @.str.7, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

625:                                              ; preds = %621
  %626 = load ptr, ptr %34, align 8, !tbaa !49
  store ptr %626, ptr %39, align 8, !tbaa !61
  store i32 6, ptr %40, align 4, !tbaa !62
  %627 = load i32, ptr %28, align 4, !tbaa !41
  %628 = zext i32 %627 to i64
  %629 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %628
  %630 = load i32, ptr %29, align 8, !tbaa !42
  %631 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %629, i32 noundef %630, ptr noundef nonnull %34, ptr noundef nonnull %40, ptr noundef nonnull %37) #6
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %634, label %633

633:                                              ; preds = %625
  store ptr @.str.8, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

634:                                              ; preds = %625
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %635

635:                                              ; preds = %634, %49
  %636 = phi i32 [ %614, %634 ], [ %52, %49 ]
  %637 = phi i64 [ %613, %634 ], [ %54, %49 ]
  %638 = phi i32 [ %612, %634 ], [ %55, %49 ]
  %639 = icmp ugt i32 %636, 5
  %640 = icmp ugt i32 %53, 257
  %641 = select i1 %639, i1 %640, i1 false
  br i1 %641, label %657, label %642

642:                                              ; preds = %635
  %643 = load i32, ptr %36, align 8, !tbaa !51
  %644 = shl nsw i32 -1, %643
  %645 = xor i32 %644, -1
  %646 = trunc i64 %637 to i32
  %647 = load ptr, ptr %35, align 8, !tbaa !50
  %648 = and i32 %645, %646
  %649 = zext nneg i32 %648 to i64
  %650 = getelementptr inbounds nuw [4 x i8], ptr %647, i64 %649
  %651 = getelementptr inbounds nuw i8, ptr %650, i64 1
  %652 = load i8, ptr %651, align 1, !tbaa !5
  %653 = zext i8 %652 to i32
  %654 = icmp ult i32 %638, %653
  br i1 %654, label %655, label %704

655:                                              ; preds = %642
  %656 = zext nneg i32 %638 to i64
  br label %666

657:                                              ; preds = %635
  store ptr %51, ptr %44, align 8, !tbaa !63
  store i32 %53, ptr %45, align 8, !tbaa !64
  %658 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %658, ptr %0, align 8, !tbaa !31
  store i32 %636, ptr %46, align 8, !tbaa !33
  store i64 %637, ptr %47, align 8, !tbaa !65
  store i32 %638, ptr %48, align 8, !tbaa !66
  %659 = load i32, ptr %26, align 4, !tbaa !24
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %659) #6
  %660 = load ptr, ptr %44, align 8, !tbaa !63
  %661 = load i32, ptr %45, align 8, !tbaa !64
  %662 = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %662, ptr %6, align 8, !tbaa !32
  %663 = load i32, ptr %46, align 8, !tbaa !33
  %664 = load i64, ptr %47, align 8, !tbaa !65
  %665 = load i32, ptr %48, align 8, !tbaa !66
  br label %.loopexit103

666:                                              ; preds = %685, %655
  %667 = phi i64 [ %656, %655 ], [ %688, %685 ]
  %668 = phi i64 [ %637, %655 ], [ %686, %685 ]
  %669 = phi i32 [ %636, %655 ], [ %687, %685 ]
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %671, label %675

671:                                              ; preds = %666
  %672 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %675

674:                                              ; preds = %671
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

675:                                              ; preds = %671, %666
  %676 = phi i32 [ %672, %671 ], [ %669, %666 ]
  %677 = load ptr, ptr %6, align 8, !tbaa !32
  %678 = getelementptr inbounds nuw i8, ptr %677, i64 1
  store ptr %678, ptr %6, align 8, !tbaa !32
  %679 = load i8, ptr %677, align 1, !tbaa !5
  %680 = zext i8 %679 to i64
  %681 = shl i64 %680, %667
  %682 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %668, i64 %681), !nosanitize !34
  %683 = extractvalue { i64, i1 } %682, 1, !nosanitize !34
  br i1 %683, label %684, label %685, !prof !35, !nosanitize !34

684:                                              ; preds = %675
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

685:                                              ; preds = %675
  %686 = extractvalue { i64, i1 } %682, 0, !nosanitize !34
  %687 = add i32 %676, -1
  %688 = add nuw nsw i64 %667, 8
  %689 = load i32, ptr %36, align 8, !tbaa !51
  %690 = shl nsw i32 -1, %689
  %691 = xor i32 %690, -1
  %692 = trunc i64 %686 to i32
  %693 = load ptr, ptr %35, align 8, !tbaa !50
  %694 = and i32 %691, %692
  %695 = zext nneg i32 %694 to i64
  %696 = getelementptr inbounds nuw [4 x i8], ptr %693, i64 %695
  %697 = getelementptr inbounds nuw i8, ptr %696, i64 1
  %698 = load i8, ptr %697, align 1, !tbaa !5
  %699 = zext i8 %698 to i64
  %700 = icmp samesign ult i64 %688, %699
  br i1 %700, label %666, label %701

701:                                              ; preds = %685
  %702 = zext i8 %698 to i32
  %703 = trunc nuw nsw i64 %688 to i32
  br label %704

704:                                              ; preds = %701, %642
  %705 = phi ptr [ %647, %642 ], [ %693, %701 ]
  %706 = phi i32 [ %636, %642 ], [ %687, %701 ]
  %707 = phi i64 [ %637, %642 ], [ %686, %701 ]
  %708 = phi i32 [ %638, %642 ], [ %703, %701 ]
  %709 = phi ptr [ %650, %642 ], [ %696, %701 ]
  %710 = phi i8 [ %652, %642 ], [ %698, %701 ]
  %711 = phi i32 [ %653, %642 ], [ %702, %701 ]
  %712 = getelementptr inbounds nuw i8, ptr %709, i64 2
  %713 = load i16, ptr %712, align 2, !tbaa !45
  %714 = load i8, ptr %709, align 2, !tbaa !5
  %715 = add i8 %714, -1
  %716 = icmp ult i8 %715, 15
  br i1 %716, label %717, label %780

717:                                              ; preds = %704
  %718 = zext nneg i8 %714 to i32
  %719 = add nuw nsw i32 %711, %718
  %720 = shl nsw i32 -1, %719
  %721 = xor i32 %720, -1
  %722 = zext i16 %713 to i32
  %723 = trunc i64 %707 to i32
  %724 = and i32 %721, %723
  %725 = lshr i32 %724, %711
  %726 = add nuw i32 %725, %722
  %727 = zext i32 %726 to i64
  %728 = getelementptr inbounds nuw [4 x i8], ptr %705, i64 %727
  %729 = getelementptr inbounds nuw i8, ptr %728, i64 1
  %730 = load i8, ptr %729, align 1, !tbaa !5
  %731 = zext i8 %730 to i32
  %732 = add nuw nsw i32 %711, %731
  %733 = icmp ugt i32 %732, %708
  br i1 %733, label %.preheader106.preheader, label %.loopexit107

.preheader106.preheader:                          ; preds = %717
  %734 = zext nneg i32 %708 to i64
  br label %.preheader106

.preheader106:                                    ; preds = %.preheader106.preheader, %752
  %indvars.iv = phi i64 [ %734, %.preheader106.preheader ], [ %indvars.iv.next, %752 ]
  %735 = phi i64 [ %707, %.preheader106.preheader ], [ %753, %752 ]
  %736 = phi i32 [ %706, %.preheader106.preheader ], [ %754, %752 ]
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %738, label %742

738:                                              ; preds = %.preheader106
  %739 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %741, label %742

741:                                              ; preds = %738
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

742:                                              ; preds = %738, %.preheader106
  %743 = phi i32 [ %739, %738 ], [ %736, %.preheader106 ]
  %744 = load ptr, ptr %6, align 8, !tbaa !32
  %745 = getelementptr inbounds nuw i8, ptr %744, i64 1
  store ptr %745, ptr %6, align 8, !tbaa !32
  %746 = load i8, ptr %744, align 1, !tbaa !5
  %747 = zext i8 %746 to i64
  %748 = shl i64 %747, %indvars.iv
  %749 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %735, i64 %748), !nosanitize !34
  %750 = extractvalue { i64, i1 } %749, 1, !nosanitize !34
  br i1 %750, label %751, label %752, !prof !35, !nosanitize !34

751:                                              ; preds = %742
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

752:                                              ; preds = %742
  %753 = extractvalue { i64, i1 } %749, 0, !nosanitize !34
  %754 = add i32 %743, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %755 = load ptr, ptr %35, align 8, !tbaa !50
  %756 = trunc i64 %753 to i32
  %757 = and i32 %756, %721
  %758 = lshr i32 %757, %711
  %759 = add nuw i32 %758, %722
  %760 = zext i32 %759 to i64
  %761 = getelementptr inbounds nuw [4 x i8], ptr %755, i64 %760
  %762 = getelementptr inbounds nuw i8, ptr %761, i64 1
  %763 = load i8, ptr %762, align 1, !tbaa !5
  %764 = zext i8 %763 to i32
  %765 = add nuw nsw i32 %711, %764
  %766 = zext nneg i32 %765 to i64
  %767 = icmp samesign ult i64 %indvars.iv.next, %766
  br i1 %767, label %.preheader106, label %.loopexit107.loopexit

.loopexit107.loopexit:                            ; preds = %752
  %768 = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit107

.loopexit107:                                     ; preds = %.loopexit107.loopexit, %717
  %769 = phi i32 [ %706, %717 ], [ %754, %.loopexit107.loopexit ]
  %770 = phi i64 [ %707, %717 ], [ %753, %.loopexit107.loopexit ]
  %771 = phi i32 [ %708, %717 ], [ %768, %.loopexit107.loopexit ]
  %772 = phi ptr [ %728, %717 ], [ %761, %.loopexit107.loopexit ]
  %773 = phi i8 [ %730, %717 ], [ %763, %.loopexit107.loopexit ]
  %774 = getelementptr inbounds nuw i8, ptr %772, i64 2
  %775 = load i16, ptr %774, align 2, !tbaa !45
  %776 = load i8, ptr %772, align 2, !tbaa !5
  %777 = sub nuw i32 %771, %711
  %778 = zext nneg i8 %710 to i64
  %779 = lshr i64 %770, %778
  br label %780

780:                                              ; preds = %.loopexit107, %704
  %781 = phi i32 [ %769, %.loopexit107 ], [ %706, %704 ]
  %782 = phi i64 [ %779, %.loopexit107 ], [ %707, %704 ]
  %783 = phi i32 [ %777, %.loopexit107 ], [ %708, %704 ]
  %784 = phi i16 [ %775, %.loopexit107 ], [ %713, %704 ]
  %785 = phi i8 [ %773, %.loopexit107 ], [ %710, %704 ]
  %786 = phi i8 [ %776, %.loopexit107 ], [ %714, %704 ]
  %787 = zext i8 %785 to i32
  %788 = zext nneg i8 %785 to i64
  %789 = lshr i64 %782, %788
  %790 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %783, i32 %787), !nosanitize !34
  %791 = extractvalue { i32, i1 } %790, 0, !nosanitize !34
  %792 = extractvalue { i32, i1 } %790, 1, !nosanitize !34
  br i1 %792, label %793, label %794, !prof !35, !nosanitize !34

793:                                              ; preds = %780
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

794:                                              ; preds = %780
  %795 = zext i16 %784 to i32
  store i32 %795, ptr %41, align 4, !tbaa !38
  %796 = zext i8 %786 to i32
  %797 = icmp eq i8 %786, 0
  br i1 %797, label %798, label %818

798:                                              ; preds = %794
  %799 = icmp eq i32 %53, 0
  br i1 %799, label %800, label %807

800:                                              ; preds = %798
  %801 = load ptr, ptr %24, align 8, !tbaa !25
  %802 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %802, ptr %16, align 8, !tbaa !27
  %803 = call i32 %3(ptr noundef %4, ptr noundef %801, i32 noundef %802) #6
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %805, label %.loopexit

805:                                              ; preds = %800
  %806 = load i32, ptr %41, align 4, !tbaa !38
  br label %807

807:                                              ; preds = %805, %798
  %808 = phi i32 [ %806, %805 ], [ %795, %798 ]
  %809 = phi ptr [ %801, %805 ], [ %51, %798 ]
  %810 = phi i32 [ %802, %805 ], [ %53, %798 ]
  %811 = trunc i32 %808 to i8
  store i8 %811, ptr %809, align 1, !tbaa !5
  %812 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %810, i32 1), !nosanitize !34
  %813 = extractvalue { i32, i1 } %812, 1, !nosanitize !34
  br i1 %813, label %814, label %815, !prof !35, !nosanitize !34

814:                                              ; preds = %807
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

815:                                              ; preds = %807
  %816 = extractvalue { i32, i1 } %812, 0, !nosanitize !34
  %817 = getelementptr inbounds nuw i8, ptr %809, i64 1
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

818:                                              ; preds = %794
  %819 = and i32 %796, 32
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %822, label %821

821:                                              ; preds = %818
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

822:                                              ; preds = %818
  %823 = and i32 %796, 64
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %826, label %825

825:                                              ; preds = %822
  store ptr @.str.9, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

826:                                              ; preds = %822
  %827 = and i32 %796, 15
  store i32 %827, ptr %42, align 4, !tbaa !67
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %883, label %829

829:                                              ; preds = %826
  %830 = icmp ult i32 %791, %827
  br i1 %830, label %831, label %861

831:                                              ; preds = %829
  %832 = zext nneg i32 %791 to i64
  br label %833

833:                                              ; preds = %852, %831
  %834 = phi i64 [ %832, %831 ], [ %855, %852 ]
  %835 = phi i64 [ %789, %831 ], [ %853, %852 ]
  %836 = phi i32 [ %781, %831 ], [ %854, %852 ]
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %842

838:                                              ; preds = %833
  %839 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %841, label %842

841:                                              ; preds = %838
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

842:                                              ; preds = %838, %833
  %843 = phi i32 [ %839, %838 ], [ %836, %833 ]
  %844 = load ptr, ptr %6, align 8, !tbaa !32
  %845 = getelementptr inbounds nuw i8, ptr %844, i64 1
  store ptr %845, ptr %6, align 8, !tbaa !32
  %846 = load i8, ptr %844, align 1, !tbaa !5
  %847 = zext i8 %846 to i64
  %848 = shl i64 %847, %834
  %849 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %835, i64 %848), !nosanitize !34
  %850 = extractvalue { i64, i1 } %849, 1, !nosanitize !34
  br i1 %850, label %851, label %852, !prof !35, !nosanitize !34

851:                                              ; preds = %842
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

852:                                              ; preds = %842
  %853 = extractvalue { i64, i1 } %849, 0, !nosanitize !34
  %854 = add i32 %843, -1
  %855 = add nuw nsw i64 %834, 8
  %856 = trunc nuw i64 %855 to i32
  %857 = load i32, ptr %42, align 4, !tbaa !67
  %858 = icmp ugt i32 %857, %856
  br i1 %858, label %833, label %859, !llvm.loop !68

859:                                              ; preds = %852
  %860 = load i32, ptr %41, align 4, !tbaa !38
  br label %861

861:                                              ; preds = %859, %829
  %862 = phi i32 [ %795, %829 ], [ %860, %859 ]
  %863 = phi i32 [ %781, %829 ], [ %854, %859 ]
  %864 = phi i64 [ %789, %829 ], [ %853, %859 ]
  %865 = phi i32 [ %791, %829 ], [ %856, %859 ]
  %866 = phi i32 [ %827, %829 ], [ %857, %859 ]
  %867 = shl nsw i32 -1, %866
  %868 = xor i32 %867, -1
  %869 = trunc i64 %864 to i32
  %870 = and i32 %868, %869
  %871 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %862, i32 %870), !nosanitize !34
  %872 = extractvalue { i32, i1 } %871, 1, !nosanitize !34
  br i1 %872, label %873, label %874, !prof !35, !nosanitize !34

873:                                              ; preds = %861
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

874:                                              ; preds = %861
  %875 = extractvalue { i32, i1 } %871, 0, !nosanitize !34
  store i32 %875, ptr %41, align 4, !tbaa !38
  %876 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %865, i32 %866), !nosanitize !34
  %877 = extractvalue { i32, i1 } %876, 1, !nosanitize !34
  br i1 %877, label %878, label %879, !prof !35, !nosanitize !34

878:                                              ; preds = %874
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

879:                                              ; preds = %874
  %880 = extractvalue { i32, i1 } %876, 0, !nosanitize !34
  %881 = zext nneg i32 %866 to i64
  %882 = lshr i64 %864, %881
  br label %883

883:                                              ; preds = %879, %826
  %884 = phi i32 [ %863, %879 ], [ %781, %826 ]
  %885 = phi i64 [ %882, %879 ], [ %789, %826 ]
  %886 = phi i32 [ %880, %879 ], [ %791, %826 ]
  %887 = load i32, ptr %40, align 4, !tbaa !62
  %888 = shl nsw i32 -1, %887
  %889 = xor i32 %888, -1
  %890 = trunc i64 %885 to i32
  %891 = load ptr, ptr %39, align 8, !tbaa !61
  %892 = and i32 %889, %890
  %893 = zext nneg i32 %892 to i64
  %894 = getelementptr inbounds nuw [4 x i8], ptr %891, i64 %893
  %895 = getelementptr inbounds nuw i8, ptr %894, i64 1
  %896 = load i8, ptr %895, align 1, !tbaa !5
  %897 = zext i8 %896 to i32
  %898 = icmp ult i32 %886, %897
  br i1 %898, label %899, label %939

899:                                              ; preds = %883
  %900 = zext nneg i32 %886 to i64
  br label %901

901:                                              ; preds = %920, %899
  %902 = phi i64 [ %900, %899 ], [ %923, %920 ]
  %903 = phi i64 [ %885, %899 ], [ %921, %920 ]
  %904 = phi i32 [ %884, %899 ], [ %922, %920 ]
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %906, label %910

906:                                              ; preds = %901
  %907 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %909, label %910

909:                                              ; preds = %906
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

910:                                              ; preds = %906, %901
  %911 = phi i32 [ %907, %906 ], [ %904, %901 ]
  %912 = load ptr, ptr %6, align 8, !tbaa !32
  %913 = getelementptr inbounds nuw i8, ptr %912, i64 1
  store ptr %913, ptr %6, align 8, !tbaa !32
  %914 = load i8, ptr %912, align 1, !tbaa !5
  %915 = zext i8 %914 to i64
  %916 = shl i64 %915, %902
  %917 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %903, i64 %916), !nosanitize !34
  %918 = extractvalue { i64, i1 } %917, 1, !nosanitize !34
  br i1 %918, label %919, label %920, !prof !35, !nosanitize !34

919:                                              ; preds = %910
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

920:                                              ; preds = %910
  %921 = extractvalue { i64, i1 } %917, 0, !nosanitize !34
  %922 = add i32 %911, -1
  %923 = add nuw nsw i64 %902, 8
  %924 = load i32, ptr %40, align 4, !tbaa !62
  %925 = shl nsw i32 -1, %924
  %926 = xor i32 %925, -1
  %927 = trunc i64 %921 to i32
  %928 = load ptr, ptr %39, align 8, !tbaa !61
  %929 = and i32 %926, %927
  %930 = zext nneg i32 %929 to i64
  %931 = getelementptr inbounds nuw [4 x i8], ptr %928, i64 %930
  %932 = getelementptr inbounds nuw i8, ptr %931, i64 1
  %933 = load i8, ptr %932, align 1, !tbaa !5
  %934 = zext i8 %933 to i64
  %935 = icmp samesign ult i64 %923, %934
  br i1 %935, label %901, label %936

936:                                              ; preds = %920
  %937 = zext i8 %933 to i32
  %938 = trunc nuw nsw i64 %923 to i32
  br label %939

939:                                              ; preds = %936, %883
  %940 = phi ptr [ %891, %883 ], [ %928, %936 ]
  %941 = phi i32 [ %884, %883 ], [ %922, %936 ]
  %942 = phi i64 [ %885, %883 ], [ %921, %936 ]
  %943 = phi i32 [ %886, %883 ], [ %938, %936 ]
  %944 = phi ptr [ %894, %883 ], [ %931, %936 ]
  %945 = phi i8 [ %896, %883 ], [ %933, %936 ]
  %946 = phi i32 [ %897, %883 ], [ %937, %936 ]
  %947 = getelementptr inbounds nuw i8, ptr %944, i64 2
  %948 = load i16, ptr %947, align 2, !tbaa !45
  %949 = load i8, ptr %944, align 2, !tbaa !5
  %950 = icmp ult i8 %949, 16
  br i1 %950, label %951, label %1014

951:                                              ; preds = %939
  %952 = zext nneg i8 %949 to i32
  %953 = add nuw nsw i32 %946, %952
  %954 = shl nsw i32 -1, %953
  %955 = xor i32 %954, -1
  %956 = zext i16 %948 to i32
  %957 = trunc i64 %942 to i32
  %958 = and i32 %955, %957
  %959 = lshr i32 %958, %946
  %960 = add nuw i32 %959, %956
  %961 = zext i32 %960 to i64
  %962 = getelementptr inbounds nuw [4 x i8], ptr %940, i64 %961
  %963 = getelementptr inbounds nuw i8, ptr %962, i64 1
  %964 = load i8, ptr %963, align 1, !tbaa !5
  %965 = zext i8 %964 to i32
  %966 = add nuw nsw i32 %946, %965
  %967 = icmp ugt i32 %966, %943
  br i1 %967, label %.preheader104.preheader, label %.loopexit105

.preheader104.preheader:                          ; preds = %951
  %968 = zext nneg i32 %943 to i64
  br label %.preheader104

.preheader104:                                    ; preds = %.preheader104.preheader, %986
  %indvars.iv636 = phi i64 [ %968, %.preheader104.preheader ], [ %indvars.iv.next637, %986 ]
  %969 = phi i64 [ %942, %.preheader104.preheader ], [ %987, %986 ]
  %970 = phi i32 [ %941, %.preheader104.preheader ], [ %988, %986 ]
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %972, label %976

972:                                              ; preds = %.preheader104
  %973 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %975, label %976

975:                                              ; preds = %972
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

976:                                              ; preds = %972, %.preheader104
  %977 = phi i32 [ %973, %972 ], [ %970, %.preheader104 ]
  %978 = load ptr, ptr %6, align 8, !tbaa !32
  %979 = getelementptr inbounds nuw i8, ptr %978, i64 1
  store ptr %979, ptr %6, align 8, !tbaa !32
  %980 = load i8, ptr %978, align 1, !tbaa !5
  %981 = zext i8 %980 to i64
  %982 = shl i64 %981, %indvars.iv636
  %983 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %969, i64 %982), !nosanitize !34
  %984 = extractvalue { i64, i1 } %983, 1, !nosanitize !34
  br i1 %984, label %985, label %986, !prof !35, !nosanitize !34

985:                                              ; preds = %976
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

986:                                              ; preds = %976
  %987 = extractvalue { i64, i1 } %983, 0, !nosanitize !34
  %988 = add i32 %977, -1
  %indvars.iv.next637 = add nuw nsw i64 %indvars.iv636, 8
  %989 = load ptr, ptr %39, align 8, !tbaa !61
  %990 = trunc i64 %987 to i32
  %991 = and i32 %990, %955
  %992 = lshr i32 %991, %946
  %993 = add nuw i32 %992, %956
  %994 = zext i32 %993 to i64
  %995 = getelementptr inbounds nuw [4 x i8], ptr %989, i64 %994
  %996 = getelementptr inbounds nuw i8, ptr %995, i64 1
  %997 = load i8, ptr %996, align 1, !tbaa !5
  %998 = zext i8 %997 to i32
  %999 = add nuw nsw i32 %946, %998
  %1000 = zext nneg i32 %999 to i64
  %1001 = icmp samesign ult i64 %indvars.iv.next637, %1000
  br i1 %1001, label %.preheader104, label %.loopexit105.loopexit

.loopexit105.loopexit:                            ; preds = %986
  %1002 = trunc nuw nsw i64 %indvars.iv.next637 to i32
  br label %.loopexit105

.loopexit105:                                     ; preds = %.loopexit105.loopexit, %951
  %1003 = phi i32 [ %941, %951 ], [ %988, %.loopexit105.loopexit ]
  %1004 = phi i64 [ %942, %951 ], [ %987, %.loopexit105.loopexit ]
  %1005 = phi i32 [ %943, %951 ], [ %1002, %.loopexit105.loopexit ]
  %1006 = phi ptr [ %962, %951 ], [ %995, %.loopexit105.loopexit ]
  %1007 = phi i8 [ %964, %951 ], [ %997, %.loopexit105.loopexit ]
  %1008 = getelementptr inbounds nuw i8, ptr %1006, i64 2
  %1009 = load i16, ptr %1008, align 2, !tbaa !45
  %1010 = load i8, ptr %1006, align 2, !tbaa !5
  %1011 = sub nuw i32 %1005, %946
  %1012 = zext nneg i8 %945 to i64
  %1013 = lshr i64 %1004, %1012
  br label %1014

1014:                                             ; preds = %.loopexit105, %939
  %1015 = phi i32 [ %1003, %.loopexit105 ], [ %941, %939 ]
  %1016 = phi i64 [ %1013, %.loopexit105 ], [ %942, %939 ]
  %1017 = phi i32 [ %1011, %.loopexit105 ], [ %943, %939 ]
  %1018 = phi i16 [ %1009, %.loopexit105 ], [ %948, %939 ]
  %1019 = phi i8 [ %1007, %.loopexit105 ], [ %945, %939 ]
  %1020 = phi i8 [ %1010, %.loopexit105 ], [ %949, %939 ]
  %1021 = zext i8 %1019 to i32
  %1022 = zext nneg i8 %1019 to i64
  %1023 = lshr i64 %1016, %1022
  %1024 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1017, i32 %1021), !nosanitize !34
  %1025 = extractvalue { i32, i1 } %1024, 0, !nosanitize !34
  %1026 = extractvalue { i32, i1 } %1024, 1, !nosanitize !34
  br i1 %1026, label %1027, label %1028, !prof !35, !nosanitize !34

1027:                                             ; preds = %1014
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1028:                                             ; preds = %1014
  %1029 = zext i8 %1020 to i32
  %1030 = and i32 %1029, 64
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1033, label %1032

1032:                                             ; preds = %1028
  store ptr @.str.10, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

1033:                                             ; preds = %1028
  %1034 = zext i16 %1018 to i32
  store i32 %1034, ptr %43, align 8, !tbaa !69
  %1035 = and i32 %1029, 15
  store i32 %1035, ptr %42, align 4, !tbaa !67
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1091, label %1037

1037:                                             ; preds = %1033
  %1038 = icmp ult i32 %1025, %1035
  br i1 %1038, label %1039, label %1069

1039:                                             ; preds = %1037
  %1040 = zext nneg i32 %1025 to i64
  br label %1041

1041:                                             ; preds = %1060, %1039
  %1042 = phi i64 [ %1040, %1039 ], [ %1063, %1060 ]
  %1043 = phi i64 [ %1023, %1039 ], [ %1061, %1060 ]
  %1044 = phi i32 [ %1015, %1039 ], [ %1062, %1060 ]
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1046, label %1050

1046:                                             ; preds = %1041
  %1047 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1049, label %1050

1049:                                             ; preds = %1046
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

1050:                                             ; preds = %1046, %1041
  %1051 = phi i32 [ %1047, %1046 ], [ %1044, %1041 ]
  %1052 = load ptr, ptr %6, align 8, !tbaa !32
  %1053 = getelementptr inbounds nuw i8, ptr %1052, i64 1
  store ptr %1053, ptr %6, align 8, !tbaa !32
  %1054 = load i8, ptr %1052, align 1, !tbaa !5
  %1055 = zext i8 %1054 to i64
  %1056 = shl i64 %1055, %1042
  %1057 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1043, i64 %1056), !nosanitize !34
  %1058 = extractvalue { i64, i1 } %1057, 1, !nosanitize !34
  br i1 %1058, label %1059, label %1060, !prof !35, !nosanitize !34

1059:                                             ; preds = %1050
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1060:                                             ; preds = %1050
  %1061 = extractvalue { i64, i1 } %1057, 0, !nosanitize !34
  %1062 = add i32 %1051, -1
  %1063 = add nuw nsw i64 %1042, 8
  %1064 = trunc nuw i64 %1063 to i32
  %1065 = load i32, ptr %42, align 4, !tbaa !67
  %1066 = icmp ugt i32 %1065, %1064
  br i1 %1066, label %1041, label %1067, !llvm.loop !70

1067:                                             ; preds = %1060
  %1068 = load i32, ptr %43, align 8, !tbaa !69
  br label %1069

1069:                                             ; preds = %1067, %1037
  %1070 = phi i32 [ %1034, %1037 ], [ %1068, %1067 ]
  %1071 = phi i32 [ %1015, %1037 ], [ %1062, %1067 ]
  %1072 = phi i64 [ %1023, %1037 ], [ %1061, %1067 ]
  %1073 = phi i32 [ %1025, %1037 ], [ %1064, %1067 ]
  %1074 = phi i32 [ %1035, %1037 ], [ %1065, %1067 ]
  %1075 = shl nsw i32 -1, %1074
  %1076 = xor i32 %1075, -1
  %1077 = trunc i64 %1072 to i32
  %1078 = and i32 %1076, %1077
  %1079 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1070, i32 %1078), !nosanitize !34
  %1080 = extractvalue { i32, i1 } %1079, 1, !nosanitize !34
  br i1 %1080, label %1081, label %1082, !prof !35, !nosanitize !34

1081:                                             ; preds = %1069
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1082:                                             ; preds = %1069
  %1083 = extractvalue { i32, i1 } %1079, 0, !nosanitize !34
  store i32 %1083, ptr %43, align 8, !tbaa !69
  %1084 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1073, i32 %1074), !nosanitize !34
  %1085 = extractvalue { i32, i1 } %1084, 1, !nosanitize !34
  br i1 %1085, label %1086, label %1087, !prof !35, !nosanitize !34

1086:                                             ; preds = %1082
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1087:                                             ; preds = %1082
  %1088 = extractvalue { i32, i1 } %1084, 0, !nosanitize !34
  %1089 = zext nneg i32 %1074 to i64
  %1090 = lshr i64 %1072, %1089
  br label %1091

1091:                                             ; preds = %1087, %1033
  %1092 = phi i32 [ %1083, %1087 ], [ %1034, %1033 ]
  %1093 = phi i32 [ %1071, %1087 ], [ %1015, %1033 ]
  %1094 = phi i64 [ %1090, %1087 ], [ %1023, %1033 ]
  %1095 = phi i32 [ %1088, %1087 ], [ %1025, %1033 ]
  %1096 = load i32, ptr %26, align 4, !tbaa !24
  %1097 = load i32, ptr %16, align 8, !tbaa !27
  %1098 = icmp ult i32 %1097, %1096
  %1099 = select i1 %1098, i32 %53, i32 0
  %1100 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1096, i32 %1099), !nosanitize !34
  %1101 = extractvalue { i32, i1 } %1100, 1, !nosanitize !34
  br i1 %1101, label %1102, label %1103, !prof !35, !nosanitize !34

1102:                                             ; preds = %1091
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1103:                                             ; preds = %1091
  %1104 = extractvalue { i32, i1 } %1100, 0, !nosanitize !34
  %1105 = icmp ugt i32 %1092, %1104
  br i1 %1105, label %1106, label %.preheader101

1106:                                             ; preds = %1103
  store ptr @.str.11, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit103

.preheader101:                                    ; preds = %1103, %.loopexit1301
  %1107 = phi ptr [ %.lcssa1112, %.loopexit1301 ], [ %51, %1103 ]
  %1108 = phi i32 [ %1134, %.loopexit1301 ], [ %53, %1103 ]
  %1109 = icmp eq i32 %1108, 0
  %1110 = load i32, ptr %26, align 4, !tbaa !24
  br i1 %1109, label %1111, label %1117

1111:                                             ; preds = %.preheader101
  %1112 = load ptr, ptr %24, align 8, !tbaa !25
  store i32 %1110, ptr %16, align 8, !tbaa !27
  %1113 = call i32 %3(ptr noundef %4, ptr noundef %1112, i32 noundef %1110) #6
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1115, label %.loopexit

1115:                                             ; preds = %1111
  %1116 = load i32, ptr %26, align 4, !tbaa !24
  br label %1117

1117:                                             ; preds = %1115, %.preheader101
  %1118 = phi i32 [ %1116, %1115 ], [ %1110, %.preheader101 ]
  %1119 = phi ptr [ %1112, %1115 ], [ %1107, %.preheader101 ]
  %1120 = phi i32 [ %1110, %1115 ], [ %1108, %.preheader101 ]
  %1121 = load i32, ptr %43, align 8, !tbaa !69
  %1122 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1118, i32 %1121), !nosanitize !34
  %1123 = extractvalue { i32, i1 } %1122, 1, !nosanitize !34
  br i1 %1123, label %1124, label %1125, !prof !35, !nosanitize !34

1124:                                             ; preds = %1117
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1125:                                             ; preds = %1117
  %1126 = extractvalue { i32, i1 } %1122, 0, !nosanitize !34
  %1127 = icmp ult i32 %1126, %1120
  %1128 = select i1 %1127, i32 %1126, i32 0
  %1129 = sub i32 %1120, %1128
  %1130 = load i32, ptr %41, align 4, !tbaa !38
  %1131 = call i32 @llvm.umin.i32(i32 %1129, i32 %1130)
  %1132 = sub i32 %1130, %1131
  store i32 %1132, ptr %41, align 4, !tbaa !38
  %1133 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1120, i32 %1131), !nosanitize !34
  %1134 = extractvalue { i32, i1 } %1133, 0, !nosanitize !34
  %1135 = extractvalue { i32, i1 } %1133, 1, !nosanitize !34
  br i1 %1135, label %1164, label %1136, !prof !35, !nosanitize !34

1136:                                             ; preds = %1125
  %1137 = zext i32 %1126 to i64
  %1138 = zext i32 %1121 to i64
  %1139 = sub nsw i64 0, %1138
  %1140 = select i1 %1127, i64 %1137, i64 %1139
  %1141 = getelementptr inbounds i8, ptr %1119, i64 %1140
  %.not.not = icmp eq i32 %1131, 0
  br i1 %.not.not, label %.split.us, label %iter.check, !prof !35, !nosanitize !34

iter.check:                                       ; preds = %1136
  %1142 = call i32 @llvm.umin.i32(i32 %1130, i32 %1129)
  %umin = zext i32 %1142 to i64
  %min.iters.check = icmp ult i32 %1142, 4
  %1143 = add nsw i64 %1140, 31
  %diff.check = icmp ult i64 %1143, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1284 = icmp ult i32 %1142, 32
  br i1 %min.iters.check1284, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %umin, 28
  %n.vec = and i64 %umin, 4294967264
  %1144 = getelementptr i8, ptr %1119, i64 %n.vec
  %.cast = trunc nuw i64 %n.vec to i32
  %1145 = sub i32 %1131, %.cast
  %1146 = getelementptr i8, ptr %1141, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, ptr %1119, i64 %index
  %next.gep1285 = getelementptr i8, ptr %1141, i64 %index
  %1147 = getelementptr i8, ptr %next.gep1285, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep1285, align 1, !tbaa !5
  %wide.load1286 = load <16 x i8>, ptr %1147, align 1, !tbaa !5
  %1148 = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !5
  store <16 x i8> %wide.load1286, ptr %1148, align 1, !tbaa !5
  %index.next = add nuw i64 %index, 32
  %1149 = icmp eq i64 %index.next, %n.vec
  br i1 %1149, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %umin
  br i1 %cmp.n, label %.loopexit1301, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.split.preheader, label %vec.epilog.ph, !prof !74

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1290 = and i64 %umin, 4294967292
  %1150 = getelementptr i8, ptr %1119, i64 %n.vec1290
  %.cast1291 = trunc nuw i64 %n.vec1290 to i32
  %1151 = sub i32 %1131, %.cast1291
  %1152 = getelementptr i8, ptr %1141, i64 %n.vec1290
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1292 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1296, %vec.epilog.vector.body ]
  %next.gep1293 = getelementptr i8, ptr %1119, i64 %index1292
  %next.gep1294 = getelementptr i8, ptr %1141, i64 %index1292
  %wide.load1295 = load <4 x i8>, ptr %next.gep1294, align 1, !tbaa !5
  store <4 x i8> %wide.load1295, ptr %next.gep1293, align 1, !tbaa !5
  %index.next1296 = add nuw i64 %index1292, 4
  %1153 = icmp eq i64 %index.next1296, %n.vec1290
  br i1 %1153, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !75

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1297 = icmp eq i64 %n.vec1290, %umin
  br i1 %cmp.n1297, label %.loopexit1301, label %.split.preheader

.split.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %1119, %iter.check ], [ %1144, %vec.epilog.iter.check ], [ %1150, %vec.epilog.middle.block ]
  %.ph1302 = phi i32 [ %1131, %iter.check ], [ %1145, %vec.epilog.iter.check ], [ %1151, %vec.epilog.middle.block ]
  %.ph1303 = phi ptr [ %1141, %iter.check ], [ %1146, %vec.epilog.iter.check ], [ %1152, %vec.epilog.middle.block ]
  %1154 = add i32 %.ph1302, -1
  %xtraiter = and i32 %.ph1302, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.prol.loopexit, label %.split.prol

.split.prol:                                      ; preds = %.split.preheader, %.split.prol
  %1155 = phi ptr [ %1159, %.split.prol ], [ %.ph, %.split.preheader ]
  %1156 = phi i32 [ %1160, %.split.prol ], [ %.ph1302, %.split.preheader ]
  %1157 = phi ptr [ %1161, %.split.prol ], [ %.ph1303, %.split.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.split.prol ], [ 0, %.split.preheader ]
  %1158 = load i8, ptr %1157, align 1, !tbaa !5
  store i8 %1158, ptr %1155, align 1, !tbaa !5
  %1159 = getelementptr inbounds nuw i8, ptr %1155, i64 1
  %1160 = add i32 %1156, -1
  %1161 = getelementptr inbounds nuw i8, ptr %1157, i64 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.split.prol.loopexit, label %.split.prol, !llvm.loop !76

.split.prol.loopexit:                             ; preds = %.split.prol, %.split.preheader
  %.lcssa1402.unr = phi ptr [ poison, %.split.preheader ], [ %1159, %.split.prol ]
  %.unr = phi ptr [ %.ph, %.split.preheader ], [ %1159, %.split.prol ]
  %.unr1572 = phi i32 [ %.ph1302, %.split.preheader ], [ %1160, %.split.prol ]
  %.unr1573 = phi ptr [ %.ph1303, %.split.preheader ], [ %1161, %.split.prol ]
  %1162 = icmp ult i32 %1154, 7
  br i1 %1162, label %.loopexit1301, label %.split

.split.us:                                        ; preds = %1136
  %1163 = load i8, ptr %1141, align 1, !tbaa !5
  store i8 %1163, ptr %1119, align 1, !tbaa !5
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1164:                                             ; preds = %1125
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

.split:                                           ; preds = %.split.prol.loopexit, %.split
  %1165 = phi ptr [ %1190, %.split ], [ %.unr, %.split.prol.loopexit ]
  %1166 = phi i32 [ %1191, %.split ], [ %.unr1572, %.split.prol.loopexit ]
  %1167 = phi ptr [ %1192, %.split ], [ %.unr1573, %.split.prol.loopexit ]
  %1168 = load i8, ptr %1167, align 1, !tbaa !5
  store i8 %1168, ptr %1165, align 1, !tbaa !5
  %1169 = getelementptr inbounds nuw i8, ptr %1165, i64 1
  %1170 = getelementptr inbounds nuw i8, ptr %1167, i64 1
  %1171 = load i8, ptr %1170, align 1, !tbaa !5
  store i8 %1171, ptr %1169, align 1, !tbaa !5
  %1172 = getelementptr inbounds nuw i8, ptr %1165, i64 2
  %1173 = getelementptr inbounds nuw i8, ptr %1167, i64 2
  %1174 = load i8, ptr %1173, align 1, !tbaa !5
  store i8 %1174, ptr %1172, align 1, !tbaa !5
  %1175 = getelementptr inbounds nuw i8, ptr %1165, i64 3
  %1176 = getelementptr inbounds nuw i8, ptr %1167, i64 3
  %1177 = load i8, ptr %1176, align 1, !tbaa !5
  store i8 %1177, ptr %1175, align 1, !tbaa !5
  %1178 = getelementptr inbounds nuw i8, ptr %1165, i64 4
  %1179 = getelementptr inbounds nuw i8, ptr %1167, i64 4
  %1180 = load i8, ptr %1179, align 1, !tbaa !5
  store i8 %1180, ptr %1178, align 1, !tbaa !5
  %1181 = getelementptr inbounds nuw i8, ptr %1165, i64 5
  %1182 = getelementptr inbounds nuw i8, ptr %1167, i64 5
  %1183 = load i8, ptr %1182, align 1, !tbaa !5
  store i8 %1183, ptr %1181, align 1, !tbaa !5
  %1184 = getelementptr inbounds nuw i8, ptr %1165, i64 6
  %1185 = getelementptr inbounds nuw i8, ptr %1167, i64 6
  %1186 = load i8, ptr %1185, align 1, !tbaa !5
  store i8 %1186, ptr %1184, align 1, !tbaa !5
  %1187 = getelementptr inbounds nuw i8, ptr %1165, i64 7
  %1188 = getelementptr inbounds nuw i8, ptr %1167, i64 7
  %1189 = load i8, ptr %1188, align 1, !tbaa !5
  store i8 %1189, ptr %1187, align 1, !tbaa !5
  %1190 = getelementptr inbounds nuw i8, ptr %1165, i64 8
  %1191 = add i32 %1166, -8
  %1192 = getelementptr inbounds nuw i8, ptr %1167, i64 8
  %1193 = icmp eq i32 %1191, 0
  br i1 %1193, label %.loopexit1301, label %.split, !llvm.loop !78

.loopexit1301:                                    ; preds = %.split.prol.loopexit, %.split, %vec.epilog.middle.block, %middle.block
  %.lcssa1112 = phi ptr [ %1150, %vec.epilog.middle.block ], [ %1144, %middle.block ], [ %.lcssa1402.unr, %.split.prol.loopexit ], [ %1190, %.split ]
  %1194 = load i32, ptr %41, align 4, !tbaa !38
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %.loopexit103, label %.preheader101, !llvm.loop !79

.loopexit103:                                     ; preds = %.loopexit1301, %1106, %1032, %825, %821, %815, %657, %633, %624, %620, %.loopexit110, %583, %454, %309, %245, %.loopexit100, %149, %102, %68
  %1196 = phi ptr [ %51, %68 ], [ %51, %102 ], [ %51, %149 ], [ %198, %.loopexit100 ], [ %51, %245 ], [ %51, %309 ], [ %51, %.loopexit110 ], [ %51, %620 ], [ %51, %624 ], [ %51, %633 ], [ %660, %657 ], [ %817, %815 ], [ %51, %821 ], [ %51, %825 ], [ %51, %1032 ], [ %51, %1106 ], [ %51, %583 ], [ %51, %454 ], [ %.lcssa1112, %.loopexit1301 ]
  %1197 = phi i32 [ %52, %68 ], [ %92, %102 ], [ %142, %149 ], [ %199, %.loopexit100 ], [ %228, %245 ], [ %277, %309 ], [ %614, %.loopexit110 ], [ %614, %620 ], [ %614, %624 ], [ %614, %633 ], [ %663, %657 ], [ %781, %815 ], [ %781, %821 ], [ %781, %825 ], [ %1015, %1032 ], [ %1093, %1106 ], [ %551, %583 ], [ %446, %454 ], [ %1093, %.loopexit1301 ]
  %1198 = phi i32 [ %53, %68 ], [ %53, %102 ], [ %53, %149 ], [ %200, %.loopexit100 ], [ %53, %245 ], [ %53, %309 ], [ %53, %.loopexit110 ], [ %53, %620 ], [ %53, %624 ], [ %53, %633 ], [ %661, %657 ], [ %816, %815 ], [ %53, %821 ], [ %53, %825 ], [ %53, %1032 ], [ %53, %1106 ], [ %53, %583 ], [ %53, %454 ], [ %1134, %.loopexit1301 ]
  %1199 = phi i64 [ %72, %68 ], [ %105, %102 ], [ %143, %149 ], [ 0, %.loopexit100 ], [ %240, %245 ], [ %293, %309 ], [ %613, %.loopexit110 ], [ %613, %620 ], [ %613, %624 ], [ %613, %633 ], [ %664, %657 ], [ %789, %815 ], [ %789, %821 ], [ %789, %825 ], [ %1023, %1032 ], [ %1094, %1106 ], [ %552, %583 ], [ %450, %454 ], [ %1094, %.loopexit1301 ]
  %1200 = phi i32 [ %70, %68 ], [ %104, %102 ], [ %144, %149 ], [ 0, %.loopexit100 ], [ %241, %245 ], [ %292, %309 ], [ %612, %.loopexit110 ], [ %612, %620 ], [ %612, %624 ], [ %612, %633 ], [ %665, %657 ], [ %791, %815 ], [ %791, %821 ], [ %791, %825 ], [ %1025, %1032 ], [ %1095, %1106 ], [ %556, %583 ], [ %451, %454 ], [ %1095, %.loopexit1301 ]
  %1201 = load i32, ptr %14, align 8, !tbaa !29
  br label %49

.loopexit.loopexit1017:                           ; preds = %49
  br label %.loopexit

.loopexit.loopexit1305:                           ; preds = %49
  br label %.loopexit

.loopexit:                                        ; preds = %800, %1111, %166, %49, %.loopexit.loopexit1305, %.loopexit.loopexit1017, %1049, %975, %909, %841, %741, %674, %517, %476, %427, %346, %263, %209, %162, %123, %76
  %1202 = phi i32 [ 0, %76 ], [ 0, %123 ], [ 0, %162 ], [ 0, %209 ], [ 0, %263 ], [ 0, %427 ], [ 0, %841 ], [ 0, %1049 ], [ 0, %975 ], [ 0, %909 ], [ 0, %741 ], [ 0, %674 ], [ 0, %476 ], [ 0, %517 ], [ 0, %346 ], [ %1093, %1111 ], [ %164, %166 ], [ %52, %.loopexit.loopexit1017 ], [ %52, %49 ], [ %781, %800 ], [ %52, %.loopexit.loopexit1305 ]
  %1203 = phi i32 [ %53, %76 ], [ %53, %123 ], [ %154, %162 ], [ %53, %209 ], [ %53, %263 ], [ %53, %427 ], [ %53, %841 ], [ %53, %1049 ], [ %53, %975 ], [ %53, %909 ], [ %53, %741 ], [ %53, %674 ], [ %53, %476 ], [ %53, %517 ], [ %53, %346 ], [ %1110, %1111 ], [ %168, %166 ], [ %53, %.loopexit.loopexit1017 ], [ %53, %49 ], [ %802, %800 ], [ %53, %.loopexit.loopexit1305 ]
  %1204 = phi i1 [ false, %76 ], [ false, %123 ], [ false, %162 ], [ false, %209 ], [ false, %263 ], [ false, %427 ], [ false, %841 ], [ false, %1049 ], [ false, %975 ], [ false, %909 ], [ false, %741 ], [ false, %674 ], [ false, %476 ], [ false, %517 ], [ false, %346 ], [ false, %1111 ], [ false, %166 ], [ false, %.loopexit.loopexit1017 ], [ false, %49 ], [ false, %800 ], [ true, %.loopexit.loopexit1305 ]
  %1205 = phi i32 [ -5, %76 ], [ -5, %123 ], [ -5, %162 ], [ -5, %209 ], [ -5, %263 ], [ -5, %427 ], [ -5, %841 ], [ -5, %1049 ], [ -5, %975 ], [ -5, %909 ], [ -5, %741 ], [ -5, %674 ], [ -5, %476 ], [ -5, %517 ], [ -5, %346 ], [ -5, %1111 ], [ -5, %166 ], [ -2, %.loopexit.loopexit1017 ], [ -3, %49 ], [ -5, %800 ], [ 1, %.loopexit.loopexit1305 ]
  %1206 = load i32, ptr %26, align 4, !tbaa !24
  %1207 = icmp ult i32 %1203, %1206
  br i1 %1207, label %1208, label %1215

1208:                                             ; preds = %.loopexit
  %1209 = sub nuw i32 %1206, %1203
  %1210 = load ptr, ptr %24, align 8, !tbaa !25
  %1211 = call i32 %3(ptr noundef %4, ptr noundef %1210, i32 noundef %1209) #6
  %1212 = icmp ne i32 %1211, 0
  %1213 = and i1 %1204, %1212
  %1214 = select i1 %1213, i32 -5, i32 %1205
  br label %1215

1215:                                             ; preds = %1208, %.loopexit
  %1216 = phi i32 [ %1214, %1208 ], [ %1205, %.loopexit ]
  %1217 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %1217, ptr %0, align 8, !tbaa !31
  store i32 %1202, ptr %46, align 8, !tbaa !33
  br label %1218

1218:                                             ; preds = %1215, %8, %5
  %1219 = phi i32 [ %1216, %1215 ], [ -2, %8 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i32 %1219
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
