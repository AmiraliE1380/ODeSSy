; ModuleID = '/mydata/zlib/infback.c'
source_filename = "/mydata/zlib/infback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { ptr, i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }
%struct.code = type { i8, i8, i16 }

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
define dso_local noundef i32 @inflateBackInit_(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
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
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %20, align 8, !tbaa !8
  %21 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  store ptr @zcalloc, ptr %21, align 8, !tbaa !13
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %25, align 8, !tbaa !14
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ @zcalloc, %24 ], [ %22, %19 ]
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store ptr @zcfree, ptr %28, align 8, !tbaa !15
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !14
  %35 = tail call ptr %27(ptr noundef %34, i32 noundef 1, i32 noundef 7160) #7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %35, ptr %38, align 8, !tbaa !16
  %39 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 6
  store i32 32768, ptr %39, align 4, !tbaa !17
  %40 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 10
  store i32 %1, ptr %40, align 8, !tbaa !19
  %41 = shl nuw nsw i32 1, %1
  %42 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 11
  store i32 %41, ptr %42, align 4, !tbaa !20
  %43 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 14
  store ptr %2, ptr %43, align 8, !tbaa !21
  %44 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 13
  store i32 0, ptr %44, align 4, !tbaa !22
  %45 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 12
  store i32 0, ptr %45, align 8, !tbaa !23
  %46 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 32
  store i32 1, ptr %46, align 8, !tbaa !24
  br label %47

47:                                               ; preds = %32, %12, %5, %7, %37
  %48 = phi i32 [ 0, %37 ], [ -6, %7 ], [ -6, %5 ], [ -2, %12 ], [ -4, %32 ]
  ret i32 %48
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #2

declare void @zcfree(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @inflateBack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  %7 = icmp eq ptr %0, null
  br i1 %7, label %1159, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1159, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %13, align 8, !tbaa !8
  %14 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 1
  store i32 16191, ptr %14, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 2
  store i32 0, ptr %15, align 4, !tbaa !26
  %16 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 12
  store i32 0, ptr %16, align 8, !tbaa !23
  %17 = load ptr, ptr %0, align 8, !tbaa !27
  store ptr %17, ptr %6, align 8, !tbaa !28
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !29
  br label %22

22:                                               ; preds = %12, %19
  %23 = phi i32 [ %21, %19 ], [ 0, %12 ]
  %24 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !21
  %26 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 11
  %27 = load i32, ptr %26, align 4, !tbaa !20
  %28 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 25
  %29 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 26
  %30 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 24
  %31 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 27
  %32 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 31
  %33 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 28
  %34 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 20
  %35 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 22
  %36 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29
  %37 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 30
  %38 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 256
  %39 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 21
  %40 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 23
  %41 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 17
  %42 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 19
  %43 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 18
  %44 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %45 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %46 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %47 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 15
  %48 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 16
  br label %49

49:                                               ; preds = %1133, %22
  %50 = phi i32 [ 16191, %22 ], [ %1139, %1133 ]
  %51 = phi ptr [ %25, %22 ], [ %1134, %1133 ]
  %52 = phi i32 [ %23, %22 ], [ %1135, %1133 ]
  %53 = phi i32 [ %27, %22 ], [ %1136, %1133 ]
  %54 = phi i64 [ 0, %22 ], [ %1137, %1133 ]
  %55 = phi i32 [ 0, %22 ], [ %1138, %1133 ]
  switch i32 %50, label %1142 [
    i32 16191, label %60
    i32 16193, label %110
    i32 16196, label %56
    i32 16200, label %612
    i32 16208, label %1140
    i32 16209, label %1141
  ]

56:                                               ; preds = %49
  %57 = icmp ult i32 %55, 14
  br i1 %57, label %58, label %231

58:                                               ; preds = %56
  %59 = zext nneg i32 %55 to i64
  br label %206

60:                                               ; preds = %49
  %61 = load i32, ptr %15, align 4, !tbaa !26
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = icmp ult i32 %55, 3
  br i1 %64, label %65, label %95

65:                                               ; preds = %63
  %66 = or disjoint i32 %55, 8
  %67 = icmp eq i32 %52, 0
  br i1 %67, label %77, label %81

68:                                               ; preds = %60
  %69 = and i32 %55, 7
  %70 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 %69), !nosanitize !30
  %71 = extractvalue { i32, i1 } %70, 1, !nosanitize !30
  br i1 %71, label %72, label %73, !nosanitize !30

72:                                               ; preds = %1065, %1057, %989, %850, %783, %757, %529, %490, %453, %110, %68, %389, %1107, %1098, %1091, %194, %188, %178, %1118, %572
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !30
  unreachable, !nosanitize !30

73:                                               ; preds = %68
  %74 = extractvalue { i32, i1 } %70, 0, !nosanitize !30
  %75 = zext nneg i32 %69 to i64
  %76 = lshr i64 %54, %75
  store i32 16208, ptr %14, align 8, !tbaa !25
  br label %1133

77:                                               ; preds = %65
  %78 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1142

81:                                               ; preds = %77, %65
  %82 = phi i32 [ %78, %77 ], [ %52, %65 ]
  %83 = load ptr, ptr %6, align 8, !tbaa !28
  %84 = getelementptr inbounds i8, ptr %83, i64 1
  store ptr %84, ptr %6, align 8, !tbaa !28
  %85 = load i8, ptr %83, align 1, !tbaa !5
  %86 = zext i8 %85 to i64
  %87 = zext nneg i32 %55 to i64
  %88 = shl nuw nsw i64 %86, %87
  %89 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %54, i64 %88), !nosanitize !30
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !30
  br i1 %90, label %91, label %92, !nosanitize !30

91:                                               ; preds = %1045, %838, %554, %543, %313, %81, %215, %279, %579, %395, %474, %427, %513, %652, %719, %817, %885, %951, %1024, %131, %351, %567
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !30
  unreachable, !nosanitize !30

92:                                               ; preds = %81
  %93 = extractvalue { i64, i1 } %89, 0, !nosanitize !30
  %94 = add i32 %82, -1
  br label %95

95:                                               ; preds = %92, %63
  %96 = phi i32 [ %94, %92 ], [ %52, %63 ]
  %97 = phi i64 [ %93, %92 ], [ %54, %63 ]
  %98 = phi i32 [ %66, %92 ], [ %55, %63 ]
  %99 = trunc i64 %97 to i32
  %100 = and i32 %99, 1
  store i32 %100, ptr %15, align 4, !tbaa !26
  %101 = lshr i32 %99, 1
  %102 = and i32 %101, 3
  switch i32 %102, label %105 [
    i32 0, label %106
    i32 1, label %103
    i32 2, label %104
  ]

103:                                              ; preds = %95
  call void @inflate_fixed(ptr noundef nonnull %10) #7
  br label %106

104:                                              ; preds = %95
  br label %106

105:                                              ; preds = %95
  store ptr @.str.1, ptr %13, align 8, !tbaa !8
  br label %106

106:                                              ; preds = %95, %105, %104, %103
  %107 = phi i32 [ 16209, %105 ], [ 16196, %104 ], [ 16200, %103 ], [ 16193, %95 ]
  store i32 %107, ptr %14, align 8, !tbaa !25
  %108 = add i32 %98, -3
  %109 = lshr i64 %97, 3
  br label %1133

110:                                              ; preds = %49
  %111 = and i32 %55, 7
  %112 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 %111), !nosanitize !30
  %113 = extractvalue { i32, i1 } %112, 1, !nosanitize !30
  br i1 %113, label %72, label %114, !nosanitize !30

114:                                              ; preds = %110
  %115 = zext nneg i32 %111 to i64
  %116 = lshr i64 %54, %115
  %117 = extractvalue { i32, i1 } %112, 0
  %118 = icmp ult i32 %117, 32
  br i1 %118, label %119, label %147

119:                                              ; preds = %114
  %120 = and i32 %55, -8
  %121 = zext i32 %120 to i64
  br label %122

122:                                              ; preds = %119, %140
  %123 = phi i64 [ %121, %119 ], [ %143, %140 ]
  %124 = phi i64 [ %116, %119 ], [ %141, %140 ]
  %125 = phi i32 [ %52, %119 ], [ %142, %140 ]
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1142

131:                                              ; preds = %127, %122
  %132 = phi i32 [ %128, %127 ], [ %125, %122 ]
  %133 = load ptr, ptr %6, align 8, !tbaa !28
  %134 = getelementptr inbounds i8, ptr %133, i64 1
  store ptr %134, ptr %6, align 8, !tbaa !28
  %135 = load i8, ptr %133, align 1, !tbaa !5
  %136 = zext i8 %135 to i64
  %137 = shl nuw nsw i64 %136, %123
  %138 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 %137), !nosanitize !30
  %139 = extractvalue { i64, i1 } %138, 1, !nosanitize !30
  br i1 %139, label %91, label %140, !nosanitize !30

140:                                              ; preds = %131
  %141 = extractvalue { i64, i1 } %138, 0, !nosanitize !30
  %142 = add i32 %132, -1
  %143 = add nuw nsw i64 %123, 8
  %144 = icmp ult i64 %123, 24
  br i1 %144, label %122, label %145, !llvm.loop !31

145:                                              ; preds = %140
  %146 = trunc i64 %143 to i32
  br label %147

147:                                              ; preds = %145, %114
  %148 = phi i32 [ %52, %114 ], [ %142, %145 ]
  %149 = phi i64 [ %116, %114 ], [ %141, %145 ]
  %150 = phi i32 [ %117, %114 ], [ %146, %145 ]
  %151 = and i64 %149, 65535
  %152 = lshr i64 %149, 16
  %153 = xor i64 %152, %151
  %154 = icmp eq i64 %153, 65535
  br i1 %154, label %156, label %155

155:                                              ; preds = %147
  store ptr @.str.2, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1133

156:                                              ; preds = %147
  %157 = trunc i64 %149 to i32
  %158 = and i32 %157, 65535
  store i32 %158, ptr %41, align 4, !tbaa !33
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %202, label %160

