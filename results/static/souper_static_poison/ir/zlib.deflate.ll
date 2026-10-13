; ModuleID = '/mydata/zlib/deflate.c'
source_filename = "/mydata/zlib/deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.config_s = type { i16, i16, i16, i16, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.internal_state = type { ptr, i32, ptr, i64, ptr, i64, i32, ptr, i64, i8, i32, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, i32, i64, i64, i32, i32, i16, i32, i32, i64, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.tree_desc_s = type { ptr, i32, ptr }
%struct.gz_header_s = type { i32, i64, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32 }

@deflate_copyright = dso_local local_unnamed_addr constant [70 x i8] c" deflate 1.3.2.1 Copyright 1995-2026 Jean-loup Gailly and Mark Adler \00", align 16
@z_errmsg = external local_unnamed_addr constant [10 x ptr], align 16
@configuration_table = internal unnamed_addr constant [10 x %struct.config_s] [%struct.config_s { i16 0, i16 0, i16 0, i16 0, ptr @deflate_stored }, %struct.config_s { i16 4, i16 4, i16 8, i16 4, ptr @deflate_fast }, %struct.config_s { i16 4, i16 5, i16 16, i16 8, ptr @deflate_fast }, %struct.config_s { i16 4, i16 6, i16 32, i16 32, ptr @deflate_fast }, %struct.config_s { i16 4, i16 4, i16 16, i16 16, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 32, i16 32, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 128, i16 128, ptr @deflate_slow }, %struct.config_s { i16 8, i16 32, i16 128, i16 256, ptr @deflate_slow }, %struct.config_s { i16 32, i16 128, i16 258, i16 1024, ptr @deflate_slow }, %struct.config_s { i16 32, i16 258, i16 258, i16 4096, ptr @deflate_slow }], align 16
@_length_code = external local_unnamed_addr constant [0 x i8], align 1
@_dist_code = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateInit_(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %153, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !5
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %153, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %153, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %14, align 8, !tbaa !8
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  store ptr @zcalloc, ptr %15, align 8, !tbaa !13
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %19, align 8, !tbaa !14
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ @zcalloc, %18 ], [ %16, %13 ]
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store ptr @zcfree, ptr %22, align 8, !tbaa !15
  br label %26

26:                                               ; preds = %25, %20
  %27 = icmp eq i32 %1, -1
  %28 = select i1 %27, i32 6, i32 %1
  %29 = icmp ugt i32 %28, 9
  br i1 %29, label %153, label %31

30:                                               ; preds = %137
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !14
  %34 = tail call ptr %21(ptr noundef %33, i32 noundef 1, i32 noundef 5968) #10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %153, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, ptr %34, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %37, i8 0, i64 5960, i1 false)
  %38 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %34, ptr %38, align 8, !tbaa !17
  store ptr %0, ptr %34, align 8, !tbaa !18
  store i32 42, ptr %37, align 8, !tbaa !22
  %39 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 6
  store i32 1, ptr %39, align 8, !tbaa !23
  %40 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 12
  store i32 15, ptr %40, align 4, !tbaa !24
  %41 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 11
  store i32 32768, ptr %41, align 8, !tbaa !25
  %42 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 13
  store i32 32767, ptr %42, align 8, !tbaa !26
  %43 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 19
  store <4 x i32> <i32 32768, i32 15, i32 32767, i32 5>, ptr %43, align 4, !tbaa !27
  %44 = load ptr, ptr %15, align 8, !tbaa !13
  %45 = load ptr, ptr %32, align 8, !tbaa !14
  %46 = tail call ptr %44(ptr noundef %45, i32 noundef 32768, i32 noundef 2) #10
  %47 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 14
  store ptr %46, ptr %47, align 8, !tbaa !28
  %48 = load ptr, ptr %15, align 8, !tbaa !13
  %49 = load ptr, ptr %32, align 8, !tbaa !14
  %50 = load i32, ptr %41, align 8, !tbaa !25
  %51 = tail call ptr %48(ptr noundef %49, i32 noundef %50, i32 noundef 2) #10
  %52 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 16
  store ptr %51, ptr %52, align 8, !tbaa !29
  %53 = load ptr, ptr %15, align 8, !tbaa !13
  %54 = load ptr, ptr %32, align 8, !tbaa !14
  %55 = load i32, ptr %43, align 4, !tbaa !30
  %56 = tail call ptr %53(ptr noundef %54, i32 noundef %55, i32 noundef 2) #10
  %57 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 17
  store ptr %56, ptr %57, align 8, !tbaa !31
  %58 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 59
  store i64 0, ptr %58, align 8, !tbaa !32
  %59 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 49
  store i32 16384, ptr %59, align 8, !tbaa !33
  %60 = load ptr, ptr %15, align 8, !tbaa !13
  %61 = load ptr, ptr %32, align 8, !tbaa !14
  %62 = tail call ptr %60(ptr noundef %61, i32 noundef 16384, i32 noundef 4) #10
  %63 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 2
  store ptr %62, ptr %63, align 8, !tbaa !34
  %64 = load i32, ptr %59, align 8, !tbaa !33
  %65 = zext i32 %64 to i64
  %66 = shl nuw nsw i64 %65, 2
  %67 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 3
  store i64 %66, ptr %67, align 8, !tbaa !35
  %68 = load ptr, ptr %47, align 8, !tbaa !28
  %69 = icmp eq ptr %68, null
  br i1 %69, label %79, label %71

70:                                               ; preds = %142
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !16
  unreachable, !nosanitize !16

71:                                               ; preds = %36
  %72 = load ptr, ptr %52, align 8, !tbaa !29
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %57, align 8, !tbaa !31
  %76 = icmp eq ptr %75, null
  %77 = icmp eq ptr %62, null
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %79, label %137

79:                                               ; preds = %74, %71, %36
  store i32 666, ptr %37, align 8, !tbaa !22
  %80 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 6), align 16, !tbaa !36
  store ptr %80, ptr %14, align 8, !tbaa !8
  %81 = load ptr, ptr %15, align 8, !tbaa !13
  %82 = icmp eq ptr %81, null
  br i1 %82, label %153, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %22, align 8, !tbaa !15
  %85 = icmp eq ptr %84, null
  br i1 %85, label %153, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %38, align 8, !tbaa !17
  %88 = icmp eq ptr %87, null
  br i1 %88, label %153, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %87, align 8, !tbaa !18
  %91 = icmp eq ptr %90, %0
  br i1 %91, label %92, label %153

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.internal_state, ptr %87, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !22
  switch i32 %94, label %153 [
    i32 42, label %95
    i32 57, label %95
    i32 69, label %95
    i32 73, label %95
    i32 91, label %95
    i32 103, label %95
    i32 113, label %95
    i32 666, label %95
  ]

95:                                               ; preds = %92, %92, %92, %92, %92, %92, %92, %92
  %96 = getelementptr inbounds %struct.internal_state, ptr %87, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !34
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %32, align 8, !tbaa !14
  tail call void %84(ptr noundef %100, ptr noundef nonnull %97) #10
  %101 = load ptr, ptr %38, align 8, !tbaa !17
  %102 = load ptr, ptr %22, align 8, !tbaa !15
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi ptr [ %102, %99 ], [ %84, %95 ]
  %105 = phi ptr [ %101, %99 ], [ %87, %95 ]
  %106 = getelementptr inbounds %struct.internal_state, ptr %105, i64 0, i32 17
  %107 = load ptr, ptr %106, align 8, !tbaa !31
  %108 = icmp eq ptr %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %103
  %110 = load ptr, ptr %32, align 8, !tbaa !14
  tail call void %104(ptr noundef %110, ptr noundef nonnull %107) #10
  %111 = load ptr, ptr %38, align 8, !tbaa !17
  %112 = load ptr, ptr %22, align 8, !tbaa !15
  br label %113

113:                                              ; preds = %109, %103
  %114 = phi ptr [ %112, %109 ], [ %104, %103 ]
  %115 = phi ptr [ %111, %109 ], [ %105, %103 ]
  %116 = getelementptr inbounds %struct.internal_state, ptr %115, i64 0, i32 16
  %117 = load ptr, ptr %116, align 8, !tbaa !29
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %113
  %120 = load ptr, ptr %32, align 8, !tbaa !14
  tail call void %114(ptr noundef %120, ptr noundef nonnull %117) #10
  %121 = load ptr, ptr %38, align 8, !tbaa !17
  %122 = load ptr, ptr %22, align 8, !tbaa !15
  br label %123

123:                                              ; preds = %119, %113
  %124 = phi ptr [ %122, %119 ], [ %114, %113 ]
  %125 = phi ptr [ %121, %119 ], [ %115, %113 ]
  %126 = getelementptr inbounds %struct.internal_state, ptr %125, i64 0, i32 14
  %127 = load ptr, ptr %126, align 8, !tbaa !28
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %123
  %130 = load ptr, ptr %32, align 8, !tbaa !14
  tail call void %124(ptr noundef %130, ptr noundef nonnull %127) #10
  %131 = load ptr, ptr %22, align 8, !tbaa !15
  %132 = load ptr, ptr %38, align 8, !tbaa !17
  br label %133

133:                                              ; preds = %129, %123
  %134 = phi ptr [ %132, %129 ], [ %125, %123 ]
  %135 = phi ptr [ %131, %129 ], [ %124, %123 ]
  %136 = load ptr, ptr %32, align 8, !tbaa !14
  tail call void %135(ptr noundef %136, ptr noundef %134) #10
  store ptr null, ptr %38, align 8, !tbaa !17
  br label %153

137:                                              ; preds = %74
  %138 = getelementptr inbounds i8, ptr %62, i64 %65
  %139 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 48
  store ptr %138, ptr %139, align 8, !tbaa !37
  %140 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %64, i32 1), !nosanitize !16
  %141 = extractvalue { i32, i1 } %140, 1, !nosanitize !16
  br i1 %141, label %30, label %142, !nosanitize !16

142:                                              ; preds = %137
  %143 = extractvalue { i32, i1 } %140, 0, !nosanitize !16
  %144 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %143, i32 3), !nosanitize !16
  %145 = extractvalue { i32, i1 } %144, 1, !nosanitize !16
  br i1 %145, label %70, label %146, !nosanitize !16

146:                                              ; preds = %142
  %147 = extractvalue { i32, i1 } %144, 0, !nosanitize !16
  %148 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 51
  store i32 %147, ptr %148, align 8, !tbaa !38
  %149 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 33
  store i32 %28, ptr %149, align 4, !tbaa !39
  %150 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 34
  store i32 0, ptr %150, align 8, !tbaa !40
  %151 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 9
  store i8 8, ptr %151, align 8, !tbaa !41
  %152 = tail call i32 @deflateReset(ptr noundef nonnull %0), !range !42
  br label %153

153:                                              ; preds = %4, %6, %11, %26, %31, %79, %83, %86, %89, %92, %133, %146
  %154 = phi i32 [ %152, %146 ], [ -6, %6 ], [ -6, %4 ], [ -2, %11 ], [ -2, %26 ], [ -4, %31 ], [ -4, %79 ], [ -4, %83 ], [ -4, %86 ], [ -4, %89 ], [ -4, %92 ], [ -4, %133 ]
  ret i32 %154
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  br i1 %9, label %199, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !5
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %199, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %199, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %18, align 8, !tbaa !8
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  store ptr @zcalloc, ptr %19, align 8, !tbaa !13
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %23, align 8, !tbaa !14
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ @zcalloc, %22 ], [ %20, %17 ]
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store ptr @zcfree, ptr %26, align 8, !tbaa !15
  br label %30

30:                                               ; preds = %29, %24
  %31 = icmp eq i32 %1, -1
  %32 = select i1 %31, i32 6, i32 %1
  %33 = icmp slt i32 %3, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = icmp ult i32 %3, -15
  br i1 %35, label %199, label %36

36:                                               ; preds = %34
  %37 = sub nsw i32 0, %3
  br label %43

38:                                               ; preds = %30
  %39 = icmp ugt i32 %3, 15
  br i1 %39, label %41, label %43

40:                                               ; preds = %183
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

41:                                               ; preds = %38
  %42 = add nsw i32 %3, -16
  br label %43

43:                                               ; preds = %38, %41, %36
  %44 = phi i32 [ %37, %36 ], [ %42, %41 ], [ %3, %38 ]
  %45 = phi i1 [ true, %36 ], [ true, %41 ], [ false, %38 ]
  %46 = phi i32 [ 0, %36 ], [ 2, %41 ], [ 1, %38 ]
  %47 = add i32 %4, -10
  %48 = icmp ult i32 %47, -9
  %49 = icmp ne i32 %2, 8
  %50 = or i1 %49, %48
  %51 = icmp ult i32 %44, 8
  %52 = select i1 %50, i1 true, i1 %51
  %53 = icmp ugt i32 %44, 15
  %54 = select i1 %52, i1 true, i1 %53
  %55 = icmp ugt i32 %32, 9
  %56 = or i1 %55, %54
  %57 = icmp ugt i32 %5, 4
  %58 = or i1 %57, %56
  br i1 %58, label %199, label %59

59:                                               ; preds = %43
  %60 = icmp eq i32 %44, 8
  %61 = and i1 %60, %45
  br i1 %61, label %199, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %64 = load ptr, ptr %63, align 8, !tbaa !14
  %65 = tail call ptr %25(ptr noundef %64, i32 noundef 1, i32 noundef 5968) #10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %199, label %67

67:                                               ; preds = %62
  %68 = select i1 %60, i32 9, i32 %44
  %69 = getelementptr inbounds i8, ptr %65, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %69, i8 0, i64 5960, i1 false)
  %70 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %65, ptr %70, align 8, !tbaa !17
  store ptr %0, ptr %65, align 8, !tbaa !18
  %71 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 1
  store i32 42, ptr %71, align 8, !tbaa !22
  %72 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 6
  store i32 %46, ptr %72, align 8, !tbaa !23
  %73 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 12
  store i32 %68, ptr %73, align 4, !tbaa !24
  %74 = shl nuw nsw i32 1, %68
  %75 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 11
  store i32 %74, ptr %75, align 8, !tbaa !25
  %76 = add nsw i32 %74, -1
  %77 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 13
  store i32 %76, ptr %77, align 8, !tbaa !26
  %78 = add nuw nsw i32 %4, 7
  %79 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 20
  store i32 %78, ptr %79, align 8, !tbaa !43
  %80 = shl nuw nsw i32 128, %4
  %81 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 19
  store i32 %80, ptr %81, align 4, !tbaa !30
  %82 = add nsw i32 %80, -1
  %83 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 21
  store i32 %82, ptr %83, align 4, !tbaa !44
  %84 = trunc i32 %4 to i8
  %85 = add nuw nsw i8 %84, 9
  %86 = udiv i8 %85, 3
  %87 = zext nneg i8 %86 to i32
  %88 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 22
  store i32 %87, ptr %88, align 8, !tbaa !45
  %89 = load ptr, ptr %19, align 8, !tbaa !13
  %90 = load ptr, ptr %63, align 8, !tbaa !14
  %91 = tail call ptr %89(ptr noundef %90, i32 noundef %74, i32 noundef 2) #10
  %92 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 14
  store ptr %91, ptr %92, align 8, !tbaa !28
  %93 = load ptr, ptr %19, align 8, !tbaa !13
  %94 = load ptr, ptr %63, align 8, !tbaa !14
  %95 = load i32, ptr %75, align 8, !tbaa !25
  %96 = tail call ptr %93(ptr noundef %94, i32 noundef %95, i32 noundef 2) #10
  %97 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 16
  store ptr %96, ptr %97, align 8, !tbaa !29
  %98 = load ptr, ptr %19, align 8, !tbaa !13
  %99 = load ptr, ptr %63, align 8, !tbaa !14
  %100 = load i32, ptr %81, align 4, !tbaa !30
  %101 = tail call ptr %98(ptr noundef %99, i32 noundef %100, i32 noundef 2) #10
  %102 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 17
  store ptr %101, ptr %102, align 8, !tbaa !31
  %103 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 59
  store i64 0, ptr %103, align 8, !tbaa !32
  %104 = shl nuw nsw i32 64, %4
  %105 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 49
  store i32 %104, ptr %105, align 8, !tbaa !33
  %106 = load ptr, ptr %19, align 8, !tbaa !13
  %107 = load ptr, ptr %63, align 8, !tbaa !14
  %108 = tail call ptr %106(ptr noundef %107, i32 noundef %104, i32 noundef 4) #10
  %109 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 2
  store ptr %108, ptr %109, align 8, !tbaa !34
  %110 = load i32, ptr %105, align 8, !tbaa !33
  %111 = zext i32 %110 to i64
  %112 = shl nuw nsw i64 %111, 2
  %113 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 3
  store i64 %112, ptr %113, align 8, !tbaa !35
  %114 = load ptr, ptr %92, align 8, !tbaa !28
  %115 = icmp eq ptr %114, null
  br i1 %115, label %125, label %117

116:                                              ; preds = %188
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !16
  unreachable, !nosanitize !16

117:                                              ; preds = %67
  %118 = load ptr, ptr %97, align 8, !tbaa !29
  %119 = icmp eq ptr %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr %102, align 8, !tbaa !31
  %122 = icmp eq ptr %121, null
  %123 = icmp eq ptr %108, null
  %124 = select i1 %122, i1 true, i1 %123
  br i1 %124, label %125, label %183

125:                                              ; preds = %67, %117, %120
  store i32 666, ptr %71, align 8, !tbaa !22
  %126 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 6), align 16, !tbaa !36
  store ptr %126, ptr %18, align 8, !tbaa !8
  %127 = load ptr, ptr %19, align 8, !tbaa !13
  %128 = icmp eq ptr %127, null
  br i1 %128, label %199, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr %26, align 8, !tbaa !15
  %131 = icmp eq ptr %130, null
  br i1 %131, label %199, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %70, align 8, !tbaa !17
  %134 = icmp eq ptr %133, null
  br i1 %134, label %199, label %135

135:                                              ; preds = %132
  %136 = load ptr, ptr %133, align 8, !tbaa !18
  %137 = icmp eq ptr %136, %0
  br i1 %137, label %138, label %199

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 1
  %140 = load i32, ptr %139, align 8, !tbaa !22
  switch i32 %140, label %199 [
    i32 42, label %141
    i32 57, label %141
    i32 69, label %141
    i32 73, label %141
    i32 91, label %141
    i32 103, label %141
    i32 113, label %141
    i32 666, label %141
  ]

141:                                              ; preds = %138, %138, %138, %138, %138, %138, %138, %138
  %142 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !34
  %144 = icmp eq ptr %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load ptr, ptr %63, align 8, !tbaa !14
  tail call void %130(ptr noundef %146, ptr noundef nonnull %143) #10
  %147 = load ptr, ptr %70, align 8, !tbaa !17
  %148 = load ptr, ptr %26, align 8, !tbaa !15
  br label %149

149:                                              ; preds = %145, %141
  %150 = phi ptr [ %148, %145 ], [ %130, %141 ]
  %151 = phi ptr [ %147, %145 ], [ %133, %141 ]
  %152 = getelementptr inbounds %struct.internal_state, ptr %151, i64 0, i32 17
  %153 = load ptr, ptr %152, align 8, !tbaa !31
  %154 = icmp eq ptr %153, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %149
  %156 = load ptr, ptr %63, align 8, !tbaa !14
  tail call void %150(ptr noundef %156, ptr noundef nonnull %153) #10
  %157 = load ptr, ptr %70, align 8, !tbaa !17
  %158 = load ptr, ptr %26, align 8, !tbaa !15
  br label %159

159:                                              ; preds = %155, %149
  %160 = phi ptr [ %158, %155 ], [ %150, %149 ]
  %161 = phi ptr [ %157, %155 ], [ %151, %149 ]
  %162 = getelementptr inbounds %struct.internal_state, ptr %161, i64 0, i32 16
  %163 = load ptr, ptr %162, align 8, !tbaa !29
  %164 = icmp eq ptr %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %159
  %166 = load ptr, ptr %63, align 8, !tbaa !14
  tail call void %160(ptr noundef %166, ptr noundef nonnull %163) #10
  %167 = load ptr, ptr %70, align 8, !tbaa !17
  %168 = load ptr, ptr %26, align 8, !tbaa !15
  br label %169

169:                                              ; preds = %165, %159
  %170 = phi ptr [ %168, %165 ], [ %160, %159 ]
  %171 = phi ptr [ %167, %165 ], [ %161, %159 ]
  %172 = getelementptr inbounds %struct.internal_state, ptr %171, i64 0, i32 14
  %173 = load ptr, ptr %172, align 8, !tbaa !28
  %174 = icmp eq ptr %173, null
  br i1 %174, label %179, label %175

175:                                              ; preds = %169
  %176 = load ptr, ptr %63, align 8, !tbaa !14
  tail call void %170(ptr noundef %176, ptr noundef nonnull %173) #10
  %177 = load ptr, ptr %26, align 8, !tbaa !15
  %178 = load ptr, ptr %70, align 8, !tbaa !17
  br label %179

179:                                              ; preds = %175, %169
  %180 = phi ptr [ %178, %175 ], [ %171, %169 ]
  %181 = phi ptr [ %177, %175 ], [ %170, %169 ]
  %182 = load ptr, ptr %63, align 8, !tbaa !14
  tail call void %181(ptr noundef %182, ptr noundef %180) #10
  store ptr null, ptr %70, align 8, !tbaa !17
  br label %199

183:                                              ; preds = %120
  %184 = getelementptr inbounds i8, ptr %108, i64 %111
  %185 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 48
  store ptr %184, ptr %185, align 8, !tbaa !37
  %186 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %110, i32 1), !nosanitize !16
  %187 = extractvalue { i32, i1 } %186, 1, !nosanitize !16
  br i1 %187, label %40, label %188, !nosanitize !16

188:                                              ; preds = %183
  %189 = extractvalue { i32, i1 } %186, 0, !nosanitize !16
  %190 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %189, i32 3), !nosanitize !16
  %191 = extractvalue { i32, i1 } %190, 1, !nosanitize !16
  br i1 %191, label %116, label %192, !nosanitize !16

192:                                              ; preds = %188
  %193 = extractvalue { i32, i1 } %190, 0, !nosanitize !16
  %194 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 51
  store i32 %193, ptr %194, align 8, !tbaa !38
  %195 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 33
  store i32 %32, ptr %195, align 4, !tbaa !39
  %196 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 34
  store i32 %5, ptr %196, align 8, !tbaa !40
  %197 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 9
  store i8 8, ptr %197, align 8, !tbaa !41
  %198 = tail call i32 @deflateReset(ptr noundef nonnull %0), !range !42
  br label %199

199:                                              ; preds = %179, %138, %135, %132, %129, %125, %62, %43, %59, %34, %15, %8, %10, %192
  %200 = phi i32 [ %198, %192 ], [ -6, %10 ], [ -6, %8 ], [ -2, %15 ], [ -2, %34 ], [ -2, %59 ], [ -2, %43 ], [ -4, %62 ], [ -4, %125 ], [ -4, %129 ], [ -4, %132 ], [ -4, %135 ], [ -4, %138 ], [ -4, %179 ]
  ret i32 %200
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateEnd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %70, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %70, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %70, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !18
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %70

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !22
  switch i32 %20, label %70 [
    i32 42, label %21
    i32 57, label %21
    i32 69, label %21
    i32 73, label %21
    i32 91, label %21
    i32 103, label %21
    i32 113, label %21
    i32 666, label %21
  ]

21:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18
  %22 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  tail call void %9(ptr noundef %27, ptr noundef nonnull %23) #10
  %28 = load ptr, ptr %12, align 8, !tbaa !17
  %29 = load ptr, ptr %8, align 8, !tbaa !15
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi ptr [ %29, %25 ], [ %9, %21 ]
  %32 = phi ptr [ %28, %25 ], [ %13, %21 ]
  %33 = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !31
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !14
  tail call void %31(ptr noundef %38, ptr noundef nonnull %34) #10
  %39 = load ptr, ptr %12, align 8, !tbaa !17
  %40 = load ptr, ptr %8, align 8, !tbaa !15
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi ptr [ %40, %36 ], [ %31, %30 ]
  %43 = phi ptr [ %39, %36 ], [ %32, %30 ]
  %44 = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 16
  %45 = load ptr, ptr %44, align 8, !tbaa !29
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !14
  tail call void %42(ptr noundef %49, ptr noundef nonnull %45) #10
  %50 = load ptr, ptr %12, align 8, !tbaa !17
  %51 = load ptr, ptr %8, align 8, !tbaa !15
  br label %52

52:                                               ; preds = %47, %41
  %53 = phi ptr [ %51, %47 ], [ %42, %41 ]
  %54 = phi ptr [ %50, %47 ], [ %43, %41 ]
  %55 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !28
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %60 = load ptr, ptr %59, align 8, !tbaa !14
  tail call void %53(ptr noundef %60, ptr noundef nonnull %56) #10
  %61 = load ptr, ptr %8, align 8, !tbaa !15
  %62 = load ptr, ptr %12, align 8, !tbaa !17
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi ptr [ %62, %58 ], [ %54, %52 ]
  %65 = phi ptr [ %61, %58 ], [ %53, %52 ]
  %66 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %67 = load ptr, ptr %66, align 8, !tbaa !14
  tail call void %65(ptr noundef %67, ptr noundef %64) #10
  store ptr null, ptr %12, align 8, !tbaa !17
  %68 = icmp eq i32 %20, 113
  %69 = select i1 %68, i32 -3, i32 0
  br label %70

70:                                               ; preds = %11, %15, %18, %1, %3, %7, %63
  %71 = phi i32 [ %69, %63 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateReset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %96, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %96, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %96, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %96, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !18
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %96

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !22
  switch i32 %20, label %96 [
    i32 42, label %21
    i32 57, label %21
    i32 69, label %21
    i32 73, label %21
    i32 91, label %21
    i32 103, label %21
    i32 113, label %21
    i32 666, label %21
  ]

21:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %23, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 5
  store i64 0, ptr %25, align 8, !tbaa !48
  %26 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 4
  store ptr %27, ptr %28, align 8, !tbaa !49
  %29 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !23
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %30), !nosanitize !16
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !16
  br i1 %34, label %35, label %36, !nosanitize !16

35:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 13) #9, !nosanitize !16
  unreachable, !nosanitize !16

36:                                               ; preds = %32
  %37 = extractvalue { i32, i1 } %33, 0, !nosanitize !16
  store i32 %37, ptr %29, align 8, !tbaa !23
  br label %38

38:                                               ; preds = %36, %21
  %39 = phi i32 [ %37, %36 ], [ %30, %21 ]
  %40 = icmp eq i32 %39, 2
  %41 = select i1 %40, i32 57, i32 42
  store i32 %41, ptr %19, align 8, !tbaa !22
  br i1 %40, label %42, label %44

42:                                               ; preds = %38
  %43 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  br label %46

44:                                               ; preds = %38
  %45 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %47, ptr %48, align 8, !tbaa !50
  %49 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 10
  store i32 -2, ptr %49, align 4, !tbaa !51
  tail call void @_tr_init(ptr noundef nonnull %13) #10
  %50 = load ptr, ptr %12, align 8, !tbaa !17
  %51 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 11
  %52 = load i32, ptr %51, align 8, !tbaa !25
  %53 = zext i32 %52 to i64
  %54 = shl nuw nsw i64 %53, 1
  %55 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 15
  store i64 %54, ptr %55, align 8, !tbaa !52
  %56 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 19
  %57 = load i32, ptr %56, align 4, !tbaa !30
  %58 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 1), !nosanitize !16
  %59 = extractvalue { i32, i1 } %58, 1, !nosanitize !16
  br i1 %59, label %60, label %61, !nosanitize !16

60:                                               ; preds = %46
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

61:                                               ; preds = %46
  %62 = extractvalue { i32, i1 } %58, 0, !nosanitize !16
  %63 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 17
  %64 = load ptr, ptr %63, align 8, !tbaa !31
  %65 = zext i32 %62 to i64
  %66 = getelementptr inbounds i16, ptr %64, i64 %65
  store i16 0, ptr %66, align 2, !tbaa !53
  %67 = shl nuw nsw i64 %65, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %64, i8 0, i64 %67, i1 false)
  %68 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 60
  store i32 0, ptr %68, align 8, !tbaa !54
  %69 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 33
  %70 = load i32, ptr %69, align 4, !tbaa !39
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %71, i32 1
  %73 = load i16, ptr %72, align 2, !tbaa !55
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 32
  store i32 %74, ptr %75, align 8, !tbaa !57
  %76 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %71
  %77 = load i16, ptr %76, align 16, !tbaa !58
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 35
  store i32 %78, ptr %79, align 4, !tbaa !59
  %80 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %71, i32 2
  %81 = load i16, ptr %80, align 4, !tbaa !60
  %82 = zext i16 %81 to i32
  %83 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 36
  store i32 %82, ptr %83, align 8, !tbaa !61
  %84 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %71, i32 3
  %85 = load i16, ptr %84, align 2, !tbaa !62
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 31
  store i32 %86, ptr %87, align 4, !tbaa !63
  %88 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 27
  store i32 0, ptr %88, align 4, !tbaa !64
  %89 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 23
  store i64 0, ptr %89, align 8, !tbaa !65
  %90 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 29
  store i32 0, ptr %90, align 4, !tbaa !66
  %91 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 55
  store i32 0, ptr %91, align 4, !tbaa !67
  %92 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 30
  store i32 2, ptr %92, align 8, !tbaa !68
  %93 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 24
  store i32 2, ptr %93, align 8, !tbaa !69
  %94 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 26
  store i32 0, ptr %94, align 8, !tbaa !70
  %95 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 18
  store i32 0, ptr %95, align 8, !tbaa !71
  br label %96

96:                                               ; preds = %11, %15, %18, %1, %3, %7, %61
  %97 = phi i32 [ 0, %61 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateSetDictionary(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %687, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %687, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %687, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %687, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !18
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %687

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !22
  switch i32 %22, label %687 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = icmp eq ptr %1, null
  br i1 %24, label %687, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !23
  switch i32 %27, label %34 [
    i32 2, label %687
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %687

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 29
  %32 = load i32, ptr %31, align 4, !tbaa !66
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %687

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 29
  %36 = load i32, ptr %35, align 4, !tbaa !66
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %687

38:                                               ; preds = %34
  store i32 0, ptr %26, align 8, !tbaa !23
  %39 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 11
  %40 = load i32, ptr %39, align 8, !tbaa !25
  %41 = icmp ugt i32 %40, %2
  br i1 %41, label %79, label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %44 = load i64, ptr %43, align 8, !tbaa !50
  %45 = tail call i64 @adler32(i64 noundef %44, ptr noundef nonnull %1, i32 noundef %2) #10
  store i64 %45, ptr %43, align 8, !tbaa !50
  store i32 0, ptr %26, align 8, !tbaa !23
  %46 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 11
  %47 = load i32, ptr %46, align 8, !tbaa !25
  %48 = icmp ugt i32 %47, %2
  br i1 %48, label %79, label %69

49:                                               ; preds = %38
  %50 = icmp eq i32 %27, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 19
  %53 = load i32, ptr %52, align 4, !tbaa !30
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %53, i32 1), !nosanitize !16
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !16
  br i1 %55, label %56, label %57, !nosanitize !16

56:                                               ; preds = %69, %51
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

57:                                               ; preds = %51
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !16
  %59 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 17
  %60 = load ptr, ptr %59, align 8, !tbaa !31
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds i16, ptr %60, i64 %61
  store i16 0, ptr %62, align 2, !tbaa !53
  %63 = shl nuw nsw i64 %61, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %60, i8 0, i64 %63, i1 false)
  %64 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 60
  store i32 0, ptr %64, align 8, !tbaa !54
  %65 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 27
  store i32 0, ptr %65, align 4, !tbaa !64
  %66 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 23
  store i64 0, ptr %66, align 8, !tbaa !65
  %67 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 55
  store i32 0, ptr %67, align 4, !tbaa !67
  %68 = load i32, ptr %39, align 8, !tbaa !25
  br label %69

69:                                               ; preds = %42, %57, %49
  %70 = phi ptr [ %35, %57 ], [ %35, %49 ], [ %31, %42 ]
  %71 = phi ptr [ %39, %57 ], [ %39, %49 ], [ %46, %42 ]
  %72 = phi i32 [ %68, %57 ], [ %40, %49 ], [ %47, %42 ]
  %73 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 %72), !nosanitize !16
  %74 = extractvalue { i32, i1 } %73, 1, !nosanitize !16
  br i1 %74, label %56, label %75, !nosanitize !16

75:                                               ; preds = %69
  %76 = extractvalue { i32, i1 } %73, 0, !nosanitize !16
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %1, i64 %77
  br label %79

79:                                               ; preds = %42, %75, %38
  %80 = phi ptr [ %71, %75 ], [ %39, %38 ], [ %46, %42 ]
  %81 = phi ptr [ %70, %75 ], [ %35, %38 ], [ %31, %42 ]
  %82 = phi i32 [ %72, %75 ], [ %40, %38 ], [ %47, %42 ]
  %83 = phi i32 [ %72, %75 ], [ %2, %38 ], [ %2, %42 ]
  %84 = phi ptr [ %78, %75 ], [ %1, %38 ], [ %1, %42 ]
  %85 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !72
  %87 = load ptr, ptr %0, align 8, !tbaa !73
  store i32 %83, ptr %85, align 8, !tbaa !72
  store ptr %84, ptr %0, align 8, !tbaa !73
  %88 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 15
  %89 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 27
  %90 = zext i32 %82 to i64
  %91 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 14
  %92 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 28
  %93 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 23
  %94 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 55
  %95 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 19
  %96 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 17
  %97 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 16
  %98 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 60
  %99 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 18
  %100 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 22
  %101 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 21
  %102 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 13
  %103 = load i32, ptr %81, align 4, !tbaa !66
  br label %104

104:                                              ; preds = %320, %79
  %105 = phi i32 [ %252, %320 ], [ %103, %79 ]
  %106 = load i64, ptr %88, align 8, !tbaa !52
  %107 = zext i32 %105 to i64
  %108 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %106, i64 %107), !nosanitize !16
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !16
  br i1 %109, label %110, label %111, !nosanitize !16

110:                                              ; preds = %259, %147, %142, %134, %131, %117, %111, %104, %349, %337
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

111:                                              ; preds = %104
  %112 = extractvalue { i64, i1 } %108, 0, !nosanitize !16
  %113 = load i32, ptr %89, align 4, !tbaa !64
  %114 = zext i32 %113 to i64
  %115 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %112, i64 %114), !nosanitize !16
  %116 = extractvalue { i64, i1 } %115, 1, !nosanitize !16
  br i1 %116, label %110, label %117, !nosanitize !16

117:                                              ; preds = %111
  %118 = extractvalue { i64, i1 } %115, 0, !nosanitize !16
  %119 = trunc i64 %118 to i32
  %120 = load i32, ptr %80, align 8, !tbaa !25
  %121 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %120, i32 262), !nosanitize !16
  %122 = extractvalue { i32, i1 } %121, 1, !nosanitize !16
  br i1 %122, label %110, label %123, !nosanitize !16

123:                                              ; preds = %117
  %124 = extractvalue { i32, i1 } %121, 0, !nosanitize !16
  %125 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %82, i32 %124), !nosanitize !16
  %126 = extractvalue { i32, i1 } %125, 1, !nosanitize !16
  br i1 %126, label %127, label %128, !nosanitize !16

127:                                              ; preds = %264, %251, %247, %194, %123, %291, %288, %352
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

128:                                              ; preds = %123
  %129 = extractvalue { i32, i1 } %125, 0, !nosanitize !16
  %130 = icmp ult i32 %113, %129
  br i1 %130, label %200, label %131

131:                                              ; preds = %128
  %132 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %82, i32 %119), !nosanitize !16
  %133 = extractvalue { i32, i1 } %132, 1, !nosanitize !16
  br i1 %133, label %110, label %134, !nosanitize !16

134:                                              ; preds = %131
  %135 = extractvalue { i32, i1 } %132, 0, !nosanitize !16
  %136 = load ptr, ptr %91, align 8, !tbaa !28
  %137 = getelementptr inbounds i8, ptr %136, i64 %90
  %138 = zext i32 %135 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %136, ptr align 1 %137, i64 %138, i1 false)
  %139 = load i32, ptr %92, align 8, !tbaa !74
  %140 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %139, i32 %82), !nosanitize !16
  %141 = extractvalue { i32, i1 } %140, 1, !nosanitize !16
  br i1 %141, label %110, label %142, !nosanitize !16

142:                                              ; preds = %134
  %143 = extractvalue { i32, i1 } %140, 0, !nosanitize !16
  store i32 %143, ptr %92, align 8, !tbaa !74
  %144 = load i32, ptr %89, align 4, !tbaa !64
  %145 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %144, i32 %82), !nosanitize !16
  %146 = extractvalue { i32, i1 } %145, 1, !nosanitize !16
  br i1 %146, label %110, label %147, !nosanitize !16

147:                                              ; preds = %142
  %148 = extractvalue { i32, i1 } %145, 0, !nosanitize !16
  store i32 %148, ptr %89, align 4, !tbaa !64
  %149 = load i64, ptr %93, align 8, !tbaa !65
  %150 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %149, i64 %90), !nosanitize !16
  %151 = extractvalue { i64, i1 } %150, 1, !nosanitize !16
  br i1 %151, label %110, label %152, !nosanitize !16

152:                                              ; preds = %147
  %153 = extractvalue { i64, i1 } %150, 0, !nosanitize !16
  store i64 %153, ptr %93, align 8, !tbaa !65
  %154 = load i32, ptr %94, align 4, !tbaa !67
  %155 = icmp ugt i32 %154, %148
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  store i32 %148, ptr %94, align 4, !tbaa !67
  br label %157

157:                                              ; preds = %156, %152
  %158 = load i32, ptr %80, align 8, !tbaa !25
  %159 = load i32, ptr %95, align 4, !tbaa !30
  %160 = load ptr, ptr %96, align 8, !tbaa !31
  %161 = zext i32 %159 to i64
  %162 = getelementptr inbounds i16, ptr %160, i64 %161
  br label %163

163:                                              ; preds = %174, %157
  %164 = phi ptr [ %162, %157 ], [ %166, %174 ]
  %165 = phi i32 [ %159, %157 ], [ %175, %174 ]
  %166 = getelementptr inbounds i16, ptr %164, i64 -1
  %167 = load i16, ptr %166, align 2, !tbaa !53
  %168 = zext i16 %167 to i32
  %169 = tail call i32 @llvm.usub.sat.i32(i32 %168, i32 %158)
  %170 = trunc i32 %169 to i16
  store i16 %170, ptr %166, align 2, !tbaa !53
  %171 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %165, i32 1), !nosanitize !16
  %172 = extractvalue { i32, i1 } %171, 1, !nosanitize !16
  br i1 %172, label %173, label %174, !nosanitize !16

173:                                              ; preds = %163, %181
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

174:                                              ; preds = %163
  %175 = extractvalue { i32, i1 } %171, 0, !nosanitize !16
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %163, !llvm.loop !75

177:                                              ; preds = %174
  %178 = load ptr, ptr %97, align 8, !tbaa !29
  %179 = zext i32 %158 to i64
  %180 = getelementptr inbounds i16, ptr %178, i64 %179
  br label %181

181:                                              ; preds = %191, %177
  %182 = phi ptr [ %180, %177 ], [ %184, %191 ]
  %183 = phi i32 [ %158, %177 ], [ %192, %191 ]
  %184 = getelementptr inbounds i16, ptr %182, i64 -1
  %185 = load i16, ptr %184, align 2, !tbaa !53
  %186 = zext i16 %185 to i32
  %187 = tail call i32 @llvm.usub.sat.i32(i32 %186, i32 %158)
  %188 = trunc i32 %187 to i16
  store i16 %188, ptr %184, align 2, !tbaa !53
  %189 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %183, i32 1), !nosanitize !16
  %190 = extractvalue { i32, i1 } %189, 1, !nosanitize !16
  br i1 %190, label %173, label %191, !nosanitize !16

191:                                              ; preds = %181
  %192 = extractvalue { i32, i1 } %189, 0, !nosanitize !16
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %181, !llvm.loop !77

194:                                              ; preds = %191
  store i32 1, ptr %98, align 8, !tbaa !54
  %195 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %119, i32 %82), !nosanitize !16
  %196 = extractvalue { i32, i1 } %195, 1, !nosanitize !16
  br i1 %196, label %127, label %197, !nosanitize !16

197:                                              ; preds = %194
  %198 = extractvalue { i32, i1 } %195, 0, !nosanitize !16
  %199 = load i32, ptr %81, align 4, !tbaa !66
  br label %200

200:                                              ; preds = %197, %128
  %201 = phi i32 [ %199, %197 ], [ %105, %128 ]
  %202 = phi i32 [ %148, %197 ], [ %113, %128 ]
  %203 = phi i32 [ %198, %197 ], [ %119, %128 ]
  %204 = load ptr, ptr %15, align 8, !tbaa !18
  %205 = getelementptr inbounds %struct.z_stream_s, ptr %204, i64 0, i32 1
  %206 = load i32, ptr %205, align 8, !tbaa !72
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %325, label %208

208:                                              ; preds = %200
  %209 = load ptr, ptr %91, align 8, !tbaa !28
  %210 = zext i32 %202 to i64
  %211 = getelementptr inbounds i8, ptr %209, i64 %210
  %212 = zext i32 %201 to i64
  %213 = getelementptr inbounds i8, ptr %211, i64 %212
  %214 = tail call i32 @llvm.umin.i32(i32 %206, i32 %203)
  %215 = icmp eq i32 %203, 0
  br i1 %215, label %247, label %216

216:                                              ; preds = %208
  %217 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %206, i32 %214), !nosanitize !16
  %218 = extractvalue { i32, i1 } %217, 1, !nosanitize !16
  br i1 %218, label %219, label %220, !nosanitize !16

219:                                              ; preds = %216
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

220:                                              ; preds = %216
  %221 = extractvalue { i32, i1 } %217, 0, !nosanitize !16
  store i32 %221, ptr %205, align 8, !tbaa !72
  %222 = load ptr, ptr %204, align 8, !tbaa !73
  %223 = zext i32 %214 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %213, ptr align 1 %222, i64 %223, i1 false)
  %224 = getelementptr inbounds %struct.z_stream_s, ptr %204, i64 0, i32 7
  %225 = load ptr, ptr %224, align 8, !tbaa !17
  %226 = getelementptr inbounds %struct.internal_state, ptr %225, i64 0, i32 6
  %227 = load i32, ptr %226, align 8, !tbaa !23
  switch i32 %227, label %236 [
    i32 1, label %228
    i32 2, label %232
  ]

228:                                              ; preds = %220
  %229 = getelementptr inbounds %struct.z_stream_s, ptr %204, i64 0, i32 12
  %230 = load i64, ptr %229, align 8, !tbaa !50
  %231 = tail call i64 @adler32(i64 noundef %230, ptr noundef %213, i32 noundef %214) #10
  store i64 %231, ptr %229, align 8, !tbaa !50
  br label %236

232:                                              ; preds = %220
  %233 = getelementptr inbounds %struct.z_stream_s, ptr %204, i64 0, i32 12
  %234 = load i64, ptr %233, align 8, !tbaa !50
  %235 = tail call i64 @crc32(i64 noundef %234, ptr noundef %213, i32 noundef %214) #10
  store i64 %235, ptr %233, align 8, !tbaa !50
  br label %236

236:                                              ; preds = %232, %228, %220
  %237 = load ptr, ptr %204, align 8, !tbaa !73
  %238 = getelementptr inbounds i8, ptr %237, i64 %223
  store ptr %238, ptr %204, align 8, !tbaa !73
  %239 = getelementptr inbounds %struct.z_stream_s, ptr %204, i64 0, i32 2
  %240 = load i64, ptr %239, align 8, !tbaa !46
  %241 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %240, i64 %223), !nosanitize !16
  %242 = extractvalue { i64, i1 } %241, 1, !nosanitize !16
  br i1 %242, label %243, label %244, !nosanitize !16

243:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

244:                                              ; preds = %236
  %245 = extractvalue { i64, i1 } %241, 0, !nosanitize !16
  store i64 %245, ptr %239, align 8, !tbaa !46
  %246 = load i32, ptr %81, align 4, !tbaa !66
  br label %247

247:                                              ; preds = %244, %208
  %248 = phi i32 [ %201, %208 ], [ %246, %244 ]
  %249 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 %214), !nosanitize !16
  %250 = extractvalue { i32, i1 } %249, 1, !nosanitize !16
  br i1 %250, label %127, label %251, !nosanitize !16

251:                                              ; preds = %247
  %252 = extractvalue { i32, i1 } %249, 0, !nosanitize !16
  store i32 %252, ptr %81, align 4, !tbaa !66
  %253 = load i32, ptr %94, align 4, !tbaa !67
  %254 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %252, i32 %253), !nosanitize !16
  %255 = extractvalue { i32, i1 } %254, 1, !nosanitize !16
  br i1 %255, label %127, label %256, !nosanitize !16

256:                                              ; preds = %251
  %257 = extractvalue { i32, i1 } %254, 0, !nosanitize !16
  %258 = icmp ugt i32 %257, 2
  br i1 %258, label %259, label %318

259:                                              ; preds = %256
  %260 = load i32, ptr %89, align 4, !tbaa !64
  %261 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %260, i32 %253), !nosanitize !16
  %262 = extractvalue { i32, i1 } %261, 0, !nosanitize !16
  %263 = extractvalue { i32, i1 } %261, 1, !nosanitize !16
  br i1 %263, label %110, label %264, !nosanitize !16

264:                                              ; preds = %259
  %265 = load ptr, ptr %91, align 8, !tbaa !28
  %266 = zext i32 %262 to i64
  %267 = getelementptr inbounds i8, ptr %265, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !5
  %269 = zext i8 %268 to i32
  store i32 %269, ptr %99, align 8, !tbaa !71
  %270 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %262, i32 1), !nosanitize !16
  %271 = extractvalue { i32, i1 } %270, 1, !nosanitize !16
  br i1 %271, label %127, label %272, !nosanitize !16

272:                                              ; preds = %264
  %273 = extractvalue { i32, i1 } %270, 0, !nosanitize !16
  %274 = load i32, ptr %100, align 8, !tbaa !45
  %275 = shl i32 %269, %274
  %276 = zext i32 %273 to i64
  %277 = getelementptr inbounds i8, ptr %265, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !5
  %279 = zext i8 %278 to i32
  %280 = xor i32 %275, %279
  %281 = load i32, ptr %101, align 4, !tbaa !44
  %282 = and i32 %280, %281
  store i32 %282, ptr %99, align 8, !tbaa !71
  br label %283

283:                                              ; preds = %314, %272
  %284 = phi i32 [ %282, %272 ], [ %300, %314 ]
  %285 = phi i32 [ %253, %272 ], [ %311, %314 ]
  %286 = phi i32 [ %262, %272 ], [ %315, %314 ]
  %287 = icmp eq i32 %285, 0
  br i1 %287, label %318, label %288

288:                                              ; preds = %283
  %289 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %286, i32 3), !nosanitize !16
  %290 = extractvalue { i32, i1 } %289, 1, !nosanitize !16
  br i1 %290, label %127, label %291, !nosanitize !16

291:                                              ; preds = %288
  %292 = shl i32 %284, %274
  %293 = extractvalue { i32, i1 } %289, 0, !nosanitize !16
  %294 = add i32 %293, -1
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds i8, ptr %265, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !5
  %298 = zext i8 %297 to i32
  %299 = xor i32 %292, %298
  %300 = and i32 %299, %281
  store i32 %300, ptr %99, align 8, !tbaa !71
  %301 = load ptr, ptr %96, align 8, !tbaa !31
  %302 = zext i32 %300 to i64
  %303 = getelementptr inbounds i16, ptr %301, i64 %302
  %304 = load i16, ptr %303, align 2, !tbaa !53
  %305 = load ptr, ptr %97, align 8, !tbaa !29
  %306 = load i32, ptr %102, align 8, !tbaa !26
  %307 = and i32 %306, %286
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds i16, ptr %305, i64 %308
  store i16 %304, ptr %309, align 2, !tbaa !53
  %310 = trunc i32 %286 to i16
  store i16 %310, ptr %303, align 2, !tbaa !53
  %311 = add i32 %285, -1
  store i32 %311, ptr %94, align 4, !tbaa !67
  %312 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %252, i32 %311), !nosanitize !16
  %313 = extractvalue { i32, i1 } %312, 1, !nosanitize !16
  br i1 %313, label %127, label %314, !nosanitize !16

314:                                              ; preds = %291
  %315 = add nuw i32 %286, 1
  %316 = extractvalue { i32, i1 } %312, 0, !nosanitize !16
  %317 = icmp ult i32 %316, 3
  br i1 %317, label %318, label %283, !llvm.loop !78

318:                                              ; preds = %314, %283, %256
  %319 = icmp ult i32 %252, 262
  br i1 %319, label %320, label %325

320:                                              ; preds = %318
  %321 = load ptr, ptr %15, align 8, !tbaa !18
  %322 = getelementptr inbounds %struct.z_stream_s, ptr %321, i64 0, i32 1
  %323 = load i32, ptr %322, align 8, !tbaa !72
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %104, !llvm.loop !79

325:                                              ; preds = %320, %318, %200
  %326 = phi i32 [ %252, %320 ], [ %252, %318 ], [ %201, %200 ]
  %327 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 59
  %328 = load i64, ptr %327, align 8, !tbaa !32
  %329 = load i64, ptr %88, align 8, !tbaa !52
  %330 = icmp ult i64 %328, %329
  br i1 %330, label %331, label %367

331:                                              ; preds = %325
  %332 = load i32, ptr %89, align 4, !tbaa !64
  %333 = zext i32 %332 to i64
  %334 = zext i32 %326 to i64
  %335 = add nuw nsw i64 %334, %333
  %336 = icmp ult i64 %328, %335
  br i1 %336, label %337, label %346

337:                                              ; preds = %331
  %338 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %329, i64 %335), !nosanitize !16
  %339 = extractvalue { i64, i1 } %338, 1, !nosanitize !16
  br i1 %339, label %110, label %340, !nosanitize !16

340:                                              ; preds = %337
  %341 = extractvalue { i64, i1 } %338, 0, !nosanitize !16
  %342 = tail call i64 @llvm.umin.i64(i64 %341, i64 258)
  %343 = load ptr, ptr %91, align 8, !tbaa !28
  %344 = getelementptr inbounds i8, ptr %343, i64 %335
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %344, i8 0, i64 %342, i1 false)
  %345 = add nuw nsw i64 %342, %335
  br label %364

346:                                              ; preds = %331
  %347 = add nuw nsw i64 %335, 258
  %348 = icmp ult i64 %328, %347
  br i1 %348, label %349, label %367

349:                                              ; preds = %346
  %350 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %329, i64 %328), !nosanitize !16
  %351 = extractvalue { i64, i1 } %350, 1, !nosanitize !16
  br i1 %351, label %110, label %352, !nosanitize !16

352:                                              ; preds = %349
  %353 = sub nuw nsw i64 %347, %328
  %354 = extractvalue { i64, i1 } %350, 0, !nosanitize !16
  %355 = tail call i64 @llvm.umin.i64(i64 %353, i64 %354)
  %356 = load ptr, ptr %91, align 8, !tbaa !28
  %357 = getelementptr inbounds i8, ptr %356, i64 %328
  %358 = and i64 %355, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %357, i8 0, i64 %358, i1 false)
  %359 = load i64, ptr %327, align 8, !tbaa !32
  %360 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %359, i64 %355), !nosanitize !16
  %361 = extractvalue { i64, i1 } %360, 1, !nosanitize !16
  br i1 %361, label %127, label %362, !nosanitize !16

362:                                              ; preds = %352
  %363 = extractvalue { i64, i1 } %360, 0, !nosanitize !16
  br label %364

364:                                              ; preds = %362, %340
  %365 = phi i64 [ %345, %340 ], [ %363, %362 ]
  store i64 %365, ptr %327, align 8, !tbaa !32
  %366 = load i32, ptr %81, align 4, !tbaa !66
  br label %367

367:                                              ; preds = %325, %346, %364
  %368 = phi i32 [ %326, %325 ], [ %326, %346 ], [ %366, %364 ]
  %369 = icmp ugt i32 %368, 2
  br i1 %369, label %370, label %676

370:                                              ; preds = %367, %673
  %371 = phi i32 [ %674, %673 ], [ %368, %367 ]
  %372 = add i32 %371, -2
  %373 = load i32, ptr %89, align 4, !tbaa !64
  %374 = load i32, ptr %100, align 8, !tbaa !45
  %375 = load ptr, ptr %91, align 8, !tbaa !28
  %376 = load i32, ptr %99, align 8, !tbaa !71
  br label %377

377:                                              ; preds = %384, %370
  %378 = phi i32 [ %376, %370 ], [ %394, %384 ]
  %379 = phi i32 [ %373, %370 ], [ %405, %384 ]
  %380 = phi i32 [ %372, %370 ], [ %406, %384 ]
  %381 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %379, i32 3), !nosanitize !16
  %382 = extractvalue { i32, i1 } %381, 1, !nosanitize !16
  br i1 %382, label %383, label %384, !nosanitize !16

383:                                              ; preds = %377, %676
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

384:                                              ; preds = %377
  %385 = shl i32 %378, %374
  %386 = extractvalue { i32, i1 } %381, 0, !nosanitize !16
  %387 = add i32 %386, -1
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds i8, ptr %375, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !5
  %391 = zext i8 %390 to i32
  %392 = xor i32 %385, %391
  %393 = load i32, ptr %101, align 4, !tbaa !44
  %394 = and i32 %392, %393
  store i32 %394, ptr %99, align 8, !tbaa !71
  %395 = load ptr, ptr %96, align 8, !tbaa !31
  %396 = zext i32 %394 to i64
  %397 = getelementptr inbounds i16, ptr %395, i64 %396
  %398 = load i16, ptr %397, align 2, !tbaa !53
  %399 = load ptr, ptr %97, align 8, !tbaa !29
  %400 = load i32, ptr %102, align 8, !tbaa !26
  %401 = and i32 %400, %379
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds i16, ptr %399, i64 %402
  store i16 %398, ptr %403, align 2, !tbaa !53
  %404 = trunc i32 %379 to i16
  store i16 %404, ptr %397, align 2, !tbaa !53
  %405 = add nuw i32 %379, 1
  %406 = add i32 %380, -1
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %377, !llvm.loop !80

408:                                              ; preds = %384
  store i32 %405, ptr %89, align 4, !tbaa !64
  store i32 2, ptr %81, align 4, !tbaa !66
  %409 = load i32, ptr %80, align 8, !tbaa !25
  %410 = zext i32 %409 to i64
  br label %411

411:                                              ; preds = %627, %408
  %412 = phi i32 [ %559, %627 ], [ 2, %408 ]
  %413 = load i64, ptr %88, align 8, !tbaa !52
  %414 = zext nneg i32 %412 to i64
  %415 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %413, i64 %414), !nosanitize !16
  %416 = extractvalue { i64, i1 } %415, 1, !nosanitize !16
  br i1 %416, label %417, label %418, !nosanitize !16

417:                                              ; preds = %655, %643, %566, %454, %449, %441, %438, %424, %418, %411
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

418:                                              ; preds = %411
  %419 = extractvalue { i64, i1 } %415, 0, !nosanitize !16
  %420 = load i32, ptr %89, align 4, !tbaa !64
  %421 = zext i32 %420 to i64
  %422 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %419, i64 %421), !nosanitize !16
  %423 = extractvalue { i64, i1 } %422, 1, !nosanitize !16
  br i1 %423, label %417, label %424, !nosanitize !16

424:                                              ; preds = %418
  %425 = extractvalue { i64, i1 } %422, 0, !nosanitize !16
  %426 = trunc i64 %425 to i32
  %427 = load i32, ptr %80, align 8, !tbaa !25
  %428 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %427, i32 262), !nosanitize !16
  %429 = extractvalue { i32, i1 } %428, 1, !nosanitize !16
  br i1 %429, label %417, label %430, !nosanitize !16

430:                                              ; preds = %424
  %431 = extractvalue { i32, i1 } %428, 0, !nosanitize !16
  %432 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %409, i32 %431), !nosanitize !16
  %433 = extractvalue { i32, i1 } %432, 1, !nosanitize !16
  br i1 %433, label %434, label %435, !nosanitize !16

434:                                              ; preds = %658, %571, %558, %554, %501, %430, %598, %595
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

435:                                              ; preds = %430
  %436 = extractvalue { i32, i1 } %432, 0, !nosanitize !16
  %437 = icmp ult i32 %420, %436
  br i1 %437, label %507, label %438

438:                                              ; preds = %435
  %439 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %409, i32 %426), !nosanitize !16
  %440 = extractvalue { i32, i1 } %439, 1, !nosanitize !16
  br i1 %440, label %417, label %441, !nosanitize !16

441:                                              ; preds = %438
  %442 = extractvalue { i32, i1 } %439, 0, !nosanitize !16
  %443 = load ptr, ptr %91, align 8, !tbaa !28
  %444 = getelementptr inbounds i8, ptr %443, i64 %410
  %445 = zext i32 %442 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %443, ptr align 1 %444, i64 %445, i1 false)
  %446 = load i32, ptr %92, align 8, !tbaa !74
  %447 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %446, i32 %409), !nosanitize !16
  %448 = extractvalue { i32, i1 } %447, 1, !nosanitize !16
  br i1 %448, label %417, label %449, !nosanitize !16

449:                                              ; preds = %441
  %450 = extractvalue { i32, i1 } %447, 0, !nosanitize !16
  store i32 %450, ptr %92, align 8, !tbaa !74
  %451 = load i32, ptr %89, align 4, !tbaa !64
  %452 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %451, i32 %409), !nosanitize !16
  %453 = extractvalue { i32, i1 } %452, 1, !nosanitize !16
  br i1 %453, label %417, label %454, !nosanitize !16

454:                                              ; preds = %449
  %455 = extractvalue { i32, i1 } %452, 0, !nosanitize !16
  store i32 %455, ptr %89, align 4, !tbaa !64
  %456 = load i64, ptr %93, align 8, !tbaa !65
  %457 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %456, i64 %410), !nosanitize !16
  %458 = extractvalue { i64, i1 } %457, 1, !nosanitize !16
  br i1 %458, label %417, label %459, !nosanitize !16

459:                                              ; preds = %454
  %460 = extractvalue { i64, i1 } %457, 0, !nosanitize !16
  store i64 %460, ptr %93, align 8, !tbaa !65
  %461 = load i32, ptr %94, align 4, !tbaa !67
  %462 = icmp ugt i32 %461, %455
  br i1 %462, label %463, label %464

463:                                              ; preds = %459
  store i32 %455, ptr %94, align 4, !tbaa !67
  br label %464

464:                                              ; preds = %463, %459
  %465 = load i32, ptr %80, align 8, !tbaa !25
  %466 = load i32, ptr %95, align 4, !tbaa !30
  %467 = load ptr, ptr %96, align 8, !tbaa !31
  %468 = zext i32 %466 to i64
  %469 = getelementptr inbounds i16, ptr %467, i64 %468
  br label %470

470:                                              ; preds = %481, %464
  %471 = phi ptr [ %469, %464 ], [ %473, %481 ]
  %472 = phi i32 [ %466, %464 ], [ %482, %481 ]
  %473 = getelementptr inbounds i16, ptr %471, i64 -1
  %474 = load i16, ptr %473, align 2, !tbaa !53
  %475 = zext i16 %474 to i32
  %476 = tail call i32 @llvm.usub.sat.i32(i32 %475, i32 %465)
  %477 = trunc i32 %476 to i16
  store i16 %477, ptr %473, align 2, !tbaa !53
  %478 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %472, i32 1), !nosanitize !16
  %479 = extractvalue { i32, i1 } %478, 1, !nosanitize !16
  br i1 %479, label %480, label %481, !nosanitize !16

480:                                              ; preds = %470, %488
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

481:                                              ; preds = %470
  %482 = extractvalue { i32, i1 } %478, 0, !nosanitize !16
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %470, !llvm.loop !75

484:                                              ; preds = %481
  %485 = load ptr, ptr %97, align 8, !tbaa !29
  %486 = zext i32 %465 to i64
  %487 = getelementptr inbounds i16, ptr %485, i64 %486
  br label %488

488:                                              ; preds = %498, %484
  %489 = phi ptr [ %487, %484 ], [ %491, %498 ]
  %490 = phi i32 [ %465, %484 ], [ %499, %498 ]
  %491 = getelementptr inbounds i16, ptr %489, i64 -1
  %492 = load i16, ptr %491, align 2, !tbaa !53
  %493 = zext i16 %492 to i32
  %494 = tail call i32 @llvm.usub.sat.i32(i32 %493, i32 %465)
  %495 = trunc i32 %494 to i16
  store i16 %495, ptr %491, align 2, !tbaa !53
  %496 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %490, i32 1), !nosanitize !16
  %497 = extractvalue { i32, i1 } %496, 1, !nosanitize !16
  br i1 %497, label %480, label %498, !nosanitize !16

498:                                              ; preds = %488
  %499 = extractvalue { i32, i1 } %496, 0, !nosanitize !16
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %488, !llvm.loop !77

501:                                              ; preds = %498
  store i32 1, ptr %98, align 8, !tbaa !54
  %502 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %426, i32 %409), !nosanitize !16
  %503 = extractvalue { i32, i1 } %502, 1, !nosanitize !16
  br i1 %503, label %434, label %504, !nosanitize !16

504:                                              ; preds = %501
  %505 = extractvalue { i32, i1 } %502, 0, !nosanitize !16
  %506 = load i32, ptr %81, align 4, !tbaa !66
  br label %507

507:                                              ; preds = %504, %435
  %508 = phi i32 [ %506, %504 ], [ %412, %435 ]
  %509 = phi i32 [ %455, %504 ], [ %420, %435 ]
  %510 = phi i32 [ %505, %504 ], [ %426, %435 ]
  %511 = load ptr, ptr %15, align 8, !tbaa !18
  %512 = getelementptr inbounds %struct.z_stream_s, ptr %511, i64 0, i32 1
  %513 = load i32, ptr %512, align 8, !tbaa !72
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %632, label %515

515:                                              ; preds = %507
  %516 = load ptr, ptr %91, align 8, !tbaa !28
  %517 = zext i32 %509 to i64
  %518 = getelementptr inbounds i8, ptr %516, i64 %517
  %519 = zext i32 %508 to i64
  %520 = getelementptr inbounds i8, ptr %518, i64 %519
  %521 = tail call i32 @llvm.umin.i32(i32 %513, i32 %510)
  %522 = icmp eq i32 %510, 0
  br i1 %522, label %554, label %523

523:                                              ; preds = %515
  %524 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %513, i32 %521), !nosanitize !16
  %525 = extractvalue { i32, i1 } %524, 1, !nosanitize !16
  br i1 %525, label %526, label %527, !nosanitize !16

526:                                              ; preds = %523
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

527:                                              ; preds = %523
  %528 = extractvalue { i32, i1 } %524, 0, !nosanitize !16
  store i32 %528, ptr %512, align 8, !tbaa !72
  %529 = load ptr, ptr %511, align 8, !tbaa !73
  %530 = zext i32 %521 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %520, ptr align 1 %529, i64 %530, i1 false)
  %531 = getelementptr inbounds %struct.z_stream_s, ptr %511, i64 0, i32 7
  %532 = load ptr, ptr %531, align 8, !tbaa !17
  %533 = getelementptr inbounds %struct.internal_state, ptr %532, i64 0, i32 6
  %534 = load i32, ptr %533, align 8, !tbaa !23
  switch i32 %534, label %543 [
    i32 1, label %535
    i32 2, label %539
  ]

535:                                              ; preds = %527
  %536 = getelementptr inbounds %struct.z_stream_s, ptr %511, i64 0, i32 12
  %537 = load i64, ptr %536, align 8, !tbaa !50
  %538 = tail call i64 @adler32(i64 noundef %537, ptr noundef %520, i32 noundef %521) #10
  store i64 %538, ptr %536, align 8, !tbaa !50
  br label %543

539:                                              ; preds = %527
  %540 = getelementptr inbounds %struct.z_stream_s, ptr %511, i64 0, i32 12
  %541 = load i64, ptr %540, align 8, !tbaa !50
  %542 = tail call i64 @crc32(i64 noundef %541, ptr noundef %520, i32 noundef %521) #10
  store i64 %542, ptr %540, align 8, !tbaa !50
  br label %543

543:                                              ; preds = %539, %535, %527
  %544 = load ptr, ptr %511, align 8, !tbaa !73
  %545 = getelementptr inbounds i8, ptr %544, i64 %530
  store ptr %545, ptr %511, align 8, !tbaa !73
  %546 = getelementptr inbounds %struct.z_stream_s, ptr %511, i64 0, i32 2
  %547 = load i64, ptr %546, align 8, !tbaa !46
  %548 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %547, i64 %530), !nosanitize !16
  %549 = extractvalue { i64, i1 } %548, 1, !nosanitize !16
  br i1 %549, label %550, label %551, !nosanitize !16

550:                                              ; preds = %543
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

551:                                              ; preds = %543
  %552 = extractvalue { i64, i1 } %548, 0, !nosanitize !16
  store i64 %552, ptr %546, align 8, !tbaa !46
  %553 = load i32, ptr %81, align 4, !tbaa !66
  br label %554

554:                                              ; preds = %551, %515
  %555 = phi i32 [ %508, %515 ], [ %553, %551 ]
  %556 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %555, i32 %521), !nosanitize !16
  %557 = extractvalue { i32, i1 } %556, 1, !nosanitize !16
  br i1 %557, label %434, label %558, !nosanitize !16

558:                                              ; preds = %554
  %559 = extractvalue { i32, i1 } %556, 0, !nosanitize !16
  store i32 %559, ptr %81, align 4, !tbaa !66
  %560 = load i32, ptr %94, align 4, !tbaa !67
  %561 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %559, i32 %560), !nosanitize !16
  %562 = extractvalue { i32, i1 } %561, 1, !nosanitize !16
  br i1 %562, label %434, label %563, !nosanitize !16

563:                                              ; preds = %558
  %564 = extractvalue { i32, i1 } %561, 0, !nosanitize !16
  %565 = icmp ugt i32 %564, 2
  br i1 %565, label %566, label %625

566:                                              ; preds = %563
  %567 = load i32, ptr %89, align 4, !tbaa !64
  %568 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %567, i32 %560), !nosanitize !16
  %569 = extractvalue { i32, i1 } %568, 0, !nosanitize !16
  %570 = extractvalue { i32, i1 } %568, 1, !nosanitize !16
  br i1 %570, label %417, label %571, !nosanitize !16

571:                                              ; preds = %566
  %572 = load ptr, ptr %91, align 8, !tbaa !28
  %573 = zext i32 %569 to i64
  %574 = getelementptr inbounds i8, ptr %572, i64 %573
  %575 = load i8, ptr %574, align 1, !tbaa !5
  %576 = zext i8 %575 to i32
  store i32 %576, ptr %99, align 8, !tbaa !71
  %577 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %569, i32 1), !nosanitize !16
  %578 = extractvalue { i32, i1 } %577, 1, !nosanitize !16
  br i1 %578, label %434, label %579, !nosanitize !16

579:                                              ; preds = %571
  %580 = extractvalue { i32, i1 } %577, 0, !nosanitize !16
  %581 = load i32, ptr %100, align 8, !tbaa !45
  %582 = shl i32 %576, %581
  %583 = zext i32 %580 to i64
  %584 = getelementptr inbounds i8, ptr %572, i64 %583
  %585 = load i8, ptr %584, align 1, !tbaa !5
  %586 = zext i8 %585 to i32
  %587 = xor i32 %582, %586
  %588 = load i32, ptr %101, align 4, !tbaa !44
  %589 = and i32 %587, %588
  store i32 %589, ptr %99, align 8, !tbaa !71
  br label %590

590:                                              ; preds = %621, %579
  %591 = phi i32 [ %589, %579 ], [ %607, %621 ]
  %592 = phi i32 [ %560, %579 ], [ %618, %621 ]
  %593 = phi i32 [ %569, %579 ], [ %622, %621 ]
  %594 = icmp eq i32 %592, 0
  br i1 %594, label %625, label %595

595:                                              ; preds = %590
  %596 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %593, i32 3), !nosanitize !16
  %597 = extractvalue { i32, i1 } %596, 1, !nosanitize !16
  br i1 %597, label %434, label %598, !nosanitize !16

598:                                              ; preds = %595
  %599 = shl i32 %591, %581
  %600 = extractvalue { i32, i1 } %596, 0, !nosanitize !16
  %601 = add i32 %600, -1
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds i8, ptr %572, i64 %602
  %604 = load i8, ptr %603, align 1, !tbaa !5
  %605 = zext i8 %604 to i32
  %606 = xor i32 %599, %605
  %607 = and i32 %606, %588
  store i32 %607, ptr %99, align 8, !tbaa !71
  %608 = load ptr, ptr %96, align 8, !tbaa !31
  %609 = zext i32 %607 to i64
  %610 = getelementptr inbounds i16, ptr %608, i64 %609
  %611 = load i16, ptr %610, align 2, !tbaa !53
  %612 = load ptr, ptr %97, align 8, !tbaa !29
  %613 = load i32, ptr %102, align 8, !tbaa !26
  %614 = and i32 %613, %593
  %615 = zext i32 %614 to i64
  %616 = getelementptr inbounds i16, ptr %612, i64 %615
  store i16 %611, ptr %616, align 2, !tbaa !53
  %617 = trunc i32 %593 to i16
  store i16 %617, ptr %610, align 2, !tbaa !53
  %618 = add i32 %592, -1
  store i32 %618, ptr %94, align 4, !tbaa !67
  %619 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %559, i32 %618), !nosanitize !16
  %620 = extractvalue { i32, i1 } %619, 1, !nosanitize !16
  br i1 %620, label %434, label %621, !nosanitize !16

621:                                              ; preds = %598
  %622 = add nuw i32 %593, 1
  %623 = extractvalue { i32, i1 } %619, 0, !nosanitize !16
  %624 = icmp ult i32 %623, 3
  br i1 %624, label %625, label %590, !llvm.loop !78

625:                                              ; preds = %621, %590, %563
  %626 = icmp ult i32 %559, 262
  br i1 %626, label %627, label %632

627:                                              ; preds = %625
  %628 = load ptr, ptr %15, align 8, !tbaa !18
  %629 = getelementptr inbounds %struct.z_stream_s, ptr %628, i64 0, i32 1
  %630 = load i32, ptr %629, align 8, !tbaa !72
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %411, !llvm.loop !79

632:                                              ; preds = %627, %625, %507
  %633 = phi i32 [ %559, %627 ], [ %559, %625 ], [ %508, %507 ]
  %634 = load i64, ptr %327, align 8, !tbaa !32
  %635 = load i64, ptr %88, align 8, !tbaa !52
  %636 = icmp ult i64 %634, %635
  br i1 %636, label %637, label %673

637:                                              ; preds = %632
  %638 = load i32, ptr %89, align 4, !tbaa !64
  %639 = zext i32 %638 to i64
  %640 = zext i32 %633 to i64
  %641 = add nuw nsw i64 %640, %639
  %642 = icmp ult i64 %634, %641
  br i1 %642, label %643, label %652

643:                                              ; preds = %637
  %644 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %635, i64 %641), !nosanitize !16
  %645 = extractvalue { i64, i1 } %644, 1, !nosanitize !16
  br i1 %645, label %417, label %646, !nosanitize !16

646:                                              ; preds = %643
  %647 = extractvalue { i64, i1 } %644, 0, !nosanitize !16
  %648 = tail call i64 @llvm.umin.i64(i64 %647, i64 258)
  %649 = load ptr, ptr %91, align 8, !tbaa !28
  %650 = getelementptr inbounds i8, ptr %649, i64 %641
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %650, i8 0, i64 %648, i1 false)
  %651 = add nuw nsw i64 %648, %641
  br label %670

652:                                              ; preds = %637
  %653 = add nuw nsw i64 %641, 258
  %654 = icmp ult i64 %634, %653
  br i1 %654, label %655, label %673

655:                                              ; preds = %652
  %656 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %635, i64 %634), !nosanitize !16
  %657 = extractvalue { i64, i1 } %656, 1, !nosanitize !16
  br i1 %657, label %417, label %658, !nosanitize !16

658:                                              ; preds = %655
  %659 = sub nuw nsw i64 %653, %634
  %660 = extractvalue { i64, i1 } %656, 0, !nosanitize !16
  %661 = tail call i64 @llvm.umin.i64(i64 %659, i64 %660)
  %662 = load ptr, ptr %91, align 8, !tbaa !28
  %663 = getelementptr inbounds i8, ptr %662, i64 %634
  %664 = and i64 %661, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %663, i8 0, i64 %664, i1 false)
  %665 = load i64, ptr %327, align 8, !tbaa !32
  %666 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %665, i64 %661), !nosanitize !16
  %667 = extractvalue { i64, i1 } %666, 1, !nosanitize !16
  br i1 %667, label %434, label %668, !nosanitize !16

668:                                              ; preds = %658
  %669 = extractvalue { i64, i1 } %666, 0, !nosanitize !16
  br label %670

670:                                              ; preds = %668, %646
  %671 = phi i64 [ %651, %646 ], [ %669, %668 ]
  store i64 %671, ptr %327, align 8, !tbaa !32
  %672 = load i32, ptr %81, align 4, !tbaa !66
  br label %673

673:                                              ; preds = %632, %652, %670
  %674 = phi i32 [ %633, %632 ], [ %633, %652 ], [ %672, %670 ]
  %675 = icmp ugt i32 %674, 2
  br i1 %675, label %370, label %676, !llvm.loop !81

676:                                              ; preds = %673, %367
  %677 = phi i32 [ %368, %367 ], [ %674, %673 ]
  %678 = load i32, ptr %89, align 4, !tbaa !64
  %679 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %678, i32 %677), !nosanitize !16
  %680 = extractvalue { i32, i1 } %679, 1, !nosanitize !16
  br i1 %680, label %383, label %681, !nosanitize !16

681:                                              ; preds = %676
  %682 = extractvalue { i32, i1 } %679, 0, !nosanitize !16
  store i32 %682, ptr %89, align 4, !tbaa !64
  %683 = zext i32 %682 to i64
  store i64 %683, ptr %93, align 8, !tbaa !65
  store i32 %677, ptr %94, align 4, !tbaa !67
  store i32 0, ptr %81, align 4, !tbaa !66
  %684 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 30
  store i32 2, ptr %684, align 8, !tbaa !68
  %685 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 24
  store i32 2, ptr %685, align 8, !tbaa !69
  %686 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 26
  store i32 0, ptr %686, align 8, !tbaa !70
  store ptr %87, ptr %0, align 8, !tbaa !73
  store i32 %86, ptr %85, align 8, !tbaa !72
  store i32 %27, ptr %26, align 8, !tbaa !23
  br label %687

687:                                              ; preds = %25, %13, %17, %20, %3, %5, %9, %34, %28, %30, %23, %681
  %688 = phi i32 [ 0, %681 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %688
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateGetDictionary(ptr noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %52, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !18
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !22
  switch i32 %22, label %52 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 27
  %25 = load i32, ptr %24, align 4, !tbaa !64
  %26 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 29
  %27 = load i32, ptr %26, align 4, !tbaa !66
  %28 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %25, i32 %27), !nosanitize !16
  %29 = extractvalue { i32, i1 } %28, 1, !nosanitize !16
  br i1 %29, label %30, label %31, !nosanitize !16

30:                                               ; preds = %23
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

31:                                               ; preds = %23
  %32 = extractvalue { i32, i1 } %28, 0, !nosanitize !16
  %33 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 11
  %34 = load i32, ptr %33, align 8, !tbaa !25
  %35 = tail call i32 @llvm.umin.i32(i32 %32, i32 %34)
  %36 = icmp ne ptr %1, null
  %37 = icmp ne i32 %35, 0
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 14
  %41 = load ptr, ptr %40, align 8, !tbaa !28
  %42 = zext i32 %25 to i64
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  %44 = zext i32 %27 to i64
  %45 = getelementptr inbounds i8, ptr %43, i64 %44
  %46 = zext i32 %35 to i64
  %47 = sub nsw i64 0, %46
  %48 = getelementptr inbounds i8, ptr %45, i64 %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %48, i64 %46, i1 false)
  br label %49

49:                                               ; preds = %39, %31
  %50 = icmp eq ptr %2, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  store i32 %35, ptr %2, align 4, !tbaa !27
  br label %52

52:                                               ; preds = %13, %17, %20, %3, %5, %9, %49, %51
  %53 = phi i32 [ 0, %51 ], [ 0, %49 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %53
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateResetKeep(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %50, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %50, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !18
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !22
  switch i32 %20, label %50 [
    i32 42, label %21
    i32 57, label %21
    i32 69, label %21
    i32 73, label %21
    i32 91, label %21
    i32 103, label %21
    i32 113, label %21
    i32 666, label %21
  ]

21:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %23, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 5
  store i64 0, ptr %25, align 8, !tbaa !48
  %26 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 4
  store ptr %27, ptr %28, align 8, !tbaa !49
  %29 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !23
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %30), !nosanitize !16
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !16
  br i1 %34, label %35, label %36, !nosanitize !16

35:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 13) #9, !nosanitize !16
  unreachable, !nosanitize !16

36:                                               ; preds = %32
  %37 = extractvalue { i32, i1 } %33, 0, !nosanitize !16
  store i32 %37, ptr %29, align 8, !tbaa !23
  br label %38

38:                                               ; preds = %36, %21
  %39 = phi i32 [ %37, %36 ], [ %30, %21 ]
  %40 = icmp eq i32 %39, 2
  %41 = select i1 %40, i32 57, i32 42
  store i32 %41, ptr %19, align 8, !tbaa !22
  br i1 %40, label %42, label %44

42:                                               ; preds = %38
  %43 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  br label %46

44:                                               ; preds = %38
  %45 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %47, ptr %48, align 8, !tbaa !50
  %49 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 10
  store i32 -2, ptr %49, align 4, !tbaa !51
  tail call void @_tr_init(ptr noundef nonnull %13) #10
  br label %50

50:                                               ; preds = %11, %15, %18, %1, %3, %7, %46
  %51 = phi i32 [ 0, %46 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %51
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @deflateSetHeader(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !18
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !22
  switch i32 %21, label %28 [
    i32 42, label %22
    i32 57, label %22
    i32 69, label %22
    i32 73, label %22
    i32 91, label %22
    i32 103, label %22
    i32 113, label %22
    i32 666, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %23 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !23
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 7
  store ptr %1, ptr %27, align 8, !tbaa !82
  br label %28

28:                                               ; preds = %12, %16, %19, %2, %4, %8, %22, %26
  %29 = phi i32 [ 0, %26 ], [ -2, %22 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @deflatePending(ptr noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !18
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !22
  switch i32 %22, label %37 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = icmp eq ptr %2, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 57
  %27 = load i32, ptr %26, align 4, !tbaa !83
  store i32 %27, ptr %2, align 4, !tbaa !27
  br label %28

28:                                               ; preds = %25, %23
  %29 = icmp eq ptr %1, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 5
  %32 = load i64, ptr %31, align 8, !tbaa !48
  %33 = trunc i64 %32 to i32
  %34 = icmp ult i64 %32, 4294967296
  %35 = select i1 %34, i32 %33, i32 -1
  store i32 %35, ptr %1, align 4
  %36 = select i1 %34, i32 0, i32 -5
  br label %37

37:                                               ; preds = %13, %17, %20, %3, %5, %9, %30, %28
  %38 = phi i32 [ 0, %28 ], [ %36, %30 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @deflateUsed(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !18
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !22
  switch i32 %21, label %27 [
    i32 42, label %22
    i32 57, label %22
    i32 69, label %22
    i32 73, label %22
    i32 91, label %22
    i32 103, label %22
    i32 113, label %22
    i32 666, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %23 = icmp eq ptr %1, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 58
  %26 = load i32, ptr %25, align 8, !tbaa !84
  store i32 %26, ptr %1, align 4, !tbaa !27
  br label %27

27:                                               ; preds = %12, %16, %19, %2, %4, %8, %22, %24
  %28 = phi i32 [ 0, %24 ], [ 0, %22 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflatePrime(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %66, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %66, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %66, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %66, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !18
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %66

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !22
  switch i32 %22, label %66 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = icmp ugt i32 %1, 16
  br i1 %24, label %66, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 48
  %27 = load ptr, ptr %26, align 8, !tbaa !37
  %28 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  %30 = getelementptr inbounds i8, ptr %29, i64 2
  %31 = icmp ult ptr %27, %30
  br i1 %31, label %66, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 57
  %34 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 56
  br label %35

35:                                               ; preds = %32, %62
  %36 = phi i32 [ %63, %62 ], [ %1, %32 ]
  %37 = phi i32 [ %64, %62 ], [ %2, %32 ]
  %38 = load i32, ptr %33, align 4, !tbaa !83
  %39 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %38), !nosanitize !16
  %40 = extractvalue { i32, i1 } %39, 1, !nosanitize !16
  br i1 %40, label %41, label %42, !nosanitize !16

41:                                               ; preds = %58, %42, %35
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

42:                                               ; preds = %35
  %43 = extractvalue { i32, i1 } %39, 0, !nosanitize !16
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 %36)
  %45 = shl nuw i32 1, %44
  %46 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %45, i32 -1)
  %47 = extractvalue { i32, i1 } %46, 1, !nosanitize !16
  br i1 %47, label %41, label %48, !nosanitize !16

48:                                               ; preds = %42
  %49 = extractvalue { i32, i1 } %46, 0, !nosanitize !16
  %50 = and i32 %49, %37
  %51 = shl i32 %50, %38
  %52 = load i16, ptr %34, align 8, !tbaa !85
  %53 = trunc i32 %51 to i16
  %54 = or i16 %52, %53
  store i16 %54, ptr %34, align 8, !tbaa !85
  %55 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 %44), !nosanitize !16
  %56 = extractvalue { i32, i1 } %55, 1, !nosanitize !16
  br i1 %56, label %57, label %58, !nosanitize !16

57:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

58:                                               ; preds = %48
  %59 = extractvalue { i32, i1 } %55, 0, !nosanitize !16
  store i32 %59, ptr %33, align 4, !tbaa !83
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #10
  %60 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %36, i32 %44), !nosanitize !16
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !16
  br i1 %61, label %41, label %62, !nosanitize !16

62:                                               ; preds = %58
  %63 = extractvalue { i32, i1 } %60, 0, !nosanitize !16
  %64 = ashr i32 %37, %44
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %66, label %35, !llvm.loop !86

66:                                               ; preds = %62, %13, %17, %20, %3, %5, %9, %23, %25
  %67 = phi i32 [ -5, %25 ], [ -5, %23 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ], [ 0, %62 ]
  ret i32 %67
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1073, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1073, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1073, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1073, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !18
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1073

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !22
  switch i32 %22, label %1073 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = icmp eq i32 %1, -1
  %25 = select i1 %24, i32 6, i32 %1
  %26 = icmp ugt i32 %25, 9
  %27 = icmp ugt i32 %2, 4
  %28 = or i1 %27, %26
  br i1 %28, label %1073, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 33
  %31 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 34
  %32 = load i32, ptr %31, align 8, !tbaa !40
  %33 = icmp eq i32 %32, %2
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i32, ptr %30, align 4, !tbaa !39
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %36, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !87
  %39 = zext nneg i32 %25 to i64
  %40 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %39, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !87
  %42 = icmp eq ptr %38, %41
  br i1 %42, label %1031, label %43

43:                                               ; preds = %34, %29
  %44 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 10
  %45 = load i32, ptr %44, align 4, !tbaa !51
  %46 = icmp eq i32 %45, -2
  br i1 %46, label %1031, label %47

47:                                               ; preds = %43
  switch i32 %22, label %1073 [
    i32 42, label %48
    i32 57, label %48
    i32 69, label %48
    i32 73, label %48
    i32 91, label %48
    i32 103, label %48
    i32 113, label %48
    i32 666, label %48
  ]

48:                                               ; preds = %47, %47, %47, %47, %47, %47, %47, %47
  %49 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !88
  %51 = icmp eq ptr %50, null
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !72
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 8, !tbaa !73
  %58 = icmp eq ptr %57, null
  %59 = icmp eq i32 %22, 666
  %60 = or i1 %59, %58
  br i1 %60, label %63, label %66

61:                                               ; preds = %52
  %62 = icmp eq i32 %22, 666
  br i1 %62, label %63, label %66

63:                                               ; preds = %61, %56, %48
  %64 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 4), align 16, !tbaa !36
  %65 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %64, ptr %65, align 8, !tbaa !8
  br label %1073

66:                                               ; preds = %56, %61
  %67 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %68 = load i32, ptr %67, align 8, !tbaa !89
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !36
  %72 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %71, ptr %72, align 8, !tbaa !8
  br label %1008

73:                                               ; preds = %66
  store i32 5, ptr %44, align 4, !tbaa !51
  %74 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 5
  %75 = load i64, ptr %74, align 8, !tbaa !48
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %123, label %77

77:                                               ; preds = %73
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #10
  %78 = load i64, ptr %74, align 8, !tbaa !48
  %79 = load i32, ptr %67, align 8, !tbaa !89
  %80 = zext i32 %79 to i64
  %81 = icmp ugt i64 %78, %80
  %82 = trunc i64 %78 to i32
  %83 = select i1 %81, i32 %79, i32 %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %116, label %85

85:                                               ; preds = %77
  %86 = load ptr, ptr %49, align 8, !tbaa !88
  %87 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !49
  %89 = zext i32 %83 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %86, ptr align 1 %88, i64 %89, i1 false)
  %90 = load ptr, ptr %49, align 8, !tbaa !88
  %91 = getelementptr inbounds i8, ptr %90, i64 %89
  store ptr %91, ptr %49, align 8, !tbaa !88
  %92 = load ptr, ptr %87, align 8, !tbaa !49
  %93 = getelementptr inbounds i8, ptr %92, i64 %89
  store ptr %93, ptr %87, align 8, !tbaa !49
  %94 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %95 = load i64, ptr %94, align 8, !tbaa !90
  %96 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %95, i64 %89), !nosanitize !16
  %97 = extractvalue { i64, i1 } %96, 1, !nosanitize !16
  br i1 %97, label %98, label %99, !nosanitize !16

98:                                               ; preds = %85
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

99:                                               ; preds = %85
  %100 = extractvalue { i64, i1 } %96, 0, !nosanitize !16
  store i64 %100, ptr %94, align 8, !tbaa !90
  %101 = load i32, ptr %67, align 8, !tbaa !89
  %102 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %101, i32 %83), !nosanitize !16
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !16
  br i1 %103, label %104, label %105, !nosanitize !16

104:                                              ; preds = %105, %99
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

105:                                              ; preds = %99
  %106 = extractvalue { i32, i1 } %102, 0, !nosanitize !16
  store i32 %106, ptr %67, align 8, !tbaa !89
  %107 = load i64, ptr %74, align 8, !tbaa !48
  %108 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 %89), !nosanitize !16
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !16
  br i1 %109, label %104, label %110, !nosanitize !16

110:                                              ; preds = %105
  %111 = extractvalue { i64, i1 } %108, 0, !nosanitize !16
  store i64 %111, ptr %74, align 8, !tbaa !48
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !34
  store ptr %115, ptr %87, align 8, !tbaa !49
  br label %116

116:                                              ; preds = %113, %110, %77
  %117 = phi i64 [ %78, %77 ], [ %111, %110 ], [ 0, %113 ]
  %118 = phi i32 [ %79, %77 ], [ %106, %110 ], [ %106, %113 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = load i32, ptr %21, align 8, !tbaa !22
  br label %141

122:                                              ; preds = %116
  store i32 -1, ptr %44, align 4, !tbaa !51
  br label %1008

123:                                              ; preds = %73
  br i1 %55, label %125, label %141

124:                                              ; preds = %125
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !16
  unreachable, !nosanitize !16

125:                                              ; preds = %123
  %126 = add i32 %45, 1073741824
  %127 = icmp sgt i32 %126, -1
  br i1 %127, label %129, label %124, !nosanitize !16

128:                                              ; preds = %665, %590, %523, %501, %155, %129
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

129:                                              ; preds = %125
  %130 = shl nsw i32 %45, 1
  %131 = icmp sgt i32 %45, 4
  %132 = select i1 %131, i32 9, i32 0
  %133 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %130, i32 %132), !nosanitize !16
  %134 = extractvalue { i32, i1 } %133, 1, !nosanitize !16
  br i1 %134, label %128, label %135, !nosanitize !16

135:                                              ; preds = %129
  %136 = extractvalue { i32, i1 } %133, 0, !nosanitize !16
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !36
  %140 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %139, ptr %140, align 8, !tbaa !8
  br label %1008

141:                                              ; preds = %135, %123, %120
  %142 = phi i64 [ %117, %120 ], [ 0, %123 ], [ 0, %135 ]
  %143 = phi i32 [ %121, %120 ], [ %22, %123 ], [ %22, %135 ]
  switch i32 %143, label %254 [
    i32 666, label %144
    i32 42, label %150
  ]

144:                                              ; preds = %141
  %145 = load i32, ptr %53, align 8, !tbaa !72
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %967, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !36
  %149 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %148, ptr %149, align 8, !tbaa !8
  br label %1008

150:                                              ; preds = %141
  %151 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 6
  %152 = load i32, ptr %151, align 8, !tbaa !23
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i32 113, ptr %21, align 8, !tbaa !22
  br label %964

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 12
  %157 = load i32, ptr %156, align 4, !tbaa !24
  %158 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %157, i32 8), !nosanitize !16
  %159 = extractvalue { i32, i1 } %158, 1, !nosanitize !16
  br i1 %159, label %128, label %161, !nosanitize !16

160:                                              ; preds = %616, %781, %775, %892, %886, %940, %927, %673, %544, %510, %459, %455, %436, %431, %402, %390, %379, %349, %348, %334, %329, %310, %303, %296, %289, %288, %271, %264, %257
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

161:                                              ; preds = %155
  %162 = extractvalue { i32, i1 } %158, 0, !nosanitize !16
  %163 = shl i32 %162, 12
  %164 = load i32, ptr %31, align 8, !tbaa !40
  %165 = icmp sgt i32 %164, 1
  br i1 %165, label %174, label %166

166:                                              ; preds = %161
  %167 = load i32, ptr %30, align 4, !tbaa !39
  %168 = icmp slt i32 %167, 2
  br i1 %168, label %174, label %169

169:                                              ; preds = %166
  %170 = icmp ult i32 %167, 6
  br i1 %170, label %174, label %171

171:                                              ; preds = %169
  %172 = icmp eq i32 %167, 6
  %173 = select i1 %172, i32 128, i32 192
  br label %174

174:                                              ; preds = %171, %169, %166, %161
  %175 = phi i32 [ 0, %166 ], [ 0, %161 ], [ 64, %169 ], [ %173, %171 ]
  %176 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 27
  %177 = or disjoint i32 %175, %163
  %178 = load i32, ptr %176, align 4, !tbaa !64
  %179 = icmp eq i32 %178, 0
  %180 = select i1 %179, i32 2048, i32 2080
  %181 = or disjoint i32 %180, %177
  %182 = urem i32 %181, 31
  %183 = or disjoint i32 %182, %181
  %184 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %142, i64 1), !nosanitize !16
  %185 = extractvalue { i64, i1 } %184, 1, !nosanitize !16
  br i1 %185, label %186, label %187, !nosanitize !16

186:                                              ; preds = %187, %174
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

187:                                              ; preds = %174
  %188 = extractvalue { i64, i1 } %184, 0, !nosanitize !16
  %189 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !34
  %191 = lshr i32 %181, 8
  %192 = trunc i32 %191 to i8
  store i64 %188, ptr %74, align 8, !tbaa !48
  %193 = getelementptr inbounds i8, ptr %190, i64 %142
  store i8 %192, ptr %193, align 1, !tbaa !5
  %194 = load i64, ptr %74, align 8, !tbaa !48
  %195 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %194, i64 1), !nosanitize !16
  %196 = extractvalue { i64, i1 } %195, 1, !nosanitize !16
  br i1 %196, label %186, label %197, !nosanitize !16

197:                                              ; preds = %187
  %198 = extractvalue { i64, i1 } %195, 0, !nosanitize !16
  %199 = load ptr, ptr %189, align 8, !tbaa !34
  %200 = trunc i32 %183 to i8
  %201 = xor i8 %200, 31
  store i64 %198, ptr %74, align 8, !tbaa !48
  %202 = getelementptr inbounds i8, ptr %199, i64 %194
  store i8 %201, ptr %202, align 1, !tbaa !5
  %203 = load i32, ptr %176, align 4, !tbaa !64
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %246, label %205

205:                                              ; preds = %197
  %206 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %207 = load i64, ptr %206, align 8, !tbaa !50
  %208 = lshr i64 %207, 16
  %209 = load i64, ptr %74, align 8, !tbaa !48
  %210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %209, i64 1), !nosanitize !16
  %211 = extractvalue { i64, i1 } %210, 1, !nosanitize !16
  br i1 %211, label %212, label %213, !nosanitize !16

212:                                              ; preds = %213, %205
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

213:                                              ; preds = %205
  %214 = extractvalue { i64, i1 } %210, 0, !nosanitize !16
  %215 = load ptr, ptr %189, align 8, !tbaa !34
  %216 = lshr i64 %207, 24
  %217 = trunc i64 %216 to i8
  store i64 %214, ptr %74, align 8, !tbaa !48
  %218 = getelementptr inbounds i8, ptr %215, i64 %209
  store i8 %217, ptr %218, align 1, !tbaa !5
  %219 = load i64, ptr %74, align 8, !tbaa !48
  %220 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %219, i64 1), !nosanitize !16
  %221 = extractvalue { i64, i1 } %220, 1, !nosanitize !16
  br i1 %221, label %212, label %222, !nosanitize !16

222:                                              ; preds = %213
  %223 = extractvalue { i64, i1 } %220, 0, !nosanitize !16
  %224 = load ptr, ptr %189, align 8, !tbaa !34
  %225 = trunc i64 %208 to i8
  store i64 %223, ptr %74, align 8, !tbaa !48
  %226 = getelementptr inbounds i8, ptr %224, i64 %219
  store i8 %225, ptr %226, align 1, !tbaa !5
  %227 = load i64, ptr %206, align 8, !tbaa !50
  %228 = trunc i64 %227 to i8
  %229 = load i64, ptr %74, align 8, !tbaa !48
  %230 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %229, i64 1), !nosanitize !16
  %231 = extractvalue { i64, i1 } %230, 1, !nosanitize !16
  br i1 %231, label %232, label %233, !nosanitize !16

232:                                              ; preds = %233, %222
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

233:                                              ; preds = %222
  %234 = extractvalue { i64, i1 } %230, 0, !nosanitize !16
  %235 = load ptr, ptr %189, align 8, !tbaa !34
  %236 = lshr i64 %227, 8
  %237 = trunc i64 %236 to i8
  store i64 %234, ptr %74, align 8, !tbaa !48
  %238 = getelementptr inbounds i8, ptr %235, i64 %229
  store i8 %237, ptr %238, align 1, !tbaa !5
  %239 = load i64, ptr %74, align 8, !tbaa !48
  %240 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %239, i64 1), !nosanitize !16
  %241 = extractvalue { i64, i1 } %240, 1, !nosanitize !16
  br i1 %241, label %232, label %242, !nosanitize !16

242:                                              ; preds = %233
  %243 = extractvalue { i64, i1 } %240, 0, !nosanitize !16
  %244 = load ptr, ptr %189, align 8, !tbaa !34
  store i64 %243, ptr %74, align 8, !tbaa !48
  %245 = getelementptr inbounds i8, ptr %244, i64 %239
  store i8 %228, ptr %245, align 1, !tbaa !5
  br label %246

246:                                              ; preds = %242, %197
  %247 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %248 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %247, ptr %248, align 8, !tbaa !50
  store i32 113, ptr %21, align 8, !tbaa !22
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %249 = load i64, ptr %74, align 8, !tbaa !48
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %246
  %252 = load i32, ptr %21, align 8, !tbaa !22
  br label %254

253:                                              ; preds = %246
  store i32 -1, ptr %44, align 4, !tbaa !51
  br label %1008

254:                                              ; preds = %251, %141
  %255 = phi i32 [ %252, %251 ], [ %143, %141 ]
  %256 = icmp eq i32 %255, 57
  br i1 %256, label %257, label %493

257:                                              ; preds = %254
  %258 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %259 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %258, ptr %259, align 8, !tbaa !50
  %260 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 2
  %261 = load i64, ptr %74, align 8, !tbaa !48
  %262 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %261, i64 1), !nosanitize !16
  %263 = extractvalue { i64, i1 } %262, 1, !nosanitize !16
  br i1 %263, label %160, label %264, !nosanitize !16

264:                                              ; preds = %257
  %265 = extractvalue { i64, i1 } %262, 0, !nosanitize !16
  %266 = load ptr, ptr %260, align 8, !tbaa !34
  store i64 %265, ptr %74, align 8, !tbaa !48
  %267 = getelementptr inbounds i8, ptr %266, i64 %261
  store i8 31, ptr %267, align 1, !tbaa !5
  %268 = load i64, ptr %74, align 8, !tbaa !48
  %269 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %268, i64 1), !nosanitize !16
  %270 = extractvalue { i64, i1 } %269, 1, !nosanitize !16
  br i1 %270, label %160, label %271, !nosanitize !16

271:                                              ; preds = %264
  %272 = extractvalue { i64, i1 } %269, 0, !nosanitize !16
  %273 = load ptr, ptr %260, align 8, !tbaa !34
  store i64 %272, ptr %74, align 8, !tbaa !48
  %274 = getelementptr inbounds i8, ptr %273, i64 %268
  store i8 -117, ptr %274, align 1, !tbaa !5
  %275 = load i64, ptr %74, align 8, !tbaa !48
  %276 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %275, i64 1), !nosanitize !16
  %277 = extractvalue { i64, i1 } %276, 1, !nosanitize !16
  br i1 %277, label %160, label %278, !nosanitize !16

278:                                              ; preds = %271
  %279 = extractvalue { i64, i1 } %276, 0, !nosanitize !16
  %280 = load ptr, ptr %260, align 8, !tbaa !34
  store i64 %279, ptr %74, align 8, !tbaa !48
  %281 = getelementptr inbounds i8, ptr %280, i64 %275
  store i8 8, ptr %281, align 1, !tbaa !5
  %282 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 7
  %283 = load ptr, ptr %282, align 8, !tbaa !82
  %284 = icmp eq ptr %283, null
  %285 = load i64, ptr %74, align 8, !tbaa !48
  %286 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %285, i64 1)
  %287 = extractvalue { i64, i1 } %286, 1
  br i1 %284, label %288, label %348

288:                                              ; preds = %278
  br i1 %287, label %160, label %289, !nosanitize !16

289:                                              ; preds = %288
  %290 = extractvalue { i64, i1 } %286, 0, !nosanitize !16
  %291 = load ptr, ptr %260, align 8, !tbaa !34
  store i64 %290, ptr %74, align 8, !tbaa !48
  %292 = getelementptr inbounds i8, ptr %291, i64 %285
  store i8 0, ptr %292, align 1, !tbaa !5
  %293 = load i64, ptr %74, align 8, !tbaa !48
  %294 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %293, i64 1), !nosanitize !16
  %295 = extractvalue { i64, i1 } %294, 1, !nosanitize !16
  br i1 %295, label %160, label %296, !nosanitize !16

296:                                              ; preds = %289
  %297 = extractvalue { i64, i1 } %294, 0, !nosanitize !16
  %298 = load ptr, ptr %260, align 8, !tbaa !34
  store i64 %297, ptr %74, align 8, !tbaa !48
  %299 = getelementptr inbounds i8, ptr %298, i64 %293
  store i8 0, ptr %299, align 1, !tbaa !5
  %300 = load i64, ptr %74, align 8, !tbaa !48
  %301 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %300, i64 1), !nosanitize !16
  %302 = extractvalue { i64, i1 } %301, 1, !nosanitize !16
  br i1 %302, label %160, label %303, !nosanitize !16

303:                                              ; preds = %296
  %304 = extractvalue { i64, i1 } %301, 0, !nosanitize !16
  %305 = load ptr, ptr %260, align 8, !tbaa !34
  store i64 %304, ptr %74, align 8, !tbaa !48
  %306 = getelementptr inbounds i8, ptr %305, i64 %300
  store i8 0, ptr %306, align 1, !tbaa !5
  %307 = load i64, ptr %74, align 8, !tbaa !48
  %308 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %307, i64 1), !nosanitize !16
  %309 = extractvalue { i64, i1 } %308, 1, !nosanitize !16
  br i1 %309, label %160, label %310, !nosanitize !16

310:                                              ; preds = %303
  %311 = extractvalue { i64, i1 } %308, 0, !nosanitize !16
  %312 = load ptr, ptr %260, align 8, !tbaa !34
  store i64 %311, ptr %74, align 8, !tbaa !48
  %313 = getelementptr inbounds i8, ptr %312, i64 %307
  store i8 0, ptr %313, align 1, !tbaa !5
  %314 = load i64, ptr %74, align 8, !tbaa !48
  %315 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %314, i64 1), !nosanitize !16
  %316 = extractvalue { i64, i1 } %315, 1, !nosanitize !16
  br i1 %316, label %160, label %317, !nosanitize !16

317:                                              ; preds = %310
  %318 = extractvalue { i64, i1 } %315, 0, !nosanitize !16
  %319 = load ptr, ptr %260, align 8, !tbaa !34
  store i64 %318, ptr %74, align 8, !tbaa !48
  %320 = getelementptr inbounds i8, ptr %319, i64 %314
  store i8 0, ptr %320, align 1, !tbaa !5
  %321 = load i32, ptr %30, align 4, !tbaa !39
  %322 = icmp eq i32 %321, 9
  br i1 %322, label %329, label %323

323:                                              ; preds = %317
  %324 = load i32, ptr %31, align 8, !tbaa !40
  %325 = icmp sgt i32 %324, 1
  %326 = icmp slt i32 %321, 2
  %327 = or i1 %326, %325
  %328 = select i1 %327, i8 4, i8 0
  br label %329

329:                                              ; preds = %323, %317
  %330 = phi i8 [ %328, %323 ], [ 2, %317 ]
  %331 = load i64, ptr %74, align 8, !tbaa !48
  %332 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %331, i64 1), !nosanitize !16
  %333 = extractvalue { i64, i1 } %332, 1, !nosanitize !16
  br i1 %333, label %160, label %334, !nosanitize !16

334:                                              ; preds = %329
  %335 = extractvalue { i64, i1 } %332, 0, !nosanitize !16
  %336 = load ptr, ptr %260, align 8, !tbaa !34
  store i64 %335, ptr %74, align 8, !tbaa !48
  %337 = getelementptr inbounds i8, ptr %336, i64 %331
  store i8 %330, ptr %337, align 1, !tbaa !5
  %338 = load i64, ptr %74, align 8, !tbaa !48
  %339 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %338, i64 1), !nosanitize !16
  %340 = extractvalue { i64, i1 } %339, 1, !nosanitize !16
  br i1 %340, label %160, label %341, !nosanitize !16

341:                                              ; preds = %334
  %342 = extractvalue { i64, i1 } %339, 0, !nosanitize !16
  %343 = load ptr, ptr %260, align 8, !tbaa !34
  store i64 %342, ptr %74, align 8, !tbaa !48
  %344 = getelementptr inbounds i8, ptr %343, i64 %338
  store i8 3, ptr %344, align 1, !tbaa !5
  store i32 113, ptr %21, align 8, !tbaa !22
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %345 = load i64, ptr %74, align 8, !tbaa !48
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %491, label %347

347:                                              ; preds = %341
  store i32 -1, ptr %44, align 4, !tbaa !51
  br label %1008

348:                                              ; preds = %278
  br i1 %287, label %160, label %349, !nosanitize !16

349:                                              ; preds = %348
  %350 = extractvalue { i64, i1 } %286, 0, !nosanitize !16
  %351 = load ptr, ptr %260, align 8, !tbaa !34
  %352 = getelementptr inbounds %struct.gz_header_s, ptr %283, i64 0, i32 9
  %353 = load ptr, ptr %352, align 8, !tbaa !91
  %354 = icmp eq ptr %353, null
  %355 = getelementptr inbounds %struct.gz_header_s, ptr %283, i64 0, i32 7
  %356 = load ptr, ptr %355, align 8, !tbaa !93
  %357 = icmp eq ptr %356, null
  %358 = getelementptr inbounds %struct.gz_header_s, ptr %283, i64 0, i32 4
  %359 = load ptr, ptr %358, align 8, !tbaa !94
  %360 = icmp eq ptr %359, null
  %361 = load i32, ptr %283, align 8, !tbaa !95
  %362 = icmp ne i32 %361, 0
  %363 = getelementptr inbounds %struct.gz_header_s, ptr %283, i64 0, i32 11
  %364 = load i32, ptr %363, align 4, !tbaa !96
  %365 = icmp eq i32 %364, 0
  %366 = select i1 %365, i8 0, i8 2
  %367 = zext i1 %362 to i8
  %368 = select i1 %360, i8 0, i8 4
  %369 = select i1 %357, i8 0, i8 8
  %370 = select i1 %354, i8 0, i8 16
  %371 = or disjoint i8 %369, %370
  %372 = or disjoint i8 %371, %368
  %373 = or disjoint i8 %372, %367
  %374 = or disjoint i8 %373, %366
  store i64 %350, ptr %74, align 8, !tbaa !48
  %375 = getelementptr inbounds i8, ptr %351, i64 %285
  store i8 %374, ptr %375, align 1, !tbaa !5
  %376 = load i64, ptr %74, align 8, !tbaa !48
  %377 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %376, i64 1), !nosanitize !16
  %378 = extractvalue { i64, i1 } %377, 1, !nosanitize !16
  br i1 %378, label %160, label %379, !nosanitize !16

379:                                              ; preds = %349
  %380 = extractvalue { i64, i1 } %377, 0, !nosanitize !16
  %381 = load ptr, ptr %260, align 8, !tbaa !34
  %382 = load ptr, ptr %282, align 8, !tbaa !82
  %383 = getelementptr inbounds %struct.gz_header_s, ptr %382, i64 0, i32 1
  %384 = load i64, ptr %383, align 8, !tbaa !97
  %385 = trunc i64 %384 to i8
  store i64 %380, ptr %74, align 8, !tbaa !48
  %386 = getelementptr inbounds i8, ptr %381, i64 %376
  store i8 %385, ptr %386, align 1, !tbaa !5
  %387 = load i64, ptr %74, align 8, !tbaa !48
  %388 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %387, i64 1), !nosanitize !16
  %389 = extractvalue { i64, i1 } %388, 1, !nosanitize !16
  br i1 %389, label %160, label %390, !nosanitize !16

390:                                              ; preds = %379
  %391 = extractvalue { i64, i1 } %388, 0, !nosanitize !16
  %392 = load ptr, ptr %260, align 8, !tbaa !34
  %393 = load ptr, ptr %282, align 8, !tbaa !82
  %394 = getelementptr inbounds %struct.gz_header_s, ptr %393, i64 0, i32 1
  %395 = load i64, ptr %394, align 8, !tbaa !97
  %396 = lshr i64 %395, 8
  %397 = trunc i64 %396 to i8
  store i64 %391, ptr %74, align 8, !tbaa !48
  %398 = getelementptr inbounds i8, ptr %392, i64 %387
  store i8 %397, ptr %398, align 1, !tbaa !5
  %399 = load i64, ptr %74, align 8, !tbaa !48
  %400 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %399, i64 1), !nosanitize !16
  %401 = extractvalue { i64, i1 } %400, 1, !nosanitize !16
  br i1 %401, label %160, label %402, !nosanitize !16

402:                                              ; preds = %390
  %403 = extractvalue { i64, i1 } %400, 0, !nosanitize !16
  %404 = load ptr, ptr %260, align 8, !tbaa !34
  %405 = load ptr, ptr %282, align 8, !tbaa !82
  %406 = getelementptr inbounds %struct.gz_header_s, ptr %405, i64 0, i32 1
  %407 = load i64, ptr %406, align 8, !tbaa !97
  %408 = lshr i64 %407, 16
  %409 = trunc i64 %408 to i8
  store i64 %403, ptr %74, align 8, !tbaa !48
  %410 = getelementptr inbounds i8, ptr %404, i64 %399
  store i8 %409, ptr %410, align 1, !tbaa !5
  %411 = load i64, ptr %74, align 8, !tbaa !48
  %412 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %411, i64 1), !nosanitize !16
  %413 = extractvalue { i64, i1 } %412, 1, !nosanitize !16
  br i1 %413, label %160, label %414, !nosanitize !16

414:                                              ; preds = %402
  %415 = extractvalue { i64, i1 } %412, 0, !nosanitize !16
  %416 = load ptr, ptr %260, align 8, !tbaa !34
  %417 = load ptr, ptr %282, align 8, !tbaa !82
  %418 = getelementptr inbounds %struct.gz_header_s, ptr %417, i64 0, i32 1
  %419 = load i64, ptr %418, align 8, !tbaa !97
  %420 = lshr i64 %419, 24
  %421 = trunc i64 %420 to i8
  store i64 %415, ptr %74, align 8, !tbaa !48
  %422 = getelementptr inbounds i8, ptr %416, i64 %411
  store i8 %421, ptr %422, align 1, !tbaa !5
  %423 = load i32, ptr %30, align 4, !tbaa !39
  %424 = icmp eq i32 %423, 9
  br i1 %424, label %431, label %425

425:                                              ; preds = %414
  %426 = load i32, ptr %31, align 8, !tbaa !40
  %427 = icmp sgt i32 %426, 1
  %428 = icmp slt i32 %423, 2
  %429 = or i1 %428, %427
  %430 = select i1 %429, i8 4, i8 0
  br label %431

431:                                              ; preds = %425, %414
  %432 = phi i8 [ %430, %425 ], [ 2, %414 ]
  %433 = load i64, ptr %74, align 8, !tbaa !48
  %434 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %433, i64 1), !nosanitize !16
  %435 = extractvalue { i64, i1 } %434, 1, !nosanitize !16
  br i1 %435, label %160, label %436, !nosanitize !16

436:                                              ; preds = %431
  %437 = extractvalue { i64, i1 } %434, 0, !nosanitize !16
  %438 = load ptr, ptr %260, align 8, !tbaa !34
  store i64 %437, ptr %74, align 8, !tbaa !48
  %439 = getelementptr inbounds i8, ptr %438, i64 %433
  store i8 %432, ptr %439, align 1, !tbaa !5
  %440 = load i64, ptr %74, align 8, !tbaa !48
  %441 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %440, i64 1), !nosanitize !16
  %442 = extractvalue { i64, i1 } %441, 1, !nosanitize !16
  br i1 %442, label %160, label %443, !nosanitize !16

443:                                              ; preds = %436
  %444 = extractvalue { i64, i1 } %441, 0, !nosanitize !16
  %445 = load ptr, ptr %260, align 8, !tbaa !34
  %446 = load ptr, ptr %282, align 8, !tbaa !82
  %447 = getelementptr inbounds %struct.gz_header_s, ptr %446, i64 0, i32 3
  %448 = load i32, ptr %447, align 4, !tbaa !98
  %449 = trunc i32 %448 to i8
  store i64 %444, ptr %74, align 8, !tbaa !48
  %450 = getelementptr inbounds i8, ptr %445, i64 %440
  store i8 %449, ptr %450, align 1, !tbaa !5
  %451 = load ptr, ptr %282, align 8, !tbaa !82
  %452 = getelementptr inbounds %struct.gz_header_s, ptr %451, i64 0, i32 4
  %453 = load ptr, ptr %452, align 8, !tbaa !94
  %454 = icmp eq ptr %453, null
  br i1 %454, label %479, label %455

455:                                              ; preds = %443
  %456 = load i64, ptr %74, align 8, !tbaa !48
  %457 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %456, i64 1), !nosanitize !16
  %458 = extractvalue { i64, i1 } %457, 1, !nosanitize !16
  br i1 %458, label %160, label %459, !nosanitize !16

459:                                              ; preds = %455
  %460 = extractvalue { i64, i1 } %457, 0, !nosanitize !16
  %461 = load ptr, ptr %260, align 8, !tbaa !34
  %462 = getelementptr inbounds %struct.gz_header_s, ptr %451, i64 0, i32 5
  %463 = load i32, ptr %462, align 8, !tbaa !99
  %464 = trunc i32 %463 to i8
  store i64 %460, ptr %74, align 8, !tbaa !48
  %465 = getelementptr inbounds i8, ptr %461, i64 %456
  store i8 %464, ptr %465, align 1, !tbaa !5
  %466 = load i64, ptr %74, align 8, !tbaa !48
  %467 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %466, i64 1), !nosanitize !16
  %468 = extractvalue { i64, i1 } %467, 1, !nosanitize !16
  br i1 %468, label %160, label %469, !nosanitize !16

469:                                              ; preds = %459
  %470 = extractvalue { i64, i1 } %467, 0, !nosanitize !16
  %471 = load ptr, ptr %260, align 8, !tbaa !34
  %472 = load ptr, ptr %282, align 8, !tbaa !82
  %473 = getelementptr inbounds %struct.gz_header_s, ptr %472, i64 0, i32 5
  %474 = load i32, ptr %473, align 8, !tbaa !99
  %475 = lshr i32 %474, 8
  %476 = trunc i32 %475 to i8
  store i64 %470, ptr %74, align 8, !tbaa !48
  %477 = getelementptr inbounds i8, ptr %471, i64 %466
  store i8 %476, ptr %477, align 1, !tbaa !5
  %478 = load ptr, ptr %282, align 8, !tbaa !82
  br label %479

479:                                              ; preds = %469, %443
  %480 = phi ptr [ %478, %469 ], [ %451, %443 ]
  %481 = getelementptr inbounds %struct.gz_header_s, ptr %480, i64 0, i32 11
  %482 = load i32, ptr %481, align 4, !tbaa !96
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %489, label %484

484:                                              ; preds = %479
  %485 = load i64, ptr %259, align 8, !tbaa !50
  %486 = load ptr, ptr %260, align 8, !tbaa !34
  %487 = load i64, ptr %74, align 8, !tbaa !48
  %488 = tail call i64 @crc32_z(i64 noundef %485, ptr noundef %486, i64 noundef %487) #10
  store i64 %488, ptr %259, align 8, !tbaa !50
  br label %489

489:                                              ; preds = %484, %479
  %490 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 8
  store i64 0, ptr %490, align 8, !tbaa !100
  store i32 69, ptr %21, align 8, !tbaa !22
  br label %495

491:                                              ; preds = %341
  %492 = load i32, ptr %21, align 8, !tbaa !22
  br label %493

493:                                              ; preds = %491, %254
  %494 = phi i32 [ %492, %491 ], [ %255, %254 ]
  switch i32 %494, label %964 [
    i32 69, label %495
    i32 73, label %700
    i32 91, label %811
    i32 103, label %921
  ]

495:                                              ; preds = %493, %489
  %496 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 7
  %497 = load ptr, ptr %496, align 8, !tbaa !82
  %498 = getelementptr inbounds %struct.gz_header_s, ptr %497, i64 0, i32 4
  %499 = load ptr, ptr %498, align 8, !tbaa !94
  %500 = icmp eq ptr %499, null
  br i1 %500, label %699, label %501

501:                                              ; preds = %495
  %502 = getelementptr inbounds %struct.gz_header_s, ptr %497, i64 0, i32 5
  %503 = load i32, ptr %502, align 8, !tbaa !99
  %504 = and i32 %503, 65535
  %505 = zext nneg i32 %504 to i64
  %506 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 8
  %507 = load i64, ptr %506, align 8, !tbaa !100
  %508 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %505, i64 %507), !nosanitize !16
  %509 = extractvalue { i64, i1 } %508, 1, !nosanitize !16
  br i1 %509, label %128, label %510, !nosanitize !16

510:                                              ; preds = %501
  %511 = load i64, ptr %74, align 8, !tbaa !48
  %512 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 3
  %513 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 2
  %514 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %515 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %516 = extractvalue { i64, i1 } %508, 0
  %517 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %511, i64 %516), !nosanitize !16
  %518 = extractvalue { i64, i1 } %517, 1, !nosanitize !16
  br i1 %518, label %160, label %519, !nosanitize !16

519:                                              ; preds = %510
  %520 = extractvalue { i64, i1 } %517, 0, !nosanitize !16
  %521 = load i64, ptr %512, align 8, !tbaa !35
  %522 = icmp ugt i64 %520, %521
  br i1 %522, label %523, label %673

523:                                              ; preds = %519
  %524 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %521, i64 %511), !nosanitize !16
  %525 = extractvalue { i64, i1 } %524, 0, !nosanitize !16
  %526 = extractvalue { i64, i1 } %524, 1, !nosanitize !16
  br i1 %526, label %128, label %527, !nosanitize !16

527:                                              ; preds = %523
  %528 = load ptr, ptr %513, align 8, !tbaa !34
  %529 = getelementptr inbounds i8, ptr %528, i64 %511
  %530 = getelementptr inbounds i8, ptr %499, i64 %507
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %529, ptr nonnull align 1 %530, i64 %525, i1 false)
  %531 = load i64, ptr %512, align 8, !tbaa !35
  store i64 %531, ptr %74, align 8, !tbaa !48
  %532 = load ptr, ptr %496, align 8, !tbaa !82
  %533 = getelementptr inbounds %struct.gz_header_s, ptr %532, i64 0, i32 11
  %534 = load i32, ptr %533, align 4, !tbaa !96
  %535 = icmp ne i32 %534, 0
  %536 = icmp ugt i64 %531, %511
  %537 = select i1 %535, i1 %536, i1 false
  br i1 %537, label %538, label %544

538:                                              ; preds = %527
  %539 = sub nuw i64 %531, %511
  %540 = load ptr, ptr %513, align 8, !tbaa !34
  %541 = getelementptr inbounds i8, ptr %540, i64 %511
  %542 = load i64, ptr %514, align 8, !tbaa !50
  %543 = tail call i64 @crc32_z(i64 noundef %542, ptr noundef %541, i64 noundef %539) #10
  store i64 %543, ptr %514, align 8, !tbaa !50
  br label %544

544:                                              ; preds = %538, %527
  %545 = load i64, ptr %506, align 8, !tbaa !100
  %546 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %545, i64 %525), !nosanitize !16
  %547 = extractvalue { i64, i1 } %546, 1, !nosanitize !16
  br i1 %547, label %160, label %548, !nosanitize !16

548:                                              ; preds = %544
  %549 = extractvalue { i64, i1 } %546, 0, !nosanitize !16
  store i64 %549, ptr %506, align 8, !tbaa !100
  %550 = load ptr, ptr %14, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %550) #10
  %551 = getelementptr inbounds %struct.internal_state, ptr %550, i64 0, i32 5
  %552 = load i64, ptr %551, align 8, !tbaa !48
  %553 = load i32, ptr %67, align 8, !tbaa !89
  %554 = zext i32 %553 to i64
  %555 = icmp ugt i64 %552, %554
  %556 = trunc i64 %552 to i32
  %557 = select i1 %555, i32 %553, i32 %556
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %587, label %559

559:                                              ; preds = %548
  %560 = load ptr, ptr %49, align 8, !tbaa !88
  %561 = getelementptr inbounds %struct.internal_state, ptr %550, i64 0, i32 4
  %562 = load ptr, ptr %561, align 8, !tbaa !49
  %563 = zext i32 %557 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %560, ptr align 1 %562, i64 %563, i1 false)
  %564 = load ptr, ptr %49, align 8, !tbaa !88
  %565 = getelementptr inbounds i8, ptr %564, i64 %563
  store ptr %565, ptr %49, align 8, !tbaa !88
  %566 = load ptr, ptr %561, align 8, !tbaa !49
  %567 = getelementptr inbounds i8, ptr %566, i64 %563
  store ptr %567, ptr %561, align 8, !tbaa !49
  %568 = load i64, ptr %515, align 8, !tbaa !90
  %569 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %568, i64 %563), !nosanitize !16
  %570 = extractvalue { i64, i1 } %569, 1, !nosanitize !16
  br i1 %570, label %643, label %571, !nosanitize !16

571:                                              ; preds = %559
  %572 = extractvalue { i64, i1 } %569, 0, !nosanitize !16
  store i64 %572, ptr %515, align 8, !tbaa !90
  %573 = load i32, ptr %67, align 8, !tbaa !89
  %574 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %573, i32 %557), !nosanitize !16
  %575 = extractvalue { i32, i1 } %574, 1, !nosanitize !16
  br i1 %575, label %649, label %576, !nosanitize !16

576:                                              ; preds = %571
  %577 = extractvalue { i32, i1 } %574, 0, !nosanitize !16
  store i32 %577, ptr %67, align 8, !tbaa !89
  %578 = load i64, ptr %551, align 8, !tbaa !48
  %579 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %578, i64 %563), !nosanitize !16
  %580 = extractvalue { i64, i1 } %579, 1, !nosanitize !16
  br i1 %580, label %649, label %581, !nosanitize !16

581:                                              ; preds = %576
  %582 = extractvalue { i64, i1 } %579, 0, !nosanitize !16
  store i64 %582, ptr %551, align 8, !tbaa !48
  %583 = icmp eq i64 %582, 0
  br i1 %583, label %584, label %587

584:                                              ; preds = %581
  %585 = getelementptr inbounds %struct.internal_state, ptr %550, i64 0, i32 2
  %586 = load ptr, ptr %585, align 8, !tbaa !34
  store ptr %586, ptr %561, align 8, !tbaa !49
  br label %587

587:                                              ; preds = %584, %581, %548
  %588 = load i64, ptr %74, align 8, !tbaa !48
  %589 = icmp eq i64 %588, 0
  br i1 %589, label %590, label %664

590:                                              ; preds = %587
  %591 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %516, i64 %525), !nosanitize !16
  %592 = extractvalue { i64, i1 } %591, 1, !nosanitize !16
  br i1 %592, label %128, label %593, !nosanitize !16

593:                                              ; preds = %590, %665
  %594 = phi { i64, i1 } [ %666, %665 ], [ %591, %590 ]
  %595 = extractvalue { i64, i1 } %594, 0
  %596 = load i64, ptr %512, align 8, !tbaa !35
  %597 = icmp ugt i64 %595, %596
  br i1 %597, label %598, label %668

598:                                              ; preds = %593
  %599 = load ptr, ptr %513, align 8, !tbaa !34
  %600 = load ptr, ptr %496, align 8, !tbaa !82
  %601 = getelementptr inbounds %struct.gz_header_s, ptr %600, i64 0, i32 4
  %602 = load ptr, ptr %601, align 8, !tbaa !94
  %603 = load i64, ptr %506, align 8, !tbaa !100
  %604 = getelementptr inbounds i8, ptr %602, i64 %603
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %599, ptr align 1 %604, i64 %596, i1 false)
  %605 = load i64, ptr %512, align 8, !tbaa !35
  store i64 %605, ptr %74, align 8, !tbaa !48
  %606 = load ptr, ptr %496, align 8, !tbaa !82
  %607 = getelementptr inbounds %struct.gz_header_s, ptr %606, i64 0, i32 11
  %608 = load i32, ptr %607, align 4, !tbaa !96
  %609 = icmp ne i32 %608, 0
  %610 = icmp ne i64 %605, 0
  %611 = select i1 %609, i1 %610, i1 false
  br i1 %611, label %612, label %616

612:                                              ; preds = %598
  %613 = load ptr, ptr %513, align 8, !tbaa !34
  %614 = load i64, ptr %514, align 8, !tbaa !50
  %615 = tail call i64 @crc32_z(i64 noundef %614, ptr noundef %613, i64 noundef %605) #10
  store i64 %615, ptr %514, align 8, !tbaa !50
  br label %616

616:                                              ; preds = %612, %598
  %617 = load i64, ptr %506, align 8, !tbaa !100
  %618 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %617, i64 %596), !nosanitize !16
  %619 = extractvalue { i64, i1 } %618, 1, !nosanitize !16
  br i1 %619, label %160, label %620, !nosanitize !16

620:                                              ; preds = %616
  %621 = extractvalue { i64, i1 } %618, 0, !nosanitize !16
  store i64 %621, ptr %506, align 8, !tbaa !100
  %622 = load ptr, ptr %14, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %622) #10
  %623 = getelementptr inbounds %struct.internal_state, ptr %622, i64 0, i32 5
  %624 = load i64, ptr %623, align 8, !tbaa !48
  %625 = load i32, ptr %67, align 8, !tbaa !89
  %626 = zext i32 %625 to i64
  %627 = icmp ugt i64 %624, %626
  %628 = trunc i64 %624 to i32
  %629 = select i1 %627, i32 %625, i32 %628
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %661, label %631

631:                                              ; preds = %620
  %632 = load ptr, ptr %49, align 8, !tbaa !88
  %633 = getelementptr inbounds %struct.internal_state, ptr %622, i64 0, i32 4
  %634 = load ptr, ptr %633, align 8, !tbaa !49
  %635 = zext i32 %629 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %632, ptr align 1 %634, i64 %635, i1 false)
  %636 = load ptr, ptr %49, align 8, !tbaa !88
  %637 = getelementptr inbounds i8, ptr %636, i64 %635
  store ptr %637, ptr %49, align 8, !tbaa !88
  %638 = load ptr, ptr %633, align 8, !tbaa !49
  %639 = getelementptr inbounds i8, ptr %638, i64 %635
  store ptr %639, ptr %633, align 8, !tbaa !49
  %640 = load i64, ptr %515, align 8, !tbaa !90
  %641 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %640, i64 %635), !nosanitize !16
  %642 = extractvalue { i64, i1 } %641, 1, !nosanitize !16
  br i1 %642, label %643, label %644, !nosanitize !16

643:                                              ; preds = %631, %559
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

644:                                              ; preds = %631
  %645 = extractvalue { i64, i1 } %641, 0, !nosanitize !16
  store i64 %645, ptr %515, align 8, !tbaa !90
  %646 = load i32, ptr %67, align 8, !tbaa !89
  %647 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %646, i32 %629), !nosanitize !16
  %648 = extractvalue { i32, i1 } %647, 1, !nosanitize !16
  br i1 %648, label %649, label %650, !nosanitize !16

649:                                              ; preds = %650, %644, %576, %571
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

650:                                              ; preds = %644
  %651 = extractvalue { i32, i1 } %647, 0, !nosanitize !16
  store i32 %651, ptr %67, align 8, !tbaa !89
  %652 = load i64, ptr %623, align 8, !tbaa !48
  %653 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %652, i64 %635), !nosanitize !16
  %654 = extractvalue { i64, i1 } %653, 1, !nosanitize !16
  br i1 %654, label %649, label %655, !nosanitize !16

655:                                              ; preds = %650
  %656 = extractvalue { i64, i1 } %653, 0, !nosanitize !16
  store i64 %656, ptr %623, align 8, !tbaa !48
  %657 = icmp eq i64 %656, 0
  br i1 %657, label %658, label %661

658:                                              ; preds = %655
  %659 = getelementptr inbounds %struct.internal_state, ptr %622, i64 0, i32 2
  %660 = load ptr, ptr %659, align 8, !tbaa !34
  store ptr %660, ptr %633, align 8, !tbaa !49
  br label %661

661:                                              ; preds = %658, %655, %620
  %662 = load i64, ptr %74, align 8, !tbaa !48
  %663 = icmp eq i64 %662, 0
  br i1 %663, label %665, label %664

664:                                              ; preds = %661, %587
  store i32 -1, ptr %44, align 4, !tbaa !51
  br label %1008

665:                                              ; preds = %661
  %666 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %595, i64 %596), !nosanitize !16
  %667 = extractvalue { i64, i1 } %666, 1, !nosanitize !16
  br i1 %667, label %128, label %593, !llvm.loop !101, !nosanitize !16

668:                                              ; preds = %593
  %669 = load ptr, ptr %496, align 8, !tbaa !82
  %670 = getelementptr inbounds %struct.gz_header_s, ptr %669, i64 0, i32 4
  %671 = load ptr, ptr %670, align 8, !tbaa !94
  %672 = load i64, ptr %506, align 8, !tbaa !100
  br label %673

673:                                              ; preds = %668, %519
  %674 = phi i64 [ %507, %519 ], [ %672, %668 ]
  %675 = phi ptr [ %499, %519 ], [ %671, %668 ]
  %676 = phi i64 [ %511, %519 ], [ 0, %668 ]
  %677 = phi i64 [ %516, %519 ], [ %595, %668 ]
  %678 = load ptr, ptr %513, align 8, !tbaa !34
  %679 = getelementptr inbounds i8, ptr %678, i64 %676
  %680 = getelementptr inbounds i8, ptr %675, i64 %674
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %679, ptr align 1 %680, i64 %677, i1 false)
  %681 = load i64, ptr %74, align 8, !tbaa !48
  %682 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %681, i64 %677), !nosanitize !16
  %683 = extractvalue { i64, i1 } %682, 0, !nosanitize !16
  %684 = extractvalue { i64, i1 } %682, 1, !nosanitize !16
  br i1 %684, label %160, label %685, !nosanitize !16

685:                                              ; preds = %673
  store i64 %683, ptr %74, align 8, !tbaa !48
  %686 = load ptr, ptr %496, align 8, !tbaa !82
  %687 = getelementptr inbounds %struct.gz_header_s, ptr %686, i64 0, i32 11
  %688 = load i32, ptr %687, align 4, !tbaa !96
  %689 = icmp ne i32 %688, 0
  %690 = icmp ugt i64 %683, %676
  %691 = select i1 %689, i1 %690, i1 false
  br i1 %691, label %692, label %698

692:                                              ; preds = %685
  %693 = sub nuw i64 %683, %676
  %694 = load ptr, ptr %513, align 8, !tbaa !34
  %695 = getelementptr inbounds i8, ptr %694, i64 %676
  %696 = load i64, ptr %514, align 8, !tbaa !50
  %697 = tail call i64 @crc32_z(i64 noundef %696, ptr noundef %695, i64 noundef %693) #10
  store i64 %697, ptr %514, align 8, !tbaa !50
  br label %698

698:                                              ; preds = %692, %685
  store i64 0, ptr %506, align 8, !tbaa !100
  br label %699

699:                                              ; preds = %698, %495
  store i32 73, ptr %21, align 8, !tbaa !22
  br label %700

700:                                              ; preds = %699, %493
  %701 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 7
  %702 = load ptr, ptr %701, align 8, !tbaa !82
  %703 = getelementptr inbounds %struct.gz_header_s, ptr %702, i64 0, i32 7
  %704 = load ptr, ptr %703, align 8, !tbaa !93
  %705 = icmp eq ptr %704, null
  br i1 %705, label %810, label %706

706:                                              ; preds = %700
  %707 = load i64, ptr %74, align 8, !tbaa !48
  %708 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 3
  %709 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 2
  %710 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %711 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %712 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 8
  br label %713

713:                                              ; preds = %788, %706
  %714 = phi i64 [ %707, %706 ], [ %777, %788 ]
  %715 = load i64, ptr %74, align 8, !tbaa !48
  %716 = load i64, ptr %708, align 8, !tbaa !35
  %717 = icmp eq i64 %715, %716
  br i1 %717, label %718, label %775

718:                                              ; preds = %713
  %719 = load ptr, ptr %701, align 8, !tbaa !82
  %720 = getelementptr inbounds %struct.gz_header_s, ptr %719, i64 0, i32 11
  %721 = load i32, ptr %720, align 4, !tbaa !96
  %722 = icmp ne i32 %721, 0
  %723 = icmp ugt i64 %715, %714
  %724 = select i1 %722, i1 %723, i1 false
  br i1 %724, label %725, label %731

725:                                              ; preds = %718
  %726 = sub nuw i64 %715, %714
  %727 = load ptr, ptr %709, align 8, !tbaa !34
  %728 = getelementptr inbounds i8, ptr %727, i64 %714
  %729 = load i64, ptr %710, align 8, !tbaa !50
  %730 = tail call i64 @crc32_z(i64 noundef %729, ptr noundef %728, i64 noundef %726) #10
  store i64 %730, ptr %710, align 8, !tbaa !50
  br label %731

731:                                              ; preds = %725, %718
  %732 = load ptr, ptr %14, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %732) #10
  %733 = getelementptr inbounds %struct.internal_state, ptr %732, i64 0, i32 5
  %734 = load i64, ptr %733, align 8, !tbaa !48
  %735 = load i32, ptr %67, align 8, !tbaa !89
  %736 = zext i32 %735 to i64
  %737 = icmp ugt i64 %734, %736
  %738 = trunc i64 %734 to i32
  %739 = select i1 %737, i32 %735, i32 %738
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %771, label %741

741:                                              ; preds = %731
  %742 = load ptr, ptr %49, align 8, !tbaa !88
  %743 = getelementptr inbounds %struct.internal_state, ptr %732, i64 0, i32 4
  %744 = load ptr, ptr %743, align 8, !tbaa !49
  %745 = zext i32 %739 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %742, ptr align 1 %744, i64 %745, i1 false)
  %746 = load ptr, ptr %49, align 8, !tbaa !88
  %747 = getelementptr inbounds i8, ptr %746, i64 %745
  store ptr %747, ptr %49, align 8, !tbaa !88
  %748 = load ptr, ptr %743, align 8, !tbaa !49
  %749 = getelementptr inbounds i8, ptr %748, i64 %745
  store ptr %749, ptr %743, align 8, !tbaa !49
  %750 = load i64, ptr %711, align 8, !tbaa !90
  %751 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %750, i64 %745), !nosanitize !16
  %752 = extractvalue { i64, i1 } %751, 1, !nosanitize !16
  br i1 %752, label %753, label %754, !nosanitize !16

753:                                              ; preds = %741
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

754:                                              ; preds = %741
  %755 = extractvalue { i64, i1 } %751, 0, !nosanitize !16
  store i64 %755, ptr %711, align 8, !tbaa !90
  %756 = load i32, ptr %67, align 8, !tbaa !89
  %757 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %756, i32 %739), !nosanitize !16
  %758 = extractvalue { i32, i1 } %757, 1, !nosanitize !16
  br i1 %758, label %759, label %760, !nosanitize !16

759:                                              ; preds = %760, %754
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

760:                                              ; preds = %754
  %761 = extractvalue { i32, i1 } %757, 0, !nosanitize !16
  store i32 %761, ptr %67, align 8, !tbaa !89
  %762 = load i64, ptr %733, align 8, !tbaa !48
  %763 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %762, i64 %745), !nosanitize !16
  %764 = extractvalue { i64, i1 } %763, 1, !nosanitize !16
  br i1 %764, label %759, label %765, !nosanitize !16

765:                                              ; preds = %760
  %766 = extractvalue { i64, i1 } %763, 0, !nosanitize !16
  store i64 %766, ptr %733, align 8, !tbaa !48
  %767 = icmp eq i64 %766, 0
  br i1 %767, label %768, label %771

768:                                              ; preds = %765
  %769 = getelementptr inbounds %struct.internal_state, ptr %732, i64 0, i32 2
  %770 = load ptr, ptr %769, align 8, !tbaa !34
  store ptr %770, ptr %743, align 8, !tbaa !49
  br label %771

771:                                              ; preds = %768, %765, %731
  %772 = load i64, ptr %74, align 8, !tbaa !48
  %773 = icmp eq i64 %772, 0
  br i1 %773, label %775, label %774

774:                                              ; preds = %771
  store i32 -1, ptr %44, align 4, !tbaa !51
  br label %1008

775:                                              ; preds = %771, %713
  %776 = phi i64 [ %715, %713 ], [ 0, %771 ]
  %777 = phi i64 [ %714, %713 ], [ 0, %771 ]
  %778 = load i64, ptr %712, align 8, !tbaa !100
  %779 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %778, i64 1), !nosanitize !16
  %780 = extractvalue { i64, i1 } %779, 1, !nosanitize !16
  br i1 %780, label %160, label %781, !nosanitize !16

781:                                              ; preds = %775
  %782 = extractvalue { i64, i1 } %779, 0, !nosanitize !16
  %783 = load ptr, ptr %701, align 8, !tbaa !82
  %784 = getelementptr inbounds %struct.gz_header_s, ptr %783, i64 0, i32 7
  %785 = load ptr, ptr %784, align 8, !tbaa !93
  store i64 %782, ptr %712, align 8, !tbaa !100
  %786 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %776, i64 1), !nosanitize !16
  %787 = extractvalue { i64, i1 } %786, 1, !nosanitize !16
  br i1 %787, label %160, label %788, !nosanitize !16

788:                                              ; preds = %781
  %789 = extractvalue { i64, i1 } %786, 0, !nosanitize !16
  %790 = load ptr, ptr %709, align 8, !tbaa !34
  %791 = getelementptr inbounds i8, ptr %785, i64 %778
  %792 = load i8, ptr %791, align 1, !tbaa !5
  store i64 %789, ptr %74, align 8, !tbaa !48
  %793 = getelementptr inbounds i8, ptr %790, i64 %776
  store i8 %792, ptr %793, align 1, !tbaa !5
  %794 = icmp eq i8 %792, 0
  br i1 %794, label %795, label %713, !llvm.loop !103

795:                                              ; preds = %788
  %796 = load ptr, ptr %701, align 8, !tbaa !82
  %797 = getelementptr inbounds %struct.gz_header_s, ptr %796, i64 0, i32 11
  %798 = load i32, ptr %797, align 4, !tbaa !96
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %809, label %800

800:                                              ; preds = %795
  %801 = load i64, ptr %74, align 8, !tbaa !48
  %802 = icmp ugt i64 %801, %777
  br i1 %802, label %803, label %809

803:                                              ; preds = %800
  %804 = sub nuw i64 %801, %777
  %805 = load ptr, ptr %709, align 8, !tbaa !34
  %806 = getelementptr inbounds i8, ptr %805, i64 %777
  %807 = load i64, ptr %710, align 8, !tbaa !50
  %808 = tail call i64 @crc32_z(i64 noundef %807, ptr noundef %806, i64 noundef %804) #10
  store i64 %808, ptr %710, align 8, !tbaa !50
  br label %809

809:                                              ; preds = %803, %800, %795
  store i64 0, ptr %712, align 8, !tbaa !100
  br label %810

810:                                              ; preds = %809, %700
  store i32 91, ptr %21, align 8, !tbaa !22
  br label %811

811:                                              ; preds = %810, %493
  %812 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 7
  %813 = load ptr, ptr %812, align 8, !tbaa !82
  %814 = getelementptr inbounds %struct.gz_header_s, ptr %813, i64 0, i32 9
  %815 = load ptr, ptr %814, align 8, !tbaa !91
  %816 = icmp eq ptr %815, null
  br i1 %816, label %920, label %817

817:                                              ; preds = %811
  %818 = load i64, ptr %74, align 8, !tbaa !48
  %819 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 3
  %820 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 2
  %821 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %822 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %823 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 8
  br label %824

824:                                              ; preds = %899, %817
  %825 = phi i64 [ %818, %817 ], [ %888, %899 ]
  %826 = load i64, ptr %74, align 8, !tbaa !48
  %827 = load i64, ptr %819, align 8, !tbaa !35
  %828 = icmp eq i64 %826, %827
  br i1 %828, label %829, label %886

829:                                              ; preds = %824
  %830 = load ptr, ptr %812, align 8, !tbaa !82
  %831 = getelementptr inbounds %struct.gz_header_s, ptr %830, i64 0, i32 11
  %832 = load i32, ptr %831, align 4, !tbaa !96
  %833 = icmp ne i32 %832, 0
  %834 = icmp ugt i64 %826, %825
  %835 = select i1 %833, i1 %834, i1 false
  br i1 %835, label %836, label %842

836:                                              ; preds = %829
  %837 = sub nuw i64 %826, %825
  %838 = load ptr, ptr %820, align 8, !tbaa !34
  %839 = getelementptr inbounds i8, ptr %838, i64 %825
  %840 = load i64, ptr %821, align 8, !tbaa !50
  %841 = tail call i64 @crc32_z(i64 noundef %840, ptr noundef %839, i64 noundef %837) #10
  store i64 %841, ptr %821, align 8, !tbaa !50
  br label %842

842:                                              ; preds = %836, %829
  %843 = load ptr, ptr %14, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %843) #10
  %844 = getelementptr inbounds %struct.internal_state, ptr %843, i64 0, i32 5
  %845 = load i64, ptr %844, align 8, !tbaa !48
  %846 = load i32, ptr %67, align 8, !tbaa !89
  %847 = zext i32 %846 to i64
  %848 = icmp ugt i64 %845, %847
  %849 = trunc i64 %845 to i32
  %850 = select i1 %848, i32 %846, i32 %849
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %882, label %852

852:                                              ; preds = %842
  %853 = load ptr, ptr %49, align 8, !tbaa !88
  %854 = getelementptr inbounds %struct.internal_state, ptr %843, i64 0, i32 4
  %855 = load ptr, ptr %854, align 8, !tbaa !49
  %856 = zext i32 %850 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %853, ptr align 1 %855, i64 %856, i1 false)
  %857 = load ptr, ptr %49, align 8, !tbaa !88
  %858 = getelementptr inbounds i8, ptr %857, i64 %856
  store ptr %858, ptr %49, align 8, !tbaa !88
  %859 = load ptr, ptr %854, align 8, !tbaa !49
  %860 = getelementptr inbounds i8, ptr %859, i64 %856
  store ptr %860, ptr %854, align 8, !tbaa !49
  %861 = load i64, ptr %822, align 8, !tbaa !90
  %862 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %861, i64 %856), !nosanitize !16
  %863 = extractvalue { i64, i1 } %862, 1, !nosanitize !16
  br i1 %863, label %864, label %865, !nosanitize !16

864:                                              ; preds = %852
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

865:                                              ; preds = %852
  %866 = extractvalue { i64, i1 } %862, 0, !nosanitize !16
  store i64 %866, ptr %822, align 8, !tbaa !90
  %867 = load i32, ptr %67, align 8, !tbaa !89
  %868 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %867, i32 %850), !nosanitize !16
  %869 = extractvalue { i32, i1 } %868, 1, !nosanitize !16
  br i1 %869, label %870, label %871, !nosanitize !16

870:                                              ; preds = %871, %865
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

871:                                              ; preds = %865
  %872 = extractvalue { i32, i1 } %868, 0, !nosanitize !16
  store i32 %872, ptr %67, align 8, !tbaa !89
  %873 = load i64, ptr %844, align 8, !tbaa !48
  %874 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %873, i64 %856), !nosanitize !16
  %875 = extractvalue { i64, i1 } %874, 1, !nosanitize !16
  br i1 %875, label %870, label %876, !nosanitize !16

876:                                              ; preds = %871
  %877 = extractvalue { i64, i1 } %874, 0, !nosanitize !16
  store i64 %877, ptr %844, align 8, !tbaa !48
  %878 = icmp eq i64 %877, 0
  br i1 %878, label %879, label %882

879:                                              ; preds = %876
  %880 = getelementptr inbounds %struct.internal_state, ptr %843, i64 0, i32 2
  %881 = load ptr, ptr %880, align 8, !tbaa !34
  store ptr %881, ptr %854, align 8, !tbaa !49
  br label %882

882:                                              ; preds = %879, %876, %842
  %883 = load i64, ptr %74, align 8, !tbaa !48
  %884 = icmp eq i64 %883, 0
  br i1 %884, label %886, label %885

885:                                              ; preds = %882
  store i32 -1, ptr %44, align 4, !tbaa !51
  br label %1008

886:                                              ; preds = %882, %824
  %887 = phi i64 [ %826, %824 ], [ 0, %882 ]
  %888 = phi i64 [ %825, %824 ], [ 0, %882 ]
  %889 = load i64, ptr %823, align 8, !tbaa !100
  %890 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %889, i64 1), !nosanitize !16
  %891 = extractvalue { i64, i1 } %890, 1, !nosanitize !16
  br i1 %891, label %160, label %892, !nosanitize !16

892:                                              ; preds = %886
  %893 = extractvalue { i64, i1 } %890, 0, !nosanitize !16
  %894 = load ptr, ptr %812, align 8, !tbaa !82
  %895 = getelementptr inbounds %struct.gz_header_s, ptr %894, i64 0, i32 9
  %896 = load ptr, ptr %895, align 8, !tbaa !91
  store i64 %893, ptr %823, align 8, !tbaa !100
  %897 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %887, i64 1), !nosanitize !16
  %898 = extractvalue { i64, i1 } %897, 1, !nosanitize !16
  br i1 %898, label %160, label %899, !nosanitize !16

899:                                              ; preds = %892
  %900 = extractvalue { i64, i1 } %897, 0, !nosanitize !16
  %901 = load ptr, ptr %820, align 8, !tbaa !34
  %902 = getelementptr inbounds i8, ptr %896, i64 %889
  %903 = load i8, ptr %902, align 1, !tbaa !5
  store i64 %900, ptr %74, align 8, !tbaa !48
  %904 = getelementptr inbounds i8, ptr %901, i64 %887
  store i8 %903, ptr %904, align 1, !tbaa !5
  %905 = icmp eq i8 %903, 0
  br i1 %905, label %906, label %824, !llvm.loop !104

906:                                              ; preds = %899
  %907 = load ptr, ptr %812, align 8, !tbaa !82
  %908 = getelementptr inbounds %struct.gz_header_s, ptr %907, i64 0, i32 11
  %909 = load i32, ptr %908, align 4, !tbaa !96
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %920, label %911

911:                                              ; preds = %906
  %912 = load i64, ptr %74, align 8, !tbaa !48
  %913 = icmp ugt i64 %912, %888
  br i1 %913, label %914, label %920

914:                                              ; preds = %911
  %915 = sub nuw i64 %912, %888
  %916 = load ptr, ptr %820, align 8, !tbaa !34
  %917 = getelementptr inbounds i8, ptr %916, i64 %888
  %918 = load i64, ptr %821, align 8, !tbaa !50
  %919 = tail call i64 @crc32_z(i64 noundef %918, ptr noundef %917, i64 noundef %915) #10
  store i64 %919, ptr %821, align 8, !tbaa !50
  br label %920

920:                                              ; preds = %914, %911, %906, %811
  store i32 103, ptr %21, align 8, !tbaa !22
  br label %921

921:                                              ; preds = %920, %493
  %922 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 7
  %923 = load ptr, ptr %922, align 8, !tbaa !82
  %924 = getelementptr inbounds %struct.gz_header_s, ptr %923, i64 0, i32 11
  %925 = load i32, ptr %924, align 4, !tbaa !96
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %960, label %927

927:                                              ; preds = %921
  %928 = load i64, ptr %74, align 8, !tbaa !48
  %929 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %928, i64 2), !nosanitize !16
  %930 = extractvalue { i64, i1 } %929, 1, !nosanitize !16
  br i1 %930, label %160, label %931, !nosanitize !16

931:                                              ; preds = %927
  %932 = extractvalue { i64, i1 } %929, 0, !nosanitize !16
  %933 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 3
  %934 = load i64, ptr %933, align 8, !tbaa !35
  %935 = icmp ugt i64 %932, %934
  br i1 %935, label %936, label %940

936:                                              ; preds = %931
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %937 = load i64, ptr %74, align 8, !tbaa !48
  %938 = icmp eq i64 %937, 0
  br i1 %938, label %940, label %939

939:                                              ; preds = %936
  store i32 -1, ptr %44, align 4, !tbaa !51
  br label %1008

940:                                              ; preds = %936, %931
  %941 = phi i64 [ 0, %936 ], [ %928, %931 ]
  %942 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %943 = add nuw i64 %941, 1
  %944 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 2
  %945 = load ptr, ptr %944, align 8, !tbaa !34
  %946 = load i64, ptr %942, align 8, !tbaa !50
  %947 = trunc i64 %946 to i8
  store i64 %943, ptr %74, align 8, !tbaa !48
  %948 = getelementptr inbounds i8, ptr %945, i64 %941
  store i8 %947, ptr %948, align 1, !tbaa !5
  %949 = load i64, ptr %74, align 8, !tbaa !48
  %950 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %949, i64 1), !nosanitize !16
  %951 = extractvalue { i64, i1 } %950, 1, !nosanitize !16
  br i1 %951, label %160, label %952, !nosanitize !16

952:                                              ; preds = %940
  %953 = extractvalue { i64, i1 } %950, 0, !nosanitize !16
  %954 = load ptr, ptr %944, align 8, !tbaa !34
  %955 = load i64, ptr %942, align 8, !tbaa !50
  %956 = lshr i64 %955, 8
  %957 = trunc i64 %956 to i8
  store i64 %953, ptr %74, align 8, !tbaa !48
  %958 = getelementptr inbounds i8, ptr %954, i64 %949
  store i8 %957, ptr %958, align 1, !tbaa !5
  %959 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %959, ptr %942, align 8, !tbaa !50
  br label %960

960:                                              ; preds = %952, %921
  store i32 113, ptr %21, align 8, !tbaa !22
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %961 = load i64, ptr %74, align 8, !tbaa !48
  %962 = icmp eq i64 %961, 0
  br i1 %962, label %964, label %963

963:                                              ; preds = %960
  store i32 -1, ptr %44, align 4, !tbaa !51
  br label %1008

964:                                              ; preds = %960, %493, %154
  %965 = load i32, ptr %53, align 8, !tbaa !72
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %967, label %974

967:                                              ; preds = %964, %144
  %968 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 29
  %969 = load i32, ptr %968, align 4, !tbaa !66
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %971, label %974

971:                                              ; preds = %967
  %972 = load i32, ptr %21, align 8, !tbaa !22
  %973 = icmp eq i32 %972, 666
  br i1 %973, label %1008, label %974

974:                                              ; preds = %971, %967, %964
  %975 = load i32, ptr %30, align 4, !tbaa !39
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %977, label %979

977:                                              ; preds = %974
  %978 = tail call i32 @deflate_stored(ptr noundef nonnull %15, i32 noundef 5), !range !105
  br label %990

979:                                              ; preds = %974
  %980 = load i32, ptr %31, align 8, !tbaa !40
  switch i32 %980, label %985 [
    i32 2, label %981
    i32 3, label %983
  ]

981:                                              ; preds = %979
  %982 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %15, i32 noundef 5), !range !105
  br label %990

983:                                              ; preds = %979
  %984 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %15, i32 noundef 5), !range !105
  br label %990

985:                                              ; preds = %979
  %986 = sext i32 %975 to i64
  %987 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %986, i32 4
  %988 = load ptr, ptr %987, align 8, !tbaa !87
  %989 = tail call i32 %988(ptr noundef nonnull %15, i32 noundef 5) #10
  br label %990

990:                                              ; preds = %985, %983, %981, %977
  %991 = phi i32 [ %978, %977 ], [ %982, %981 ], [ %984, %983 ], [ %989, %985 ]
  %992 = and i32 %991, -2
  %993 = icmp eq i32 %992, 2
  br i1 %993, label %994, label %995

994:                                              ; preds = %990
  store i32 666, ptr %21, align 8, !tbaa !22
  br label %995

995:                                              ; preds = %994, %990
  %996 = and i32 %991, -3
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %998, label %1002

998:                                              ; preds = %995
  %999 = load i32, ptr %67, align 8, !tbaa !89
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1001, label %1008

1001:                                             ; preds = %998
  store i32 -1, ptr %44, align 4, !tbaa !51
  br label %1008

1002:                                             ; preds = %995
  %1003 = icmp eq i32 %991, 1
  br i1 %1003, label %1004, label %1008

1004:                                             ; preds = %1002
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1005 = load i32, ptr %67, align 8, !tbaa !89
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1007, label %1008

1007:                                             ; preds = %1004
  store i32 -1, ptr %44, align 4, !tbaa !51
  br label %1008

1008:                                             ; preds = %70, %122, %147, %347, %939, %963, %253, %138, %774, %885, %998, %1001, %1007, %664, %1004, %1002, %971
  %1009 = load i32, ptr %53, align 8, !tbaa !72
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1011, label %1073

1011:                                             ; preds = %1008
  %1012 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 27
  %1013 = load i32, ptr %1012, align 4, !tbaa !64
  %1014 = zext i32 %1013 to i64
  %1015 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 23
  %1016 = load i64, ptr %1015, align 8, !tbaa !65
  %1017 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1014, i64 %1016), !nosanitize !16
  %1018 = extractvalue { i64, i1 } %1017, 1, !nosanitize !16
  br i1 %1018, label %1019, label %1020, !nosanitize !16

1019:                                             ; preds = %1040, %1011
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

1020:                                             ; preds = %1011
  %1021 = extractvalue { i64, i1 } %1017, 0, !nosanitize !16
  %1022 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 29
  %1023 = load i32, ptr %1022, align 4, !tbaa !66
  %1024 = zext i32 %1023 to i64
  %1025 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1021, i64 %1024), !nosanitize !16
  %1026 = extractvalue { i64, i1 } %1025, 1, !nosanitize !16
  br i1 %1026, label %1027, label %1028, !nosanitize !16

1027:                                             ; preds = %1020
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

1028:                                             ; preds = %1020
  %1029 = extractvalue { i64, i1 } %1025, 0, !nosanitize !16
  %1030 = icmp eq i64 %1029, 0
  br i1 %1030, label %1031, label %1073

1031:                                             ; preds = %1028, %43, %34
  %1032 = load i32, ptr %30, align 4, !tbaa !39
  %1033 = icmp eq i32 %1032, %25
  br i1 %1033, label %1072, label %1034

1034:                                             ; preds = %1031
  %1035 = icmp eq i32 %1032, 0
  br i1 %1035, label %1036, label %1054

1036:                                             ; preds = %1034
  %1037 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 54
  %1038 = load i32, ptr %1037, align 8, !tbaa !106
  switch i32 %1038, label %1040 [
    i32 0, label %1054
    i32 1, label %1039
  ]

1039:                                             ; preds = %1036
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %1053

1040:                                             ; preds = %1036
  %1041 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 19
  %1042 = load i32, ptr %1041, align 4, !tbaa !30
  %1043 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1042, i32 1), !nosanitize !16
  %1044 = extractvalue { i32, i1 } %1043, 1, !nosanitize !16
  br i1 %1044, label %1019, label %1045, !nosanitize !16

1045:                                             ; preds = %1040
  %1046 = extractvalue { i32, i1 } %1043, 0, !nosanitize !16
  %1047 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 17
  %1048 = load ptr, ptr %1047, align 8, !tbaa !31
  %1049 = zext i32 %1046 to i64
  %1050 = getelementptr inbounds i16, ptr %1048, i64 %1049
  store i16 0, ptr %1050, align 2, !tbaa !53
  %1051 = shl nuw nsw i64 %1049, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1048, i8 0, i64 %1051, i1 false)
  %1052 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 60
  store i32 0, ptr %1052, align 8, !tbaa !54
  br label %1053

1053:                                             ; preds = %1045, %1039
  store i32 0, ptr %1037, align 8, !tbaa !106
  br label %1054

1054:                                             ; preds = %1036, %1053, %1034
  store i32 %25, ptr %30, align 4, !tbaa !39
  %1055 = zext nneg i32 %25 to i64
  %1056 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %1055
  %1057 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %1055, i32 1
  %1058 = load i16, ptr %1057, align 2, !tbaa !55
  %1059 = zext i16 %1058 to i32
  %1060 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 32
  store i32 %1059, ptr %1060, align 8, !tbaa !57
  %1061 = load i16, ptr %1056, align 16, !tbaa !58
  %1062 = zext i16 %1061 to i32
  %1063 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 35
  store i32 %1062, ptr %1063, align 4, !tbaa !59
  %1064 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %1055, i32 2
  %1065 = load i16, ptr %1064, align 4, !tbaa !60
  %1066 = zext i16 %1065 to i32
  %1067 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 36
  store i32 %1066, ptr %1067, align 8, !tbaa !61
  %1068 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %1055, i32 3
  %1069 = load i16, ptr %1068, align 2, !tbaa !62
  %1070 = zext i16 %1069 to i32
  %1071 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 31
  store i32 %1070, ptr %1071, align 4, !tbaa !63
  br label %1072

1072:                                             ; preds = %1054, %1031
  store i32 %2, ptr %31, align 8, !tbaa !40
  br label %1073

1073:                                             ; preds = %63, %47, %1008, %13, %17, %20, %3, %5, %9, %23, %1028, %1072
  %1074 = phi i32 [ 0, %1072 ], [ -5, %1028 ], [ -2, %23 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ], [ -2, %63 ], [ -2, %47 ], [ -5, %1008 ]
  ret i32 %1074
}

; Function Attrs: nounwind uwtable
define dso_local i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1164, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1164, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1164, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %1164, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !18
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %1164

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !22
  switch i32 %21, label %1164 [
    i32 42, label %22
    i32 57, label %22
    i32 69, label %22
    i32 73, label %22
    i32 91, label %22
    i32 103, label %22
    i32 113, label %22
    i32 666, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %23 = icmp ugt i32 %1, 5
  br i1 %23, label %1164, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !88
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !72
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8, !tbaa !73
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32, %28
  %36 = icmp eq i32 %21, 666
  %37 = icmp ne i32 %1, 4
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %32, %24
  %40 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 4), align 16, !tbaa !36
  %41 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %40, ptr %41, align 8, !tbaa !8
  br label %1164

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !89
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !36
  %48 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %47, ptr %48, align 8, !tbaa !8
  br label %1164

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 10
  %51 = load i32, ptr %50, align 4, !tbaa !51
  store i32 %1, ptr %50, align 4, !tbaa !51
  %52 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !48
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %101, label %55

55:                                               ; preds = %49
  tail call void @_tr_flush_bits(ptr noundef nonnull %14) #10
  %56 = load i64, ptr %52, align 8, !tbaa !48
  %57 = load i32, ptr %43, align 8, !tbaa !89
  %58 = zext i32 %57 to i64
  %59 = icmp ugt i64 %56, %58
  %60 = trunc i64 %56 to i32
  %61 = select i1 %59, i32 %57, i32 %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %94, label %63

63:                                               ; preds = %55
  %64 = load ptr, ptr %25, align 8, !tbaa !88
  %65 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !49
  %67 = zext i32 %61 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %66, i64 %67, i1 false)
  %68 = load ptr, ptr %25, align 8, !tbaa !88
  %69 = getelementptr inbounds i8, ptr %68, i64 %67
  store ptr %69, ptr %25, align 8, !tbaa !88
  %70 = load ptr, ptr %65, align 8, !tbaa !49
  %71 = getelementptr inbounds i8, ptr %70, i64 %67
  store ptr %71, ptr %65, align 8, !tbaa !49
  %72 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %73 = load i64, ptr %72, align 8, !tbaa !90
  %74 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 %67), !nosanitize !16
  %75 = extractvalue { i64, i1 } %74, 1, !nosanitize !16
  br i1 %75, label %76, label %77, !nosanitize !16

76:                                               ; preds = %63
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

77:                                               ; preds = %63
  %78 = extractvalue { i64, i1 } %74, 0, !nosanitize !16
  store i64 %78, ptr %72, align 8, !tbaa !90
  %79 = load i32, ptr %43, align 8, !tbaa !89
  %80 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %79, i32 %61), !nosanitize !16
  %81 = extractvalue { i32, i1 } %80, 1, !nosanitize !16
  br i1 %81, label %82, label %83, !nosanitize !16

82:                                               ; preds = %83, %77
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

83:                                               ; preds = %77
  %84 = extractvalue { i32, i1 } %80, 0, !nosanitize !16
  store i32 %84, ptr %43, align 8, !tbaa !89
  %85 = load i64, ptr %52, align 8, !tbaa !48
  %86 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %85, i64 %67), !nosanitize !16
  %87 = extractvalue { i64, i1 } %86, 1, !nosanitize !16
  br i1 %87, label %82, label %88, !nosanitize !16

88:                                               ; preds = %83
  %89 = extractvalue { i64, i1 } %86, 0, !nosanitize !16
  store i64 %89, ptr %52, align 8, !tbaa !48
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !34
  store ptr %93, ptr %65, align 8, !tbaa !49
  br label %94

94:                                               ; preds = %55, %88, %91
  %95 = phi i64 [ %56, %55 ], [ %89, %88 ], [ 0, %91 ]
  %96 = phi i32 [ %57, %55 ], [ %84, %88 ], [ %84, %91 ]
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %20, align 8, !tbaa !22
  br label %124

100:                                              ; preds = %94
  store i32 -1, ptr %50, align 4, !tbaa !51
  br label %1164

101:                                              ; preds = %49
  br i1 %31, label %103, label %124

102:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !16
  unreachable, !nosanitize !16

103:                                              ; preds = %101
  %104 = shl nuw nsw i32 %1, 1
  %105 = icmp eq i32 %1, 5
  %106 = select i1 %105, i32 -9, i32 0
  %107 = add nsw i32 %106, %104
  %108 = add i32 %51, 1073741824
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %111, label %102, !nosanitize !16

110:                                              ; preds = %654, %512, %579, %1001, %490, %138, %111
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

111:                                              ; preds = %103
  %112 = shl nsw i32 %51, 1
  %113 = icmp sgt i32 %51, 4
  %114 = select i1 %113, i32 9, i32 0
  %115 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %112, i32 %114), !nosanitize !16
  %116 = extractvalue { i32, i1 } %115, 1, !nosanitize !16
  br i1 %116, label %110, label %117, !nosanitize !16

117:                                              ; preds = %111
  %118 = extractvalue { i32, i1 } %115, 0, !nosanitize !16
  %119 = icmp sle i32 %107, %118
  %120 = and i1 %37, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !36
  %123 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %122, ptr %123, align 8, !tbaa !8
  br label %1164

124:                                              ; preds = %98, %101, %117
  %125 = phi i64 [ %95, %98 ], [ 0, %101 ], [ 0, %117 ]
  %126 = phi i32 [ %99, %98 ], [ %21, %101 ], [ %21, %117 ]
  switch i32 %126, label %239 [
    i32 666, label %127
    i32 42, label %133
  ]

127:                                              ; preds = %124
  %128 = load i32, ptr %29, align 8, !tbaa !72
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %956, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !36
  %132 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %131, ptr %132, align 8, !tbaa !8
  br label %1164

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 6
  %135 = load i32, ptr %134, align 8, !tbaa !23
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 113, ptr %20, align 8, !tbaa !22
  br label %953

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 12
  %140 = load i32, ptr %139, align 4, !tbaa !24
  %141 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %140, i32 8), !nosanitize !16
  %142 = extractvalue { i32, i1 } %141, 1, !nosanitize !16
  br i1 %142, label %110, label %144, !nosanitize !16

143:                                              ; preds = %605, %770, %764, %881, %875, %499, %533, %1097, %1087, %1078, %1067, %1057, %1047, %1038, %1033, %929, %916, %662, %448, %444, %425, %420, %389, %377, %366, %336, %335, %321, %316, %295, %288, %281, %274, %273, %256, %249, %242
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

144:                                              ; preds = %138
  %145 = extractvalue { i32, i1 } %141, 0, !nosanitize !16
  %146 = shl i32 %145, 12
  %147 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 34
  %148 = load i32, ptr %147, align 8, !tbaa !40
  %149 = icmp sgt i32 %148, 1
  br i1 %149, label %159, label %150

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 33
  %152 = load i32, ptr %151, align 4, !tbaa !39
  %153 = icmp slt i32 %152, 2
  br i1 %153, label %159, label %154

154:                                              ; preds = %150
  %155 = icmp ult i32 %152, 6
  br i1 %155, label %159, label %156

156:                                              ; preds = %154
  %157 = icmp eq i32 %152, 6
  %158 = select i1 %157, i32 128, i32 192
  br label %159

159:                                              ; preds = %156, %154, %144, %150
  %160 = phi i32 [ 0, %150 ], [ 0, %144 ], [ 64, %154 ], [ %158, %156 ]
  %161 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 27
  %162 = or disjoint i32 %160, %146
  %163 = load i32, ptr %161, align 4, !tbaa !64
  %164 = icmp eq i32 %163, 0
  %165 = select i1 %164, i32 2048, i32 2080
  %166 = or disjoint i32 %165, %162
  %167 = urem i32 %166, 31
  %168 = or disjoint i32 %167, %166
  %169 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %125, i64 1), !nosanitize !16
  %170 = extractvalue { i64, i1 } %169, 1, !nosanitize !16
  br i1 %170, label %171, label %172, !nosanitize !16

171:                                              ; preds = %172, %159
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

172:                                              ; preds = %159
  %173 = extractvalue { i64, i1 } %169, 0, !nosanitize !16
  %174 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !34
  %176 = lshr i32 %166, 8
  %177 = trunc i32 %176 to i8
  store i64 %173, ptr %52, align 8, !tbaa !48
  %178 = getelementptr inbounds i8, ptr %175, i64 %125
  store i8 %177, ptr %178, align 1, !tbaa !5
  %179 = load i64, ptr %52, align 8, !tbaa !48
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %179, i64 1), !nosanitize !16
  %181 = extractvalue { i64, i1 } %180, 1, !nosanitize !16
  br i1 %181, label %171, label %182, !nosanitize !16

182:                                              ; preds = %172
  %183 = extractvalue { i64, i1 } %180, 0, !nosanitize !16
  %184 = load ptr, ptr %174, align 8, !tbaa !34
  %185 = trunc i32 %168 to i8
  %186 = xor i8 %185, 31
  store i64 %183, ptr %52, align 8, !tbaa !48
  %187 = getelementptr inbounds i8, ptr %184, i64 %179
  store i8 %186, ptr %187, align 1, !tbaa !5
  %188 = load i32, ptr %161, align 4, !tbaa !64
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %231, label %190

190:                                              ; preds = %182
  %191 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %192 = load i64, ptr %191, align 8, !tbaa !50
  %193 = lshr i64 %192, 16
  %194 = load i64, ptr %52, align 8, !tbaa !48
  %195 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %194, i64 1), !nosanitize !16
  %196 = extractvalue { i64, i1 } %195, 1, !nosanitize !16
  br i1 %196, label %197, label %198, !nosanitize !16

197:                                              ; preds = %198, %190
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

198:                                              ; preds = %190
  %199 = extractvalue { i64, i1 } %195, 0, !nosanitize !16
  %200 = load ptr, ptr %174, align 8, !tbaa !34
  %201 = lshr i64 %192, 24
  %202 = trunc i64 %201 to i8
  store i64 %199, ptr %52, align 8, !tbaa !48
  %203 = getelementptr inbounds i8, ptr %200, i64 %194
  store i8 %202, ptr %203, align 1, !tbaa !5
  %204 = load i64, ptr %52, align 8, !tbaa !48
  %205 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %204, i64 1), !nosanitize !16
  %206 = extractvalue { i64, i1 } %205, 1, !nosanitize !16
  br i1 %206, label %197, label %207, !nosanitize !16

207:                                              ; preds = %198
  %208 = extractvalue { i64, i1 } %205, 0, !nosanitize !16
  %209 = load ptr, ptr %174, align 8, !tbaa !34
  %210 = trunc i64 %193 to i8
  store i64 %208, ptr %52, align 8, !tbaa !48
  %211 = getelementptr inbounds i8, ptr %209, i64 %204
  store i8 %210, ptr %211, align 1, !tbaa !5
  %212 = load i64, ptr %191, align 8, !tbaa !50
  %213 = trunc i64 %212 to i8
  %214 = load i64, ptr %52, align 8, !tbaa !48
  %215 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %214, i64 1), !nosanitize !16
  %216 = extractvalue { i64, i1 } %215, 1, !nosanitize !16
  br i1 %216, label %217, label %218, !nosanitize !16

217:                                              ; preds = %218, %207
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

218:                                              ; preds = %207
  %219 = extractvalue { i64, i1 } %215, 0, !nosanitize !16
  %220 = load ptr, ptr %174, align 8, !tbaa !34
  %221 = lshr i64 %212, 8
  %222 = trunc i64 %221 to i8
  store i64 %219, ptr %52, align 8, !tbaa !48
  %223 = getelementptr inbounds i8, ptr %220, i64 %214
  store i8 %222, ptr %223, align 1, !tbaa !5
  %224 = load i64, ptr %52, align 8, !tbaa !48
  %225 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %224, i64 1), !nosanitize !16
  %226 = extractvalue { i64, i1 } %225, 1, !nosanitize !16
  br i1 %226, label %217, label %227, !nosanitize !16

227:                                              ; preds = %218
  %228 = extractvalue { i64, i1 } %225, 0, !nosanitize !16
  %229 = load ptr, ptr %174, align 8, !tbaa !34
  store i64 %228, ptr %52, align 8, !tbaa !48
  %230 = getelementptr inbounds i8, ptr %229, i64 %224
  store i8 %213, ptr %230, align 1, !tbaa !5
  br label %231

231:                                              ; preds = %227, %182
  %232 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %233 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %232, ptr %233, align 8, !tbaa !50
  store i32 113, ptr %20, align 8, !tbaa !22
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %234 = load i64, ptr %52, align 8, !tbaa !48
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %231
  %237 = load i32, ptr %20, align 8, !tbaa !22
  br label %239

238:                                              ; preds = %231
  store i32 -1, ptr %50, align 4, !tbaa !51
  br label %1164

239:                                              ; preds = %124, %236
  %240 = phi i32 [ %237, %236 ], [ %126, %124 ]
  %241 = icmp eq i32 %240, 57
  br i1 %241, label %242, label %482

242:                                              ; preds = %239
  %243 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %244 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %243, ptr %244, align 8, !tbaa !50
  %245 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %246 = load i64, ptr %52, align 8, !tbaa !48
  %247 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %246, i64 1), !nosanitize !16
  %248 = extractvalue { i64, i1 } %247, 1, !nosanitize !16
  br i1 %248, label %143, label %249, !nosanitize !16

249:                                              ; preds = %242
  %250 = extractvalue { i64, i1 } %247, 0, !nosanitize !16
  %251 = load ptr, ptr %245, align 8, !tbaa !34
  store i64 %250, ptr %52, align 8, !tbaa !48
  %252 = getelementptr inbounds i8, ptr %251, i64 %246
  store i8 31, ptr %252, align 1, !tbaa !5
  %253 = load i64, ptr %52, align 8, !tbaa !48
  %254 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %253, i64 1), !nosanitize !16
  %255 = extractvalue { i64, i1 } %254, 1, !nosanitize !16
  br i1 %255, label %143, label %256, !nosanitize !16

256:                                              ; preds = %249
  %257 = extractvalue { i64, i1 } %254, 0, !nosanitize !16
  %258 = load ptr, ptr %245, align 8, !tbaa !34
  store i64 %257, ptr %52, align 8, !tbaa !48
  %259 = getelementptr inbounds i8, ptr %258, i64 %253
  store i8 -117, ptr %259, align 1, !tbaa !5
  %260 = load i64, ptr %52, align 8, !tbaa !48
  %261 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %260, i64 1), !nosanitize !16
  %262 = extractvalue { i64, i1 } %261, 1, !nosanitize !16
  br i1 %262, label %143, label %263, !nosanitize !16

263:                                              ; preds = %256
  %264 = extractvalue { i64, i1 } %261, 0, !nosanitize !16
  %265 = load ptr, ptr %245, align 8, !tbaa !34
  store i64 %264, ptr %52, align 8, !tbaa !48
  %266 = getelementptr inbounds i8, ptr %265, i64 %260
  store i8 8, ptr %266, align 1, !tbaa !5
  %267 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 7
  %268 = load ptr, ptr %267, align 8, !tbaa !82
  %269 = icmp eq ptr %268, null
  %270 = load i64, ptr %52, align 8, !tbaa !48
  %271 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %270, i64 1)
  %272 = extractvalue { i64, i1 } %271, 1
  br i1 %269, label %273, label %335

273:                                              ; preds = %263
  br i1 %272, label %143, label %274, !nosanitize !16

274:                                              ; preds = %273
  %275 = extractvalue { i64, i1 } %271, 0, !nosanitize !16
  %276 = load ptr, ptr %245, align 8, !tbaa !34
  store i64 %275, ptr %52, align 8, !tbaa !48
  %277 = getelementptr inbounds i8, ptr %276, i64 %270
  store i8 0, ptr %277, align 1, !tbaa !5
  %278 = load i64, ptr %52, align 8, !tbaa !48
  %279 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %278, i64 1), !nosanitize !16
  %280 = extractvalue { i64, i1 } %279, 1, !nosanitize !16
  br i1 %280, label %143, label %281, !nosanitize !16

281:                                              ; preds = %274
  %282 = extractvalue { i64, i1 } %279, 0, !nosanitize !16
  %283 = load ptr, ptr %245, align 8, !tbaa !34
  store i64 %282, ptr %52, align 8, !tbaa !48
  %284 = getelementptr inbounds i8, ptr %283, i64 %278
  store i8 0, ptr %284, align 1, !tbaa !5
  %285 = load i64, ptr %52, align 8, !tbaa !48
  %286 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %285, i64 1), !nosanitize !16
  %287 = extractvalue { i64, i1 } %286, 1, !nosanitize !16
  br i1 %287, label %143, label %288, !nosanitize !16

288:                                              ; preds = %281
  %289 = extractvalue { i64, i1 } %286, 0, !nosanitize !16
  %290 = load ptr, ptr %245, align 8, !tbaa !34
  store i64 %289, ptr %52, align 8, !tbaa !48
  %291 = getelementptr inbounds i8, ptr %290, i64 %285
  store i8 0, ptr %291, align 1, !tbaa !5
  %292 = load i64, ptr %52, align 8, !tbaa !48
  %293 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %292, i64 1), !nosanitize !16
  %294 = extractvalue { i64, i1 } %293, 1, !nosanitize !16
  br i1 %294, label %143, label %295, !nosanitize !16

295:                                              ; preds = %288
  %296 = extractvalue { i64, i1 } %293, 0, !nosanitize !16
  %297 = load ptr, ptr %245, align 8, !tbaa !34
  store i64 %296, ptr %52, align 8, !tbaa !48
  %298 = getelementptr inbounds i8, ptr %297, i64 %292
  store i8 0, ptr %298, align 1, !tbaa !5
  %299 = load i64, ptr %52, align 8, !tbaa !48
  %300 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %299, i64 1), !nosanitize !16
  %301 = extractvalue { i64, i1 } %300, 1, !nosanitize !16
  br i1 %301, label %143, label %302, !nosanitize !16

302:                                              ; preds = %295
  %303 = extractvalue { i64, i1 } %300, 0, !nosanitize !16
  %304 = load ptr, ptr %245, align 8, !tbaa !34
  store i64 %303, ptr %52, align 8, !tbaa !48
  %305 = getelementptr inbounds i8, ptr %304, i64 %299
  store i8 0, ptr %305, align 1, !tbaa !5
  %306 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 33
  %307 = load i32, ptr %306, align 4, !tbaa !39
  %308 = icmp eq i32 %307, 9
  br i1 %308, label %316, label %309

309:                                              ; preds = %302
  %310 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 34
  %311 = load i32, ptr %310, align 8, !tbaa !40
  %312 = icmp sgt i32 %311, 1
  %313 = icmp slt i32 %307, 2
  %314 = or i1 %313, %312
  %315 = select i1 %314, i8 4, i8 0
  br label %316

316:                                              ; preds = %302, %309
  %317 = phi i8 [ %315, %309 ], [ 2, %302 ]
  %318 = load i64, ptr %52, align 8, !tbaa !48
  %319 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %318, i64 1), !nosanitize !16
  %320 = extractvalue { i64, i1 } %319, 1, !nosanitize !16
  br i1 %320, label %143, label %321, !nosanitize !16

321:                                              ; preds = %316
  %322 = extractvalue { i64, i1 } %319, 0, !nosanitize !16
  %323 = load ptr, ptr %245, align 8, !tbaa !34
  store i64 %322, ptr %52, align 8, !tbaa !48
  %324 = getelementptr inbounds i8, ptr %323, i64 %318
  store i8 %317, ptr %324, align 1, !tbaa !5
  %325 = load i64, ptr %52, align 8, !tbaa !48
  %326 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %325, i64 1), !nosanitize !16
  %327 = extractvalue { i64, i1 } %326, 1, !nosanitize !16
  br i1 %327, label %143, label %328, !nosanitize !16

328:                                              ; preds = %321
  %329 = extractvalue { i64, i1 } %326, 0, !nosanitize !16
  %330 = load ptr, ptr %245, align 8, !tbaa !34
  store i64 %329, ptr %52, align 8, !tbaa !48
  %331 = getelementptr inbounds i8, ptr %330, i64 %325
  store i8 3, ptr %331, align 1, !tbaa !5
  store i32 113, ptr %20, align 8, !tbaa !22
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %332 = load i64, ptr %52, align 8, !tbaa !48
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %480, label %334

334:                                              ; preds = %328
  store i32 -1, ptr %50, align 4, !tbaa !51
  br label %1164

335:                                              ; preds = %263
  br i1 %272, label %143, label %336, !nosanitize !16

336:                                              ; preds = %335
  %337 = extractvalue { i64, i1 } %271, 0, !nosanitize !16
  %338 = load ptr, ptr %245, align 8, !tbaa !34
  %339 = getelementptr inbounds %struct.gz_header_s, ptr %268, i64 0, i32 9
  %340 = load ptr, ptr %339, align 8, !tbaa !91
  %341 = icmp eq ptr %340, null
  %342 = getelementptr inbounds %struct.gz_header_s, ptr %268, i64 0, i32 7
  %343 = load ptr, ptr %342, align 8, !tbaa !93
  %344 = icmp eq ptr %343, null
  %345 = getelementptr inbounds %struct.gz_header_s, ptr %268, i64 0, i32 4
  %346 = load ptr, ptr %345, align 8, !tbaa !94
  %347 = icmp eq ptr %346, null
  %348 = load i32, ptr %268, align 8, !tbaa !95
  %349 = icmp ne i32 %348, 0
  %350 = getelementptr inbounds %struct.gz_header_s, ptr %268, i64 0, i32 11
  %351 = load i32, ptr %350, align 4, !tbaa !96
  %352 = icmp eq i32 %351, 0
  %353 = select i1 %352, i8 0, i8 2
  %354 = zext i1 %349 to i8
  %355 = select i1 %347, i8 0, i8 4
  %356 = select i1 %344, i8 0, i8 8
  %357 = select i1 %341, i8 0, i8 16
  %358 = or disjoint i8 %356, %357
  %359 = or disjoint i8 %358, %355
  %360 = or disjoint i8 %359, %354
  %361 = or disjoint i8 %360, %353
  store i64 %337, ptr %52, align 8, !tbaa !48
  %362 = getelementptr inbounds i8, ptr %338, i64 %270
  store i8 %361, ptr %362, align 1, !tbaa !5
  %363 = load i64, ptr %52, align 8, !tbaa !48
  %364 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %363, i64 1), !nosanitize !16
  %365 = extractvalue { i64, i1 } %364, 1, !nosanitize !16
  br i1 %365, label %143, label %366, !nosanitize !16

366:                                              ; preds = %336
  %367 = extractvalue { i64, i1 } %364, 0, !nosanitize !16
  %368 = load ptr, ptr %245, align 8, !tbaa !34
  %369 = load ptr, ptr %267, align 8, !tbaa !82
  %370 = getelementptr inbounds %struct.gz_header_s, ptr %369, i64 0, i32 1
  %371 = load i64, ptr %370, align 8, !tbaa !97
  %372 = trunc i64 %371 to i8
  store i64 %367, ptr %52, align 8, !tbaa !48
  %373 = getelementptr inbounds i8, ptr %368, i64 %363
  store i8 %372, ptr %373, align 1, !tbaa !5
  %374 = load i64, ptr %52, align 8, !tbaa !48
  %375 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %374, i64 1), !nosanitize !16
  %376 = extractvalue { i64, i1 } %375, 1, !nosanitize !16
  br i1 %376, label %143, label %377, !nosanitize !16

377:                                              ; preds = %366
  %378 = extractvalue { i64, i1 } %375, 0, !nosanitize !16
  %379 = load ptr, ptr %245, align 8, !tbaa !34
  %380 = load ptr, ptr %267, align 8, !tbaa !82
  %381 = getelementptr inbounds %struct.gz_header_s, ptr %380, i64 0, i32 1
  %382 = load i64, ptr %381, align 8, !tbaa !97
  %383 = lshr i64 %382, 8
  %384 = trunc i64 %383 to i8
  store i64 %378, ptr %52, align 8, !tbaa !48
  %385 = getelementptr inbounds i8, ptr %379, i64 %374
  store i8 %384, ptr %385, align 1, !tbaa !5
  %386 = load i64, ptr %52, align 8, !tbaa !48
  %387 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %386, i64 1), !nosanitize !16
  %388 = extractvalue { i64, i1 } %387, 1, !nosanitize !16
  br i1 %388, label %143, label %389, !nosanitize !16

389:                                              ; preds = %377
  %390 = extractvalue { i64, i1 } %387, 0, !nosanitize !16
  %391 = load ptr, ptr %245, align 8, !tbaa !34
  %392 = load ptr, ptr %267, align 8, !tbaa !82
  %393 = getelementptr inbounds %struct.gz_header_s, ptr %392, i64 0, i32 1
  %394 = load i64, ptr %393, align 8, !tbaa !97
  %395 = lshr i64 %394, 16
  %396 = trunc i64 %395 to i8
  store i64 %390, ptr %52, align 8, !tbaa !48
  %397 = getelementptr inbounds i8, ptr %391, i64 %386
  store i8 %396, ptr %397, align 1, !tbaa !5
  %398 = load i64, ptr %52, align 8, !tbaa !48
  %399 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %398, i64 1), !nosanitize !16
  %400 = extractvalue { i64, i1 } %399, 1, !nosanitize !16
  br i1 %400, label %143, label %401, !nosanitize !16

401:                                              ; preds = %389
  %402 = extractvalue { i64, i1 } %399, 0, !nosanitize !16
  %403 = load ptr, ptr %245, align 8, !tbaa !34
  %404 = load ptr, ptr %267, align 8, !tbaa !82
  %405 = getelementptr inbounds %struct.gz_header_s, ptr %404, i64 0, i32 1
  %406 = load i64, ptr %405, align 8, !tbaa !97
  %407 = lshr i64 %406, 24
  %408 = trunc i64 %407 to i8
  store i64 %402, ptr %52, align 8, !tbaa !48
  %409 = getelementptr inbounds i8, ptr %403, i64 %398
  store i8 %408, ptr %409, align 1, !tbaa !5
  %410 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 33
  %411 = load i32, ptr %410, align 4, !tbaa !39
  %412 = icmp eq i32 %411, 9
  br i1 %412, label %420, label %413

413:                                              ; preds = %401
  %414 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 34
  %415 = load i32, ptr %414, align 8, !tbaa !40
  %416 = icmp sgt i32 %415, 1
  %417 = icmp slt i32 %411, 2
  %418 = or i1 %417, %416
  %419 = select i1 %418, i8 4, i8 0
  br label %420

420:                                              ; preds = %401, %413
  %421 = phi i8 [ %419, %413 ], [ 2, %401 ]
  %422 = load i64, ptr %52, align 8, !tbaa !48
  %423 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %422, i64 1), !nosanitize !16
  %424 = extractvalue { i64, i1 } %423, 1, !nosanitize !16
  br i1 %424, label %143, label %425, !nosanitize !16

425:                                              ; preds = %420
  %426 = extractvalue { i64, i1 } %423, 0, !nosanitize !16
  %427 = load ptr, ptr %245, align 8, !tbaa !34
  store i64 %426, ptr %52, align 8, !tbaa !48
  %428 = getelementptr inbounds i8, ptr %427, i64 %422
  store i8 %421, ptr %428, align 1, !tbaa !5
  %429 = load i64, ptr %52, align 8, !tbaa !48
  %430 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %429, i64 1), !nosanitize !16
  %431 = extractvalue { i64, i1 } %430, 1, !nosanitize !16
  br i1 %431, label %143, label %432, !nosanitize !16

432:                                              ; preds = %425
  %433 = extractvalue { i64, i1 } %430, 0, !nosanitize !16
  %434 = load ptr, ptr %245, align 8, !tbaa !34
  %435 = load ptr, ptr %267, align 8, !tbaa !82
  %436 = getelementptr inbounds %struct.gz_header_s, ptr %435, i64 0, i32 3
  %437 = load i32, ptr %436, align 4, !tbaa !98
  %438 = trunc i32 %437 to i8
  store i64 %433, ptr %52, align 8, !tbaa !48
  %439 = getelementptr inbounds i8, ptr %434, i64 %429
  store i8 %438, ptr %439, align 1, !tbaa !5
  %440 = load ptr, ptr %267, align 8, !tbaa !82
  %441 = getelementptr inbounds %struct.gz_header_s, ptr %440, i64 0, i32 4
  %442 = load ptr, ptr %441, align 8, !tbaa !94
  %443 = icmp eq ptr %442, null
  br i1 %443, label %468, label %444

444:                                              ; preds = %432
  %445 = load i64, ptr %52, align 8, !tbaa !48
  %446 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %445, i64 1), !nosanitize !16
  %447 = extractvalue { i64, i1 } %446, 1, !nosanitize !16
  br i1 %447, label %143, label %448, !nosanitize !16

448:                                              ; preds = %444
  %449 = extractvalue { i64, i1 } %446, 0, !nosanitize !16
  %450 = load ptr, ptr %245, align 8, !tbaa !34
  %451 = getelementptr inbounds %struct.gz_header_s, ptr %440, i64 0, i32 5
  %452 = load i32, ptr %451, align 8, !tbaa !99
  %453 = trunc i32 %452 to i8
  store i64 %449, ptr %52, align 8, !tbaa !48
  %454 = getelementptr inbounds i8, ptr %450, i64 %445
  store i8 %453, ptr %454, align 1, !tbaa !5
  %455 = load i64, ptr %52, align 8, !tbaa !48
  %456 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %455, i64 1), !nosanitize !16
  %457 = extractvalue { i64, i1 } %456, 1, !nosanitize !16
  br i1 %457, label %143, label %458, !nosanitize !16

458:                                              ; preds = %448
  %459 = extractvalue { i64, i1 } %456, 0, !nosanitize !16
  %460 = load ptr, ptr %245, align 8, !tbaa !34
  %461 = load ptr, ptr %267, align 8, !tbaa !82
  %462 = getelementptr inbounds %struct.gz_header_s, ptr %461, i64 0, i32 5
  %463 = load i32, ptr %462, align 8, !tbaa !99
  %464 = lshr i32 %463, 8
  %465 = trunc i32 %464 to i8
  store i64 %459, ptr %52, align 8, !tbaa !48
  %466 = getelementptr inbounds i8, ptr %460, i64 %455
  store i8 %465, ptr %466, align 1, !tbaa !5
  %467 = load ptr, ptr %267, align 8, !tbaa !82
  br label %468

468:                                              ; preds = %458, %432
  %469 = phi ptr [ %467, %458 ], [ %440, %432 ]
  %470 = getelementptr inbounds %struct.gz_header_s, ptr %469, i64 0, i32 11
  %471 = load i32, ptr %470, align 4, !tbaa !96
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %478, label %473

473:                                              ; preds = %468
  %474 = load i64, ptr %244, align 8, !tbaa !50
  %475 = load ptr, ptr %245, align 8, !tbaa !34
  %476 = load i64, ptr %52, align 8, !tbaa !48
  %477 = tail call i64 @crc32_z(i64 noundef %474, ptr noundef %475, i64 noundef %476) #10
  store i64 %477, ptr %244, align 8, !tbaa !50
  br label %478

478:                                              ; preds = %468, %473
  %479 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 8
  store i64 0, ptr %479, align 8, !tbaa !100
  store i32 69, ptr %20, align 8, !tbaa !22
  br label %484

480:                                              ; preds = %328
  %481 = load i32, ptr %20, align 8, !tbaa !22
  br label %482

482:                                              ; preds = %480, %239
  %483 = phi i32 [ %481, %480 ], [ %240, %239 ]
  switch i32 %483, label %953 [
    i32 69, label %484
    i32 73, label %689
    i32 91, label %800
    i32 103, label %910
  ]

484:                                              ; preds = %482, %478
  %485 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 7
  %486 = load ptr, ptr %485, align 8, !tbaa !82
  %487 = getelementptr inbounds %struct.gz_header_s, ptr %486, i64 0, i32 4
  %488 = load ptr, ptr %487, align 8, !tbaa !94
  %489 = icmp eq ptr %488, null
  br i1 %489, label %688, label %490

490:                                              ; preds = %484
  %491 = getelementptr inbounds %struct.gz_header_s, ptr %486, i64 0, i32 5
  %492 = load i32, ptr %491, align 8, !tbaa !99
  %493 = and i32 %492, 65535
  %494 = zext nneg i32 %493 to i64
  %495 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 8
  %496 = load i64, ptr %495, align 8, !tbaa !100
  %497 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %494, i64 %496), !nosanitize !16
  %498 = extractvalue { i64, i1 } %497, 1, !nosanitize !16
  br i1 %498, label %110, label %499, !nosanitize !16

499:                                              ; preds = %490
  %500 = load i64, ptr %52, align 8, !tbaa !48
  %501 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 3
  %502 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %503 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %504 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %505 = extractvalue { i64, i1 } %497, 0
  %506 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %500, i64 %505), !nosanitize !16
  %507 = extractvalue { i64, i1 } %506, 1, !nosanitize !16
  br i1 %507, label %143, label %508, !nosanitize !16

508:                                              ; preds = %499
  %509 = extractvalue { i64, i1 } %506, 0, !nosanitize !16
  %510 = load i64, ptr %501, align 8, !tbaa !35
  %511 = icmp ugt i64 %509, %510
  br i1 %511, label %512, label %662

512:                                              ; preds = %508
  %513 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %510, i64 %500), !nosanitize !16
  %514 = extractvalue { i64, i1 } %513, 0, !nosanitize !16
  %515 = extractvalue { i64, i1 } %513, 1, !nosanitize !16
  br i1 %515, label %110, label %516, !nosanitize !16

516:                                              ; preds = %512
  %517 = load ptr, ptr %502, align 8, !tbaa !34
  %518 = getelementptr inbounds i8, ptr %517, i64 %500
  %519 = getelementptr inbounds i8, ptr %488, i64 %496
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %518, ptr nonnull align 1 %519, i64 %514, i1 false)
  %520 = load i64, ptr %501, align 8, !tbaa !35
  store i64 %520, ptr %52, align 8, !tbaa !48
  %521 = load ptr, ptr %485, align 8, !tbaa !82
  %522 = getelementptr inbounds %struct.gz_header_s, ptr %521, i64 0, i32 11
  %523 = load i32, ptr %522, align 4, !tbaa !96
  %524 = icmp ne i32 %523, 0
  %525 = icmp ugt i64 %520, %500
  %526 = select i1 %524, i1 %525, i1 false
  br i1 %526, label %527, label %533

527:                                              ; preds = %516
  %528 = sub nuw i64 %520, %500
  %529 = load ptr, ptr %502, align 8, !tbaa !34
  %530 = getelementptr inbounds i8, ptr %529, i64 %500
  %531 = load i64, ptr %503, align 8, !tbaa !50
  %532 = tail call i64 @crc32_z(i64 noundef %531, ptr noundef %530, i64 noundef %528) #10
  store i64 %532, ptr %503, align 8, !tbaa !50
  br label %533

533:                                              ; preds = %527, %516
  %534 = load i64, ptr %495, align 8, !tbaa !100
  %535 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %534, i64 %514), !nosanitize !16
  %536 = extractvalue { i64, i1 } %535, 1, !nosanitize !16
  br i1 %536, label %143, label %537, !nosanitize !16

537:                                              ; preds = %533
  %538 = extractvalue { i64, i1 } %535, 0, !nosanitize !16
  store i64 %538, ptr %495, align 8, !tbaa !100
  %539 = load ptr, ptr %13, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %539) #10
  %540 = getelementptr inbounds %struct.internal_state, ptr %539, i64 0, i32 5
  %541 = load i64, ptr %540, align 8, !tbaa !48
  %542 = load i32, ptr %43, align 8, !tbaa !89
  %543 = zext i32 %542 to i64
  %544 = icmp ugt i64 %541, %543
  %545 = trunc i64 %541 to i32
  %546 = select i1 %544, i32 %542, i32 %545
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %576, label %548

548:                                              ; preds = %537
  %549 = load ptr, ptr %25, align 8, !tbaa !88
  %550 = getelementptr inbounds %struct.internal_state, ptr %539, i64 0, i32 4
  %551 = load ptr, ptr %550, align 8, !tbaa !49
  %552 = zext i32 %546 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %549, ptr align 1 %551, i64 %552, i1 false)
  %553 = load ptr, ptr %25, align 8, !tbaa !88
  %554 = getelementptr inbounds i8, ptr %553, i64 %552
  store ptr %554, ptr %25, align 8, !tbaa !88
  %555 = load ptr, ptr %550, align 8, !tbaa !49
  %556 = getelementptr inbounds i8, ptr %555, i64 %552
  store ptr %556, ptr %550, align 8, !tbaa !49
  %557 = load i64, ptr %504, align 8, !tbaa !90
  %558 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %557, i64 %552), !nosanitize !16
  %559 = extractvalue { i64, i1 } %558, 1, !nosanitize !16
  br i1 %559, label %632, label %560, !nosanitize !16

560:                                              ; preds = %548
  %561 = extractvalue { i64, i1 } %558, 0, !nosanitize !16
  store i64 %561, ptr %504, align 8, !tbaa !90
  %562 = load i32, ptr %43, align 8, !tbaa !89
  %563 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %562, i32 %546), !nosanitize !16
  %564 = extractvalue { i32, i1 } %563, 1, !nosanitize !16
  br i1 %564, label %638, label %565, !nosanitize !16

565:                                              ; preds = %560
  %566 = extractvalue { i32, i1 } %563, 0, !nosanitize !16
  store i32 %566, ptr %43, align 8, !tbaa !89
  %567 = load i64, ptr %540, align 8, !tbaa !48
  %568 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %567, i64 %552), !nosanitize !16
  %569 = extractvalue { i64, i1 } %568, 1, !nosanitize !16
  br i1 %569, label %638, label %570, !nosanitize !16

570:                                              ; preds = %565
  %571 = extractvalue { i64, i1 } %568, 0, !nosanitize !16
  store i64 %571, ptr %540, align 8, !tbaa !48
  %572 = icmp eq i64 %571, 0
  br i1 %572, label %573, label %576

573:                                              ; preds = %570
  %574 = getelementptr inbounds %struct.internal_state, ptr %539, i64 0, i32 2
  %575 = load ptr, ptr %574, align 8, !tbaa !34
  store ptr %575, ptr %550, align 8, !tbaa !49
  br label %576

576:                                              ; preds = %573, %570, %537
  %577 = load i64, ptr %52, align 8, !tbaa !48
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %579, label %653

579:                                              ; preds = %576
  %580 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %505, i64 %514), !nosanitize !16
  %581 = extractvalue { i64, i1 } %580, 1, !nosanitize !16
  br i1 %581, label %110, label %582, !nosanitize !16

582:                                              ; preds = %579, %654
  %583 = phi { i64, i1 } [ %655, %654 ], [ %580, %579 ]
  %584 = extractvalue { i64, i1 } %583, 0
  %585 = load i64, ptr %501, align 8, !tbaa !35
  %586 = icmp ugt i64 %584, %585
  br i1 %586, label %587, label %657

587:                                              ; preds = %582
  %588 = load ptr, ptr %502, align 8, !tbaa !34
  %589 = load ptr, ptr %485, align 8, !tbaa !82
  %590 = getelementptr inbounds %struct.gz_header_s, ptr %589, i64 0, i32 4
  %591 = load ptr, ptr %590, align 8, !tbaa !94
  %592 = load i64, ptr %495, align 8, !tbaa !100
  %593 = getelementptr inbounds i8, ptr %591, i64 %592
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %588, ptr align 1 %593, i64 %585, i1 false)
  %594 = load i64, ptr %501, align 8, !tbaa !35
  store i64 %594, ptr %52, align 8, !tbaa !48
  %595 = load ptr, ptr %485, align 8, !tbaa !82
  %596 = getelementptr inbounds %struct.gz_header_s, ptr %595, i64 0, i32 11
  %597 = load i32, ptr %596, align 4, !tbaa !96
  %598 = icmp ne i32 %597, 0
  %599 = icmp ne i64 %594, 0
  %600 = select i1 %598, i1 %599, i1 false
  br i1 %600, label %601, label %605

601:                                              ; preds = %587
  %602 = load ptr, ptr %502, align 8, !tbaa !34
  %603 = load i64, ptr %503, align 8, !tbaa !50
  %604 = tail call i64 @crc32_z(i64 noundef %603, ptr noundef %602, i64 noundef %594) #10
  store i64 %604, ptr %503, align 8, !tbaa !50
  br label %605

605:                                              ; preds = %601, %587
  %606 = load i64, ptr %495, align 8, !tbaa !100
  %607 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %606, i64 %585), !nosanitize !16
  %608 = extractvalue { i64, i1 } %607, 1, !nosanitize !16
  br i1 %608, label %143, label %609, !nosanitize !16

609:                                              ; preds = %605
  %610 = extractvalue { i64, i1 } %607, 0, !nosanitize !16
  store i64 %610, ptr %495, align 8, !tbaa !100
  %611 = load ptr, ptr %13, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %611) #10
  %612 = getelementptr inbounds %struct.internal_state, ptr %611, i64 0, i32 5
  %613 = load i64, ptr %612, align 8, !tbaa !48
  %614 = load i32, ptr %43, align 8, !tbaa !89
  %615 = zext i32 %614 to i64
  %616 = icmp ugt i64 %613, %615
  %617 = trunc i64 %613 to i32
  %618 = select i1 %616, i32 %614, i32 %617
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %650, label %620

620:                                              ; preds = %609
  %621 = load ptr, ptr %25, align 8, !tbaa !88
  %622 = getelementptr inbounds %struct.internal_state, ptr %611, i64 0, i32 4
  %623 = load ptr, ptr %622, align 8, !tbaa !49
  %624 = zext i32 %618 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %621, ptr align 1 %623, i64 %624, i1 false)
  %625 = load ptr, ptr %25, align 8, !tbaa !88
  %626 = getelementptr inbounds i8, ptr %625, i64 %624
  store ptr %626, ptr %25, align 8, !tbaa !88
  %627 = load ptr, ptr %622, align 8, !tbaa !49
  %628 = getelementptr inbounds i8, ptr %627, i64 %624
  store ptr %628, ptr %622, align 8, !tbaa !49
  %629 = load i64, ptr %504, align 8, !tbaa !90
  %630 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %629, i64 %624), !nosanitize !16
  %631 = extractvalue { i64, i1 } %630, 1, !nosanitize !16
  br i1 %631, label %632, label %633, !nosanitize !16

632:                                              ; preds = %620, %548
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

633:                                              ; preds = %620
  %634 = extractvalue { i64, i1 } %630, 0, !nosanitize !16
  store i64 %634, ptr %504, align 8, !tbaa !90
  %635 = load i32, ptr %43, align 8, !tbaa !89
  %636 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %635, i32 %618), !nosanitize !16
  %637 = extractvalue { i32, i1 } %636, 1, !nosanitize !16
  br i1 %637, label %638, label %639, !nosanitize !16

638:                                              ; preds = %639, %633, %565, %560
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

639:                                              ; preds = %633
  %640 = extractvalue { i32, i1 } %636, 0, !nosanitize !16
  store i32 %640, ptr %43, align 8, !tbaa !89
  %641 = load i64, ptr %612, align 8, !tbaa !48
  %642 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %641, i64 %624), !nosanitize !16
  %643 = extractvalue { i64, i1 } %642, 1, !nosanitize !16
  br i1 %643, label %638, label %644, !nosanitize !16

644:                                              ; preds = %639
  %645 = extractvalue { i64, i1 } %642, 0, !nosanitize !16
  store i64 %645, ptr %612, align 8, !tbaa !48
  %646 = icmp eq i64 %645, 0
  br i1 %646, label %647, label %650

647:                                              ; preds = %644
  %648 = getelementptr inbounds %struct.internal_state, ptr %611, i64 0, i32 2
  %649 = load ptr, ptr %648, align 8, !tbaa !34
  store ptr %649, ptr %622, align 8, !tbaa !49
  br label %650

650:                                              ; preds = %609, %644, %647
  %651 = load i64, ptr %52, align 8, !tbaa !48
  %652 = icmp eq i64 %651, 0
  br i1 %652, label %654, label %653

653:                                              ; preds = %650, %576
  store i32 -1, ptr %50, align 4, !tbaa !51
  br label %1164

654:                                              ; preds = %650
  %655 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %584, i64 %585), !nosanitize !16
  %656 = extractvalue { i64, i1 } %655, 1, !nosanitize !16
  br i1 %656, label %110, label %582, !llvm.loop !101, !nosanitize !16

657:                                              ; preds = %582
  %658 = load ptr, ptr %485, align 8, !tbaa !82
  %659 = getelementptr inbounds %struct.gz_header_s, ptr %658, i64 0, i32 4
  %660 = load ptr, ptr %659, align 8, !tbaa !94
  %661 = load i64, ptr %495, align 8, !tbaa !100
  br label %662

662:                                              ; preds = %657, %508
  %663 = phi i64 [ %496, %508 ], [ %661, %657 ]
  %664 = phi ptr [ %488, %508 ], [ %660, %657 ]
  %665 = phi i64 [ %500, %508 ], [ 0, %657 ]
  %666 = phi i64 [ %505, %508 ], [ %584, %657 ]
  %667 = load ptr, ptr %502, align 8, !tbaa !34
  %668 = getelementptr inbounds i8, ptr %667, i64 %665
  %669 = getelementptr inbounds i8, ptr %664, i64 %663
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %668, ptr align 1 %669, i64 %666, i1 false)
  %670 = load i64, ptr %52, align 8, !tbaa !48
  %671 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %670, i64 %666), !nosanitize !16
  %672 = extractvalue { i64, i1 } %671, 0, !nosanitize !16
  %673 = extractvalue { i64, i1 } %671, 1, !nosanitize !16
  br i1 %673, label %143, label %674, !nosanitize !16

674:                                              ; preds = %662
  store i64 %672, ptr %52, align 8, !tbaa !48
  %675 = load ptr, ptr %485, align 8, !tbaa !82
  %676 = getelementptr inbounds %struct.gz_header_s, ptr %675, i64 0, i32 11
  %677 = load i32, ptr %676, align 4, !tbaa !96
  %678 = icmp ne i32 %677, 0
  %679 = icmp ugt i64 %672, %665
  %680 = select i1 %678, i1 %679, i1 false
  br i1 %680, label %681, label %687

681:                                              ; preds = %674
  %682 = sub nuw i64 %672, %665
  %683 = load ptr, ptr %502, align 8, !tbaa !34
  %684 = getelementptr inbounds i8, ptr %683, i64 %665
  %685 = load i64, ptr %503, align 8, !tbaa !50
  %686 = tail call i64 @crc32_z(i64 noundef %685, ptr noundef %684, i64 noundef %682) #10
  store i64 %686, ptr %503, align 8, !tbaa !50
  br label %687

687:                                              ; preds = %674, %681
  store i64 0, ptr %495, align 8, !tbaa !100
  br label %688

688:                                              ; preds = %484, %687
  store i32 73, ptr %20, align 8, !tbaa !22
  br label %689

689:                                              ; preds = %482, %688
  %690 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 7
  %691 = load ptr, ptr %690, align 8, !tbaa !82
  %692 = getelementptr inbounds %struct.gz_header_s, ptr %691, i64 0, i32 7
  %693 = load ptr, ptr %692, align 8, !tbaa !93
  %694 = icmp eq ptr %693, null
  br i1 %694, label %799, label %695

695:                                              ; preds = %689
  %696 = load i64, ptr %52, align 8, !tbaa !48
  %697 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 3
  %698 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %699 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %700 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %701 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 8
  br label %702

702:                                              ; preds = %777, %695
  %703 = phi i64 [ %696, %695 ], [ %766, %777 ]
  %704 = load i64, ptr %52, align 8, !tbaa !48
  %705 = load i64, ptr %697, align 8, !tbaa !35
  %706 = icmp eq i64 %704, %705
  br i1 %706, label %707, label %764

707:                                              ; preds = %702
  %708 = load ptr, ptr %690, align 8, !tbaa !82
  %709 = getelementptr inbounds %struct.gz_header_s, ptr %708, i64 0, i32 11
  %710 = load i32, ptr %709, align 4, !tbaa !96
  %711 = icmp ne i32 %710, 0
  %712 = icmp ugt i64 %704, %703
  %713 = select i1 %711, i1 %712, i1 false
  br i1 %713, label %714, label %720

714:                                              ; preds = %707
  %715 = sub nuw i64 %704, %703
  %716 = load ptr, ptr %698, align 8, !tbaa !34
  %717 = getelementptr inbounds i8, ptr %716, i64 %703
  %718 = load i64, ptr %699, align 8, !tbaa !50
  %719 = tail call i64 @crc32_z(i64 noundef %718, ptr noundef %717, i64 noundef %715) #10
  store i64 %719, ptr %699, align 8, !tbaa !50
  br label %720

720:                                              ; preds = %714, %707
  %721 = load ptr, ptr %13, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %721) #10
  %722 = getelementptr inbounds %struct.internal_state, ptr %721, i64 0, i32 5
  %723 = load i64, ptr %722, align 8, !tbaa !48
  %724 = load i32, ptr %43, align 8, !tbaa !89
  %725 = zext i32 %724 to i64
  %726 = icmp ugt i64 %723, %725
  %727 = trunc i64 %723 to i32
  %728 = select i1 %726, i32 %724, i32 %727
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %760, label %730

730:                                              ; preds = %720
  %731 = load ptr, ptr %25, align 8, !tbaa !88
  %732 = getelementptr inbounds %struct.internal_state, ptr %721, i64 0, i32 4
  %733 = load ptr, ptr %732, align 8, !tbaa !49
  %734 = zext i32 %728 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %731, ptr align 1 %733, i64 %734, i1 false)
  %735 = load ptr, ptr %25, align 8, !tbaa !88
  %736 = getelementptr inbounds i8, ptr %735, i64 %734
  store ptr %736, ptr %25, align 8, !tbaa !88
  %737 = load ptr, ptr %732, align 8, !tbaa !49
  %738 = getelementptr inbounds i8, ptr %737, i64 %734
  store ptr %738, ptr %732, align 8, !tbaa !49
  %739 = load i64, ptr %700, align 8, !tbaa !90
  %740 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %739, i64 %734), !nosanitize !16
  %741 = extractvalue { i64, i1 } %740, 1, !nosanitize !16
  br i1 %741, label %742, label %743, !nosanitize !16

742:                                              ; preds = %730
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

743:                                              ; preds = %730
  %744 = extractvalue { i64, i1 } %740, 0, !nosanitize !16
  store i64 %744, ptr %700, align 8, !tbaa !90
  %745 = load i32, ptr %43, align 8, !tbaa !89
  %746 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %745, i32 %728), !nosanitize !16
  %747 = extractvalue { i32, i1 } %746, 1, !nosanitize !16
  br i1 %747, label %748, label %749, !nosanitize !16

748:                                              ; preds = %749, %743
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

749:                                              ; preds = %743
  %750 = extractvalue { i32, i1 } %746, 0, !nosanitize !16
  store i32 %750, ptr %43, align 8, !tbaa !89
  %751 = load i64, ptr %722, align 8, !tbaa !48
  %752 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %751, i64 %734), !nosanitize !16
  %753 = extractvalue { i64, i1 } %752, 1, !nosanitize !16
  br i1 %753, label %748, label %754, !nosanitize !16

754:                                              ; preds = %749
  %755 = extractvalue { i64, i1 } %752, 0, !nosanitize !16
  store i64 %755, ptr %722, align 8, !tbaa !48
  %756 = icmp eq i64 %755, 0
  br i1 %756, label %757, label %760

757:                                              ; preds = %754
  %758 = getelementptr inbounds %struct.internal_state, ptr %721, i64 0, i32 2
  %759 = load ptr, ptr %758, align 8, !tbaa !34
  store ptr %759, ptr %732, align 8, !tbaa !49
  br label %760

760:                                              ; preds = %720, %754, %757
  %761 = load i64, ptr %52, align 8, !tbaa !48
  %762 = icmp eq i64 %761, 0
  br i1 %762, label %764, label %763

763:                                              ; preds = %760
  store i32 -1, ptr %50, align 4, !tbaa !51
  br label %1164

764:                                              ; preds = %760, %702
  %765 = phi i64 [ %704, %702 ], [ 0, %760 ]
  %766 = phi i64 [ %703, %702 ], [ 0, %760 ]
  %767 = load i64, ptr %701, align 8, !tbaa !100
  %768 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %767, i64 1), !nosanitize !16
  %769 = extractvalue { i64, i1 } %768, 1, !nosanitize !16
  br i1 %769, label %143, label %770, !nosanitize !16

770:                                              ; preds = %764
  %771 = extractvalue { i64, i1 } %768, 0, !nosanitize !16
  %772 = load ptr, ptr %690, align 8, !tbaa !82
  %773 = getelementptr inbounds %struct.gz_header_s, ptr %772, i64 0, i32 7
  %774 = load ptr, ptr %773, align 8, !tbaa !93
  store i64 %771, ptr %701, align 8, !tbaa !100
  %775 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %765, i64 1), !nosanitize !16
  %776 = extractvalue { i64, i1 } %775, 1, !nosanitize !16
  br i1 %776, label %143, label %777, !nosanitize !16

777:                                              ; preds = %770
  %778 = extractvalue { i64, i1 } %775, 0, !nosanitize !16
  %779 = load ptr, ptr %698, align 8, !tbaa !34
  %780 = getelementptr inbounds i8, ptr %774, i64 %767
  %781 = load i8, ptr %780, align 1, !tbaa !5
  store i64 %778, ptr %52, align 8, !tbaa !48
  %782 = getelementptr inbounds i8, ptr %779, i64 %765
  store i8 %781, ptr %782, align 1, !tbaa !5
  %783 = icmp eq i8 %781, 0
  br i1 %783, label %784, label %702, !llvm.loop !103

784:                                              ; preds = %777
  %785 = load ptr, ptr %690, align 8, !tbaa !82
  %786 = getelementptr inbounds %struct.gz_header_s, ptr %785, i64 0, i32 11
  %787 = load i32, ptr %786, align 4, !tbaa !96
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %798, label %789

789:                                              ; preds = %784
  %790 = load i64, ptr %52, align 8, !tbaa !48
  %791 = icmp ugt i64 %790, %766
  br i1 %791, label %792, label %798

792:                                              ; preds = %789
  %793 = sub nuw i64 %790, %766
  %794 = load ptr, ptr %698, align 8, !tbaa !34
  %795 = getelementptr inbounds i8, ptr %794, i64 %766
  %796 = load i64, ptr %699, align 8, !tbaa !50
  %797 = tail call i64 @crc32_z(i64 noundef %796, ptr noundef %795, i64 noundef %793) #10
  store i64 %797, ptr %699, align 8, !tbaa !50
  br label %798

798:                                              ; preds = %792, %789, %784
  store i64 0, ptr %701, align 8, !tbaa !100
  br label %799

799:                                              ; preds = %689, %798
  store i32 91, ptr %20, align 8, !tbaa !22
  br label %800

800:                                              ; preds = %482, %799
  %801 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 7
  %802 = load ptr, ptr %801, align 8, !tbaa !82
  %803 = getelementptr inbounds %struct.gz_header_s, ptr %802, i64 0, i32 9
  %804 = load ptr, ptr %803, align 8, !tbaa !91
  %805 = icmp eq ptr %804, null
  br i1 %805, label %909, label %806

806:                                              ; preds = %800
  %807 = load i64, ptr %52, align 8, !tbaa !48
  %808 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 3
  %809 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %810 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %811 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %812 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 8
  br label %813

813:                                              ; preds = %888, %806
  %814 = phi i64 [ %807, %806 ], [ %877, %888 ]
  %815 = load i64, ptr %52, align 8, !tbaa !48
  %816 = load i64, ptr %808, align 8, !tbaa !35
  %817 = icmp eq i64 %815, %816
  br i1 %817, label %818, label %875

818:                                              ; preds = %813
  %819 = load ptr, ptr %801, align 8, !tbaa !82
  %820 = getelementptr inbounds %struct.gz_header_s, ptr %819, i64 0, i32 11
  %821 = load i32, ptr %820, align 4, !tbaa !96
  %822 = icmp ne i32 %821, 0
  %823 = icmp ugt i64 %815, %814
  %824 = select i1 %822, i1 %823, i1 false
  br i1 %824, label %825, label %831

825:                                              ; preds = %818
  %826 = sub nuw i64 %815, %814
  %827 = load ptr, ptr %809, align 8, !tbaa !34
  %828 = getelementptr inbounds i8, ptr %827, i64 %814
  %829 = load i64, ptr %810, align 8, !tbaa !50
  %830 = tail call i64 @crc32_z(i64 noundef %829, ptr noundef %828, i64 noundef %826) #10
  store i64 %830, ptr %810, align 8, !tbaa !50
  br label %831

831:                                              ; preds = %825, %818
  %832 = load ptr, ptr %13, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %832) #10
  %833 = getelementptr inbounds %struct.internal_state, ptr %832, i64 0, i32 5
  %834 = load i64, ptr %833, align 8, !tbaa !48
  %835 = load i32, ptr %43, align 8, !tbaa !89
  %836 = zext i32 %835 to i64
  %837 = icmp ugt i64 %834, %836
  %838 = trunc i64 %834 to i32
  %839 = select i1 %837, i32 %835, i32 %838
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %871, label %841

841:                                              ; preds = %831
  %842 = load ptr, ptr %25, align 8, !tbaa !88
  %843 = getelementptr inbounds %struct.internal_state, ptr %832, i64 0, i32 4
  %844 = load ptr, ptr %843, align 8, !tbaa !49
  %845 = zext i32 %839 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %842, ptr align 1 %844, i64 %845, i1 false)
  %846 = load ptr, ptr %25, align 8, !tbaa !88
  %847 = getelementptr inbounds i8, ptr %846, i64 %845
  store ptr %847, ptr %25, align 8, !tbaa !88
  %848 = load ptr, ptr %843, align 8, !tbaa !49
  %849 = getelementptr inbounds i8, ptr %848, i64 %845
  store ptr %849, ptr %843, align 8, !tbaa !49
  %850 = load i64, ptr %811, align 8, !tbaa !90
  %851 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %850, i64 %845), !nosanitize !16
  %852 = extractvalue { i64, i1 } %851, 1, !nosanitize !16
  br i1 %852, label %853, label %854, !nosanitize !16

853:                                              ; preds = %841
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

854:                                              ; preds = %841
  %855 = extractvalue { i64, i1 } %851, 0, !nosanitize !16
  store i64 %855, ptr %811, align 8, !tbaa !90
  %856 = load i32, ptr %43, align 8, !tbaa !89
  %857 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %856, i32 %839), !nosanitize !16
  %858 = extractvalue { i32, i1 } %857, 1, !nosanitize !16
  br i1 %858, label %859, label %860, !nosanitize !16

859:                                              ; preds = %860, %854
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

860:                                              ; preds = %854
  %861 = extractvalue { i32, i1 } %857, 0, !nosanitize !16
  store i32 %861, ptr %43, align 8, !tbaa !89
  %862 = load i64, ptr %833, align 8, !tbaa !48
  %863 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %862, i64 %845), !nosanitize !16
  %864 = extractvalue { i64, i1 } %863, 1, !nosanitize !16
  br i1 %864, label %859, label %865, !nosanitize !16

865:                                              ; preds = %860
  %866 = extractvalue { i64, i1 } %863, 0, !nosanitize !16
  store i64 %866, ptr %833, align 8, !tbaa !48
  %867 = icmp eq i64 %866, 0
  br i1 %867, label %868, label %871

868:                                              ; preds = %865
  %869 = getelementptr inbounds %struct.internal_state, ptr %832, i64 0, i32 2
  %870 = load ptr, ptr %869, align 8, !tbaa !34
  store ptr %870, ptr %843, align 8, !tbaa !49
  br label %871

871:                                              ; preds = %831, %865, %868
  %872 = load i64, ptr %52, align 8, !tbaa !48
  %873 = icmp eq i64 %872, 0
  br i1 %873, label %875, label %874

874:                                              ; preds = %871
  store i32 -1, ptr %50, align 4, !tbaa !51
  br label %1164

875:                                              ; preds = %871, %813
  %876 = phi i64 [ %815, %813 ], [ 0, %871 ]
  %877 = phi i64 [ %814, %813 ], [ 0, %871 ]
  %878 = load i64, ptr %812, align 8, !tbaa !100
  %879 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %878, i64 1), !nosanitize !16
  %880 = extractvalue { i64, i1 } %879, 1, !nosanitize !16
  br i1 %880, label %143, label %881, !nosanitize !16

881:                                              ; preds = %875
  %882 = extractvalue { i64, i1 } %879, 0, !nosanitize !16
  %883 = load ptr, ptr %801, align 8, !tbaa !82
  %884 = getelementptr inbounds %struct.gz_header_s, ptr %883, i64 0, i32 9
  %885 = load ptr, ptr %884, align 8, !tbaa !91
  store i64 %882, ptr %812, align 8, !tbaa !100
  %886 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %876, i64 1), !nosanitize !16
  %887 = extractvalue { i64, i1 } %886, 1, !nosanitize !16
  br i1 %887, label %143, label %888, !nosanitize !16

888:                                              ; preds = %881
  %889 = extractvalue { i64, i1 } %886, 0, !nosanitize !16
  %890 = load ptr, ptr %809, align 8, !tbaa !34
  %891 = getelementptr inbounds i8, ptr %885, i64 %878
  %892 = load i8, ptr %891, align 1, !tbaa !5
  store i64 %889, ptr %52, align 8, !tbaa !48
  %893 = getelementptr inbounds i8, ptr %890, i64 %876
  store i8 %892, ptr %893, align 1, !tbaa !5
  %894 = icmp eq i8 %892, 0
  br i1 %894, label %895, label %813, !llvm.loop !104

895:                                              ; preds = %888
  %896 = load ptr, ptr %801, align 8, !tbaa !82
  %897 = getelementptr inbounds %struct.gz_header_s, ptr %896, i64 0, i32 11
  %898 = load i32, ptr %897, align 4, !tbaa !96
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %909, label %900

900:                                              ; preds = %895
  %901 = load i64, ptr %52, align 8, !tbaa !48
  %902 = icmp ugt i64 %901, %877
  br i1 %902, label %903, label %909

903:                                              ; preds = %900
  %904 = sub nuw i64 %901, %877
  %905 = load ptr, ptr %809, align 8, !tbaa !34
  %906 = getelementptr inbounds i8, ptr %905, i64 %877
  %907 = load i64, ptr %810, align 8, !tbaa !50
  %908 = tail call i64 @crc32_z(i64 noundef %907, ptr noundef %906, i64 noundef %904) #10
  store i64 %908, ptr %810, align 8, !tbaa !50
  br label %909

909:                                              ; preds = %800, %895, %900, %903
  store i32 103, ptr %20, align 8, !tbaa !22
  br label %910

910:                                              ; preds = %482, %909
  %911 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 7
  %912 = load ptr, ptr %911, align 8, !tbaa !82
  %913 = getelementptr inbounds %struct.gz_header_s, ptr %912, i64 0, i32 11
  %914 = load i32, ptr %913, align 4, !tbaa !96
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %949, label %916

916:                                              ; preds = %910
  %917 = load i64, ptr %52, align 8, !tbaa !48
  %918 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %917, i64 2), !nosanitize !16
  %919 = extractvalue { i64, i1 } %918, 1, !nosanitize !16
  br i1 %919, label %143, label %920, !nosanitize !16

920:                                              ; preds = %916
  %921 = extractvalue { i64, i1 } %918, 0, !nosanitize !16
  %922 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 3
  %923 = load i64, ptr %922, align 8, !tbaa !35
  %924 = icmp ugt i64 %921, %923
  br i1 %924, label %925, label %929

925:                                              ; preds = %920
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %926 = load i64, ptr %52, align 8, !tbaa !48
  %927 = icmp eq i64 %926, 0
  br i1 %927, label %929, label %928

928:                                              ; preds = %925
  store i32 -1, ptr %50, align 4, !tbaa !51
  br label %1164

929:                                              ; preds = %925, %920
  %930 = phi i64 [ 0, %925 ], [ %917, %920 ]
  %931 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %932 = add nuw i64 %930, 1
  %933 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %934 = load ptr, ptr %933, align 8, !tbaa !34
  %935 = load i64, ptr %931, align 8, !tbaa !50
  %936 = trunc i64 %935 to i8
  store i64 %932, ptr %52, align 8, !tbaa !48
  %937 = getelementptr inbounds i8, ptr %934, i64 %930
  store i8 %936, ptr %937, align 1, !tbaa !5
  %938 = load i64, ptr %52, align 8, !tbaa !48
  %939 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %938, i64 1), !nosanitize !16
  %940 = extractvalue { i64, i1 } %939, 1, !nosanitize !16
  br i1 %940, label %143, label %941, !nosanitize !16

941:                                              ; preds = %929
  %942 = extractvalue { i64, i1 } %939, 0, !nosanitize !16
  %943 = load ptr, ptr %933, align 8, !tbaa !34
  %944 = load i64, ptr %931, align 8, !tbaa !50
  %945 = lshr i64 %944, 8
  %946 = trunc i64 %945 to i8
  store i64 %942, ptr %52, align 8, !tbaa !48
  %947 = getelementptr inbounds i8, ptr %943, i64 %938
  store i8 %946, ptr %947, align 1, !tbaa !5
  %948 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %948, ptr %931, align 8, !tbaa !50
  br label %949

949:                                              ; preds = %941, %910
  store i32 113, ptr %20, align 8, !tbaa !22
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %950 = load i64, ptr %52, align 8, !tbaa !48
  %951 = icmp eq i64 %950, 0
  br i1 %951, label %953, label %952

952:                                              ; preds = %949
  store i32 -1, ptr %50, align 4, !tbaa !51
  br label %1164

953:                                              ; preds = %482, %137, %949
  %954 = load i32, ptr %29, align 8, !tbaa !72
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %956, label %965

956:                                              ; preds = %127, %953
  %957 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 29
  %958 = load i32, ptr %957, align 4, !tbaa !66
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %960, label %965

960:                                              ; preds = %956
  %961 = icmp eq i32 %1, 0
  br i1 %961, label %1164, label %962

962:                                              ; preds = %960
  %963 = load i32, ptr %20, align 8, !tbaa !22
  %964 = icmp eq i32 %963, 666
  br i1 %964, label %1025, label %965

965:                                              ; preds = %962, %956, %953
  %966 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 33
  %967 = load i32, ptr %966, align 4, !tbaa !39
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %969, label %971

969:                                              ; preds = %965
  %970 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1), !range !105
  br label %983

971:                                              ; preds = %965
  %972 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 34
  %973 = load i32, ptr %972, align 8, !tbaa !40
  switch i32 %973, label %978 [
    i32 2, label %974
    i32 3, label %976
  ]

974:                                              ; preds = %971
  %975 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1), !range !105
  br label %983

976:                                              ; preds = %971
  %977 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1), !range !105
  br label %983

978:                                              ; preds = %971
  %979 = sext i32 %967 to i64
  %980 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %979, i32 4
  %981 = load ptr, ptr %980, align 8, !tbaa !87
  %982 = tail call i32 %981(ptr noundef nonnull %14, i32 noundef %1) #10
  br label %983

983:                                              ; preds = %974, %978, %976, %969
  %984 = phi i32 [ %970, %969 ], [ %975, %974 ], [ %977, %976 ], [ %982, %978 ]
  %985 = and i32 %984, -2
  %986 = icmp eq i32 %985, 2
  br i1 %986, label %987, label %988

987:                                              ; preds = %983
  store i32 666, ptr %20, align 8, !tbaa !22
  br label %988

988:                                              ; preds = %983, %987
  %989 = and i32 %984, -3
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %991, label %995

991:                                              ; preds = %988
  %992 = load i32, ptr %43, align 8, !tbaa !89
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %994, label %1164

994:                                              ; preds = %991
  store i32 -1, ptr %50, align 4, !tbaa !51
  br label %1164

995:                                              ; preds = %988
  %996 = icmp eq i32 %984, 1
  br i1 %996, label %997, label %1025

997:                                              ; preds = %995
  switch i32 %1, label %999 [
    i32 1, label %998
    i32 5, label %1021
  ]

998:                                              ; preds = %997
  tail call void @_tr_align(ptr noundef nonnull %14) #10
  br label %1021

999:                                              ; preds = %997
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #10
  %1000 = icmp eq i32 %1, 3
  br i1 %1000, label %1001, label %1021

1001:                                             ; preds = %999
  %1002 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 19
  %1003 = load i32, ptr %1002, align 4, !tbaa !30
  %1004 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1003, i32 1), !nosanitize !16
  %1005 = extractvalue { i32, i1 } %1004, 1, !nosanitize !16
  br i1 %1005, label %110, label %1006, !nosanitize !16

1006:                                             ; preds = %1001
  %1007 = extractvalue { i32, i1 } %1004, 0, !nosanitize !16
  %1008 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 17
  %1009 = load ptr, ptr %1008, align 8, !tbaa !31
  %1010 = zext i32 %1007 to i64
  %1011 = getelementptr inbounds i16, ptr %1009, i64 %1010
  store i16 0, ptr %1011, align 2, !tbaa !53
  %1012 = shl nuw nsw i64 %1010, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1009, i8 0, i64 %1012, i1 false)
  %1013 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 60
  store i32 0, ptr %1013, align 8, !tbaa !54
  %1014 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 29
  %1015 = load i32, ptr %1014, align 4, !tbaa !66
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1017, label %1021

1017:                                             ; preds = %1006
  %1018 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 27
  store i32 0, ptr %1018, align 4, !tbaa !64
  %1019 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 23
  store i64 0, ptr %1019, align 8, !tbaa !65
  %1020 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 55
  store i32 0, ptr %1020, align 4, !tbaa !67
  br label %1021

1021:                                             ; preds = %997, %1006, %1017, %999, %998
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1022 = load i32, ptr %43, align 8, !tbaa !89
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1024, label %1025

1024:                                             ; preds = %1021
  store i32 -1, ptr %50, align 4, !tbaa !51
  br label %1164

1025:                                             ; preds = %1021, %995, %962
  br i1 %37, label %1164, label %1026

1026:                                             ; preds = %1025
  %1027 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 6
  %1028 = load i32, ptr %1027, align 8, !tbaa !23
  %1029 = icmp slt i32 %1028, 1
  br i1 %1029, label %1164, label %1030

1030:                                             ; preds = %1026
  %1031 = icmp eq i32 %1028, 2
  %1032 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  br i1 %1031, label %1033, label %1114

1033:                                             ; preds = %1030
  %1034 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %1035 = load i64, ptr %52, align 8, !tbaa !48
  %1036 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1035, i64 1), !nosanitize !16
  %1037 = extractvalue { i64, i1 } %1036, 1, !nosanitize !16
  br i1 %1037, label %143, label %1038, !nosanitize !16

1038:                                             ; preds = %1033
  %1039 = extractvalue { i64, i1 } %1036, 0, !nosanitize !16
  %1040 = load ptr, ptr %1034, align 8, !tbaa !34
  %1041 = load i64, ptr %1032, align 8, !tbaa !50
  %1042 = trunc i64 %1041 to i8
  store i64 %1039, ptr %52, align 8, !tbaa !48
  %1043 = getelementptr inbounds i8, ptr %1040, i64 %1035
  store i8 %1042, ptr %1043, align 1, !tbaa !5
  %1044 = load i64, ptr %52, align 8, !tbaa !48
  %1045 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1044, i64 1), !nosanitize !16
  %1046 = extractvalue { i64, i1 } %1045, 1, !nosanitize !16
  br i1 %1046, label %143, label %1047, !nosanitize !16

1047:                                             ; preds = %1038
  %1048 = extractvalue { i64, i1 } %1045, 0, !nosanitize !16
  %1049 = load ptr, ptr %1034, align 8, !tbaa !34
  %1050 = load i64, ptr %1032, align 8, !tbaa !50
  %1051 = lshr i64 %1050, 8
  %1052 = trunc i64 %1051 to i8
  store i64 %1048, ptr %52, align 8, !tbaa !48
  %1053 = getelementptr inbounds i8, ptr %1049, i64 %1044
  store i8 %1052, ptr %1053, align 1, !tbaa !5
  %1054 = load i64, ptr %52, align 8, !tbaa !48
  %1055 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1054, i64 1), !nosanitize !16
  %1056 = extractvalue { i64, i1 } %1055, 1, !nosanitize !16
  br i1 %1056, label %143, label %1057, !nosanitize !16

1057:                                             ; preds = %1047
  %1058 = extractvalue { i64, i1 } %1055, 0, !nosanitize !16
  %1059 = load ptr, ptr %1034, align 8, !tbaa !34
  %1060 = load i64, ptr %1032, align 8, !tbaa !50
  %1061 = lshr i64 %1060, 16
  %1062 = trunc i64 %1061 to i8
  store i64 %1058, ptr %52, align 8, !tbaa !48
  %1063 = getelementptr inbounds i8, ptr %1059, i64 %1054
  store i8 %1062, ptr %1063, align 1, !tbaa !5
  %1064 = load i64, ptr %52, align 8, !tbaa !48
  %1065 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1064, i64 1), !nosanitize !16
  %1066 = extractvalue { i64, i1 } %1065, 1, !nosanitize !16
  br i1 %1066, label %143, label %1067, !nosanitize !16

1067:                                             ; preds = %1057
  %1068 = extractvalue { i64, i1 } %1065, 0, !nosanitize !16
  %1069 = load ptr, ptr %1034, align 8, !tbaa !34
  %1070 = load i64, ptr %1032, align 8, !tbaa !50
  %1071 = lshr i64 %1070, 24
  %1072 = trunc i64 %1071 to i8
  store i64 %1068, ptr %52, align 8, !tbaa !48
  %1073 = getelementptr inbounds i8, ptr %1069, i64 %1064
  store i8 %1072, ptr %1073, align 1, !tbaa !5
  %1074 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %1075 = load i64, ptr %52, align 8, !tbaa !48
  %1076 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1075, i64 1), !nosanitize !16
  %1077 = extractvalue { i64, i1 } %1076, 1, !nosanitize !16
  br i1 %1077, label %143, label %1078, !nosanitize !16

1078:                                             ; preds = %1067
  %1079 = extractvalue { i64, i1 } %1076, 0, !nosanitize !16
  %1080 = load ptr, ptr %1034, align 8, !tbaa !34
  %1081 = load i64, ptr %1074, align 8, !tbaa !46
  %1082 = trunc i64 %1081 to i8
  store i64 %1079, ptr %52, align 8, !tbaa !48
  %1083 = getelementptr inbounds i8, ptr %1080, i64 %1075
  store i8 %1082, ptr %1083, align 1, !tbaa !5
  %1084 = load i64, ptr %52, align 8, !tbaa !48
  %1085 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1084, i64 1), !nosanitize !16
  %1086 = extractvalue { i64, i1 } %1085, 1, !nosanitize !16
  br i1 %1086, label %143, label %1087, !nosanitize !16

1087:                                             ; preds = %1078
  %1088 = extractvalue { i64, i1 } %1085, 0, !nosanitize !16
  %1089 = load ptr, ptr %1034, align 8, !tbaa !34
  %1090 = load i64, ptr %1074, align 8, !tbaa !46
  %1091 = lshr i64 %1090, 8
  %1092 = trunc i64 %1091 to i8
  store i64 %1088, ptr %52, align 8, !tbaa !48
  %1093 = getelementptr inbounds i8, ptr %1089, i64 %1084
  store i8 %1092, ptr %1093, align 1, !tbaa !5
  %1094 = load i64, ptr %52, align 8, !tbaa !48
  %1095 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1094, i64 1), !nosanitize !16
  %1096 = extractvalue { i64, i1 } %1095, 1, !nosanitize !16
  br i1 %1096, label %143, label %1097, !nosanitize !16

1097:                                             ; preds = %1087
  %1098 = extractvalue { i64, i1 } %1095, 0, !nosanitize !16
  %1099 = load ptr, ptr %1034, align 8, !tbaa !34
  %1100 = load i64, ptr %1074, align 8, !tbaa !46
  %1101 = lshr i64 %1100, 16
  %1102 = trunc i64 %1101 to i8
  store i64 %1098, ptr %52, align 8, !tbaa !48
  %1103 = getelementptr inbounds i8, ptr %1099, i64 %1094
  store i8 %1102, ptr %1103, align 1, !tbaa !5
  %1104 = load i64, ptr %52, align 8, !tbaa !48
  %1105 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1104, i64 1), !nosanitize !16
  %1106 = extractvalue { i64, i1 } %1105, 1, !nosanitize !16
  br i1 %1106, label %143, label %1107, !nosanitize !16

1107:                                             ; preds = %1097
  %1108 = extractvalue { i64, i1 } %1105, 0, !nosanitize !16
  %1109 = load ptr, ptr %1034, align 8, !tbaa !34
  %1110 = load i64, ptr %1074, align 8, !tbaa !46
  %1111 = lshr i64 %1110, 24
  %1112 = trunc i64 %1111 to i8
  store i64 %1108, ptr %52, align 8, !tbaa !48
  %1113 = getelementptr inbounds i8, ptr %1109, i64 %1104
  store i8 %1112, ptr %1113, align 1, !tbaa !5
  br label %1155

1114:                                             ; preds = %1030
  %1115 = load i64, ptr %1032, align 8, !tbaa !50
  %1116 = lshr i64 %1115, 16
  %1117 = load i64, ptr %52, align 8, !tbaa !48
  %1118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1117, i64 1), !nosanitize !16
  %1119 = extractvalue { i64, i1 } %1118, 1, !nosanitize !16
  br i1 %1119, label %1120, label %1121, !nosanitize !16

1120:                                             ; preds = %1121, %1114
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

1121:                                             ; preds = %1114
  %1122 = extractvalue { i64, i1 } %1118, 0, !nosanitize !16
  %1123 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %1124 = load ptr, ptr %1123, align 8, !tbaa !34
  %1125 = lshr i64 %1115, 24
  %1126 = trunc i64 %1125 to i8
  store i64 %1122, ptr %52, align 8, !tbaa !48
  %1127 = getelementptr inbounds i8, ptr %1124, i64 %1117
  store i8 %1126, ptr %1127, align 1, !tbaa !5
  %1128 = load i64, ptr %52, align 8, !tbaa !48
  %1129 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1128, i64 1), !nosanitize !16
  %1130 = extractvalue { i64, i1 } %1129, 1, !nosanitize !16
  br i1 %1130, label %1120, label %1131, !nosanitize !16

1131:                                             ; preds = %1121
  %1132 = extractvalue { i64, i1 } %1129, 0, !nosanitize !16
  %1133 = load ptr, ptr %1123, align 8, !tbaa !34
  %1134 = trunc i64 %1116 to i8
  store i64 %1132, ptr %52, align 8, !tbaa !48
  %1135 = getelementptr inbounds i8, ptr %1133, i64 %1128
  store i8 %1134, ptr %1135, align 1, !tbaa !5
  %1136 = load i64, ptr %1032, align 8, !tbaa !50
  %1137 = trunc i64 %1136 to i8
  %1138 = load i64, ptr %52, align 8, !tbaa !48
  %1139 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1138, i64 1), !nosanitize !16
  %1140 = extractvalue { i64, i1 } %1139, 1, !nosanitize !16
  br i1 %1140, label %1141, label %1142, !nosanitize !16

1141:                                             ; preds = %1142, %1131
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

1142:                                             ; preds = %1131
  %1143 = extractvalue { i64, i1 } %1139, 0, !nosanitize !16
  %1144 = load ptr, ptr %1123, align 8, !tbaa !34
  %1145 = lshr i64 %1136, 8
  %1146 = trunc i64 %1145 to i8
  store i64 %1143, ptr %52, align 8, !tbaa !48
  %1147 = getelementptr inbounds i8, ptr %1144, i64 %1138
  store i8 %1146, ptr %1147, align 1, !tbaa !5
  %1148 = load i64, ptr %52, align 8, !tbaa !48
  %1149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1148, i64 1), !nosanitize !16
  %1150 = extractvalue { i64, i1 } %1149, 1, !nosanitize !16
  br i1 %1150, label %1141, label %1151, !nosanitize !16

1151:                                             ; preds = %1142
  %1152 = extractvalue { i64, i1 } %1149, 0, !nosanitize !16
  %1153 = load ptr, ptr %1123, align 8, !tbaa !34
  store i64 %1152, ptr %52, align 8, !tbaa !48
  %1154 = getelementptr inbounds i8, ptr %1153, i64 %1148
  store i8 %1137, ptr %1154, align 1, !tbaa !5
  br label %1155

1155:                                             ; preds = %1151, %1107
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1156 = load i32, ptr %1027, align 8, !tbaa !23
  %1157 = icmp sgt i32 %1156, 0
  br i1 %1157, label %1158, label %1160

1158:                                             ; preds = %1155
  %1159 = sub nsw i32 0, %1156
  store i32 %1159, ptr %1027, align 8, !tbaa !23
  br label %1160

1160:                                             ; preds = %1158, %1155
  %1161 = load i64, ptr %52, align 8, !tbaa !48
  %1162 = icmp eq i64 %1161, 0
  %1163 = zext i1 %1162 to i32
  br label %1164

1164:                                             ; preds = %960, %12, %16, %19, %2, %4, %8, %653, %238, %1024, %994, %991, %1026, %1025, %874, %763, %22, %1160, %952, %928, %334, %130, %121, %100, %46, %39
  %1165 = phi i32 [ -2, %39 ], [ -5, %46 ], [ 0, %100 ], [ -5, %130 ], [ 0, %334 ], [ 0, %928 ], [ 0, %952 ], [ %1163, %1160 ], [ 0, %238 ], [ -5, %121 ], [ -2, %22 ], [ 0, %763 ], [ 0, %874 ], [ 0, %1025 ], [ 1, %1026 ], [ 0, %991 ], [ 0, %994 ], [ 0, %1024 ], [ 0, %653 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ], [ 0, %960 ]
  ret i32 %1165
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @slide_hash(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !25
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 19
  %5 = load i32, ptr %4, align 4, !tbaa !30
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds i16, ptr %7, i64 %8
  br label %10

10:                                               ; preds = %21, %1
  %11 = phi ptr [ %9, %1 ], [ %13, %21 ]
  %12 = phi i32 [ %5, %1 ], [ %22, %21 ]
  %13 = getelementptr inbounds i16, ptr %11, i64 -1
  %14 = load i16, ptr %13, align 2, !tbaa !53
  %15 = zext i16 %14 to i32
  %16 = tail call i32 @llvm.usub.sat.i32(i32 %15, i32 %3)
  %17 = trunc i32 %16 to i16
  store i16 %17, ptr %13, align 2, !tbaa !53
  %18 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %12, i32 1), !nosanitize !16
  %19 = extractvalue { i32, i1 } %18, 1, !nosanitize !16
  br i1 %19, label %20, label %21, !nosanitize !16

20:                                               ; preds = %10, %29
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

21:                                               ; preds = %10
  %22 = extractvalue { i32, i1 } %18, 0, !nosanitize !16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %10, !llvm.loop !75

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %26 = load ptr, ptr %25, align 8, !tbaa !29
  %27 = zext i32 %3 to i64
  %28 = getelementptr inbounds i16, ptr %26, i64 %27
  br label %29

29:                                               ; preds = %39, %24
  %30 = phi ptr [ %28, %24 ], [ %32, %39 ]
  %31 = phi i32 [ %3, %24 ], [ %40, %39 ]
  %32 = getelementptr inbounds i16, ptr %30, i64 -1
  %33 = load i16, ptr %32, align 2, !tbaa !53
  %34 = zext i16 %33 to i32
  %35 = tail call i32 @llvm.usub.sat.i32(i32 %34, i32 %3)
  %36 = trunc i32 %35 to i16
  store i16 %36, ptr %32, align 2, !tbaa !53
  %37 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %31, i32 1), !nosanitize !16
  %38 = extractvalue { i32, i1 } %37, 1, !nosanitize !16
  br i1 %38, label %20, label %39, !nosanitize !16

39:                                               ; preds = %29
  %40 = extractvalue { i32, i1 } %37, 0, !nosanitize !16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %29, !llvm.loop !77

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 60
  store i32 1, ptr %43, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @deflateTune(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !18
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !22
  switch i32 %24, label %30 [
    i32 42, label %25
    i32 57, label %25
    i32 69, label %25
    i32 73, label %25
    i32 91, label %25
    i32 103, label %25
    i32 113, label %25
    i32 666, label %25
  ]

25:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22
  %26 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 35
  store i32 %1, ptr %26, align 4, !tbaa !59
  %27 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 32
  store i32 %2, ptr %27, align 8, !tbaa !57
  %28 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 36
  store i32 %3, ptr %28, align 8, !tbaa !61
  %29 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 31
  store i32 %4, ptr %29, align 4, !tbaa !63
  br label %30

30:                                               ; preds = %15, %19, %22, %5, %7, %11, %25
  %31 = phi i32 [ 0, %25 ], [ -2, %11 ], [ -2, %7 ], [ -2, %5 ], [ -2, %22 ], [ -2, %19 ], [ -2, %15 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local i64 @deflateBound_z(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !16
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !16
  br i1 %5, label %6, label %7, !nosanitize !16

6:                                                ; preds = %108, %123, %183, %179, %174, %169, %165, %160, %138, %94, %65, %38, %33, %28, %21, %17, %12, %7, %2
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !16
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !16
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !16
  br i1 %11, label %6, label %12, !nosanitize !16

12:                                               ; preds = %7
  %13 = extractvalue { i64, i1 } %10, 0, !nosanitize !16
  %14 = lshr i64 %1, 9
  %15 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 %14), !nosanitize !16
  %16 = extractvalue { i64, i1 } %15, 1, !nosanitize !16
  br i1 %16, label %6, label %17, !nosanitize !16

17:                                               ; preds = %12
  %18 = extractvalue { i64, i1 } %15, 0, !nosanitize !16
  %19 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %18, i64 4), !nosanitize !16
  %20 = extractvalue { i64, i1 } %19, 1, !nosanitize !16
  br i1 %20, label %6, label %21, !nosanitize !16

21:                                               ; preds = %17
  %22 = extractvalue { i64, i1 } %19, 0, !nosanitize !16
  %23 = icmp ult i64 %22, %1
  %24 = select i1 %23, i64 -1, i64 %22
  %25 = lshr i64 %1, 5
  %26 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %25), !nosanitize !16
  %27 = extractvalue { i64, i1 } %26, 1, !nosanitize !16
  br i1 %27, label %6, label %28, !nosanitize !16

28:                                               ; preds = %21
  %29 = extractvalue { i64, i1 } %26, 0, !nosanitize !16
  %30 = lshr i64 %1, 7
  %31 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %29, i64 %30), !nosanitize !16
  %32 = extractvalue { i64, i1 } %31, 1, !nosanitize !16
  br i1 %32, label %6, label %33, !nosanitize !16

33:                                               ; preds = %28
  %34 = extractvalue { i64, i1 } %31, 0, !nosanitize !16
  %35 = lshr i64 %1, 11
  %36 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %34, i64 %35), !nosanitize !16
  %37 = extractvalue { i64, i1 } %36, 1, !nosanitize !16
  br i1 %37, label %6, label %38, !nosanitize !16

38:                                               ; preds = %33
  %39 = extractvalue { i64, i1 } %36, 0, !nosanitize !16
  %40 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 7), !nosanitize !16
  %41 = extractvalue { i64, i1 } %40, 1, !nosanitize !16
  br i1 %41, label %6, label %42, !nosanitize !16

42:                                               ; preds = %38
  %43 = extractvalue { i64, i1 } %40, 0, !nosanitize !16
  %44 = icmp ult i64 %43, %1
  %45 = select i1 %44, i64 -1, i64 %43
  %46 = icmp eq ptr %0, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !13
  %50 = icmp eq ptr %49, null
  br i1 %50, label %65, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !15
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !17
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %57, align 8, !tbaa !18
  %61 = icmp eq ptr %60, %0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !22
  switch i32 %64, label %65 [
    i32 42, label %70
    i32 57, label %70
    i32 69, label %70
    i32 73, label %70
    i32 91, label %70
    i32 103, label %70
    i32 113, label %70
    i32 666, label %70
  ]

65:                                               ; preds = %51, %47, %42, %62, %59, %55
  %66 = tail call i64 @llvm.umax.i64(i64 %24, i64 %45)
  %67 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %66, i64 18), !nosanitize !16
  %68 = extractvalue { i64, i1 } %67, 0, !nosanitize !16
  %69 = extractvalue { i64, i1 } %67, 1, !nosanitize !16
  br i1 %69, label %6, label %192, !nosanitize !16

70:                                               ; preds = %62, %62, %62, %62, %62, %62, %62, %62
  %71 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !23
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %72), !nosanitize !16
  %76 = extractvalue { i32, i1 } %75, 0, !nosanitize !16
  %77 = extractvalue { i32, i1 } %75, 1, !nosanitize !16
  br i1 %77, label %78, label %79, !nosanitize !16

78:                                               ; preds = %74
  tail call void @llvm.ubsantrap(i8 13) #9, !nosanitize !16
  unreachable, !nosanitize !16

79:                                               ; preds = %70, %74
  %80 = phi i32 [ %76, %74 ], [ %72, %70 ]
  switch i32 %80, label %143 [
    i32 0, label %144
    i32 1, label %81
    i32 2, label %86
  ]

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 27
  %83 = load i32, ptr %82, align 4, !tbaa !64
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i64 6, i64 10
  br label %144

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 7
  %88 = load ptr, ptr %87, align 8, !tbaa !82
  %89 = icmp eq ptr %88, null
  br i1 %89, label %144, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.gz_header_s, ptr %88, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !94
  %93 = icmp eq ptr %92, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.gz_header_s, ptr %88, i64 0, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !99
  %97 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %96, i32 2), !nosanitize !16
  %98 = extractvalue { i32, i1 } %97, 1, !nosanitize !16
  br i1 %98, label %6, label %99, !nosanitize !16

99:                                               ; preds = %94
  %100 = extractvalue { i32, i1 } %97, 0, !nosanitize !16
  %101 = zext i32 %100 to i64
  %102 = add nuw nsw i64 %101, 18
  br label %103

103:                                              ; preds = %99, %90
  %104 = phi i64 [ %102, %99 ], [ 18, %90 ]
  %105 = getelementptr inbounds %struct.gz_header_s, ptr %88, i64 0, i32 7
  %106 = load ptr, ptr %105, align 8, !tbaa !93
  %107 = icmp eq ptr %106, null
  br i1 %107, label %118, label %108

108:                                              ; preds = %103, %113
  %109 = phi i64 [ %114, %113 ], [ %104, %103 ]
  %110 = phi ptr [ %115, %113 ], [ %106, %103 ]
  %111 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %109, i64 1), !nosanitize !16
  %112 = extractvalue { i64, i1 } %111, 1, !nosanitize !16
  br i1 %112, label %6, label %113, !nosanitize !16

113:                                              ; preds = %108
  %114 = extractvalue { i64, i1 } %111, 0, !nosanitize !16
  %115 = getelementptr inbounds i8, ptr %110, i64 1
  %116 = load i8, ptr %110, align 1, !tbaa !5
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %108, !llvm.loop !107

118:                                              ; preds = %113, %103
  %119 = phi i64 [ %104, %103 ], [ %114, %113 ]
  %120 = getelementptr inbounds %struct.gz_header_s, ptr %88, i64 0, i32 9
  %121 = load ptr, ptr %120, align 8, !tbaa !91
  %122 = icmp eq ptr %121, null
  br i1 %122, label %133, label %123

123:                                              ; preds = %118, %128
  %124 = phi i64 [ %129, %128 ], [ %119, %118 ]
  %125 = phi ptr [ %130, %128 ], [ %121, %118 ]
  %126 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 1), !nosanitize !16
  %127 = extractvalue { i64, i1 } %126, 1, !nosanitize !16
  br i1 %127, label %6, label %128, !nosanitize !16

128:                                              ; preds = %123
  %129 = extractvalue { i64, i1 } %126, 0, !nosanitize !16
  %130 = getelementptr inbounds i8, ptr %125, i64 1
  %131 = load i8, ptr %125, align 1, !tbaa !5
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %123, !llvm.loop !108

133:                                              ; preds = %128, %118
  %134 = phi i64 [ %119, %118 ], [ %129, %128 ]
  %135 = getelementptr inbounds %struct.gz_header_s, ptr %88, i64 0, i32 11
  %136 = load i32, ptr %135, align 4, !tbaa !96
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %133
  %139 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %134, i64 2), !nosanitize !16
  %140 = extractvalue { i64, i1 } %139, 1, !nosanitize !16
  br i1 %140, label %6, label %141, !nosanitize !16

141:                                              ; preds = %138
  %142 = extractvalue { i64, i1 } %139, 0, !nosanitize !16
  br label %144

143:                                              ; preds = %79
  br label %144

144:                                              ; preds = %133, %141, %79, %86, %143, %81
  %145 = phi i64 [ 18, %143 ], [ 18, %86 ], [ %85, %81 ], [ 0, %79 ], [ %142, %141 ], [ %134, %133 ]
  %146 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 12
  %147 = load i32, ptr %146, align 4, !tbaa !24
  %148 = icmp eq i32 %147, 15
  %149 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 20
  %150 = load i32, ptr %149, align 8, !tbaa !43
  %151 = icmp eq i32 %150, 15
  %152 = select i1 %148, i1 %151, i1 false
  br i1 %152, label %165, label %153

153:                                              ; preds = %144
  %154 = icmp ugt i32 %147, %150
  br i1 %154, label %159, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 33
  %157 = load i32, ptr %156, align 4, !tbaa !39
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %155, %153
  br label %160

160:                                              ; preds = %155, %159
  %161 = phi i64 [ %45, %159 ], [ %24, %155 ]
  %162 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %161, i64 %145), !nosanitize !16
  %163 = extractvalue { i64, i1 } %162, 0, !nosanitize !16
  %164 = extractvalue { i64, i1 } %162, 1, !nosanitize !16
  br i1 %164, label %6, label %192, !nosanitize !16

165:                                              ; preds = %144
  %166 = lshr i64 %1, 12
  %167 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %166), !nosanitize !16
  %168 = extractvalue { i64, i1 } %167, 1, !nosanitize !16
  br i1 %168, label %6, label %169, !nosanitize !16

169:                                              ; preds = %165
  %170 = extractvalue { i64, i1 } %167, 0, !nosanitize !16
  %171 = lshr i64 %1, 14
  %172 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %170, i64 %171), !nosanitize !16
  %173 = extractvalue { i64, i1 } %172, 1, !nosanitize !16
  br i1 %173, label %6, label %174, !nosanitize !16

174:                                              ; preds = %169
  %175 = extractvalue { i64, i1 } %172, 0, !nosanitize !16
  %176 = lshr i64 %1, 25
  %177 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %175, i64 %176), !nosanitize !16
  %178 = extractvalue { i64, i1 } %177, 1, !nosanitize !16
  br i1 %178, label %6, label %179, !nosanitize !16

179:                                              ; preds = %174
  %180 = extractvalue { i64, i1 } %177, 0, !nosanitize !16
  %181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %180, i64 13), !nosanitize !16
  %182 = extractvalue { i64, i1 } %181, 1, !nosanitize !16
  br i1 %182, label %6, label %183, !nosanitize !16

183:                                              ; preds = %179
  %184 = extractvalue { i64, i1 } %181, 0, !nosanitize !16
  %185 = add i64 %184, -6
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %185, i64 %145), !nosanitize !16
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !16
  br i1 %187, label %6, label %188, !nosanitize !16

188:                                              ; preds = %183
  %189 = extractvalue { i64, i1 } %186, 0, !nosanitize !16
  %190 = icmp ult i64 %189, %1
  %191 = select i1 %190, i64 -1, i64 %189
  br label %192

192:                                              ; preds = %160, %65, %188
  %193 = phi i64 [ %191, %188 ], [ %68, %65 ], [ %163, %160 ]
  ret i64 %193
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind uwtable
define dso_local i64 @deflateBound(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !16
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !16
  br i1 %5, label %6, label %7, !nosanitize !16

6:                                                ; preds = %108, %123, %183, %179, %174, %169, %165, %160, %138, %94, %65, %38, %33, %28, %21, %17, %12, %7, %2
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !16
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !16
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !16
  br i1 %11, label %6, label %12, !nosanitize !16

12:                                               ; preds = %7
  %13 = extractvalue { i64, i1 } %10, 0, !nosanitize !16
  %14 = lshr i64 %1, 9
  %15 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 %14), !nosanitize !16
  %16 = extractvalue { i64, i1 } %15, 1, !nosanitize !16
  br i1 %16, label %6, label %17, !nosanitize !16

17:                                               ; preds = %12
  %18 = extractvalue { i64, i1 } %15, 0, !nosanitize !16
  %19 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %18, i64 4), !nosanitize !16
  %20 = extractvalue { i64, i1 } %19, 1, !nosanitize !16
  br i1 %20, label %6, label %21, !nosanitize !16

21:                                               ; preds = %17
  %22 = extractvalue { i64, i1 } %19, 0, !nosanitize !16
  %23 = icmp ult i64 %22, %1
  %24 = select i1 %23, i64 -1, i64 %22
  %25 = lshr i64 %1, 5
  %26 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %25), !nosanitize !16
  %27 = extractvalue { i64, i1 } %26, 1, !nosanitize !16
  br i1 %27, label %6, label %28, !nosanitize !16

28:                                               ; preds = %21
  %29 = extractvalue { i64, i1 } %26, 0, !nosanitize !16
  %30 = lshr i64 %1, 7
  %31 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %29, i64 %30), !nosanitize !16
  %32 = extractvalue { i64, i1 } %31, 1, !nosanitize !16
  br i1 %32, label %6, label %33, !nosanitize !16

33:                                               ; preds = %28
  %34 = extractvalue { i64, i1 } %31, 0, !nosanitize !16
  %35 = lshr i64 %1, 11
  %36 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %34, i64 %35), !nosanitize !16
  %37 = extractvalue { i64, i1 } %36, 1, !nosanitize !16
  br i1 %37, label %6, label %38, !nosanitize !16

38:                                               ; preds = %33
  %39 = extractvalue { i64, i1 } %36, 0, !nosanitize !16
  %40 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 7), !nosanitize !16
  %41 = extractvalue { i64, i1 } %40, 1, !nosanitize !16
  br i1 %41, label %6, label %42, !nosanitize !16

42:                                               ; preds = %38
  %43 = extractvalue { i64, i1 } %40, 0, !nosanitize !16
  %44 = icmp ult i64 %43, %1
  %45 = select i1 %44, i64 -1, i64 %43
  %46 = icmp eq ptr %0, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !13
  %50 = icmp eq ptr %49, null
  br i1 %50, label %65, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !15
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !17
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %57, align 8, !tbaa !18
  %61 = icmp eq ptr %60, %0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !22
  switch i32 %64, label %65 [
    i32 42, label %70
    i32 57, label %70
    i32 69, label %70
    i32 73, label %70
    i32 91, label %70
    i32 103, label %70
    i32 113, label %70
    i32 666, label %70
  ]

65:                                               ; preds = %62, %59, %55, %51, %47, %42
  %66 = tail call i64 @llvm.umax.i64(i64 %24, i64 %45)
  %67 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %66, i64 18), !nosanitize !16
  %68 = extractvalue { i64, i1 } %67, 0, !nosanitize !16
  %69 = extractvalue { i64, i1 } %67, 1, !nosanitize !16
  br i1 %69, label %6, label %192, !nosanitize !16

70:                                               ; preds = %62, %62, %62, %62, %62, %62, %62, %62
  %71 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !23
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %72), !nosanitize !16
  %76 = extractvalue { i32, i1 } %75, 0, !nosanitize !16
  %77 = extractvalue { i32, i1 } %75, 1, !nosanitize !16
  br i1 %77, label %78, label %79, !nosanitize !16

78:                                               ; preds = %74
  tail call void @llvm.ubsantrap(i8 13) #9, !nosanitize !16
  unreachable, !nosanitize !16

79:                                               ; preds = %74, %70
  %80 = phi i32 [ %76, %74 ], [ %72, %70 ]
  switch i32 %80, label %143 [
    i32 0, label %144
    i32 1, label %81
    i32 2, label %86
  ]

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 27
  %83 = load i32, ptr %82, align 4, !tbaa !64
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i64 6, i64 10
  br label %144

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 7
  %88 = load ptr, ptr %87, align 8, !tbaa !82
  %89 = icmp eq ptr %88, null
  br i1 %89, label %144, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.gz_header_s, ptr %88, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !94
  %93 = icmp eq ptr %92, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.gz_header_s, ptr %88, i64 0, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !99
  %97 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %96, i32 2), !nosanitize !16
  %98 = extractvalue { i32, i1 } %97, 1, !nosanitize !16
  br i1 %98, label %6, label %99, !nosanitize !16

99:                                               ; preds = %94
  %100 = extractvalue { i32, i1 } %97, 0, !nosanitize !16
  %101 = zext i32 %100 to i64
  %102 = add nuw nsw i64 %101, 18
  br label %103

103:                                              ; preds = %99, %90
  %104 = phi i64 [ %102, %99 ], [ 18, %90 ]
  %105 = getelementptr inbounds %struct.gz_header_s, ptr %88, i64 0, i32 7
  %106 = load ptr, ptr %105, align 8, !tbaa !93
  %107 = icmp eq ptr %106, null
  br i1 %107, label %118, label %108

108:                                              ; preds = %103, %113
  %109 = phi i64 [ %114, %113 ], [ %104, %103 ]
  %110 = phi ptr [ %115, %113 ], [ %106, %103 ]
  %111 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %109, i64 1), !nosanitize !16
  %112 = extractvalue { i64, i1 } %111, 1, !nosanitize !16
  br i1 %112, label %6, label %113, !nosanitize !16

113:                                              ; preds = %108
  %114 = extractvalue { i64, i1 } %111, 0, !nosanitize !16
  %115 = getelementptr inbounds i8, ptr %110, i64 1
  %116 = load i8, ptr %110, align 1, !tbaa !5
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %108, !llvm.loop !107

118:                                              ; preds = %113, %103
  %119 = phi i64 [ %104, %103 ], [ %114, %113 ]
  %120 = getelementptr inbounds %struct.gz_header_s, ptr %88, i64 0, i32 9
  %121 = load ptr, ptr %120, align 8, !tbaa !91
  %122 = icmp eq ptr %121, null
  br i1 %122, label %133, label %123

123:                                              ; preds = %118, %128
  %124 = phi i64 [ %129, %128 ], [ %119, %118 ]
  %125 = phi ptr [ %130, %128 ], [ %121, %118 ]
  %126 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 1), !nosanitize !16
  %127 = extractvalue { i64, i1 } %126, 1, !nosanitize !16
  br i1 %127, label %6, label %128, !nosanitize !16

128:                                              ; preds = %123
  %129 = extractvalue { i64, i1 } %126, 0, !nosanitize !16
  %130 = getelementptr inbounds i8, ptr %125, i64 1
  %131 = load i8, ptr %125, align 1, !tbaa !5
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %123, !llvm.loop !108

133:                                              ; preds = %128, %118
  %134 = phi i64 [ %119, %118 ], [ %129, %128 ]
  %135 = getelementptr inbounds %struct.gz_header_s, ptr %88, i64 0, i32 11
  %136 = load i32, ptr %135, align 4, !tbaa !96
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %133
  %139 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %134, i64 2), !nosanitize !16
  %140 = extractvalue { i64, i1 } %139, 1, !nosanitize !16
  br i1 %140, label %6, label %141, !nosanitize !16

141:                                              ; preds = %138
  %142 = extractvalue { i64, i1 } %139, 0, !nosanitize !16
  br label %144

143:                                              ; preds = %79
  br label %144

144:                                              ; preds = %143, %141, %133, %86, %81, %79
  %145 = phi i64 [ 18, %143 ], [ 18, %86 ], [ %85, %81 ], [ 0, %79 ], [ %142, %141 ], [ %134, %133 ]
  %146 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 12
  %147 = load i32, ptr %146, align 4, !tbaa !24
  %148 = icmp eq i32 %147, 15
  %149 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 20
  %150 = load i32, ptr %149, align 8, !tbaa !43
  %151 = icmp eq i32 %150, 15
  %152 = select i1 %148, i1 %151, i1 false
  br i1 %152, label %165, label %153

153:                                              ; preds = %144
  %154 = icmp ugt i32 %147, %150
  br i1 %154, label %159, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 33
  %157 = load i32, ptr %156, align 4, !tbaa !39
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %155, %153
  br label %160

160:                                              ; preds = %159, %155
  %161 = phi i64 [ %45, %159 ], [ %24, %155 ]
  %162 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %161, i64 %145), !nosanitize !16
  %163 = extractvalue { i64, i1 } %162, 0, !nosanitize !16
  %164 = extractvalue { i64, i1 } %162, 1, !nosanitize !16
  br i1 %164, label %6, label %192, !nosanitize !16

165:                                              ; preds = %144
  %166 = lshr i64 %1, 12
  %167 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %166), !nosanitize !16
  %168 = extractvalue { i64, i1 } %167, 1, !nosanitize !16
  br i1 %168, label %6, label %169, !nosanitize !16

169:                                              ; preds = %165
  %170 = extractvalue { i64, i1 } %167, 0, !nosanitize !16
  %171 = lshr i64 %1, 14
  %172 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %170, i64 %171), !nosanitize !16
  %173 = extractvalue { i64, i1 } %172, 1, !nosanitize !16
  br i1 %173, label %6, label %174, !nosanitize !16

174:                                              ; preds = %169
  %175 = extractvalue { i64, i1 } %172, 0, !nosanitize !16
  %176 = lshr i64 %1, 25
  %177 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %175, i64 %176), !nosanitize !16
  %178 = extractvalue { i64, i1 } %177, 1, !nosanitize !16
  br i1 %178, label %6, label %179, !nosanitize !16

179:                                              ; preds = %174
  %180 = extractvalue { i64, i1 } %177, 0, !nosanitize !16
  %181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %180, i64 13), !nosanitize !16
  %182 = extractvalue { i64, i1 } %181, 1, !nosanitize !16
  br i1 %182, label %6, label %183, !nosanitize !16

183:                                              ; preds = %179
  %184 = extractvalue { i64, i1 } %181, 0, !nosanitize !16
  %185 = add i64 %184, -6
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %185, i64 %145), !nosanitize !16
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !16
  br i1 %187, label %6, label %188, !nosanitize !16

188:                                              ; preds = %183
  %189 = extractvalue { i64, i1 } %186, 0, !nosanitize !16
  %190 = icmp ult i64 %189, %1
  %191 = select i1 %190, i64 -1, i64 %189
  br label %192

192:                                              ; preds = %65, %160, %188
  %193 = phi i64 [ %191, %188 ], [ %68, %65 ], [ %163, %160 ]
  ret i64 %193
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !89
  %8 = zext i32 %7 to i64
  %9 = icmp ugt i64 %5, %8
  %10 = trunc i64 %5 to i32
  %11 = select i1 %9, i32 %7, i32 %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = zext i32 %11 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %17, i64 %18, i1 false)
  %19 = load ptr, ptr %14, align 8, !tbaa !88
  %20 = getelementptr inbounds i8, ptr %19, i64 %18
  store ptr %20, ptr %14, align 8, !tbaa !88
  %21 = load ptr, ptr %16, align 8, !tbaa !49
  %22 = getelementptr inbounds i8, ptr %21, i64 %18
  store ptr %22, ptr %16, align 8, !tbaa !49
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %24 = load i64, ptr %23, align 8, !tbaa !90
  %25 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %24, i64 %18), !nosanitize !16
  %26 = extractvalue { i64, i1 } %25, 1, !nosanitize !16
  br i1 %26, label %27, label %28, !nosanitize !16

27:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

28:                                               ; preds = %13
  %29 = extractvalue { i64, i1 } %25, 0, !nosanitize !16
  store i64 %29, ptr %23, align 8, !tbaa !90
  %30 = load i32, ptr %6, align 8, !tbaa !89
  %31 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %30, i32 %11), !nosanitize !16
  %32 = extractvalue { i32, i1 } %31, 1, !nosanitize !16
  br i1 %32, label %33, label %34, !nosanitize !16

33:                                               ; preds = %34, %28
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

34:                                               ; preds = %28
  %35 = extractvalue { i32, i1 } %31, 0, !nosanitize !16
  store i32 %35, ptr %6, align 8, !tbaa !89
  %36 = load i64, ptr %4, align 8, !tbaa !48
  %37 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %36, i64 %18), !nosanitize !16
  %38 = extractvalue { i64, i1 } %37, 1, !nosanitize !16
  br i1 %38, label %33, label %39, !nosanitize !16

39:                                               ; preds = %34
  %40 = extractvalue { i64, i1 } %37, 0, !nosanitize !16
  store i64 %40, ptr %4, align 8, !tbaa !48
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  store ptr %44, ptr %16, align 8, !tbaa !49
  br label %45

45:                                               ; preds = %39, %42, %1
  ret void
}

declare i64 @crc32_z(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !35
  %5 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 5), !nosanitize !16
  %6 = extractvalue { i64, i1 } %5, 1, !nosanitize !16
  br i1 %6, label %7, label %8, !nosanitize !16

7:                                                ; preds = %243, %193, %165, %104, %95, %87, %81, %39, %484, %477, %453, %384, %367, %332, %300, %289, %264, %2
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

8:                                                ; preds = %2
  %9 = extractvalue { i64, i1 } %5, 0, !nosanitize !16
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !25
  %12 = zext i32 %11 to i64
  %13 = tail call i64 @llvm.umin.i64(i64 %9, i64 %12)
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !72
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %21 = icmp ne i32 %1, 4
  %22 = icmp eq i32 %1, 0
  %23 = icmp eq i32 %1, 4
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %26 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  br label %27

27:                                               ; preds = %261, %8
  %28 = load i32, ptr %18, align 4, !tbaa !83
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %28, i32 42), !nosanitize !16
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !16
  br i1 %30, label %31, label %32, !nosanitize !16

31:                                               ; preds = %253, %188, %182, %75, %68, %55, %27, %516, %473, %460, %448, %398, %339, %320
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

32:                                               ; preds = %27
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !16
  %34 = lshr i32 %33, 3
  %35 = load ptr, ptr %0, align 8, !tbaa !18
  %36 = getelementptr inbounds %struct.z_stream_s, ptr %35, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !89
  %38 = icmp ult i32 %37, %34
  br i1 %38, label %264, label %39

39:                                               ; preds = %32
  %40 = sub nuw i32 %37, %34
  %41 = load i32, ptr %19, align 4, !tbaa !64
  %42 = zext i32 %41 to i64
  %43 = load i64, ptr %20, align 8, !tbaa !65
  %44 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %42, i64 %43), !nosanitize !16
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !16
  br i1 %45, label %7, label %46, !nosanitize !16

46:                                               ; preds = %39
  %47 = extractvalue { i64, i1 } %44, 0, !nosanitize !16
  %48 = trunc i64 %47 to i32
  %49 = getelementptr inbounds %struct.z_stream_s, ptr %35, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !72
  %51 = and i64 %47, 4294967295
  %52 = zext i32 %50 to i64
  %53 = add nuw nsw i64 %51, %52
  %54 = icmp ult i64 %53, 65535
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %48, i32 %50), !nosanitize !16
  %57 = extractvalue { i32, i1 } %56, 1, !nosanitize !16
  br i1 %57, label %31, label %58, !nosanitize !16

58:                                               ; preds = %55
  %59 = extractvalue { i32, i1 } %56, 0, !nosanitize !16
  br label %60

60:                                               ; preds = %58, %46
  %61 = phi i32 [ %59, %58 ], [ 65535, %46 ]
  %62 = tail call i32 @llvm.umin.i32(i32 %61, i32 %40)
  %63 = icmp ult i32 %62, %14
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = icmp eq i32 %62, 0
  %66 = and i1 %21, %65
  %67 = or i1 %22, %66
  br i1 %67, label %264, label %68

68:                                               ; preds = %64
  %69 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %48, i32 %50), !nosanitize !16
  %70 = extractvalue { i32, i1 } %69, 1, !nosanitize !16
  br i1 %70, label %31, label %71, !nosanitize !16

71:                                               ; preds = %68
  %72 = extractvalue { i32, i1 } %69, 0, !nosanitize !16
  %73 = icmp eq i32 %62, %72
  br i1 %73, label %74, label %264

74:                                               ; preds = %71, %60
  br i1 %23, label %75, label %81

75:                                               ; preds = %74
  %76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %48, i32 %50), !nosanitize !16
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !16
  br i1 %77, label %31, label %78, !nosanitize !16

78:                                               ; preds = %75
  %79 = extractvalue { i32, i1 } %76, 0, !nosanitize !16
  %80 = icmp eq i32 %62, %79
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi i1 [ false, %74 ], [ %80, %78 ]
  %83 = zext i1 %82 to i32
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %83) #10
  %84 = load i64, ptr %25, align 8, !tbaa !48
  %85 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %84, i64 4), !nosanitize !16
  %86 = extractvalue { i64, i1 } %85, 1, !nosanitize !16
  br i1 %86, label %7, label %87, !nosanitize !16

87:                                               ; preds = %81
  %88 = extractvalue { i64, i1 } %85, 0, !nosanitize !16
  %89 = load ptr, ptr %24, align 8, !tbaa !34
  %90 = trunc i32 %62 to i8
  %91 = getelementptr inbounds i8, ptr %89, i64 %88
  store i8 %90, ptr %91, align 1, !tbaa !5
  %92 = load i64, ptr %25, align 8, !tbaa !48
  %93 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %92, i64 3), !nosanitize !16
  %94 = extractvalue { i64, i1 } %93, 1, !nosanitize !16
  br i1 %94, label %7, label %95, !nosanitize !16

95:                                               ; preds = %87
  %96 = extractvalue { i64, i1 } %93, 0, !nosanitize !16
  %97 = load ptr, ptr %24, align 8, !tbaa !34
  %98 = lshr i32 %62, 8
  %99 = trunc i32 %98 to i8
  %100 = getelementptr inbounds i8, ptr %97, i64 %96
  store i8 %99, ptr %100, align 1, !tbaa !5
  %101 = load i64, ptr %25, align 8, !tbaa !48
  %102 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %101, i64 2), !nosanitize !16
  %103 = extractvalue { i64, i1 } %102, 1, !nosanitize !16
  br i1 %103, label %7, label %104, !nosanitize !16

104:                                              ; preds = %95
  %105 = extractvalue { i64, i1 } %102, 0, !nosanitize !16
  %106 = load ptr, ptr %24, align 8, !tbaa !34
  %107 = xor i32 %62, -1
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds i8, ptr %106, i64 %105
  store i8 %108, ptr %109, align 1, !tbaa !5
  %110 = load i64, ptr %25, align 8, !tbaa !48
  %111 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %110, i64 1), !nosanitize !16
  %112 = extractvalue { i64, i1 } %111, 1, !nosanitize !16
  br i1 %112, label %7, label %113, !nosanitize !16

113:                                              ; preds = %104
  %114 = extractvalue { i64, i1 } %111, 0, !nosanitize !16
  %115 = load ptr, ptr %24, align 8, !tbaa !34
  %116 = lshr i32 %107, 8
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds i8, ptr %115, i64 %114
  store i8 %117, ptr %118, align 1, !tbaa !5
  %119 = load ptr, ptr %0, align 8, !tbaa !18
  %120 = getelementptr inbounds %struct.z_stream_s, ptr %119, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %121) #10
  %122 = getelementptr inbounds %struct.internal_state, ptr %121, i64 0, i32 5
  %123 = load i64, ptr %122, align 8, !tbaa !48
  %124 = getelementptr inbounds %struct.z_stream_s, ptr %119, i64 0, i32 4
  %125 = load i32, ptr %124, align 8, !tbaa !89
  %126 = zext i32 %125 to i64
  %127 = icmp ugt i64 %123, %126
  %128 = trunc i64 %123 to i32
  %129 = select i1 %127, i32 %125, i32 %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %163, label %131

131:                                              ; preds = %113
  %132 = getelementptr inbounds %struct.z_stream_s, ptr %119, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !88
  %134 = getelementptr inbounds %struct.internal_state, ptr %121, i64 0, i32 4
  %135 = load ptr, ptr %134, align 8, !tbaa !49
  %136 = zext i32 %129 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %133, ptr align 1 %135, i64 %136, i1 false)
  %137 = load ptr, ptr %132, align 8, !tbaa !88
  %138 = getelementptr inbounds i8, ptr %137, i64 %136
  store ptr %138, ptr %132, align 8, !tbaa !88
  %139 = load ptr, ptr %134, align 8, !tbaa !49
  %140 = getelementptr inbounds i8, ptr %139, i64 %136
  store ptr %140, ptr %134, align 8, !tbaa !49
  %141 = getelementptr inbounds %struct.z_stream_s, ptr %119, i64 0, i32 5
  %142 = load i64, ptr %141, align 8, !tbaa !90
  %143 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %142, i64 %136), !nosanitize !16
  %144 = extractvalue { i64, i1 } %143, 1, !nosanitize !16
  br i1 %144, label %145, label %146, !nosanitize !16

145:                                              ; preds = %131
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

146:                                              ; preds = %131
  %147 = extractvalue { i64, i1 } %143, 0, !nosanitize !16
  store i64 %147, ptr %141, align 8, !tbaa !90
  %148 = load i32, ptr %124, align 8, !tbaa !89
  %149 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %148, i32 %129), !nosanitize !16
  %150 = extractvalue { i32, i1 } %149, 1, !nosanitize !16
  br i1 %150, label %151, label %152, !nosanitize !16

151:                                              ; preds = %152, %146
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

152:                                              ; preds = %146
  %153 = extractvalue { i32, i1 } %149, 0, !nosanitize !16
  store i32 %153, ptr %124, align 8, !tbaa !89
  %154 = load i64, ptr %122, align 8, !tbaa !48
  %155 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %154, i64 %136), !nosanitize !16
  %156 = extractvalue { i64, i1 } %155, 1, !nosanitize !16
  br i1 %156, label %151, label %157, !nosanitize !16

157:                                              ; preds = %152
  %158 = extractvalue { i64, i1 } %155, 0, !nosanitize !16
  store i64 %158, ptr %122, align 8, !tbaa !48
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.internal_state, ptr %121, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !34
  store ptr %162, ptr %134, align 8, !tbaa !49
  br label %163

163:                                              ; preds = %113, %157, %160
  %164 = icmp eq i32 %48, 0
  br i1 %164, label %199, label %165

165:                                              ; preds = %163
  %166 = tail call i32 @llvm.umin.i32(i32 %62, i32 %48)
  %167 = load ptr, ptr %0, align 8, !tbaa !18
  %168 = getelementptr inbounds %struct.z_stream_s, ptr %167, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !88
  %170 = load ptr, ptr %26, align 8, !tbaa !28
  %171 = load i64, ptr %20, align 8, !tbaa !65
  %172 = getelementptr inbounds i8, ptr %170, i64 %171
  %173 = zext i32 %166 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %169, ptr align 1 %172, i64 %173, i1 false)
  %174 = load ptr, ptr %0, align 8, !tbaa !18
  %175 = getelementptr inbounds %struct.z_stream_s, ptr %174, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !88
  %177 = getelementptr inbounds i8, ptr %176, i64 %173
  store ptr %177, ptr %175, align 8, !tbaa !88
  %178 = getelementptr inbounds %struct.z_stream_s, ptr %174, i64 0, i32 4
  %179 = load i32, ptr %178, align 8, !tbaa !89
  %180 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %179, i32 %166), !nosanitize !16
  %181 = extractvalue { i32, i1 } %180, 1, !nosanitize !16
  br i1 %181, label %7, label %182, !nosanitize !16

182:                                              ; preds = %165
  %183 = extractvalue { i32, i1 } %180, 0, !nosanitize !16
  store i32 %183, ptr %178, align 8, !tbaa !89
  %184 = getelementptr inbounds %struct.z_stream_s, ptr %174, i64 0, i32 5
  %185 = load i64, ptr %184, align 8, !tbaa !90
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %185, i64 %173), !nosanitize !16
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !16
  br i1 %187, label %31, label %188, !nosanitize !16

188:                                              ; preds = %182
  %189 = extractvalue { i64, i1 } %186, 0, !nosanitize !16
  store i64 %189, ptr %184, align 8, !tbaa !90
  %190 = load i64, ptr %20, align 8, !tbaa !65
  %191 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %190, i64 %173), !nosanitize !16
  %192 = extractvalue { i64, i1 } %191, 1, !nosanitize !16
  br i1 %192, label %31, label %193, !nosanitize !16

193:                                              ; preds = %188
  %194 = extractvalue { i64, i1 } %191, 0, !nosanitize !16
  store i64 %194, ptr %20, align 8, !tbaa !65
  %195 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %62, i32 %166), !nosanitize !16
  %196 = extractvalue { i32, i1 } %195, 1, !nosanitize !16
  br i1 %196, label %7, label %197, !nosanitize !16

197:                                              ; preds = %193
  %198 = extractvalue { i32, i1 } %195, 0, !nosanitize !16
  br label %199

199:                                              ; preds = %197, %163
  %200 = phi i32 [ %198, %197 ], [ %62, %163 ]
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %261, label %202

202:                                              ; preds = %199
  %203 = load ptr, ptr %0, align 8, !tbaa !18
  %204 = getelementptr inbounds %struct.z_stream_s, ptr %203, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !88
  %206 = getelementptr inbounds %struct.z_stream_s, ptr %203, i64 0, i32 1
  %207 = load i32, ptr %206, align 8, !tbaa !72
  %208 = tail call i32 @llvm.umin.i32(i32 %207, i32 %200)
  %209 = icmp eq i32 %207, 0
  br i1 %209, label %243, label %210

210:                                              ; preds = %202
  %211 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %207, i32 %208), !nosanitize !16
  %212 = extractvalue { i32, i1 } %211, 1, !nosanitize !16
  br i1 %212, label %213, label %214, !nosanitize !16

213:                                              ; preds = %210
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

214:                                              ; preds = %210
  %215 = extractvalue { i32, i1 } %211, 0, !nosanitize !16
  store i32 %215, ptr %206, align 8, !tbaa !72
  %216 = load ptr, ptr %203, align 8, !tbaa !73
  %217 = zext i32 %208 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %205, ptr align 1 %216, i64 %217, i1 false)
  %218 = getelementptr inbounds %struct.z_stream_s, ptr %203, i64 0, i32 7
  %219 = load ptr, ptr %218, align 8, !tbaa !17
  %220 = getelementptr inbounds %struct.internal_state, ptr %219, i64 0, i32 6
  %221 = load i32, ptr %220, align 8, !tbaa !23
  switch i32 %221, label %230 [
    i32 1, label %222
    i32 2, label %226
  ]

222:                                              ; preds = %214
  %223 = getelementptr inbounds %struct.z_stream_s, ptr %203, i64 0, i32 12
  %224 = load i64, ptr %223, align 8, !tbaa !50
  %225 = tail call i64 @adler32(i64 noundef %224, ptr noundef %205, i32 noundef %208) #10
  store i64 %225, ptr %223, align 8, !tbaa !50
  br label %230

226:                                              ; preds = %214
  %227 = getelementptr inbounds %struct.z_stream_s, ptr %203, i64 0, i32 12
  %228 = load i64, ptr %227, align 8, !tbaa !50
  %229 = tail call i64 @crc32(i64 noundef %228, ptr noundef %205, i32 noundef %208) #10
  store i64 %229, ptr %227, align 8, !tbaa !50
  br label %230

230:                                              ; preds = %226, %222, %214
  %231 = load ptr, ptr %203, align 8, !tbaa !73
  %232 = getelementptr inbounds i8, ptr %231, i64 %217
  store ptr %232, ptr %203, align 8, !tbaa !73
  %233 = getelementptr inbounds %struct.z_stream_s, ptr %203, i64 0, i32 2
  %234 = load i64, ptr %233, align 8, !tbaa !46
  %235 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %234, i64 %217), !nosanitize !16
  %236 = extractvalue { i64, i1 } %235, 1, !nosanitize !16
  br i1 %236, label %237, label %238, !nosanitize !16

237:                                              ; preds = %230
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

238:                                              ; preds = %230
  %239 = extractvalue { i64, i1 } %235, 0, !nosanitize !16
  store i64 %239, ptr %233, align 8, !tbaa !46
  %240 = load ptr, ptr %0, align 8, !tbaa !18
  %241 = getelementptr inbounds %struct.z_stream_s, ptr %240, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !88
  br label %243

243:                                              ; preds = %202, %238
  %244 = phi ptr [ %205, %202 ], [ %242, %238 ]
  %245 = phi ptr [ %203, %202 ], [ %240, %238 ]
  %246 = getelementptr inbounds %struct.z_stream_s, ptr %245, i64 0, i32 3
  %247 = zext i32 %200 to i64
  %248 = getelementptr inbounds i8, ptr %244, i64 %247
  store ptr %248, ptr %246, align 8, !tbaa !88
  %249 = getelementptr inbounds %struct.z_stream_s, ptr %245, i64 0, i32 4
  %250 = load i32, ptr %249, align 8, !tbaa !89
  %251 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %250, i32 %200), !nosanitize !16
  %252 = extractvalue { i32, i1 } %251, 1, !nosanitize !16
  br i1 %252, label %7, label %253, !nosanitize !16

253:                                              ; preds = %243
  %254 = extractvalue { i32, i1 } %251, 0, !nosanitize !16
  store i32 %254, ptr %249, align 8, !tbaa !89
  %255 = getelementptr inbounds %struct.z_stream_s, ptr %245, i64 0, i32 5
  %256 = load i64, ptr %255, align 8, !tbaa !90
  %257 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %256, i64 %247), !nosanitize !16
  %258 = extractvalue { i64, i1 } %257, 1, !nosanitize !16
  br i1 %258, label %31, label %259, !nosanitize !16

259:                                              ; preds = %253
  %260 = extractvalue { i64, i1 } %257, 0, !nosanitize !16
  store i64 %260, ptr %255, align 8, !tbaa !90
  br label %261

261:                                              ; preds = %199, %259
  br i1 %82, label %262, label %27, !llvm.loop !109

262:                                              ; preds = %261
  %263 = load ptr, ptr %0, align 8, !tbaa !18
  br label %264

264:                                              ; preds = %71, %64, %32, %262
  %265 = phi ptr [ %263, %262 ], [ %35, %32 ], [ %35, %64 ], [ %35, %71 ]
  %266 = phi i1 [ false, %262 ], [ true, %32 ], [ true, %64 ], [ true, %71 ]
  %267 = getelementptr inbounds %struct.z_stream_s, ptr %265, i64 0, i32 1
  %268 = load i32, ptr %267, align 8, !tbaa !72
  %269 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %268), !nosanitize !16
  %270 = extractvalue { i32, i1 } %269, 0, !nosanitize !16
  %271 = extractvalue { i32, i1 } %269, 1, !nosanitize !16
  br i1 %271, label %7, label %272, !nosanitize !16

272:                                              ; preds = %264
  %273 = icmp eq i32 %270, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %272
  %275 = load i32, ptr %19, align 4, !tbaa !64
  %276 = zext i32 %275 to i64
  br label %349

277:                                              ; preds = %272
  %278 = load i32, ptr %10, align 8, !tbaa !25
  %279 = icmp ult i32 %270, %278
  br i1 %279, label %289, label %280

280:                                              ; preds = %277
  %281 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 54
  store i32 2, ptr %281, align 8, !tbaa !106
  %282 = load ptr, ptr %26, align 8, !tbaa !28
  %283 = load ptr, ptr %265, align 8, !tbaa !73
  %284 = zext i32 %278 to i64
  %285 = sub nsw i64 0, %284
  %286 = getelementptr inbounds i8, ptr %283, i64 %285
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %282, ptr align 1 %286, i64 %284, i1 false)
  %287 = load i32, ptr %10, align 8, !tbaa !25
  store i32 %287, ptr %19, align 4, !tbaa !64
  %288 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i32 %287, ptr %288, align 4, !tbaa !67
  br label %346

289:                                              ; preds = %277
  %290 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %291 = load i64, ptr %290, align 8, !tbaa !52
  %292 = load i32, ptr %19, align 4, !tbaa !64
  %293 = zext i32 %292 to i64
  %294 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %291, i64 %293), !nosanitize !16
  %295 = extractvalue { i64, i1 } %294, 1, !nosanitize !16
  br i1 %295, label %7, label %296, !nosanitize !16

296:                                              ; preds = %289
  %297 = extractvalue { i64, i1 } %294, 0, !nosanitize !16
  %298 = zext i32 %270 to i64
  %299 = icmp ugt i64 %297, %298
  br i1 %299, label %320, label %300

300:                                              ; preds = %296
  %301 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %292, i32 %278), !nosanitize !16
  %302 = extractvalue { i32, i1 } %301, 1, !nosanitize !16
  br i1 %302, label %7, label %303, !nosanitize !16

303:                                              ; preds = %300
  %304 = extractvalue { i32, i1 } %301, 0, !nosanitize !16
  store i32 %304, ptr %19, align 4, !tbaa !64
  %305 = load ptr, ptr %26, align 8, !tbaa !28
  %306 = zext i32 %278 to i64
  %307 = getelementptr inbounds i8, ptr %305, i64 %306
  %308 = zext i32 %304 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %305, ptr nonnull align 1 %307, i64 %308, i1 false)
  %309 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 54
  %310 = load i32, ptr %309, align 8, !tbaa !106
  %311 = icmp ult i32 %310, 2
  br i1 %311, label %312, label %314

312:                                              ; preds = %303
  %313 = add nuw nsw i32 %310, 1
  store i32 %313, ptr %309, align 8, !tbaa !106
  br label %314

314:                                              ; preds = %312, %303
  %315 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %316 = load i32, ptr %315, align 4, !tbaa !67
  %317 = load i32, ptr %19, align 4, !tbaa !64
  %318 = icmp ugt i32 %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %314
  store i32 %317, ptr %315, align 4, !tbaa !67
  br label %320

320:                                              ; preds = %314, %319, %296
  %321 = phi i32 [ %317, %314 ], [ %317, %319 ], [ %292, %296 ]
  %322 = load ptr, ptr %26, align 8, !tbaa !28
  %323 = zext i32 %321 to i64
  %324 = getelementptr inbounds i8, ptr %322, i64 %323
  %325 = load ptr, ptr %0, align 8, !tbaa !18
  %326 = load ptr, ptr %325, align 8, !tbaa !73
  %327 = sub nsw i64 0, %298
  %328 = getelementptr inbounds i8, ptr %326, i64 %327
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %324, ptr nonnull align 1 %328, i64 %298, i1 false)
  %329 = load i32, ptr %19, align 4, !tbaa !64
  %330 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %329, i32 %270), !nosanitize !16
  %331 = extractvalue { i32, i1 } %330, 1, !nosanitize !16
  br i1 %331, label %31, label %332, !nosanitize !16

332:                                              ; preds = %320
  %333 = extractvalue { i32, i1 } %330, 0, !nosanitize !16
  store i32 %333, ptr %19, align 4, !tbaa !64
  %334 = load i32, ptr %10, align 8, !tbaa !25
  %335 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %336 = load i32, ptr %335, align 4, !tbaa !67
  %337 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %334, i32 %336), !nosanitize !16
  %338 = extractvalue { i32, i1 } %337, 1, !nosanitize !16
  br i1 %338, label %7, label %339, !nosanitize !16

339:                                              ; preds = %332
  %340 = extractvalue { i32, i1 } %337, 0, !nosanitize !16
  %341 = tail call i32 @llvm.umin.i32(i32 %270, i32 %340)
  %342 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %336, i32 %341), !nosanitize !16
  %343 = extractvalue { i32, i1 } %342, 1, !nosanitize !16
  br i1 %343, label %31, label %344, !nosanitize !16

344:                                              ; preds = %339
  %345 = extractvalue { i32, i1 } %342, 0, !nosanitize !16
  store i32 %345, ptr %335, align 4, !tbaa !67
  br label %346

346:                                              ; preds = %344, %280
  %347 = phi i32 [ %333, %344 ], [ %287, %280 ]
  %348 = zext i32 %347 to i64
  store i64 %348, ptr %20, align 8, !tbaa !65
  br label %349

349:                                              ; preds = %274, %346
  %350 = phi i64 [ %276, %274 ], [ %348, %346 ]
  %351 = phi i32 [ %275, %274 ], [ %347, %346 ]
  %352 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 59
  %353 = load i64, ptr %352, align 8, !tbaa !32
  %354 = icmp ult i64 %353, %350
  br i1 %354, label %355, label %356

355:                                              ; preds = %349
  store i64 %350, ptr %352, align 8, !tbaa !32
  br label %356

356:                                              ; preds = %355, %349
  br i1 %266, label %357, label %572

357:                                              ; preds = %356
  %358 = icmp ne i32 %1, 0
  switch i32 %1, label %359 [
    i32 4, label %367
    i32 0, label %367
  ]

359:                                              ; preds = %357
  %360 = load ptr, ptr %0, align 8, !tbaa !18
  %361 = getelementptr inbounds %struct.z_stream_s, ptr %360, i64 0, i32 1
  %362 = load i32, ptr %361, align 8, !tbaa !72
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %359
  %365 = load i64, ptr %20, align 8, !tbaa !65
  %366 = icmp eq i64 %365, %350
  br i1 %366, label %575, label %367

367:                                              ; preds = %357, %357, %364, %359
  %368 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %369 = load i64, ptr %368, align 8, !tbaa !52
  %370 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %369, i64 %350), !nosanitize !16
  %371 = extractvalue { i64, i1 } %370, 1, !nosanitize !16
  br i1 %371, label %7, label %372, !nosanitize !16

372:                                              ; preds = %367
  %373 = extractvalue { i64, i1 } %370, 0, !nosanitize !16
  %374 = trunc i64 %373 to i32
  %375 = load ptr, ptr %0, align 8, !tbaa !18
  %376 = getelementptr inbounds %struct.z_stream_s, ptr %375, i64 0, i32 1
  %377 = load i32, ptr %376, align 8, !tbaa !72
  %378 = icmp ugt i32 %377, %374
  br i1 %378, label %379, label %409

379:                                              ; preds = %372
  %380 = load i64, ptr %20, align 8, !tbaa !65
  %381 = load i32, ptr %10, align 8, !tbaa !25
  %382 = zext i32 %381 to i64
  %383 = icmp slt i64 %380, %382
  br i1 %383, label %409, label %384

384:                                              ; preds = %379
  %385 = sub nsw i64 %380, %382
  store i64 %385, ptr %20, align 8, !tbaa !65
  %386 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %351, i32 %381), !nosanitize !16
  %387 = extractvalue { i32, i1 } %386, 1, !nosanitize !16
  br i1 %387, label %7, label %388, !nosanitize !16

388:                                              ; preds = %384
  %389 = extractvalue { i32, i1 } %386, 0, !nosanitize !16
  store i32 %389, ptr %19, align 4, !tbaa !64
  %390 = load ptr, ptr %26, align 8, !tbaa !28
  %391 = getelementptr inbounds i8, ptr %390, i64 %382
  %392 = zext i32 %389 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %390, ptr align 1 %391, i64 %392, i1 false)
  %393 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 54
  %394 = load i32, ptr %393, align 8, !tbaa !106
  %395 = icmp ult i32 %394, 2
  br i1 %395, label %396, label %398

396:                                              ; preds = %388
  %397 = add nuw nsw i32 %394, 1
  store i32 %397, ptr %393, align 8, !tbaa !106
  br label %398

398:                                              ; preds = %396, %388
  %399 = load i32, ptr %10, align 8, !tbaa !25
  %400 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %374, i32 %399), !nosanitize !16
  %401 = extractvalue { i32, i1 } %400, 0, !nosanitize !16
  %402 = extractvalue { i32, i1 } %400, 1, !nosanitize !16
  br i1 %402, label %31, label %403, !nosanitize !16

403:                                              ; preds = %398
  %404 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %405 = load i32, ptr %404, align 4, !tbaa !67
  %406 = load i32, ptr %19, align 4, !tbaa !64
  %407 = icmp ugt i32 %405, %406
  br i1 %407, label %408, label %409

408:                                              ; preds = %403
  store i32 %406, ptr %404, align 4, !tbaa !67
  br label %409

409:                                              ; preds = %403, %408, %379, %372
  %410 = phi i32 [ %406, %408 ], [ %406, %403 ], [ %351, %379 ], [ %351, %372 ]
  %411 = phi i32 [ %401, %408 ], [ %401, %403 ], [ %374, %379 ], [ %374, %372 ]
  %412 = load ptr, ptr %0, align 8, !tbaa !18
  %413 = getelementptr inbounds %struct.z_stream_s, ptr %412, i64 0, i32 1
  %414 = load i32, ptr %413, align 8, !tbaa !72
  %415 = tail call i32 @llvm.umin.i32(i32 %411, i32 %414)
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %467, label %417

417:                                              ; preds = %409
  %418 = load ptr, ptr %26, align 8, !tbaa !28
  %419 = zext i32 %410 to i64
  %420 = getelementptr inbounds i8, ptr %418, i64 %419
  %421 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %414, i32 %415), !nosanitize !16
  %422 = extractvalue { i32, i1 } %421, 1, !nosanitize !16
  br i1 %422, label %423, label %424, !nosanitize !16

423:                                              ; preds = %417
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

424:                                              ; preds = %417
  %425 = extractvalue { i32, i1 } %421, 0, !nosanitize !16
  store i32 %425, ptr %413, align 8, !tbaa !72
  %426 = load ptr, ptr %412, align 8, !tbaa !73
  %427 = zext i32 %415 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %420, ptr align 1 %426, i64 %427, i1 false)
  %428 = getelementptr inbounds %struct.z_stream_s, ptr %412, i64 0, i32 7
  %429 = load ptr, ptr %428, align 8, !tbaa !17
  %430 = getelementptr inbounds %struct.internal_state, ptr %429, i64 0, i32 6
  %431 = load i32, ptr %430, align 8, !tbaa !23
  switch i32 %431, label %440 [
    i32 1, label %432
    i32 2, label %436
  ]

432:                                              ; preds = %424
  %433 = getelementptr inbounds %struct.z_stream_s, ptr %412, i64 0, i32 12
  %434 = load i64, ptr %433, align 8, !tbaa !50
  %435 = tail call i64 @adler32(i64 noundef %434, ptr noundef %420, i32 noundef %415) #10
  store i64 %435, ptr %433, align 8, !tbaa !50
  br label %440

436:                                              ; preds = %424
  %437 = getelementptr inbounds %struct.z_stream_s, ptr %412, i64 0, i32 12
  %438 = load i64, ptr %437, align 8, !tbaa !50
  %439 = tail call i64 @crc32(i64 noundef %438, ptr noundef %420, i32 noundef %415) #10
  store i64 %439, ptr %437, align 8, !tbaa !50
  br label %440

440:                                              ; preds = %436, %432, %424
  %441 = load ptr, ptr %412, align 8, !tbaa !73
  %442 = getelementptr inbounds i8, ptr %441, i64 %427
  store ptr %442, ptr %412, align 8, !tbaa !73
  %443 = getelementptr inbounds %struct.z_stream_s, ptr %412, i64 0, i32 2
  %444 = load i64, ptr %443, align 8, !tbaa !46
  %445 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %444, i64 %427), !nosanitize !16
  %446 = extractvalue { i64, i1 } %445, 1, !nosanitize !16
  br i1 %446, label %447, label %448, !nosanitize !16

447:                                              ; preds = %440
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

448:                                              ; preds = %440
  %449 = extractvalue { i64, i1 } %445, 0, !nosanitize !16
  store i64 %449, ptr %443, align 8, !tbaa !46
  %450 = load i32, ptr %19, align 4, !tbaa !64
  %451 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %450, i32 %415), !nosanitize !16
  %452 = extractvalue { i32, i1 } %451, 1, !nosanitize !16
  br i1 %452, label %31, label %453, !nosanitize !16

453:                                              ; preds = %448
  %454 = extractvalue { i32, i1 } %451, 0, !nosanitize !16
  store i32 %454, ptr %19, align 4, !tbaa !64
  %455 = load i32, ptr %10, align 8, !tbaa !25
  %456 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %457 = load i32, ptr %456, align 4, !tbaa !67
  %458 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %455, i32 %457), !nosanitize !16
  %459 = extractvalue { i32, i1 } %458, 1, !nosanitize !16
  br i1 %459, label %7, label %460, !nosanitize !16

460:                                              ; preds = %453
  %461 = extractvalue { i32, i1 } %458, 0, !nosanitize !16
  %462 = tail call i32 @llvm.umin.i32(i32 %415, i32 %461)
  %463 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %457, i32 %462), !nosanitize !16
  %464 = extractvalue { i32, i1 } %463, 1, !nosanitize !16
  br i1 %464, label %31, label %465, !nosanitize !16

465:                                              ; preds = %460
  %466 = extractvalue { i32, i1 } %463, 0, !nosanitize !16
  store i32 %466, ptr %456, align 4, !tbaa !67
  br label %467

467:                                              ; preds = %465, %409
  %468 = phi i32 [ %454, %465 ], [ %410, %409 ]
  %469 = load i64, ptr %352, align 8, !tbaa !32
  %470 = zext i32 %468 to i64
  %471 = icmp ult i64 %469, %470
  br i1 %471, label %472, label %473

472:                                              ; preds = %467
  store i64 %470, ptr %352, align 8, !tbaa !32
  br label %473

473:                                              ; preds = %472, %467
  %474 = load i32, ptr %18, align 4, !tbaa !83
  %475 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %474, i32 42), !nosanitize !16
  %476 = extractvalue { i32, i1 } %475, 1, !nosanitize !16
  br i1 %476, label %31, label %477, !nosanitize !16

477:                                              ; preds = %473
  %478 = extractvalue { i32, i1 } %475, 0, !nosanitize !16
  %479 = lshr i32 %478, 3
  %480 = load i64, ptr %3, align 8, !tbaa !35
  %481 = zext nneg i32 %479 to i64
  %482 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %480, i64 %481), !nosanitize !16
  %483 = extractvalue { i64, i1 } %482, 1, !nosanitize !16
  br i1 %483, label %7, label %484, !nosanitize !16

484:                                              ; preds = %477
  %485 = extractvalue { i64, i1 } %482, 0, !nosanitize !16
  %486 = tail call i64 @llvm.umin.i64(i64 %485, i64 65535)
  %487 = trunc i64 %486 to i32
  %488 = load i64, ptr %20, align 8, !tbaa !65
  %489 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %470, i64 %488), !nosanitize !16
  %490 = extractvalue { i64, i1 } %489, 1, !nosanitize !16
  br i1 %490, label %7, label %491, !nosanitize !16

491:                                              ; preds = %484
  %492 = load i32, ptr %10, align 8, !tbaa !25
  %493 = tail call i32 @llvm.umin.i32(i32 %492, i32 %487)
  %494 = extractvalue { i64, i1 } %489, 0, !nosanitize !16
  %495 = trunc i64 %494 to i32
  %496 = icmp ugt i32 %493, %495
  br i1 %496, label %497, label %506

497:                                              ; preds = %491
  %498 = icmp ne i32 %495, 0
  %499 = or i1 %23, %498
  %500 = and i1 %358, %499
  br i1 %500, label %501, label %575

501:                                              ; preds = %497
  %502 = load ptr, ptr %0, align 8, !tbaa !18
  %503 = getelementptr inbounds %struct.z_stream_s, ptr %502, i64 0, i32 1
  %504 = load i32, ptr %503, align 8, !tbaa !72
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %575

506:                                              ; preds = %501, %491
  %507 = tail call i32 @llvm.umin.i32(i32 %487, i32 %495)
  br i1 %23, label %508, label %516

508:                                              ; preds = %506
  %509 = load ptr, ptr %0, align 8, !tbaa !18
  %510 = getelementptr inbounds %struct.z_stream_s, ptr %509, i64 0, i32 1
  %511 = load i32, ptr %510, align 8, !tbaa !72
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %516

513:                                              ; preds = %508
  %514 = icmp uge i32 %487, %495
  %515 = zext i1 %514 to i32
  br label %516

516:                                              ; preds = %513, %508, %506
  %517 = phi i32 [ 0, %508 ], [ 0, %506 ], [ %515, %513 ]
  %518 = load ptr, ptr %26, align 8, !tbaa !28
  %519 = getelementptr inbounds i8, ptr %518, i64 %488
  %520 = zext nneg i32 %507 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %519, i64 noundef %520, i32 noundef %517) #10
  %521 = load i64, ptr %20, align 8, !tbaa !65
  %522 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %521, i64 %520), !nosanitize !16
  %523 = extractvalue { i64, i1 } %522, 1, !nosanitize !16
  br i1 %523, label %31, label %524, !nosanitize !16

524:                                              ; preds = %516
  %525 = extractvalue { i64, i1 } %522, 0, !nosanitize !16
  store i64 %525, ptr %20, align 8, !tbaa !65
  %526 = load ptr, ptr %0, align 8, !tbaa !18
  %527 = getelementptr inbounds %struct.z_stream_s, ptr %526, i64 0, i32 7
  %528 = load ptr, ptr %527, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %528) #10
  %529 = getelementptr inbounds %struct.internal_state, ptr %528, i64 0, i32 5
  %530 = load i64, ptr %529, align 8, !tbaa !48
  %531 = getelementptr inbounds %struct.z_stream_s, ptr %526, i64 0, i32 4
  %532 = load i32, ptr %531, align 8, !tbaa !89
  %533 = zext i32 %532 to i64
  %534 = icmp ugt i64 %530, %533
  %535 = trunc i64 %530 to i32
  %536 = select i1 %534, i32 %532, i32 %535
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %570, label %538

538:                                              ; preds = %524
  %539 = getelementptr inbounds %struct.z_stream_s, ptr %526, i64 0, i32 3
  %540 = load ptr, ptr %539, align 8, !tbaa !88
  %541 = getelementptr inbounds %struct.internal_state, ptr %528, i64 0, i32 4
  %542 = load ptr, ptr %541, align 8, !tbaa !49
  %543 = zext i32 %536 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %540, ptr align 1 %542, i64 %543, i1 false)
  %544 = load ptr, ptr %539, align 8, !tbaa !88
  %545 = getelementptr inbounds i8, ptr %544, i64 %543
  store ptr %545, ptr %539, align 8, !tbaa !88
  %546 = load ptr, ptr %541, align 8, !tbaa !49
  %547 = getelementptr inbounds i8, ptr %546, i64 %543
  store ptr %547, ptr %541, align 8, !tbaa !49
  %548 = getelementptr inbounds %struct.z_stream_s, ptr %526, i64 0, i32 5
  %549 = load i64, ptr %548, align 8, !tbaa !90
  %550 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %549, i64 %543), !nosanitize !16
  %551 = extractvalue { i64, i1 } %550, 1, !nosanitize !16
  br i1 %551, label %552, label %553, !nosanitize !16

552:                                              ; preds = %538
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

553:                                              ; preds = %538
  %554 = extractvalue { i64, i1 } %550, 0, !nosanitize !16
  store i64 %554, ptr %548, align 8, !tbaa !90
  %555 = load i32, ptr %531, align 8, !tbaa !89
  %556 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %555, i32 %536), !nosanitize !16
  %557 = extractvalue { i32, i1 } %556, 1, !nosanitize !16
  br i1 %557, label %558, label %559, !nosanitize !16

558:                                              ; preds = %559, %553
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

559:                                              ; preds = %553
  %560 = extractvalue { i32, i1 } %556, 0, !nosanitize !16
  store i32 %560, ptr %531, align 8, !tbaa !89
  %561 = load i64, ptr %529, align 8, !tbaa !48
  %562 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %561, i64 %543), !nosanitize !16
  %563 = extractvalue { i64, i1 } %562, 1, !nosanitize !16
  br i1 %563, label %558, label %564, !nosanitize !16

564:                                              ; preds = %559
  %565 = extractvalue { i64, i1 } %562, 0, !nosanitize !16
  store i64 %565, ptr %529, align 8, !tbaa !48
  %566 = icmp eq i64 %565, 0
  br i1 %566, label %567, label %570

567:                                              ; preds = %564
  %568 = getelementptr inbounds %struct.internal_state, ptr %528, i64 0, i32 2
  %569 = load ptr, ptr %568, align 8, !tbaa !34
  store ptr %569, ptr %541, align 8, !tbaa !49
  br label %570

570:                                              ; preds = %524, %564, %567
  %571 = icmp eq i32 %517, 0
  br i1 %571, label %575, label %572

572:                                              ; preds = %570, %356
  %573 = phi i32 [ 3, %356 ], [ 2, %570 ]
  %574 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 58
  store i32 8, ptr %574, align 8, !tbaa !84
  br label %575

575:                                              ; preds = %572, %570, %497, %501, %364
  %576 = phi i32 [ 1, %364 ], [ 0, %570 ], [ 0, %497 ], [ 0, %501 ], [ %573, %572 ]
  ret i32 %576
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @deflate_huff(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 19
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 60
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 18
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 13
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 59
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  br label %24

24:                                               ; preds = %411, %2
  %25 = load i32, ptr %3, align 4, !tbaa !66
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %297

27:                                               ; preds = %24
  %28 = load i32, ptr %4, align 8, !tbaa !25
  %29 = zext i32 %28 to i64
  br label %30

30:                                               ; preds = %246, %27
  %31 = phi i32 [ %178, %246 ], [ 0, %27 ]
  %32 = load i64, ptr %5, align 8, !tbaa !52
  %33 = zext nneg i32 %31 to i64
  %34 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %32, i64 %33), !nosanitize !16
  %35 = extractvalue { i64, i1 } %34, 1, !nosanitize !16
  br i1 %35, label %36, label %37, !nosanitize !16

36:                                               ; preds = %274, %262, %185, %73, %68, %60, %57, %43, %37, %30
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

37:                                               ; preds = %30
  %38 = extractvalue { i64, i1 } %34, 0, !nosanitize !16
  %39 = load i32, ptr %6, align 4, !tbaa !64
  %40 = zext i32 %39 to i64
  %41 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %38, i64 %40), !nosanitize !16
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !16
  br i1 %42, label %36, label %43, !nosanitize !16

43:                                               ; preds = %37
  %44 = extractvalue { i64, i1 } %41, 0, !nosanitize !16
  %45 = trunc i64 %44 to i32
  %46 = load i32, ptr %4, align 8, !tbaa !25
  %47 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %46, i32 262), !nosanitize !16
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !16
  br i1 %48, label %36, label %49, !nosanitize !16

49:                                               ; preds = %43
  %50 = extractvalue { i32, i1 } %47, 0, !nosanitize !16
  %51 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %28, i32 %50), !nosanitize !16
  %52 = extractvalue { i32, i1 } %51, 1, !nosanitize !16
  br i1 %52, label %53, label %54, !nosanitize !16

53:                                               ; preds = %277, %190, %177, %173, %120, %49, %217, %214
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

54:                                               ; preds = %49
  %55 = extractvalue { i32, i1 } %51, 0, !nosanitize !16
  %56 = icmp ult i32 %39, %55
  br i1 %56, label %126, label %57

57:                                               ; preds = %54
  %58 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %28, i32 %45), !nosanitize !16
  %59 = extractvalue { i32, i1 } %58, 1, !nosanitize !16
  br i1 %59, label %36, label %60, !nosanitize !16

60:                                               ; preds = %57
  %61 = extractvalue { i32, i1 } %58, 0, !nosanitize !16
  %62 = load ptr, ptr %7, align 8, !tbaa !28
  %63 = getelementptr inbounds i8, ptr %62, i64 %29
  %64 = zext i32 %61 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 1 %63, i64 %64, i1 false)
  %65 = load i32, ptr %8, align 8, !tbaa !74
  %66 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %65, i32 %28), !nosanitize !16
  %67 = extractvalue { i32, i1 } %66, 1, !nosanitize !16
  br i1 %67, label %36, label %68, !nosanitize !16

68:                                               ; preds = %60
  %69 = extractvalue { i32, i1 } %66, 0, !nosanitize !16
  store i32 %69, ptr %8, align 8, !tbaa !74
  %70 = load i32, ptr %6, align 4, !tbaa !64
  %71 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %70, i32 %28), !nosanitize !16
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !16
  br i1 %72, label %36, label %73, !nosanitize !16

73:                                               ; preds = %68
  %74 = extractvalue { i32, i1 } %71, 0, !nosanitize !16
  store i32 %74, ptr %6, align 4, !tbaa !64
  %75 = load i64, ptr %9, align 8, !tbaa !65
  %76 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %75, i64 %29), !nosanitize !16
  %77 = extractvalue { i64, i1 } %76, 1, !nosanitize !16
  br i1 %77, label %36, label %78, !nosanitize !16

78:                                               ; preds = %73
  %79 = extractvalue { i64, i1 } %76, 0, !nosanitize !16
  store i64 %79, ptr %9, align 8, !tbaa !65
  %80 = load i32, ptr %10, align 4, !tbaa !67
  %81 = icmp ugt i32 %80, %74
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 %74, ptr %10, align 4, !tbaa !67
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i32, ptr %4, align 8, !tbaa !25
  %85 = load i32, ptr %11, align 4, !tbaa !30
  %86 = load ptr, ptr %12, align 8, !tbaa !31
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds i16, ptr %86, i64 %87
  br label %89

89:                                               ; preds = %100, %83
  %90 = phi ptr [ %88, %83 ], [ %92, %100 ]
  %91 = phi i32 [ %85, %83 ], [ %101, %100 ]
  %92 = getelementptr inbounds i16, ptr %90, i64 -1
  %93 = load i16, ptr %92, align 2, !tbaa !53
  %94 = zext i16 %93 to i32
  %95 = tail call i32 @llvm.usub.sat.i32(i32 %94, i32 %84)
  %96 = trunc i32 %95 to i16
  store i16 %96, ptr %92, align 2, !tbaa !53
  %97 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %91, i32 1), !nosanitize !16
  %98 = extractvalue { i32, i1 } %97, 1, !nosanitize !16
  br i1 %98, label %99, label %100, !nosanitize !16

99:                                               ; preds = %89, %107
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

100:                                              ; preds = %89
  %101 = extractvalue { i32, i1 } %97, 0, !nosanitize !16
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %89, !llvm.loop !75

103:                                              ; preds = %100
  %104 = load ptr, ptr %13, align 8, !tbaa !29
  %105 = zext i32 %84 to i64
  %106 = getelementptr inbounds i16, ptr %104, i64 %105
  br label %107

107:                                              ; preds = %117, %103
  %108 = phi ptr [ %106, %103 ], [ %110, %117 ]
  %109 = phi i32 [ %84, %103 ], [ %118, %117 ]
  %110 = getelementptr inbounds i16, ptr %108, i64 -1
  %111 = load i16, ptr %110, align 2, !tbaa !53
  %112 = zext i16 %111 to i32
  %113 = tail call i32 @llvm.usub.sat.i32(i32 %112, i32 %84)
  %114 = trunc i32 %113 to i16
  store i16 %114, ptr %110, align 2, !tbaa !53
  %115 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %109, i32 1), !nosanitize !16
  %116 = extractvalue { i32, i1 } %115, 1, !nosanitize !16
  br i1 %116, label %99, label %117, !nosanitize !16

117:                                              ; preds = %107
  %118 = extractvalue { i32, i1 } %115, 0, !nosanitize !16
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %107, !llvm.loop !77

120:                                              ; preds = %117
  store i32 1, ptr %14, align 8, !tbaa !54
  %121 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %45, i32 %28), !nosanitize !16
  %122 = extractvalue { i32, i1 } %121, 1, !nosanitize !16
  br i1 %122, label %53, label %123, !nosanitize !16

123:                                              ; preds = %120
  %124 = extractvalue { i32, i1 } %121, 0, !nosanitize !16
  %125 = load i32, ptr %3, align 4, !tbaa !66
  br label %126

126:                                              ; preds = %123, %54
  %127 = phi i32 [ %125, %123 ], [ %31, %54 ]
  %128 = phi i32 [ %74, %123 ], [ %39, %54 ]
  %129 = phi i32 [ %124, %123 ], [ %45, %54 ]
  %130 = load ptr, ptr %0, align 8, !tbaa !18
  %131 = getelementptr inbounds %struct.z_stream_s, ptr %130, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !72
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %251, label %134

134:                                              ; preds = %126
  %135 = load ptr, ptr %7, align 8, !tbaa !28
  %136 = zext i32 %128 to i64
  %137 = getelementptr inbounds i8, ptr %135, i64 %136
  %138 = zext i32 %127 to i64
  %139 = getelementptr inbounds i8, ptr %137, i64 %138
  %140 = tail call i32 @llvm.umin.i32(i32 %132, i32 %129)
  %141 = icmp eq i32 %129, 0
  br i1 %141, label %173, label %142

142:                                              ; preds = %134
  %143 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %132, i32 %140), !nosanitize !16
  %144 = extractvalue { i32, i1 } %143, 1, !nosanitize !16
  br i1 %144, label %145, label %146, !nosanitize !16

145:                                              ; preds = %142
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

146:                                              ; preds = %142
  %147 = extractvalue { i32, i1 } %143, 0, !nosanitize !16
  store i32 %147, ptr %131, align 8, !tbaa !72
  %148 = load ptr, ptr %130, align 8, !tbaa !73
  %149 = zext i32 %140 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %139, ptr align 1 %148, i64 %149, i1 false)
  %150 = getelementptr inbounds %struct.z_stream_s, ptr %130, i64 0, i32 7
  %151 = load ptr, ptr %150, align 8, !tbaa !17
  %152 = getelementptr inbounds %struct.internal_state, ptr %151, i64 0, i32 6
  %153 = load i32, ptr %152, align 8, !tbaa !23
  switch i32 %153, label %162 [
    i32 1, label %154
    i32 2, label %158
  ]

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.z_stream_s, ptr %130, i64 0, i32 12
  %156 = load i64, ptr %155, align 8, !tbaa !50
  %157 = tail call i64 @adler32(i64 noundef %156, ptr noundef %139, i32 noundef %140) #10
  store i64 %157, ptr %155, align 8, !tbaa !50
  br label %162

158:                                              ; preds = %146
  %159 = getelementptr inbounds %struct.z_stream_s, ptr %130, i64 0, i32 12
  %160 = load i64, ptr %159, align 8, !tbaa !50
  %161 = tail call i64 @crc32(i64 noundef %160, ptr noundef %139, i32 noundef %140) #10
  store i64 %161, ptr %159, align 8, !tbaa !50
  br label %162

162:                                              ; preds = %158, %154, %146
  %163 = load ptr, ptr %130, align 8, !tbaa !73
  %164 = getelementptr inbounds i8, ptr %163, i64 %149
  store ptr %164, ptr %130, align 8, !tbaa !73
  %165 = getelementptr inbounds %struct.z_stream_s, ptr %130, i64 0, i32 2
  %166 = load i64, ptr %165, align 8, !tbaa !46
  %167 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %166, i64 %149), !nosanitize !16
  %168 = extractvalue { i64, i1 } %167, 1, !nosanitize !16
  br i1 %168, label %169, label %170, !nosanitize !16

169:                                              ; preds = %162
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

170:                                              ; preds = %162
  %171 = extractvalue { i64, i1 } %167, 0, !nosanitize !16
  store i64 %171, ptr %165, align 8, !tbaa !46
  %172 = load i32, ptr %3, align 4, !tbaa !66
  br label %173

173:                                              ; preds = %170, %134
  %174 = phi i32 [ %127, %134 ], [ %172, %170 ]
  %175 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %174, i32 %140), !nosanitize !16
  %176 = extractvalue { i32, i1 } %175, 1, !nosanitize !16
  br i1 %176, label %53, label %177, !nosanitize !16

177:                                              ; preds = %173
  %178 = extractvalue { i32, i1 } %175, 0, !nosanitize !16
  store i32 %178, ptr %3, align 4, !tbaa !66
  %179 = load i32, ptr %10, align 4, !tbaa !67
  %180 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %178, i32 %179), !nosanitize !16
  %181 = extractvalue { i32, i1 } %180, 1, !nosanitize !16
  br i1 %181, label %53, label %182, !nosanitize !16

182:                                              ; preds = %177
  %183 = extractvalue { i32, i1 } %180, 0, !nosanitize !16
  %184 = icmp ugt i32 %183, 2
  br i1 %184, label %185, label %244

185:                                              ; preds = %182
  %186 = load i32, ptr %6, align 4, !tbaa !64
  %187 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %186, i32 %179), !nosanitize !16
  %188 = extractvalue { i32, i1 } %187, 0, !nosanitize !16
  %189 = extractvalue { i32, i1 } %187, 1, !nosanitize !16
  br i1 %189, label %36, label %190, !nosanitize !16

190:                                              ; preds = %185
  %191 = load ptr, ptr %7, align 8, !tbaa !28
  %192 = zext i32 %188 to i64
  %193 = getelementptr inbounds i8, ptr %191, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !5
  %195 = zext i8 %194 to i32
  store i32 %195, ptr %15, align 8, !tbaa !71
  %196 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %188, i32 1), !nosanitize !16
  %197 = extractvalue { i32, i1 } %196, 1, !nosanitize !16
  br i1 %197, label %53, label %198, !nosanitize !16

198:                                              ; preds = %190
  %199 = extractvalue { i32, i1 } %196, 0, !nosanitize !16
  %200 = load i32, ptr %16, align 8, !tbaa !45
  %201 = shl i32 %195, %200
  %202 = zext i32 %199 to i64
  %203 = getelementptr inbounds i8, ptr %191, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !5
  %205 = zext i8 %204 to i32
  %206 = xor i32 %201, %205
  %207 = load i32, ptr %17, align 4, !tbaa !44
  %208 = and i32 %206, %207
  store i32 %208, ptr %15, align 8, !tbaa !71
  br label %209

209:                                              ; preds = %240, %198
  %210 = phi i32 [ %208, %198 ], [ %226, %240 ]
  %211 = phi i32 [ %179, %198 ], [ %237, %240 ]
  %212 = phi i32 [ %188, %198 ], [ %241, %240 ]
  %213 = icmp eq i32 %211, 0
  br i1 %213, label %244, label %214

214:                                              ; preds = %209
  %215 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %212, i32 3), !nosanitize !16
  %216 = extractvalue { i32, i1 } %215, 1, !nosanitize !16
  br i1 %216, label %53, label %217, !nosanitize !16

217:                                              ; preds = %214
  %218 = shl i32 %210, %200
  %219 = extractvalue { i32, i1 } %215, 0, !nosanitize !16
  %220 = add i32 %219, -1
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i8, ptr %191, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !5
  %224 = zext i8 %223 to i32
  %225 = xor i32 %218, %224
  %226 = and i32 %225, %207
  store i32 %226, ptr %15, align 8, !tbaa !71
  %227 = load ptr, ptr %12, align 8, !tbaa !31
  %228 = zext i32 %226 to i64
  %229 = getelementptr inbounds i16, ptr %227, i64 %228
  %230 = load i16, ptr %229, align 2, !tbaa !53
  %231 = load ptr, ptr %13, align 8, !tbaa !29
  %232 = load i32, ptr %18, align 8, !tbaa !26
  %233 = and i32 %232, %212
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i16, ptr %231, i64 %234
  store i16 %230, ptr %235, align 2, !tbaa !53
  %236 = trunc i32 %212 to i16
  store i16 %236, ptr %229, align 2, !tbaa !53
  %237 = add i32 %211, -1
  store i32 %237, ptr %10, align 4, !tbaa !67
  %238 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %178, i32 %237), !nosanitize !16
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !16
  br i1 %239, label %53, label %240, !nosanitize !16

240:                                              ; preds = %217
  %241 = add nuw i32 %212, 1
  %242 = extractvalue { i32, i1 } %238, 0, !nosanitize !16
  %243 = icmp ult i32 %242, 3
  br i1 %243, label %244, label %209, !llvm.loop !78

244:                                              ; preds = %240, %209, %182
  %245 = icmp ult i32 %178, 262
  br i1 %245, label %246, label %251

246:                                              ; preds = %244
  %247 = load ptr, ptr %0, align 8, !tbaa !18
  %248 = getelementptr inbounds %struct.z_stream_s, ptr %247, i64 0, i32 1
  %249 = load i32, ptr %248, align 8, !tbaa !72
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %30, !llvm.loop !79

251:                                              ; preds = %246, %244, %126
  %252 = phi i32 [ %178, %246 ], [ %178, %244 ], [ %127, %126 ]
  %253 = load i64, ptr %19, align 8, !tbaa !32
  %254 = load i64, ptr %5, align 8, !tbaa !52
  %255 = icmp ult i64 %253, %254
  br i1 %255, label %256, label %292

256:                                              ; preds = %251
  %257 = load i32, ptr %6, align 4, !tbaa !64
  %258 = zext i32 %257 to i64
  %259 = zext i32 %252 to i64
  %260 = add nuw nsw i64 %259, %258
  %261 = icmp ult i64 %253, %260
  br i1 %261, label %262, label %271

262:                                              ; preds = %256
  %263 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %254, i64 %260), !nosanitize !16
  %264 = extractvalue { i64, i1 } %263, 1, !nosanitize !16
  br i1 %264, label %36, label %265, !nosanitize !16

265:                                              ; preds = %262
  %266 = extractvalue { i64, i1 } %263, 0, !nosanitize !16
  %267 = tail call i64 @llvm.umin.i64(i64 %266, i64 258)
  %268 = load ptr, ptr %7, align 8, !tbaa !28
  %269 = getelementptr inbounds i8, ptr %268, i64 %260
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %269, i8 0, i64 %267, i1 false)
  %270 = add nuw nsw i64 %267, %260
  br label %289

271:                                              ; preds = %256
  %272 = add nuw nsw i64 %260, 258
  %273 = icmp ult i64 %253, %272
  br i1 %273, label %274, label %292

274:                                              ; preds = %271
  %275 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %254, i64 %253), !nosanitize !16
  %276 = extractvalue { i64, i1 } %275, 1, !nosanitize !16
  br i1 %276, label %36, label %277, !nosanitize !16

277:                                              ; preds = %274
  %278 = sub nuw nsw i64 %272, %253
  %279 = extractvalue { i64, i1 } %275, 0, !nosanitize !16
  %280 = tail call i64 @llvm.umin.i64(i64 %278, i64 %279)
  %281 = load ptr, ptr %7, align 8, !tbaa !28
  %282 = getelementptr inbounds i8, ptr %281, i64 %253
  %283 = and i64 %280, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %282, i8 0, i64 %283, i1 false)
  %284 = load i64, ptr %19, align 8, !tbaa !32
  %285 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %284, i64 %280), !nosanitize !16
  %286 = extractvalue { i64, i1 } %285, 1, !nosanitize !16
  br i1 %286, label %53, label %287, !nosanitize !16

287:                                              ; preds = %277
  %288 = extractvalue { i64, i1 } %285, 0, !nosanitize !16
  br label %289

289:                                              ; preds = %287, %265
  %290 = phi i64 [ %270, %265 ], [ %288, %287 ]
  store i64 %290, ptr %19, align 8, !tbaa !32
  %291 = load i32, ptr %3, align 4, !tbaa !66
  br label %292

292:                                              ; preds = %251, %271, %289
  %293 = phi i32 [ %252, %251 ], [ %252, %271 ], [ %291, %289 ]
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %292
  %296 = icmp eq i32 %1, 0
  br i1 %296, label %551, label %412

297:                                              ; preds = %292, %24
  store i32 0, ptr %20, align 8, !tbaa !69
  %298 = load ptr, ptr %7, align 8, !tbaa !28
  %299 = load i32, ptr %6, align 4, !tbaa !64
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds i8, ptr %298, i64 %300
  %302 = load i8, ptr %301, align 1, !tbaa !5
  %303 = load i32, ptr %22, align 4, !tbaa !110
  %304 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %303, i32 1), !nosanitize !16
  %305 = extractvalue { i32, i1 } %304, 1, !nosanitize !16
  br i1 %305, label %306, label %307, !nosanitize !16

306:                                              ; preds = %339, %315, %307, %297
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

307:                                              ; preds = %297
  %308 = extractvalue { i32, i1 } %304, 0, !nosanitize !16
  %309 = load ptr, ptr %21, align 8, !tbaa !37
  store i32 %308, ptr %22, align 4, !tbaa !110
  %310 = zext i32 %303 to i64
  %311 = getelementptr inbounds i8, ptr %309, i64 %310
  store i8 0, ptr %311, align 1, !tbaa !5
  %312 = load i32, ptr %22, align 4, !tbaa !110
  %313 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %312, i32 1), !nosanitize !16
  %314 = extractvalue { i32, i1 } %313, 1, !nosanitize !16
  br i1 %314, label %306, label %315, !nosanitize !16

315:                                              ; preds = %307
  %316 = extractvalue { i32, i1 } %313, 0, !nosanitize !16
  %317 = load ptr, ptr %21, align 8, !tbaa !37
  store i32 %316, ptr %22, align 4, !tbaa !110
  %318 = zext i32 %312 to i64
  %319 = getelementptr inbounds i8, ptr %317, i64 %318
  store i8 0, ptr %319, align 1, !tbaa !5
  %320 = load i32, ptr %22, align 4, !tbaa !110
  %321 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %320, i32 1), !nosanitize !16
  %322 = extractvalue { i32, i1 } %321, 1, !nosanitize !16
  br i1 %322, label %306, label %323, !nosanitize !16

323:                                              ; preds = %315
  %324 = extractvalue { i32, i1 } %321, 0, !nosanitize !16
  %325 = load ptr, ptr %21, align 8, !tbaa !37
  store i32 %324, ptr %22, align 4, !tbaa !110
  %326 = zext i32 %320 to i64
  %327 = getelementptr inbounds i8, ptr %325, i64 %326
  store i8 %302, ptr %327, align 1, !tbaa !5
  %328 = zext i8 %302 to i64
  %329 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %328
  %330 = load i16, ptr %329, align 4, !tbaa !5
  %331 = add i16 %330, 1
  store i16 %331, ptr %329, align 4, !tbaa !5
  %332 = load i32, ptr %22, align 4, !tbaa !110
  %333 = load i32, ptr %23, align 8, !tbaa !38
  %334 = icmp eq i32 %332, %333
  %335 = load i32, ptr %3, align 4, !tbaa !66
  %336 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %335, i32 1), !nosanitize !16
  %337 = extractvalue { i32, i1 } %336, 1, !nosanitize !16
  br i1 %337, label %338, label %339, !nosanitize !16

338:                                              ; preds = %353, %323, %491, %421
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

339:                                              ; preds = %323
  %340 = extractvalue { i32, i1 } %336, 0, !nosanitize !16
  store i32 %340, ptr %3, align 4, !tbaa !66
  %341 = load i32, ptr %6, align 4, !tbaa !64
  %342 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %341, i32 1), !nosanitize !16
  %343 = extractvalue { i32, i1 } %342, 1, !nosanitize !16
  br i1 %343, label %306, label %344, !nosanitize !16

344:                                              ; preds = %339
  %345 = extractvalue { i32, i1 } %342, 0, !nosanitize !16
  store i32 %345, ptr %6, align 4, !tbaa !64
  br i1 %334, label %346, label %411

346:                                              ; preds = %344
  %347 = load i64, ptr %9, align 8, !tbaa !65
  %348 = icmp sgt i64 %347, -1
  br i1 %348, label %349, label %353

349:                                              ; preds = %346
  %350 = load ptr, ptr %7, align 8, !tbaa !28
  %351 = and i64 %347, 4294967295
  %352 = getelementptr inbounds i8, ptr %350, i64 %351
  br label %353

353:                                              ; preds = %346, %349
  %354 = phi ptr [ %352, %349 ], [ null, %346 ]
  %355 = zext i32 %345 to i64
  %356 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %355, i64 %347), !nosanitize !16
  %357 = extractvalue { i64, i1 } %356, 1, !nosanitize !16
  br i1 %357, label %338, label %358, !nosanitize !16

358:                                              ; preds = %353
  %359 = extractvalue { i64, i1 } %356, 0, !nosanitize !16
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %354, i64 noundef %359, i32 noundef 0) #10
  %360 = load i32, ptr %6, align 4, !tbaa !64
  %361 = zext i32 %360 to i64
  store i64 %361, ptr %9, align 8, !tbaa !65
  %362 = load ptr, ptr %0, align 8, !tbaa !18
  %363 = getelementptr inbounds %struct.z_stream_s, ptr %362, i64 0, i32 7
  %364 = load ptr, ptr %363, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %364) #10
  %365 = getelementptr inbounds %struct.internal_state, ptr %364, i64 0, i32 5
  %366 = load i64, ptr %365, align 8, !tbaa !48
  %367 = getelementptr inbounds %struct.z_stream_s, ptr %362, i64 0, i32 4
  %368 = load i32, ptr %367, align 8, !tbaa !89
  %369 = zext i32 %368 to i64
  %370 = icmp ugt i64 %366, %369
  %371 = trunc i64 %366 to i32
  %372 = select i1 %370, i32 %368, i32 %371
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %406, label %374

374:                                              ; preds = %358
  %375 = getelementptr inbounds %struct.z_stream_s, ptr %362, i64 0, i32 3
  %376 = load ptr, ptr %375, align 8, !tbaa !88
  %377 = getelementptr inbounds %struct.internal_state, ptr %364, i64 0, i32 4
  %378 = load ptr, ptr %377, align 8, !tbaa !49
  %379 = zext i32 %372 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %376, ptr align 1 %378, i64 %379, i1 false)
  %380 = load ptr, ptr %375, align 8, !tbaa !88
  %381 = getelementptr inbounds i8, ptr %380, i64 %379
  store ptr %381, ptr %375, align 8, !tbaa !88
  %382 = load ptr, ptr %377, align 8, !tbaa !49
  %383 = getelementptr inbounds i8, ptr %382, i64 %379
  store ptr %383, ptr %377, align 8, !tbaa !49
  %384 = getelementptr inbounds %struct.z_stream_s, ptr %362, i64 0, i32 5
  %385 = load i64, ptr %384, align 8, !tbaa !90
  %386 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %385, i64 %379), !nosanitize !16
  %387 = extractvalue { i64, i1 } %386, 1, !nosanitize !16
  br i1 %387, label %388, label %389, !nosanitize !16

388:                                              ; preds = %374
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

389:                                              ; preds = %374
  %390 = extractvalue { i64, i1 } %386, 0, !nosanitize !16
  store i64 %390, ptr %384, align 8, !tbaa !90
  %391 = load i32, ptr %367, align 8, !tbaa !89
  %392 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %391, i32 %372), !nosanitize !16
  %393 = extractvalue { i32, i1 } %392, 1, !nosanitize !16
  br i1 %393, label %394, label %395, !nosanitize !16

394:                                              ; preds = %395, %389
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

395:                                              ; preds = %389
  %396 = extractvalue { i32, i1 } %392, 0, !nosanitize !16
  store i32 %396, ptr %367, align 8, !tbaa !89
  %397 = load i64, ptr %365, align 8, !tbaa !48
  %398 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %397, i64 %379), !nosanitize !16
  %399 = extractvalue { i64, i1 } %398, 1, !nosanitize !16
  br i1 %399, label %394, label %400, !nosanitize !16

400:                                              ; preds = %395
  %401 = extractvalue { i64, i1 } %398, 0, !nosanitize !16
  store i64 %401, ptr %365, align 8, !tbaa !48
  %402 = icmp eq i64 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %400
  %404 = getelementptr inbounds %struct.internal_state, ptr %364, i64 0, i32 2
  %405 = load ptr, ptr %404, align 8, !tbaa !34
  store ptr %405, ptr %377, align 8, !tbaa !49
  br label %406

406:                                              ; preds = %358, %400, %403
  %407 = load ptr, ptr %0, align 8, !tbaa !18
  %408 = getelementptr inbounds %struct.z_stream_s, ptr %407, i64 0, i32 4
  %409 = load i32, ptr %408, align 8, !tbaa !89
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %551, label %411

411:                                              ; preds = %406, %344
  br label %24

412:                                              ; preds = %295
  store i32 0, ptr %10, align 4, !tbaa !67
  %413 = icmp eq i32 %1, 4
  br i1 %413, label %414, label %481

414:                                              ; preds = %412
  %415 = load i64, ptr %9, align 8, !tbaa !65
  %416 = icmp sgt i64 %415, -1
  br i1 %416, label %417, label %421

417:                                              ; preds = %414
  %418 = load ptr, ptr %7, align 8, !tbaa !28
  %419 = and i64 %415, 4294967295
  %420 = getelementptr inbounds i8, ptr %418, i64 %419
  br label %421

421:                                              ; preds = %414, %417
  %422 = phi ptr [ %420, %417 ], [ null, %414 ]
  %423 = load i32, ptr %6, align 4, !tbaa !64
  %424 = zext i32 %423 to i64
  %425 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %424, i64 %415), !nosanitize !16
  %426 = extractvalue { i64, i1 } %425, 1, !nosanitize !16
  br i1 %426, label %338, label %427, !nosanitize !16

427:                                              ; preds = %421
  %428 = extractvalue { i64, i1 } %425, 0, !nosanitize !16
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %422, i64 noundef %428, i32 noundef 1) #10
  %429 = load i32, ptr %6, align 4, !tbaa !64
  %430 = zext i32 %429 to i64
  store i64 %430, ptr %9, align 8, !tbaa !65
  %431 = load ptr, ptr %0, align 8, !tbaa !18
  %432 = getelementptr inbounds %struct.z_stream_s, ptr %431, i64 0, i32 7
  %433 = load ptr, ptr %432, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %433) #10
  %434 = getelementptr inbounds %struct.internal_state, ptr %433, i64 0, i32 5
  %435 = load i64, ptr %434, align 8, !tbaa !48
  %436 = getelementptr inbounds %struct.z_stream_s, ptr %431, i64 0, i32 4
  %437 = load i32, ptr %436, align 8, !tbaa !89
  %438 = zext i32 %437 to i64
  %439 = icmp ugt i64 %435, %438
  %440 = trunc i64 %435 to i32
  %441 = select i1 %439, i32 %437, i32 %440
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %475, label %443

443:                                              ; preds = %427
  %444 = getelementptr inbounds %struct.z_stream_s, ptr %431, i64 0, i32 3
  %445 = load ptr, ptr %444, align 8, !tbaa !88
  %446 = getelementptr inbounds %struct.internal_state, ptr %433, i64 0, i32 4
  %447 = load ptr, ptr %446, align 8, !tbaa !49
  %448 = zext i32 %441 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %445, ptr align 1 %447, i64 %448, i1 false)
  %449 = load ptr, ptr %444, align 8, !tbaa !88
  %450 = getelementptr inbounds i8, ptr %449, i64 %448
  store ptr %450, ptr %444, align 8, !tbaa !88
  %451 = load ptr, ptr %446, align 8, !tbaa !49
  %452 = getelementptr inbounds i8, ptr %451, i64 %448
  store ptr %452, ptr %446, align 8, !tbaa !49
  %453 = getelementptr inbounds %struct.z_stream_s, ptr %431, i64 0, i32 5
  %454 = load i64, ptr %453, align 8, !tbaa !90
  %455 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %454, i64 %448), !nosanitize !16
  %456 = extractvalue { i64, i1 } %455, 1, !nosanitize !16
  br i1 %456, label %457, label %458, !nosanitize !16

457:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

458:                                              ; preds = %443
  %459 = extractvalue { i64, i1 } %455, 0, !nosanitize !16
  store i64 %459, ptr %453, align 8, !tbaa !90
  %460 = load i32, ptr %436, align 8, !tbaa !89
  %461 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %460, i32 %441), !nosanitize !16
  %462 = extractvalue { i32, i1 } %461, 1, !nosanitize !16
  br i1 %462, label %463, label %464, !nosanitize !16

463:                                              ; preds = %464, %458
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

464:                                              ; preds = %458
  %465 = extractvalue { i32, i1 } %461, 0, !nosanitize !16
  store i32 %465, ptr %436, align 8, !tbaa !89
  %466 = load i64, ptr %434, align 8, !tbaa !48
  %467 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %466, i64 %448), !nosanitize !16
  %468 = extractvalue { i64, i1 } %467, 1, !nosanitize !16
  br i1 %468, label %463, label %469, !nosanitize !16

469:                                              ; preds = %464
  %470 = extractvalue { i64, i1 } %467, 0, !nosanitize !16
  store i64 %470, ptr %434, align 8, !tbaa !48
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %472, label %475

472:                                              ; preds = %469
  %473 = getelementptr inbounds %struct.internal_state, ptr %433, i64 0, i32 2
  %474 = load ptr, ptr %473, align 8, !tbaa !34
  store ptr %474, ptr %446, align 8, !tbaa !49
  br label %475

475:                                              ; preds = %427, %469, %472
  %476 = load ptr, ptr %0, align 8, !tbaa !18
  %477 = getelementptr inbounds %struct.z_stream_s, ptr %476, i64 0, i32 4
  %478 = load i32, ptr %477, align 8, !tbaa !89
  %479 = icmp eq i32 %478, 0
  %480 = select i1 %479, i32 2, i32 3
  br label %551

481:                                              ; preds = %412
  %482 = load i32, ptr %22, align 4, !tbaa !110
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %550, label %484

484:                                              ; preds = %481
  %485 = load i64, ptr %9, align 8, !tbaa !65
  %486 = icmp sgt i64 %485, -1
  br i1 %486, label %487, label %491

487:                                              ; preds = %484
  %488 = load ptr, ptr %7, align 8, !tbaa !28
  %489 = and i64 %485, 4294967295
  %490 = getelementptr inbounds i8, ptr %488, i64 %489
  br label %491

491:                                              ; preds = %484, %487
  %492 = phi ptr [ %490, %487 ], [ null, %484 ]
  %493 = load i32, ptr %6, align 4, !tbaa !64
  %494 = zext i32 %493 to i64
  %495 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %494, i64 %485), !nosanitize !16
  %496 = extractvalue { i64, i1 } %495, 1, !nosanitize !16
  br i1 %496, label %338, label %497, !nosanitize !16

497:                                              ; preds = %491
  %498 = extractvalue { i64, i1 } %495, 0, !nosanitize !16
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %492, i64 noundef %498, i32 noundef 0) #10
  %499 = load i32, ptr %6, align 4, !tbaa !64
  %500 = zext i32 %499 to i64
  store i64 %500, ptr %9, align 8, !tbaa !65
  %501 = load ptr, ptr %0, align 8, !tbaa !18
  %502 = getelementptr inbounds %struct.z_stream_s, ptr %501, i64 0, i32 7
  %503 = load ptr, ptr %502, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %503) #10
  %504 = getelementptr inbounds %struct.internal_state, ptr %503, i64 0, i32 5
  %505 = load i64, ptr %504, align 8, !tbaa !48
  %506 = getelementptr inbounds %struct.z_stream_s, ptr %501, i64 0, i32 4
  %507 = load i32, ptr %506, align 8, !tbaa !89
  %508 = zext i32 %507 to i64
  %509 = icmp ugt i64 %505, %508
  %510 = trunc i64 %505 to i32
  %511 = select i1 %509, i32 %507, i32 %510
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %545, label %513

513:                                              ; preds = %497
  %514 = getelementptr inbounds %struct.z_stream_s, ptr %501, i64 0, i32 3
  %515 = load ptr, ptr %514, align 8, !tbaa !88
  %516 = getelementptr inbounds %struct.internal_state, ptr %503, i64 0, i32 4
  %517 = load ptr, ptr %516, align 8, !tbaa !49
  %518 = zext i32 %511 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %515, ptr align 1 %517, i64 %518, i1 false)
  %519 = load ptr, ptr %514, align 8, !tbaa !88
  %520 = getelementptr inbounds i8, ptr %519, i64 %518
  store ptr %520, ptr %514, align 8, !tbaa !88
  %521 = load ptr, ptr %516, align 8, !tbaa !49
  %522 = getelementptr inbounds i8, ptr %521, i64 %518
  store ptr %522, ptr %516, align 8, !tbaa !49
  %523 = getelementptr inbounds %struct.z_stream_s, ptr %501, i64 0, i32 5
  %524 = load i64, ptr %523, align 8, !tbaa !90
  %525 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %524, i64 %518), !nosanitize !16
  %526 = extractvalue { i64, i1 } %525, 1, !nosanitize !16
  br i1 %526, label %527, label %528, !nosanitize !16

527:                                              ; preds = %513
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

528:                                              ; preds = %513
  %529 = extractvalue { i64, i1 } %525, 0, !nosanitize !16
  store i64 %529, ptr %523, align 8, !tbaa !90
  %530 = load i32, ptr %506, align 8, !tbaa !89
  %531 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %530, i32 %511), !nosanitize !16
  %532 = extractvalue { i32, i1 } %531, 1, !nosanitize !16
  br i1 %532, label %533, label %534, !nosanitize !16

533:                                              ; preds = %534, %528
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

534:                                              ; preds = %528
  %535 = extractvalue { i32, i1 } %531, 0, !nosanitize !16
  store i32 %535, ptr %506, align 8, !tbaa !89
  %536 = load i64, ptr %504, align 8, !tbaa !48
  %537 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %536, i64 %518), !nosanitize !16
  %538 = extractvalue { i64, i1 } %537, 1, !nosanitize !16
  br i1 %538, label %533, label %539, !nosanitize !16

539:                                              ; preds = %534
  %540 = extractvalue { i64, i1 } %537, 0, !nosanitize !16
  store i64 %540, ptr %504, align 8, !tbaa !48
  %541 = icmp eq i64 %540, 0
  br i1 %541, label %542, label %545

542:                                              ; preds = %539
  %543 = getelementptr inbounds %struct.internal_state, ptr %503, i64 0, i32 2
  %544 = load ptr, ptr %543, align 8, !tbaa !34
  store ptr %544, ptr %516, align 8, !tbaa !49
  br label %545

545:                                              ; preds = %497, %539, %542
  %546 = load ptr, ptr %0, align 8, !tbaa !18
  %547 = getelementptr inbounds %struct.z_stream_s, ptr %546, i64 0, i32 4
  %548 = load i32, ptr %547, align 8, !tbaa !89
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %551, label %550

550:                                              ; preds = %545, %481
  br label %551

551:                                              ; preds = %406, %545, %475, %295, %550
  %552 = phi i32 [ 1, %550 ], [ 0, %295 ], [ %480, %475 ], [ 0, %545 ], [ 0, %406 ]
  ret i32 %552
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @deflate_rle(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 19
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 60
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 18
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 13
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 59
  %21 = icmp eq i32 %1, 0
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  br label %25

25:                                               ; preds = %447, %2
  %26 = load i32, ptr %3, align 4, !tbaa !66
  %27 = icmp ult i32 %26, 259
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  store i32 0, ptr %4, align 8, !tbaa !69
  %29 = load i32, ptr %7, align 4, !tbaa !64
  br label %304

30:                                               ; preds = %25
  %31 = load i32, ptr %5, align 8, !tbaa !25
  %32 = zext i32 %31 to i64
  br label %33

33:                                               ; preds = %249, %30
  %34 = phi i32 [ %181, %249 ], [ %26, %30 ]
  %35 = load i64, ptr %6, align 8, !tbaa !52
  %36 = zext nneg i32 %34 to i64
  %37 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %35, i64 %36), !nosanitize !16
  %38 = extractvalue { i64, i1 } %37, 1, !nosanitize !16
  br i1 %38, label %39, label %40, !nosanitize !16

39:                                               ; preds = %277, %265, %188, %76, %71, %63, %60, %46, %40, %33
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

40:                                               ; preds = %33
  %41 = extractvalue { i64, i1 } %37, 0, !nosanitize !16
  %42 = load i32, ptr %7, align 4, !tbaa !64
  %43 = zext i32 %42 to i64
  %44 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %41, i64 %43), !nosanitize !16
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !16
  br i1 %45, label %39, label %46, !nosanitize !16

46:                                               ; preds = %40
  %47 = extractvalue { i64, i1 } %44, 0, !nosanitize !16
  %48 = trunc i64 %47 to i32
  %49 = load i32, ptr %5, align 8, !tbaa !25
  %50 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %49, i32 262), !nosanitize !16
  %51 = extractvalue { i32, i1 } %50, 1, !nosanitize !16
  br i1 %51, label %39, label %52, !nosanitize !16

52:                                               ; preds = %46
  %53 = extractvalue { i32, i1 } %50, 0, !nosanitize !16
  %54 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %31, i32 %53), !nosanitize !16
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !16
  br i1 %55, label %56, label %57, !nosanitize !16

56:                                               ; preds = %280, %193, %180, %176, %123, %52, %220, %217
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

57:                                               ; preds = %52
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !16
  %59 = icmp ult i32 %42, %58
  br i1 %59, label %129, label %60

60:                                               ; preds = %57
  %61 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %31, i32 %48), !nosanitize !16
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !16
  br i1 %62, label %39, label %63, !nosanitize !16

63:                                               ; preds = %60
  %64 = extractvalue { i32, i1 } %61, 0, !nosanitize !16
  %65 = load ptr, ptr %8, align 8, !tbaa !28
  %66 = getelementptr inbounds i8, ptr %65, i64 %32
  %67 = zext i32 %64 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr align 1 %66, i64 %67, i1 false)
  %68 = load i32, ptr %9, align 8, !tbaa !74
  %69 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %68, i32 %31), !nosanitize !16
  %70 = extractvalue { i32, i1 } %69, 1, !nosanitize !16
  br i1 %70, label %39, label %71, !nosanitize !16

71:                                               ; preds = %63
  %72 = extractvalue { i32, i1 } %69, 0, !nosanitize !16
  store i32 %72, ptr %9, align 8, !tbaa !74
  %73 = load i32, ptr %7, align 4, !tbaa !64
  %74 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %73, i32 %31), !nosanitize !16
  %75 = extractvalue { i32, i1 } %74, 1, !nosanitize !16
  br i1 %75, label %39, label %76, !nosanitize !16

76:                                               ; preds = %71
  %77 = extractvalue { i32, i1 } %74, 0, !nosanitize !16
  store i32 %77, ptr %7, align 4, !tbaa !64
  %78 = load i64, ptr %10, align 8, !tbaa !65
  %79 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %78, i64 %32), !nosanitize !16
  %80 = extractvalue { i64, i1 } %79, 1, !nosanitize !16
  br i1 %80, label %39, label %81, !nosanitize !16

81:                                               ; preds = %76
  %82 = extractvalue { i64, i1 } %79, 0, !nosanitize !16
  store i64 %82, ptr %10, align 8, !tbaa !65
  %83 = load i32, ptr %11, align 4, !tbaa !67
  %84 = icmp ugt i32 %83, %77
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 %77, ptr %11, align 4, !tbaa !67
  br label %86

86:                                               ; preds = %85, %81
  %87 = load i32, ptr %5, align 8, !tbaa !25
  %88 = load i32, ptr %12, align 4, !tbaa !30
  %89 = load ptr, ptr %13, align 8, !tbaa !31
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds i16, ptr %89, i64 %90
  br label %92

92:                                               ; preds = %103, %86
  %93 = phi ptr [ %91, %86 ], [ %95, %103 ]
  %94 = phi i32 [ %88, %86 ], [ %104, %103 ]
  %95 = getelementptr inbounds i16, ptr %93, i64 -1
  %96 = load i16, ptr %95, align 2, !tbaa !53
  %97 = zext i16 %96 to i32
  %98 = tail call i32 @llvm.usub.sat.i32(i32 %97, i32 %87)
  %99 = trunc i32 %98 to i16
  store i16 %99, ptr %95, align 2, !tbaa !53
  %100 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %94, i32 1), !nosanitize !16
  %101 = extractvalue { i32, i1 } %100, 1, !nosanitize !16
  br i1 %101, label %102, label %103, !nosanitize !16

102:                                              ; preds = %92, %110
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

103:                                              ; preds = %92
  %104 = extractvalue { i32, i1 } %100, 0, !nosanitize !16
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %92, !llvm.loop !75

106:                                              ; preds = %103
  %107 = load ptr, ptr %14, align 8, !tbaa !29
  %108 = zext i32 %87 to i64
  %109 = getelementptr inbounds i16, ptr %107, i64 %108
  br label %110

110:                                              ; preds = %120, %106
  %111 = phi ptr [ %109, %106 ], [ %113, %120 ]
  %112 = phi i32 [ %87, %106 ], [ %121, %120 ]
  %113 = getelementptr inbounds i16, ptr %111, i64 -1
  %114 = load i16, ptr %113, align 2, !tbaa !53
  %115 = zext i16 %114 to i32
  %116 = tail call i32 @llvm.usub.sat.i32(i32 %115, i32 %87)
  %117 = trunc i32 %116 to i16
  store i16 %117, ptr %113, align 2, !tbaa !53
  %118 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %112, i32 1), !nosanitize !16
  %119 = extractvalue { i32, i1 } %118, 1, !nosanitize !16
  br i1 %119, label %102, label %120, !nosanitize !16

120:                                              ; preds = %110
  %121 = extractvalue { i32, i1 } %118, 0, !nosanitize !16
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %110, !llvm.loop !77

123:                                              ; preds = %120
  store i32 1, ptr %15, align 8, !tbaa !54
  %124 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %48, i32 %31), !nosanitize !16
  %125 = extractvalue { i32, i1 } %124, 1, !nosanitize !16
  br i1 %125, label %56, label %126, !nosanitize !16

126:                                              ; preds = %123
  %127 = extractvalue { i32, i1 } %124, 0, !nosanitize !16
  %128 = load i32, ptr %3, align 4, !tbaa !66
  br label %129

129:                                              ; preds = %126, %57
  %130 = phi i32 [ %128, %126 ], [ %34, %57 ]
  %131 = phi i32 [ %77, %126 ], [ %42, %57 ]
  %132 = phi i32 [ %127, %126 ], [ %48, %57 ]
  %133 = load ptr, ptr %0, align 8, !tbaa !18
  %134 = getelementptr inbounds %struct.z_stream_s, ptr %133, i64 0, i32 1
  %135 = load i32, ptr %134, align 8, !tbaa !72
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %254, label %137

137:                                              ; preds = %129
  %138 = load ptr, ptr %8, align 8, !tbaa !28
  %139 = zext i32 %131 to i64
  %140 = getelementptr inbounds i8, ptr %138, i64 %139
  %141 = zext i32 %130 to i64
  %142 = getelementptr inbounds i8, ptr %140, i64 %141
  %143 = tail call i32 @llvm.umin.i32(i32 %135, i32 %132)
  %144 = icmp eq i32 %132, 0
  br i1 %144, label %176, label %145

145:                                              ; preds = %137
  %146 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %135, i32 %143), !nosanitize !16
  %147 = extractvalue { i32, i1 } %146, 1, !nosanitize !16
  br i1 %147, label %148, label %149, !nosanitize !16

148:                                              ; preds = %145
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

149:                                              ; preds = %145
  %150 = extractvalue { i32, i1 } %146, 0, !nosanitize !16
  store i32 %150, ptr %134, align 8, !tbaa !72
  %151 = load ptr, ptr %133, align 8, !tbaa !73
  %152 = zext i32 %143 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %142, ptr align 1 %151, i64 %152, i1 false)
  %153 = getelementptr inbounds %struct.z_stream_s, ptr %133, i64 0, i32 7
  %154 = load ptr, ptr %153, align 8, !tbaa !17
  %155 = getelementptr inbounds %struct.internal_state, ptr %154, i64 0, i32 6
  %156 = load i32, ptr %155, align 8, !tbaa !23
  switch i32 %156, label %165 [
    i32 1, label %157
    i32 2, label %161
  ]

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.z_stream_s, ptr %133, i64 0, i32 12
  %159 = load i64, ptr %158, align 8, !tbaa !50
  %160 = tail call i64 @adler32(i64 noundef %159, ptr noundef %142, i32 noundef %143) #10
  store i64 %160, ptr %158, align 8, !tbaa !50
  br label %165

161:                                              ; preds = %149
  %162 = getelementptr inbounds %struct.z_stream_s, ptr %133, i64 0, i32 12
  %163 = load i64, ptr %162, align 8, !tbaa !50
  %164 = tail call i64 @crc32(i64 noundef %163, ptr noundef %142, i32 noundef %143) #10
  store i64 %164, ptr %162, align 8, !tbaa !50
  br label %165

165:                                              ; preds = %161, %157, %149
  %166 = load ptr, ptr %133, align 8, !tbaa !73
  %167 = getelementptr inbounds i8, ptr %166, i64 %152
  store ptr %167, ptr %133, align 8, !tbaa !73
  %168 = getelementptr inbounds %struct.z_stream_s, ptr %133, i64 0, i32 2
  %169 = load i64, ptr %168, align 8, !tbaa !46
  %170 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %169, i64 %152), !nosanitize !16
  %171 = extractvalue { i64, i1 } %170, 1, !nosanitize !16
  br i1 %171, label %172, label %173, !nosanitize !16

172:                                              ; preds = %165
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

173:                                              ; preds = %165
  %174 = extractvalue { i64, i1 } %170, 0, !nosanitize !16
  store i64 %174, ptr %168, align 8, !tbaa !46
  %175 = load i32, ptr %3, align 4, !tbaa !66
  br label %176

176:                                              ; preds = %173, %137
  %177 = phi i32 [ %130, %137 ], [ %175, %173 ]
  %178 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %177, i32 %143), !nosanitize !16
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !16
  br i1 %179, label %56, label %180, !nosanitize !16

180:                                              ; preds = %176
  %181 = extractvalue { i32, i1 } %178, 0, !nosanitize !16
  store i32 %181, ptr %3, align 4, !tbaa !66
  %182 = load i32, ptr %11, align 4, !tbaa !67
  %183 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %181, i32 %182), !nosanitize !16
  %184 = extractvalue { i32, i1 } %183, 1, !nosanitize !16
  br i1 %184, label %56, label %185, !nosanitize !16

185:                                              ; preds = %180
  %186 = extractvalue { i32, i1 } %183, 0, !nosanitize !16
  %187 = icmp ugt i32 %186, 2
  br i1 %187, label %188, label %247

188:                                              ; preds = %185
  %189 = load i32, ptr %7, align 4, !tbaa !64
  %190 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %189, i32 %182), !nosanitize !16
  %191 = extractvalue { i32, i1 } %190, 0, !nosanitize !16
  %192 = extractvalue { i32, i1 } %190, 1, !nosanitize !16
  br i1 %192, label %39, label %193, !nosanitize !16

193:                                              ; preds = %188
  %194 = load ptr, ptr %8, align 8, !tbaa !28
  %195 = zext i32 %191 to i64
  %196 = getelementptr inbounds i8, ptr %194, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !5
  %198 = zext i8 %197 to i32
  store i32 %198, ptr %16, align 8, !tbaa !71
  %199 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %191, i32 1), !nosanitize !16
  %200 = extractvalue { i32, i1 } %199, 1, !nosanitize !16
  br i1 %200, label %56, label %201, !nosanitize !16

201:                                              ; preds = %193
  %202 = extractvalue { i32, i1 } %199, 0, !nosanitize !16
  %203 = load i32, ptr %17, align 8, !tbaa !45
  %204 = shl i32 %198, %203
  %205 = zext i32 %202 to i64
  %206 = getelementptr inbounds i8, ptr %194, i64 %205
  %207 = load i8, ptr %206, align 1, !tbaa !5
  %208 = zext i8 %207 to i32
  %209 = xor i32 %204, %208
  %210 = load i32, ptr %18, align 4, !tbaa !44
  %211 = and i32 %209, %210
  store i32 %211, ptr %16, align 8, !tbaa !71
  br label %212

212:                                              ; preds = %243, %201
  %213 = phi i32 [ %211, %201 ], [ %229, %243 ]
  %214 = phi i32 [ %182, %201 ], [ %240, %243 ]
  %215 = phi i32 [ %191, %201 ], [ %244, %243 ]
  %216 = icmp eq i32 %214, 0
  br i1 %216, label %247, label %217

217:                                              ; preds = %212
  %218 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %215, i32 3), !nosanitize !16
  %219 = extractvalue { i32, i1 } %218, 1, !nosanitize !16
  br i1 %219, label %56, label %220, !nosanitize !16

220:                                              ; preds = %217
  %221 = shl i32 %213, %203
  %222 = extractvalue { i32, i1 } %218, 0, !nosanitize !16
  %223 = add i32 %222, -1
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i8, ptr %194, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !5
  %227 = zext i8 %226 to i32
  %228 = xor i32 %221, %227
  %229 = and i32 %228, %210
  store i32 %229, ptr %16, align 8, !tbaa !71
  %230 = load ptr, ptr %13, align 8, !tbaa !31
  %231 = zext i32 %229 to i64
  %232 = getelementptr inbounds i16, ptr %230, i64 %231
  %233 = load i16, ptr %232, align 2, !tbaa !53
  %234 = load ptr, ptr %14, align 8, !tbaa !29
  %235 = load i32, ptr %19, align 8, !tbaa !26
  %236 = and i32 %235, %215
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i16, ptr %234, i64 %237
  store i16 %233, ptr %238, align 2, !tbaa !53
  %239 = trunc i32 %215 to i16
  store i16 %239, ptr %232, align 2, !tbaa !53
  %240 = add i32 %214, -1
  store i32 %240, ptr %11, align 4, !tbaa !67
  %241 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %181, i32 %240), !nosanitize !16
  %242 = extractvalue { i32, i1 } %241, 1, !nosanitize !16
  br i1 %242, label %56, label %243, !nosanitize !16

243:                                              ; preds = %220
  %244 = add nuw i32 %215, 1
  %245 = extractvalue { i32, i1 } %241, 0, !nosanitize !16
  %246 = icmp ult i32 %245, 3
  br i1 %246, label %247, label %212, !llvm.loop !78

247:                                              ; preds = %243, %212, %185
  %248 = icmp ult i32 %181, 262
  br i1 %248, label %249, label %254

249:                                              ; preds = %247
  %250 = load ptr, ptr %0, align 8, !tbaa !18
  %251 = getelementptr inbounds %struct.z_stream_s, ptr %250, i64 0, i32 1
  %252 = load i32, ptr %251, align 8, !tbaa !72
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %33, !llvm.loop !79

254:                                              ; preds = %249, %247, %129
  %255 = phi i32 [ %181, %249 ], [ %181, %247 ], [ %130, %129 ]
  %256 = load i64, ptr %20, align 8, !tbaa !32
  %257 = load i64, ptr %6, align 8, !tbaa !52
  %258 = icmp ult i64 %256, %257
  br i1 %258, label %259, label %295

259:                                              ; preds = %254
  %260 = load i32, ptr %7, align 4, !tbaa !64
  %261 = zext i32 %260 to i64
  %262 = zext i32 %255 to i64
  %263 = add nuw nsw i64 %262, %261
  %264 = icmp ult i64 %256, %263
  br i1 %264, label %265, label %274

265:                                              ; preds = %259
  %266 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %257, i64 %263), !nosanitize !16
  %267 = extractvalue { i64, i1 } %266, 1, !nosanitize !16
  br i1 %267, label %39, label %268, !nosanitize !16

268:                                              ; preds = %265
  %269 = extractvalue { i64, i1 } %266, 0, !nosanitize !16
  %270 = tail call i64 @llvm.umin.i64(i64 %269, i64 258)
  %271 = load ptr, ptr %8, align 8, !tbaa !28
  %272 = getelementptr inbounds i8, ptr %271, i64 %263
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %272, i8 0, i64 %270, i1 false)
  %273 = add nuw nsw i64 %270, %263
  br label %292

274:                                              ; preds = %259
  %275 = add nuw nsw i64 %263, 258
  %276 = icmp ult i64 %256, %275
  br i1 %276, label %277, label %295

277:                                              ; preds = %274
  %278 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %257, i64 %256), !nosanitize !16
  %279 = extractvalue { i64, i1 } %278, 1, !nosanitize !16
  br i1 %279, label %39, label %280, !nosanitize !16

280:                                              ; preds = %277
  %281 = sub nuw nsw i64 %275, %256
  %282 = extractvalue { i64, i1 } %278, 0, !nosanitize !16
  %283 = tail call i64 @llvm.umin.i64(i64 %281, i64 %282)
  %284 = load ptr, ptr %8, align 8, !tbaa !28
  %285 = getelementptr inbounds i8, ptr %284, i64 %256
  %286 = and i64 %283, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %285, i8 0, i64 %286, i1 false)
  %287 = load i64, ptr %20, align 8, !tbaa !32
  %288 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %287, i64 %283), !nosanitize !16
  %289 = extractvalue { i64, i1 } %288, 1, !nosanitize !16
  br i1 %289, label %56, label %290, !nosanitize !16

290:                                              ; preds = %280
  %291 = extractvalue { i64, i1 } %288, 0, !nosanitize !16
  br label %292

292:                                              ; preds = %290, %268
  %293 = phi i64 [ %273, %268 ], [ %291, %290 ]
  store i64 %293, ptr %20, align 8, !tbaa !32
  %294 = load i32, ptr %3, align 4, !tbaa !66
  br label %295

295:                                              ; preds = %254, %274, %292
  %296 = phi i32 [ %255, %254 ], [ %255, %274 ], [ %294, %292 ]
  %297 = icmp ult i32 %296, 259
  %298 = and i1 %21, %297
  br i1 %298, label %703, label %299

299:                                              ; preds = %295
  %300 = icmp eq i32 %296, 0
  br i1 %300, label %564, label %301

301:                                              ; preds = %299
  store i32 0, ptr %4, align 8, !tbaa !69
  %302 = icmp ugt i32 %296, 2
  %303 = load i32, ptr %7, align 4, !tbaa !64
  br i1 %302, label %304, label %448

304:                                              ; preds = %28, %301
  %305 = phi i32 [ %29, %28 ], [ %303, %301 ]
  %306 = phi i32 [ %26, %28 ], [ %296, %301 ]
  %307 = icmp eq i32 %305, 0
  br i1 %307, label %448, label %308

308:                                              ; preds = %304
  %309 = load ptr, ptr %8, align 8, !tbaa !28
  %310 = zext i32 %305 to i64
  %311 = getelementptr inbounds i8, ptr %309, i64 %310
  %312 = getelementptr inbounds i8, ptr %311, i64 -1
  %313 = load i8, ptr %312, align 1, !tbaa !5
  %314 = load i8, ptr %311, align 1, !tbaa !5
  %315 = icmp eq i8 %313, %314
  br i1 %315, label %316, label %448

316:                                              ; preds = %308
  %317 = getelementptr inbounds i8, ptr %311, i64 1
  %318 = load i8, ptr %317, align 1, !tbaa !5
  %319 = icmp eq i8 %313, %318
  br i1 %319, label %320, label %448

320:                                              ; preds = %316
  %321 = getelementptr inbounds i8, ptr %311, i64 2
  %322 = load i8, ptr %321, align 1, !tbaa !5
  %323 = icmp eq i8 %313, %322
  br i1 %323, label %324, label %448

324:                                              ; preds = %320
  %325 = getelementptr inbounds i8, ptr %311, i64 258
  br label %326

326:                                              ; preds = %356, %324
  %327 = phi i64 [ 2, %324 ], [ %357, %356 ]
  %328 = getelementptr inbounds i8, ptr %311, i64 %327
  %329 = getelementptr inbounds i8, ptr %328, i64 1
  %330 = load i8, ptr %329, align 1, !tbaa !5
  %331 = icmp eq i8 %313, %330
  br i1 %331, label %332, label %363

332:                                              ; preds = %326
  %333 = getelementptr inbounds i8, ptr %328, i64 2
  %334 = load i8, ptr %333, align 1, !tbaa !5
  %335 = icmp eq i8 %313, %334
  br i1 %335, label %336, label %365

336:                                              ; preds = %332
  %337 = getelementptr inbounds i8, ptr %328, i64 3
  %338 = load i8, ptr %337, align 1, !tbaa !5
  %339 = icmp eq i8 %313, %338
  br i1 %339, label %340, label %367

340:                                              ; preds = %336
  %341 = getelementptr inbounds i8, ptr %328, i64 4
  %342 = load i8, ptr %341, align 1, !tbaa !5
  %343 = icmp eq i8 %313, %342
  br i1 %343, label %344, label %369

344:                                              ; preds = %340
  %345 = getelementptr inbounds i8, ptr %328, i64 5
  %346 = load i8, ptr %345, align 1, !tbaa !5
  %347 = icmp eq i8 %313, %346
  br i1 %347, label %348, label %371

348:                                              ; preds = %344
  %349 = getelementptr inbounds i8, ptr %328, i64 6
  %350 = load i8, ptr %349, align 1, !tbaa !5
  %351 = icmp eq i8 %313, %350
  br i1 %351, label %352, label %373

352:                                              ; preds = %348
  %353 = getelementptr inbounds i8, ptr %328, i64 7
  %354 = load i8, ptr %353, align 1, !tbaa !5
  %355 = icmp eq i8 %313, %354
  br i1 %355, label %356, label %375

356:                                              ; preds = %352
  %357 = add nuw nsw i64 %327, 8
  %358 = getelementptr inbounds i8, ptr %311, i64 %357
  %359 = load i8, ptr %358, align 1, !tbaa !5
  %360 = icmp eq i8 %313, %359
  %361 = icmp ult i64 %327, 250
  %362 = and i1 %361, %360
  br i1 %362, label %326, label %377, !llvm.loop !111

363:                                              ; preds = %326
  %364 = getelementptr inbounds i8, ptr %328, i64 1
  br label %379

365:                                              ; preds = %332
  %366 = getelementptr inbounds i8, ptr %328, i64 2
  br label %379

367:                                              ; preds = %336
  %368 = getelementptr inbounds i8, ptr %328, i64 3
  br label %379

369:                                              ; preds = %340
  %370 = getelementptr inbounds i8, ptr %328, i64 4
  br label %379

371:                                              ; preds = %344
  %372 = getelementptr inbounds i8, ptr %328, i64 5
  br label %379

373:                                              ; preds = %348
  %374 = getelementptr inbounds i8, ptr %328, i64 6
  br label %379

375:                                              ; preds = %352
  %376 = getelementptr inbounds i8, ptr %328, i64 7
  br label %379

377:                                              ; preds = %356
  %378 = getelementptr inbounds i8, ptr %311, i64 %357
  br label %379

379:                                              ; preds = %377, %375, %373, %371, %369, %367, %365, %363
  %380 = phi ptr [ %364, %363 ], [ %366, %365 ], [ %368, %367 ], [ %370, %369 ], [ %372, %371 ], [ %374, %373 ], [ %376, %375 ], [ %378, %377 ]
  %381 = ptrtoint ptr %325 to i64
  %382 = ptrtoint ptr %380 to i64
  %383 = sub i64 %381, %382
  %384 = trunc i64 %383 to i32
  %385 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %384), !nosanitize !16
  %386 = extractvalue { i32, i1 } %385, 1, !nosanitize !16
  br i1 %386, label %387, label %388, !nosanitize !16

387:                                              ; preds = %506, %476, %415, %379, %643, %573
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

388:                                              ; preds = %379
  %389 = extractvalue { i32, i1 } %385, 0, !nosanitize !16
  %390 = tail call i32 @llvm.umin.i32(i32 %389, i32 %306)
  store i32 %390, ptr %4, align 8
  %391 = icmp ugt i32 %390, 2
  %392 = load i32, ptr %23, align 4, !tbaa !110
  br i1 %391, label %393, label %451

393:                                              ; preds = %388
  %394 = trunc i32 %390 to i8
  %395 = add i8 %394, -3
  %396 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %392, i32 1), !nosanitize !16
  %397 = extractvalue { i32, i1 } %396, 1, !nosanitize !16
  br i1 %397, label %398, label %399, !nosanitize !16

398:                                              ; preds = %491, %468, %460, %451, %440, %407, %399, %393
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

399:                                              ; preds = %393
  %400 = extractvalue { i32, i1 } %396, 0, !nosanitize !16
  %401 = load ptr, ptr %22, align 8, !tbaa !37
  store i32 %400, ptr %23, align 4, !tbaa !110
  %402 = zext i32 %392 to i64
  %403 = getelementptr inbounds i8, ptr %401, i64 %402
  store i8 1, ptr %403, align 1, !tbaa !5
  %404 = load i32, ptr %23, align 4, !tbaa !110
  %405 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %404, i32 1), !nosanitize !16
  %406 = extractvalue { i32, i1 } %405, 1, !nosanitize !16
  br i1 %406, label %398, label %407, !nosanitize !16

407:                                              ; preds = %399
  %408 = extractvalue { i32, i1 } %405, 0, !nosanitize !16
  %409 = load ptr, ptr %22, align 8, !tbaa !37
  store i32 %408, ptr %23, align 4, !tbaa !110
  %410 = zext i32 %404 to i64
  %411 = getelementptr inbounds i8, ptr %409, i64 %410
  store i8 0, ptr %411, align 1, !tbaa !5
  %412 = load i32, ptr %23, align 4, !tbaa !110
  %413 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %412, i32 1), !nosanitize !16
  %414 = extractvalue { i32, i1 } %413, 1, !nosanitize !16
  br i1 %414, label %398, label %415, !nosanitize !16

415:                                              ; preds = %407
  %416 = extractvalue { i32, i1 } %413, 0, !nosanitize !16
  %417 = load ptr, ptr %22, align 8, !tbaa !37
  store i32 %416, ptr %23, align 4, !tbaa !110
  %418 = zext i32 %412 to i64
  %419 = getelementptr inbounds i8, ptr %417, i64 %418
  store i8 %395, ptr %419, align 1, !tbaa !5
  %420 = zext i8 %395 to i64
  %421 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %420
  %422 = load i8, ptr %421, align 1, !tbaa !5
  %423 = zext i8 %422 to i64
  %424 = add nuw nsw i64 %423, 257
  %425 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %424
  %426 = load i16, ptr %425, align 4, !tbaa !5
  %427 = add i16 %426, 1
  store i16 %427, ptr %425, align 4, !tbaa !5
  %428 = load i8, ptr @_dist_code, align 1, !tbaa !5
  %429 = zext i8 %428 to i64
  %430 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %429
  %431 = load i16, ptr %430, align 4, !tbaa !5
  %432 = add i16 %431, 1
  store i16 %432, ptr %430, align 4, !tbaa !5
  %433 = load i32, ptr %23, align 4, !tbaa !110
  %434 = load i32, ptr %24, align 8, !tbaa !38
  %435 = icmp eq i32 %433, %434
  %436 = load i32, ptr %4, align 8, !tbaa !69
  %437 = load i32, ptr %3, align 4, !tbaa !66
  %438 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %437, i32 %436), !nosanitize !16
  %439 = extractvalue { i32, i1 } %438, 1, !nosanitize !16
  br i1 %439, label %387, label %440, !nosanitize !16

440:                                              ; preds = %415
  %441 = extractvalue { i32, i1 } %438, 0, !nosanitize !16
  store i32 %441, ptr %3, align 4, !tbaa !66
  %442 = load i32, ptr %7, align 4, !tbaa !64
  %443 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %442, i32 %436), !nosanitize !16
  %444 = extractvalue { i32, i1 } %443, 1, !nosanitize !16
  br i1 %444, label %398, label %445, !nosanitize !16

445:                                              ; preds = %440
  %446 = extractvalue { i32, i1 } %443, 0, !nosanitize !16
  store i32 %446, ptr %7, align 4, !tbaa !64
  store i32 0, ptr %4, align 8, !tbaa !69
  br i1 %435, label %498, label %447

447:                                              ; preds = %445, %559, %496
  br label %25

448:                                              ; preds = %308, %316, %320, %304, %301
  %449 = phi i32 [ %303, %301 ], [ %305, %304 ], [ %305, %320 ], [ %305, %316 ], [ %305, %308 ]
  %450 = load i32, ptr %23, align 4, !tbaa !110
  br label %451

451:                                              ; preds = %448, %388
  %452 = phi i32 [ %392, %388 ], [ %450, %448 ]
  %453 = phi i32 [ %305, %388 ], [ %449, %448 ]
  %454 = load ptr, ptr %8, align 8, !tbaa !28
  %455 = zext i32 %453 to i64
  %456 = getelementptr inbounds i8, ptr %454, i64 %455
  %457 = load i8, ptr %456, align 1, !tbaa !5
  %458 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %452, i32 1), !nosanitize !16
  %459 = extractvalue { i32, i1 } %458, 1, !nosanitize !16
  br i1 %459, label %398, label %460, !nosanitize !16

460:                                              ; preds = %451
  %461 = extractvalue { i32, i1 } %458, 0, !nosanitize !16
  %462 = load ptr, ptr %22, align 8, !tbaa !37
  store i32 %461, ptr %23, align 4, !tbaa !110
  %463 = zext i32 %452 to i64
  %464 = getelementptr inbounds i8, ptr %462, i64 %463
  store i8 0, ptr %464, align 1, !tbaa !5
  %465 = load i32, ptr %23, align 4, !tbaa !110
  %466 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %465, i32 1), !nosanitize !16
  %467 = extractvalue { i32, i1 } %466, 1, !nosanitize !16
  br i1 %467, label %398, label %468, !nosanitize !16

468:                                              ; preds = %460
  %469 = extractvalue { i32, i1 } %466, 0, !nosanitize !16
  %470 = load ptr, ptr %22, align 8, !tbaa !37
  store i32 %469, ptr %23, align 4, !tbaa !110
  %471 = zext i32 %465 to i64
  %472 = getelementptr inbounds i8, ptr %470, i64 %471
  store i8 0, ptr %472, align 1, !tbaa !5
  %473 = load i32, ptr %23, align 4, !tbaa !110
  %474 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %473, i32 1), !nosanitize !16
  %475 = extractvalue { i32, i1 } %474, 1, !nosanitize !16
  br i1 %475, label %398, label %476, !nosanitize !16

476:                                              ; preds = %468
  %477 = extractvalue { i32, i1 } %474, 0, !nosanitize !16
  %478 = load ptr, ptr %22, align 8, !tbaa !37
  store i32 %477, ptr %23, align 4, !tbaa !110
  %479 = zext i32 %473 to i64
  %480 = getelementptr inbounds i8, ptr %478, i64 %479
  store i8 %457, ptr %480, align 1, !tbaa !5
  %481 = zext i8 %457 to i64
  %482 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %481
  %483 = load i16, ptr %482, align 4, !tbaa !5
  %484 = add i16 %483, 1
  store i16 %484, ptr %482, align 4, !tbaa !5
  %485 = load i32, ptr %23, align 4, !tbaa !110
  %486 = load i32, ptr %24, align 8, !tbaa !38
  %487 = icmp eq i32 %485, %486
  %488 = load i32, ptr %3, align 4, !tbaa !66
  %489 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %488, i32 1), !nosanitize !16
  %490 = extractvalue { i32, i1 } %489, 1, !nosanitize !16
  br i1 %490, label %387, label %491, !nosanitize !16

491:                                              ; preds = %476
  %492 = extractvalue { i32, i1 } %489, 0, !nosanitize !16
  store i32 %492, ptr %3, align 4, !tbaa !66
  %493 = load i32, ptr %7, align 4, !tbaa !64
  %494 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %493, i32 1), !nosanitize !16
  %495 = extractvalue { i32, i1 } %494, 1, !nosanitize !16
  br i1 %495, label %398, label %496, !nosanitize !16

496:                                              ; preds = %491
  %497 = extractvalue { i32, i1 } %494, 0, !nosanitize !16
  store i32 %497, ptr %7, align 4, !tbaa !64
  br i1 %487, label %498, label %447

498:                                              ; preds = %445, %496
  %499 = phi i32 [ %446, %445 ], [ %497, %496 ]
  %500 = load i64, ptr %10, align 8, !tbaa !65
  %501 = icmp sgt i64 %500, -1
  br i1 %501, label %502, label %506

502:                                              ; preds = %498
  %503 = load ptr, ptr %8, align 8, !tbaa !28
  %504 = and i64 %500, 4294967295
  %505 = getelementptr inbounds i8, ptr %503, i64 %504
  br label %506

506:                                              ; preds = %498, %502
  %507 = phi ptr [ %505, %502 ], [ null, %498 ]
  %508 = zext i32 %499 to i64
  %509 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %508, i64 %500), !nosanitize !16
  %510 = extractvalue { i64, i1 } %509, 1, !nosanitize !16
  br i1 %510, label %387, label %511, !nosanitize !16

511:                                              ; preds = %506
  %512 = extractvalue { i64, i1 } %509, 0, !nosanitize !16
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %507, i64 noundef %512, i32 noundef 0) #10
  %513 = load i32, ptr %7, align 4, !tbaa !64
  %514 = zext i32 %513 to i64
  store i64 %514, ptr %10, align 8, !tbaa !65
  %515 = load ptr, ptr %0, align 8, !tbaa !18
  %516 = getelementptr inbounds %struct.z_stream_s, ptr %515, i64 0, i32 7
  %517 = load ptr, ptr %516, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %517) #10
  %518 = getelementptr inbounds %struct.internal_state, ptr %517, i64 0, i32 5
  %519 = load i64, ptr %518, align 8, !tbaa !48
  %520 = getelementptr inbounds %struct.z_stream_s, ptr %515, i64 0, i32 4
  %521 = load i32, ptr %520, align 8, !tbaa !89
  %522 = zext i32 %521 to i64
  %523 = icmp ugt i64 %519, %522
  %524 = trunc i64 %519 to i32
  %525 = select i1 %523, i32 %521, i32 %524
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %559, label %527

527:                                              ; preds = %511
  %528 = getelementptr inbounds %struct.z_stream_s, ptr %515, i64 0, i32 3
  %529 = load ptr, ptr %528, align 8, !tbaa !88
  %530 = getelementptr inbounds %struct.internal_state, ptr %517, i64 0, i32 4
  %531 = load ptr, ptr %530, align 8, !tbaa !49
  %532 = zext i32 %525 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %529, ptr align 1 %531, i64 %532, i1 false)
  %533 = load ptr, ptr %528, align 8, !tbaa !88
  %534 = getelementptr inbounds i8, ptr %533, i64 %532
  store ptr %534, ptr %528, align 8, !tbaa !88
  %535 = load ptr, ptr %530, align 8, !tbaa !49
  %536 = getelementptr inbounds i8, ptr %535, i64 %532
  store ptr %536, ptr %530, align 8, !tbaa !49
  %537 = getelementptr inbounds %struct.z_stream_s, ptr %515, i64 0, i32 5
  %538 = load i64, ptr %537, align 8, !tbaa !90
  %539 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %538, i64 %532), !nosanitize !16
  %540 = extractvalue { i64, i1 } %539, 1, !nosanitize !16
  br i1 %540, label %541, label %542, !nosanitize !16

541:                                              ; preds = %527
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

542:                                              ; preds = %527
  %543 = extractvalue { i64, i1 } %539, 0, !nosanitize !16
  store i64 %543, ptr %537, align 8, !tbaa !90
  %544 = load i32, ptr %520, align 8, !tbaa !89
  %545 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %544, i32 %525), !nosanitize !16
  %546 = extractvalue { i32, i1 } %545, 1, !nosanitize !16
  br i1 %546, label %547, label %548, !nosanitize !16

547:                                              ; preds = %548, %542
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

548:                                              ; preds = %542
  %549 = extractvalue { i32, i1 } %545, 0, !nosanitize !16
  store i32 %549, ptr %520, align 8, !tbaa !89
  %550 = load i64, ptr %518, align 8, !tbaa !48
  %551 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %550, i64 %532), !nosanitize !16
  %552 = extractvalue { i64, i1 } %551, 1, !nosanitize !16
  br i1 %552, label %547, label %553, !nosanitize !16

553:                                              ; preds = %548
  %554 = extractvalue { i64, i1 } %551, 0, !nosanitize !16
  store i64 %554, ptr %518, align 8, !tbaa !48
  %555 = icmp eq i64 %554, 0
  br i1 %555, label %556, label %559

556:                                              ; preds = %553
  %557 = getelementptr inbounds %struct.internal_state, ptr %517, i64 0, i32 2
  %558 = load ptr, ptr %557, align 8, !tbaa !34
  store ptr %558, ptr %530, align 8, !tbaa !49
  br label %559

559:                                              ; preds = %511, %553, %556
  %560 = load ptr, ptr %0, align 8, !tbaa !18
  %561 = getelementptr inbounds %struct.z_stream_s, ptr %560, i64 0, i32 4
  %562 = load i32, ptr %561, align 8, !tbaa !89
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %703, label %447

564:                                              ; preds = %299
  store i32 0, ptr %11, align 4, !tbaa !67
  %565 = icmp eq i32 %1, 4
  br i1 %565, label %566, label %633

566:                                              ; preds = %564
  %567 = load i64, ptr %10, align 8, !tbaa !65
  %568 = icmp sgt i64 %567, -1
  br i1 %568, label %569, label %573

569:                                              ; preds = %566
  %570 = load ptr, ptr %8, align 8, !tbaa !28
  %571 = and i64 %567, 4294967295
  %572 = getelementptr inbounds i8, ptr %570, i64 %571
  br label %573

573:                                              ; preds = %566, %569
  %574 = phi ptr [ %572, %569 ], [ null, %566 ]
  %575 = load i32, ptr %7, align 4, !tbaa !64
  %576 = zext i32 %575 to i64
  %577 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %576, i64 %567), !nosanitize !16
  %578 = extractvalue { i64, i1 } %577, 1, !nosanitize !16
  br i1 %578, label %387, label %579, !nosanitize !16

579:                                              ; preds = %573
  %580 = extractvalue { i64, i1 } %577, 0, !nosanitize !16
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %574, i64 noundef %580, i32 noundef 1) #10
  %581 = load i32, ptr %7, align 4, !tbaa !64
  %582 = zext i32 %581 to i64
  store i64 %582, ptr %10, align 8, !tbaa !65
  %583 = load ptr, ptr %0, align 8, !tbaa !18
  %584 = getelementptr inbounds %struct.z_stream_s, ptr %583, i64 0, i32 7
  %585 = load ptr, ptr %584, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %585) #10
  %586 = getelementptr inbounds %struct.internal_state, ptr %585, i64 0, i32 5
  %587 = load i64, ptr %586, align 8, !tbaa !48
  %588 = getelementptr inbounds %struct.z_stream_s, ptr %583, i64 0, i32 4
  %589 = load i32, ptr %588, align 8, !tbaa !89
  %590 = zext i32 %589 to i64
  %591 = icmp ugt i64 %587, %590
  %592 = trunc i64 %587 to i32
  %593 = select i1 %591, i32 %589, i32 %592
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %627, label %595

595:                                              ; preds = %579
  %596 = getelementptr inbounds %struct.z_stream_s, ptr %583, i64 0, i32 3
  %597 = load ptr, ptr %596, align 8, !tbaa !88
  %598 = getelementptr inbounds %struct.internal_state, ptr %585, i64 0, i32 4
  %599 = load ptr, ptr %598, align 8, !tbaa !49
  %600 = zext i32 %593 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %597, ptr align 1 %599, i64 %600, i1 false)
  %601 = load ptr, ptr %596, align 8, !tbaa !88
  %602 = getelementptr inbounds i8, ptr %601, i64 %600
  store ptr %602, ptr %596, align 8, !tbaa !88
  %603 = load ptr, ptr %598, align 8, !tbaa !49
  %604 = getelementptr inbounds i8, ptr %603, i64 %600
  store ptr %604, ptr %598, align 8, !tbaa !49
  %605 = getelementptr inbounds %struct.z_stream_s, ptr %583, i64 0, i32 5
  %606 = load i64, ptr %605, align 8, !tbaa !90
  %607 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %606, i64 %600), !nosanitize !16
  %608 = extractvalue { i64, i1 } %607, 1, !nosanitize !16
  br i1 %608, label %609, label %610, !nosanitize !16

609:                                              ; preds = %595
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

610:                                              ; preds = %595
  %611 = extractvalue { i64, i1 } %607, 0, !nosanitize !16
  store i64 %611, ptr %605, align 8, !tbaa !90
  %612 = load i32, ptr %588, align 8, !tbaa !89
  %613 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %612, i32 %593), !nosanitize !16
  %614 = extractvalue { i32, i1 } %613, 1, !nosanitize !16
  br i1 %614, label %615, label %616, !nosanitize !16

615:                                              ; preds = %616, %610
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

616:                                              ; preds = %610
  %617 = extractvalue { i32, i1 } %613, 0, !nosanitize !16
  store i32 %617, ptr %588, align 8, !tbaa !89
  %618 = load i64, ptr %586, align 8, !tbaa !48
  %619 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %618, i64 %600), !nosanitize !16
  %620 = extractvalue { i64, i1 } %619, 1, !nosanitize !16
  br i1 %620, label %615, label %621, !nosanitize !16

621:                                              ; preds = %616
  %622 = extractvalue { i64, i1 } %619, 0, !nosanitize !16
  store i64 %622, ptr %586, align 8, !tbaa !48
  %623 = icmp eq i64 %622, 0
  br i1 %623, label %624, label %627

624:                                              ; preds = %621
  %625 = getelementptr inbounds %struct.internal_state, ptr %585, i64 0, i32 2
  %626 = load ptr, ptr %625, align 8, !tbaa !34
  store ptr %626, ptr %598, align 8, !tbaa !49
  br label %627

627:                                              ; preds = %579, %621, %624
  %628 = load ptr, ptr %0, align 8, !tbaa !18
  %629 = getelementptr inbounds %struct.z_stream_s, ptr %628, i64 0, i32 4
  %630 = load i32, ptr %629, align 8, !tbaa !89
  %631 = icmp eq i32 %630, 0
  %632 = select i1 %631, i32 2, i32 3
  br label %703

633:                                              ; preds = %564
  %634 = load i32, ptr %23, align 4, !tbaa !110
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %702, label %636

636:                                              ; preds = %633
  %637 = load i64, ptr %10, align 8, !tbaa !65
  %638 = icmp sgt i64 %637, -1
  br i1 %638, label %639, label %643

639:                                              ; preds = %636
  %640 = load ptr, ptr %8, align 8, !tbaa !28
  %641 = and i64 %637, 4294967295
  %642 = getelementptr inbounds i8, ptr %640, i64 %641
  br label %643

643:                                              ; preds = %636, %639
  %644 = phi ptr [ %642, %639 ], [ null, %636 ]
  %645 = load i32, ptr %7, align 4, !tbaa !64
  %646 = zext i32 %645 to i64
  %647 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %646, i64 %637), !nosanitize !16
  %648 = extractvalue { i64, i1 } %647, 1, !nosanitize !16
  br i1 %648, label %387, label %649, !nosanitize !16

649:                                              ; preds = %643
  %650 = extractvalue { i64, i1 } %647, 0, !nosanitize !16
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %644, i64 noundef %650, i32 noundef 0) #10
  %651 = load i32, ptr %7, align 4, !tbaa !64
  %652 = zext i32 %651 to i64
  store i64 %652, ptr %10, align 8, !tbaa !65
  %653 = load ptr, ptr %0, align 8, !tbaa !18
  %654 = getelementptr inbounds %struct.z_stream_s, ptr %653, i64 0, i32 7
  %655 = load ptr, ptr %654, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %655) #10
  %656 = getelementptr inbounds %struct.internal_state, ptr %655, i64 0, i32 5
  %657 = load i64, ptr %656, align 8, !tbaa !48
  %658 = getelementptr inbounds %struct.z_stream_s, ptr %653, i64 0, i32 4
  %659 = load i32, ptr %658, align 8, !tbaa !89
  %660 = zext i32 %659 to i64
  %661 = icmp ugt i64 %657, %660
  %662 = trunc i64 %657 to i32
  %663 = select i1 %661, i32 %659, i32 %662
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %697, label %665

665:                                              ; preds = %649
  %666 = getelementptr inbounds %struct.z_stream_s, ptr %653, i64 0, i32 3
  %667 = load ptr, ptr %666, align 8, !tbaa !88
  %668 = getelementptr inbounds %struct.internal_state, ptr %655, i64 0, i32 4
  %669 = load ptr, ptr %668, align 8, !tbaa !49
  %670 = zext i32 %663 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %667, ptr align 1 %669, i64 %670, i1 false)
  %671 = load ptr, ptr %666, align 8, !tbaa !88
  %672 = getelementptr inbounds i8, ptr %671, i64 %670
  store ptr %672, ptr %666, align 8, !tbaa !88
  %673 = load ptr, ptr %668, align 8, !tbaa !49
  %674 = getelementptr inbounds i8, ptr %673, i64 %670
  store ptr %674, ptr %668, align 8, !tbaa !49
  %675 = getelementptr inbounds %struct.z_stream_s, ptr %653, i64 0, i32 5
  %676 = load i64, ptr %675, align 8, !tbaa !90
  %677 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %676, i64 %670), !nosanitize !16
  %678 = extractvalue { i64, i1 } %677, 1, !nosanitize !16
  br i1 %678, label %679, label %680, !nosanitize !16

679:                                              ; preds = %665
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

680:                                              ; preds = %665
  %681 = extractvalue { i64, i1 } %677, 0, !nosanitize !16
  store i64 %681, ptr %675, align 8, !tbaa !90
  %682 = load i32, ptr %658, align 8, !tbaa !89
  %683 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %682, i32 %663), !nosanitize !16
  %684 = extractvalue { i32, i1 } %683, 1, !nosanitize !16
  br i1 %684, label %685, label %686, !nosanitize !16

685:                                              ; preds = %686, %680
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

686:                                              ; preds = %680
  %687 = extractvalue { i32, i1 } %683, 0, !nosanitize !16
  store i32 %687, ptr %658, align 8, !tbaa !89
  %688 = load i64, ptr %656, align 8, !tbaa !48
  %689 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %688, i64 %670), !nosanitize !16
  %690 = extractvalue { i64, i1 } %689, 1, !nosanitize !16
  br i1 %690, label %685, label %691, !nosanitize !16

691:                                              ; preds = %686
  %692 = extractvalue { i64, i1 } %689, 0, !nosanitize !16
  store i64 %692, ptr %656, align 8, !tbaa !48
  %693 = icmp eq i64 %692, 0
  br i1 %693, label %694, label %697

694:                                              ; preds = %691
  %695 = getelementptr inbounds %struct.internal_state, ptr %655, i64 0, i32 2
  %696 = load ptr, ptr %695, align 8, !tbaa !34
  store ptr %696, ptr %668, align 8, !tbaa !49
  br label %697

697:                                              ; preds = %649, %691, %694
  %698 = load ptr, ptr %0, align 8, !tbaa !18
  %699 = getelementptr inbounds %struct.z_stream_s, ptr %698, i64 0, i32 4
  %700 = load i32, ptr %699, align 8, !tbaa !89
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %703, label %702

702:                                              ; preds = %697, %633
  br label %703

703:                                              ; preds = %559, %295, %697, %627, %702
  %704 = phi i32 [ 1, %702 ], [ %632, %627 ], [ 0, %697 ], [ 0, %295 ], [ 0, %559 ]
  ret i32 %704
}

declare void @_tr_align(ptr noundef) local_unnamed_addr #1

declare void @_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateCopy(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %188, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %188, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %188, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %188, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !18
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %188

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !22
  switch i32 %21, label %188 [
    i32 42, label %22
    i32 57, label %22
    i32 69, label %22
    i32 73, label %22
    i32 91, label %22
    i32 103, label %22
    i32 113, label %22
    i32 666, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %23 = icmp eq ptr %0, null
  br i1 %23, label %188, label %24

24:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !13
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = tail call ptr %26(ptr noundef %28, i32 noundef 1, i32 noundef 5968) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %188, label %31

31:                                               ; preds = %24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %29, i8 0, i64 5968, i1 false)
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %29, ptr %32, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %29, ptr noundef nonnull align 8 dereferenceable(5968) %14, i64 5968, i1 false)
  store ptr %0, ptr %29, align 8, !tbaa !18
  %33 = load ptr, ptr %25, align 8, !tbaa !13
  %34 = load ptr, ptr %27, align 8, !tbaa !14
  %35 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 11
  %36 = load i32, ptr %35, align 8, !tbaa !25
  %37 = tail call ptr %33(ptr noundef %34, i32 noundef %36, i32 noundef 2) #10
  %38 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 14
  store ptr %37, ptr %38, align 8, !tbaa !28
  %39 = load ptr, ptr %25, align 8, !tbaa !13
  %40 = load ptr, ptr %27, align 8, !tbaa !14
  %41 = load i32, ptr %35, align 8, !tbaa !25
  %42 = tail call ptr %39(ptr noundef %40, i32 noundef %41, i32 noundef 2) #10
  %43 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 16
  store ptr %42, ptr %43, align 8, !tbaa !29
  %44 = load ptr, ptr %25, align 8, !tbaa !13
  %45 = load ptr, ptr %27, align 8, !tbaa !14
  %46 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 19
  %47 = load i32, ptr %46, align 4, !tbaa !30
  %48 = tail call ptr %44(ptr noundef %45, i32 noundef %47, i32 noundef 2) #10
  %49 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 17
  store ptr %48, ptr %49, align 8, !tbaa !31
  %50 = load ptr, ptr %25, align 8, !tbaa !13
  %51 = load ptr, ptr %27, align 8, !tbaa !14
  %52 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 49
  %53 = load i32, ptr %52, align 8, !tbaa !33
  %54 = tail call ptr %50(ptr noundef %51, i32 noundef %53, i32 noundef 4) #10
  %55 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !34
  %56 = load ptr, ptr %38, align 8, !tbaa !28
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %31
  %59 = load ptr, ptr %43, align 8, !tbaa !29
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %49, align 8, !tbaa !31
  %63 = icmp eq ptr %62, null
  %64 = icmp eq ptr %54, null
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %66, label %124

66:                                               ; preds = %31, %58, %61
  %67 = load ptr, ptr %25, align 8, !tbaa !13
  %68 = icmp eq ptr %67, null
  br i1 %68, label %188, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %71 = load ptr, ptr %70, align 8, !tbaa !15
  %72 = icmp eq ptr %71, null
  br i1 %72, label %188, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %32, align 8, !tbaa !17
  %75 = icmp eq ptr %74, null
  br i1 %75, label %188, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %74, align 8, !tbaa !18
  %78 = icmp eq ptr %77, %0
  br i1 %78, label %79, label %188

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !22
  switch i32 %81, label %188 [
    i32 42, label %82
    i32 57, label %82
    i32 69, label %82
    i32 73, label %82
    i32 91, label %82
    i32 103, label %82
    i32 113, label %82
    i32 666, label %82
  ]

82:                                               ; preds = %79, %79, %79, %79, %79, %79, %79, %79
  %83 = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !34
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %27, align 8, !tbaa !14
  tail call void %71(ptr noundef %87, ptr noundef nonnull %84) #10
  %88 = load ptr, ptr %32, align 8, !tbaa !17
  %89 = load ptr, ptr %70, align 8, !tbaa !15
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi ptr [ %89, %86 ], [ %71, %82 ]
  %92 = phi ptr [ %88, %86 ], [ %74, %82 ]
  %93 = getelementptr inbounds %struct.internal_state, ptr %92, i64 0, i32 17
  %94 = load ptr, ptr %93, align 8, !tbaa !31
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %90
  %97 = load ptr, ptr %27, align 8, !tbaa !14
  tail call void %91(ptr noundef %97, ptr noundef nonnull %94) #10
  %98 = load ptr, ptr %32, align 8, !tbaa !17
  %99 = load ptr, ptr %70, align 8, !tbaa !15
  br label %100

100:                                              ; preds = %96, %90
  %101 = phi ptr [ %99, %96 ], [ %91, %90 ]
  %102 = phi ptr [ %98, %96 ], [ %92, %90 ]
  %103 = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 16
  %104 = load ptr, ptr %103, align 8, !tbaa !29
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = load ptr, ptr %27, align 8, !tbaa !14
  tail call void %101(ptr noundef %107, ptr noundef nonnull %104) #10
  %108 = load ptr, ptr %32, align 8, !tbaa !17
  %109 = load ptr, ptr %70, align 8, !tbaa !15
  br label %110

110:                                              ; preds = %106, %100
  %111 = phi ptr [ %109, %106 ], [ %101, %100 ]
  %112 = phi ptr [ %108, %106 ], [ %102, %100 ]
  %113 = getelementptr inbounds %struct.internal_state, ptr %112, i64 0, i32 14
  %114 = load ptr, ptr %113, align 8, !tbaa !28
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %110
  %117 = load ptr, ptr %27, align 8, !tbaa !14
  tail call void %111(ptr noundef %117, ptr noundef nonnull %114) #10
  %118 = load ptr, ptr %70, align 8, !tbaa !15
  %119 = load ptr, ptr %32, align 8, !tbaa !17
  br label %120

120:                                              ; preds = %116, %110
  %121 = phi ptr [ %119, %116 ], [ %112, %110 ]
  %122 = phi ptr [ %118, %116 ], [ %111, %110 ]
  %123 = load ptr, ptr %27, align 8, !tbaa !14
  tail call void %122(ptr noundef %123, ptr noundef %121) #10
  store ptr null, ptr %32, align 8, !tbaa !17
  br label %188

124:                                              ; preds = %61
  %125 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 14
  %126 = load ptr, ptr %125, align 8, !tbaa !28
  %127 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 59
  %128 = load i64, ptr %127, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %56, ptr align 1 %126, i64 %128, i1 false)
  %129 = load ptr, ptr %43, align 8, !tbaa !29
  %130 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 16
  %131 = load ptr, ptr %130, align 8, !tbaa !29
  %132 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 60
  %133 = load i32, ptr %132, align 8, !tbaa !54
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %124
  %136 = load i32, ptr %35, align 8, !tbaa !25
  br label %149

137:                                              ; preds = %124
  %138 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 27
  %139 = load i32, ptr %138, align 4, !tbaa !64
  %140 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 55
  %141 = load i32, ptr %140, align 4, !tbaa !67
  %142 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %139, i32 %141), !nosanitize !16
  %143 = extractvalue { i32, i1 } %142, 1, !nosanitize !16
  br i1 %143, label %144, label %145, !nosanitize !16

144:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

145:                                              ; preds = %137
  %146 = extractvalue { i32, i1 } %142, 0, !nosanitize !16
  %147 = load i32, ptr %35, align 8, !tbaa !25
  %148 = tail call i32 @llvm.umin.i32(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %135
  %150 = phi i32 [ %136, %135 ], [ %148, %145 ]
  %151 = zext i32 %150 to i64
  %152 = shl nuw nsw i64 %151, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %129, ptr align 2 %131, i64 %152, i1 false)
  %153 = load i32, ptr %46, align 4, !tbaa !30
  %154 = zext i32 %153 to i64
  %155 = shl nuw nsw i64 %154, 1
  %156 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 17
  %157 = load ptr, ptr %156, align 8, !tbaa !31
  %158 = load ptr, ptr %49, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %158, ptr align 2 %157, i64 %155, i1 false)
  %159 = load ptr, ptr %55, align 8, !tbaa !34
  %160 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 4
  %161 = load ptr, ptr %160, align 8, !tbaa !49
  %162 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !34
  %164 = ptrtoint ptr %161 to i64
  %165 = ptrtoint ptr %163 to i64
  %166 = sub i64 %164, %165
  %167 = getelementptr inbounds i8, ptr %159, i64 %166
  %168 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 4
  store ptr %167, ptr %168, align 8, !tbaa !49
  %169 = load ptr, ptr %160, align 8, !tbaa !49
  %170 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 5
  %171 = load i64, ptr %170, align 8, !tbaa !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %167, ptr align 1 %169, i64 %171, i1 false)
  %172 = load ptr, ptr %55, align 8, !tbaa !34
  %173 = load i32, ptr %52, align 8, !tbaa !33
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i8, ptr %172, i64 %174
  %176 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 48
  store ptr %175, ptr %176, align 8, !tbaa !37
  %177 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 48
  %178 = load ptr, ptr %177, align 8, !tbaa !37
  %179 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 50
  %180 = load i32, ptr %179, align 4, !tbaa !110
  %181 = zext i32 %180 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %175, ptr align 1 %178, i64 %181, i1 false)
  %182 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 37
  %183 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 40
  store ptr %182, ptr %183, align 8, !tbaa !112
  %184 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 38
  %185 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 41
  store ptr %184, ptr %185, align 8, !tbaa !113
  %186 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 39
  %187 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 42
  store ptr %186, ptr %187, align 8, !tbaa !114
  br label %188

188:                                              ; preds = %12, %16, %19, %2, %4, %8, %120, %79, %76, %73, %69, %66, %24, %22, %149
  %189 = phi i32 [ 0, %149 ], [ -2, %22 ], [ -4, %24 ], [ -4, %66 ], [ -4, %69 ], [ -4, %73 ], [ -4, %76 ], [ -4, %79 ], [ -4, %120 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %189
}

; Function Attrs: nounwind uwtable
define internal i32 @deflate_fast(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 19
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 60
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 18
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 13
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 59
  %20 = icmp eq i32 %1, 0
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 30
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 36
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 31
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %26 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %27 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 32
  br label %30

30:                                               ; preds = %659, %2
  %31 = load i32, ptr %3, align 4, !tbaa !66
  %32 = icmp ult i32 %31, 262
  br i1 %32, label %33, label %306

33:                                               ; preds = %30
  %34 = load i32, ptr %4, align 8, !tbaa !25
  %35 = zext i32 %34 to i64
  br label %36

36:                                               ; preds = %252, %33
  %37 = phi i32 [ %184, %252 ], [ %31, %33 ]
  %38 = load i64, ptr %5, align 8, !tbaa !52
  %39 = zext nneg i32 %37 to i64
  %40 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %38, i64 %39), !nosanitize !16
  %41 = extractvalue { i64, i1 } %40, 1, !nosanitize !16
  br i1 %41, label %42, label %43, !nosanitize !16

42:                                               ; preds = %280, %268, %191, %79, %74, %66, %63, %49, %43, %36
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

43:                                               ; preds = %36
  %44 = extractvalue { i64, i1 } %40, 0, !nosanitize !16
  %45 = load i32, ptr %6, align 4, !tbaa !64
  %46 = zext i32 %45 to i64
  %47 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %44, i64 %46), !nosanitize !16
  %48 = extractvalue { i64, i1 } %47, 1, !nosanitize !16
  br i1 %48, label %42, label %49, !nosanitize !16

49:                                               ; preds = %43
  %50 = extractvalue { i64, i1 } %47, 0, !nosanitize !16
  %51 = trunc i64 %50 to i32
  %52 = load i32, ptr %4, align 8, !tbaa !25
  %53 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %52, i32 262), !nosanitize !16
  %54 = extractvalue { i32, i1 } %53, 1, !nosanitize !16
  br i1 %54, label %42, label %55, !nosanitize !16

55:                                               ; preds = %49
  %56 = extractvalue { i32, i1 } %53, 0, !nosanitize !16
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %34, i32 %56), !nosanitize !16
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !16
  br i1 %58, label %59, label %60, !nosanitize !16

59:                                               ; preds = %283, %196, %183, %179, %126, %55, %223, %220
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

60:                                               ; preds = %55
  %61 = extractvalue { i32, i1 } %57, 0, !nosanitize !16
  %62 = icmp ult i32 %45, %61
  br i1 %62, label %132, label %63

63:                                               ; preds = %60
  %64 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %34, i32 %51), !nosanitize !16
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !16
  br i1 %65, label %42, label %66, !nosanitize !16

66:                                               ; preds = %63
  %67 = extractvalue { i32, i1 } %64, 0, !nosanitize !16
  %68 = load ptr, ptr %7, align 8, !tbaa !28
  %69 = getelementptr inbounds i8, ptr %68, i64 %35
  %70 = zext i32 %67 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %68, ptr align 1 %69, i64 %70, i1 false)
  %71 = load i32, ptr %8, align 8, !tbaa !74
  %72 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %71, i32 %34), !nosanitize !16
  %73 = extractvalue { i32, i1 } %72, 1, !nosanitize !16
  br i1 %73, label %42, label %74, !nosanitize !16

74:                                               ; preds = %66
  %75 = extractvalue { i32, i1 } %72, 0, !nosanitize !16
  store i32 %75, ptr %8, align 8, !tbaa !74
  %76 = load i32, ptr %6, align 4, !tbaa !64
  %77 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %76, i32 %34), !nosanitize !16
  %78 = extractvalue { i32, i1 } %77, 1, !nosanitize !16
  br i1 %78, label %42, label %79, !nosanitize !16

79:                                               ; preds = %74
  %80 = extractvalue { i32, i1 } %77, 0, !nosanitize !16
  store i32 %80, ptr %6, align 4, !tbaa !64
  %81 = load i64, ptr %9, align 8, !tbaa !65
  %82 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %81, i64 %35), !nosanitize !16
  %83 = extractvalue { i64, i1 } %82, 1, !nosanitize !16
  br i1 %83, label %42, label %84, !nosanitize !16

84:                                               ; preds = %79
  %85 = extractvalue { i64, i1 } %82, 0, !nosanitize !16
  store i64 %85, ptr %9, align 8, !tbaa !65
  %86 = load i32, ptr %10, align 4, !tbaa !67
  %87 = icmp ugt i32 %86, %80
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 %80, ptr %10, align 4, !tbaa !67
  br label %89

89:                                               ; preds = %88, %84
  %90 = load i32, ptr %4, align 8, !tbaa !25
  %91 = load i32, ptr %11, align 4, !tbaa !30
  %92 = load ptr, ptr %12, align 8, !tbaa !31
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds i16, ptr %92, i64 %93
  br label %95

95:                                               ; preds = %106, %89
  %96 = phi ptr [ %94, %89 ], [ %98, %106 ]
  %97 = phi i32 [ %91, %89 ], [ %107, %106 ]
  %98 = getelementptr inbounds i16, ptr %96, i64 -1
  %99 = load i16, ptr %98, align 2, !tbaa !53
  %100 = zext i16 %99 to i32
  %101 = tail call i32 @llvm.usub.sat.i32(i32 %100, i32 %90)
  %102 = trunc i32 %101 to i16
  store i16 %102, ptr %98, align 2, !tbaa !53
  %103 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %97, i32 1), !nosanitize !16
  %104 = extractvalue { i32, i1 } %103, 1, !nosanitize !16
  br i1 %104, label %105, label %106, !nosanitize !16

105:                                              ; preds = %95, %113
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

106:                                              ; preds = %95
  %107 = extractvalue { i32, i1 } %103, 0, !nosanitize !16
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %95, !llvm.loop !75

109:                                              ; preds = %106
  %110 = load ptr, ptr %13, align 8, !tbaa !29
  %111 = zext i32 %90 to i64
  %112 = getelementptr inbounds i16, ptr %110, i64 %111
  br label %113

113:                                              ; preds = %123, %109
  %114 = phi ptr [ %112, %109 ], [ %116, %123 ]
  %115 = phi i32 [ %90, %109 ], [ %124, %123 ]
  %116 = getelementptr inbounds i16, ptr %114, i64 -1
  %117 = load i16, ptr %116, align 2, !tbaa !53
  %118 = zext i16 %117 to i32
  %119 = tail call i32 @llvm.usub.sat.i32(i32 %118, i32 %90)
  %120 = trunc i32 %119 to i16
  store i16 %120, ptr %116, align 2, !tbaa !53
  %121 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %115, i32 1), !nosanitize !16
  %122 = extractvalue { i32, i1 } %121, 1, !nosanitize !16
  br i1 %122, label %105, label %123, !nosanitize !16

123:                                              ; preds = %113
  %124 = extractvalue { i32, i1 } %121, 0, !nosanitize !16
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %113, !llvm.loop !77

126:                                              ; preds = %123
  store i32 1, ptr %14, align 8, !tbaa !54
  %127 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %51, i32 %34), !nosanitize !16
  %128 = extractvalue { i32, i1 } %127, 1, !nosanitize !16
  br i1 %128, label %59, label %129, !nosanitize !16

129:                                              ; preds = %126
  %130 = extractvalue { i32, i1 } %127, 0, !nosanitize !16
  %131 = load i32, ptr %3, align 4, !tbaa !66
  br label %132

132:                                              ; preds = %129, %60
  %133 = phi i32 [ %131, %129 ], [ %37, %60 ]
  %134 = phi i32 [ %80, %129 ], [ %45, %60 ]
  %135 = phi i32 [ %130, %129 ], [ %51, %60 ]
  %136 = load ptr, ptr %0, align 8, !tbaa !18
  %137 = getelementptr inbounds %struct.z_stream_s, ptr %136, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !72
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %257, label %140

140:                                              ; preds = %132
  %141 = load ptr, ptr %7, align 8, !tbaa !28
  %142 = zext i32 %134 to i64
  %143 = getelementptr inbounds i8, ptr %141, i64 %142
  %144 = zext i32 %133 to i64
  %145 = getelementptr inbounds i8, ptr %143, i64 %144
  %146 = tail call i32 @llvm.umin.i32(i32 %138, i32 %135)
  %147 = icmp eq i32 %135, 0
  br i1 %147, label %179, label %148

148:                                              ; preds = %140
  %149 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %138, i32 %146), !nosanitize !16
  %150 = extractvalue { i32, i1 } %149, 1, !nosanitize !16
  br i1 %150, label %151, label %152, !nosanitize !16

151:                                              ; preds = %148
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

152:                                              ; preds = %148
  %153 = extractvalue { i32, i1 } %149, 0, !nosanitize !16
  store i32 %153, ptr %137, align 8, !tbaa !72
  %154 = load ptr, ptr %136, align 8, !tbaa !73
  %155 = zext i32 %146 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %145, ptr align 1 %154, i64 %155, i1 false)
  %156 = getelementptr inbounds %struct.z_stream_s, ptr %136, i64 0, i32 7
  %157 = load ptr, ptr %156, align 8, !tbaa !17
  %158 = getelementptr inbounds %struct.internal_state, ptr %157, i64 0, i32 6
  %159 = load i32, ptr %158, align 8, !tbaa !23
  switch i32 %159, label %168 [
    i32 1, label %160
    i32 2, label %164
  ]

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.z_stream_s, ptr %136, i64 0, i32 12
  %162 = load i64, ptr %161, align 8, !tbaa !50
  %163 = tail call i64 @adler32(i64 noundef %162, ptr noundef %145, i32 noundef %146) #10
  store i64 %163, ptr %161, align 8, !tbaa !50
  br label %168

164:                                              ; preds = %152
  %165 = getelementptr inbounds %struct.z_stream_s, ptr %136, i64 0, i32 12
  %166 = load i64, ptr %165, align 8, !tbaa !50
  %167 = tail call i64 @crc32(i64 noundef %166, ptr noundef %145, i32 noundef %146) #10
  store i64 %167, ptr %165, align 8, !tbaa !50
  br label %168

168:                                              ; preds = %164, %160, %152
  %169 = load ptr, ptr %136, align 8, !tbaa !73
  %170 = getelementptr inbounds i8, ptr %169, i64 %155
  store ptr %170, ptr %136, align 8, !tbaa !73
  %171 = getelementptr inbounds %struct.z_stream_s, ptr %136, i64 0, i32 2
  %172 = load i64, ptr %171, align 8, !tbaa !46
  %173 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %172, i64 %155), !nosanitize !16
  %174 = extractvalue { i64, i1 } %173, 1, !nosanitize !16
  br i1 %174, label %175, label %176, !nosanitize !16

175:                                              ; preds = %168
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

176:                                              ; preds = %168
  %177 = extractvalue { i64, i1 } %173, 0, !nosanitize !16
  store i64 %177, ptr %171, align 8, !tbaa !46
  %178 = load i32, ptr %3, align 4, !tbaa !66
  br label %179

179:                                              ; preds = %176, %140
  %180 = phi i32 [ %133, %140 ], [ %178, %176 ]
  %181 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %180, i32 %146), !nosanitize !16
  %182 = extractvalue { i32, i1 } %181, 1, !nosanitize !16
  br i1 %182, label %59, label %183, !nosanitize !16

183:                                              ; preds = %179
  %184 = extractvalue { i32, i1 } %181, 0, !nosanitize !16
  store i32 %184, ptr %3, align 4, !tbaa !66
  %185 = load i32, ptr %10, align 4, !tbaa !67
  %186 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %184, i32 %185), !nosanitize !16
  %187 = extractvalue { i32, i1 } %186, 1, !nosanitize !16
  br i1 %187, label %59, label %188, !nosanitize !16

188:                                              ; preds = %183
  %189 = extractvalue { i32, i1 } %186, 0, !nosanitize !16
  %190 = icmp ugt i32 %189, 2
  br i1 %190, label %191, label %250

191:                                              ; preds = %188
  %192 = load i32, ptr %6, align 4, !tbaa !64
  %193 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %192, i32 %185), !nosanitize !16
  %194 = extractvalue { i32, i1 } %193, 0, !nosanitize !16
  %195 = extractvalue { i32, i1 } %193, 1, !nosanitize !16
  br i1 %195, label %42, label %196, !nosanitize !16

196:                                              ; preds = %191
  %197 = load ptr, ptr %7, align 8, !tbaa !28
  %198 = zext i32 %194 to i64
  %199 = getelementptr inbounds i8, ptr %197, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !5
  %201 = zext i8 %200 to i32
  store i32 %201, ptr %15, align 8, !tbaa !71
  %202 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %194, i32 1), !nosanitize !16
  %203 = extractvalue { i32, i1 } %202, 1, !nosanitize !16
  br i1 %203, label %59, label %204, !nosanitize !16

204:                                              ; preds = %196
  %205 = extractvalue { i32, i1 } %202, 0, !nosanitize !16
  %206 = load i32, ptr %16, align 8, !tbaa !45
  %207 = shl i32 %201, %206
  %208 = zext i32 %205 to i64
  %209 = getelementptr inbounds i8, ptr %197, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !5
  %211 = zext i8 %210 to i32
  %212 = xor i32 %207, %211
  %213 = load i32, ptr %17, align 4, !tbaa !44
  %214 = and i32 %212, %213
  store i32 %214, ptr %15, align 8, !tbaa !71
  br label %215

215:                                              ; preds = %246, %204
  %216 = phi i32 [ %214, %204 ], [ %232, %246 ]
  %217 = phi i32 [ %185, %204 ], [ %243, %246 ]
  %218 = phi i32 [ %194, %204 ], [ %247, %246 ]
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %250, label %220

220:                                              ; preds = %215
  %221 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %218, i32 3), !nosanitize !16
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !16
  br i1 %222, label %59, label %223, !nosanitize !16

223:                                              ; preds = %220
  %224 = shl i32 %216, %206
  %225 = extractvalue { i32, i1 } %221, 0, !nosanitize !16
  %226 = add i32 %225, -1
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i8, ptr %197, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !5
  %230 = zext i8 %229 to i32
  %231 = xor i32 %224, %230
  %232 = and i32 %231, %213
  store i32 %232, ptr %15, align 8, !tbaa !71
  %233 = load ptr, ptr %12, align 8, !tbaa !31
  %234 = zext i32 %232 to i64
  %235 = getelementptr inbounds i16, ptr %233, i64 %234
  %236 = load i16, ptr %235, align 2, !tbaa !53
  %237 = load ptr, ptr %13, align 8, !tbaa !29
  %238 = load i32, ptr %18, align 8, !tbaa !26
  %239 = and i32 %238, %218
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i16, ptr %237, i64 %240
  store i16 %236, ptr %241, align 2, !tbaa !53
  %242 = trunc i32 %218 to i16
  store i16 %242, ptr %235, align 2, !tbaa !53
  %243 = add i32 %217, -1
  store i32 %243, ptr %10, align 4, !tbaa !67
  %244 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %184, i32 %243), !nosanitize !16
  %245 = extractvalue { i32, i1 } %244, 1, !nosanitize !16
  br i1 %245, label %59, label %246, !nosanitize !16

246:                                              ; preds = %223
  %247 = add nuw i32 %218, 1
  %248 = extractvalue { i32, i1 } %244, 0, !nosanitize !16
  %249 = icmp ult i32 %248, 3
  br i1 %249, label %250, label %215, !llvm.loop !78

250:                                              ; preds = %246, %215, %188
  %251 = icmp ult i32 %184, 262
  br i1 %251, label %252, label %257

252:                                              ; preds = %250
  %253 = load ptr, ptr %0, align 8, !tbaa !18
  %254 = getelementptr inbounds %struct.z_stream_s, ptr %253, i64 0, i32 1
  %255 = load i32, ptr %254, align 8, !tbaa !72
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %36, !llvm.loop !79

257:                                              ; preds = %252, %250, %132
  %258 = phi i32 [ %184, %252 ], [ %184, %250 ], [ %133, %132 ]
  %259 = load i64, ptr %19, align 8, !tbaa !32
  %260 = load i64, ptr %5, align 8, !tbaa !52
  %261 = icmp ult i64 %259, %260
  br i1 %261, label %262, label %298

262:                                              ; preds = %257
  %263 = load i32, ptr %6, align 4, !tbaa !64
  %264 = zext i32 %263 to i64
  %265 = zext i32 %258 to i64
  %266 = add nuw nsw i64 %265, %264
  %267 = icmp ult i64 %259, %266
  br i1 %267, label %268, label %277

268:                                              ; preds = %262
  %269 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %260, i64 %266), !nosanitize !16
  %270 = extractvalue { i64, i1 } %269, 1, !nosanitize !16
  br i1 %270, label %42, label %271, !nosanitize !16

271:                                              ; preds = %268
  %272 = extractvalue { i64, i1 } %269, 0, !nosanitize !16
  %273 = tail call i64 @llvm.umin.i64(i64 %272, i64 258)
  %274 = load ptr, ptr %7, align 8, !tbaa !28
  %275 = getelementptr inbounds i8, ptr %274, i64 %266
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %275, i8 0, i64 %273, i1 false)
  %276 = add nuw nsw i64 %273, %266
  br label %295

277:                                              ; preds = %262
  %278 = add nuw nsw i64 %266, 258
  %279 = icmp ult i64 %259, %278
  br i1 %279, label %280, label %298

280:                                              ; preds = %277
  %281 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %260, i64 %259), !nosanitize !16
  %282 = extractvalue { i64, i1 } %281, 1, !nosanitize !16
  br i1 %282, label %42, label %283, !nosanitize !16

283:                                              ; preds = %280
  %284 = sub nuw nsw i64 %278, %259
  %285 = extractvalue { i64, i1 } %281, 0, !nosanitize !16
  %286 = tail call i64 @llvm.umin.i64(i64 %284, i64 %285)
  %287 = load ptr, ptr %7, align 8, !tbaa !28
  %288 = getelementptr inbounds i8, ptr %287, i64 %259
  %289 = and i64 %286, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %288, i8 0, i64 %289, i1 false)
  %290 = load i64, ptr %19, align 8, !tbaa !32
  %291 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %290, i64 %286), !nosanitize !16
  %292 = extractvalue { i64, i1 } %291, 1, !nosanitize !16
  br i1 %292, label %59, label %293, !nosanitize !16

293:                                              ; preds = %283
  %294 = extractvalue { i64, i1 } %291, 0, !nosanitize !16
  br label %295

295:                                              ; preds = %293, %271
  %296 = phi i64 [ %276, %271 ], [ %294, %293 ]
  store i64 %296, ptr %19, align 8, !tbaa !32
  %297 = load i32, ptr %3, align 4, !tbaa !66
  br label %298

298:                                              ; preds = %257, %277, %295
  %299 = phi i32 [ %258, %257 ], [ %258, %277 ], [ %297, %295 ]
  %300 = icmp ult i32 %299, 262
  %301 = and i1 %20, %300
  br i1 %301, label %912, label %302

302:                                              ; preds = %298
  %303 = icmp eq i32 %299, 0
  br i1 %303, label %773, label %304

304:                                              ; preds = %302
  %305 = icmp ugt i32 %299, 2
  br i1 %305, label %306, label %515

306:                                              ; preds = %30, %304
  %307 = phi i32 [ %299, %304 ], [ %31, %30 ]
  %308 = load i32, ptr %6, align 4, !tbaa !64
  %309 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %308, i32 2), !nosanitize !16
  %310 = extractvalue { i32, i1 } %309, 1, !nosanitize !16
  br i1 %310, label %311, label %312, !nosanitize !16

311:                                              ; preds = %700, %677, %669, %660, %639, %635, %542, %533, %527, %306, %601, %596
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

312:                                              ; preds = %306
  %313 = extractvalue { i32, i1 } %309, 0, !nosanitize !16
  %314 = load ptr, ptr %7, align 8, !tbaa !28
  %315 = load i32, ptr %15, align 8, !tbaa !71
  %316 = load i32, ptr %16, align 8, !tbaa !45
  %317 = shl i32 %315, %316
  %318 = zext i32 %313 to i64
  %319 = getelementptr inbounds i8, ptr %314, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !5
  %321 = zext i8 %320 to i32
  %322 = xor i32 %317, %321
  %323 = load i32, ptr %17, align 4, !tbaa !44
  %324 = and i32 %322, %323
  store i32 %324, ptr %15, align 8, !tbaa !71
  %325 = load ptr, ptr %12, align 8, !tbaa !31
  %326 = zext i32 %324 to i64
  %327 = getelementptr inbounds i16, ptr %325, i64 %326
  %328 = load i16, ptr %327, align 2, !tbaa !53
  %329 = load ptr, ptr %13, align 8, !tbaa !29
  %330 = load i32, ptr %18, align 8, !tbaa !26
  %331 = and i32 %330, %308
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds i16, ptr %329, i64 %332
  store i16 %328, ptr %333, align 2, !tbaa !53
  %334 = zext i16 %328 to i32
  %335 = trunc i32 %308 to i16
  store i16 %335, ptr %327, align 2, !tbaa !53
  %336 = icmp eq i16 %328, 0
  br i1 %336, label %515, label %337

337:                                              ; preds = %312
  %338 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %308, i32 %334), !nosanitize !16
  %339 = extractvalue { i32, i1 } %338, 0, !nosanitize !16
  %340 = extractvalue { i32, i1 } %338, 1, !nosanitize !16
  br i1 %340, label %341, label %342, !nosanitize !16

341:                                              ; preds = %715, %685, %590, %552, %520, %342, %337, %605, %853, %784
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

342:                                              ; preds = %337
  %343 = load i32, ptr %4, align 8, !tbaa !25
  %344 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %343, i32 262), !nosanitize !16
  %345 = extractvalue { i32, i1 } %344, 1, !nosanitize !16
  br i1 %345, label %341, label %346, !nosanitize !16

346:                                              ; preds = %342
  %347 = extractvalue { i32, i1 } %344, 0, !nosanitize !16
  %348 = icmp ugt i32 %339, %347
  br i1 %348, label %515, label %350

349:                                              ; preds = %350, %506, %478, %388
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

350:                                              ; preds = %346
  %351 = zext i32 %308 to i64
  %352 = getelementptr inbounds i8, ptr %314, i64 %351
  %353 = load i32, ptr %21, align 8, !tbaa !68
  %354 = tail call i32 @llvm.usub.sat.i32(i32 %308, i32 %347)
  %355 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %353, i32 -1)
  %356 = extractvalue { i32, i1 } %355, 1, !nosanitize !16
  br i1 %356, label %349, label %357, !nosanitize !16

357:                                              ; preds = %350
  %358 = load i32, ptr %22, align 8, !tbaa !61
  %359 = load i32, ptr %23, align 4, !tbaa !63
  %360 = getelementptr inbounds i8, ptr %352, i64 258
  %361 = extractvalue { i32, i1 } %355, 0, !nosanitize !16
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8, ptr %352, i64 %362
  %364 = load i8, ptr %363, align 1, !tbaa !5
  %365 = sext i32 %353 to i64
  %366 = getelementptr inbounds i8, ptr %352, i64 %365
  %367 = load i8, ptr %366, align 1, !tbaa !5
  %368 = load i32, ptr %24, align 4, !tbaa !59
  %369 = icmp ult i32 %353, %368
  %370 = lshr i32 %359, 2
  %371 = select i1 %369, i32 %359, i32 %370
  %372 = tail call i32 @llvm.umin.i32(i32 %358, i32 %307)
  %373 = getelementptr i8, ptr %352, i64 -1
  %374 = getelementptr inbounds i8, ptr %352, i64 1
  %375 = ptrtoint ptr %360 to i64
  br label %376

376:                                              ; preds = %509, %357
  %377 = phi i32 [ %353, %357 ], [ %497, %509 ]
  %378 = phi i32 [ %371, %357 ], [ %510, %509 ]
  %379 = phi i32 [ %334, %357 ], [ %504, %509 ]
  %380 = phi i8 [ %364, %357 ], [ %498, %509 ]
  %381 = phi i8 [ %367, %357 ], [ %499, %509 ]
  %382 = zext nneg i32 %379 to i64
  %383 = getelementptr inbounds i8, ptr %314, i64 %382
  %384 = sext i32 %377 to i64
  %385 = getelementptr inbounds i8, ptr %383, i64 %384
  %386 = load i8, ptr %385, align 1, !tbaa !5
  %387 = icmp eq i8 %386, %381
  br i1 %387, label %388, label %496

388:                                              ; preds = %376
  %389 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %377, i32 -1)
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !16
  br i1 %390, label %349, label %391, !nosanitize !16

391:                                              ; preds = %388
  %392 = extractvalue { i32, i1 } %389, 0, !nosanitize !16
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8, ptr %383, i64 %393
  %395 = load i8, ptr %394, align 1, !tbaa !5
  %396 = icmp eq i8 %395, %380
  br i1 %396, label %397, label %496

397:                                              ; preds = %391
  %398 = load i8, ptr %383, align 1, !tbaa !5
  %399 = load i8, ptr %352, align 1, !tbaa !5
  %400 = icmp eq i8 %398, %399
  br i1 %400, label %401, label %496

401:                                              ; preds = %397
  %402 = getelementptr inbounds i8, ptr %383, i64 1
  %403 = load i8, ptr %402, align 1, !tbaa !5
  %404 = load i8, ptr %374, align 1, !tbaa !5
  %405 = icmp eq i8 %403, %404
  br i1 %405, label %406, label %496

406:                                              ; preds = %401
  %407 = getelementptr inbounds i8, ptr %383, i64 2
  br label %408

408:                                              ; preds = %453, %406
  %409 = phi ptr [ %407, %406 ], [ %457, %453 ]
  %410 = phi i64 [ 2, %406 ], [ %454, %453 ]
  %411 = getelementptr inbounds i8, ptr %352, i64 %410
  %412 = getelementptr inbounds i8, ptr %411, i64 1
  %413 = load i8, ptr %412, align 1, !tbaa !5
  %414 = getelementptr inbounds i8, ptr %409, i64 1
  %415 = load i8, ptr %414, align 1, !tbaa !5
  %416 = icmp eq i8 %413, %415
  br i1 %416, label %417, label %462

417:                                              ; preds = %408
  %418 = getelementptr inbounds i8, ptr %411, i64 2
  %419 = load i8, ptr %418, align 1, !tbaa !5
  %420 = getelementptr inbounds i8, ptr %409, i64 2
  %421 = load i8, ptr %420, align 1, !tbaa !5
  %422 = icmp eq i8 %419, %421
  br i1 %422, label %423, label %464

423:                                              ; preds = %417
  %424 = getelementptr inbounds i8, ptr %411, i64 3
  %425 = load i8, ptr %424, align 1, !tbaa !5
  %426 = getelementptr inbounds i8, ptr %409, i64 3
  %427 = load i8, ptr %426, align 1, !tbaa !5
  %428 = icmp eq i8 %425, %427
  br i1 %428, label %429, label %466

429:                                              ; preds = %423
  %430 = getelementptr inbounds i8, ptr %411, i64 4
  %431 = load i8, ptr %430, align 1, !tbaa !5
  %432 = getelementptr inbounds i8, ptr %409, i64 4
  %433 = load i8, ptr %432, align 1, !tbaa !5
  %434 = icmp eq i8 %431, %433
  br i1 %434, label %435, label %468

435:                                              ; preds = %429
  %436 = getelementptr inbounds i8, ptr %411, i64 5
  %437 = load i8, ptr %436, align 1, !tbaa !5
  %438 = getelementptr inbounds i8, ptr %409, i64 5
  %439 = load i8, ptr %438, align 1, !tbaa !5
  %440 = icmp eq i8 %437, %439
  br i1 %440, label %441, label %470

441:                                              ; preds = %435
  %442 = getelementptr inbounds i8, ptr %411, i64 6
  %443 = load i8, ptr %442, align 1, !tbaa !5
  %444 = getelementptr inbounds i8, ptr %409, i64 6
  %445 = load i8, ptr %444, align 1, !tbaa !5
  %446 = icmp eq i8 %443, %445
  br i1 %446, label %447, label %472

447:                                              ; preds = %441
  %448 = getelementptr inbounds i8, ptr %411, i64 7
  %449 = load i8, ptr %448, align 1, !tbaa !5
  %450 = getelementptr inbounds i8, ptr %409, i64 7
  %451 = load i8, ptr %450, align 1, !tbaa !5
  %452 = icmp eq i8 %449, %451
  br i1 %452, label %453, label %474

453:                                              ; preds = %447
  %454 = add nuw nsw i64 %410, 8
  %455 = getelementptr inbounds i8, ptr %352, i64 %454
  %456 = load i8, ptr %455, align 1, !tbaa !5
  %457 = getelementptr inbounds i8, ptr %409, i64 8
  %458 = load i8, ptr %457, align 1, !tbaa !5
  %459 = icmp eq i8 %456, %458
  %460 = icmp ult i64 %410, 250
  %461 = and i1 %460, %459
  br i1 %461, label %408, label %476, !llvm.loop !115

462:                                              ; preds = %408
  %463 = getelementptr inbounds i8, ptr %411, i64 1
  br label %478

464:                                              ; preds = %417
  %465 = getelementptr inbounds i8, ptr %411, i64 2
  br label %478

466:                                              ; preds = %423
  %467 = getelementptr inbounds i8, ptr %411, i64 3
  br label %478

468:                                              ; preds = %429
  %469 = getelementptr inbounds i8, ptr %411, i64 4
  br label %478

470:                                              ; preds = %435
  %471 = getelementptr inbounds i8, ptr %411, i64 5
  br label %478

472:                                              ; preds = %441
  %473 = getelementptr inbounds i8, ptr %411, i64 6
  br label %478

474:                                              ; preds = %447
  %475 = getelementptr inbounds i8, ptr %411, i64 7
  br label %478

476:                                              ; preds = %453
  %477 = getelementptr inbounds i8, ptr %352, i64 %454
  br label %478

478:                                              ; preds = %476, %474, %472, %470, %468, %466, %464, %462
  %479 = phi ptr [ %463, %462 ], [ %465, %464 ], [ %467, %466 ], [ %469, %468 ], [ %471, %470 ], [ %473, %472 ], [ %475, %474 ], [ %477, %476 ]
  %480 = ptrtoint ptr %479 to i64
  %481 = sub i64 %375, %480
  %482 = trunc i64 %481 to i32
  %483 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %482), !nosanitize !16
  %484 = extractvalue { i32, i1 } %483, 0, !nosanitize !16
  %485 = extractvalue { i32, i1 } %483, 1, !nosanitize !16
  br i1 %485, label %349, label %486, !nosanitize !16

486:                                              ; preds = %478
  %487 = icmp sgt i32 %484, %377
  br i1 %487, label %488, label %496

488:                                              ; preds = %486
  store i32 %379, ptr %8, align 8, !tbaa !74
  %489 = icmp slt i32 %484, %372
  br i1 %489, label %490, label %512

490:                                              ; preds = %488
  %491 = sext i32 %484 to i64
  %492 = getelementptr i8, ptr %373, i64 %491
  %493 = load i8, ptr %492, align 1, !tbaa !5
  %494 = getelementptr inbounds i8, ptr %352, i64 %491
  %495 = load i8, ptr %494, align 1, !tbaa !5
  br label %496

496:                                              ; preds = %490, %486, %401, %397, %391, %376
  %497 = phi i32 [ %377, %376 ], [ %377, %391 ], [ %377, %397 ], [ %377, %401 ], [ %484, %490 ], [ %377, %486 ]
  %498 = phi i8 [ %380, %376 ], [ %380, %391 ], [ %380, %397 ], [ %380, %401 ], [ %493, %490 ], [ %380, %486 ]
  %499 = phi i8 [ %381, %376 ], [ %381, %391 ], [ %381, %397 ], [ %381, %401 ], [ %495, %490 ], [ %381, %486 ]
  %500 = and i32 %379, %330
  %501 = zext nneg i32 %500 to i64
  %502 = getelementptr inbounds i16, ptr %329, i64 %501
  %503 = load i16, ptr %502, align 2, !tbaa !53
  %504 = zext i16 %503 to i32
  %505 = icmp ult i32 %354, %504
  br i1 %505, label %506, label %512

506:                                              ; preds = %496
  %507 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %378, i32 1), !nosanitize !16
  %508 = extractvalue { i32, i1 } %507, 1, !nosanitize !16
  br i1 %508, label %349, label %509, !nosanitize !16

509:                                              ; preds = %506
  %510 = extractvalue { i32, i1 } %507, 0, !nosanitize !16
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %376, !llvm.loop !116

512:                                              ; preds = %488, %496, %509
  %513 = phi i32 [ %497, %509 ], [ %497, %496 ], [ %484, %488 ]
  %514 = tail call i32 @llvm.umin.i32(i32 %513, i32 %307)
  store i32 %514, ptr %25, align 8, !tbaa !69
  br label %517

515:                                              ; preds = %312, %346, %304
  %516 = load i32, ptr %25, align 8, !tbaa !69
  br label %517

517:                                              ; preds = %515, %512
  %518 = phi i32 [ %516, %515 ], [ %514, %512 ]
  %519 = icmp ugt i32 %518, 2
  br i1 %519, label %520, label %660

520:                                              ; preds = %517
  %521 = trunc i32 %518 to i8
  %522 = add i8 %521, -3
  %523 = load i32, ptr %6, align 4, !tbaa !64
  %524 = load i32, ptr %8, align 8, !tbaa !74
  %525 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %523, i32 %524), !nosanitize !16
  %526 = extractvalue { i32, i1 } %525, 1, !nosanitize !16
  br i1 %526, label %341, label %527, !nosanitize !16

527:                                              ; preds = %520
  %528 = extractvalue { i32, i1 } %525, 0, !nosanitize !16
  %529 = trunc i32 %528 to i16
  %530 = load i32, ptr %27, align 4, !tbaa !110
  %531 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %530, i32 1), !nosanitize !16
  %532 = extractvalue { i32, i1 } %531, 1, !nosanitize !16
  br i1 %532, label %311, label %533, !nosanitize !16

533:                                              ; preds = %527
  %534 = extractvalue { i32, i1 } %531, 0, !nosanitize !16
  %535 = load ptr, ptr %26, align 8, !tbaa !37
  %536 = trunc i32 %528 to i8
  store i32 %534, ptr %27, align 4, !tbaa !110
  %537 = zext i32 %530 to i64
  %538 = getelementptr inbounds i8, ptr %535, i64 %537
  store i8 %536, ptr %538, align 1, !tbaa !5
  %539 = load i32, ptr %27, align 4, !tbaa !110
  %540 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %539, i32 1), !nosanitize !16
  %541 = extractvalue { i32, i1 } %540, 1, !nosanitize !16
  br i1 %541, label %311, label %542, !nosanitize !16

542:                                              ; preds = %533
  %543 = extractvalue { i32, i1 } %540, 0, !nosanitize !16
  %544 = load ptr, ptr %26, align 8, !tbaa !37
  %545 = lshr i32 %528, 8
  %546 = trunc i32 %545 to i8
  store i32 %543, ptr %27, align 4, !tbaa !110
  %547 = zext i32 %539 to i64
  %548 = getelementptr inbounds i8, ptr %544, i64 %547
  store i8 %546, ptr %548, align 1, !tbaa !5
  %549 = load i32, ptr %27, align 4, !tbaa !110
  %550 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %549, i32 1), !nosanitize !16
  %551 = extractvalue { i32, i1 } %550, 1, !nosanitize !16
  br i1 %551, label %311, label %552, !nosanitize !16

552:                                              ; preds = %542
  %553 = extractvalue { i32, i1 } %550, 0, !nosanitize !16
  %554 = load ptr, ptr %26, align 8, !tbaa !37
  store i32 %553, ptr %27, align 4, !tbaa !110
  %555 = zext i32 %549 to i64
  %556 = getelementptr inbounds i8, ptr %554, i64 %555
  store i8 %522, ptr %556, align 1, !tbaa !5
  %557 = add i16 %529, -1
  %558 = zext i8 %522 to i64
  %559 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %558
  %560 = load i8, ptr %559, align 1, !tbaa !5
  %561 = zext i8 %560 to i64
  %562 = add nuw nsw i64 %561, 257
  %563 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %562
  %564 = load i16, ptr %563, align 4, !tbaa !5
  %565 = add i16 %564, 1
  store i16 %565, ptr %563, align 4, !tbaa !5
  %566 = icmp ult i16 %557, 256
  %567 = lshr i16 %557, 7
  %568 = add nuw nsw i16 %567, 256
  %569 = select i1 %566, i16 %557, i16 %568
  %570 = zext i16 %569 to i64
  %571 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %570
  %572 = load i8, ptr %571, align 1, !tbaa !5
  %573 = zext i8 %572 to i64
  %574 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %573
  %575 = load i16, ptr %574, align 4, !tbaa !5
  %576 = add i16 %575, 1
  store i16 %576, ptr %574, align 4, !tbaa !5
  %577 = load i32, ptr %27, align 4, !tbaa !110
  %578 = load i32, ptr %28, align 8, !tbaa !38
  %579 = icmp eq i32 %577, %578
  %580 = load i32, ptr %25, align 8, !tbaa !69
  %581 = load i32, ptr %3, align 4, !tbaa !66
  %582 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %581, i32 %580), !nosanitize !16
  %583 = extractvalue { i32, i1 } %582, 1, !nosanitize !16
  br i1 %583, label %341, label %584, !nosanitize !16

584:                                              ; preds = %552
  %585 = extractvalue { i32, i1 } %582, 0, !nosanitize !16
  store i32 %585, ptr %3, align 4, !tbaa !66
  %586 = load i32, ptr %29, align 8, !tbaa !57
  %587 = icmp ule i32 %580, %586
  %588 = icmp ugt i32 %585, 2
  %589 = select i1 %587, i1 %588, i1 false
  br i1 %589, label %590, label %635

590:                                              ; preds = %584
  %591 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %580, i32 1), !nosanitize !16
  %592 = extractvalue { i32, i1 } %591, 1, !nosanitize !16
  br i1 %592, label %341, label %593, !nosanitize !16

593:                                              ; preds = %590
  %594 = extractvalue { i32, i1 } %591, 0, !nosanitize !16
  store i32 %594, ptr %25, align 8, !tbaa !69
  %595 = load i32, ptr %6, align 4, !tbaa !64
  br label %596

596:                                              ; preds = %630, %593
  %597 = phi i32 [ %631, %630 ], [ %594, %593 ]
  %598 = phi i32 [ %602, %630 ], [ %595, %593 ]
  %599 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %598, i32 1), !nosanitize !16
  %600 = extractvalue { i32, i1 } %599, 1, !nosanitize !16
  br i1 %600, label %311, label %601, !nosanitize !16

601:                                              ; preds = %596
  %602 = extractvalue { i32, i1 } %599, 0, !nosanitize !16
  store i32 %602, ptr %6, align 4, !tbaa !64
  %603 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %602, i32 2), !nosanitize !16
  %604 = extractvalue { i32, i1 } %603, 1, !nosanitize !16
  br i1 %604, label %311, label %605, !nosanitize !16

605:                                              ; preds = %601
  %606 = extractvalue { i32, i1 } %603, 0, !nosanitize !16
  %607 = load ptr, ptr %7, align 8, !tbaa !28
  %608 = load i32, ptr %15, align 8, !tbaa !71
  %609 = load i32, ptr %16, align 8, !tbaa !45
  %610 = shl i32 %608, %609
  %611 = zext i32 %606 to i64
  %612 = getelementptr inbounds i8, ptr %607, i64 %611
  %613 = load i8, ptr %612, align 1, !tbaa !5
  %614 = zext i8 %613 to i32
  %615 = xor i32 %610, %614
  %616 = load i32, ptr %17, align 4, !tbaa !44
  %617 = and i32 %615, %616
  store i32 %617, ptr %15, align 8, !tbaa !71
  %618 = load ptr, ptr %12, align 8, !tbaa !31
  %619 = zext i32 %617 to i64
  %620 = getelementptr inbounds i16, ptr %618, i64 %619
  %621 = load i16, ptr %620, align 2, !tbaa !53
  %622 = load ptr, ptr %13, align 8, !tbaa !29
  %623 = load i32, ptr %18, align 8, !tbaa !26
  %624 = and i32 %623, %602
  %625 = zext i32 %624 to i64
  %626 = getelementptr inbounds i16, ptr %622, i64 %625
  store i16 %621, ptr %626, align 2, !tbaa !53
  %627 = trunc i32 %602 to i16
  store i16 %627, ptr %620, align 2, !tbaa !53
  %628 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %597, i32 1), !nosanitize !16
  %629 = extractvalue { i32, i1 } %628, 1, !nosanitize !16
  br i1 %629, label %341, label %630, !nosanitize !16

630:                                              ; preds = %605
  %631 = extractvalue { i32, i1 } %628, 0, !nosanitize !16
  store i32 %631, ptr %25, align 8, !tbaa !69
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %633, label %596, !llvm.loop !117

633:                                              ; preds = %630
  %634 = add nuw i32 %602, 1
  store i32 %634, ptr %6, align 4, !tbaa !64
  br i1 %579, label %707, label %659

635:                                              ; preds = %584
  %636 = load i32, ptr %6, align 4, !tbaa !64
  %637 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %636, i32 %580), !nosanitize !16
  %638 = extractvalue { i32, i1 } %637, 1, !nosanitize !16
  br i1 %638, label %311, label %639, !nosanitize !16

639:                                              ; preds = %635
  %640 = extractvalue { i32, i1 } %637, 0, !nosanitize !16
  store i32 %640, ptr %6, align 4, !tbaa !64
  store i32 0, ptr %25, align 8, !tbaa !69
  %641 = load ptr, ptr %7, align 8, !tbaa !28
  %642 = zext i32 %640 to i64
  %643 = getelementptr inbounds i8, ptr %641, i64 %642
  %644 = load i8, ptr %643, align 1, !tbaa !5
  %645 = zext i8 %644 to i32
  store i32 %645, ptr %15, align 8, !tbaa !71
  %646 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %640, i32 1), !nosanitize !16
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !16
  br i1 %647, label %311, label %648, !nosanitize !16

648:                                              ; preds = %639
  %649 = extractvalue { i32, i1 } %646, 0, !nosanitize !16
  %650 = load i32, ptr %16, align 8, !tbaa !45
  %651 = shl i32 %645, %650
  %652 = zext i32 %649 to i64
  %653 = getelementptr inbounds i8, ptr %641, i64 %652
  %654 = load i8, ptr %653, align 1, !tbaa !5
  %655 = zext i8 %654 to i32
  %656 = xor i32 %651, %655
  %657 = load i32, ptr %17, align 4, !tbaa !44
  %658 = and i32 %656, %657
  store i32 %658, ptr %15, align 8, !tbaa !71
  br i1 %579, label %707, label %659

659:                                              ; preds = %648, %633, %768, %705
  br label %30

660:                                              ; preds = %517
  %661 = load ptr, ptr %7, align 8, !tbaa !28
  %662 = load i32, ptr %6, align 4, !tbaa !64
  %663 = zext i32 %662 to i64
  %664 = getelementptr inbounds i8, ptr %661, i64 %663
  %665 = load i8, ptr %664, align 1, !tbaa !5
  %666 = load i32, ptr %27, align 4, !tbaa !110
  %667 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %666, i32 1), !nosanitize !16
  %668 = extractvalue { i32, i1 } %667, 1, !nosanitize !16
  br i1 %668, label %311, label %669, !nosanitize !16

669:                                              ; preds = %660
  %670 = extractvalue { i32, i1 } %667, 0, !nosanitize !16
  %671 = load ptr, ptr %26, align 8, !tbaa !37
  store i32 %670, ptr %27, align 4, !tbaa !110
  %672 = zext i32 %666 to i64
  %673 = getelementptr inbounds i8, ptr %671, i64 %672
  store i8 0, ptr %673, align 1, !tbaa !5
  %674 = load i32, ptr %27, align 4, !tbaa !110
  %675 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %674, i32 1), !nosanitize !16
  %676 = extractvalue { i32, i1 } %675, 1, !nosanitize !16
  br i1 %676, label %311, label %677, !nosanitize !16

677:                                              ; preds = %669
  %678 = extractvalue { i32, i1 } %675, 0, !nosanitize !16
  %679 = load ptr, ptr %26, align 8, !tbaa !37
  store i32 %678, ptr %27, align 4, !tbaa !110
  %680 = zext i32 %674 to i64
  %681 = getelementptr inbounds i8, ptr %679, i64 %680
  store i8 0, ptr %681, align 1, !tbaa !5
  %682 = load i32, ptr %27, align 4, !tbaa !110
  %683 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %682, i32 1), !nosanitize !16
  %684 = extractvalue { i32, i1 } %683, 1, !nosanitize !16
  br i1 %684, label %311, label %685, !nosanitize !16

685:                                              ; preds = %677
  %686 = extractvalue { i32, i1 } %683, 0, !nosanitize !16
  %687 = load ptr, ptr %26, align 8, !tbaa !37
  store i32 %686, ptr %27, align 4, !tbaa !110
  %688 = zext i32 %682 to i64
  %689 = getelementptr inbounds i8, ptr %687, i64 %688
  store i8 %665, ptr %689, align 1, !tbaa !5
  %690 = zext i8 %665 to i64
  %691 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %690
  %692 = load i16, ptr %691, align 4, !tbaa !5
  %693 = add i16 %692, 1
  store i16 %693, ptr %691, align 4, !tbaa !5
  %694 = load i32, ptr %27, align 4, !tbaa !110
  %695 = load i32, ptr %28, align 8, !tbaa !38
  %696 = icmp eq i32 %694, %695
  %697 = load i32, ptr %3, align 4, !tbaa !66
  %698 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %697, i32 1), !nosanitize !16
  %699 = extractvalue { i32, i1 } %698, 1, !nosanitize !16
  br i1 %699, label %341, label %700, !nosanitize !16

700:                                              ; preds = %685
  %701 = extractvalue { i32, i1 } %698, 0, !nosanitize !16
  store i32 %701, ptr %3, align 4, !tbaa !66
  %702 = load i32, ptr %6, align 4, !tbaa !64
  %703 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %702, i32 1), !nosanitize !16
  %704 = extractvalue { i32, i1 } %703, 1, !nosanitize !16
  br i1 %704, label %311, label %705, !nosanitize !16

705:                                              ; preds = %700
  %706 = extractvalue { i32, i1 } %703, 0, !nosanitize !16
  store i32 %706, ptr %6, align 4, !tbaa !64
  br i1 %696, label %707, label %659

707:                                              ; preds = %648, %633, %705
  %708 = phi i32 [ %640, %648 ], [ %634, %633 ], [ %706, %705 ]
  %709 = load i64, ptr %9, align 8, !tbaa !65
  %710 = icmp sgt i64 %709, -1
  br i1 %710, label %711, label %715

711:                                              ; preds = %707
  %712 = load ptr, ptr %7, align 8, !tbaa !28
  %713 = and i64 %709, 4294967295
  %714 = getelementptr inbounds i8, ptr %712, i64 %713
  br label %715

715:                                              ; preds = %707, %711
  %716 = phi ptr [ %714, %711 ], [ null, %707 ]
  %717 = zext i32 %708 to i64
  %718 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %717, i64 %709), !nosanitize !16
  %719 = extractvalue { i64, i1 } %718, 1, !nosanitize !16
  br i1 %719, label %341, label %720, !nosanitize !16

720:                                              ; preds = %715
  %721 = extractvalue { i64, i1 } %718, 0, !nosanitize !16
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %716, i64 noundef %721, i32 noundef 0) #10
  %722 = load i32, ptr %6, align 4, !tbaa !64
  %723 = zext i32 %722 to i64
  store i64 %723, ptr %9, align 8, !tbaa !65
  %724 = load ptr, ptr %0, align 8, !tbaa !18
  %725 = getelementptr inbounds %struct.z_stream_s, ptr %724, i64 0, i32 7
  %726 = load ptr, ptr %725, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %726) #10
  %727 = getelementptr inbounds %struct.internal_state, ptr %726, i64 0, i32 5
  %728 = load i64, ptr %727, align 8, !tbaa !48
  %729 = getelementptr inbounds %struct.z_stream_s, ptr %724, i64 0, i32 4
  %730 = load i32, ptr %729, align 8, !tbaa !89
  %731 = zext i32 %730 to i64
  %732 = icmp ugt i64 %728, %731
  %733 = trunc i64 %728 to i32
  %734 = select i1 %732, i32 %730, i32 %733
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %768, label %736

736:                                              ; preds = %720
  %737 = getelementptr inbounds %struct.z_stream_s, ptr %724, i64 0, i32 3
  %738 = load ptr, ptr %737, align 8, !tbaa !88
  %739 = getelementptr inbounds %struct.internal_state, ptr %726, i64 0, i32 4
  %740 = load ptr, ptr %739, align 8, !tbaa !49
  %741 = zext i32 %734 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %738, ptr align 1 %740, i64 %741, i1 false)
  %742 = load ptr, ptr %737, align 8, !tbaa !88
  %743 = getelementptr inbounds i8, ptr %742, i64 %741
  store ptr %743, ptr %737, align 8, !tbaa !88
  %744 = load ptr, ptr %739, align 8, !tbaa !49
  %745 = getelementptr inbounds i8, ptr %744, i64 %741
  store ptr %745, ptr %739, align 8, !tbaa !49
  %746 = getelementptr inbounds %struct.z_stream_s, ptr %724, i64 0, i32 5
  %747 = load i64, ptr %746, align 8, !tbaa !90
  %748 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %747, i64 %741), !nosanitize !16
  %749 = extractvalue { i64, i1 } %748, 1, !nosanitize !16
  br i1 %749, label %750, label %751, !nosanitize !16

750:                                              ; preds = %736
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

751:                                              ; preds = %736
  %752 = extractvalue { i64, i1 } %748, 0, !nosanitize !16
  store i64 %752, ptr %746, align 8, !tbaa !90
  %753 = load i32, ptr %729, align 8, !tbaa !89
  %754 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %753, i32 %734), !nosanitize !16
  %755 = extractvalue { i32, i1 } %754, 1, !nosanitize !16
  br i1 %755, label %756, label %757, !nosanitize !16

756:                                              ; preds = %757, %751
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

757:                                              ; preds = %751
  %758 = extractvalue { i32, i1 } %754, 0, !nosanitize !16
  store i32 %758, ptr %729, align 8, !tbaa !89
  %759 = load i64, ptr %727, align 8, !tbaa !48
  %760 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %759, i64 %741), !nosanitize !16
  %761 = extractvalue { i64, i1 } %760, 1, !nosanitize !16
  br i1 %761, label %756, label %762, !nosanitize !16

762:                                              ; preds = %757
  %763 = extractvalue { i64, i1 } %760, 0, !nosanitize !16
  store i64 %763, ptr %727, align 8, !tbaa !48
  %764 = icmp eq i64 %763, 0
  br i1 %764, label %765, label %768

765:                                              ; preds = %762
  %766 = getelementptr inbounds %struct.internal_state, ptr %726, i64 0, i32 2
  %767 = load ptr, ptr %766, align 8, !tbaa !34
  store ptr %767, ptr %739, align 8, !tbaa !49
  br label %768

768:                                              ; preds = %720, %762, %765
  %769 = load ptr, ptr %0, align 8, !tbaa !18
  %770 = getelementptr inbounds %struct.z_stream_s, ptr %769, i64 0, i32 4
  %771 = load i32, ptr %770, align 8, !tbaa !89
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %912, label %659

773:                                              ; preds = %302
  %774 = load i32, ptr %6, align 4, !tbaa !64
  %775 = tail call i32 @llvm.umin.i32(i32 %774, i32 2)
  store i32 %775, ptr %10, align 4, !tbaa !67
  %776 = icmp eq i32 %1, 4
  br i1 %776, label %777, label %843

777:                                              ; preds = %773
  %778 = load i64, ptr %9, align 8, !tbaa !65
  %779 = icmp sgt i64 %778, -1
  br i1 %779, label %780, label %784

780:                                              ; preds = %777
  %781 = load ptr, ptr %7, align 8, !tbaa !28
  %782 = and i64 %778, 4294967295
  %783 = getelementptr inbounds i8, ptr %781, i64 %782
  br label %784

784:                                              ; preds = %777, %780
  %785 = phi ptr [ %783, %780 ], [ null, %777 ]
  %786 = zext i32 %774 to i64
  %787 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %786, i64 %778), !nosanitize !16
  %788 = extractvalue { i64, i1 } %787, 1, !nosanitize !16
  br i1 %788, label %341, label %789, !nosanitize !16

789:                                              ; preds = %784
  %790 = extractvalue { i64, i1 } %787, 0, !nosanitize !16
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %785, i64 noundef %790, i32 noundef 1) #10
  %791 = load i32, ptr %6, align 4, !tbaa !64
  %792 = zext i32 %791 to i64
  store i64 %792, ptr %9, align 8, !tbaa !65
  %793 = load ptr, ptr %0, align 8, !tbaa !18
  %794 = getelementptr inbounds %struct.z_stream_s, ptr %793, i64 0, i32 7
  %795 = load ptr, ptr %794, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %795) #10
  %796 = getelementptr inbounds %struct.internal_state, ptr %795, i64 0, i32 5
  %797 = load i64, ptr %796, align 8, !tbaa !48
  %798 = getelementptr inbounds %struct.z_stream_s, ptr %793, i64 0, i32 4
  %799 = load i32, ptr %798, align 8, !tbaa !89
  %800 = zext i32 %799 to i64
  %801 = icmp ugt i64 %797, %800
  %802 = trunc i64 %797 to i32
  %803 = select i1 %801, i32 %799, i32 %802
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %837, label %805

805:                                              ; preds = %789
  %806 = getelementptr inbounds %struct.z_stream_s, ptr %793, i64 0, i32 3
  %807 = load ptr, ptr %806, align 8, !tbaa !88
  %808 = getelementptr inbounds %struct.internal_state, ptr %795, i64 0, i32 4
  %809 = load ptr, ptr %808, align 8, !tbaa !49
  %810 = zext i32 %803 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %807, ptr align 1 %809, i64 %810, i1 false)
  %811 = load ptr, ptr %806, align 8, !tbaa !88
  %812 = getelementptr inbounds i8, ptr %811, i64 %810
  store ptr %812, ptr %806, align 8, !tbaa !88
  %813 = load ptr, ptr %808, align 8, !tbaa !49
  %814 = getelementptr inbounds i8, ptr %813, i64 %810
  store ptr %814, ptr %808, align 8, !tbaa !49
  %815 = getelementptr inbounds %struct.z_stream_s, ptr %793, i64 0, i32 5
  %816 = load i64, ptr %815, align 8, !tbaa !90
  %817 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %816, i64 %810), !nosanitize !16
  %818 = extractvalue { i64, i1 } %817, 1, !nosanitize !16
  br i1 %818, label %819, label %820, !nosanitize !16

819:                                              ; preds = %805
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

820:                                              ; preds = %805
  %821 = extractvalue { i64, i1 } %817, 0, !nosanitize !16
  store i64 %821, ptr %815, align 8, !tbaa !90
  %822 = load i32, ptr %798, align 8, !tbaa !89
  %823 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %822, i32 %803), !nosanitize !16
  %824 = extractvalue { i32, i1 } %823, 1, !nosanitize !16
  br i1 %824, label %825, label %826, !nosanitize !16

825:                                              ; preds = %826, %820
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

826:                                              ; preds = %820
  %827 = extractvalue { i32, i1 } %823, 0, !nosanitize !16
  store i32 %827, ptr %798, align 8, !tbaa !89
  %828 = load i64, ptr %796, align 8, !tbaa !48
  %829 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %828, i64 %810), !nosanitize !16
  %830 = extractvalue { i64, i1 } %829, 1, !nosanitize !16
  br i1 %830, label %825, label %831, !nosanitize !16

831:                                              ; preds = %826
  %832 = extractvalue { i64, i1 } %829, 0, !nosanitize !16
  store i64 %832, ptr %796, align 8, !tbaa !48
  %833 = icmp eq i64 %832, 0
  br i1 %833, label %834, label %837

834:                                              ; preds = %831
  %835 = getelementptr inbounds %struct.internal_state, ptr %795, i64 0, i32 2
  %836 = load ptr, ptr %835, align 8, !tbaa !34
  store ptr %836, ptr %808, align 8, !tbaa !49
  br label %837

837:                                              ; preds = %789, %831, %834
  %838 = load ptr, ptr %0, align 8, !tbaa !18
  %839 = getelementptr inbounds %struct.z_stream_s, ptr %838, i64 0, i32 4
  %840 = load i32, ptr %839, align 8, !tbaa !89
  %841 = icmp eq i32 %840, 0
  %842 = select i1 %841, i32 2, i32 3
  br label %912

843:                                              ; preds = %773
  %844 = load i32, ptr %27, align 4, !tbaa !110
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %911, label %846

846:                                              ; preds = %843
  %847 = load i64, ptr %9, align 8, !tbaa !65
  %848 = icmp sgt i64 %847, -1
  br i1 %848, label %849, label %853

849:                                              ; preds = %846
  %850 = load ptr, ptr %7, align 8, !tbaa !28
  %851 = and i64 %847, 4294967295
  %852 = getelementptr inbounds i8, ptr %850, i64 %851
  br label %853

853:                                              ; preds = %846, %849
  %854 = phi ptr [ %852, %849 ], [ null, %846 ]
  %855 = zext i32 %774 to i64
  %856 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %855, i64 %847), !nosanitize !16
  %857 = extractvalue { i64, i1 } %856, 1, !nosanitize !16
  br i1 %857, label %341, label %858, !nosanitize !16

858:                                              ; preds = %853
  %859 = extractvalue { i64, i1 } %856, 0, !nosanitize !16
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %854, i64 noundef %859, i32 noundef 0) #10
  %860 = load i32, ptr %6, align 4, !tbaa !64
  %861 = zext i32 %860 to i64
  store i64 %861, ptr %9, align 8, !tbaa !65
  %862 = load ptr, ptr %0, align 8, !tbaa !18
  %863 = getelementptr inbounds %struct.z_stream_s, ptr %862, i64 0, i32 7
  %864 = load ptr, ptr %863, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %864) #10
  %865 = getelementptr inbounds %struct.internal_state, ptr %864, i64 0, i32 5
  %866 = load i64, ptr %865, align 8, !tbaa !48
  %867 = getelementptr inbounds %struct.z_stream_s, ptr %862, i64 0, i32 4
  %868 = load i32, ptr %867, align 8, !tbaa !89
  %869 = zext i32 %868 to i64
  %870 = icmp ugt i64 %866, %869
  %871 = trunc i64 %866 to i32
  %872 = select i1 %870, i32 %868, i32 %871
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %906, label %874

874:                                              ; preds = %858
  %875 = getelementptr inbounds %struct.z_stream_s, ptr %862, i64 0, i32 3
  %876 = load ptr, ptr %875, align 8, !tbaa !88
  %877 = getelementptr inbounds %struct.internal_state, ptr %864, i64 0, i32 4
  %878 = load ptr, ptr %877, align 8, !tbaa !49
  %879 = zext i32 %872 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %876, ptr align 1 %878, i64 %879, i1 false)
  %880 = load ptr, ptr %875, align 8, !tbaa !88
  %881 = getelementptr inbounds i8, ptr %880, i64 %879
  store ptr %881, ptr %875, align 8, !tbaa !88
  %882 = load ptr, ptr %877, align 8, !tbaa !49
  %883 = getelementptr inbounds i8, ptr %882, i64 %879
  store ptr %883, ptr %877, align 8, !tbaa !49
  %884 = getelementptr inbounds %struct.z_stream_s, ptr %862, i64 0, i32 5
  %885 = load i64, ptr %884, align 8, !tbaa !90
  %886 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %885, i64 %879), !nosanitize !16
  %887 = extractvalue { i64, i1 } %886, 1, !nosanitize !16
  br i1 %887, label %888, label %889, !nosanitize !16

888:                                              ; preds = %874
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

889:                                              ; preds = %874
  %890 = extractvalue { i64, i1 } %886, 0, !nosanitize !16
  store i64 %890, ptr %884, align 8, !tbaa !90
  %891 = load i32, ptr %867, align 8, !tbaa !89
  %892 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %891, i32 %872), !nosanitize !16
  %893 = extractvalue { i32, i1 } %892, 1, !nosanitize !16
  br i1 %893, label %894, label %895, !nosanitize !16

894:                                              ; preds = %895, %889
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

895:                                              ; preds = %889
  %896 = extractvalue { i32, i1 } %892, 0, !nosanitize !16
  store i32 %896, ptr %867, align 8, !tbaa !89
  %897 = load i64, ptr %865, align 8, !tbaa !48
  %898 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %897, i64 %879), !nosanitize !16
  %899 = extractvalue { i64, i1 } %898, 1, !nosanitize !16
  br i1 %899, label %894, label %900, !nosanitize !16

900:                                              ; preds = %895
  %901 = extractvalue { i64, i1 } %898, 0, !nosanitize !16
  store i64 %901, ptr %865, align 8, !tbaa !48
  %902 = icmp eq i64 %901, 0
  br i1 %902, label %903, label %906

903:                                              ; preds = %900
  %904 = getelementptr inbounds %struct.internal_state, ptr %864, i64 0, i32 2
  %905 = load ptr, ptr %904, align 8, !tbaa !34
  store ptr %905, ptr %877, align 8, !tbaa !49
  br label %906

906:                                              ; preds = %858, %900, %903
  %907 = load ptr, ptr %0, align 8, !tbaa !18
  %908 = getelementptr inbounds %struct.z_stream_s, ptr %907, i64 0, i32 4
  %909 = load i32, ptr %908, align 8, !tbaa !89
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %912, label %911

911:                                              ; preds = %906, %843
  br label %912

912:                                              ; preds = %768, %298, %906, %837, %911
  %913 = phi i32 [ 1, %911 ], [ %842, %837 ], [ 0, %906 ], [ 0, %298 ], [ 0, %768 ]
  ret i32 %913
}

; Function Attrs: nounwind uwtable
define internal i32 @deflate_slow(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 19
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 60
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 18
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 13
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 59
  %20 = icmp eq i32 %1, 0
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 30
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 32
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 36
  %26 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 31
  %27 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 34
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %31 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %32 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 26
  br label %33

33:                                               ; preds = %683, %2
  %34 = load i32, ptr %3, align 4, !tbaa !66
  %35 = icmp ult i32 %34, 262
  br i1 %35, label %36, label %312

36:                                               ; preds = %33
  %37 = load i32, ptr %4, align 8, !tbaa !25
  %38 = zext i32 %37 to i64
  br label %39

39:                                               ; preds = %255, %36
  %40 = phi i32 [ %187, %255 ], [ %34, %36 ]
  %41 = load i64, ptr %5, align 8, !tbaa !52
  %42 = zext nneg i32 %40 to i64
  %43 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %41, i64 %42), !nosanitize !16
  %44 = extractvalue { i64, i1 } %43, 1, !nosanitize !16
  br i1 %44, label %45, label %46, !nosanitize !16

45:                                               ; preds = %283, %271, %194, %82, %77, %69, %66, %52, %46, %39
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

46:                                               ; preds = %39
  %47 = extractvalue { i64, i1 } %43, 0, !nosanitize !16
  %48 = load i32, ptr %6, align 4, !tbaa !64
  %49 = zext i32 %48 to i64
  %50 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %47, i64 %49), !nosanitize !16
  %51 = extractvalue { i64, i1 } %50, 1, !nosanitize !16
  br i1 %51, label %45, label %52, !nosanitize !16

52:                                               ; preds = %46
  %53 = extractvalue { i64, i1 } %50, 0, !nosanitize !16
  %54 = trunc i64 %53 to i32
  %55 = load i32, ptr %4, align 8, !tbaa !25
  %56 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 262), !nosanitize !16
  %57 = extractvalue { i32, i1 } %56, 1, !nosanitize !16
  br i1 %57, label %45, label %58, !nosanitize !16

58:                                               ; preds = %52
  %59 = extractvalue { i32, i1 } %56, 0, !nosanitize !16
  %60 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %37, i32 %59), !nosanitize !16
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !16
  br i1 %61, label %62, label %63, !nosanitize !16

62:                                               ; preds = %286, %199, %186, %182, %129, %58, %226, %223
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

63:                                               ; preds = %58
  %64 = extractvalue { i32, i1 } %60, 0, !nosanitize !16
  %65 = icmp ult i32 %48, %64
  br i1 %65, label %135, label %66

66:                                               ; preds = %63
  %67 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %37, i32 %54), !nosanitize !16
  %68 = extractvalue { i32, i1 } %67, 1, !nosanitize !16
  br i1 %68, label %45, label %69, !nosanitize !16

69:                                               ; preds = %66
  %70 = extractvalue { i32, i1 } %67, 0, !nosanitize !16
  %71 = load ptr, ptr %7, align 8, !tbaa !28
  %72 = getelementptr inbounds i8, ptr %71, i64 %38
  %73 = zext i32 %70 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %71, ptr align 1 %72, i64 %73, i1 false)
  %74 = load i32, ptr %8, align 8, !tbaa !74
  %75 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %74, i32 %37), !nosanitize !16
  %76 = extractvalue { i32, i1 } %75, 1, !nosanitize !16
  br i1 %76, label %45, label %77, !nosanitize !16

77:                                               ; preds = %69
  %78 = extractvalue { i32, i1 } %75, 0, !nosanitize !16
  store i32 %78, ptr %8, align 8, !tbaa !74
  %79 = load i32, ptr %6, align 4, !tbaa !64
  %80 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %79, i32 %37), !nosanitize !16
  %81 = extractvalue { i32, i1 } %80, 1, !nosanitize !16
  br i1 %81, label %45, label %82, !nosanitize !16

82:                                               ; preds = %77
  %83 = extractvalue { i32, i1 } %80, 0, !nosanitize !16
  store i32 %83, ptr %6, align 4, !tbaa !64
  %84 = load i64, ptr %9, align 8, !tbaa !65
  %85 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %84, i64 %38), !nosanitize !16
  %86 = extractvalue { i64, i1 } %85, 1, !nosanitize !16
  br i1 %86, label %45, label %87, !nosanitize !16

87:                                               ; preds = %82
  %88 = extractvalue { i64, i1 } %85, 0, !nosanitize !16
  store i64 %88, ptr %9, align 8, !tbaa !65
  %89 = load i32, ptr %10, align 4, !tbaa !67
  %90 = icmp ugt i32 %89, %83
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 %83, ptr %10, align 4, !tbaa !67
  br label %92

92:                                               ; preds = %91, %87
  %93 = load i32, ptr %4, align 8, !tbaa !25
  %94 = load i32, ptr %11, align 4, !tbaa !30
  %95 = load ptr, ptr %12, align 8, !tbaa !31
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds i16, ptr %95, i64 %96
  br label %98

98:                                               ; preds = %109, %92
  %99 = phi ptr [ %97, %92 ], [ %101, %109 ]
  %100 = phi i32 [ %94, %92 ], [ %110, %109 ]
  %101 = getelementptr inbounds i16, ptr %99, i64 -1
  %102 = load i16, ptr %101, align 2, !tbaa !53
  %103 = zext i16 %102 to i32
  %104 = tail call i32 @llvm.usub.sat.i32(i32 %103, i32 %93)
  %105 = trunc i32 %104 to i16
  store i16 %105, ptr %101, align 2, !tbaa !53
  %106 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %100, i32 1), !nosanitize !16
  %107 = extractvalue { i32, i1 } %106, 1, !nosanitize !16
  br i1 %107, label %108, label %109, !nosanitize !16

108:                                              ; preds = %98, %116
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

109:                                              ; preds = %98
  %110 = extractvalue { i32, i1 } %106, 0, !nosanitize !16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %98, !llvm.loop !75

112:                                              ; preds = %109
  %113 = load ptr, ptr %13, align 8, !tbaa !29
  %114 = zext i32 %93 to i64
  %115 = getelementptr inbounds i16, ptr %113, i64 %114
  br label %116

116:                                              ; preds = %126, %112
  %117 = phi ptr [ %115, %112 ], [ %119, %126 ]
  %118 = phi i32 [ %93, %112 ], [ %127, %126 ]
  %119 = getelementptr inbounds i16, ptr %117, i64 -1
  %120 = load i16, ptr %119, align 2, !tbaa !53
  %121 = zext i16 %120 to i32
  %122 = tail call i32 @llvm.usub.sat.i32(i32 %121, i32 %93)
  %123 = trunc i32 %122 to i16
  store i16 %123, ptr %119, align 2, !tbaa !53
  %124 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %118, i32 1), !nosanitize !16
  %125 = extractvalue { i32, i1 } %124, 1, !nosanitize !16
  br i1 %125, label %108, label %126, !nosanitize !16

126:                                              ; preds = %116
  %127 = extractvalue { i32, i1 } %124, 0, !nosanitize !16
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %116, !llvm.loop !77

129:                                              ; preds = %126
  store i32 1, ptr %14, align 8, !tbaa !54
  %130 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %54, i32 %37), !nosanitize !16
  %131 = extractvalue { i32, i1 } %130, 1, !nosanitize !16
  br i1 %131, label %62, label %132, !nosanitize !16

132:                                              ; preds = %129
  %133 = extractvalue { i32, i1 } %130, 0, !nosanitize !16
  %134 = load i32, ptr %3, align 4, !tbaa !66
  br label %135

135:                                              ; preds = %132, %63
  %136 = phi i32 [ %134, %132 ], [ %40, %63 ]
  %137 = phi i32 [ %83, %132 ], [ %48, %63 ]
  %138 = phi i32 [ %133, %132 ], [ %54, %63 ]
  %139 = load ptr, ptr %0, align 8, !tbaa !18
  %140 = getelementptr inbounds %struct.z_stream_s, ptr %139, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !72
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %260, label %143

143:                                              ; preds = %135
  %144 = load ptr, ptr %7, align 8, !tbaa !28
  %145 = zext i32 %137 to i64
  %146 = getelementptr inbounds i8, ptr %144, i64 %145
  %147 = zext i32 %136 to i64
  %148 = getelementptr inbounds i8, ptr %146, i64 %147
  %149 = tail call i32 @llvm.umin.i32(i32 %141, i32 %138)
  %150 = icmp eq i32 %138, 0
  br i1 %150, label %182, label %151

151:                                              ; preds = %143
  %152 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %141, i32 %149), !nosanitize !16
  %153 = extractvalue { i32, i1 } %152, 1, !nosanitize !16
  br i1 %153, label %154, label %155, !nosanitize !16

154:                                              ; preds = %151
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

155:                                              ; preds = %151
  %156 = extractvalue { i32, i1 } %152, 0, !nosanitize !16
  store i32 %156, ptr %140, align 8, !tbaa !72
  %157 = load ptr, ptr %139, align 8, !tbaa !73
  %158 = zext i32 %149 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %148, ptr align 1 %157, i64 %158, i1 false)
  %159 = getelementptr inbounds %struct.z_stream_s, ptr %139, i64 0, i32 7
  %160 = load ptr, ptr %159, align 8, !tbaa !17
  %161 = getelementptr inbounds %struct.internal_state, ptr %160, i64 0, i32 6
  %162 = load i32, ptr %161, align 8, !tbaa !23
  switch i32 %162, label %171 [
    i32 1, label %163
    i32 2, label %167
  ]

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.z_stream_s, ptr %139, i64 0, i32 12
  %165 = load i64, ptr %164, align 8, !tbaa !50
  %166 = tail call i64 @adler32(i64 noundef %165, ptr noundef %148, i32 noundef %149) #10
  store i64 %166, ptr %164, align 8, !tbaa !50
  br label %171

167:                                              ; preds = %155
  %168 = getelementptr inbounds %struct.z_stream_s, ptr %139, i64 0, i32 12
  %169 = load i64, ptr %168, align 8, !tbaa !50
  %170 = tail call i64 @crc32(i64 noundef %169, ptr noundef %148, i32 noundef %149) #10
  store i64 %170, ptr %168, align 8, !tbaa !50
  br label %171

171:                                              ; preds = %167, %163, %155
  %172 = load ptr, ptr %139, align 8, !tbaa !73
  %173 = getelementptr inbounds i8, ptr %172, i64 %158
  store ptr %173, ptr %139, align 8, !tbaa !73
  %174 = getelementptr inbounds %struct.z_stream_s, ptr %139, i64 0, i32 2
  %175 = load i64, ptr %174, align 8, !tbaa !46
  %176 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %175, i64 %158), !nosanitize !16
  %177 = extractvalue { i64, i1 } %176, 1, !nosanitize !16
  br i1 %177, label %178, label %179, !nosanitize !16

178:                                              ; preds = %171
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

179:                                              ; preds = %171
  %180 = extractvalue { i64, i1 } %176, 0, !nosanitize !16
  store i64 %180, ptr %174, align 8, !tbaa !46
  %181 = load i32, ptr %3, align 4, !tbaa !66
  br label %182

182:                                              ; preds = %179, %143
  %183 = phi i32 [ %136, %143 ], [ %181, %179 ]
  %184 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %183, i32 %149), !nosanitize !16
  %185 = extractvalue { i32, i1 } %184, 1, !nosanitize !16
  br i1 %185, label %62, label %186, !nosanitize !16

186:                                              ; preds = %182
  %187 = extractvalue { i32, i1 } %184, 0, !nosanitize !16
  store i32 %187, ptr %3, align 4, !tbaa !66
  %188 = load i32, ptr %10, align 4, !tbaa !67
  %189 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %187, i32 %188), !nosanitize !16
  %190 = extractvalue { i32, i1 } %189, 1, !nosanitize !16
  br i1 %190, label %62, label %191, !nosanitize !16

191:                                              ; preds = %186
  %192 = extractvalue { i32, i1 } %189, 0, !nosanitize !16
  %193 = icmp ugt i32 %192, 2
  br i1 %193, label %194, label %253

194:                                              ; preds = %191
  %195 = load i32, ptr %6, align 4, !tbaa !64
  %196 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %195, i32 %188), !nosanitize !16
  %197 = extractvalue { i32, i1 } %196, 0, !nosanitize !16
  %198 = extractvalue { i32, i1 } %196, 1, !nosanitize !16
  br i1 %198, label %45, label %199, !nosanitize !16

199:                                              ; preds = %194
  %200 = load ptr, ptr %7, align 8, !tbaa !28
  %201 = zext i32 %197 to i64
  %202 = getelementptr inbounds i8, ptr %200, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !5
  %204 = zext i8 %203 to i32
  store i32 %204, ptr %15, align 8, !tbaa !71
  %205 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %197, i32 1), !nosanitize !16
  %206 = extractvalue { i32, i1 } %205, 1, !nosanitize !16
  br i1 %206, label %62, label %207, !nosanitize !16

207:                                              ; preds = %199
  %208 = extractvalue { i32, i1 } %205, 0, !nosanitize !16
  %209 = load i32, ptr %16, align 8, !tbaa !45
  %210 = shl i32 %204, %209
  %211 = zext i32 %208 to i64
  %212 = getelementptr inbounds i8, ptr %200, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !5
  %214 = zext i8 %213 to i32
  %215 = xor i32 %210, %214
  %216 = load i32, ptr %17, align 4, !tbaa !44
  %217 = and i32 %215, %216
  store i32 %217, ptr %15, align 8, !tbaa !71
  br label %218

218:                                              ; preds = %249, %207
  %219 = phi i32 [ %217, %207 ], [ %235, %249 ]
  %220 = phi i32 [ %188, %207 ], [ %246, %249 ]
  %221 = phi i32 [ %197, %207 ], [ %250, %249 ]
  %222 = icmp eq i32 %220, 0
  br i1 %222, label %253, label %223

223:                                              ; preds = %218
  %224 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %221, i32 3), !nosanitize !16
  %225 = extractvalue { i32, i1 } %224, 1, !nosanitize !16
  br i1 %225, label %62, label %226, !nosanitize !16

226:                                              ; preds = %223
  %227 = shl i32 %219, %209
  %228 = extractvalue { i32, i1 } %224, 0, !nosanitize !16
  %229 = add i32 %228, -1
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i8, ptr %200, i64 %230
  %232 = load i8, ptr %231, align 1, !tbaa !5
  %233 = zext i8 %232 to i32
  %234 = xor i32 %227, %233
  %235 = and i32 %234, %216
  store i32 %235, ptr %15, align 8, !tbaa !71
  %236 = load ptr, ptr %12, align 8, !tbaa !31
  %237 = zext i32 %235 to i64
  %238 = getelementptr inbounds i16, ptr %236, i64 %237
  %239 = load i16, ptr %238, align 2, !tbaa !53
  %240 = load ptr, ptr %13, align 8, !tbaa !29
  %241 = load i32, ptr %18, align 8, !tbaa !26
  %242 = and i32 %241, %221
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i16, ptr %240, i64 %243
  store i16 %239, ptr %244, align 2, !tbaa !53
  %245 = trunc i32 %221 to i16
  store i16 %245, ptr %238, align 2, !tbaa !53
  %246 = add i32 %220, -1
  store i32 %246, ptr %10, align 4, !tbaa !67
  %247 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %187, i32 %246), !nosanitize !16
  %248 = extractvalue { i32, i1 } %247, 1, !nosanitize !16
  br i1 %248, label %62, label %249, !nosanitize !16

249:                                              ; preds = %226
  %250 = add nuw i32 %221, 1
  %251 = extractvalue { i32, i1 } %247, 0, !nosanitize !16
  %252 = icmp ult i32 %251, 3
  br i1 %252, label %253, label %218, !llvm.loop !78

253:                                              ; preds = %249, %218, %191
  %254 = icmp ult i32 %187, 262
  br i1 %254, label %255, label %260

255:                                              ; preds = %253
  %256 = load ptr, ptr %0, align 8, !tbaa !18
  %257 = getelementptr inbounds %struct.z_stream_s, ptr %256, i64 0, i32 1
  %258 = load i32, ptr %257, align 8, !tbaa !72
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %39, !llvm.loop !79

260:                                              ; preds = %255, %253, %135
  %261 = phi i32 [ %187, %255 ], [ %187, %253 ], [ %136, %135 ]
  %262 = load i64, ptr %19, align 8, !tbaa !32
  %263 = load i64, ptr %5, align 8, !tbaa !52
  %264 = icmp ult i64 %262, %263
  br i1 %264, label %265, label %301

265:                                              ; preds = %260
  %266 = load i32, ptr %6, align 4, !tbaa !64
  %267 = zext i32 %266 to i64
  %268 = zext i32 %261 to i64
  %269 = add nuw nsw i64 %268, %267
  %270 = icmp ult i64 %262, %269
  br i1 %270, label %271, label %280

271:                                              ; preds = %265
  %272 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %263, i64 %269), !nosanitize !16
  %273 = extractvalue { i64, i1 } %272, 1, !nosanitize !16
  br i1 %273, label %45, label %274, !nosanitize !16

274:                                              ; preds = %271
  %275 = extractvalue { i64, i1 } %272, 0, !nosanitize !16
  %276 = tail call i64 @llvm.umin.i64(i64 %275, i64 258)
  %277 = load ptr, ptr %7, align 8, !tbaa !28
  %278 = getelementptr inbounds i8, ptr %277, i64 %269
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %278, i8 0, i64 %276, i1 false)
  %279 = add nuw nsw i64 %276, %269
  br label %298

280:                                              ; preds = %265
  %281 = add nuw nsw i64 %269, 258
  %282 = icmp ult i64 %262, %281
  br i1 %282, label %283, label %301

283:                                              ; preds = %280
  %284 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %263, i64 %262), !nosanitize !16
  %285 = extractvalue { i64, i1 } %284, 1, !nosanitize !16
  br i1 %285, label %45, label %286, !nosanitize !16

286:                                              ; preds = %283
  %287 = sub nuw nsw i64 %281, %262
  %288 = extractvalue { i64, i1 } %284, 0, !nosanitize !16
  %289 = tail call i64 @llvm.umin.i64(i64 %287, i64 %288)
  %290 = load ptr, ptr %7, align 8, !tbaa !28
  %291 = getelementptr inbounds i8, ptr %290, i64 %262
  %292 = and i64 %289, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %291, i8 0, i64 %292, i1 false)
  %293 = load i64, ptr %19, align 8, !tbaa !32
  %294 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %293, i64 %289), !nosanitize !16
  %295 = extractvalue { i64, i1 } %294, 1, !nosanitize !16
  br i1 %295, label %62, label %296, !nosanitize !16

296:                                              ; preds = %286
  %297 = extractvalue { i64, i1 } %294, 0, !nosanitize !16
  br label %298

298:                                              ; preds = %296, %274
  %299 = phi i64 [ %279, %274 ], [ %297, %296 ]
  store i64 %299, ptr %19, align 8, !tbaa !32
  %300 = load i32, ptr %3, align 4, !tbaa !66
  br label %301

301:                                              ; preds = %260, %280, %298
  %302 = phi i32 [ %261, %260 ], [ %261, %280 ], [ %300, %298 ]
  %303 = icmp ult i32 %302, 262
  %304 = and i1 %20, %303
  br i1 %304, label %1060, label %305

305:                                              ; preds = %301
  %306 = icmp eq i32 %302, 0
  br i1 %306, label %879, label %307

307:                                              ; preds = %305
  %308 = icmp ugt i32 %302, 2
  br i1 %308, label %312, label %309

309:                                              ; preds = %307
  %310 = load i32, ptr %21, align 8, !tbaa !69
  store i32 %310, ptr %22, align 8, !tbaa !68
  %311 = load i32, ptr %8, align 8, !tbaa !74
  store i32 %311, ptr %23, align 4, !tbaa !118
  br label %540

312:                                              ; preds = %33, %307
  %313 = phi i32 [ %302, %307 ], [ %34, %33 ]
  %314 = load i32, ptr %6, align 4, !tbaa !64
  %315 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %314, i32 2), !nosanitize !16
  %316 = extractvalue { i32, i1 } %315, 1, !nosanitize !16
  br i1 %316, label %317, label %318, !nosanitize !16

317:                                              ; preds = %869, %854, %773, %765, %756, %678, %585, %576, %570, %552, %312, %646, %638, %903, %895, %886
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

318:                                              ; preds = %312
  %319 = extractvalue { i32, i1 } %315, 0, !nosanitize !16
  %320 = load ptr, ptr %7, align 8, !tbaa !28
  %321 = load i32, ptr %15, align 8, !tbaa !71
  %322 = load i32, ptr %16, align 8, !tbaa !45
  %323 = shl i32 %321, %322
  %324 = zext i32 %319 to i64
  %325 = getelementptr inbounds i8, ptr %320, i64 %324
  %326 = load i8, ptr %325, align 1, !tbaa !5
  %327 = zext i8 %326 to i32
  %328 = xor i32 %323, %327
  %329 = load i32, ptr %17, align 4, !tbaa !44
  %330 = and i32 %328, %329
  store i32 %330, ptr %15, align 8, !tbaa !71
  %331 = load ptr, ptr %12, align 8, !tbaa !31
  %332 = zext i32 %330 to i64
  %333 = getelementptr inbounds i16, ptr %331, i64 %332
  %334 = load i16, ptr %333, align 2, !tbaa !53
  %335 = load ptr, ptr %13, align 8, !tbaa !29
  %336 = load i32, ptr %18, align 8, !tbaa !26
  %337 = and i32 %336, %314
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds i16, ptr %335, i64 %338
  store i16 %334, ptr %339, align 2, !tbaa !53
  %340 = zext i16 %334 to i32
  %341 = trunc i32 %314 to i16
  store i16 %341, ptr %333, align 2, !tbaa !53
  %342 = load i32, ptr %21, align 8, !tbaa !69
  store i32 %342, ptr %22, align 8, !tbaa !68
  %343 = load i32, ptr %8, align 8, !tbaa !74
  store i32 %343, ptr %23, align 4, !tbaa !118
  store i32 2, ptr %21, align 8, !tbaa !69
  %344 = icmp eq i16 %334, 0
  br i1 %344, label %544, label %345

345:                                              ; preds = %318
  %346 = load i32, ptr %24, align 8, !tbaa !57
  %347 = icmp ult i32 %342, %346
  br i1 %347, label %348, label %544

348:                                              ; preds = %345
  %349 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %314, i32 %340), !nosanitize !16
  %350 = extractvalue { i32, i1 } %349, 0, !nosanitize !16
  %351 = extractvalue { i32, i1 } %349, 1, !nosanitize !16
  br i1 %351, label %352, label %353, !nosanitize !16

352:                                              ; preds = %873, %858, %800, %752, %691, %631, %626, %595, %566, %561, %556, %534, %353, %348, %672, %1001, %932, %883
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

353:                                              ; preds = %348
  %354 = load i32, ptr %4, align 8, !tbaa !25
  %355 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %354, i32 262), !nosanitize !16
  %356 = extractvalue { i32, i1 } %355, 1, !nosanitize !16
  br i1 %356, label %352, label %357, !nosanitize !16

357:                                              ; preds = %353
  %358 = extractvalue { i32, i1 } %355, 0, !nosanitize !16
  %359 = icmp ugt i32 %350, %358
  br i1 %359, label %544, label %361

360:                                              ; preds = %361, %518, %489, %399
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

361:                                              ; preds = %357
  %362 = zext i32 %314 to i64
  %363 = getelementptr inbounds i8, ptr %320, i64 %362
  %364 = tail call i32 @llvm.usub.sat.i32(i32 %314, i32 %358)
  %365 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %342, i32 -1)
  %366 = extractvalue { i32, i1 } %365, 1, !nosanitize !16
  br i1 %366, label %360, label %367, !nosanitize !16

367:                                              ; preds = %361
  %368 = load i32, ptr %25, align 8, !tbaa !61
  %369 = load i32, ptr %26, align 4, !tbaa !63
  %370 = getelementptr inbounds i8, ptr %363, i64 258
  %371 = extractvalue { i32, i1 } %365, 0, !nosanitize !16
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8, ptr %363, i64 %372
  %374 = load i8, ptr %373, align 1, !tbaa !5
  %375 = sext i32 %342 to i64
  %376 = getelementptr inbounds i8, ptr %363, i64 %375
  %377 = load i8, ptr %376, align 1, !tbaa !5
  %378 = load i32, ptr %27, align 4, !tbaa !59
  %379 = icmp ult i32 %342, %378
  %380 = lshr i32 %369, 2
  %381 = select i1 %379, i32 %369, i32 %380
  %382 = tail call i32 @llvm.umin.i32(i32 %368, i32 %313)
  %383 = getelementptr i8, ptr %363, i64 -1
  %384 = getelementptr inbounds i8, ptr %363, i64 1
  %385 = ptrtoint ptr %370 to i64
  br label %386

386:                                              ; preds = %521, %367
  %387 = phi i32 [ %343, %367 ], [ %508, %521 ]
  %388 = phi i32 [ %342, %367 ], [ %509, %521 ]
  %389 = phi i32 [ %381, %367 ], [ %522, %521 ]
  %390 = phi i32 [ %340, %367 ], [ %516, %521 ]
  %391 = phi i8 [ %374, %367 ], [ %510, %521 ]
  %392 = phi i8 [ %377, %367 ], [ %511, %521 ]
  %393 = zext nneg i32 %390 to i64
  %394 = getelementptr inbounds i8, ptr %320, i64 %393
  %395 = sext i32 %388 to i64
  %396 = getelementptr inbounds i8, ptr %394, i64 %395
  %397 = load i8, ptr %396, align 1, !tbaa !5
  %398 = icmp eq i8 %397, %392
  br i1 %398, label %399, label %507

399:                                              ; preds = %386
  %400 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %388, i32 -1)
  %401 = extractvalue { i32, i1 } %400, 1, !nosanitize !16
  br i1 %401, label %360, label %402, !nosanitize !16

402:                                              ; preds = %399
  %403 = extractvalue { i32, i1 } %400, 0, !nosanitize !16
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, ptr %394, i64 %404
  %406 = load i8, ptr %405, align 1, !tbaa !5
  %407 = icmp eq i8 %406, %391
  br i1 %407, label %408, label %507

408:                                              ; preds = %402
  %409 = load i8, ptr %394, align 1, !tbaa !5
  %410 = load i8, ptr %363, align 1, !tbaa !5
  %411 = icmp eq i8 %409, %410
  br i1 %411, label %412, label %507

412:                                              ; preds = %408
  %413 = getelementptr inbounds i8, ptr %394, i64 1
  %414 = load i8, ptr %413, align 1, !tbaa !5
  %415 = load i8, ptr %384, align 1, !tbaa !5
  %416 = icmp eq i8 %414, %415
  br i1 %416, label %417, label %507

417:                                              ; preds = %412
  %418 = getelementptr inbounds i8, ptr %394, i64 2
  br label %419

419:                                              ; preds = %464, %417
  %420 = phi ptr [ %418, %417 ], [ %468, %464 ]
  %421 = phi i64 [ 2, %417 ], [ %465, %464 ]
  %422 = getelementptr inbounds i8, ptr %363, i64 %421
  %423 = getelementptr inbounds i8, ptr %422, i64 1
  %424 = load i8, ptr %423, align 1, !tbaa !5
  %425 = getelementptr inbounds i8, ptr %420, i64 1
  %426 = load i8, ptr %425, align 1, !tbaa !5
  %427 = icmp eq i8 %424, %426
  br i1 %427, label %428, label %473

428:                                              ; preds = %419
  %429 = getelementptr inbounds i8, ptr %422, i64 2
  %430 = load i8, ptr %429, align 1, !tbaa !5
  %431 = getelementptr inbounds i8, ptr %420, i64 2
  %432 = load i8, ptr %431, align 1, !tbaa !5
  %433 = icmp eq i8 %430, %432
  br i1 %433, label %434, label %475

434:                                              ; preds = %428
  %435 = getelementptr inbounds i8, ptr %422, i64 3
  %436 = load i8, ptr %435, align 1, !tbaa !5
  %437 = getelementptr inbounds i8, ptr %420, i64 3
  %438 = load i8, ptr %437, align 1, !tbaa !5
  %439 = icmp eq i8 %436, %438
  br i1 %439, label %440, label %477

440:                                              ; preds = %434
  %441 = getelementptr inbounds i8, ptr %422, i64 4
  %442 = load i8, ptr %441, align 1, !tbaa !5
  %443 = getelementptr inbounds i8, ptr %420, i64 4
  %444 = load i8, ptr %443, align 1, !tbaa !5
  %445 = icmp eq i8 %442, %444
  br i1 %445, label %446, label %479

446:                                              ; preds = %440
  %447 = getelementptr inbounds i8, ptr %422, i64 5
  %448 = load i8, ptr %447, align 1, !tbaa !5
  %449 = getelementptr inbounds i8, ptr %420, i64 5
  %450 = load i8, ptr %449, align 1, !tbaa !5
  %451 = icmp eq i8 %448, %450
  br i1 %451, label %452, label %481

452:                                              ; preds = %446
  %453 = getelementptr inbounds i8, ptr %422, i64 6
  %454 = load i8, ptr %453, align 1, !tbaa !5
  %455 = getelementptr inbounds i8, ptr %420, i64 6
  %456 = load i8, ptr %455, align 1, !tbaa !5
  %457 = icmp eq i8 %454, %456
  br i1 %457, label %458, label %483

458:                                              ; preds = %452
  %459 = getelementptr inbounds i8, ptr %422, i64 7
  %460 = load i8, ptr %459, align 1, !tbaa !5
  %461 = getelementptr inbounds i8, ptr %420, i64 7
  %462 = load i8, ptr %461, align 1, !tbaa !5
  %463 = icmp eq i8 %460, %462
  br i1 %463, label %464, label %485

464:                                              ; preds = %458
  %465 = add nuw nsw i64 %421, 8
  %466 = getelementptr inbounds i8, ptr %363, i64 %465
  %467 = load i8, ptr %466, align 1, !tbaa !5
  %468 = getelementptr inbounds i8, ptr %420, i64 8
  %469 = load i8, ptr %468, align 1, !tbaa !5
  %470 = icmp eq i8 %467, %469
  %471 = icmp ult i64 %421, 250
  %472 = and i1 %471, %470
  br i1 %472, label %419, label %487, !llvm.loop !115

473:                                              ; preds = %419
  %474 = getelementptr inbounds i8, ptr %422, i64 1
  br label %489

475:                                              ; preds = %428
  %476 = getelementptr inbounds i8, ptr %422, i64 2
  br label %489

477:                                              ; preds = %434
  %478 = getelementptr inbounds i8, ptr %422, i64 3
  br label %489

479:                                              ; preds = %440
  %480 = getelementptr inbounds i8, ptr %422, i64 4
  br label %489

481:                                              ; preds = %446
  %482 = getelementptr inbounds i8, ptr %422, i64 5
  br label %489

483:                                              ; preds = %452
  %484 = getelementptr inbounds i8, ptr %422, i64 6
  br label %489

485:                                              ; preds = %458
  %486 = getelementptr inbounds i8, ptr %422, i64 7
  br label %489

487:                                              ; preds = %464
  %488 = getelementptr inbounds i8, ptr %363, i64 %465
  br label %489

489:                                              ; preds = %487, %485, %483, %481, %479, %477, %475, %473
  %490 = phi ptr [ %474, %473 ], [ %476, %475 ], [ %478, %477 ], [ %480, %479 ], [ %482, %481 ], [ %484, %483 ], [ %486, %485 ], [ %488, %487 ]
  %491 = ptrtoint ptr %490 to i64
  %492 = sub i64 %385, %491
  %493 = trunc i64 %492 to i32
  %494 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %493), !nosanitize !16
  %495 = extractvalue { i32, i1 } %494, 0, !nosanitize !16
  %496 = extractvalue { i32, i1 } %494, 1, !nosanitize !16
  br i1 %496, label %360, label %497, !nosanitize !16

497:                                              ; preds = %489
  %498 = icmp sgt i32 %495, %388
  br i1 %498, label %499, label %507

499:                                              ; preds = %497
  store i32 %390, ptr %8, align 8, !tbaa !74
  %500 = icmp slt i32 %495, %382
  br i1 %500, label %501, label %524

501:                                              ; preds = %499
  %502 = sext i32 %495 to i64
  %503 = getelementptr i8, ptr %383, i64 %502
  %504 = load i8, ptr %503, align 1, !tbaa !5
  %505 = getelementptr inbounds i8, ptr %363, i64 %502
  %506 = load i8, ptr %505, align 1, !tbaa !5
  br label %507

507:                                              ; preds = %501, %497, %412, %408, %402, %386
  %508 = phi i32 [ %387, %386 ], [ %387, %402 ], [ %387, %408 ], [ %387, %412 ], [ %390, %501 ], [ %387, %497 ]
  %509 = phi i32 [ %388, %386 ], [ %388, %402 ], [ %388, %408 ], [ %388, %412 ], [ %495, %501 ], [ %388, %497 ]
  %510 = phi i8 [ %391, %386 ], [ %391, %402 ], [ %391, %408 ], [ %391, %412 ], [ %504, %501 ], [ %391, %497 ]
  %511 = phi i8 [ %392, %386 ], [ %392, %402 ], [ %392, %408 ], [ %392, %412 ], [ %506, %501 ], [ %392, %497 ]
  %512 = and i32 %390, %336
  %513 = zext nneg i32 %512 to i64
  %514 = getelementptr inbounds i16, ptr %335, i64 %513
  %515 = load i16, ptr %514, align 2, !tbaa !53
  %516 = zext i16 %515 to i32
  %517 = icmp ult i32 %364, %516
  br i1 %517, label %518, label %524

518:                                              ; preds = %507
  %519 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %389, i32 1), !nosanitize !16
  %520 = extractvalue { i32, i1 } %519, 1, !nosanitize !16
  br i1 %520, label %360, label %521, !nosanitize !16

521:                                              ; preds = %518
  %522 = extractvalue { i32, i1 } %519, 0, !nosanitize !16
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %386, !llvm.loop !116

524:                                              ; preds = %499, %507, %521
  %525 = phi i32 [ %508, %521 ], [ %508, %507 ], [ %390, %499 ]
  %526 = phi i32 [ %509, %521 ], [ %509, %507 ], [ %495, %499 ]
  %527 = tail call i32 @llvm.umin.i32(i32 %526, i32 %313)
  store i32 %527, ptr %21, align 8, !tbaa !69
  %528 = icmp ult i32 %527, 6
  br i1 %528, label %529, label %544

529:                                              ; preds = %524
  %530 = load i32, ptr %28, align 8, !tbaa !40
  %531 = icmp eq i32 %530, 1
  br i1 %531, label %540, label %532

532:                                              ; preds = %529
  %533 = icmp eq i32 %527, 3
  br i1 %533, label %534, label %544

534:                                              ; preds = %532
  %535 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %314, i32 %525), !nosanitize !16
  %536 = extractvalue { i32, i1 } %535, 1, !nosanitize !16
  br i1 %536, label %352, label %537, !nosanitize !16

537:                                              ; preds = %534
  %538 = extractvalue { i32, i1 } %535, 0, !nosanitize !16
  %539 = icmp ugt i32 %538, 4096
  br i1 %539, label %540, label %544

540:                                              ; preds = %529, %537, %309
  %541 = phi i32 [ %311, %309 ], [ %343, %537 ], [ %343, %529 ]
  %542 = phi i32 [ %310, %309 ], [ %342, %537 ], [ %342, %529 ]
  %543 = phi i32 [ %302, %309 ], [ %313, %537 ], [ %313, %529 ]
  store i32 2, ptr %21, align 8, !tbaa !69
  br label %544

544:                                              ; preds = %540, %524, %532, %537, %357, %345, %318
  %545 = phi i32 [ %527, %524 ], [ %527, %532 ], [ 3, %537 ], [ 2, %357 ], [ 2, %345 ], [ 2, %318 ], [ 2, %540 ]
  %546 = phi i32 [ %343, %524 ], [ %343, %532 ], [ %343, %537 ], [ %343, %357 ], [ %343, %345 ], [ %343, %318 ], [ %541, %540 ]
  %547 = phi i32 [ %342, %524 ], [ %342, %532 ], [ %342, %537 ], [ %342, %357 ], [ %342, %345 ], [ %342, %318 ], [ %542, %540 ]
  %548 = phi i32 [ %313, %524 ], [ %313, %532 ], [ %313, %537 ], [ %313, %357 ], [ %313, %345 ], [ %313, %318 ], [ %543, %540 ]
  %549 = icmp ult i32 %547, 3
  %550 = icmp ugt i32 %545, %547
  %551 = or i1 %549, %550
  br i1 %551, label %749, label %552

552:                                              ; preds = %544
  %553 = load i32, ptr %6, align 4, !tbaa !64
  %554 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %553, i32 %548), !nosanitize !16
  %555 = extractvalue { i32, i1 } %554, 1, !nosanitize !16
  br i1 %555, label %317, label %556, !nosanitize !16

556:                                              ; preds = %552
  %557 = extractvalue { i32, i1 } %554, 0, !nosanitize !16
  %558 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %557, i32 3), !nosanitize !16
  %559 = extractvalue { i32, i1 } %558, 0, !nosanitize !16
  %560 = extractvalue { i32, i1 } %558, 1, !nosanitize !16
  br i1 %560, label %352, label %561, !nosanitize !16

561:                                              ; preds = %556
  %562 = trunc i32 %547 to i8
  %563 = add i8 %562, -3
  %564 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %553, i32 1), !nosanitize !16
  %565 = extractvalue { i32, i1 } %564, 1, !nosanitize !16
  br i1 %565, label %352, label %566, !nosanitize !16

566:                                              ; preds = %561
  %567 = extractvalue { i32, i1 } %564, 0, !nosanitize !16
  %568 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %567, i32 %546), !nosanitize !16
  %569 = extractvalue { i32, i1 } %568, 1, !nosanitize !16
  br i1 %569, label %352, label %570, !nosanitize !16

570:                                              ; preds = %566
  %571 = extractvalue { i32, i1 } %568, 0, !nosanitize !16
  %572 = trunc i32 %571 to i16
  %573 = load i32, ptr %30, align 4, !tbaa !110
  %574 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %573, i32 1), !nosanitize !16
  %575 = extractvalue { i32, i1 } %574, 1, !nosanitize !16
  br i1 %575, label %317, label %576, !nosanitize !16

576:                                              ; preds = %570
  %577 = extractvalue { i32, i1 } %574, 0, !nosanitize !16
  %578 = load ptr, ptr %29, align 8, !tbaa !37
  %579 = trunc i32 %571 to i8
  store i32 %577, ptr %30, align 4, !tbaa !110
  %580 = zext i32 %573 to i64
  %581 = getelementptr inbounds i8, ptr %578, i64 %580
  store i8 %579, ptr %581, align 1, !tbaa !5
  %582 = load i32, ptr %30, align 4, !tbaa !110
  %583 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %582, i32 1), !nosanitize !16
  %584 = extractvalue { i32, i1 } %583, 1, !nosanitize !16
  br i1 %584, label %317, label %585, !nosanitize !16

585:                                              ; preds = %576
  %586 = extractvalue { i32, i1 } %583, 0, !nosanitize !16
  %587 = load ptr, ptr %29, align 8, !tbaa !37
  %588 = lshr i32 %571, 8
  %589 = trunc i32 %588 to i8
  store i32 %586, ptr %30, align 4, !tbaa !110
  %590 = zext i32 %582 to i64
  %591 = getelementptr inbounds i8, ptr %587, i64 %590
  store i8 %589, ptr %591, align 1, !tbaa !5
  %592 = load i32, ptr %30, align 4, !tbaa !110
  %593 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %592, i32 1), !nosanitize !16
  %594 = extractvalue { i32, i1 } %593, 1, !nosanitize !16
  br i1 %594, label %317, label %595, !nosanitize !16

595:                                              ; preds = %585
  %596 = extractvalue { i32, i1 } %593, 0, !nosanitize !16
  %597 = load ptr, ptr %29, align 8, !tbaa !37
  store i32 %596, ptr %30, align 4, !tbaa !110
  %598 = zext i32 %592 to i64
  %599 = getelementptr inbounds i8, ptr %597, i64 %598
  store i8 %563, ptr %599, align 1, !tbaa !5
  %600 = add i16 %572, -1
  %601 = zext i8 %563 to i64
  %602 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %601
  %603 = load i8, ptr %602, align 1, !tbaa !5
  %604 = zext i8 %603 to i64
  %605 = add nuw nsw i64 %604, 257
  %606 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %605
  %607 = load i16, ptr %606, align 4, !tbaa !5
  %608 = add i16 %607, 1
  store i16 %608, ptr %606, align 4, !tbaa !5
  %609 = icmp ult i16 %600, 256
  %610 = lshr i16 %600, 7
  %611 = add nuw nsw i16 %610, 256
  %612 = select i1 %609, i16 %600, i16 %611
  %613 = zext i16 %612 to i64
  %614 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %613
  %615 = load i8, ptr %614, align 1, !tbaa !5
  %616 = zext i8 %615 to i64
  %617 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %616
  %618 = load i16, ptr %617, align 4, !tbaa !5
  %619 = add i16 %618, 1
  store i16 %619, ptr %617, align 4, !tbaa !5
  %620 = load i32, ptr %30, align 4, !tbaa !110
  %621 = load i32, ptr %31, align 8, !tbaa !38
  %622 = icmp eq i32 %620, %621
  %623 = load i32, ptr %22, align 8, !tbaa !68
  %624 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %623, i32 1), !nosanitize !16
  %625 = extractvalue { i32, i1 } %624, 1, !nosanitize !16
  br i1 %625, label %352, label %626, !nosanitize !16

626:                                              ; preds = %595
  %627 = extractvalue { i32, i1 } %624, 0, !nosanitize !16
  %628 = load i32, ptr %3, align 4, !tbaa !66
  %629 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %628, i32 %627), !nosanitize !16
  %630 = extractvalue { i32, i1 } %629, 1, !nosanitize !16
  br i1 %630, label %352, label %631, !nosanitize !16

631:                                              ; preds = %626
  %632 = extractvalue { i32, i1 } %629, 0, !nosanitize !16
  store i32 %632, ptr %3, align 4, !tbaa !66
  %633 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %623, i32 2), !nosanitize !16
  %634 = extractvalue { i32, i1 } %633, 1, !nosanitize !16
  br i1 %634, label %352, label %635, !nosanitize !16

635:                                              ; preds = %631
  %636 = extractvalue { i32, i1 } %633, 0, !nosanitize !16
  store i32 %636, ptr %22, align 8, !tbaa !68
  %637 = load i32, ptr %6, align 4, !tbaa !64
  br label %638

638:                                              ; preds = %675, %635
  %639 = phi i32 [ %676, %675 ], [ %636, %635 ]
  %640 = phi i32 [ %642, %675 ], [ %637, %635 ]
  %641 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %640, i32 1), !nosanitize !16
  %642 = extractvalue { i32, i1 } %641, 0, !nosanitize !16
  %643 = extractvalue { i32, i1 } %641, 1, !nosanitize !16
  br i1 %643, label %317, label %644, !nosanitize !16

644:                                              ; preds = %638
  store i32 %642, ptr %6, align 4, !tbaa !64
  %645 = icmp ugt i32 %642, %559
  br i1 %645, label %672, label %646

646:                                              ; preds = %644
  %647 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %642, i32 2), !nosanitize !16
  %648 = extractvalue { i32, i1 } %647, 1, !nosanitize !16
  br i1 %648, label %317, label %649, !nosanitize !16

649:                                              ; preds = %646
  %650 = extractvalue { i32, i1 } %647, 0, !nosanitize !16
  %651 = load ptr, ptr %7, align 8, !tbaa !28
  %652 = load i32, ptr %15, align 8, !tbaa !71
  %653 = load i32, ptr %16, align 8, !tbaa !45
  %654 = shl i32 %652, %653
  %655 = zext i32 %650 to i64
  %656 = getelementptr inbounds i8, ptr %651, i64 %655
  %657 = load i8, ptr %656, align 1, !tbaa !5
  %658 = zext i8 %657 to i32
  %659 = xor i32 %654, %658
  %660 = load i32, ptr %17, align 4, !tbaa !44
  %661 = and i32 %659, %660
  store i32 %661, ptr %15, align 8, !tbaa !71
  %662 = load ptr, ptr %12, align 8, !tbaa !31
  %663 = zext i32 %661 to i64
  %664 = getelementptr inbounds i16, ptr %662, i64 %663
  %665 = load i16, ptr %664, align 2, !tbaa !53
  %666 = load ptr, ptr %13, align 8, !tbaa !29
  %667 = load i32, ptr %18, align 8, !tbaa !26
  %668 = and i32 %667, %642
  %669 = zext i32 %668 to i64
  %670 = getelementptr inbounds i16, ptr %666, i64 %669
  store i16 %665, ptr %670, align 2, !tbaa !53
  %671 = trunc i32 %642 to i16
  store i16 %671, ptr %664, align 2, !tbaa !53
  br label %672

672:                                              ; preds = %644, %649
  %673 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %639, i32 1), !nosanitize !16
  %674 = extractvalue { i32, i1 } %673, 1, !nosanitize !16
  br i1 %674, label %352, label %675, !nosanitize !16

675:                                              ; preds = %672
  %676 = extractvalue { i32, i1 } %673, 0, !nosanitize !16
  store i32 %676, ptr %22, align 8, !tbaa !68
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %678, label %638, !llvm.loop !119

678:                                              ; preds = %675
  store i32 0, ptr %32, align 8, !tbaa !70
  store i32 2, ptr %21, align 8, !tbaa !69
  %679 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %642, i32 1), !nosanitize !16
  %680 = extractvalue { i32, i1 } %679, 1, !nosanitize !16
  br i1 %680, label %317, label %681, !nosanitize !16

681:                                              ; preds = %678
  %682 = extractvalue { i32, i1 } %679, 0, !nosanitize !16
  store i32 %682, ptr %6, align 4, !tbaa !64
  br i1 %622, label %684, label %683

683:                                              ; preds = %681, %744, %877, %863
  br label %33

684:                                              ; preds = %681
  %685 = load i64, ptr %9, align 8, !tbaa !65
  %686 = icmp sgt i64 %685, -1
  br i1 %686, label %687, label %691

687:                                              ; preds = %684
  %688 = load ptr, ptr %7, align 8, !tbaa !28
  %689 = and i64 %685, 4294967295
  %690 = getelementptr inbounds i8, ptr %688, i64 %689
  br label %691

691:                                              ; preds = %684, %687
  %692 = phi ptr [ %690, %687 ], [ null, %684 ]
  %693 = zext i32 %682 to i64
  %694 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %693, i64 %685), !nosanitize !16
  %695 = extractvalue { i64, i1 } %694, 1, !nosanitize !16
  br i1 %695, label %352, label %696, !nosanitize !16

696:                                              ; preds = %691
  %697 = extractvalue { i64, i1 } %694, 0, !nosanitize !16
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %692, i64 noundef %697, i32 noundef 0) #10
  %698 = load i32, ptr %6, align 4, !tbaa !64
  %699 = zext i32 %698 to i64
  store i64 %699, ptr %9, align 8, !tbaa !65
  %700 = load ptr, ptr %0, align 8, !tbaa !18
  %701 = getelementptr inbounds %struct.z_stream_s, ptr %700, i64 0, i32 7
  %702 = load ptr, ptr %701, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %702) #10
  %703 = getelementptr inbounds %struct.internal_state, ptr %702, i64 0, i32 5
  %704 = load i64, ptr %703, align 8, !tbaa !48
  %705 = getelementptr inbounds %struct.z_stream_s, ptr %700, i64 0, i32 4
  %706 = load i32, ptr %705, align 8, !tbaa !89
  %707 = zext i32 %706 to i64
  %708 = icmp ugt i64 %704, %707
  %709 = trunc i64 %704 to i32
  %710 = select i1 %708, i32 %706, i32 %709
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %744, label %712

712:                                              ; preds = %696
  %713 = getelementptr inbounds %struct.z_stream_s, ptr %700, i64 0, i32 3
  %714 = load ptr, ptr %713, align 8, !tbaa !88
  %715 = getelementptr inbounds %struct.internal_state, ptr %702, i64 0, i32 4
  %716 = load ptr, ptr %715, align 8, !tbaa !49
  %717 = zext i32 %710 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %714, ptr align 1 %716, i64 %717, i1 false)
  %718 = load ptr, ptr %713, align 8, !tbaa !88
  %719 = getelementptr inbounds i8, ptr %718, i64 %717
  store ptr %719, ptr %713, align 8, !tbaa !88
  %720 = load ptr, ptr %715, align 8, !tbaa !49
  %721 = getelementptr inbounds i8, ptr %720, i64 %717
  store ptr %721, ptr %715, align 8, !tbaa !49
  %722 = getelementptr inbounds %struct.z_stream_s, ptr %700, i64 0, i32 5
  %723 = load i64, ptr %722, align 8, !tbaa !90
  %724 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %723, i64 %717), !nosanitize !16
  %725 = extractvalue { i64, i1 } %724, 1, !nosanitize !16
  br i1 %725, label %726, label %727, !nosanitize !16

726:                                              ; preds = %712
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

727:                                              ; preds = %712
  %728 = extractvalue { i64, i1 } %724, 0, !nosanitize !16
  store i64 %728, ptr %722, align 8, !tbaa !90
  %729 = load i32, ptr %705, align 8, !tbaa !89
  %730 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %729, i32 %710), !nosanitize !16
  %731 = extractvalue { i32, i1 } %730, 1, !nosanitize !16
  br i1 %731, label %732, label %733, !nosanitize !16

732:                                              ; preds = %733, %727
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

733:                                              ; preds = %727
  %734 = extractvalue { i32, i1 } %730, 0, !nosanitize !16
  store i32 %734, ptr %705, align 8, !tbaa !89
  %735 = load i64, ptr %703, align 8, !tbaa !48
  %736 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %735, i64 %717), !nosanitize !16
  %737 = extractvalue { i64, i1 } %736, 1, !nosanitize !16
  br i1 %737, label %732, label %738, !nosanitize !16

738:                                              ; preds = %733
  %739 = extractvalue { i64, i1 } %736, 0, !nosanitize !16
  store i64 %739, ptr %703, align 8, !tbaa !48
  %740 = icmp eq i64 %739, 0
  br i1 %740, label %741, label %744

741:                                              ; preds = %738
  %742 = getelementptr inbounds %struct.internal_state, ptr %702, i64 0, i32 2
  %743 = load ptr, ptr %742, align 8, !tbaa !34
  store ptr %743, ptr %715, align 8, !tbaa !49
  br label %744

744:                                              ; preds = %696, %738, %741
  %745 = load ptr, ptr %0, align 8, !tbaa !18
  %746 = getelementptr inbounds %struct.z_stream_s, ptr %745, i64 0, i32 4
  %747 = load i32, ptr %746, align 8, !tbaa !89
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %1060, label %683

749:                                              ; preds = %544
  %750 = load i32, ptr %32, align 8, !tbaa !70
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %869, label %752

752:                                              ; preds = %749
  %753 = load i32, ptr %6, align 4, !tbaa !64
  %754 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %753, i32 1), !nosanitize !16
  %755 = extractvalue { i32, i1 } %754, 1, !nosanitize !16
  br i1 %755, label %352, label %756, !nosanitize !16

756:                                              ; preds = %752
  %757 = extractvalue { i32, i1 } %754, 0, !nosanitize !16
  %758 = load ptr, ptr %7, align 8, !tbaa !28
  %759 = zext i32 %757 to i64
  %760 = getelementptr inbounds i8, ptr %758, i64 %759
  %761 = load i8, ptr %760, align 1, !tbaa !5
  %762 = load i32, ptr %30, align 4, !tbaa !110
  %763 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %762, i32 1), !nosanitize !16
  %764 = extractvalue { i32, i1 } %763, 1, !nosanitize !16
  br i1 %764, label %317, label %765, !nosanitize !16

765:                                              ; preds = %756
  %766 = extractvalue { i32, i1 } %763, 0, !nosanitize !16
  %767 = load ptr, ptr %29, align 8, !tbaa !37
  store i32 %766, ptr %30, align 4, !tbaa !110
  %768 = zext i32 %762 to i64
  %769 = getelementptr inbounds i8, ptr %767, i64 %768
  store i8 0, ptr %769, align 1, !tbaa !5
  %770 = load i32, ptr %30, align 4, !tbaa !110
  %771 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %770, i32 1), !nosanitize !16
  %772 = extractvalue { i32, i1 } %771, 1, !nosanitize !16
  br i1 %772, label %317, label %773, !nosanitize !16

773:                                              ; preds = %765
  %774 = extractvalue { i32, i1 } %771, 0, !nosanitize !16
  %775 = load ptr, ptr %29, align 8, !tbaa !37
  store i32 %774, ptr %30, align 4, !tbaa !110
  %776 = zext i32 %770 to i64
  %777 = getelementptr inbounds i8, ptr %775, i64 %776
  store i8 0, ptr %777, align 1, !tbaa !5
  %778 = load i32, ptr %30, align 4, !tbaa !110
  %779 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %778, i32 1), !nosanitize !16
  %780 = extractvalue { i32, i1 } %779, 1, !nosanitize !16
  br i1 %780, label %317, label %781, !nosanitize !16

781:                                              ; preds = %773
  %782 = extractvalue { i32, i1 } %779, 0, !nosanitize !16
  %783 = load ptr, ptr %29, align 8, !tbaa !37
  store i32 %782, ptr %30, align 4, !tbaa !110
  %784 = zext i32 %778 to i64
  %785 = getelementptr inbounds i8, ptr %783, i64 %784
  store i8 %761, ptr %785, align 1, !tbaa !5
  %786 = zext i8 %761 to i64
  %787 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %786
  %788 = load i16, ptr %787, align 4, !tbaa !5
  %789 = add i16 %788, 1
  store i16 %789, ptr %787, align 4, !tbaa !5
  %790 = load i32, ptr %30, align 4, !tbaa !110
  %791 = load i32, ptr %31, align 8, !tbaa !38
  %792 = icmp eq i32 %790, %791
  br i1 %792, label %793, label %854

793:                                              ; preds = %781
  %794 = load i64, ptr %9, align 8, !tbaa !65
  %795 = icmp sgt i64 %794, -1
  br i1 %795, label %796, label %800

796:                                              ; preds = %793
  %797 = load ptr, ptr %7, align 8, !tbaa !28
  %798 = and i64 %794, 4294967295
  %799 = getelementptr inbounds i8, ptr %797, i64 %798
  br label %800

800:                                              ; preds = %793, %796
  %801 = phi ptr [ %799, %796 ], [ null, %793 ]
  %802 = load i32, ptr %6, align 4, !tbaa !64
  %803 = zext i32 %802 to i64
  %804 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %803, i64 %794), !nosanitize !16
  %805 = extractvalue { i64, i1 } %804, 1, !nosanitize !16
  br i1 %805, label %352, label %806, !nosanitize !16

806:                                              ; preds = %800
  %807 = extractvalue { i64, i1 } %804, 0, !nosanitize !16
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %801, i64 noundef %807, i32 noundef 0) #10
  %808 = load i32, ptr %6, align 4, !tbaa !64
  %809 = zext i32 %808 to i64
  store i64 %809, ptr %9, align 8, !tbaa !65
  %810 = load ptr, ptr %0, align 8, !tbaa !18
  %811 = getelementptr inbounds %struct.z_stream_s, ptr %810, i64 0, i32 7
  %812 = load ptr, ptr %811, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %812) #10
  %813 = getelementptr inbounds %struct.internal_state, ptr %812, i64 0, i32 5
  %814 = load i64, ptr %813, align 8, !tbaa !48
  %815 = getelementptr inbounds %struct.z_stream_s, ptr %810, i64 0, i32 4
  %816 = load i32, ptr %815, align 8, !tbaa !89
  %817 = zext i32 %816 to i64
  %818 = icmp ugt i64 %814, %817
  %819 = trunc i64 %814 to i32
  %820 = select i1 %818, i32 %816, i32 %819
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %854, label %822

822:                                              ; preds = %806
  %823 = getelementptr inbounds %struct.z_stream_s, ptr %810, i64 0, i32 3
  %824 = load ptr, ptr %823, align 8, !tbaa !88
  %825 = getelementptr inbounds %struct.internal_state, ptr %812, i64 0, i32 4
  %826 = load ptr, ptr %825, align 8, !tbaa !49
  %827 = zext i32 %820 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %824, ptr align 1 %826, i64 %827, i1 false)
  %828 = load ptr, ptr %823, align 8, !tbaa !88
  %829 = getelementptr inbounds i8, ptr %828, i64 %827
  store ptr %829, ptr %823, align 8, !tbaa !88
  %830 = load ptr, ptr %825, align 8, !tbaa !49
  %831 = getelementptr inbounds i8, ptr %830, i64 %827
  store ptr %831, ptr %825, align 8, !tbaa !49
  %832 = getelementptr inbounds %struct.z_stream_s, ptr %810, i64 0, i32 5
  %833 = load i64, ptr %832, align 8, !tbaa !90
  %834 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %833, i64 %827), !nosanitize !16
  %835 = extractvalue { i64, i1 } %834, 1, !nosanitize !16
  br i1 %835, label %836, label %837, !nosanitize !16

836:                                              ; preds = %822
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

837:                                              ; preds = %822
  %838 = extractvalue { i64, i1 } %834, 0, !nosanitize !16
  store i64 %838, ptr %832, align 8, !tbaa !90
  %839 = load i32, ptr %815, align 8, !tbaa !89
  %840 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %839, i32 %820), !nosanitize !16
  %841 = extractvalue { i32, i1 } %840, 1, !nosanitize !16
  br i1 %841, label %842, label %843, !nosanitize !16

842:                                              ; preds = %843, %837
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

843:                                              ; preds = %837
  %844 = extractvalue { i32, i1 } %840, 0, !nosanitize !16
  store i32 %844, ptr %815, align 8, !tbaa !89
  %845 = load i64, ptr %813, align 8, !tbaa !48
  %846 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %845, i64 %827), !nosanitize !16
  %847 = extractvalue { i64, i1 } %846, 1, !nosanitize !16
  br i1 %847, label %842, label %848, !nosanitize !16

848:                                              ; preds = %843
  %849 = extractvalue { i64, i1 } %846, 0, !nosanitize !16
  store i64 %849, ptr %813, align 8, !tbaa !48
  %850 = icmp eq i64 %849, 0
  br i1 %850, label %851, label %854

851:                                              ; preds = %848
  %852 = getelementptr inbounds %struct.internal_state, ptr %812, i64 0, i32 2
  %853 = load ptr, ptr %852, align 8, !tbaa !34
  store ptr %853, ptr %825, align 8, !tbaa !49
  br label %854

854:                                              ; preds = %851, %848, %806, %781
  %855 = load i32, ptr %6, align 4, !tbaa !64
  %856 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %855, i32 1), !nosanitize !16
  %857 = extractvalue { i32, i1 } %856, 1, !nosanitize !16
  br i1 %857, label %317, label %858, !nosanitize !16

858:                                              ; preds = %854
  %859 = extractvalue { i32, i1 } %856, 0, !nosanitize !16
  store i32 %859, ptr %6, align 4, !tbaa !64
  %860 = load i32, ptr %3, align 4, !tbaa !66
  %861 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %860, i32 1), !nosanitize !16
  %862 = extractvalue { i32, i1 } %861, 1, !nosanitize !16
  br i1 %862, label %352, label %863, !nosanitize !16

863:                                              ; preds = %858
  %864 = extractvalue { i32, i1 } %861, 0, !nosanitize !16
  store i32 %864, ptr %3, align 4, !tbaa !66
  %865 = load ptr, ptr %0, align 8, !tbaa !18
  %866 = getelementptr inbounds %struct.z_stream_s, ptr %865, i64 0, i32 4
  %867 = load i32, ptr %866, align 8, !tbaa !89
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %1060, label %683

869:                                              ; preds = %749
  store i32 1, ptr %32, align 8, !tbaa !70
  %870 = load i32, ptr %6, align 4, !tbaa !64
  %871 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %870, i32 1), !nosanitize !16
  %872 = extractvalue { i32, i1 } %871, 1, !nosanitize !16
  br i1 %872, label %317, label %873, !nosanitize !16

873:                                              ; preds = %869
  %874 = extractvalue { i32, i1 } %871, 0, !nosanitize !16
  store i32 %874, ptr %6, align 4, !tbaa !64
  %875 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %548, i32 1), !nosanitize !16
  %876 = extractvalue { i32, i1 } %875, 1, !nosanitize !16
  br i1 %876, label %352, label %877, !nosanitize !16

877:                                              ; preds = %873
  %878 = extractvalue { i32, i1 } %875, 0, !nosanitize !16
  store i32 %878, ptr %3, align 4, !tbaa !66
  br label %683

879:                                              ; preds = %305
  %880 = load i32, ptr %32, align 8, !tbaa !70
  %881 = icmp eq i32 %880, 0
  %882 = load i32, ptr %6, align 4, !tbaa !64
  br i1 %881, label %921, label %883

883:                                              ; preds = %879
  %884 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %882, i32 1), !nosanitize !16
  %885 = extractvalue { i32, i1 } %884, 1, !nosanitize !16
  br i1 %885, label %352, label %886, !nosanitize !16

886:                                              ; preds = %883
  %887 = extractvalue { i32, i1 } %884, 0, !nosanitize !16
  %888 = load ptr, ptr %7, align 8, !tbaa !28
  %889 = zext i32 %887 to i64
  %890 = getelementptr inbounds i8, ptr %888, i64 %889
  %891 = load i8, ptr %890, align 1, !tbaa !5
  %892 = load i32, ptr %30, align 4, !tbaa !110
  %893 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %892, i32 1), !nosanitize !16
  %894 = extractvalue { i32, i1 } %893, 1, !nosanitize !16
  br i1 %894, label %317, label %895, !nosanitize !16

895:                                              ; preds = %886
  %896 = extractvalue { i32, i1 } %893, 0, !nosanitize !16
  %897 = load ptr, ptr %29, align 8, !tbaa !37
  store i32 %896, ptr %30, align 4, !tbaa !110
  %898 = zext i32 %892 to i64
  %899 = getelementptr inbounds i8, ptr %897, i64 %898
  store i8 0, ptr %899, align 1, !tbaa !5
  %900 = load i32, ptr %30, align 4, !tbaa !110
  %901 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %900, i32 1), !nosanitize !16
  %902 = extractvalue { i32, i1 } %901, 1, !nosanitize !16
  br i1 %902, label %317, label %903, !nosanitize !16

903:                                              ; preds = %895
  %904 = extractvalue { i32, i1 } %901, 0, !nosanitize !16
  %905 = load ptr, ptr %29, align 8, !tbaa !37
  store i32 %904, ptr %30, align 4, !tbaa !110
  %906 = zext i32 %900 to i64
  %907 = getelementptr inbounds i8, ptr %905, i64 %906
  store i8 0, ptr %907, align 1, !tbaa !5
  %908 = load i32, ptr %30, align 4, !tbaa !110
  %909 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %908, i32 1), !nosanitize !16
  %910 = extractvalue { i32, i1 } %909, 1, !nosanitize !16
  br i1 %910, label %317, label %911, !nosanitize !16

911:                                              ; preds = %903
  %912 = extractvalue { i32, i1 } %909, 0, !nosanitize !16
  %913 = load ptr, ptr %29, align 8, !tbaa !37
  store i32 %912, ptr %30, align 4, !tbaa !110
  %914 = zext i32 %908 to i64
  %915 = getelementptr inbounds i8, ptr %913, i64 %914
  store i8 %891, ptr %915, align 1, !tbaa !5
  %916 = zext i8 %891 to i64
  %917 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %916
  %918 = load i16, ptr %917, align 4, !tbaa !5
  %919 = add i16 %918, 1
  store i16 %919, ptr %917, align 4, !tbaa !5
  store i32 0, ptr %32, align 8, !tbaa !70
  %920 = load i32, ptr %6, align 4, !tbaa !64
  br label %921

921:                                              ; preds = %911, %879
  %922 = phi i32 [ %920, %911 ], [ %882, %879 ]
  %923 = tail call i32 @llvm.umin.i32(i32 %922, i32 2)
  store i32 %923, ptr %10, align 4, !tbaa !67
  %924 = icmp eq i32 %1, 4
  br i1 %924, label %925, label %991

925:                                              ; preds = %921
  %926 = load i64, ptr %9, align 8, !tbaa !65
  %927 = icmp sgt i64 %926, -1
  br i1 %927, label %928, label %932

928:                                              ; preds = %925
  %929 = load ptr, ptr %7, align 8, !tbaa !28
  %930 = and i64 %926, 4294967295
  %931 = getelementptr inbounds i8, ptr %929, i64 %930
  br label %932

932:                                              ; preds = %925, %928
  %933 = phi ptr [ %931, %928 ], [ null, %925 ]
  %934 = zext i32 %922 to i64
  %935 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %934, i64 %926), !nosanitize !16
  %936 = extractvalue { i64, i1 } %935, 1, !nosanitize !16
  br i1 %936, label %352, label %937, !nosanitize !16

937:                                              ; preds = %932
  %938 = extractvalue { i64, i1 } %935, 0, !nosanitize !16
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %933, i64 noundef %938, i32 noundef 1) #10
  %939 = load i32, ptr %6, align 4, !tbaa !64
  %940 = zext i32 %939 to i64
  store i64 %940, ptr %9, align 8, !tbaa !65
  %941 = load ptr, ptr %0, align 8, !tbaa !18
  %942 = getelementptr inbounds %struct.z_stream_s, ptr %941, i64 0, i32 7
  %943 = load ptr, ptr %942, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %943) #10
  %944 = getelementptr inbounds %struct.internal_state, ptr %943, i64 0, i32 5
  %945 = load i64, ptr %944, align 8, !tbaa !48
  %946 = getelementptr inbounds %struct.z_stream_s, ptr %941, i64 0, i32 4
  %947 = load i32, ptr %946, align 8, !tbaa !89
  %948 = zext i32 %947 to i64
  %949 = icmp ugt i64 %945, %948
  %950 = trunc i64 %945 to i32
  %951 = select i1 %949, i32 %947, i32 %950
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %985, label %953

953:                                              ; preds = %937
  %954 = getelementptr inbounds %struct.z_stream_s, ptr %941, i64 0, i32 3
  %955 = load ptr, ptr %954, align 8, !tbaa !88
  %956 = getelementptr inbounds %struct.internal_state, ptr %943, i64 0, i32 4
  %957 = load ptr, ptr %956, align 8, !tbaa !49
  %958 = zext i32 %951 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %955, ptr align 1 %957, i64 %958, i1 false)
  %959 = load ptr, ptr %954, align 8, !tbaa !88
  %960 = getelementptr inbounds i8, ptr %959, i64 %958
  store ptr %960, ptr %954, align 8, !tbaa !88
  %961 = load ptr, ptr %956, align 8, !tbaa !49
  %962 = getelementptr inbounds i8, ptr %961, i64 %958
  store ptr %962, ptr %956, align 8, !tbaa !49
  %963 = getelementptr inbounds %struct.z_stream_s, ptr %941, i64 0, i32 5
  %964 = load i64, ptr %963, align 8, !tbaa !90
  %965 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %964, i64 %958), !nosanitize !16
  %966 = extractvalue { i64, i1 } %965, 1, !nosanitize !16
  br i1 %966, label %967, label %968, !nosanitize !16

967:                                              ; preds = %953
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

968:                                              ; preds = %953
  %969 = extractvalue { i64, i1 } %965, 0, !nosanitize !16
  store i64 %969, ptr %963, align 8, !tbaa !90
  %970 = load i32, ptr %946, align 8, !tbaa !89
  %971 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %970, i32 %951), !nosanitize !16
  %972 = extractvalue { i32, i1 } %971, 1, !nosanitize !16
  br i1 %972, label %973, label %974, !nosanitize !16

973:                                              ; preds = %974, %968
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

974:                                              ; preds = %968
  %975 = extractvalue { i32, i1 } %971, 0, !nosanitize !16
  store i32 %975, ptr %946, align 8, !tbaa !89
  %976 = load i64, ptr %944, align 8, !tbaa !48
  %977 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %976, i64 %958), !nosanitize !16
  %978 = extractvalue { i64, i1 } %977, 1, !nosanitize !16
  br i1 %978, label %973, label %979, !nosanitize !16

979:                                              ; preds = %974
  %980 = extractvalue { i64, i1 } %977, 0, !nosanitize !16
  store i64 %980, ptr %944, align 8, !tbaa !48
  %981 = icmp eq i64 %980, 0
  br i1 %981, label %982, label %985

982:                                              ; preds = %979
  %983 = getelementptr inbounds %struct.internal_state, ptr %943, i64 0, i32 2
  %984 = load ptr, ptr %983, align 8, !tbaa !34
  store ptr %984, ptr %956, align 8, !tbaa !49
  br label %985

985:                                              ; preds = %937, %979, %982
  %986 = load ptr, ptr %0, align 8, !tbaa !18
  %987 = getelementptr inbounds %struct.z_stream_s, ptr %986, i64 0, i32 4
  %988 = load i32, ptr %987, align 8, !tbaa !89
  %989 = icmp eq i32 %988, 0
  %990 = select i1 %989, i32 2, i32 3
  br label %1060

991:                                              ; preds = %921
  %992 = load i32, ptr %30, align 4, !tbaa !110
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %1059, label %994

994:                                              ; preds = %991
  %995 = load i64, ptr %9, align 8, !tbaa !65
  %996 = icmp sgt i64 %995, -1
  br i1 %996, label %997, label %1001

997:                                              ; preds = %994
  %998 = load ptr, ptr %7, align 8, !tbaa !28
  %999 = and i64 %995, 4294967295
  %1000 = getelementptr inbounds i8, ptr %998, i64 %999
  br label %1001

1001:                                             ; preds = %994, %997
  %1002 = phi ptr [ %1000, %997 ], [ null, %994 ]
  %1003 = zext i32 %922 to i64
  %1004 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1003, i64 %995), !nosanitize !16
  %1005 = extractvalue { i64, i1 } %1004, 1, !nosanitize !16
  br i1 %1005, label %352, label %1006, !nosanitize !16

1006:                                             ; preds = %1001
  %1007 = extractvalue { i64, i1 } %1004, 0, !nosanitize !16
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1002, i64 noundef %1007, i32 noundef 0) #10
  %1008 = load i32, ptr %6, align 4, !tbaa !64
  %1009 = zext i32 %1008 to i64
  store i64 %1009, ptr %9, align 8, !tbaa !65
  %1010 = load ptr, ptr %0, align 8, !tbaa !18
  %1011 = getelementptr inbounds %struct.z_stream_s, ptr %1010, i64 0, i32 7
  %1012 = load ptr, ptr %1011, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %1012) #10
  %1013 = getelementptr inbounds %struct.internal_state, ptr %1012, i64 0, i32 5
  %1014 = load i64, ptr %1013, align 8, !tbaa !48
  %1015 = getelementptr inbounds %struct.z_stream_s, ptr %1010, i64 0, i32 4
  %1016 = load i32, ptr %1015, align 8, !tbaa !89
  %1017 = zext i32 %1016 to i64
  %1018 = icmp ugt i64 %1014, %1017
  %1019 = trunc i64 %1014 to i32
  %1020 = select i1 %1018, i32 %1016, i32 %1019
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1054, label %1022

1022:                                             ; preds = %1006
  %1023 = getelementptr inbounds %struct.z_stream_s, ptr %1010, i64 0, i32 3
  %1024 = load ptr, ptr %1023, align 8, !tbaa !88
  %1025 = getelementptr inbounds %struct.internal_state, ptr %1012, i64 0, i32 4
  %1026 = load ptr, ptr %1025, align 8, !tbaa !49
  %1027 = zext i32 %1020 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1024, ptr align 1 %1026, i64 %1027, i1 false)
  %1028 = load ptr, ptr %1023, align 8, !tbaa !88
  %1029 = getelementptr inbounds i8, ptr %1028, i64 %1027
  store ptr %1029, ptr %1023, align 8, !tbaa !88
  %1030 = load ptr, ptr %1025, align 8, !tbaa !49
  %1031 = getelementptr inbounds i8, ptr %1030, i64 %1027
  store ptr %1031, ptr %1025, align 8, !tbaa !49
  %1032 = getelementptr inbounds %struct.z_stream_s, ptr %1010, i64 0, i32 5
  %1033 = load i64, ptr %1032, align 8, !tbaa !90
  %1034 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1033, i64 %1027), !nosanitize !16
  %1035 = extractvalue { i64, i1 } %1034, 1, !nosanitize !16
  br i1 %1035, label %1036, label %1037, !nosanitize !16

1036:                                             ; preds = %1022
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !16
  unreachable, !nosanitize !16

1037:                                             ; preds = %1022
  %1038 = extractvalue { i64, i1 } %1034, 0, !nosanitize !16
  store i64 %1038, ptr %1032, align 8, !tbaa !90
  %1039 = load i32, ptr %1015, align 8, !tbaa !89
  %1040 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1039, i32 %1020), !nosanitize !16
  %1041 = extractvalue { i32, i1 } %1040, 1, !nosanitize !16
  br i1 %1041, label %1042, label %1043, !nosanitize !16

1042:                                             ; preds = %1043, %1037
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !16
  unreachable, !nosanitize !16

1043:                                             ; preds = %1037
  %1044 = extractvalue { i32, i1 } %1040, 0, !nosanitize !16
  store i32 %1044, ptr %1015, align 8, !tbaa !89
  %1045 = load i64, ptr %1013, align 8, !tbaa !48
  %1046 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1045, i64 %1027), !nosanitize !16
  %1047 = extractvalue { i64, i1 } %1046, 1, !nosanitize !16
  br i1 %1047, label %1042, label %1048, !nosanitize !16

1048:                                             ; preds = %1043
  %1049 = extractvalue { i64, i1 } %1046, 0, !nosanitize !16
  store i64 %1049, ptr %1013, align 8, !tbaa !48
  %1050 = icmp eq i64 %1049, 0
  br i1 %1050, label %1051, label %1054

1051:                                             ; preds = %1048
  %1052 = getelementptr inbounds %struct.internal_state, ptr %1012, i64 0, i32 2
  %1053 = load ptr, ptr %1052, align 8, !tbaa !34
  store ptr %1053, ptr %1025, align 8, !tbaa !49
  br label %1054

1054:                                             ; preds = %1006, %1048, %1051
  %1055 = load ptr, ptr %0, align 8, !tbaa !18
  %1056 = getelementptr inbounds %struct.z_stream_s, ptr %1055, i64 0, i32 4
  %1057 = load i32, ptr %1056, align 8, !tbaa !89
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1060, label %1059

1059:                                             ; preds = %1054, %991
  br label %1060

1060:                                             ; preds = %863, %744, %301, %1054, %985, %1059
  %1061 = phi i32 [ 1, %1059 ], [ %990, %985 ], [ 0, %1054 ], [ 0, %301 ], [ 0, %744 ], [ 0, %863 ]
  ret i32 %1061
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

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
!16 = !{}
!17 = !{!9, !10, i64 56}
!18 = !{!19, !10, i64 0}
!19 = !{!"internal_state", !10, i64 0, !11, i64 8, !10, i64 16, !12, i64 24, !10, i64 32, !12, i64 40, !11, i64 48, !10, i64 56, !12, i64 64, !6, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !10, i64 96, !12, i64 104, !10, i64 112, !10, i64 120, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !12, i64 152, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !6, i64 212, !6, i64 2504, !6, i64 2748, !20, i64 2904, !20, i64 2928, !20, i64 2952, !6, i64 2976, !6, i64 3008, !11, i64 5300, !11, i64 5304, !6, i64 5308, !10, i64 5888, !11, i64 5896, !11, i64 5900, !11, i64 5904, !12, i64 5912, !12, i64 5920, !11, i64 5928, !11, i64 5932, !21, i64 5936, !11, i64 5940, !11, i64 5944, !12, i64 5952, !11, i64 5960}
!20 = !{!"tree_desc_s", !10, i64 0, !11, i64 8, !10, i64 16}
!21 = !{!"short", !6, i64 0}
!22 = !{!19, !11, i64 8}
!23 = !{!19, !11, i64 48}
!24 = !{!19, !11, i64 84}
!25 = !{!19, !11, i64 80}
!26 = !{!19, !11, i64 88}
!27 = !{!11, !11, i64 0}
!28 = !{!19, !10, i64 96}
!29 = !{!19, !10, i64 112}
!30 = !{!19, !11, i64 132}
!31 = !{!19, !10, i64 120}
!32 = !{!19, !12, i64 5952}
!33 = !{!19, !11, i64 5896}
!34 = !{!19, !10, i64 16}
!35 = !{!19, !12, i64 24}
!36 = !{!10, !10, i64 0}
!37 = !{!19, !10, i64 5888}
!38 = !{!19, !11, i64 5904}
!39 = !{!19, !11, i64 196}
!40 = !{!19, !11, i64 200}
!41 = !{!19, !6, i64 72}
!42 = !{i32 -2, i32 1}
!43 = !{!19, !11, i64 136}
!44 = !{!19, !11, i64 140}
!45 = !{!19, !11, i64 144}
!46 = !{!9, !12, i64 16}
!47 = !{!9, !11, i64 88}
!48 = !{!19, !12, i64 40}
!49 = !{!19, !10, i64 32}
!50 = !{!9, !12, i64 96}
!51 = !{!19, !11, i64 76}
!52 = !{!19, !12, i64 104}
!53 = !{!21, !21, i64 0}
!54 = !{!19, !11, i64 5960}
!55 = !{!56, !21, i64 2}
!56 = !{!"config_s", !21, i64 0, !21, i64 2, !21, i64 4, !21, i64 6, !10, i64 8}
!57 = !{!19, !11, i64 192}
!58 = !{!56, !21, i64 0}
!59 = !{!19, !11, i64 204}
!60 = !{!56, !21, i64 4}
!61 = !{!19, !11, i64 208}
!62 = !{!56, !21, i64 6}
!63 = !{!19, !11, i64 188}
!64 = !{!19, !11, i64 172}
!65 = !{!19, !12, i64 152}
!66 = !{!19, !11, i64 180}
!67 = !{!19, !11, i64 5932}
!68 = !{!19, !11, i64 184}
!69 = !{!19, !11, i64 160}
!70 = !{!19, !11, i64 168}
!71 = !{!19, !11, i64 128}
!72 = !{!9, !11, i64 8}
!73 = !{!9, !10, i64 0}
!74 = !{!19, !11, i64 176}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.mustprogress"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !76}
!80 = distinct !{!80, !76}
!81 = distinct !{!81, !76}
!82 = !{!19, !10, i64 56}
!83 = !{!19, !11, i64 5940}
!84 = !{!19, !11, i64 5944}
!85 = !{!19, !21, i64 5936}
!86 = distinct !{!86, !76}
!87 = !{!56, !10, i64 8}
!88 = !{!9, !10, i64 24}
!89 = !{!9, !11, i64 32}
!90 = !{!9, !12, i64 40}
!91 = !{!92, !10, i64 56}
!92 = !{!"gz_header_s", !11, i64 0, !12, i64 8, !11, i64 16, !11, i64 20, !10, i64 24, !11, i64 32, !11, i64 36, !10, i64 40, !11, i64 48, !10, i64 56, !11, i64 64, !11, i64 68, !11, i64 72}
!93 = !{!92, !10, i64 40}
!94 = !{!92, !10, i64 24}
!95 = !{!92, !11, i64 0}
!96 = !{!92, !11, i64 68}
!97 = !{!92, !12, i64 8}
!98 = !{!92, !11, i64 20}
!99 = !{!92, !11, i64 32}
!100 = !{!19, !12, i64 64}
!101 = distinct !{!101, !76, !102}
!102 = !{!"llvm.loop.peeled.count", i32 1}
!103 = distinct !{!103, !76}
!104 = distinct !{!104, !76}
!105 = !{i32 0, i32 4}
!106 = !{!19, !11, i64 5928}
!107 = distinct !{!107, !76}
!108 = distinct !{!108, !76}
!109 = distinct !{!109, !76}
!110 = !{!19, !11, i64 5900}
!111 = distinct !{!111, !76}
!112 = !{!19, !10, i64 2904}
!113 = !{!19, !10, i64 2928}
!114 = !{!19, !10, i64 2952}
!115 = distinct !{!115, !76}
!116 = distinct !{!116, !76}
!117 = distinct !{!117, !76}
!118 = !{!19, !11, i64 164}
!119 = distinct !{!119, !76}