160:                                              ; preds = %156, %198
  %161 = phi i32 [ %192, %198 ], [ %53, %156 ]
  %162 = phi i32 [ %186, %198 ], [ %148, %156 ]
  %163 = phi ptr [ %200, %198 ], [ %51, %156 ]
  %164 = phi i32 [ %199, %198 ], [ %158, %156 ]
  %165 = icmp eq i32 %162, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %160
  %167 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1142

170:                                              ; preds = %160, %166
  %171 = phi i32 [ %167, %166 ], [ %162, %160 ]
  %172 = icmp eq i32 %161, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = load ptr, ptr %24, align 8, !tbaa !21
  %175 = load i32, ptr %26, align 4, !tbaa !20
  store i32 %175, ptr %16, align 8, !tbaa !23
  %176 = call i32 %3(ptr noundef %4, ptr noundef %174, i32 noundef %175) #7
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %1142

178:                                              ; preds = %173, %170
  %179 = phi ptr [ %174, %173 ], [ %163, %170 ]
  %180 = phi i32 [ %175, %173 ], [ %161, %170 ]
  %181 = call i32 @llvm.umin.i32(i32 %164, i32 %171)
  %182 = call i32 @llvm.umin.i32(i32 %181, i32 %180)
  %183 = load ptr, ptr %6, align 8, !tbaa !28
  %184 = zext i32 %182 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %179, ptr align 1 %183, i64 %184, i1 false)
  %185 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %171, i32 %182), !nosanitize !30
  %186 = extractvalue { i32, i1 } %185, 0, !nosanitize !30
  %187 = extractvalue { i32, i1 } %185, 1, !nosanitize !30
  br i1 %187, label %72, label %188, !nosanitize !30

188:                                              ; preds = %178
  %189 = load ptr, ptr %6, align 8, !tbaa !28
  %190 = getelementptr inbounds i8, ptr %189, i64 %184
  store ptr %190, ptr %6, align 8, !tbaa !28
  %191 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %180, i32 %182), !nosanitize !30
  %192 = extractvalue { i32, i1 } %191, 0, !nosanitize !30
  %193 = extractvalue { i32, i1 } %191, 1, !nosanitize !30
  br i1 %193, label %72, label %194, !nosanitize !30

194:                                              ; preds = %188
  %195 = load i32, ptr %41, align 4, !tbaa !33
  %196 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %195, i32 %182), !nosanitize !30
  %197 = extractvalue { i32, i1 } %196, 1, !nosanitize !30
  br i1 %197, label %72, label %198, !nosanitize !30

198:                                              ; preds = %194
  %199 = extractvalue { i32, i1 } %196, 0, !nosanitize !30
  %200 = getelementptr inbounds i8, ptr %179, i64 %184
  store i32 %199, ptr %41, align 4, !tbaa !33
  %201 = icmp eq i32 %199, 0
  br i1 %201, label %202, label %160, !llvm.loop !34

202:                                              ; preds = %198, %156
  %203 = phi ptr [ %51, %156 ], [ %200, %198 ]
  %204 = phi i32 [ %148, %156 ], [ %186, %198 ]
  %205 = phi i32 [ %53, %156 ], [ %192, %198 ]
  store i32 16191, ptr %14, align 8, !tbaa !25
  br label %1133

206:                                              ; preds = %58, %224
  %207 = phi i64 [ %59, %58 ], [ %227, %224 ]
  %208 = phi i64 [ %54, %58 ], [ %225, %224 ]
  %209 = phi i32 [ %52, %58 ], [ %226, %224 ]
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1142

215:                                              ; preds = %211, %206
  %216 = phi i32 [ %212, %211 ], [ %209, %206 ]
  %217 = load ptr, ptr %6, align 8, !tbaa !28
  %218 = getelementptr inbounds i8, ptr %217, i64 1
  store ptr %218, ptr %6, align 8, !tbaa !28
  %219 = load i8, ptr %217, align 1, !tbaa !5
  %220 = zext i8 %219 to i64
  %221 = shl nuw nsw i64 %220, %207
  %222 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %208, i64 %221), !nosanitize !30
  %223 = extractvalue { i64, i1 } %222, 1, !nosanitize !30
  br i1 %223, label %91, label %224, !nosanitize !30

224:                                              ; preds = %215
  %225 = extractvalue { i64, i1 } %222, 0, !nosanitize !30
  %226 = add i32 %216, -1
  %227 = add nuw nsw i64 %207, 8
  %228 = icmp ult i64 %207, 6
  br i1 %228, label %206, label %229, !llvm.loop !35

229:                                              ; preds = %224
  %230 = trunc i64 %227 to i32
  br label %231

231:                                              ; preds = %229, %56
  %232 = phi i32 [ %52, %56 ], [ %226, %229 ]
  %233 = phi i64 [ %54, %56 ], [ %225, %229 ]
  %234 = phi i32 [ %55, %56 ], [ %230, %229 ]
  %235 = trunc i64 %233 to i32
  %236 = and i32 %235, 31
  %237 = add nuw nsw i32 %236, 257
  store i32 %237, ptr %28, align 4, !tbaa !36
  %238 = lshr i32 %235, 5
  %239 = and i32 %238, 31
  %240 = add nuw nsw i32 %239, 1
  store i32 %240, ptr %29, align 8, !tbaa !37
  %241 = lshr i32 %235, 10
  %242 = and i32 %241, 15
  %243 = add nuw nsw i32 %242, 4
  store i32 %243, ptr %30, align 8, !tbaa !38
  %244 = lshr i64 %233, 14
  %245 = add i32 %234, -14
  %246 = icmp ugt i32 %236, 29
  %247 = icmp ugt i32 %239, 29
  %248 = or i1 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %231
  store ptr @.str.3, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1133

250:                                              ; preds = %231
  store i32 0, ptr %31, align 4, !tbaa !39
  br label %255

251:                                              ; preds = %286
  %252 = icmp ult i32 %287, 19
  br i1 %252, label %253, label %309

253:                                              ; preds = %251
  %254 = zext nneg i32 %287 to i64
  br label %299

255:                                              ; preds = %250, %286
  %256 = phi i32 [ %287, %286 ], [ 0, %250 ]
  %257 = phi i32 [ %295, %286 ], [ %245, %250 ]
  %258 = phi i64 [ %296, %286 ], [ %244, %250 ]
  %259 = phi i32 [ %281, %286 ], [ %232, %250 ]
  %260 = icmp ult i32 %257, 3
  br i1 %260, label %261, label %279

261:                                              ; preds = %255
  %262 = or disjoint i32 %257, 8
  %263 = icmp eq i32 %259, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %261
  %265 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1142

268:                                              ; preds = %261, %264
  %269 = phi i32 [ %265, %264 ], [ %259, %261 ]
  %270 = load ptr, ptr %6, align 8, !tbaa !28
  %271 = getelementptr inbounds i8, ptr %270, i64 1
  store ptr %271, ptr %6, align 8, !tbaa !28
  %272 = load i8, ptr %270, align 1, !tbaa !5
  %273 = zext i8 %272 to i64
  %274 = zext nneg i32 %257 to i64
  %275 = shl nuw nsw i64 %273, %274
  %276 = add nuw nsw i64 %258, %275
  %277 = add i32 %269, -1
  %278 = load i32, ptr %31, align 4, !tbaa !39
  br label %279

279:                                              ; preds = %268, %255
  %280 = phi i32 [ %278, %268 ], [ %256, %255 ]
  %281 = phi i32 [ %277, %268 ], [ %259, %255 ]
  %282 = phi i64 [ %276, %268 ], [ %258, %255 ]
  %283 = phi i32 [ %262, %268 ], [ %257, %255 ]
  %284 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %280, i32 1), !nosanitize !30
  %285 = extractvalue { i32, i1 } %284, 1, !nosanitize !30
  br i1 %285, label %91, label %286, !nosanitize !30

286:                                              ; preds = %279
  %287 = extractvalue { i32, i1 } %284, 0, !nosanitize !30
  %288 = trunc i64 %282 to i16
  %289 = and i16 %288, 7
  store i32 %287, ptr %31, align 4, !tbaa !39
  %290 = zext i32 %280 to i64
  %291 = getelementptr inbounds [19 x i16], ptr @inflateBack.order, i64 0, i64 %290
  %292 = load i16, ptr %291, align 2, !tbaa !40
  %293 = zext i16 %292 to i64
  %294 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %293
  store i16 %289, ptr %294, align 2, !tbaa !40
  %295 = add i32 %283, -3
  %296 = lshr i64 %282, 3
  %297 = load i32, ptr %30, align 8, !tbaa !38
  %298 = icmp ult i32 %287, %297
  br i1 %298, label %255, label %251, !llvm.loop !42

299:                                              ; preds = %253, %299
  %300 = phi i64 [ %254, %253 ], [ %301, %299 ]
  %301 = add nuw nsw i64 %300, 1
  %302 = getelementptr inbounds [19 x i16], ptr @inflateBack.order, i64 0, i64 %300
  %303 = load i16, ptr %302, align 2, !tbaa !40
  %304 = zext i16 %303 to i64
  %305 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %304
  store i16 0, ptr %305, align 2, !tbaa !40
  %306 = and i64 %301, 4294967295
  %307 = icmp eq i64 %306, 19
  br i1 %307, label %308, label %299, !llvm.loop !43

308:                                              ; preds = %299
  store i32 19, ptr %31, align 4, !tbaa !39
  br label %309

309:                                              ; preds = %308, %251
  store ptr %32, ptr %33, align 8, !tbaa !44
  store ptr %32, ptr %34, align 8, !tbaa !45
  store i32 7, ptr %35, align 8, !tbaa !46
  %310 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %36, i32 noundef 19, ptr noundef nonnull %33, ptr noundef nonnull %35, ptr noundef nonnull %37) #7
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %309
  store ptr @.str.4, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1133

313:                                              ; preds = %309
  store i32 0, ptr %31, align 4, !tbaa !39
  %314 = load i32, ptr %28, align 4, !tbaa !36
  %315 = load i32, ptr %29, align 8, !tbaa !37
  %316 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %314, i32 %315), !nosanitize !30
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !30
  br i1 %317, label %91, label %318, !nosanitize !30

318:                                              ; preds = %313
  %319 = extractvalue { i32, i1 } %316, 0, !nosanitize !30
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %587, label %324

321:                                              ; preds = %579
  %322 = extractvalue { i32, i1 } %585, 0, !nosanitize !30
  %323 = icmp ult i32 %580, %322
  br i1 %323, label %324, label %587, !llvm.loop !47

324:                                              ; preds = %318, %321
  %325 = phi i32 [ %380, %321 ], [ %281, %318 ]
  %326 = phi i64 [ %391, %321 ], [ %296, %318 ]
  %327 = phi i32 [ %393, %321 ], [ %295, %318 ]
  %328 = load i32, ptr %35, align 8, !tbaa !46
  %329 = shl nsw i32 -1, %328
  %330 = xor i32 %329, -1
  %331 = trunc i64 %326 to i32
  %332 = load ptr, ptr %34, align 8, !tbaa !45
  %333 = and i32 %330, %331
  %334 = zext nneg i32 %333 to i64
  %335 = getelementptr inbounds %struct.code, ptr %332, i64 %334
  %336 = getelementptr inbounds i8, ptr %335, i64 1
  %337 = load i8, ptr %336, align 1, !tbaa.struct !48
  %338 = zext i8 %337 to i32
  %339 = icmp ult i32 %327, %338
  br i1 %339, label %340, label %379

340:                                              ; preds = %324
  %341 = zext nneg i32 %327 to i64
  br label %342

342:                                              ; preds = %340, %360
  %343 = phi i64 [ %341, %340 ], [ %363, %360 ]
  %344 = phi i64 [ %326, %340 ], [ %361, %360 ]
  %345 = phi i32 [ %325, %340 ], [ %362, %360 ]
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %342
  %348 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %347
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1142

351:                                              ; preds = %347, %342
  %352 = phi i32 [ %348, %347 ], [ %345, %342 ]
  %353 = load ptr, ptr %6, align 8, !tbaa !28
  %354 = getelementptr inbounds i8, ptr %353, i64 1
  store ptr %354, ptr %6, align 8, !tbaa !28
  %355 = load i8, ptr %353, align 1, !tbaa !5
  %356 = zext i8 %355 to i64
  %357 = shl i64 %356, %343
  %358 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %344, i64 %357), !nosanitize !30
  %359 = extractvalue { i64, i1 } %358, 1, !nosanitize !30
  br i1 %359, label %91, label %360, !nosanitize !30

360:                                              ; preds = %351
  %361 = extractvalue { i64, i1 } %358, 0, !nosanitize !30
  %362 = add i32 %352, -1
  %363 = add nuw nsw i64 %343, 8
  %364 = load i32, ptr %35, align 8, !tbaa !46
  %365 = shl nsw i32 -1, %364
  %366 = xor i32 %365, -1
  %367 = trunc i64 %361 to i32
  %368 = load ptr, ptr %34, align 8, !tbaa !45
  %369 = and i32 %366, %367
  %370 = zext nneg i32 %369 to i64
  %371 = getelementptr inbounds %struct.code, ptr %368, i64 %370
  %372 = getelementptr inbounds i8, ptr %371, i64 1
  %373 = load i8, ptr %372, align 1, !tbaa.struct !48
  %374 = zext i8 %373 to i64
  %375 = icmp ult i64 %363, %374
  br i1 %375, label %342, label %376

376:                                              ; preds = %360
  %377 = zext i8 %373 to i32
  %378 = trunc i64 %363 to i32
  br label %379

379:                                              ; preds = %376, %324
  %380 = phi i32 [ %325, %324 ], [ %362, %376 ]
  %381 = phi i64 [ %326, %324 ], [ %361, %376 ]
  %382 = phi i32 [ %327, %324 ], [ %378, %376 ]
  %383 = phi i8 [ %337, %324 ], [ %373, %376 ]
  %384 = phi ptr [ %335, %324 ], [ %371, %376 ]
  %385 = phi i32 [ %338, %324 ], [ %377, %376 ]
  %386 = getelementptr inbounds i8, ptr %384, i64 2
  %387 = load i16, ptr %386, align 2
  %388 = icmp ult i16 %387, 16
  br i1 %388, label %389, label %399

389:                                              ; preds = %379
  %390 = zext nneg i8 %383 to i64
  %391 = lshr i64 %381, %390
  %392 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %382, i32 %385), !nosanitize !30
  %393 = extractvalue { i32, i1 } %392, 0, !nosanitize !30
  %394 = extractvalue { i32, i1 } %392, 1, !nosanitize !30
  br i1 %394, label %72, label %395, !nosanitize !30

395:                                              ; preds = %389
  %396 = load i32, ptr %31, align 4, !tbaa !39
  %397 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %396, i32 1), !nosanitize !30
  %398 = extractvalue { i32, i1 } %397, 1, !nosanitize !30
  br i1 %398, label %91, label %579, !nosanitize !30

399:                                              ; preds = %379
  switch i16 %387, label %412 [
    i16 16, label %406
    i16 17, label %400
  ]

400:                                              ; preds = %399
  %401 = add nuw nsw i32 %385, 3
  %402 = icmp ult i32 %382, %401
  br i1 %402, label %403, label %490

403:                                              ; preds = %400
  %404 = zext nneg i32 %382 to i64
  %405 = zext nneg i32 %401 to i64
  br label %465

406:                                              ; preds = %399
  %407 = add nuw nsw i32 %385, 2
  %408 = icmp ult i32 %382, %407
  br i1 %408, label %409, label %443

409:                                              ; preds = %406
  %410 = zext nneg i32 %382 to i64
  %411 = zext nneg i32 %407 to i64
  br label %418

412:                                              ; preds = %399
  %413 = add nuw nsw i32 %385, 7
  %414 = icmp ult i32 %382, %413
  br i1 %414, label %415, label %529

415:                                              ; preds = %412
  %416 = zext nneg i32 %382 to i64
  %417 = zext nneg i32 %413 to i64
  br label %504

418:                                              ; preds = %409, %436
  %419 = phi i64 [ %410, %409 ], [ %439, %436 ]
  %420 = phi i64 [ %381, %409 ], [ %437, %436 ]
  %421 = phi i32 [ %380, %409 ], [ %438, %436 ]
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %418
  %424 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %423
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1142

427:                                              ; preds = %423, %418
  %428 = phi i32 [ %424, %423 ], [ %421, %418 ]
  %429 = load ptr, ptr %6, align 8, !tbaa !28
  %430 = getelementptr inbounds i8, ptr %429, i64 1
  store ptr %430, ptr %6, align 8, !tbaa !28
  %431 = load i8, ptr %429, align 1, !tbaa !5
  %432 = zext i8 %431 to i64
  %433 = shl i64 %432, %419
  %434 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %420, i64 %433), !nosanitize !30
  %435 = extractvalue { i64, i1 } %434, 1, !nosanitize !30
  br i1 %435, label %91, label %436, !nosanitize !30

436:                                              ; preds = %427
  %437 = extractvalue { i64, i1 } %434, 0, !nosanitize !30
  %438 = add i32 %428, -1
  %439 = add nuw nsw i64 %419, 8
  %440 = icmp ult i64 %439, %411
  br i1 %440, label %418, label %441, !llvm.loop !49

441:                                              ; preds = %436
  %442 = trunc i64 %439 to i32
  br label %443

443:                                              ; preds = %441, %406
  %444 = phi i32 [ %380, %406 ], [ %438, %441 ]
  %445 = phi i64 [ %381, %406 ], [ %437, %441 ]
  %446 = phi i32 [ %382, %406 ], [ %442, %441 ]
  %447 = zext nneg i8 %383 to i64
  %448 = lshr i64 %445, %447
  %449 = sub nuw i32 %446, %385
  %450 = load i32, ptr %31, align 4, !tbaa !39
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %453

452:                                              ; preds = %443
  store ptr @.str.5, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1133

453:                                              ; preds = %443
  %454 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %449, i32 2), !nosanitize !30
  %455 = extractvalue { i32, i1 } %454, 1, !nosanitize !30
  br i1 %455, label %72, label %456, !nosanitize !30

456:                                              ; preds = %453
  %457 = trunc i64 %448 to i32
  %458 = and i32 %457, 3
  %459 = add nuw nsw i32 %458, 3
  %460 = add i32 %450, -1
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %461
  %463 = load i16, ptr %462, align 2, !tbaa !40
  %464 = lshr i64 %448, 2
  br label %543

465:                                              ; preds = %403, %483
  %466 = phi i64 [ %404, %403 ], [ %486, %483 ]
  %467 = phi i64 [ %381, %403 ], [ %484, %483 ]
  %468 = phi i32 [ %380, %403 ], [ %485, %483 ]
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %465
  %471 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %474

473:                                              ; preds = %470
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1142

474:                                              ; preds = %470, %465
  %475 = phi i32 [ %471, %470 ], [ %468, %465 ]
  %476 = load ptr, ptr %6, align 8, !tbaa !28
  %477 = getelementptr inbounds i8, ptr %476, i64 1
  store ptr %477, ptr %6, align 8, !tbaa !28
  %478 = load i8, ptr %476, align 1, !tbaa !5
  %479 = zext i8 %478 to i64
  %480 = shl i64 %479, %466
  %481 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %467, i64 %480), !nosanitize !30
  %482 = extractvalue { i64, i1 } %481, 1, !nosanitize !30
  br i1 %482, label %91, label %483, !nosanitize !30

483:                                              ; preds = %474
  %484 = extractvalue { i64, i1 } %481, 0, !nosanitize !30
  %485 = add i32 %475, -1
  %486 = add nuw nsw i64 %466, 8
  %487 = icmp ult i64 %486, %405
  br i1 %487, label %465, label %488, !llvm.loop !50

488:                                              ; preds = %483
  %489 = trunc i64 %486 to i32
  br label %490

490:                                              ; preds = %488, %400
  %491 = phi i32 [ %380, %400 ], [ %485, %488 ]
  %492 = phi i64 [ %381, %400 ], [ %484, %488 ]
  %493 = phi i32 [ %382, %400 ], [ %489, %488 ]
  %494 = sub nuw i32 %493, %385
  %495 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %494, i32 3), !nosanitize !30
  %496 = extractvalue { i32, i1 } %495, 1, !nosanitize !30
  br i1 %496, label %72, label %497, !nosanitize !30

497:                                              ; preds = %490
  %498 = zext nneg i8 %383 to i64
  %499 = lshr i64 %492, %498
  %500 = trunc i64 %499 to i32
  %501 = and i32 %500, 7
  %502 = add nuw nsw i32 %501, 3
  %503 = lshr i64 %499, 3
  br label %543

504:                                              ; preds = %415, %522
  %505 = phi i64 [ %416, %415 ], [ %525, %522 ]
  %506 = phi i64 [ %381, %415 ], [ %523, %522 ]
  %507 = phi i32 [ %380, %415 ], [ %524, %522 ]
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %513

509:                                              ; preds = %504
  %510 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %513

512:                                              ; preds = %509
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1142

513:                                              ; preds = %509, %504
  %514 = phi i32 [ %510, %509 ], [ %507, %504 ]
  %515 = load ptr, ptr %6, align 8, !tbaa !28
  %516 = getelementptr inbounds i8, ptr %515, i64 1
  store ptr %516, ptr %6, align 8, !tbaa !28
  %517 = load i8, ptr %515, align 1, !tbaa !5
  %518 = zext i8 %517 to i64
  %519 = shl i64 %518, %505
  %520 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %506, i64 %519), !nosanitize !30
  %521 = extractvalue { i64, i1 } %520, 1, !nosanitize !30
  br i1 %521, label %91, label %522, !nosanitize !30

522:                                              ; preds = %513
  %523 = extractvalue { i64, i1 } %520, 0, !nosanitize !30
  %524 = add i32 %514, -1
  %525 = add nuw nsw i64 %505, 8
  %526 = icmp ult i64 %525, %417
  br i1 %526, label %504, label %527, !llvm.loop !51

527:                                              ; preds = %522
  %528 = trunc i64 %525 to i32
  br label %529

529:                                              ; preds = %527, %412
  %530 = phi i32 [ %380, %412 ], [ %524, %527 ]
  %531 = phi i64 [ %381, %412 ], [ %523, %527 ]
  %532 = phi i32 [ %382, %412 ], [ %528, %527 ]
  %533 = sub nuw i32 %532, %385
  %534 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %533, i32 7), !nosanitize !30
  %535 = extractvalue { i32, i1 } %534, 1, !nosanitize !30
  br i1 %535, label %72, label %536, !nosanitize !30

536:                                              ; preds = %529
  %537 = zext nneg i8 %383 to i64
  %538 = lshr i64 %531, %537
  %539 = trunc i64 %538 to i32
  %540 = and i32 %539, 127
  %541 = add nuw nsw i32 %540, 11
  %542 = lshr i64 %538, 7
  br label %543

543:                                              ; preds = %497, %536, %456
  %544 = phi i32 [ %444, %456 ], [ %491, %497 ], [ %530, %536 ]
  %545 = phi i64 [ %464, %456 ], [ %503, %497 ], [ %542, %536 ]
  %546 = phi { i32, i1 } [ %454, %456 ], [ %495, %497 ], [ %534, %536 ]
  %547 = phi i32 [ %459, %456 ], [ %502, %497 ], [ %541, %536 ]
  %548 = phi i16 [ %463, %456 ], [ 0, %497 ], [ 0, %536 ]
  %549 = extractvalue { i32, i1 } %546, 0
  %550 = load i32, ptr %31, align 4, !tbaa !39
  %551 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %550, i32 %547), !nosanitize !30
  %552 = extractvalue { i32, i1 } %551, 0, !nosanitize !30
  %553 = extractvalue { i32, i1 } %551, 1, !nosanitize !30
  br i1 %553, label %91, label %554, !nosanitize !30

554:                                              ; preds = %543
  %555 = load i32, ptr %28, align 4, !tbaa !36
  %556 = load i32, ptr %29, align 8, !tbaa !37
  %557 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %555, i32 %556), !nosanitize !30
  %558 = extractvalue { i32, i1 } %557, 1, !nosanitize !30
  br i1 %558, label %91, label %559, !nosanitize !30

559:                                              ; preds = %554
  %560 = extractvalue { i32, i1 } %557, 0, !nosanitize !30
  %561 = icmp ugt i32 %552, %560
  br i1 %561, label %566, label %562

562:                                              ; preds = %559
  %563 = add nsw i32 %547, -1
  %564 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %563, 0
  %565 = zext i32 %550 to i64
  br label %567

566:                                              ; preds = %559
  store ptr @.str.5, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1133

567:                                              ; preds = %562, %572
  %568 = phi i64 [ %565, %562 ], [ %574, %572 ]
  %569 = phi { i32, i1 } [ %564, %562 ], [ %577, %572 ]
  %570 = and i64 %568, 4294967295
  %571 = icmp eq i64 %570, 4294967295
  br i1 %571, label %91, label %572, !nosanitize !30

572:                                              ; preds = %567
  %573 = extractvalue { i32, i1 } %569, 0
  %574 = add nuw nsw i64 %568, 1
  %575 = trunc i64 %574 to i32
  store i32 %575, ptr %31, align 4, !tbaa !39
  %576 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %568
  store i16 %548, ptr %576, align 2, !tbaa !40
  %577 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %573, i32 1), !nosanitize !30
  %578 = extractvalue { i32, i1 } %577, 1, !nosanitize !30
  br i1 %578, label %72, label %567, !llvm.loop !52, !nosanitize !30

579:                                              ; preds = %395
  %580 = extractvalue { i32, i1 } %397, 0, !nosanitize !30
  store i32 %580, ptr %31, align 4, !tbaa !39
  %581 = zext i32 %396 to i64
  %582 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %581
  store i16 %387, ptr %582, align 2, !tbaa !40
  %583 = load i32, ptr %28, align 4, !tbaa !36
  %584 = load i32, ptr %29, align 8, !tbaa !37
  %585 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %583, i32 %584), !nosanitize !30
  %586 = extractvalue { i32, i1 } %585, 1, !nosanitize !30
  br i1 %586, label %91, label %321, !llvm.loop !47, !nosanitize !30

587:                                              ; preds = %321, %318
  %588 = phi i32 [ %314, %318 ], [ %583, %321 ]
  %589 = phi i32 [ %295, %318 ], [ %393, %321 ]
  %590 = phi i64 [ %296, %318 ], [ %391, %321 ]
  %591 = phi i32 [ %281, %318 ], [ %380, %321 ]
  %592 = load i32, ptr %14, align 8, !tbaa !25
  %593 = icmp eq i32 %592, 16209
  br i1 %593, label %1133, label %594

594:                                              ; preds = %587
  %595 = load i16, ptr %38, align 8, !tbaa !40
  %596 = icmp eq i16 %595, 0
  br i1 %596, label %597, label %598

597:                                              ; preds = %594
  store ptr @.str.6, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1133

598:                                              ; preds = %594
  store ptr %32, ptr %33, align 8, !tbaa !44
  store ptr %32, ptr %34, align 8, !tbaa !45
  store i32 9, ptr %35, align 8, !tbaa !46
  %599 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %36, i32 noundef %588, ptr noundef nonnull %33, ptr noundef nonnull %35, ptr noundef nonnull %37) #7
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %602, label %601

601:                                              ; preds = %598
  store ptr @.str.7, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1133

602:                                              ; preds = %598
  %603 = load ptr, ptr %33, align 8, !tbaa !44
  store ptr %603, ptr %39, align 8, !tbaa !53
  store i32 6, ptr %40, align 4, !tbaa !54
  %604 = load i32, ptr %28, align 4, !tbaa !36
  %605 = zext i32 %604 to i64
  %606 = getelementptr inbounds i16, ptr %36, i64 %605
  %607 = load i32, ptr %29, align 8, !tbaa !37
  %608 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %606, i32 noundef %607, ptr noundef nonnull %33, ptr noundef nonnull %40, ptr noundef nonnull %37) #7
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %611, label %610

610:                                              ; preds = %602
  store ptr @.str.8, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1133

611:                                              ; preds = %602
  store i32 16200, ptr %14, align 8, !tbaa !25
  br label %612

612:                                              ; preds = %49, %611
  %613 = phi i32 [ %52, %49 ], [ %591, %611 ]
  %614 = phi i64 [ %54, %49 ], [ %590, %611 ]
  %615 = phi i32 [ %55, %49 ], [ %589, %611 ]
  %616 = icmp ugt i32 %613, 5
  %617 = icmp ugt i32 %53, 257
  %618 = select i1 %616, i1 %617, i1 false
  br i1 %618, label %634, label %619

619:                                              ; preds = %612
  %620 = load i32, ptr %35, align 8, !tbaa !46
  %621 = shl nsw i32 -1, %620
  %622 = xor i32 %621, -1
  %623 = trunc i64 %614 to i32
  %624 = load ptr, ptr %34, align 8, !tbaa !45
  %625 = and i32 %622, %623
  %626 = zext nneg i32 %625 to i64
  %627 = getelementptr inbounds %struct.code, ptr %624, i64 %626
  %628 = getelementptr inbounds i8, ptr %627, i64 1
  %629 = load i8, ptr %628, align 1, !tbaa.struct !48
  %630 = zext i8 %629 to i32
  %631 = icmp ult i32 %615, %630
  br i1 %631, label %632, label %680

632:                                              ; preds = %619
  %633 = zext nneg i32 %615 to i64
  br label %643

634:                                              ; preds = %612
  store ptr %51, ptr %44, align 8, !tbaa !55
  store i32 %53, ptr %45, align 8, !tbaa !56
  %635 = load ptr, ptr %6, align 8, !tbaa !28
  store ptr %635, ptr %0, align 8, !tbaa !27
  store i32 %613, ptr %46, align 8, !tbaa !29
  store i64 %614, ptr %47, align 8, !tbaa !57
  store i32 %615, ptr %48, align 8, !tbaa !58
  %636 = load i32, ptr %26, align 4, !tbaa !20
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %636) #7
  %637 = load ptr, ptr %44, align 8, !tbaa !55
  %638 = load i32, ptr %45, align 8, !tbaa !56
  %639 = load ptr, ptr %0, align 8, !tbaa !27
  store ptr %639, ptr %6, align 8, !tbaa !28
  %640 = load i32, ptr %46, align 8, !tbaa !29
  %641 = load i64, ptr %47, align 8, !tbaa !57
  %642 = load i32, ptr %48, align 8, !tbaa !58
  br label %1133

643:                                              ; preds = %632, %661
  %644 = phi i64 [ %633, %632 ], [ %664, %661 ]
  %645 = phi i64 [ %614, %632 ], [ %662, %661 ]
  %646 = phi i32 [ %613, %632 ], [ %663, %661 ]
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %652

648:                                              ; preds = %643
  %649 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %651, label %652

651:                                              ; preds = %648
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1142

652:                                              ; preds = %648, %643
  %653 = phi i32 [ %649, %648 ], [ %646, %643 ]
  %654 = load ptr, ptr %6, align 8, !tbaa !28
  %655 = getelementptr inbounds i8, ptr %654, i64 1
  store ptr %655, ptr %6, align 8, !tbaa !28
  %656 = load i8, ptr %654, align 1, !tbaa !5
  %657 = zext i8 %656 to i64
  %658 = shl i64 %657, %644
  %659 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %645, i64 %658), !nosanitize !30
  %660 = extractvalue { i64, i1 } %659, 1, !nosanitize !30
  br i1 %660, label %91, label %661, !nosanitize !30

661:                                              ; preds = %652
  %662 = extractvalue { i64, i1 } %659, 0, !nosanitize !30
  %663 = add i32 %653, -1
  %664 = add nuw nsw i64 %644, 8
  %665 = load i32, ptr %35, align 8, !tbaa !46
  %666 = shl nsw i32 -1, %665
  %667 = xor i32 %666, -1
  %668 = trunc i64 %662 to i32
  %669 = load ptr, ptr %34, align 8, !tbaa !45
  %670 = and i32 %667, %668
  %671 = zext nneg i32 %670 to i64
  %672 = getelementptr inbounds %struct.code, ptr %669, i64 %671
  %673 = getelementptr inbounds i8, ptr %672, i64 1
  %674 = load i8, ptr %673, align 1, !tbaa.struct !48
  %675 = zext i8 %674 to i64
  %676 = icmp ult i64 %664, %675
  br i1 %676, label %643, label %677

677:                                              ; preds = %661
  %678 = zext i8 %674 to i32
  %679 = trunc i64 %664 to i32
  br label %680

680:                                              ; preds = %677, %619
  %681 = phi ptr [ %624, %619 ], [ %669, %677 ]
  %682 = phi i32 [ %613, %619 ], [ %663, %677 ]
  %683 = phi i64 [ %614, %619 ], [ %662, %677 ]
  %684 = phi i32 [ %615, %619 ], [ %679, %677 ]
  %685 = phi ptr [ %627, %619 ], [ %672, %677 ]
  %686 = phi i8 [ %629, %619 ], [ %674, %677 ]
  %687 = phi i32 [ %630, %619 ], [ %678, %677 ]
  %688 = getelementptr inbounds i8, ptr %685, i64 2
  %689 = load i16, ptr %688, align 2
  %690 = load i8, ptr %685, align 2, !tbaa.struct !59
  %691 = add i8 %690, -1
  %692 = icmp ult i8 %691, 15
  br i1 %692, label %693, label %757

693:                                              ; preds = %680
  %694 = zext nneg i8 %690 to i32
  %695 = add nuw nsw i32 %687, %694
  %696 = shl nsw i32 -1, %695
  %697 = xor i32 %696, -1
  %698 = zext i16 %689 to i32
  %699 = trunc i64 %683 to i32
  %700 = and i32 %699, %697
  %701 = lshr i32 %700, %687
  %702 = add nuw i32 %701, %698
  %703 = zext i32 %702 to i64
  %704 = getelementptr inbounds %struct.code, ptr %681, i64 %703
  %705 = getelementptr inbounds i8, ptr %704, i64 1
  %706 = load i8, ptr %705, align 1, !tbaa.struct !48
  %707 = zext i8 %706 to i32
  %708 = add nuw nsw i32 %687, %707
  %709 = icmp ugt i32 %708, %684
  br i1 %709, label %710, label %745

710:                                              ; preds = %693, %729
  %711 = phi i32 [ %732, %729 ], [ %684, %693 ]
  %712 = phi i64 [ %730, %729 ], [ %683, %693 ]
  %713 = phi i32 [ %731, %729 ], [ %682, %693 ]
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %715, label %719

715:                                              ; preds = %710
  %716 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %718, label %719

718:                                              ; preds = %715
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1142

719:                                              ; preds = %715, %710
  %720 = phi i32 [ %716, %715 ], [ %713, %710 ]
  %721 = load ptr, ptr %6, align 8, !tbaa !28
  %722 = getelementptr inbounds i8, ptr %721, i64 1
  store ptr %722, ptr %6, align 8, !tbaa !28
  %723 = load i8, ptr %721, align 1, !tbaa !5
  %724 = zext i8 %723 to i64
  %725 = zext nneg i32 %711 to i64
  %726 = shl i64 %724, %725
  %727 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %712, i64 %726), !nosanitize !30
  %728 = extractvalue { i64, i1 } %727, 1, !nosanitize !30
  br i1 %728, label %91, label %729, !nosanitize !30

729:                                              ; preds = %719
  %730 = extractvalue { i64, i1 } %727, 0, !nosanitize !30
  %731 = add i32 %720, -1
  %732 = add nuw nsw i32 %711, 8
  %733 = load ptr, ptr %34, align 8, !tbaa !45
  %734 = trunc i64 %730 to i32
  %735 = and i32 %734, %697
  %736 = lshr i32 %735, %687
  %737 = add nuw i32 %736, %698
  %738 = zext i32 %737 to i64
  %739 = getelementptr inbounds %struct.code, ptr %733, i64 %738
  %740 = getelementptr inbounds i8, ptr %739, i64 1
  %741 = load i8, ptr %740, align 1, !tbaa.struct !48
  %742 = zext i8 %741 to i32
  %743 = add nuw nsw i32 %687, %742
  %744 = icmp ugt i32 %743, %732
  br i1 %744, label %710, label %745

745:                                              ; preds = %729, %693
  %746 = phi i32 [ %682, %693 ], [ %731, %729 ]
  %747 = phi i64 [ %683, %693 ], [ %730, %729 ]
  %748 = phi i32 [ %684, %693 ], [ %732, %729 ]
  %749 = phi ptr [ %704, %693 ], [ %739, %729 ]
  %750 = phi i8 [ %706, %693 ], [ %741, %729 ]
  %751 = getelementptr inbounds i8, ptr %749, i64 2
  %752 = load i16, ptr %751, align 2, !tbaa.struct !60
  %753 = load i8, ptr %749, align 2, !tbaa.struct !59
  %754 = sub nuw i32 %748, %687
  %755 = zext nneg i8 %686 to i64
  %756 = lshr i64 %747, %755
  br label %757

757:                                              ; preds = %680, %745
  %758 = phi i32 [ %746, %745 ], [ %682, %680 ]
  %759 = phi i64 [ %756, %745 ], [ %683, %680 ]
  %760 = phi i32 [ %754, %745 ], [ %684, %680 ]
  %761 = phi i16 [ %752, %745 ], [ %689, %680 ]
  %762 = phi i8 [ %750, %745 ], [ %686, %680 ]
  %763 = phi i8 [ %753, %745 ], [ %690, %680 ]
  %764 = zext i8 %762 to i32
  %765 = zext nneg i8 %762 to i64
  %766 = lshr i64 %759, %765
  %767 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %760, i32 %764), !nosanitize !30
  %768 = extractvalue { i32, i1 } %767, 0, !nosanitize !30
  %769 = extractvalue { i32, i1 } %767, 1, !nosanitize !30
  br i1 %769, label %72, label %770, !nosanitize !30

770:                                              ; preds = %757
  %771 = zext i16 %761 to i32
  store i32 %771, ptr %41, align 4, !tbaa !33
  %772 = zext i8 %763 to i32
  %773 = icmp eq i8 %763, 0
  br i1 %773, label %774, label %793

774:                                              ; preds = %770
  %775 = icmp eq i32 %53, 0
  br i1 %775, label %776, label %783

776:                                              ; preds = %774
  %777 = load ptr, ptr %24, align 8, !tbaa !21
  %778 = load i32, ptr %26, align 4, !tbaa !20
  store i32 %778, ptr %16, align 8, !tbaa !23
  %779 = call i32 %3(ptr noundef %4, ptr noundef %777, i32 noundef %778) #7
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %1142

781:                                              ; preds = %776
  %782 = load i32, ptr %41, align 4, !tbaa !33
  br label %783

783:                                              ; preds = %781, %774
  %784 = phi i32 [ %782, %781 ], [ %771, %774 ]
  %785 = phi ptr [ %777, %781 ], [ %51, %774 ]
  %786 = phi i32 [ %778, %781 ], [ %53, %774 ]
  %787 = trunc i32 %784 to i8
  store i8 %787, ptr %785, align 1, !tbaa !5
  %788 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %786, i32 1), !nosanitize !30
  %789 = extractvalue { i32, i1 } %788, 1, !nosanitize !30
  br i1 %789, label %72, label %790, !nosanitize !30

790:                                              ; preds = %783
  %791 = extractvalue { i32, i1 } %788, 0, !nosanitize !30
  %792 = getelementptr inbounds i8, ptr %785, i64 1
  store i32 16200, ptr %14, align 8, !tbaa !25
  br label %1133

793:                                              ; preds = %770
  %794 = and i32 %772, 32
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %797, label %796

796:                                              ; preds = %793
  store i32 16191, ptr %14, align 8, !tbaa !25
  br label %1133

797:                                              ; preds = %793
  %798 = and i32 %772, 64
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %801, label %800

800:                                              ; preds = %797
  store ptr @.str.9, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1133

801:                                              ; preds = %797
  %802 = and i32 %772, 15
  store i32 %802, ptr %42, align 4, !tbaa !61
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %858, label %804

804:                                              ; preds = %801
  %805 = icmp ult i32 %768, %802
  br i1 %805, label %806, label %838

806:                                              ; preds = %804
  %807 = zext nneg i32 %768 to i64
  br label %808

808:                                              ; preds = %806, %829
  %809 = phi i64 [ %807, %806 ], [ %832, %829 ]
  %810 = phi i64 [ %766, %806 ], [ %830, %829 ]
  %811 = phi i32 [ %758, %806 ], [ %831, %829 ]
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %817

813:                                              ; preds = %808
  %814 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %816, label %817

816:                                              ; preds = %813
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1142

817:                                              ; preds = %813, %808
  %818 = phi i32 [ %814, %813 ], [ %811, %808 ]
  %819 = load ptr, ptr %6, align 8, !tbaa !28
  %820 = getelementptr inbounds i8, ptr %819, i64 1
  store ptr %820, ptr %6, align 8, !tbaa !28
  %821 = load i8, ptr %819, align 1, !tbaa !5
  %822 = zext i8 %821 to i64
  %823 = shl i64 %822, %809
  %824 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %810, i64 %823), !nosanitize !30
  %825 = extractvalue { i64, i1 } %824, 1, !nosanitize !30
  %826 = and i64 %809, 4294967288
  %827 = icmp eq i64 %826, 4294967288
  %828 = select i1 %825, i1 true, i1 %827
  br i1 %828, label %91, label %829, !nosanitize !30

829:                                              ; preds = %817
  %830 = extractvalue { i64, i1 } %824, 0, !nosanitize !30
  %831 = add i32 %818, -1
  %832 = add nuw nsw i64 %809, 8
  %833 = trunc i64 %832 to i32
  %834 = load i32, ptr %42, align 4, !tbaa !61
  %835 = icmp ugt i32 %834, %833
  br i1 %835, label %808, label %836, !llvm.loop !62

836:                                              ; preds = %829
  %837 = load i32, ptr %41, align 4, !tbaa !33
  br label %838

838:                                              ; preds = %836, %804
  %839 = phi i32 [ %771, %804 ], [ %837, %836 ]
  %840 = phi i32 [ %758, %804 ], [ %831, %836 ]
  %841 = phi i64 [ %766, %804 ], [ %830, %836 ]
  %842 = phi i32 [ %768, %804 ], [ %833, %836 ]
  %843 = phi i32 [ %802, %804 ], [ %834, %836 ]
  %844 = shl nsw i32 -1, %843
  %845 = xor i32 %844, -1
  %846 = trunc i64 %841 to i32
  %847 = and i32 %845, %846
  %848 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %839, i32 %847), !nosanitize !30
  %849 = extractvalue { i32, i1 } %848, 1, !nosanitize !30
  br i1 %849, label %91, label %850, !nosanitize !30

850:                                              ; preds = %838
  %851 = extractvalue { i32, i1 } %848, 0, !nosanitize !30
  store i32 %851, ptr %41, align 4, !tbaa !33
  %852 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %842, i32 %843), !nosanitize !30
  %853 = extractvalue { i32, i1 } %852, 1, !nosanitize !30
  br i1 %853, label %72, label %854, !nosanitize !30

854:                                              ; preds = %850
  %855 = extractvalue { i32, i1 } %852, 0, !nosanitize !30
  %856 = zext nneg i32 %843 to i64
  %857 = lshr i64 %841, %856
  br label %858

858:                                              ; preds = %854, %801
  %859 = phi i32 [ %840, %854 ], [ %758, %801 ]
  %860 = phi i64 [ %857, %854 ], [ %766, %801 ]
  %861 = phi i32 [ %855, %854 ], [ %768, %801 ]
  %862 = load i32, ptr %40, align 4, !tbaa !54
  %863 = shl nsw i32 -1, %862
  %864 = xor i32 %863, -1
  %865 = trunc i64 %860 to i32
  %866 = load ptr, ptr %39, align 8, !tbaa !53
  %867 = and i32 %864, %865
  %868 = zext nneg i32 %867 to i64
  %869 = getelementptr inbounds %struct.code, ptr %866, i64 %868
  %870 = getelementptr inbounds i8, ptr %869, i64 1
  %871 = load i8, ptr %870, align 1, !tbaa.struct !48
  %872 = zext i8 %871 to i32
  %873 = icmp ult i32 %861, %872
  br i1 %873, label %874, label %913

874:                                              ; preds = %858
  %875 = zext nneg i32 %861 to i64
  br label %876

876:                                              ; preds = %874, %894
  %877 = phi i64 [ %875, %874 ], [ %897, %894 ]
  %878 = phi i64 [ %860, %874 ], [ %895, %894 ]
  %879 = phi i32 [ %859, %874 ], [ %896, %894 ]
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %881, label %885

881:                                              ; preds = %876
  %882 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %884, label %885

884:                                              ; preds = %881
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1142

885:                                              ; preds = %881, %876
  %886 = phi i32 [ %882, %881 ], [ %879, %876 ]
  %887 = load ptr, ptr %6, align 8, !tbaa !28
  %888 = getelementptr inbounds i8, ptr %887, i64 1
  store ptr %888, ptr %6, align 8, !tbaa !28
  %889 = load i8, ptr %887, align 1, !tbaa !5
  %890 = zext i8 %889 to i64
  %891 = shl i64 %890, %877
  %892 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %878, i64 %891), !nosanitize !30
  %893 = extractvalue { i64, i1 } %892, 1, !nosanitize !30
  br i1 %893, label %91, label %894, !nosanitize !30

894:                                              ; preds = %885
  %895 = extractvalue { i64, i1 } %892, 0, !nosanitize !30
  %896 = add i32 %886, -1
  %897 = add nuw nsw i64 %877, 8
  %898 = load i32, ptr %40, align 4, !tbaa !54
  %899 = shl nsw i32 -1, %898
  %900 = xor i32 %899, -1
  %901 = trunc i64 %895 to i32
  %902 = load ptr, ptr %39, align 8, !tbaa !53
  %903 = and i32 %900, %901
  %904 = zext nneg i32 %903 to i64
  %905 = getelementptr inbounds %struct.code, ptr %902, i64 %904
  %906 = getelementptr inbounds i8, ptr %905, i64 1
  %907 = load i8, ptr %906, align 1, !tbaa.struct !48
  %908 = zext i8 %907 to i64
  %909 = icmp ult i64 %897, %908
  br i1 %909, label %876, label %910

910:                                              ; preds = %894
  %911 = zext i8 %907 to i32
  %912 = trunc i64 %897 to i32
  br label %913

913:                                              ; preds = %910, %858
  %914 = phi ptr [ %866, %858 ], [ %902, %910 ]
  %915 = phi i32 [ %859, %858 ], [ %896, %910 ]
  %916 = phi i64 [ %860, %858 ], [ %895, %910 ]
  %917 = phi i32 [ %861, %858 ], [ %912, %910 ]
  %918 = phi ptr [ %869, %858 ], [ %905, %910 ]
  %919 = phi i8 [ %871, %858 ], [ %907, %910 ]
  %920 = phi i32 [ %872, %858 ], [ %911, %910 ]
  %921 = getelementptr inbounds i8, ptr %918, i64 2
  %922 = load i16, ptr %921, align 2
  %923 = load i8, ptr %918, align 2, !tbaa.struct !59
  %924 = icmp ult i8 %923, 16
  br i1 %924, label %925, label %989

925:                                              ; preds = %913
  %926 = zext nneg i8 %923 to i32
  %927 = add nuw nsw i32 %920, %926
  %928 = shl nsw i32 -1, %927
  %929 = xor i32 %928, -1
  %930 = zext i16 %922 to i32
  %931 = trunc i64 %916 to i32
  %932 = and i32 %931, %929
  %933 = lshr i32 %932, %920
  %934 = add nuw i32 %933, %930
  %935 = zext i32 %934 to i64
  %936 = getelementptr inbounds %struct.code, ptr %914, i64 %935
  %937 = getelementptr inbounds i8, ptr %936, i64 1
  %938 = load i8, ptr %937, align 1, !tbaa.struct !48
  %939 = zext i8 %938 to i32
  %940 = add nuw nsw i32 %920, %939
  %941 = icmp ugt i32 %940, %917
  br i1 %941, label %942, label %977

942:                                              ; preds = %925, %961
  %943 = phi i32 [ %964, %961 ], [ %917, %925 ]
  %944 = phi i64 [ %962, %961 ], [ %916, %925 ]
  %945 = phi i32 [ %963, %961 ], [ %915, %925 ]
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %947, label %951

947:                                              ; preds = %942
  %948 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %950, label %951

950:                                              ; preds = %947
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1142

951:                                              ; preds = %947, %942
  %952 = phi i32 [ %948, %947 ], [ %945, %942 ]
  %953 = load ptr, ptr %6, align 8, !tbaa !28
  %954 = getelementptr inbounds i8, ptr %953, i64 1
  store ptr %954, ptr %6, align 8, !tbaa !28
  %955 = load i8, ptr %953, align 1, !tbaa !5
  %956 = zext i8 %955 to i64
  %957 = zext nneg i32 %943 to i64
  %958 = shl i64 %956, %957
  %959 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %944, i64 %958), !nosanitize !30
  %960 = extractvalue { i64, i1 } %959, 1, !nosanitize !30
  br i1 %960, label %91, label %961, !nosanitize !30

961:                                              ; preds = %951
  %962 = extractvalue { i64, i1 } %959, 0, !nosanitize !30
  %963 = add i32 %952, -1
  %964 = add nuw nsw i32 %943, 8
  %965 = load ptr, ptr %39, align 8, !tbaa !53
  %966 = trunc i64 %962 to i32
  %967 = and i32 %966, %929
  %968 = lshr i32 %967, %920
  %969 = add nuw i32 %968, %930
  %970 = zext i32 %969 to i64
  %971 = getelementptr inbounds %struct.code, ptr %965, i64 %970
  %972 = getelementptr inbounds i8, ptr %971, i64 1
  %973 = load i8, ptr %972, align 1, !tbaa.struct !48
  %974 = zext i8 %973 to i32
  %975 = add nuw nsw i32 %920, %974
  %976 = icmp ugt i32 %975, %964
  br i1 %976, label %942, label %977

977:                                              ; preds = %961, %925
  %978 = phi i32 [ %915, %925 ], [ %963, %961 ]
  %979 = phi i64 [ %916, %925 ], [ %962, %961 ]
  %980 = phi i32 [ %917, %925 ], [ %964, %961 ]
  %981 = phi ptr [ %936, %925 ], [ %971, %961 ]
  %982 = phi i8 [ %938, %925 ], [ %973, %961 ]
  %983 = getelementptr inbounds i8, ptr %981, i64 2
  %984 = load i16, ptr %983, align 2, !tbaa.struct !60
  %985 = load i8, ptr %981, align 2, !tbaa.struct !59
  %986 = sub nuw i32 %980, %920
  %987 = zext nneg i8 %919 to i64
  %988 = lshr i64 %979, %987
  br label %989

989:                                              ; preds = %913, %977
  %990 = phi i32 [ %978, %977 ], [ %915, %913 ]
  %991 = phi i64 [ %988, %977 ], [ %916, %913 ]
  %992 = phi i32 [ %986, %977 ], [ %917, %913 ]
  %993 = phi i16 [ %984, %977 ], [ %922, %913 ]
  %994 = phi i8 [ %982, %977 ], [ %919, %913 ]
  %995 = phi i8 [ %985, %977 ], [ %923, %913 ]
  %996 = zext i8 %994 to i32
  %997 = zext nneg i8 %994 to i64
  %998 = lshr i64 %991, %997
  %999 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %992, i32 %996), !nosanitize !30
  %1000 = extractvalue { i32, i1 } %999, 0, !nosanitize !30
  %1001 = extractvalue { i32, i1 } %999, 1, !nosanitize !30
  br i1 %1001, label %72, label %1002, !nosanitize !30

1002:                                             ; preds = %989
  %1003 = zext i8 %995 to i32
  %1004 = and i32 %1003, 64
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1007, label %1006

1006:                                             ; preds = %1002
  store ptr @.str.10, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1133

1007:                                             ; preds = %1002
  %1008 = zext i16 %993 to i32
  store i32 %1008, ptr %43, align 8, !tbaa !63
  %1009 = and i32 %1003, 15
  store i32 %1009, ptr %42, align 4, !tbaa !61
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1065, label %1011

1011:                                             ; preds = %1007
  %1012 = icmp ult i32 %1000, %1009
  br i1 %1012, label %1013, label %1045

1013:                                             ; preds = %1011
  %1014 = zext nneg i32 %1000 to i64
  br label %1015

1015:                                             ; preds = %1013, %1036
  %1016 = phi i64 [ %1014, %1013 ], [ %1039, %1036 ]
  %1017 = phi i64 [ %998, %1013 ], [ %1037, %1036 ]
  %1018 = phi i32 [ %990, %1013 ], [ %1038, %1036 ]
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1020, label %1024

1020:                                             ; preds = %1015
  %1021 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1023, label %1024

1023:                                             ; preds = %1020
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1142

1024:                                             ; preds = %1020, %1015
  %1025 = phi i32 [ %1021, %1020 ], [ %1018, %1015 ]
  %1026 = load ptr, ptr %6, align 8, !tbaa !28
  %1027 = getelementptr inbounds i8, ptr %1026, i64 1
  store ptr %1027, ptr %6, align 8, !tbaa !28
  %1028 = load i8, ptr %1026, align 1, !tbaa !5
  %1029 = zext i8 %1028 to i64
  %1030 = shl i64 %1029, %1016
  %1031 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1017, i64 %1030), !nosanitize !30
  %1032 = extractvalue { i64, i1 } %1031, 1, !nosanitize !30
  %1033 = and i64 %1016, 4294967288
  %1034 = icmp eq i64 %1033, 4294967288
  %1035 = select i1 %1032, i1 true, i1 %1034
  br i1 %1035, label %91, label %1036, !nosanitize !30

1036:                                             ; preds = %1024
  %1037 = extractvalue { i64, i1 } %1031, 0, !nosanitize !30
  %1038 = add i32 %1025, -1
  %1039 = add nuw nsw i64 %1016, 8
  %1040 = trunc i64 %1039 to i32
  %1041 = load i32, ptr %42, align 4, !tbaa !61
  %1042 = icmp ugt i32 %1041, %1040
  br i1 %1042, label %1015, label %1043, !llvm.loop !64

1043:                                             ; preds = %1036
  %1044 = load i32, ptr %43, align 8, !tbaa !63
  br label %1045

1045:                                             ; preds = %1043, %1011
  %1046 = phi i32 [ %1008, %1011 ], [ %1044, %1043 ]
  %1047 = phi i32 [ %990, %1011 ], [ %1038, %1043 ]
  %1048 = phi i64 [ %998, %1011 ], [ %1037, %1043 ]
  %1049 = phi i32 [ %1000, %1011 ], [ %1040, %1043 ]
  %1050 = phi i32 [ %1009, %1011 ], [ %1041, %1043 ]
  %1051 = shl nsw i32 -1, %1050
  %1052 = xor i32 %1051, -1
  %1053 = trunc i64 %1048 to i32
  %1054 = and i32 %1052, %1053
  %1055 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1046, i32 %1054), !nosanitize !30
  %1056 = extractvalue { i32, i1 } %1055, 1, !nosanitize !30
  br i1 %1056, label %91, label %1057, !nosanitize !30

1057:                                             ; preds = %1045
  %1058 = extractvalue { i32, i1 } %1055, 0, !nosanitize !30
  store i32 %1058, ptr %43, align 8, !tbaa !63
  %1059 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1049, i32 %1050), !nosanitize !30
  %1060 = extractvalue { i32, i1 } %1059, 1, !nosanitize !30
  br i1 %1060, label %72, label %1061, !nosanitize !30

1061:                                             ; preds = %1057
  %1062 = extractvalue { i32, i1 } %1059, 0, !nosanitize !30
  %1063 = zext nneg i32 %1050 to i64
  %1064 = lshr i64 %1048, %1063
  br label %1065

1065:                                             ; preds = %1061, %1007
  %1066 = phi i32 [ %1058, %1061 ], [ %1008, %1007 ]
  %1067 = phi i32 [ %1047, %1061 ], [ %990, %1007 ]
  %1068 = phi i64 [ %1064, %1061 ], [ %998, %1007 ]
  %1069 = phi i32 [ %1062, %1061 ], [ %1000, %1007 ]
  %1070 = load i32, ptr %26, align 4, !tbaa !20
  %1071 = load i32, ptr %16, align 8, !tbaa !23
  %1072 = icmp ult i32 %1071, %1070
  %1073 = select i1 %1072, i32 %53, i32 0
  %1074 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1070, i32 %1073), !nosanitize !30
  %1075 = extractvalue { i32, i1 } %1074, 1, !nosanitize !30
  br i1 %1075, label %72, label %1076, !nosanitize !30

1076:                                             ; preds = %1065
  %1077 = extractvalue { i32, i1 } %1074, 0, !nosanitize !30
  %1078 = icmp ugt i32 %1066, %1077
  br i1 %1078, label %1079, label %1080

1079:                                             ; preds = %1076
  store ptr @.str.11, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1133

1080:                                             ; preds = %1076, %1130
  %1081 = phi ptr [ %1126, %1130 ], [ %51, %1076 ]
  %1082 = phi i32 [ %1110, %1130 ], [ %53, %1076 ]
  %1083 = icmp eq i32 %1082, 0
  %1084 = load i32, ptr %26, align 4, !tbaa !20
  br i1 %1083, label %1085, label %1091

1085:                                             ; preds = %1080
  %1086 = load ptr, ptr %24, align 8, !tbaa !21
  store i32 %1084, ptr %16, align 8, !tbaa !23
  %1087 = call i32 %3(ptr noundef %4, ptr noundef %1086, i32 noundef %1084) #7
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1089, label %1142

1089:                                             ; preds = %1085
  %1090 = load i32, ptr %26, align 4, !tbaa !20
  br label %1091

1091:                                             ; preds = %1089, %1080
  %1092 = phi i32 [ %1090, %1089 ], [ %1084, %1080 ]
  %1093 = phi ptr [ %1086, %1089 ], [ %1081, %1080 ]
  %1094 = phi i32 [ %1084, %1089 ], [ %1082, %1080 ]
  %1095 = load i32, ptr %43, align 8, !tbaa !63
  %1096 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1092, i32 %1095), !nosanitize !30
  %1097 = extractvalue { i32, i1 } %1096, 1, !nosanitize !30
  br i1 %1097, label %72, label %1098, !nosanitize !30

1098:                                             ; preds = %1091
  %1099 = extractvalue { i32, i1 } %1096, 0, !nosanitize !30
  %1100 = icmp ult i32 %1099, %1094
  %1101 = select i1 %1100, i32 %1099, i32 0
  %1102 = sub nuw i32 %1094, %1101
  %1103 = load i32, ptr %41, align 4, !tbaa !33
  %1104 = call i32 @llvm.umin.i32(i32 %1102, i32 %1103)
  %1105 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1103, i32 %1104), !nosanitize !30
  %1106 = extractvalue { i32, i1 } %1105, 1, !nosanitize !30
  br i1 %1106, label %72, label %1107, !nosanitize !30

1107:                                             ; preds = %1098
  %1108 = extractvalue { i32, i1 } %1105, 0, !nosanitize !30
  store i32 %1108, ptr %41, align 4, !tbaa !33
  %1109 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1094, i32 %1104), !nosanitize !30
  %1110 = extractvalue { i32, i1 } %1109, 0, !nosanitize !30
  %1111 = extractvalue { i32, i1 } %1109, 1, !nosanitize !30
  br i1 %1111, label %72, label %1112, !nosanitize !30

1112:                                             ; preds = %1107
  %1113 = zext i32 %1099 to i64
  %1114 = zext i32 %1095 to i64
  %1115 = sub nsw i64 0, %1114
  %1116 = select i1 %1100, i64 %1113, i64 %1115
  %1117 = getelementptr i8, ptr %1093, i64 %1116
  br label %1118

1118:                                             ; preds = %1112, %1125
  %1119 = phi ptr [ %1126, %1125 ], [ %1093, %1112 ]
  %1120 = phi i32 [ %1127, %1125 ], [ %1104, %1112 ]
  %1121 = phi ptr [ %1128, %1125 ], [ %1117, %1112 ]
  %1122 = load i8, ptr %1121, align 1, !tbaa !5
  store i8 %1122, ptr %1119, align 1, !tbaa !5
  %1123 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1120, i32 1), !nosanitize !30
  %1124 = extractvalue { i32, i1 } %1123, 1, !nosanitize !30
  br i1 %1124, label %72, label %1125, !nosanitize !30

1125:                                             ; preds = %1118
  %1126 = getelementptr inbounds i8, ptr %1119, i64 1
  %1127 = extractvalue { i32, i1 } %1123, 0, !nosanitize !30
  %1128 = getelementptr inbounds i8, ptr %1121, i64 1
  %1129 = icmp eq i32 %1127, 0
  br i1 %1129, label %1130, label %1118, !llvm.loop !65

1130:                                             ; preds = %1125
  %1131 = load i32, ptr %41, align 4, !tbaa !33
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1133, label %1080, !llvm.loop !66

1133:                                             ; preds = %1130, %452, %566, %587, %1079, %1006, %800, %796, %790, %634, %610, %601, %597, %312, %249, %202, %155, %106, %73
  %1134 = phi ptr [ %637, %634 ], [ %792, %790 ], [ %51, %796 ], [ %51, %800 ], [ %51, %1006 ], [ %51, %1079 ], [ %51, %249 ], [ %51, %312 ], [ %51, %587 ], [ %51, %597 ], [ %51, %601 ], [ %51, %610 ], [ %51, %155 ], [ %203, %202 ], [ %51, %73 ], [ %51, %106 ], [ %51, %566 ], [ %51, %452 ], [ %1126, %1130 ]
  %1135 = phi i32 [ %640, %634 ], [ %758, %790 ], [ %758, %796 ], [ %758, %800 ], [ %990, %1006 ], [ %1067, %1079 ], [ %232, %249 ], [ %281, %312 ], [ %591, %587 ], [ %591, %597 ], [ %591, %601 ], [ %591, %610 ], [ %148, %155 ], [ %204, %202 ], [ %52, %73 ], [ %96, %106 ], [ %544, %566 ], [ %444, %452 ], [ %1067, %1130 ]
  %1136 = phi i32 [ %638, %634 ], [ %791, %790 ], [ %53, %796 ], [ %53, %800 ], [ %53, %1006 ], [ %53, %1079 ], [ %53, %249 ], [ %53, %312 ], [ %53, %587 ], [ %53, %597 ], [ %53, %601 ], [ %53, %610 ], [ %53, %155 ], [ %205, %202 ], [ %53, %73 ], [ %53, %106 ], [ %53, %566 ], [ %53, %452 ], [ %1110, %1130 ]
  %1137 = phi i64 [ %641, %634 ], [ %766, %790 ], [ %766, %796 ], [ %766, %800 ], [ %998, %1006 ], [ %1068, %1079 ], [ %244, %249 ], [ %296, %312 ], [ %590, %587 ], [ %590, %597 ], [ %590, %601 ], [ %590, %610 ], [ %149, %155 ], [ 0, %202 ], [ %76, %73 ], [ %109, %106 ], [ %545, %566 ], [ %448, %452 ], [ %1068, %1130 ]
  %1138 = phi i32 [ %642, %634 ], [ %768, %790 ], [ %768, %796 ], [ %768, %800 ], [ %1000, %1006 ], [ %1069, %1079 ], [ %245, %249 ], [ %295, %312 ], [ %589, %587 ], [ %589, %597 ], [ %589, %601 ], [ %589, %610 ], [ %150, %155 ], [ 0, %202 ], [ %74, %73 ], [ %108, %106 ], [ %549, %566 ], [ %449, %452 ], [ %1069, %1130 ]
  %1139 = load i32, ptr %14, align 8, !tbaa !25
  br label %49

1140:                                             ; preds = %49
  br label %1142

1141:                                             ; preds = %49
  br label %1142

1142:                                             ; preds = %776, %1085, %173, %49, %1141, %1140, %1023, %950, %884, %816, %718, %651, %512, %473, %426, %350, %267, %214, %169, %130, %80
  %1143 = phi i32 [ 0, %816 ], [ 0, %1023 ], [ 0, %950 ], [ 0, %884 ], [ 0, %718 ], [ 0, %651 ], [ 0, %214 ], [ 0, %267 ], [ 0, %426 ], [ 0, %473 ], [ 0, %512 ], [ 0, %350 ], [ 0, %130 ], [ 0, %169 ], [ 0, %80 ], [ %52, %1140 ], [ %52, %49 ], [ %171, %173 ], [ %1067, %1085 ], [ %758, %776 ], [ %52, %1141 ]
  %1144 = phi i32 [ %53, %816 ], [ %53, %1023 ], [ %53, %950 ], [ %53, %884 ], [ %53, %718 ], [ %53, %651 ], [ %53, %214 ], [ %53, %267 ], [ %53, %426 ], [ %53, %473 ], [ %53, %512 ], [ %53, %350 ], [ %53, %130 ], [ %161, %169 ], [ %53, %80 ], [ %53, %1140 ], [ %53, %49 ], [ %175, %173 ], [ %1084, %1085 ], [ %778, %776 ], [ %53, %1141 ]
  %1145 = phi i1 [ false, %816 ], [ false, %1023 ], [ false, %950 ], [ false, %884 ], [ false, %718 ], [ false, %651 ], [ false, %214 ], [ false, %267 ], [ false, %426 ], [ false, %473 ], [ false, %512 ], [ false, %350 ], [ false, %130 ], [ false, %169 ], [ false, %80 ], [ true, %1140 ], [ false, %49 ], [ false, %173 ], [ false, %1085 ], [ false, %776 ], [ false, %1141 ]
  %1146 = phi i32 [ -5, %816 ], [ -5, %1023 ], [ -5, %950 ], [ -5, %884 ], [ -5, %718 ], [ -5, %651 ], [ -5, %214 ], [ -5, %267 ], [ -5, %426 ], [ -5, %473 ], [ -5, %512 ], [ -5, %350 ], [ -5, %130 ], [ -5, %169 ], [ -5, %80 ], [ 1, %1140 ], [ -2, %49 ], [ -5, %173 ], [ -5, %1085 ], [ -5, %776 ], [ -3, %1141 ]
  %1147 = load i32, ptr %26, align 4, !tbaa !20
  %1148 = icmp ult i32 %1144, %1147
  br i1 %1148, label %1149, label %1156

1149:                                             ; preds = %1142
  %1150 = sub nuw i32 %1147, %1144
  %1151 = load ptr, ptr %24, align 8, !tbaa !21
  %1152 = call i32 %3(ptr noundef %4, ptr noundef %1151, i32 noundef %1150) #7
  %1153 = icmp ne i32 %1152, 0
  %1154 = and i1 %1145, %1153
  %1155 = select i1 %1154, i32 -5, i32 %1146
  br label %1156

1156:                                             ; preds = %1149, %1142
  %1157 = phi i32 [ %1155, %1149 ], [ %1146, %1142 ]
  %1158 = load ptr, ptr %6, align 8, !tbaa !28
  store ptr %1158, ptr %0, align 8, !tbaa !27
  store i32 %1143, ptr %46, align 8, !tbaa !29
  br label %1159

1159:                                             ; preds = %5, %8, %1156
  %1160 = phi i32 [ %1157, %1156 ], [ -2, %8 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  ret i32 %1160
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

declare void @inflate_fixed(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateBackEnd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  tail call void %9(ptr noundef %13, ptr noundef nonnull %5) #7
  store ptr null, ptr %4, align 8, !tbaa !16
  br label %14

14:                                               ; preds = %1, %3, %7, %11
  %15 = phi i32 [ 0, %11 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 48}
!9 = !{!"z_stream_s", !10, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !11, i64 32, !12, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !11, i64 88, !12, i64 96, !12, i64 104}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!9, !10, i64 64}
!14 = !{!9, !10, i64 80}
!15 = !{!9, !10, i64 72}
!16 = !{!9, !10, i64 56}
!17 = !{!18, !11, i64 28}
!18 = !{!"inflate_state", !10, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !12, i64 40, !10, i64 48, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !10, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !10, i64 104, !10, i64 112, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !10, i64 144, !6, i64 152, !6, i64 792, !6, i64 1368, !11, i64 7144, !11, i64 7148, !11, i64 7152}
!19 = !{!18, !11, i64 56}
!20 = !{!18, !11, i64 60}
!21 = !{!18, !10, i64 72}
!22 = !{!18, !11, i64 68}
!23 = !{!18, !11, i64 64}
!24 = !{!18, !11, i64 7144}
!25 = !{!18, !11, i64 8}
!26 = !{!18, !11, i64 12}
!27 = !{!9, !10, i64 0}
!28 = !{!10, !10, i64 0}
!29 = !{!9, !11, i64 8}
!30 = !{}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!18, !11, i64 92}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !32}
!36 = !{!18, !11, i64 132}
!37 = !{!18, !11, i64 136}
!38 = !{!18, !11, i64 128}
!39 = !{!18, !11, i64 140}
!40 = !{!41, !41, i64 0}
!41 = !{!"short", !6, i64 0}
!42 = distinct !{!42, !32}
!43 = distinct !{!43, !32}
!44 = !{!18, !10, i64 144}
!45 = !{!18, !10, i64 104}
!46 = !{!18, !11, i64 120}
!47 = distinct !{!47, !32}
!48 = !{i64 0, i64 1, !5, i64 1, i64 2, !40}
!49 = distinct !{!49, !32}
!50 = distinct !{!50, !32}
!51 = distinct !{!51, !32}
!52 = distinct !{!52, !32}
!53 = !{!18, !10, i64 112}
!54 = !{!18, !11, i64 124}
!55 = !{!9, !10, i64 24}
!56 = !{!9, !11, i64 32}
!57 = !{!18, !12, i64 80}
!58 = !{!18, !11, i64 88}
!59 = !{i64 0, i64 1, !5, i64 1, i64 1, !5, i64 2, i64 2, !40}
!60 = !{i64 0, i64 2, !40}
!61 = !{!18, !11, i64 100}
!62 = distinct !{!62, !32}
!63 = !{!18, !11, i64 96}
!64 = distinct !{!64, !32}
!65 = distinct !{!65, !32}
!66 = distinct !{!66, !32}
