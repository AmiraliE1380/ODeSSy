; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_deflate.ll'
source_filename = "/mydata/zlib/deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_s = type { i16, i16, i16, i16, ptr }

@deflate_copyright = dso_local local_unnamed_addr constant [70 x i8] c" deflate 1.3.2.1 Copyright 1995-2026 Jean-loup Gailly and Mark Adler \00", align 16
@z_errmsg = external local_unnamed_addr constant [10 x ptr], align 16
@configuration_table = internal unnamed_addr constant [10 x %struct.config_s] [%struct.config_s { i16 0, i16 0, i16 0, i16 0, ptr @deflate_stored }, %struct.config_s { i16 4, i16 4, i16 8, i16 4, ptr @deflate_fast }, %struct.config_s { i16 4, i16 5, i16 16, i16 8, ptr @deflate_fast }, %struct.config_s { i16 4, i16 6, i16 32, i16 32, ptr @deflate_fast }, %struct.config_s { i16 4, i16 4, i16 16, i16 16, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 32, i16 32, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 128, i16 128, ptr @deflate_slow }, %struct.config_s { i16 8, i16 32, i16 128, i16 256, ptr @deflate_slow }, %struct.config_s { i16 32, i16 128, i16 258, i16 1024, ptr @deflate_slow }, %struct.config_s { i16 32, i16 258, i16 258, i16 4096, ptr @deflate_slow }], align 16
@_length_code = external local_unnamed_addr constant [0 x i8], align 1
@_dist_code = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @deflateInit_(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 {
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
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %14, align 8, !tbaa !8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  store ptr @zcalloc, ptr %15, align 8, !tbaa !15
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %19, align 8, !tbaa !16
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ @zcalloc, %18 ], [ %16, %13 ]
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %23 = load ptr, ptr %22, align 8, !tbaa !17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store ptr @zcfree, ptr %22, align 8, !tbaa !17
  br label %26

26:                                               ; preds = %25, %20
  %27 = icmp eq i32 %1, -1
  %28 = select i1 %27, i32 6, i32 %1
  %29 = icmp ugt i32 %28, 9
  br i1 %29, label %153, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %32 = load ptr, ptr %31, align 8, !tbaa !16
  %33 = tail call ptr %21(ptr noundef %32, i32 noundef 1, i32 noundef 5968) #11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %153, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5960) %36, i8 0, i64 5960, i1 false)
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %33, ptr %37, align 8, !tbaa !18
  store ptr %0, ptr %33, align 8, !tbaa !19
  store i32 42, ptr %36, align 8, !tbaa !28
  %38 = getelementptr inbounds nuw i8, ptr %33, i64 48
  store i32 1, ptr %38, align 8, !tbaa !29
  %39 = getelementptr inbounds nuw i8, ptr %33, i64 84
  store i32 15, ptr %39, align 4, !tbaa !30
  %40 = getelementptr inbounds nuw i8, ptr %33, i64 80
  store i32 32768, ptr %40, align 8, !tbaa !31
  %41 = getelementptr inbounds nuw i8, ptr %33, i64 88
  store i32 32767, ptr %41, align 8, !tbaa !32
  %42 = getelementptr inbounds nuw i8, ptr %33, i64 132
  store <4 x i32> <i32 32768, i32 15, i32 32767, i32 5>, ptr %42, align 4, !tbaa !33
  %43 = load ptr, ptr %15, align 8, !tbaa !15
  %44 = load ptr, ptr %31, align 8, !tbaa !16
  %45 = tail call ptr %43(ptr noundef %44, i32 noundef 32768, i32 noundef 2) #11
  %46 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store ptr %45, ptr %46, align 8, !tbaa !34
  %47 = load ptr, ptr %15, align 8, !tbaa !15
  %48 = load ptr, ptr %31, align 8, !tbaa !16
  %49 = load i32, ptr %40, align 8, !tbaa !31
  %50 = tail call ptr %47(ptr noundef %48, i32 noundef %49, i32 noundef 2) #11
  %51 = getelementptr inbounds nuw i8, ptr %33, i64 112
  store ptr %50, ptr %51, align 8, !tbaa !35
  %52 = load ptr, ptr %15, align 8, !tbaa !15
  %53 = load ptr, ptr %31, align 8, !tbaa !16
  %54 = load i32, ptr %42, align 4, !tbaa !36
  %55 = tail call ptr %52(ptr noundef %53, i32 noundef %54, i32 noundef 2) #11
  %56 = getelementptr inbounds nuw i8, ptr %33, i64 120
  store ptr %55, ptr %56, align 8, !tbaa !37
  %57 = getelementptr inbounds nuw i8, ptr %33, i64 5952
  store i64 0, ptr %57, align 8, !tbaa !38
  %58 = getelementptr inbounds nuw i8, ptr %33, i64 5896
  store i32 16384, ptr %58, align 8, !tbaa !39
  %59 = load ptr, ptr %15, align 8, !tbaa !15
  %60 = load ptr, ptr %31, align 8, !tbaa !16
  %61 = tail call ptr %59(ptr noundef %60, i32 noundef 16384, i32 noundef 4) #11
  %62 = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr %61, ptr %62, align 8, !tbaa !40
  %63 = load i32, ptr %58, align 8, !tbaa !39
  %64 = zext i32 %63 to i64
  %65 = shl nuw nsw i64 %64, 2
  %66 = getelementptr inbounds nuw i8, ptr %33, i64 24
  store i64 %65, ptr %66, align 8, !tbaa !41
  %67 = load ptr, ptr %46, align 8, !tbaa !34
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %35
  %70 = load ptr, ptr %51, align 8, !tbaa !35
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %56, align 8, !tbaa !37
  %74 = icmp eq ptr %73, null
  %75 = icmp eq ptr %61, null
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %77, label %135

77:                                               ; preds = %72, %69, %35
  store i32 666, ptr %36, align 8, !tbaa !28
  %78 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !42
  store ptr %78, ptr %14, align 8, !tbaa !8
  %79 = load ptr, ptr %15, align 8, !tbaa !15
  %80 = icmp eq ptr %79, null
  br i1 %80, label %153, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %22, align 8, !tbaa !17
  %83 = icmp eq ptr %82, null
  br i1 %83, label %153, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %37, align 8, !tbaa !18
  %86 = icmp eq ptr %85, null
  br i1 %86, label %153, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %85, align 8, !tbaa !19
  %89 = icmp eq ptr %88, %0
  br i1 %89, label %90, label %153

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw i8, ptr %85, i64 8
  %92 = load i32, ptr %91, align 8, !tbaa !28
  switch i32 %92, label %153 [
    i32 42, label %93
    i32 57, label %93
    i32 69, label %93
    i32 73, label %93
    i32 91, label %93
    i32 103, label %93
    i32 113, label %93
    i32 666, label %93
  ]

93:                                               ; preds = %90, %90, %90, %90, %90, %90, %90, %90
  %94 = getelementptr inbounds nuw i8, ptr %85, i64 16
  %95 = load ptr, ptr %94, align 8, !tbaa !40
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %82(ptr noundef %98, ptr noundef nonnull %95) #11
  %99 = load ptr, ptr %37, align 8, !tbaa !18
  %100 = load ptr, ptr %22, align 8, !tbaa !17
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi ptr [ %100, %97 ], [ %82, %93 ]
  %103 = phi ptr [ %99, %97 ], [ %85, %93 ]
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 120
  %105 = load ptr, ptr %104, align 8, !tbaa !37
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  %108 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %102(ptr noundef %108, ptr noundef nonnull %105) #11
  %109 = load ptr, ptr %37, align 8, !tbaa !18
  %110 = load ptr, ptr %22, align 8, !tbaa !17
  br label %111

111:                                              ; preds = %107, %101
  %112 = phi ptr [ %110, %107 ], [ %102, %101 ]
  %113 = phi ptr [ %109, %107 ], [ %103, %101 ]
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 112
  %115 = load ptr, ptr %114, align 8, !tbaa !35
  %116 = icmp eq ptr %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %111
  %118 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %112(ptr noundef %118, ptr noundef nonnull %115) #11
  %119 = load ptr, ptr %37, align 8, !tbaa !18
  %120 = load ptr, ptr %22, align 8, !tbaa !17
  br label %121

121:                                              ; preds = %117, %111
  %122 = phi ptr [ %120, %117 ], [ %112, %111 ]
  %123 = phi ptr [ %119, %117 ], [ %113, %111 ]
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 96
  %125 = load ptr, ptr %124, align 8, !tbaa !34
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %122(ptr noundef %128, ptr noundef nonnull %125) #11
  %129 = load ptr, ptr %22, align 8, !tbaa !17
  %130 = load ptr, ptr %37, align 8, !tbaa !18
  br label %131

131:                                              ; preds = %127, %121
  %132 = phi ptr [ %130, %127 ], [ %123, %121 ]
  %133 = phi ptr [ %129, %127 ], [ %122, %121 ]
  %134 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %133(ptr noundef %134, ptr noundef %132) #11
  store ptr null, ptr %37, align 8, !tbaa !18
  br label %153

135:                                              ; preds = %72
  %136 = getelementptr inbounds nuw i8, ptr %61, i64 %64
  %137 = getelementptr inbounds nuw i8, ptr %33, i64 5888
  store ptr %136, ptr %137, align 8, !tbaa !43
  %138 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %63, i32 1), !nosanitize !44
  %139 = extractvalue { i32, i1 } %138, 1, !nosanitize !44
  br i1 %139, label %140, label %141, !prof !45, !nosanitize !44

140:                                              ; preds = %135
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

141:                                              ; preds = %135
  %142 = extractvalue { i32, i1 } %138, 0, !nosanitize !44
  %143 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %142, i32 3), !nosanitize !44
  %144 = extractvalue { i32, i1 } %143, 1, !nosanitize !44
  br i1 %144, label %145, label %146, !prof !45, !nosanitize !44

145:                                              ; preds = %141
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !44
  unreachable, !nosanitize !44

146:                                              ; preds = %141
  %147 = extractvalue { i32, i1 } %143, 0, !nosanitize !44
  %148 = getelementptr inbounds nuw i8, ptr %33, i64 5904
  store i32 %147, ptr %148, align 8, !tbaa !46
  %149 = getelementptr inbounds nuw i8, ptr %33, i64 196
  store i32 %28, ptr %149, align 4, !tbaa !47
  %150 = getelementptr inbounds nuw i8, ptr %33, i64 200
  store i32 0, ptr %150, align 8, !tbaa !48
  %151 = getelementptr inbounds nuw i8, ptr %33, i64 72
  store i8 8, ptr %151, align 8, !tbaa !49
  %152 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %153

153:                                              ; preds = %146, %131, %90, %87, %84, %81, %77, %30, %26, %11, %6, %4
  %154 = phi i32 [ %152, %146 ], [ -6, %6 ], [ -6, %4 ], [ -2, %11 ], [ -2, %26 ], [ -4, %30 ], [ -4, %77 ], [ -4, %81 ], [ -4, %84 ], [ -4, %87 ], [ -4, %90 ], [ -4, %131 ]
  ret i32 %154
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  br i1 %9, label %197, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !5
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %197, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %197, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %18, align 8, !tbaa !8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  store ptr @zcalloc, ptr %19, align 8, !tbaa !15
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %23, align 8, !tbaa !16
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ @zcalloc, %22 ], [ %20, %17 ]
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store ptr @zcfree, ptr %26, align 8, !tbaa !17
  br label %30

30:                                               ; preds = %29, %24
  %31 = icmp eq i32 %1, -1
  %32 = select i1 %31, i32 6, i32 %1
  %33 = icmp slt i32 %3, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = icmp samesign ult i32 %3, -15
  br i1 %35, label %197, label %36

36:                                               ; preds = %34
  %37 = sub nsw i32 0, %3
  br label %42

38:                                               ; preds = %30
  %39 = icmp samesign ugt i32 %3, 15
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = add nsw i32 %3, -16
  br label %42

42:                                               ; preds = %40, %38, %36
  %43 = phi i32 [ %37, %36 ], [ %41, %40 ], [ %3, %38 ]
  %44 = phi i1 [ true, %36 ], [ true, %40 ], [ false, %38 ]
  %45 = phi i32 [ 0, %36 ], [ 2, %40 ], [ 1, %38 ]
  %46 = add i32 %4, -10
  %47 = icmp ult i32 %46, -9
  %48 = icmp ne i32 %2, 8
  %49 = or i1 %48, %47
  %50 = add nsw i32 %43, -16
  %51 = icmp ult i32 %50, -8
  %52 = select i1 %49, i1 true, i1 %51
  %53 = icmp ugt i32 %32, 9
  %54 = or i1 %53, %52
  %55 = icmp ugt i32 %5, 4
  %56 = or i1 %55, %54
  br i1 %56, label %197, label %57

57:                                               ; preds = %42
  %58 = icmp eq i32 %43, 8
  %59 = and i1 %58, %44
  br i1 %59, label %197, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %62 = load ptr, ptr %61, align 8, !tbaa !16
  %63 = tail call ptr %25(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %197, label %65

65:                                               ; preds = %60
  %66 = select i1 %58, i32 9, i32 %43
  %67 = getelementptr inbounds nuw i8, ptr %63, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5960) %67, i8 0, i64 5960, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %63, ptr %68, align 8, !tbaa !18
  store ptr %0, ptr %63, align 8, !tbaa !19
  store i32 42, ptr %67, align 8, !tbaa !28
  %69 = getelementptr inbounds nuw i8, ptr %63, i64 48
  store i32 %45, ptr %69, align 8, !tbaa !29
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 84
  store i32 %66, ptr %70, align 4, !tbaa !30
  %71 = shl nuw nsw i32 1, %66
  %72 = getelementptr inbounds nuw i8, ptr %63, i64 80
  store i32 %71, ptr %72, align 8, !tbaa !31
  %73 = add nsw i32 %71, -1
  %74 = getelementptr inbounds nuw i8, ptr %63, i64 88
  store i32 %73, ptr %74, align 8, !tbaa !32
  %75 = add nuw nsw i32 %4, 7
  %76 = getelementptr inbounds nuw i8, ptr %63, i64 136
  store i32 %75, ptr %76, align 8, !tbaa !50
  %77 = shl nuw nsw i32 128, %4
  %78 = getelementptr inbounds nuw i8, ptr %63, i64 132
  store i32 %77, ptr %78, align 4, !tbaa !36
  %79 = add nsw i32 %77, -1
  %80 = getelementptr inbounds nuw i8, ptr %63, i64 140
  store i32 %79, ptr %80, align 4, !tbaa !51
  %81 = trunc nuw nsw i32 %4 to i8
  %82 = add nuw nsw i8 %81, 9
  %83 = udiv i8 %82, 3
  %84 = zext nneg i8 %83 to i32
  %85 = getelementptr inbounds nuw i8, ptr %63, i64 144
  store i32 %84, ptr %85, align 8, !tbaa !52
  %86 = load ptr, ptr %19, align 8, !tbaa !15
  %87 = load ptr, ptr %61, align 8, !tbaa !16
  %88 = tail call ptr %86(ptr noundef %87, i32 noundef %71, i32 noundef 2) #11
  %89 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store ptr %88, ptr %89, align 8, !tbaa !34
  %90 = load ptr, ptr %19, align 8, !tbaa !15
  %91 = load ptr, ptr %61, align 8, !tbaa !16
  %92 = load i32, ptr %72, align 8, !tbaa !31
  %93 = tail call ptr %90(ptr noundef %91, i32 noundef %92, i32 noundef 2) #11
  %94 = getelementptr inbounds nuw i8, ptr %63, i64 112
  store ptr %93, ptr %94, align 8, !tbaa !35
  %95 = load ptr, ptr %19, align 8, !tbaa !15
  %96 = load ptr, ptr %61, align 8, !tbaa !16
  %97 = load i32, ptr %78, align 4, !tbaa !36
  %98 = tail call ptr %95(ptr noundef %96, i32 noundef %97, i32 noundef 2) #11
  %99 = getelementptr inbounds nuw i8, ptr %63, i64 120
  store ptr %98, ptr %99, align 8, !tbaa !37
  %100 = getelementptr inbounds nuw i8, ptr %63, i64 5952
  store i64 0, ptr %100, align 8, !tbaa !38
  %101 = shl nuw nsw i32 64, %4
  %102 = getelementptr inbounds nuw i8, ptr %63, i64 5896
  store i32 %101, ptr %102, align 8, !tbaa !39
  %103 = load ptr, ptr %19, align 8, !tbaa !15
  %104 = load ptr, ptr %61, align 8, !tbaa !16
  %105 = tail call ptr %103(ptr noundef %104, i32 noundef %101, i32 noundef 4) #11
  %106 = getelementptr inbounds nuw i8, ptr %63, i64 16
  store ptr %105, ptr %106, align 8, !tbaa !40
  %107 = load i32, ptr %102, align 8, !tbaa !39
  %108 = zext i32 %107 to i64
  %109 = shl nuw nsw i64 %108, 2
  %110 = getelementptr inbounds nuw i8, ptr %63, i64 24
  store i64 %109, ptr %110, align 8, !tbaa !41
  %111 = load ptr, ptr %89, align 8, !tbaa !34
  %112 = icmp eq ptr %111, null
  br i1 %112, label %121, label %113

113:                                              ; preds = %65
  %114 = load ptr, ptr %94, align 8, !tbaa !35
  %115 = icmp eq ptr %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %99, align 8, !tbaa !37
  %118 = icmp eq ptr %117, null
  %119 = icmp eq ptr %105, null
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %121, label %179

121:                                              ; preds = %116, %113, %65
  store i32 666, ptr %67, align 8, !tbaa !28
  %122 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !42
  store ptr %122, ptr %18, align 8, !tbaa !8
  %123 = load ptr, ptr %19, align 8, !tbaa !15
  %124 = icmp eq ptr %123, null
  br i1 %124, label %197, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr %26, align 8, !tbaa !17
  %127 = icmp eq ptr %126, null
  br i1 %127, label %197, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr %68, align 8, !tbaa !18
  %130 = icmp eq ptr %129, null
  br i1 %130, label %197, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr %129, align 8, !tbaa !19
  %133 = icmp eq ptr %132, %0
  br i1 %133, label %134, label %197

134:                                              ; preds = %131
  %135 = getelementptr inbounds nuw i8, ptr %129, i64 8
  %136 = load i32, ptr %135, align 8, !tbaa !28
  switch i32 %136, label %197 [
    i32 42, label %137
    i32 57, label %137
    i32 69, label %137
    i32 73, label %137
    i32 91, label %137
    i32 103, label %137
    i32 113, label %137
    i32 666, label %137
  ]

137:                                              ; preds = %134, %134, %134, %134, %134, %134, %134, %134
  %138 = getelementptr inbounds nuw i8, ptr %129, i64 16
  %139 = load ptr, ptr %138, align 8, !tbaa !40
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %126(ptr noundef %142, ptr noundef nonnull %139) #11
  %143 = load ptr, ptr %68, align 8, !tbaa !18
  %144 = load ptr, ptr %26, align 8, !tbaa !17
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi ptr [ %144, %141 ], [ %126, %137 ]
  %147 = phi ptr [ %143, %141 ], [ %129, %137 ]
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 120
  %149 = load ptr, ptr %148, align 8, !tbaa !37
  %150 = icmp eq ptr %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %145
  %152 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %146(ptr noundef %152, ptr noundef nonnull %149) #11
  %153 = load ptr, ptr %68, align 8, !tbaa !18
  %154 = load ptr, ptr %26, align 8, !tbaa !17
  br label %155

155:                                              ; preds = %151, %145
  %156 = phi ptr [ %154, %151 ], [ %146, %145 ]
  %157 = phi ptr [ %153, %151 ], [ %147, %145 ]
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 112
  %159 = load ptr, ptr %158, align 8, !tbaa !35
  %160 = icmp eq ptr %159, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %155
  %162 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %156(ptr noundef %162, ptr noundef nonnull %159) #11
  %163 = load ptr, ptr %68, align 8, !tbaa !18
  %164 = load ptr, ptr %26, align 8, !tbaa !17
  br label %165

165:                                              ; preds = %161, %155
  %166 = phi ptr [ %164, %161 ], [ %156, %155 ]
  %167 = phi ptr [ %163, %161 ], [ %157, %155 ]
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 96
  %169 = load ptr, ptr %168, align 8, !tbaa !34
  %170 = icmp eq ptr %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %165
  %172 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %166(ptr noundef %172, ptr noundef nonnull %169) #11
  %173 = load ptr, ptr %26, align 8, !tbaa !17
  %174 = load ptr, ptr %68, align 8, !tbaa !18
  br label %175

175:                                              ; preds = %171, %165
  %176 = phi ptr [ %174, %171 ], [ %167, %165 ]
  %177 = phi ptr [ %173, %171 ], [ %166, %165 ]
  %178 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %177(ptr noundef %178, ptr noundef %176) #11
  store ptr null, ptr %68, align 8, !tbaa !18
  br label %197

179:                                              ; preds = %116
  %180 = getelementptr inbounds nuw i8, ptr %105, i64 %108
  %181 = getelementptr inbounds nuw i8, ptr %63, i64 5888
  store ptr %180, ptr %181, align 8, !tbaa !43
  %182 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %107, i32 1), !nosanitize !44
  %183 = extractvalue { i32, i1 } %182, 1, !nosanitize !44
  br i1 %183, label %184, label %185, !prof !45, !nosanitize !44

184:                                              ; preds = %179
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

185:                                              ; preds = %179
  %186 = extractvalue { i32, i1 } %182, 0, !nosanitize !44
  %187 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %186, i32 3), !nosanitize !44
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !44
  br i1 %188, label %189, label %190, !prof !45, !nosanitize !44

189:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !44
  unreachable, !nosanitize !44

190:                                              ; preds = %185
  %191 = extractvalue { i32, i1 } %187, 0, !nosanitize !44
  %192 = getelementptr inbounds nuw i8, ptr %63, i64 5904
  store i32 %191, ptr %192, align 8, !tbaa !46
  %193 = getelementptr inbounds nuw i8, ptr %63, i64 196
  store i32 %32, ptr %193, align 4, !tbaa !47
  %194 = getelementptr inbounds nuw i8, ptr %63, i64 200
  store i32 %5, ptr %194, align 8, !tbaa !48
  %195 = getelementptr inbounds nuw i8, ptr %63, i64 72
  store i8 8, ptr %195, align 8, !tbaa !49
  %196 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %197

197:                                              ; preds = %190, %175, %134, %131, %128, %125, %121, %60, %57, %42, %34, %15, %10, %8
  %198 = phi i32 [ %196, %190 ], [ -6, %10 ], [ -6, %8 ], [ -2, %15 ], [ -2, %34 ], [ -2, %57 ], [ -2, %42 ], [ -4, %60 ], [ -4, %121 ], [ -4, %125 ], [ -4, %128 ], [ -4, %131 ], [ -4, %134 ], [ -4, %175 ]
  ret i32 %198
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -3, 1) i32 @deflateEnd(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %70, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %70, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %70, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !19
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %70

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !28
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
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %23 = load ptr, ptr %22, align 8, !tbaa !40
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  tail call void %9(ptr noundef %27, ptr noundef nonnull %23) #11
  %28 = load ptr, ptr %12, align 8, !tbaa !18
  %29 = load ptr, ptr %8, align 8, !tbaa !17
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi ptr [ %29, %25 ], [ %9, %21 ]
  %32 = phi ptr [ %28, %25 ], [ %13, %21 ]
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 120
  %34 = load ptr, ptr %33, align 8, !tbaa !37
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %38 = load ptr, ptr %37, align 8, !tbaa !16
  tail call void %31(ptr noundef %38, ptr noundef nonnull %34) #11
  %39 = load ptr, ptr %12, align 8, !tbaa !18
  %40 = load ptr, ptr %8, align 8, !tbaa !17
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi ptr [ %40, %36 ], [ %31, %30 ]
  %43 = phi ptr [ %39, %36 ], [ %32, %30 ]
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %49 = load ptr, ptr %48, align 8, !tbaa !16
  tail call void %42(ptr noundef %49, ptr noundef nonnull %45) #11
  %50 = load ptr, ptr %12, align 8, !tbaa !18
  %51 = load ptr, ptr %8, align 8, !tbaa !17
  br label %52

52:                                               ; preds = %47, %41
  %53 = phi ptr [ %51, %47 ], [ %42, %41 ]
  %54 = phi ptr [ %50, %47 ], [ %43, %41 ]
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 96
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %60 = load ptr, ptr %59, align 8, !tbaa !16
  tail call void %53(ptr noundef %60, ptr noundef nonnull %56) #11
  %61 = load ptr, ptr %8, align 8, !tbaa !17
  %62 = load ptr, ptr %12, align 8, !tbaa !18
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi ptr [ %62, %58 ], [ %54, %52 ]
  %65 = phi ptr [ %61, %58 ], [ %53, %52 ]
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %67 = load ptr, ptr %66, align 8, !tbaa !16
  tail call void %65(ptr noundef %67, ptr noundef %64) #11
  store ptr null, ptr %12, align 8, !tbaa !18
  %68 = icmp eq i32 %20, 113
  %69 = select i1 %68, i32 -3, i32 0
  br label %70

70:                                               ; preds = %63, %18, %15, %11, %7, %3, %1
  %71 = phi i32 [ %69, %63 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %71
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateReset(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %95, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %95, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %95, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %95, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !19
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %95

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !28
  switch i32 %20, label %95 [
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
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %23, align 8, !tbaa !53
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !54
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %25, align 8, !tbaa !55
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %27, ptr %28, align 8, !tbaa !56
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %30 = load i32, ptr %29, align 8, !tbaa !29
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %30), !nosanitize !44
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !44
  br i1 %34, label %35, label %36, !prof !45, !nosanitize !44

35:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !44
  unreachable, !nosanitize !44

36:                                               ; preds = %32
  %37 = extractvalue { i32, i1 } %33, 0, !nosanitize !44
  store i32 %37, ptr %29, align 8, !tbaa !29
  br label %38

38:                                               ; preds = %36, %21
  %39 = phi i32 [ %37, %36 ], [ %30, %21 ]
  %40 = icmp eq i32 %39, 2
  %41 = select i1 %40, i32 57, i32 42
  store i32 %41, ptr %19, align 8, !tbaa !28
  br i1 %40, label %42, label %44

42:                                               ; preds = %38
  %43 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %46

44:                                               ; preds = %38
  %45 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %47, ptr %48, align 8, !tbaa !57
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !58
  tail call void @_tr_init(ptr noundef nonnull %13) #11
  %50 = load ptr, ptr %12, align 8, !tbaa !18
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 80
  %52 = load i32, ptr %51, align 8, !tbaa !31
  %53 = zext i32 %52 to i64
  %54 = shl nuw nsw i64 %53, 1
  %55 = getelementptr inbounds nuw i8, ptr %50, i64 104
  store i64 %54, ptr %55, align 8, !tbaa !59
  %56 = getelementptr inbounds nuw i8, ptr %50, i64 132
  %57 = load i32, ptr %56, align 4, !tbaa !36
  %58 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 1), !nosanitize !44
  %59 = extractvalue { i32, i1 } %58, 1, !nosanitize !44
  br i1 %59, label %60, label %61, !prof !45, !nosanitize !44

60:                                               ; preds = %46
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

61:                                               ; preds = %46
  %62 = extractvalue { i32, i1 } %58, 0, !nosanitize !44
  %63 = getelementptr inbounds nuw i8, ptr %50, i64 120
  %64 = load ptr, ptr %63, align 8, !tbaa !37
  %65 = zext i32 %62 to i64
  %66 = getelementptr inbounds nuw [2 x i8], ptr %64, i64 %65
  store i16 0, ptr %66, align 2, !tbaa !60
  %67 = shl nuw nsw i64 %65, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %64, i8 0, i64 %67, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %50, i64 5960
  store i32 0, ptr %68, align 8, !tbaa !61
  %69 = getelementptr inbounds nuw i8, ptr %50, i64 196
  %70 = load i32, ptr %69, align 4, !tbaa !47
  %71 = sext i32 %70 to i64
  %.split = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %71
  %72 = getelementptr inbounds nuw i8, ptr %.split, i64 2
  %73 = load i16, ptr %72, align 2, !tbaa !62
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds nuw i8, ptr %50, i64 192
  store i32 %74, ptr %75, align 8, !tbaa !64
  %76 = load i16, ptr %.split, align 16, !tbaa !65
  %77 = zext i16 %76 to i32
  %78 = getelementptr inbounds nuw i8, ptr %50, i64 204
  store i32 %77, ptr %78, align 4, !tbaa !66
  %79 = getelementptr inbounds nuw i8, ptr %.split, i64 4
  %80 = load i16, ptr %79, align 4, !tbaa !67
  %81 = zext i16 %80 to i32
  %82 = getelementptr inbounds nuw i8, ptr %50, i64 208
  store i32 %81, ptr %82, align 8, !tbaa !68
  %83 = getelementptr inbounds nuw i8, ptr %.split, i64 6
  %84 = load i16, ptr %83, align 2, !tbaa !69
  %85 = zext i16 %84 to i32
  %86 = getelementptr inbounds nuw i8, ptr %50, i64 188
  store i32 %85, ptr %86, align 4, !tbaa !70
  %87 = getelementptr inbounds nuw i8, ptr %50, i64 172
  store i32 0, ptr %87, align 4, !tbaa !71
  %88 = getelementptr inbounds nuw i8, ptr %50, i64 152
  store i64 0, ptr %88, align 8, !tbaa !72
  %89 = getelementptr inbounds nuw i8, ptr %50, i64 180
  store i32 0, ptr %89, align 4, !tbaa !73
  %90 = getelementptr inbounds nuw i8, ptr %50, i64 5932
  store i32 0, ptr %90, align 4, !tbaa !74
  %91 = getelementptr inbounds nuw i8, ptr %50, i64 184
  store i32 2, ptr %91, align 8, !tbaa !75
  %92 = getelementptr inbounds nuw i8, ptr %50, i64 160
  store i32 2, ptr %92, align 8, !tbaa !76
  %93 = getelementptr inbounds nuw i8, ptr %50, i64 168
  store i32 0, ptr %93, align 8, !tbaa !77
  %94 = getelementptr inbounds nuw i8, ptr %50, i64 128
  store i32 0, ptr %94, align 8, !tbaa !78
  br label %95

95:                                               ; preds = %61, %18, %15, %11, %7, %3, %1
  %96 = phi i32 [ 0, %61 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetDictionary(ptr noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %729, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %729, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %729, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %729, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %729

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %729 [
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
  br i1 %24, label %729, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !29
  switch i32 %27, label %34 [
    i32 2, label %729
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %729

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !73
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %729

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !73
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %729

38:                                               ; preds = %34
  store i32 0, ptr %26, align 8, !tbaa !29
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %40 = load i32, ptr %39, align 8, !tbaa !31
  %41 = icmp ult i32 %2, %40
  br i1 %41, label %80, label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %44 = load i64, ptr %43, align 8, !tbaa !57
  %45 = tail call i64 @adler32(i64 noundef %44, ptr noundef nonnull %1, i32 noundef %2) #11
  store i64 %45, ptr %43, align 8, !tbaa !57
  store i32 0, ptr %26, align 8, !tbaa !29
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %47 = load i32, ptr %46, align 8, !tbaa !31
  %48 = icmp ult i32 %2, %47
  br i1 %48, label %80, label %69

49:                                               ; preds = %38
  %50 = icmp eq i32 %27, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %53 = load i32, ptr %52, align 4, !tbaa !36
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %53, i32 1), !nosanitize !44
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !44
  br i1 %55, label %56, label %57, !prof !45, !nosanitize !44

56:                                               ; preds = %51
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

57:                                               ; preds = %51
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !44
  %59 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %60 = load ptr, ptr %59, align 8, !tbaa !37
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds nuw [2 x i8], ptr %60, i64 %61
  store i16 0, ptr %62, align 2, !tbaa !60
  %63 = shl nuw nsw i64 %61, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %60, i8 0, i64 %63, i1 false)
  %64 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %64, align 8, !tbaa !61
  %65 = getelementptr inbounds nuw i8, ptr %15, i64 172
  store i32 0, ptr %65, align 4, !tbaa !71
  %66 = getelementptr inbounds nuw i8, ptr %15, i64 152
  store i64 0, ptr %66, align 8, !tbaa !72
  %67 = getelementptr inbounds nuw i8, ptr %15, i64 5932
  store i32 0, ptr %67, align 4, !tbaa !74
  %68 = load i32, ptr %39, align 8, !tbaa !31
  br label %69

69:                                               ; preds = %57, %49, %42
  %70 = phi ptr [ %35, %57 ], [ %35, %49 ], [ %31, %42 ]
  %71 = phi ptr [ %39, %57 ], [ %39, %49 ], [ %46, %42 ]
  %72 = phi i32 [ %68, %57 ], [ %40, %49 ], [ %47, %42 ]
  %73 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 %72), !nosanitize !44
  %74 = extractvalue { i32, i1 } %73, 1, !nosanitize !44
  br i1 %74, label %75, label %76, !prof !45, !nosanitize !44

75:                                               ; preds = %69
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

76:                                               ; preds = %69
  %77 = extractvalue { i32, i1 } %73, 0, !nosanitize !44
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 %78
  br label %80

80:                                               ; preds = %76, %42, %38
  %81 = phi ptr [ %71, %76 ], [ %39, %38 ], [ %46, %42 ]
  %82 = phi ptr [ %70, %76 ], [ %35, %38 ], [ %31, %42 ]
  %83 = phi i32 [ %72, %76 ], [ %40, %38 ], [ %47, %42 ]
  %84 = phi i32 [ %72, %76 ], [ %2, %38 ], [ %2, %42 ]
  %85 = phi ptr [ %79, %76 ], [ %1, %38 ], [ %1, %42 ]
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %87 = load i32, ptr %86, align 8, !tbaa !79
  %88 = load ptr, ptr %0, align 8, !tbaa !80
  store i32 %84, ptr %86, align 8, !tbaa !79
  store ptr %85, ptr %0, align 8, !tbaa !80
  %89 = getelementptr inbounds nuw i8, ptr %15, i64 104
  %90 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %91 = zext i32 %83 to i64
  %92 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %93 = getelementptr inbounds nuw i8, ptr %15, i64 176
  %94 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %95 = getelementptr inbounds nuw i8, ptr %15, i64 5932
  %96 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %97 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %98 = getelementptr inbounds nuw i8, ptr %15, i64 112
  %99 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  %100 = getelementptr inbounds nuw i8, ptr %15, i64 128
  %101 = getelementptr inbounds nuw i8, ptr %15, i64 144
  %102 = getelementptr inbounds nuw i8, ptr %15, i64 140
  %103 = getelementptr inbounds nuw i8, ptr %15, i64 88
  %104 = load i32, ptr %82, align 4, !tbaa !73
  br label %105

105:                                              ; preds = %342, %80
  %106 = phi i32 [ %270, %342 ], [ %104, %80 ]
  %107 = load i64, ptr %89, align 8, !tbaa !59
  %108 = zext i32 %106 to i64
  %109 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 %108), !nosanitize !44
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !44
  br i1 %110, label %111, label %112, !prof !45, !nosanitize !44

111:                                              ; preds = %105
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

112:                                              ; preds = %105
  %113 = extractvalue { i64, i1 } %109, 0, !nosanitize !44
  %114 = load i32, ptr %90, align 4, !tbaa !71
  %115 = zext i32 %114 to i64
  %116 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %113, i64 %115), !nosanitize !44
  %117 = extractvalue { i64, i1 } %116, 1, !nosanitize !44
  br i1 %117, label %118, label %119, !prof !45, !nosanitize !44

118:                                              ; preds = %112
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

119:                                              ; preds = %112
  %120 = extractvalue { i64, i1 } %116, 0, !nosanitize !44
  %121 = trunc i64 %120 to i32
  %122 = load i32, ptr %81, align 8, !tbaa !31
  %123 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %122, i32 262), !nosanitize !44
  %124 = extractvalue { i32, i1 } %123, 1, !nosanitize !44
  br i1 %124, label %125, label %126, !prof !45, !nosanitize !44

125:                                              ; preds = %119
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

126:                                              ; preds = %119
  %127 = extractvalue { i32, i1 } %123, 0, !nosanitize !44
  %128 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %83, i32 %127), !nosanitize !44
  %129 = extractvalue { i32, i1 } %128, 1, !nosanitize !44
  br i1 %129, label %130, label %131, !prof !45, !nosanitize !44

130:                                              ; preds = %126
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

131:                                              ; preds = %126
  %132 = extractvalue { i32, i1 } %128, 0, !nosanitize !44
  %133 = icmp ult i32 %114, %132
  br i1 %133, label %217, label %134

134:                                              ; preds = %131
  %135 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %83, i32 %121), !nosanitize !44
  %136 = extractvalue { i32, i1 } %135, 1, !nosanitize !44
  br i1 %136, label %137, label %138, !prof !45, !nosanitize !44

137:                                              ; preds = %134
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

138:                                              ; preds = %134
  %139 = extractvalue { i32, i1 } %135, 0, !nosanitize !44
  %140 = load ptr, ptr %92, align 8, !tbaa !34
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 %91
  %142 = zext i32 %139 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %140, ptr align 1 %141, i64 %142, i1 false)
  %143 = load i32, ptr %93, align 8, !tbaa !81
  %144 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %143, i32 %83), !nosanitize !44
  %145 = extractvalue { i32, i1 } %144, 1, !nosanitize !44
  br i1 %145, label %146, label %147, !prof !45, !nosanitize !44

146:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

147:                                              ; preds = %138
  %148 = extractvalue { i32, i1 } %144, 0, !nosanitize !44
  store i32 %148, ptr %93, align 8, !tbaa !81
  %149 = load i32, ptr %90, align 4, !tbaa !71
  %150 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %83), !nosanitize !44
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !44
  br i1 %151, label %152, label %153, !prof !45, !nosanitize !44

152:                                              ; preds = %153, %147
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

153:                                              ; preds = %147
  %154 = extractvalue { i32, i1 } %150, 0, !nosanitize !44
  store i32 %154, ptr %90, align 4, !tbaa !71
  %155 = load i64, ptr %94, align 8, !tbaa !72
  %156 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %155, i64 %91), !nosanitize !44
  %157 = extractvalue { i64, i1 } %156, 1, !nosanitize !44
  br i1 %157, label %152, label %158, !prof !45, !nosanitize !44

158:                                              ; preds = %153
  %159 = extractvalue { i64, i1 } %156, 0, !nosanitize !44
  store i64 %159, ptr %94, align 8, !tbaa !72
  %160 = load i32, ptr %95, align 4, !tbaa !74
  %161 = icmp ugt i32 %160, %154
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i32 %154, ptr %95, align 4, !tbaa !74
  br label %163

163:                                              ; preds = %162, %158
  %164 = load i32, ptr %81, align 8, !tbaa !31
  %165 = load i32, ptr %96, align 4, !tbaa !36
  %166 = load ptr, ptr %97, align 8, !tbaa !37
  %167 = zext i32 %165 to i64
  %168 = getelementptr inbounds nuw [2 x i8], ptr %166, i64 %167
  %.not.not = icmp eq i32 %165, 0
  br i1 %.not.not, label %.split.us, label %.split.preheader, !prof !45, !nosanitize !44

.split.preheader:                                 ; preds = %163
  %min.iters.check162 = icmp ult i32 %165, 8
  br i1 %min.iters.check162, label %.split.preheader238, label %vector.ph163

vector.ph163:                                     ; preds = %.split.preheader
  %n.vec165 = and i64 %167, 4294967288
  %169 = mul nsw i64 %n.vec165, -2
  %170 = getelementptr i8, ptr %168, i64 %169
  %.cast166 = trunc nuw i64 %n.vec165 to i32
  %171 = sub i32 %165, %.cast166
  %broadcast.splatinsert167 = insertelement <8 x i32> poison, i32 %164, i64 0
  %172 = shufflevector <8 x i32> %broadcast.splatinsert167, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph163
  %index170 = phi i64 [ 0, %vector.ph163 ], [ %index.next176, %vector.body169 ]
  %offset.idx171 = mul i64 %index170, -2
  %next.gep172 = getelementptr i8, ptr %168, i64 %offset.idx171
  %173 = getelementptr inbounds i8, ptr %next.gep172, i64 -16
  %wide.load173 = load <8 x i16>, ptr %173, align 2, !tbaa !60
  %174 = zext <8 x i16> %wide.load173 to <8 x i32>
  %175 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %174, <8 x i32> %172)
  %reverse175 = trunc nuw <8 x i32> %175 to <8 x i16>
  store <8 x i16> %reverse175, ptr %173, align 2, !tbaa !60
  %index.next176 = add nuw i64 %index170, 8
  %176 = icmp eq i64 %index.next176, %n.vec165
  br i1 %176, label %middle.block177, label %vector.body169, !llvm.loop !82

middle.block177:                                  ; preds = %vector.body169
  %cmp.n178 = icmp eq i64 %n.vec165, %167
  br i1 %cmp.n178, label %.loopexit224, label %.split.preheader238

.split.preheader238:                              ; preds = %.split.preheader, %middle.block177
  %.ph239 = phi ptr [ %168, %.split.preheader ], [ %170, %middle.block177 ]
  %.ph240 = phi i32 [ %165, %.split.preheader ], [ %171, %middle.block177 ]
  br label %.split

.split.us:                                        ; preds = %163
  %177 = getelementptr inbounds i8, ptr %168, i64 -2
  %178 = load i16, ptr %177, align 2, !tbaa !60
  %179 = zext i16 %178 to i32
  %180 = tail call i32 @llvm.usub.sat.i32(i32 %179, i32 %164)
  %181 = trunc nuw i32 %180 to i16
  store i16 %181, ptr %177, align 2, !tbaa !60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split:                                           ; preds = %.split.preheader238, %.split
  %182 = phi ptr [ %184, %.split ], [ %.ph239, %.split.preheader238 ]
  %183 = phi i32 [ %189, %.split ], [ %.ph240, %.split.preheader238 ]
  %184 = getelementptr inbounds i8, ptr %182, i64 -2
  %185 = load i16, ptr %184, align 2, !tbaa !60
  %186 = zext i16 %185 to i32
  %187 = tail call i32 @llvm.usub.sat.i32(i32 %186, i32 %164)
  %188 = trunc nuw i32 %187 to i16
  store i16 %188, ptr %184, align 2, !tbaa !60
  %189 = add i32 %183, -1
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %.loopexit224, label %.split, !llvm.loop !86

.loopexit224:                                     ; preds = %.split, %middle.block177
  %.not.not130 = icmp eq i32 %164, 0
  br i1 %.not.not130, label %.split55.us, label %.split55, !prof !45, !nosanitize !44

.split55.us:                                      ; preds = %.loopexit224
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split55:                                         ; preds = %.loopexit224
  %191 = load ptr, ptr %98, align 8, !tbaa !35
  %192 = zext i32 %164 to i64
  %193 = getelementptr inbounds nuw [2 x i8], ptr %191, i64 %192
  %min.iters.check = icmp ult i32 %164, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.split55
  %n.vec = and i64 %192, 4294967288
  %194 = mul nsw i64 %n.vec, -2
  %195 = getelementptr i8, ptr %193, i64 %194
  %.cast = trunc nuw i64 %n.vec to i32
  %196 = sub i32 %164, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %164, i64 0
  %197 = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %193, i64 %offset.idx
  %198 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.load = load <8 x i16>, ptr %198, align 2, !tbaa !60
  %199 = zext <8 x i16> %wide.load to <8 x i32>
  %200 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %199, <8 x i32> %197)
  %reverse159 = trunc nuw <8 x i32> %200 to <8 x i16>
  store <8 x i16> %reverse159, ptr %198, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %201 = icmp eq i64 %index.next, %n.vec
  br i1 %201, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %192
  br i1 %cmp.n, label %.loopexit223, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split55, %middle.block
  %.ph236 = phi ptr [ %193, %.split55 ], [ %195, %middle.block ]
  %.ph237 = phi i32 [ %164, %.split55 ], [ %196, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %202 = phi ptr [ %204, %scalar.ph ], [ %.ph236, %scalar.ph.preheader ]
  %203 = phi i32 [ %209, %scalar.ph ], [ %.ph237, %scalar.ph.preheader ]
  %204 = getelementptr inbounds i8, ptr %202, i64 -2
  %205 = load i16, ptr %204, align 2, !tbaa !60
  %206 = zext i16 %205 to i32
  %207 = tail call i32 @llvm.usub.sat.i32(i32 %206, i32 %164)
  %208 = trunc nuw i32 %207 to i16
  store i16 %208, ptr %204, align 2, !tbaa !60
  %209 = add i32 %203, -1
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %.loopexit223, label %scalar.ph, !llvm.loop !88

.loopexit223:                                     ; preds = %scalar.ph, %middle.block
  store i32 1, ptr %99, align 8, !tbaa !61
  %211 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %121, i32 %83), !nosanitize !44
  %212 = extractvalue { i32, i1 } %211, 1, !nosanitize !44
  br i1 %212, label %213, label %214, !prof !45, !nosanitize !44

213:                                              ; preds = %.loopexit223
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

214:                                              ; preds = %.loopexit223
  %215 = extractvalue { i32, i1 } %211, 0, !nosanitize !44
  %216 = load i32, ptr %82, align 4, !tbaa !73
  br label %217

217:                                              ; preds = %214, %131
  %218 = phi i32 [ %216, %214 ], [ %106, %131 ]
  %219 = phi i32 [ %154, %214 ], [ %114, %131 ]
  %220 = phi i32 [ %215, %214 ], [ %121, %131 ]
  %221 = load ptr, ptr %15, align 8, !tbaa !19
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 8
  %223 = load i32, ptr %222, align 8, !tbaa !79
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %347, label %225

225:                                              ; preds = %217
  %226 = load ptr, ptr %92, align 8, !tbaa !34
  %227 = zext i32 %219 to i64
  %228 = getelementptr inbounds nuw i8, ptr %226, i64 %227
  %229 = zext i32 %218 to i64
  %230 = getelementptr inbounds nuw i8, ptr %228, i64 %229
  %231 = tail call i32 @llvm.umin.i32(i32 %223, i32 %220)
  %232 = icmp eq i32 %220, 0
  br i1 %232, label %264, label %233

233:                                              ; preds = %225
  %234 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %223, i32 %231), !nosanitize !44
  %235 = extractvalue { i32, i1 } %234, 1, !nosanitize !44
  br i1 %235, label %236, label %237, !prof !45, !nosanitize !44

236:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

237:                                              ; preds = %233
  %238 = extractvalue { i32, i1 } %234, 0, !nosanitize !44
  store i32 %238, ptr %222, align 8, !tbaa !79
  %239 = load ptr, ptr %221, align 8, !tbaa !80
  %240 = zext i32 %231 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %230, ptr align 1 %239, i64 %240, i1 false)
  %241 = getelementptr inbounds nuw i8, ptr %221, i64 56
  %242 = load ptr, ptr %241, align 8, !tbaa !18
  %243 = getelementptr inbounds nuw i8, ptr %242, i64 48
  %244 = load i32, ptr %243, align 8, !tbaa !29
  switch i32 %244, label %253 [
    i32 1, label %245
    i32 2, label %249
  ]

245:                                              ; preds = %237
  %246 = getelementptr inbounds nuw i8, ptr %221, i64 96
  %247 = load i64, ptr %246, align 8, !tbaa !57
  %248 = tail call i64 @adler32(i64 noundef %247, ptr noundef %230, i32 noundef %231) #11
  store i64 %248, ptr %246, align 8, !tbaa !57
  br label %253

249:                                              ; preds = %237
  %250 = getelementptr inbounds nuw i8, ptr %221, i64 96
  %251 = load i64, ptr %250, align 8, !tbaa !57
  %252 = tail call i64 @crc32(i64 noundef %251, ptr noundef %230, i32 noundef %231) #11
  store i64 %252, ptr %250, align 8, !tbaa !57
  br label %253

253:                                              ; preds = %249, %245, %237
  %254 = load ptr, ptr %221, align 8, !tbaa !80
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 %240
  store ptr %255, ptr %221, align 8, !tbaa !80
  %256 = getelementptr inbounds nuw i8, ptr %221, i64 16
  %257 = load i64, ptr %256, align 8, !tbaa !53
  %258 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %257, i64 %240), !nosanitize !44
  %259 = extractvalue { i64, i1 } %258, 1, !nosanitize !44
  br i1 %259, label %260, label %261, !prof !45, !nosanitize !44

260:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

261:                                              ; preds = %253
  %262 = extractvalue { i64, i1 } %258, 0, !nosanitize !44
  store i64 %262, ptr %256, align 8, !tbaa !53
  %263 = load i32, ptr %82, align 4, !tbaa !73
  br label %264

264:                                              ; preds = %261, %225
  %265 = phi i32 [ %218, %225 ], [ %263, %261 ]
  %266 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %265, i32 %231), !nosanitize !44
  %267 = extractvalue { i32, i1 } %266, 1, !nosanitize !44
  br i1 %267, label %268, label %269, !prof !45, !nosanitize !44

268:                                              ; preds = %264
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

269:                                              ; preds = %264
  %270 = extractvalue { i32, i1 } %266, 0, !nosanitize !44
  store i32 %270, ptr %82, align 4, !tbaa !73
  %271 = load i32, ptr %95, align 4, !tbaa !74
  %272 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %270, i32 %271), !nosanitize !44
  %273 = extractvalue { i32, i1 } %272, 1, !nosanitize !44
  br i1 %273, label %274, label %275, !prof !45, !nosanitize !44

274:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

275:                                              ; preds = %269
  %276 = extractvalue { i32, i1 } %272, 0, !nosanitize !44
  %277 = icmp ugt i32 %276, 2
  br i1 %277, label %278, label %.loopexit40

278:                                              ; preds = %275
  %279 = load i32, ptr %90, align 4, !tbaa !71
  %280 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %279, i32 %271), !nosanitize !44
  %281 = extractvalue { i32, i1 } %280, 0, !nosanitize !44
  %282 = extractvalue { i32, i1 } %280, 1, !nosanitize !44
  br i1 %282, label %283, label %284, !prof !45, !nosanitize !44

283:                                              ; preds = %278
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

284:                                              ; preds = %278
  %285 = load ptr, ptr %92, align 8, !tbaa !34
  %286 = zext i32 %281 to i64
  %287 = getelementptr inbounds nuw i8, ptr %285, i64 %286
  %288 = load i8, ptr %287, align 1, !tbaa !5
  %289 = zext i8 %288 to i32
  store i32 %289, ptr %100, align 8, !tbaa !78
  %290 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %281, i32 1), !nosanitize !44
  %291 = extractvalue { i32, i1 } %290, 1, !nosanitize !44
  br i1 %291, label %292, label %293, !prof !45, !nosanitize !44

292:                                              ; preds = %284
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

293:                                              ; preds = %284
  %294 = extractvalue { i32, i1 } %290, 0, !nosanitize !44
  %295 = load i32, ptr %101, align 8, !tbaa !52
  %296 = shl i32 %289, %295
  %297 = zext i32 %294 to i64
  %298 = getelementptr inbounds nuw i8, ptr %285, i64 %297
  %299 = load i8, ptr %298, align 1, !tbaa !5
  %300 = zext i8 %299 to i32
  %301 = xor i32 %296, %300
  %302 = load i32, ptr %102, align 4, !tbaa !51
  %303 = and i32 %301, %302
  store i32 %303, ptr %100, align 8, !tbaa !78
  br label %304

304:                                              ; preds = %337, %293
  %305 = phi i32 [ %303, %293 ], [ %322, %337 ]
  %306 = phi i32 [ %271, %293 ], [ %333, %337 ]
  %307 = phi i32 [ %281, %293 ], [ %338, %337 ]
  %308 = icmp eq i32 %306, 0
  br i1 %308, label %.loopexit40, label %309

309:                                              ; preds = %304
  %310 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %307, i32 3), !nosanitize !44
  %311 = extractvalue { i32, i1 } %310, 1, !nosanitize !44
  br i1 %311, label %312, label %313, !prof !45, !nosanitize !44

312:                                              ; preds = %309
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

313:                                              ; preds = %309
  %314 = shl i32 %305, %295
  %315 = extractvalue { i32, i1 } %310, 0, !nosanitize !44
  %316 = add i32 %315, -1
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds nuw i8, ptr %285, i64 %317
  %319 = load i8, ptr %318, align 1, !tbaa !5
  %320 = zext i8 %319 to i32
  %321 = xor i32 %314, %320
  %322 = and i32 %321, %302
  store i32 %322, ptr %100, align 8, !tbaa !78
  %323 = load ptr, ptr %97, align 8, !tbaa !37
  %324 = zext i32 %322 to i64
  %325 = getelementptr inbounds nuw [2 x i8], ptr %323, i64 %324
  %326 = load i16, ptr %325, align 2, !tbaa !60
  %327 = load ptr, ptr %98, align 8, !tbaa !35
  %328 = load i32, ptr %103, align 8, !tbaa !32
  %329 = and i32 %328, %307
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds nuw [2 x i8], ptr %327, i64 %330
  store i16 %326, ptr %331, align 2, !tbaa !60
  %332 = trunc i32 %307 to i16
  store i16 %332, ptr %325, align 2, !tbaa !60
  %333 = add i32 %306, -1
  store i32 %333, ptr %95, align 4, !tbaa !74
  %334 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %270, i32 %333), !nosanitize !44
  %335 = extractvalue { i32, i1 } %334, 1, !nosanitize !44
  br i1 %335, label %336, label %337, !prof !45, !nosanitize !44

336:                                              ; preds = %313
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

337:                                              ; preds = %313
  %338 = add nuw i32 %307, 1
  %339 = extractvalue { i32, i1 } %334, 0, !nosanitize !44
  %340 = icmp ult i32 %339, 3
  br i1 %340, label %.loopexit40, label %304, !llvm.loop !89

.loopexit40:                                      ; preds = %337, %304, %275
  %341 = icmp ult i32 %270, 262
  br i1 %341, label %342, label %347

342:                                              ; preds = %.loopexit40
  %343 = load ptr, ptr %15, align 8, !tbaa !19
  %344 = getelementptr inbounds nuw i8, ptr %343, i64 8
  %345 = load i32, ptr %344, align 8, !tbaa !79
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %105, !llvm.loop !90

347:                                              ; preds = %342, %.loopexit40, %217
  %348 = phi i32 [ %270, %342 ], [ %270, %.loopexit40 ], [ %218, %217 ]
  %349 = getelementptr inbounds nuw i8, ptr %15, i64 5952
  %350 = load i64, ptr %349, align 8, !tbaa !38
  %351 = load i64, ptr %89, align 8, !tbaa !59
  %352 = icmp ult i64 %350, %351
  br i1 %352, label %353, label %392

353:                                              ; preds = %347
  %354 = load i32, ptr %90, align 4, !tbaa !71
  %355 = zext i32 %354 to i64
  %356 = zext i32 %348 to i64
  %357 = add nuw nsw i64 %355, %356
  %358 = icmp ult i64 %350, %357
  br i1 %358, label %359, label %369

359:                                              ; preds = %353
  %360 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %351, i64 %357), !nosanitize !44
  %361 = extractvalue { i64, i1 } %360, 1, !nosanitize !44
  br i1 %361, label %362, label %363, !prof !45, !nosanitize !44

362:                                              ; preds = %359
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

363:                                              ; preds = %359
  %364 = extractvalue { i64, i1 } %360, 0, !nosanitize !44
  %365 = tail call i64 @llvm.umin.i64(i64 %364, i64 258)
  %366 = load ptr, ptr %92, align 8, !tbaa !34
  %367 = getelementptr inbounds nuw i8, ptr %366, i64 %357
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %367, i8 0, i64 %365, i1 false)
  %368 = add nuw nsw i64 %365, %357
  br label %389

369:                                              ; preds = %353
  %370 = add nuw nsw i64 %357, 258
  %371 = icmp ult i64 %350, %370
  br i1 %371, label %372, label %392

372:                                              ; preds = %369
  %373 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %351, i64 %350), !nosanitize !44
  %374 = extractvalue { i64, i1 } %373, 1, !nosanitize !44
  br i1 %374, label %375, label %376, !prof !45, !nosanitize !44

375:                                              ; preds = %372
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

376:                                              ; preds = %372
  %377 = sub nuw nsw i64 %370, %350
  %378 = extractvalue { i64, i1 } %373, 0, !nosanitize !44
  %379 = tail call i64 @llvm.umin.i64(i64 %377, i64 %378)
  %380 = load ptr, ptr %92, align 8, !tbaa !34
  %381 = getelementptr inbounds nuw i8, ptr %380, i64 %350
  %382 = and i64 %379, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %381, i8 0, i64 %382, i1 false)
  %383 = load i64, ptr %349, align 8, !tbaa !38
  %384 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %383, i64 %379), !nosanitize !44
  %385 = extractvalue { i64, i1 } %384, 1, !nosanitize !44
  br i1 %385, label %386, label %387, !prof !45, !nosanitize !44

386:                                              ; preds = %376
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

387:                                              ; preds = %376
  %388 = extractvalue { i64, i1 } %384, 0, !nosanitize !44
  br label %389

389:                                              ; preds = %387, %363
  %390 = phi i64 [ %368, %363 ], [ %388, %387 ]
  store i64 %390, ptr %349, align 8, !tbaa !38
  %391 = load i32, ptr %82, align 4, !tbaa !73
  br label %392

392:                                              ; preds = %389, %369, %347
  %393 = phi i32 [ %348, %347 ], [ %348, %369 ], [ %391, %389 ]
  %394 = icmp ugt i32 %393, 2
  br i1 %394, label %.preheader, label %.loopexit39

.preheader:                                       ; preds = %392, %715
  %395 = phi i32 [ %716, %715 ], [ %393, %392 ]
  %396 = load i32, ptr %90, align 4, !tbaa !71
  %397 = load i32, ptr %101, align 8, !tbaa !52
  %398 = load ptr, ptr %92, align 8, !tbaa !34
  %399 = tail call i32 @llvm.usub.sat.i32(i32 -3, i32 %396)
  %400 = add i32 %395, -3
  %.not = icmp ugt i32 %399, %400
  br i1 %.not, label %.preheader.split, label %425, !prof !91, !nosanitize !44

.preheader.split:                                 ; preds = %.preheader
  %401 = load i32, ptr %100, align 8, !tbaa !78
  %402 = add i32 %395, -2
  %.pre = load i32, ptr %102, align 4, !tbaa !51
  %.pre86 = load ptr, ptr %97, align 8, !tbaa !37
  %.pre87 = load ptr, ptr %98, align 8, !tbaa !35
  %.pre88 = load i32, ptr %103, align 8, !tbaa !32
  br label %403

403:                                              ; preds = %403, %.preheader.split
  %404 = phi i32 [ %401, %.preheader.split ], [ %414, %403 ]
  %405 = phi i32 [ %396, %.preheader.split ], [ %422, %403 ]
  %406 = phi i32 [ %402, %.preheader.split ], [ %423, %403 ]
  %407 = shl i32 %404, %397
  %408 = add i32 %405, 2
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds nuw i8, ptr %398, i64 %409
  %411 = load i8, ptr %410, align 1, !tbaa !5
  %412 = zext i8 %411 to i32
  %413 = xor i32 %407, %412
  %414 = and i32 %413, %.pre
  store i32 %414, ptr %100, align 8, !tbaa !78
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds nuw [2 x i8], ptr %.pre86, i64 %415
  %417 = load i16, ptr %416, align 2, !tbaa !60
  %418 = and i32 %.pre88, %405
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds nuw [2 x i8], ptr %.pre87, i64 %419
  store i16 %417, ptr %420, align 2, !tbaa !60
  %421 = trunc i32 %405 to i16
  store i16 %421, ptr %416, align 2, !tbaa !60
  %422 = add nuw i32 %405, 1
  %423 = add i32 %406, -1
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %426, label %403, !llvm.loop !92

425:                                              ; preds = %.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

426:                                              ; preds = %403
  store i32 %422, ptr %90, align 4, !tbaa !71
  store i32 2, ptr %82, align 4, !tbaa !73
  %427 = load i32, ptr %81, align 8, !tbaa !31
  %428 = zext i32 %427 to i64
  br label %429

429:                                              ; preds = %666, %426
  %430 = phi i32 [ %594, %666 ], [ 2, %426 ]
  %431 = load i64, ptr %89, align 8, !tbaa !59
  %432 = zext nneg i32 %430 to i64
  %433 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %431, i64 %432), !nosanitize !44
  %434 = extractvalue { i64, i1 } %433, 1, !nosanitize !44
  br i1 %434, label %435, label %436, !prof !45, !nosanitize !44

435:                                              ; preds = %429
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

436:                                              ; preds = %429
  %437 = extractvalue { i64, i1 } %433, 0, !nosanitize !44
  %438 = load i32, ptr %90, align 4, !tbaa !71
  %439 = zext i32 %438 to i64
  %440 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %437, i64 %439), !nosanitize !44
  %441 = extractvalue { i64, i1 } %440, 1, !nosanitize !44
  br i1 %441, label %442, label %443, !prof !45, !nosanitize !44

442:                                              ; preds = %436
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

443:                                              ; preds = %436
  %444 = extractvalue { i64, i1 } %440, 0, !nosanitize !44
  %445 = trunc i64 %444 to i32
  %446 = load i32, ptr %81, align 8, !tbaa !31
  %447 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %446, i32 262), !nosanitize !44
  %448 = extractvalue { i32, i1 } %447, 1, !nosanitize !44
  br i1 %448, label %449, label %450, !prof !45, !nosanitize !44

449:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

450:                                              ; preds = %443
  %451 = extractvalue { i32, i1 } %447, 0, !nosanitize !44
  %452 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %427, i32 %451), !nosanitize !44
  %453 = extractvalue { i32, i1 } %452, 1, !nosanitize !44
  br i1 %453, label %454, label %455, !prof !45, !nosanitize !44

454:                                              ; preds = %450
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

455:                                              ; preds = %450
  %456 = extractvalue { i32, i1 } %452, 0, !nosanitize !44
  %457 = icmp ult i32 %438, %456
  br i1 %457, label %541, label %458

458:                                              ; preds = %455
  %459 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %427, i32 %445), !nosanitize !44
  %460 = extractvalue { i32, i1 } %459, 1, !nosanitize !44
  br i1 %460, label %461, label %462, !prof !45, !nosanitize !44

461:                                              ; preds = %458
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

462:                                              ; preds = %458
  %463 = extractvalue { i32, i1 } %459, 0, !nosanitize !44
  %464 = load ptr, ptr %92, align 8, !tbaa !34
  %465 = getelementptr inbounds nuw i8, ptr %464, i64 %428
  %466 = zext i32 %463 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %464, ptr align 1 %465, i64 %466, i1 false)
  %467 = load i32, ptr %93, align 8, !tbaa !81
  %468 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %467, i32 %427), !nosanitize !44
  %469 = extractvalue { i32, i1 } %468, 1, !nosanitize !44
  br i1 %469, label %470, label %471, !prof !45, !nosanitize !44

470:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

471:                                              ; preds = %462
  %472 = extractvalue { i32, i1 } %468, 0, !nosanitize !44
  store i32 %472, ptr %93, align 8, !tbaa !81
  %473 = load i32, ptr %90, align 4, !tbaa !71
  %474 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %473, i32 %427), !nosanitize !44
  %475 = extractvalue { i32, i1 } %474, 1, !nosanitize !44
  br i1 %475, label %476, label %477, !prof !45, !nosanitize !44

476:                                              ; preds = %477, %471
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

477:                                              ; preds = %471
  %478 = extractvalue { i32, i1 } %474, 0, !nosanitize !44
  store i32 %478, ptr %90, align 4, !tbaa !71
  %479 = load i64, ptr %94, align 8, !tbaa !72
  %480 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %479, i64 %428), !nosanitize !44
  %481 = extractvalue { i64, i1 } %480, 1, !nosanitize !44
  br i1 %481, label %476, label %482, !prof !45, !nosanitize !44

482:                                              ; preds = %477
  %483 = extractvalue { i64, i1 } %480, 0, !nosanitize !44
  store i64 %483, ptr %94, align 8, !tbaa !72
  %484 = load i32, ptr %95, align 4, !tbaa !74
  %485 = icmp ugt i32 %484, %478
  br i1 %485, label %486, label %487

486:                                              ; preds = %482
  store i32 %478, ptr %95, align 4, !tbaa !74
  br label %487

487:                                              ; preds = %486, %482
  %488 = load i32, ptr %81, align 8, !tbaa !31
  %489 = load i32, ptr %96, align 4, !tbaa !36
  %490 = load ptr, ptr %97, align 8, !tbaa !37
  %491 = zext i32 %489 to i64
  %492 = getelementptr inbounds nuw [2 x i8], ptr %490, i64 %491
  %.not131.not = icmp eq i32 %489, 0
  br i1 %.not131.not, label %.split65.us, label %.split65.preheader, !prof !45, !nosanitize !44

.split65.preheader:                               ; preds = %487
  %min.iters.check202 = icmp ult i32 %489, 8
  br i1 %min.iters.check202, label %.split65.preheader226, label %vector.ph203

vector.ph203:                                     ; preds = %.split65.preheader
  %n.vec205 = and i64 %491, 4294967288
  %493 = mul nsw i64 %n.vec205, -2
  %494 = getelementptr i8, ptr %492, i64 %493
  %.cast206 = trunc nuw i64 %n.vec205 to i32
  %495 = sub i32 %489, %.cast206
  %broadcast.splatinsert207 = insertelement <8 x i32> poison, i32 %488, i64 0
  %496 = shufflevector <8 x i32> %broadcast.splatinsert207, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph203
  %index210 = phi i64 [ 0, %vector.ph203 ], [ %index.next216, %vector.body209 ]
  %offset.idx211 = mul i64 %index210, -2
  %next.gep212 = getelementptr i8, ptr %492, i64 %offset.idx211
  %497 = getelementptr inbounds i8, ptr %next.gep212, i64 -16
  %wide.load213 = load <8 x i16>, ptr %497, align 2, !tbaa !60
  %498 = zext <8 x i16> %wide.load213 to <8 x i32>
  %499 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %498, <8 x i32> %496)
  %reverse215 = trunc nuw <8 x i32> %499 to <8 x i16>
  store <8 x i16> %reverse215, ptr %497, align 2, !tbaa !60
  %index.next216 = add nuw i64 %index210, 8
  %500 = icmp eq i64 %index.next216, %n.vec205
  br i1 %500, label %middle.block217, label %vector.body209, !llvm.loop !93

middle.block217:                                  ; preds = %vector.body209
  %cmp.n218 = icmp eq i64 %n.vec205, %491
  br i1 %cmp.n218, label %.loopexit222, label %.split65.preheader226

.split65.preheader226:                            ; preds = %.split65.preheader, %middle.block217
  %.ph227 = phi ptr [ %492, %.split65.preheader ], [ %494, %middle.block217 ]
  %.ph228 = phi i32 [ %489, %.split65.preheader ], [ %495, %middle.block217 ]
  br label %.split65

.split65.us:                                      ; preds = %487
  %501 = getelementptr inbounds i8, ptr %492, i64 -2
  %502 = load i16, ptr %501, align 2, !tbaa !60
  %503 = zext i16 %502 to i32
  %504 = tail call i32 @llvm.usub.sat.i32(i32 %503, i32 %488)
  %505 = trunc nuw i32 %504 to i16
  store i16 %505, ptr %501, align 2, !tbaa !60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split65:                                         ; preds = %.split65.preheader226, %.split65
  %506 = phi ptr [ %508, %.split65 ], [ %.ph227, %.split65.preheader226 ]
  %507 = phi i32 [ %513, %.split65 ], [ %.ph228, %.split65.preheader226 ]
  %508 = getelementptr inbounds i8, ptr %506, i64 -2
  %509 = load i16, ptr %508, align 2, !tbaa !60
  %510 = zext i16 %509 to i32
  %511 = tail call i32 @llvm.usub.sat.i32(i32 %510, i32 %488)
  %512 = trunc nuw i32 %511 to i16
  store i16 %512, ptr %508, align 2, !tbaa !60
  %513 = add i32 %507, -1
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %.loopexit222, label %.split65, !llvm.loop !94

.loopexit222:                                     ; preds = %.split65, %middle.block217
  %.not132.not = icmp eq i32 %488, 0
  br i1 %.not132.not, label %.split78.us, label %.split78, !prof !45, !nosanitize !44

.split78.us:                                      ; preds = %.loopexit222
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split78:                                         ; preds = %.loopexit222
  %515 = load ptr, ptr %98, align 8, !tbaa !35
  %516 = zext i32 %488 to i64
  %517 = getelementptr inbounds nuw [2 x i8], ptr %515, i64 %516
  %min.iters.check182 = icmp ult i32 %488, 8
  br i1 %min.iters.check182, label %scalar.ph181.preheader, label %vector.ph183

vector.ph183:                                     ; preds = %.split78
  %n.vec185 = and i64 %516, 4294967288
  %518 = mul nsw i64 %n.vec185, -2
  %519 = getelementptr i8, ptr %517, i64 %518
  %.cast186 = trunc nuw i64 %n.vec185 to i32
  %520 = sub i32 %488, %.cast186
  %broadcast.splatinsert187 = insertelement <8 x i32> poison, i32 %488, i64 0
  %521 = shufflevector <8 x i32> %broadcast.splatinsert187, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph183
  %index190 = phi i64 [ 0, %vector.ph183 ], [ %index.next196, %vector.body189 ]
  %offset.idx191 = mul i64 %index190, -2
  %next.gep192 = getelementptr i8, ptr %517, i64 %offset.idx191
  %522 = getelementptr inbounds i8, ptr %next.gep192, i64 -16
  %wide.load193 = load <8 x i16>, ptr %522, align 2, !tbaa !60
  %523 = zext <8 x i16> %wide.load193 to <8 x i32>
  %524 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %523, <8 x i32> %521)
  %reverse195 = trunc nuw <8 x i32> %524 to <8 x i16>
  store <8 x i16> %reverse195, ptr %522, align 2, !tbaa !60
  %index.next196 = add nuw i64 %index190, 8
  %525 = icmp eq i64 %index.next196, %n.vec185
  br i1 %525, label %middle.block197, label %vector.body189, !llvm.loop !95

middle.block197:                                  ; preds = %vector.body189
  %cmp.n198 = icmp eq i64 %n.vec185, %516
  br i1 %cmp.n198, label %.loopexit221, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %.split78, %middle.block197
  %.ph = phi ptr [ %517, %.split78 ], [ %519, %middle.block197 ]
  %.ph225 = phi i32 [ %488, %.split78 ], [ %520, %middle.block197 ]
  br label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.preheader, %scalar.ph181
  %526 = phi ptr [ %528, %scalar.ph181 ], [ %.ph, %scalar.ph181.preheader ]
  %527 = phi i32 [ %533, %scalar.ph181 ], [ %.ph225, %scalar.ph181.preheader ]
  %528 = getelementptr inbounds i8, ptr %526, i64 -2
  %529 = load i16, ptr %528, align 2, !tbaa !60
  %530 = zext i16 %529 to i32
  %531 = tail call i32 @llvm.usub.sat.i32(i32 %530, i32 %488)
  %532 = trunc nuw i32 %531 to i16
  store i16 %532, ptr %528, align 2, !tbaa !60
  %533 = add i32 %527, -1
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %.loopexit221, label %scalar.ph181, !llvm.loop !96

.loopexit221:                                     ; preds = %scalar.ph181, %middle.block197
  store i32 1, ptr %99, align 8, !tbaa !61
  %535 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %445, i32 %427), !nosanitize !44
  %536 = extractvalue { i32, i1 } %535, 1, !nosanitize !44
  br i1 %536, label %537, label %538, !prof !45, !nosanitize !44

537:                                              ; preds = %.loopexit221
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

538:                                              ; preds = %.loopexit221
  %539 = extractvalue { i32, i1 } %535, 0, !nosanitize !44
  %540 = load i32, ptr %82, align 4, !tbaa !73
  br label %541

541:                                              ; preds = %538, %455
  %542 = phi i32 [ %540, %538 ], [ %430, %455 ]
  %543 = phi i32 [ %478, %538 ], [ %438, %455 ]
  %544 = phi i32 [ %539, %538 ], [ %445, %455 ]
  %545 = load ptr, ptr %15, align 8, !tbaa !19
  %546 = getelementptr inbounds nuw i8, ptr %545, i64 8
  %547 = load i32, ptr %546, align 8, !tbaa !79
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %671, label %549

549:                                              ; preds = %541
  %550 = load ptr, ptr %92, align 8, !tbaa !34
  %551 = zext i32 %543 to i64
  %552 = getelementptr inbounds nuw i8, ptr %550, i64 %551
  %553 = zext i32 %542 to i64
  %554 = getelementptr inbounds nuw i8, ptr %552, i64 %553
  %555 = tail call i32 @llvm.umin.i32(i32 %547, i32 %544)
  %556 = icmp eq i32 %544, 0
  br i1 %556, label %588, label %557

557:                                              ; preds = %549
  %558 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %547, i32 %555), !nosanitize !44
  %559 = extractvalue { i32, i1 } %558, 1, !nosanitize !44
  br i1 %559, label %560, label %561, !prof !45, !nosanitize !44

560:                                              ; preds = %557
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

561:                                              ; preds = %557
  %562 = extractvalue { i32, i1 } %558, 0, !nosanitize !44
  store i32 %562, ptr %546, align 8, !tbaa !79
  %563 = load ptr, ptr %545, align 8, !tbaa !80
  %564 = zext i32 %555 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %554, ptr align 1 %563, i64 %564, i1 false)
  %565 = getelementptr inbounds nuw i8, ptr %545, i64 56
  %566 = load ptr, ptr %565, align 8, !tbaa !18
  %567 = getelementptr inbounds nuw i8, ptr %566, i64 48
  %568 = load i32, ptr %567, align 8, !tbaa !29
  switch i32 %568, label %577 [
    i32 1, label %569
    i32 2, label %573
  ]

569:                                              ; preds = %561
  %570 = getelementptr inbounds nuw i8, ptr %545, i64 96
  %571 = load i64, ptr %570, align 8, !tbaa !57
  %572 = tail call i64 @adler32(i64 noundef %571, ptr noundef %554, i32 noundef %555) #11
  store i64 %572, ptr %570, align 8, !tbaa !57
  br label %577

573:                                              ; preds = %561
  %574 = getelementptr inbounds nuw i8, ptr %545, i64 96
  %575 = load i64, ptr %574, align 8, !tbaa !57
  %576 = tail call i64 @crc32(i64 noundef %575, ptr noundef %554, i32 noundef %555) #11
  store i64 %576, ptr %574, align 8, !tbaa !57
  br label %577

577:                                              ; preds = %573, %569, %561
  %578 = load ptr, ptr %545, align 8, !tbaa !80
  %579 = getelementptr inbounds nuw i8, ptr %578, i64 %564
  store ptr %579, ptr %545, align 8, !tbaa !80
  %580 = getelementptr inbounds nuw i8, ptr %545, i64 16
  %581 = load i64, ptr %580, align 8, !tbaa !53
  %582 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %581, i64 %564), !nosanitize !44
  %583 = extractvalue { i64, i1 } %582, 1, !nosanitize !44
  br i1 %583, label %584, label %585, !prof !45, !nosanitize !44

584:                                              ; preds = %577
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

585:                                              ; preds = %577
  %586 = extractvalue { i64, i1 } %582, 0, !nosanitize !44
  store i64 %586, ptr %580, align 8, !tbaa !53
  %587 = load i32, ptr %82, align 4, !tbaa !73
  br label %588

588:                                              ; preds = %585, %549
  %589 = phi i32 [ %542, %549 ], [ %587, %585 ]
  %590 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %589, i32 %555), !nosanitize !44
  %591 = extractvalue { i32, i1 } %590, 1, !nosanitize !44
  br i1 %591, label %592, label %593, !prof !45, !nosanitize !44

592:                                              ; preds = %588
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

593:                                              ; preds = %588
  %594 = extractvalue { i32, i1 } %590, 0, !nosanitize !44
  store i32 %594, ptr %82, align 4, !tbaa !73
  %595 = load i32, ptr %95, align 4, !tbaa !74
  %596 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %594, i32 %595), !nosanitize !44
  %597 = extractvalue { i32, i1 } %596, 1, !nosanitize !44
  br i1 %597, label %598, label %599, !prof !45, !nosanitize !44

598:                                              ; preds = %593
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

599:                                              ; preds = %593
  %600 = extractvalue { i32, i1 } %596, 0, !nosanitize !44
  %601 = icmp ugt i32 %600, 2
  br i1 %601, label %602, label %.loopexit

602:                                              ; preds = %599
  %603 = load i32, ptr %90, align 4, !tbaa !71
  %604 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %603, i32 %595), !nosanitize !44
  %605 = extractvalue { i32, i1 } %604, 0, !nosanitize !44
  %606 = extractvalue { i32, i1 } %604, 1, !nosanitize !44
  br i1 %606, label %607, label %608, !prof !45, !nosanitize !44

607:                                              ; preds = %602
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

608:                                              ; preds = %602
  %609 = load ptr, ptr %92, align 8, !tbaa !34
  %610 = zext i32 %605 to i64
  %611 = getelementptr inbounds nuw i8, ptr %609, i64 %610
  %612 = load i8, ptr %611, align 1, !tbaa !5
  %613 = zext i8 %612 to i32
  store i32 %613, ptr %100, align 8, !tbaa !78
  %614 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %605, i32 1), !nosanitize !44
  %615 = extractvalue { i32, i1 } %614, 1, !nosanitize !44
  br i1 %615, label %616, label %617, !prof !45, !nosanitize !44

616:                                              ; preds = %608
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

617:                                              ; preds = %608
  %618 = extractvalue { i32, i1 } %614, 0, !nosanitize !44
  %619 = load i32, ptr %101, align 8, !tbaa !52
  %620 = shl i32 %613, %619
  %621 = zext i32 %618 to i64
  %622 = getelementptr inbounds nuw i8, ptr %609, i64 %621
  %623 = load i8, ptr %622, align 1, !tbaa !5
  %624 = zext i8 %623 to i32
  %625 = xor i32 %620, %624
  %626 = load i32, ptr %102, align 4, !tbaa !51
  %627 = and i32 %625, %626
  store i32 %627, ptr %100, align 8, !tbaa !78
  br label %628

628:                                              ; preds = %661, %617
  %629 = phi i32 [ %627, %617 ], [ %646, %661 ]
  %630 = phi i32 [ %595, %617 ], [ %657, %661 ]
  %631 = phi i32 [ %605, %617 ], [ %662, %661 ]
  %632 = icmp eq i32 %630, 0
  br i1 %632, label %.loopexit, label %633

633:                                              ; preds = %628
  %634 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %631, i32 3), !nosanitize !44
  %635 = extractvalue { i32, i1 } %634, 1, !nosanitize !44
  br i1 %635, label %636, label %637, !prof !45, !nosanitize !44

636:                                              ; preds = %633
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

637:                                              ; preds = %633
  %638 = shl i32 %629, %619
  %639 = extractvalue { i32, i1 } %634, 0, !nosanitize !44
  %640 = add i32 %639, -1
  %641 = zext i32 %640 to i64
  %642 = getelementptr inbounds nuw i8, ptr %609, i64 %641
  %643 = load i8, ptr %642, align 1, !tbaa !5
  %644 = zext i8 %643 to i32
  %645 = xor i32 %638, %644
  %646 = and i32 %645, %626
  store i32 %646, ptr %100, align 8, !tbaa !78
  %647 = load ptr, ptr %97, align 8, !tbaa !37
  %648 = zext i32 %646 to i64
  %649 = getelementptr inbounds nuw [2 x i8], ptr %647, i64 %648
  %650 = load i16, ptr %649, align 2, !tbaa !60
  %651 = load ptr, ptr %98, align 8, !tbaa !35
  %652 = load i32, ptr %103, align 8, !tbaa !32
  %653 = and i32 %652, %631
  %654 = zext i32 %653 to i64
  %655 = getelementptr inbounds nuw [2 x i8], ptr %651, i64 %654
  store i16 %650, ptr %655, align 2, !tbaa !60
  %656 = trunc i32 %631 to i16
  store i16 %656, ptr %649, align 2, !tbaa !60
  %657 = add i32 %630, -1
  store i32 %657, ptr %95, align 4, !tbaa !74
  %658 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %594, i32 %657), !nosanitize !44
  %659 = extractvalue { i32, i1 } %658, 1, !nosanitize !44
  br i1 %659, label %660, label %661, !prof !45, !nosanitize !44

660:                                              ; preds = %637
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

661:                                              ; preds = %637
  %662 = add nuw i32 %631, 1
  %663 = extractvalue { i32, i1 } %658, 0, !nosanitize !44
  %664 = icmp ult i32 %663, 3
  br i1 %664, label %.loopexit, label %628, !llvm.loop !89

.loopexit:                                        ; preds = %661, %628, %599
  %665 = icmp ult i32 %594, 262
  br i1 %665, label %666, label %671

666:                                              ; preds = %.loopexit
  %667 = load ptr, ptr %15, align 8, !tbaa !19
  %668 = getelementptr inbounds nuw i8, ptr %667, i64 8
  %669 = load i32, ptr %668, align 8, !tbaa !79
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %671, label %429, !llvm.loop !90

671:                                              ; preds = %666, %.loopexit, %541
  %672 = phi i32 [ %594, %666 ], [ %594, %.loopexit ], [ %542, %541 ]
  %673 = load i64, ptr %349, align 8, !tbaa !38
  %674 = load i64, ptr %89, align 8, !tbaa !59
  %675 = icmp ult i64 %673, %674
  br i1 %675, label %676, label %715

676:                                              ; preds = %671
  %677 = load i32, ptr %90, align 4, !tbaa !71
  %678 = zext i32 %677 to i64
  %679 = zext i32 %672 to i64
  %680 = add nuw nsw i64 %678, %679
  %681 = icmp ult i64 %673, %680
  br i1 %681, label %682, label %692

682:                                              ; preds = %676
  %683 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %674, i64 %680), !nosanitize !44
  %684 = extractvalue { i64, i1 } %683, 1, !nosanitize !44
  br i1 %684, label %685, label %686, !prof !45, !nosanitize !44

685:                                              ; preds = %682
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

686:                                              ; preds = %682
  %687 = extractvalue { i64, i1 } %683, 0, !nosanitize !44
  %688 = tail call i64 @llvm.umin.i64(i64 %687, i64 258)
  %689 = load ptr, ptr %92, align 8, !tbaa !34
  %690 = getelementptr inbounds nuw i8, ptr %689, i64 %680
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %690, i8 0, i64 %688, i1 false)
  %691 = add nuw nsw i64 %688, %680
  br label %712

692:                                              ; preds = %676
  %693 = add nuw nsw i64 %680, 258
  %694 = icmp ult i64 %673, %693
  br i1 %694, label %695, label %715

695:                                              ; preds = %692
  %696 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %674, i64 %673), !nosanitize !44
  %697 = extractvalue { i64, i1 } %696, 1, !nosanitize !44
  br i1 %697, label %698, label %699, !prof !45, !nosanitize !44

698:                                              ; preds = %695
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

699:                                              ; preds = %695
  %700 = sub nuw nsw i64 %693, %673
  %701 = extractvalue { i64, i1 } %696, 0, !nosanitize !44
  %702 = tail call i64 @llvm.umin.i64(i64 %700, i64 %701)
  %703 = load ptr, ptr %92, align 8, !tbaa !34
  %704 = getelementptr inbounds nuw i8, ptr %703, i64 %673
  %705 = and i64 %702, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %704, i8 0, i64 %705, i1 false)
  %706 = load i64, ptr %349, align 8, !tbaa !38
  %707 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %706, i64 %702), !nosanitize !44
  %708 = extractvalue { i64, i1 } %707, 1, !nosanitize !44
  br i1 %708, label %709, label %710, !prof !45, !nosanitize !44

709:                                              ; preds = %699
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

710:                                              ; preds = %699
  %711 = extractvalue { i64, i1 } %707, 0, !nosanitize !44
  br label %712

712:                                              ; preds = %710, %686
  %713 = phi i64 [ %691, %686 ], [ %711, %710 ]
  store i64 %713, ptr %349, align 8, !tbaa !38
  %714 = load i32, ptr %82, align 4, !tbaa !73
  br label %715

715:                                              ; preds = %712, %692, %671
  %716 = phi i32 [ %672, %671 ], [ %672, %692 ], [ %714, %712 ]
  %717 = icmp ugt i32 %716, 2
  br i1 %717, label %.preheader, label %.loopexit39, !llvm.loop !97

.loopexit39:                                      ; preds = %715, %392
  %718 = phi i32 [ %393, %392 ], [ %716, %715 ]
  %719 = load i32, ptr %90, align 4, !tbaa !71
  %720 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %719, i32 %718), !nosanitize !44
  %721 = extractvalue { i32, i1 } %720, 1, !nosanitize !44
  br i1 %721, label %722, label %723, !prof !45, !nosanitize !44

722:                                              ; preds = %.loopexit39
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

723:                                              ; preds = %.loopexit39
  %724 = extractvalue { i32, i1 } %720, 0, !nosanitize !44
  store i32 %724, ptr %90, align 4, !tbaa !71
  %725 = zext i32 %724 to i64
  store i64 %725, ptr %94, align 8, !tbaa !72
  store i32 %718, ptr %95, align 4, !tbaa !74
  store i32 0, ptr %82, align 4, !tbaa !73
  %726 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %726, align 8, !tbaa !75
  %727 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %727, align 8, !tbaa !76
  %728 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %728, align 8, !tbaa !77
  store ptr %88, ptr %0, align 8, !tbaa !80
  store i32 %87, ptr %86, align 8, !tbaa !79
  store i32 %27, ptr %26, align 8, !tbaa !29
  br label %729

729:                                              ; preds = %723, %34, %30, %28, %25, %23, %20, %17, %13, %9, %5, %3
  %730 = phi i32 [ 0, %723 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %730
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %52, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
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
  %24 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %25 = load i32, ptr %24, align 4, !tbaa !71
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %27 = load i32, ptr %26, align 4, !tbaa !73
  %28 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %25, i32 %27), !nosanitize !44
  %29 = extractvalue { i32, i1 } %28, 1, !nosanitize !44
  br i1 %29, label %30, label %31, !prof !45, !nosanitize !44

30:                                               ; preds = %23
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

31:                                               ; preds = %23
  %32 = extractvalue { i32, i1 } %28, 0, !nosanitize !44
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %34 = load i32, ptr %33, align 8, !tbaa !31
  %35 = tail call i32 @llvm.umin.i32(i32 %32, i32 %34)
  %36 = icmp ne ptr %1, null
  %37 = icmp ne i32 %35, 0
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = zext i32 %25 to i64
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 %42
  %44 = zext i32 %27 to i64
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 %44
  %46 = zext i32 %35 to i64
  %47 = sub nsw i64 0, %46
  %48 = getelementptr inbounds i8, ptr %45, i64 %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %48, i64 %46, i1 false)
  br label %49

49:                                               ; preds = %39, %31
  %50 = icmp eq ptr %2, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  store i32 %35, ptr %2, align 4, !tbaa !33
  br label %52

52:                                               ; preds = %51, %49, %20, %17, %13, %9, %5, %3
  %53 = phi i32 [ 0, %51 ], [ 0, %49 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %53
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateResetKeep(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %50, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %50, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !19
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !28
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
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %23, align 8, !tbaa !53
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !54
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %25, align 8, !tbaa !55
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %27, ptr %28, align 8, !tbaa !56
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %30 = load i32, ptr %29, align 8, !tbaa !29
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %30), !nosanitize !44
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !44
  br i1 %34, label %35, label %36, !prof !45, !nosanitize !44

35:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !44
  unreachable, !nosanitize !44

36:                                               ; preds = %32
  %37 = extractvalue { i32, i1 } %33, 0, !nosanitize !44
  store i32 %37, ptr %29, align 8, !tbaa !29
  br label %38

38:                                               ; preds = %36, %21
  %39 = phi i32 [ %37, %36 ], [ %30, %21 ]
  %40 = icmp eq i32 %39, 2
  %41 = select i1 %40, i32 57, i32 42
  store i32 %41, ptr %19, align 8, !tbaa !28
  br i1 %40, label %42, label %44

42:                                               ; preds = %38
  %43 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %46

44:                                               ; preds = %38
  %45 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %47, ptr %48, align 8, !tbaa !57
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !58
  tail call void @_tr_init(ptr noundef nonnull %13) #11
  br label %50

50:                                               ; preds = %46, %18, %15, %11, %7, %3, %1
  %51 = phi i32 [ 0, %46 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %51
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetHeader(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
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
  %23 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %24 = load i32, ptr %23, align 8, !tbaa !29
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store ptr %1, ptr %27, align 8, !tbaa !98
  br label %28

28:                                               ; preds = %26, %22, %19, %16, %12, %8, %4, %2
  %29 = phi i32 [ 0, %26 ], [ -2, %22 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @deflatePending(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
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
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 5940
  %27 = load i32, ptr %26, align 4, !tbaa !99
  store i32 %27, ptr %2, align 4, !tbaa !33
  br label %28

28:                                               ; preds = %25, %23
  %29 = icmp eq ptr %1, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %32 = load i64, ptr %31, align 8, !tbaa !55
  %33 = trunc i64 %32 to i32
  %34 = icmp ult i64 %32, 4294967296
  %35 = select i1 %34, i32 %33, i32 -1
  store i32 %35, ptr %1, align 4
  %36 = select i1 %34, i32 0, i32 -5
  br label %37

37:                                               ; preds = %30, %28, %20, %17, %13, %9, %5, %3
  %38 = phi i32 [ 0, %28 ], [ %36, %30 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateUsed(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
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
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 5944
  %26 = load i32, ptr %25, align 8, !tbaa !100
  store i32 %26, ptr %1, align 4, !tbaa !33
  br label %27

27:                                               ; preds = %24, %22, %19, %16, %12, %8, %4, %2
  %28 = phi i32 [ 0, %24 ], [ 0, %22 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %.loopexit, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %.loopexit, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %.loopexit, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %.loopexit, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %.loopexit

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %.loopexit [
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
  br i1 %24, label %.loopexit, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 5888
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 2
  %31 = icmp ult ptr %27, %30
  br i1 %31, label %.loopexit, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 5940
  %34 = getelementptr inbounds nuw i8, ptr %15, i64 5936
  br label %35

35:                                               ; preds = %62, %32
  %36 = phi i32 [ %63, %62 ], [ %1, %32 ]
  %37 = phi i32 [ %64, %62 ], [ %2, %32 ]
  %38 = load i32, ptr %33, align 4, !tbaa !99
  %39 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %38), !nosanitize !44
  %40 = extractvalue { i32, i1 } %39, 1, !nosanitize !44
  br i1 %40, label %41, label %42, !prof !45, !nosanitize !44

41:                                               ; preds = %58, %42, %35
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !44
  unreachable, !nosanitize !44

42:                                               ; preds = %35
  %43 = extractvalue { i32, i1 } %39, 0, !nosanitize !44
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 %36)
  %45 = shl nuw i32 1, %44
  %46 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %45, i32 -1)
  %47 = extractvalue { i32, i1 } %46, 1, !nosanitize !44
  br i1 %47, label %41, label %48, !prof !45, !nosanitize !44

48:                                               ; preds = %42
  %49 = extractvalue { i32, i1 } %46, 0, !nosanitize !44
  %50 = and i32 %49, %37
  %51 = shl i32 %50, %38
  %52 = load i16, ptr %34, align 8, !tbaa !101
  %53 = trunc i32 %51 to i16
  %54 = or i16 %52, %53
  store i16 %54, ptr %34, align 8, !tbaa !101
  %55 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 %44), !nosanitize !44
  %56 = extractvalue { i32, i1 } %55, 1, !nosanitize !44
  br i1 %56, label %57, label %58, !prof !45, !nosanitize !44

57:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !44
  unreachable, !nosanitize !44

58:                                               ; preds = %48
  %59 = extractvalue { i32, i1 } %55, 0, !nosanitize !44
  store i32 %59, ptr %33, align 4, !tbaa !99
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #11
  %60 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %36, i32 %44), !nosanitize !44
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !44
  br i1 %61, label %41, label %62, !prof !45, !nosanitize !44

62:                                               ; preds = %58
  %63 = extractvalue { i32, i1 } %60, 0, !nosanitize !44
  %64 = ashr i32 %37, %44
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %.loopexit, label %35, !llvm.loop !102

.loopexit:                                        ; preds = %62, %25, %23, %20, %17, %13, %9, %5, %3
  %66 = phi i32 [ -5, %25 ], [ -5, %23 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ], [ 0, %62 ]
  ret i32 %66
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1095, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1095, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1095, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1095, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1095

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %1095 [
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
  br i1 %28, label %1095, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds nuw i8, ptr %15, i64 196
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 200
  %32 = load i32, ptr %31, align 8, !tbaa !48
  %33 = icmp eq i32 %2, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i32, ptr %30, align 4, !tbaa !47
  %36 = sext i32 %35 to i64
  %.split = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %36
  %37 = getelementptr inbounds nuw i8, ptr %.split, i64 8
  %38 = load ptr, ptr %37, align 8, !tbaa !103
  %39 = zext nneg i32 %25 to i64
  %.split37 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %39
  %40 = getelementptr inbounds nuw i8, ptr %.split37, i64 8
  %41 = load ptr, ptr %40, align 8, !tbaa !103
  %42 = icmp eq ptr %38, %41
  br i1 %42, label %1052, label %43

43:                                               ; preds = %34, %29
  %44 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %45 = load i32, ptr %44, align 4, !tbaa !58
  %46 = icmp eq i32 %45, -2
  br i1 %46, label %1052, label %47

47:                                               ; preds = %43
  switch i32 %22, label %1095 [
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
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %50 = load ptr, ptr %49, align 8, !tbaa !104
  %51 = icmp eq ptr %50, null
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %54 = load i32, ptr %53, align 8, !tbaa !79
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 8, !tbaa !80
  %58 = icmp eq ptr %57, null
  %59 = icmp eq i32 %22, 666
  %60 = or i1 %59, %58
  br i1 %60, label %63, label %66

61:                                               ; preds = %52
  %62 = icmp eq i32 %22, 666
  br i1 %62, label %63, label %66

63:                                               ; preds = %61, %56, %48
  %64 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 32), align 16, !tbaa !42
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %64, ptr %65, align 8, !tbaa !8
  br label %1095

66:                                               ; preds = %61, %56
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %68 = load i32, ptr %67, align 8, !tbaa !105
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %71, ptr %72, align 8, !tbaa !8
  br label %1029

73:                                               ; preds = %66
  store i32 5, ptr %44, align 4, !tbaa !58
  %74 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %75 = load i64, ptr %74, align 8, !tbaa !55
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %122, label %77

77:                                               ; preds = %73
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #11
  %78 = load i64, ptr %74, align 8, !tbaa !55
  %79 = load i32, ptr %67, align 8, !tbaa !105
  %80 = zext i32 %79 to i64
  %81 = tail call i64 @llvm.umin.i64(i64 %78, i64 %80)
  %82 = trunc nuw i64 %81 to i32
  %83 = icmp eq i64 %81, 0
  br i1 %83, label %115, label %84

84:                                               ; preds = %77
  %85 = load ptr, ptr %49, align 8, !tbaa !104
  %86 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %87 = load ptr, ptr %86, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %85, ptr align 1 %87, i64 %81, i1 false)
  %88 = load ptr, ptr %49, align 8, !tbaa !104
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 %81
  store ptr %89, ptr %49, align 8, !tbaa !104
  %90 = load ptr, ptr %86, align 8, !tbaa !56
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 %81
  store ptr %91, ptr %86, align 8, !tbaa !56
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %93 = load i64, ptr %92, align 8, !tbaa !106
  %94 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %93, i64 %81), !nosanitize !44
  %95 = extractvalue { i64, i1 } %94, 1, !nosanitize !44
  br i1 %95, label %96, label %97, !prof !45, !nosanitize !44

96:                                               ; preds = %84
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

97:                                               ; preds = %84
  %98 = extractvalue { i64, i1 } %94, 0, !nosanitize !44
  store i64 %98, ptr %92, align 8, !tbaa !106
  %99 = load i32, ptr %67, align 8, !tbaa !105
  %100 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %99, i32 %82), !nosanitize !44
  %101 = extractvalue { i32, i1 } %100, 1, !nosanitize !44
  br i1 %101, label %102, label %103, !prof !45, !nosanitize !44

102:                                              ; preds = %97
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

103:                                              ; preds = %97
  %104 = extractvalue { i32, i1 } %100, 0, !nosanitize !44
  store i32 %104, ptr %67, align 8, !tbaa !105
  %105 = load i64, ptr %74, align 8, !tbaa !55
  %106 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %105, i64 %81), !nosanitize !44
  %107 = extractvalue { i64, i1 } %106, 1, !nosanitize !44
  br i1 %107, label %108, label %109, !prof !45, !nosanitize !44

108:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

109:                                              ; preds = %103
  %110 = extractvalue { i64, i1 } %106, 0, !nosanitize !44
  store i64 %110, ptr %74, align 8, !tbaa !55
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %114 = load ptr, ptr %113, align 8, !tbaa !40
  store ptr %114, ptr %86, align 8, !tbaa !56
  br label %115

115:                                              ; preds = %112, %109, %77
  %116 = phi i64 [ %78, %77 ], [ 0, %112 ], [ %110, %109 ]
  %117 = phi i32 [ %79, %77 ], [ %104, %112 ], [ %104, %109 ]
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = load i32, ptr %21, align 8, !tbaa !28
  br label %140

121:                                              ; preds = %115
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1029

122:                                              ; preds = %73
  br i1 %55, label %124, label %140

123:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !44
  unreachable, !nosanitize !44

124:                                              ; preds = %122
  %125 = add i32 %45, 1073741824
  %126 = icmp sgt i32 %125, -1
  br i1 %126, label %128, label %123, !prof !91, !nosanitize !44

127:                                              ; preds = %128
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !44
  unreachable, !nosanitize !44

128:                                              ; preds = %124
  %129 = shl nsw i32 %45, 1
  %130 = icmp sgt i32 %45, 4
  %131 = select i1 %130, i32 9, i32 0
  %132 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %129, i32 %131), !nosanitize !44
  %133 = extractvalue { i32, i1 } %132, 1, !nosanitize !44
  br i1 %133, label %127, label %134, !prof !45, !nosanitize !44

134:                                              ; preds = %128
  %135 = extractvalue { i32, i1 } %132, 0, !nosanitize !44
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %138, ptr %139, align 8, !tbaa !8
  br label %1029

140:                                              ; preds = %134, %122, %119
  %141 = phi i64 [ %116, %119 ], [ 0, %122 ], [ 0, %134 ]
  %142 = phi i32 [ %120, %119 ], [ %22, %122 ], [ %22, %134 ]
  switch i32 %142, label %256 [
    i32 666, label %143
    i32 42, label %149
  ]

143:                                              ; preds = %140
  %144 = load i32, ptr %53, align 8, !tbaa !79
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %988, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %147, ptr %148, align 8, !tbaa !8
  br label %1029

149:                                              ; preds = %140
  %150 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %151 = load i32, ptr %150, align 8, !tbaa !29
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 113, ptr %21, align 8, !tbaa !28
  br label %985

154:                                              ; preds = %149
  %155 = getelementptr inbounds nuw i8, ptr %15, i64 84
  %156 = load i32, ptr %155, align 4, !tbaa !30
  %157 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %156, i32 8), !nosanitize !44
  %158 = extractvalue { i32, i1 } %157, 1, !nosanitize !44
  br i1 %158, label %159, label %160, !prof !45, !nosanitize !44

159:                                              ; preds = %154
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

160:                                              ; preds = %154
  %161 = extractvalue { i32, i1 } %157, 0, !nosanitize !44
  %162 = shl i32 %161, 12
  %163 = load i32, ptr %31, align 8, !tbaa !48
  %164 = icmp sgt i32 %163, 1
  br i1 %164, label %173, label %165

165:                                              ; preds = %160
  %166 = load i32, ptr %30, align 4, !tbaa !47
  %167 = icmp slt i32 %166, 2
  br i1 %167, label %173, label %168

168:                                              ; preds = %165
  %169 = icmp samesign ult i32 %166, 6
  br i1 %169, label %173, label %170

170:                                              ; preds = %168
  %171 = icmp eq i32 %166, 6
  %172 = select i1 %171, i32 128, i32 192
  br label %173

173:                                              ; preds = %170, %168, %165, %160
  %174 = phi i32 [ 0, %165 ], [ 0, %160 ], [ 64, %168 ], [ %172, %170 ]
  %175 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %176 = or disjoint i32 %174, %162
  %177 = load i32, ptr %175, align 4, !tbaa !71
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %178, i32 2048, i32 2080
  %180 = or disjoint i32 %179, %176
  %181 = urem i32 %180, 31
  %182 = or disjoint i32 %181, %180
  %183 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %141, i64 1), !nosanitize !44
  %184 = extractvalue { i64, i1 } %183, 1, !nosanitize !44
  br i1 %184, label %185, label %186, !prof !45, !nosanitize !44

185:                                              ; preds = %173
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

186:                                              ; preds = %173
  %187 = extractvalue { i64, i1 } %183, 0, !nosanitize !44
  %188 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %189 = load ptr, ptr %188, align 8, !tbaa !40
  %190 = lshr i32 %180, 8
  %191 = trunc i32 %190 to i8
  store i64 %187, ptr %74, align 8, !tbaa !55
  %192 = getelementptr inbounds nuw i8, ptr %189, i64 %141
  store i8 %191, ptr %192, align 1, !tbaa !5
  %193 = load i64, ptr %74, align 8, !tbaa !55
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 1), !nosanitize !44
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !44
  br i1 %195, label %196, label %197, !prof !45, !nosanitize !44

196:                                              ; preds = %186
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

197:                                              ; preds = %186
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !44
  %199 = load ptr, ptr %188, align 8, !tbaa !40
  %200 = trunc i32 %182 to i8
  %201 = xor i8 %200, 31
  store i64 %198, ptr %74, align 8, !tbaa !55
  %202 = getelementptr inbounds nuw i8, ptr %199, i64 %193
  store i8 %201, ptr %202, align 1, !tbaa !5
  %203 = load i32, ptr %175, align 4, !tbaa !71
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %248, label %205

205:                                              ; preds = %197
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %207 = load i64, ptr %206, align 8, !tbaa !57
  %208 = lshr i64 %207, 16
  %209 = load i64, ptr %74, align 8, !tbaa !55
  %210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %209, i64 1), !nosanitize !44
  %211 = extractvalue { i64, i1 } %210, 1, !nosanitize !44
  br i1 %211, label %212, label %213, !prof !45, !nosanitize !44

212:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

213:                                              ; preds = %205
  %214 = extractvalue { i64, i1 } %210, 0, !nosanitize !44
  %215 = load ptr, ptr %188, align 8, !tbaa !40
  %216 = lshr i64 %207, 24
  %217 = trunc i64 %216 to i8
  store i64 %214, ptr %74, align 8, !tbaa !55
  %218 = getelementptr inbounds nuw i8, ptr %215, i64 %209
  store i8 %217, ptr %218, align 1, !tbaa !5
  %219 = load i64, ptr %74, align 8, !tbaa !55
  %220 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %219, i64 1), !nosanitize !44
  %221 = extractvalue { i64, i1 } %220, 1, !nosanitize !44
  br i1 %221, label %222, label %223, !prof !45, !nosanitize !44

222:                                              ; preds = %213
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

223:                                              ; preds = %213
  %224 = extractvalue { i64, i1 } %220, 0, !nosanitize !44
  %225 = load ptr, ptr %188, align 8, !tbaa !40
  %226 = trunc i64 %208 to i8
  store i64 %224, ptr %74, align 8, !tbaa !55
  %227 = getelementptr inbounds nuw i8, ptr %225, i64 %219
  store i8 %226, ptr %227, align 1, !tbaa !5
  %228 = load i64, ptr %206, align 8, !tbaa !57
  %229 = trunc i64 %228 to i8
  %230 = load i64, ptr %74, align 8, !tbaa !55
  %231 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %230, i64 1), !nosanitize !44
  %232 = extractvalue { i64, i1 } %231, 1, !nosanitize !44
  br i1 %232, label %233, label %234, !prof !45, !nosanitize !44

233:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

234:                                              ; preds = %223
  %235 = extractvalue { i64, i1 } %231, 0, !nosanitize !44
  %236 = load ptr, ptr %188, align 8, !tbaa !40
  %237 = lshr i64 %228, 8
  %238 = trunc i64 %237 to i8
  store i64 %235, ptr %74, align 8, !tbaa !55
  %239 = getelementptr inbounds nuw i8, ptr %236, i64 %230
  store i8 %238, ptr %239, align 1, !tbaa !5
  %240 = load i64, ptr %74, align 8, !tbaa !55
  %241 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %240, i64 1), !nosanitize !44
  %242 = extractvalue { i64, i1 } %241, 1, !nosanitize !44
  br i1 %242, label %243, label %244, !prof !45, !nosanitize !44

243:                                              ; preds = %234
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

244:                                              ; preds = %234
  %245 = extractvalue { i64, i1 } %241, 0, !nosanitize !44
  %246 = load ptr, ptr %188, align 8, !tbaa !40
  store i64 %245, ptr %74, align 8, !tbaa !55
  %247 = getelementptr inbounds nuw i8, ptr %246, i64 %240
  store i8 %229, ptr %247, align 1, !tbaa !5
  br label %248

248:                                              ; preds = %244, %197
  %249 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %249, ptr %250, align 8, !tbaa !57
  store i32 113, ptr %21, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %251 = load i64, ptr %74, align 8, !tbaa !55
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %248
  %254 = load i32, ptr %21, align 8, !tbaa !28
  br label %256

255:                                              ; preds = %248
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1029

256:                                              ; preds = %253, %140
  %257 = phi i32 [ %254, %253 ], [ %142, %140 ]
  %258 = icmp eq i32 %257, 57
  br i1 %258, label %259, label %514

259:                                              ; preds = %256
  %260 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %260, ptr %261, align 8, !tbaa !57
  %262 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %263 = load i64, ptr %74, align 8, !tbaa !55
  %264 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %263, i64 1), !nosanitize !44
  %265 = extractvalue { i64, i1 } %264, 1, !nosanitize !44
  br i1 %265, label %266, label %267, !prof !45, !nosanitize !44

266:                                              ; preds = %259
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

267:                                              ; preds = %259
  %268 = extractvalue { i64, i1 } %264, 0, !nosanitize !44
  %269 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %268, ptr %74, align 8, !tbaa !55
  %270 = getelementptr inbounds nuw i8, ptr %269, i64 %263
  store i8 31, ptr %270, align 1, !tbaa !5
  %271 = load i64, ptr %74, align 8, !tbaa !55
  %272 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %271, i64 1), !nosanitize !44
  %273 = extractvalue { i64, i1 } %272, 1, !nosanitize !44
  br i1 %273, label %274, label %275, !prof !45, !nosanitize !44

274:                                              ; preds = %267
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

275:                                              ; preds = %267
  %276 = extractvalue { i64, i1 } %272, 0, !nosanitize !44
  %277 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %276, ptr %74, align 8, !tbaa !55
  %278 = getelementptr inbounds nuw i8, ptr %277, i64 %271
  store i8 -117, ptr %278, align 1, !tbaa !5
  %279 = load i64, ptr %74, align 8, !tbaa !55
  %280 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %279, i64 1), !nosanitize !44
  %281 = extractvalue { i64, i1 } %280, 1, !nosanitize !44
  br i1 %281, label %282, label %283, !prof !45, !nosanitize !44

282:                                              ; preds = %275
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

283:                                              ; preds = %275
  %284 = extractvalue { i64, i1 } %280, 0, !nosanitize !44
  %285 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %284, ptr %74, align 8, !tbaa !55
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 %279
  store i8 8, ptr %286, align 1, !tbaa !5
  %287 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %288 = load ptr, ptr %287, align 8, !tbaa !98
  %289 = icmp eq ptr %288, null
  %290 = load i64, ptr %74, align 8, !tbaa !55
  %291 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %290, i64 1), !nosanitize !44
  %292 = extractvalue { i64, i1 } %291, 1, !nosanitize !44
  br i1 %289, label %293, label %360

293:                                              ; preds = %283
  br i1 %292, label %294, label %295, !prof !45, !nosanitize !44

294:                                              ; preds = %293
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

295:                                              ; preds = %293
  %296 = extractvalue { i64, i1 } %291, 0, !nosanitize !44
  %297 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %296, ptr %74, align 8, !tbaa !55
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 %290
  store i8 0, ptr %298, align 1, !tbaa !5
  %299 = load i64, ptr %74, align 8, !tbaa !55
  %300 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %299, i64 1), !nosanitize !44
  %301 = extractvalue { i64, i1 } %300, 1, !nosanitize !44
  br i1 %301, label %302, label %303, !prof !45, !nosanitize !44

302:                                              ; preds = %295
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

303:                                              ; preds = %295
  %304 = extractvalue { i64, i1 } %300, 0, !nosanitize !44
  %305 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %304, ptr %74, align 8, !tbaa !55
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 %299
  store i8 0, ptr %306, align 1, !tbaa !5
  %307 = load i64, ptr %74, align 8, !tbaa !55
  %308 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %307, i64 1), !nosanitize !44
  %309 = extractvalue { i64, i1 } %308, 1, !nosanitize !44
  br i1 %309, label %310, label %311, !prof !45, !nosanitize !44

310:                                              ; preds = %303
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

311:                                              ; preds = %303
  %312 = extractvalue { i64, i1 } %308, 0, !nosanitize !44
  %313 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %312, ptr %74, align 8, !tbaa !55
  %314 = getelementptr inbounds nuw i8, ptr %313, i64 %307
  store i8 0, ptr %314, align 1, !tbaa !5
  %315 = load i64, ptr %74, align 8, !tbaa !55
  %316 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %315, i64 1), !nosanitize !44
  %317 = extractvalue { i64, i1 } %316, 1, !nosanitize !44
  br i1 %317, label %318, label %319, !prof !45, !nosanitize !44

318:                                              ; preds = %311
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

319:                                              ; preds = %311
  %320 = extractvalue { i64, i1 } %316, 0, !nosanitize !44
  %321 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %320, ptr %74, align 8, !tbaa !55
  %322 = getelementptr inbounds nuw i8, ptr %321, i64 %315
  store i8 0, ptr %322, align 1, !tbaa !5
  %323 = load i64, ptr %74, align 8, !tbaa !55
  %324 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %323, i64 1), !nosanitize !44
  %325 = extractvalue { i64, i1 } %324, 1, !nosanitize !44
  br i1 %325, label %326, label %327, !prof !45, !nosanitize !44

326:                                              ; preds = %319
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

327:                                              ; preds = %319
  %328 = extractvalue { i64, i1 } %324, 0, !nosanitize !44
  %329 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %328, ptr %74, align 8, !tbaa !55
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 %323
  store i8 0, ptr %330, align 1, !tbaa !5
  %331 = load i32, ptr %30, align 4, !tbaa !47
  %332 = icmp eq i32 %331, 9
  br i1 %332, label %339, label %333

333:                                              ; preds = %327
  %334 = load i32, ptr %31, align 8, !tbaa !48
  %335 = icmp sgt i32 %334, 1
  %336 = icmp slt i32 %331, 2
  %337 = or i1 %336, %335
  %338 = select i1 %337, i8 4, i8 0
  br label %339

339:                                              ; preds = %333, %327
  %340 = phi i8 [ %338, %333 ], [ 2, %327 ]
  %341 = load i64, ptr %74, align 8, !tbaa !55
  %342 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %341, i64 1), !nosanitize !44
  %343 = extractvalue { i64, i1 } %342, 1, !nosanitize !44
  br i1 %343, label %344, label %345, !prof !45, !nosanitize !44

344:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

345:                                              ; preds = %339
  %346 = extractvalue { i64, i1 } %342, 0, !nosanitize !44
  %347 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %346, ptr %74, align 8, !tbaa !55
  %348 = getelementptr inbounds nuw i8, ptr %347, i64 %341
  store i8 %340, ptr %348, align 1, !tbaa !5
  %349 = load i64, ptr %74, align 8, !tbaa !55
  %350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %349, i64 1), !nosanitize !44
  %351 = extractvalue { i64, i1 } %350, 1, !nosanitize !44
  br i1 %351, label %352, label %353, !prof !45, !nosanitize !44

352:                                              ; preds = %345
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

353:                                              ; preds = %345
  %354 = extractvalue { i64, i1 } %350, 0, !nosanitize !44
  %355 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %354, ptr %74, align 8, !tbaa !55
  %356 = getelementptr inbounds nuw i8, ptr %355, i64 %349
  store i8 3, ptr %356, align 1, !tbaa !5
  store i32 113, ptr %21, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %357 = load i64, ptr %74, align 8, !tbaa !55
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %512, label %359

359:                                              ; preds = %353
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1029

360:                                              ; preds = %283
  br i1 %292, label %361, label %362, !prof !45, !nosanitize !44

361:                                              ; preds = %360
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

362:                                              ; preds = %360
  %363 = extractvalue { i64, i1 } %291, 0, !nosanitize !44
  %364 = load ptr, ptr %262, align 8, !tbaa !40
  %365 = getelementptr inbounds nuw i8, ptr %288, i64 56
  %366 = load ptr, ptr %365, align 8, !tbaa !107
  %367 = icmp eq ptr %366, null
  %368 = getelementptr inbounds nuw i8, ptr %288, i64 40
  %369 = load ptr, ptr %368, align 8, !tbaa !109
  %370 = icmp eq ptr %369, null
  %371 = getelementptr inbounds nuw i8, ptr %288, i64 24
  %372 = load ptr, ptr %371, align 8, !tbaa !110
  %373 = icmp eq ptr %372, null
  %374 = load i32, ptr %288, align 8, !tbaa !111
  %375 = icmp ne i32 %374, 0
  %376 = getelementptr inbounds nuw i8, ptr %288, i64 68
  %377 = load i32, ptr %376, align 4, !tbaa !112
  %378 = icmp eq i32 %377, 0
  %379 = select i1 %378, i8 0, i8 2
  %380 = zext i1 %375 to i8
  %381 = select i1 %373, i8 0, i8 4
  %382 = select i1 %370, i8 0, i8 8
  %383 = select i1 %367, i8 0, i8 16
  %384 = or disjoint i8 %382, %383
  %385 = or disjoint i8 %384, %381
  %386 = or disjoint i8 %385, %380
  %387 = or disjoint i8 %386, %379
  store i64 %363, ptr %74, align 8, !tbaa !55
  %388 = getelementptr inbounds nuw i8, ptr %364, i64 %290
  store i8 %387, ptr %388, align 1, !tbaa !5
  %389 = load i64, ptr %74, align 8, !tbaa !55
  %390 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %389, i64 1), !nosanitize !44
  %391 = extractvalue { i64, i1 } %390, 1, !nosanitize !44
  br i1 %391, label %392, label %393, !prof !45, !nosanitize !44

392:                                              ; preds = %362
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

393:                                              ; preds = %362
  %394 = extractvalue { i64, i1 } %390, 0, !nosanitize !44
  %395 = load ptr, ptr %262, align 8, !tbaa !40
  %396 = load ptr, ptr %287, align 8, !tbaa !98
  %397 = getelementptr inbounds nuw i8, ptr %396, i64 8
  %398 = load i64, ptr %397, align 8, !tbaa !113
  %399 = trunc i64 %398 to i8
  store i64 %394, ptr %74, align 8, !tbaa !55
  %400 = getelementptr inbounds nuw i8, ptr %395, i64 %389
  store i8 %399, ptr %400, align 1, !tbaa !5
  %401 = load i64, ptr %74, align 8, !tbaa !55
  %402 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %401, i64 1), !nosanitize !44
  %403 = extractvalue { i64, i1 } %402, 1, !nosanitize !44
  br i1 %403, label %404, label %405, !prof !45, !nosanitize !44

404:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

405:                                              ; preds = %393
  %406 = extractvalue { i64, i1 } %402, 0, !nosanitize !44
  %407 = load ptr, ptr %262, align 8, !tbaa !40
  %408 = load ptr, ptr %287, align 8, !tbaa !98
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 8
  %410 = load i64, ptr %409, align 8, !tbaa !113
  %411 = lshr i64 %410, 8
  %412 = trunc i64 %411 to i8
  store i64 %406, ptr %74, align 8, !tbaa !55
  %413 = getelementptr inbounds nuw i8, ptr %407, i64 %401
  store i8 %412, ptr %413, align 1, !tbaa !5
  %414 = load i64, ptr %74, align 8, !tbaa !55
  %415 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %414, i64 1), !nosanitize !44
  %416 = extractvalue { i64, i1 } %415, 1, !nosanitize !44
  br i1 %416, label %417, label %418, !prof !45, !nosanitize !44

417:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

418:                                              ; preds = %405
  %419 = extractvalue { i64, i1 } %415, 0, !nosanitize !44
  %420 = load ptr, ptr %262, align 8, !tbaa !40
  %421 = load ptr, ptr %287, align 8, !tbaa !98
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 8
  %423 = load i64, ptr %422, align 8, !tbaa !113
  %424 = lshr i64 %423, 16
  %425 = trunc i64 %424 to i8
  store i64 %419, ptr %74, align 8, !tbaa !55
  %426 = getelementptr inbounds nuw i8, ptr %420, i64 %414
  store i8 %425, ptr %426, align 1, !tbaa !5
  %427 = load i64, ptr %74, align 8, !tbaa !55
  %428 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %427, i64 1), !nosanitize !44
  %429 = extractvalue { i64, i1 } %428, 1, !nosanitize !44
  br i1 %429, label %430, label %431, !prof !45, !nosanitize !44

430:                                              ; preds = %418
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

431:                                              ; preds = %418
  %432 = extractvalue { i64, i1 } %428, 0, !nosanitize !44
  %433 = load ptr, ptr %262, align 8, !tbaa !40
  %434 = load ptr, ptr %287, align 8, !tbaa !98
  %435 = getelementptr inbounds nuw i8, ptr %434, i64 8
  %436 = load i64, ptr %435, align 8, !tbaa !113
  %437 = lshr i64 %436, 24
  %438 = trunc i64 %437 to i8
  store i64 %432, ptr %74, align 8, !tbaa !55
  %439 = getelementptr inbounds nuw i8, ptr %433, i64 %427
  store i8 %438, ptr %439, align 1, !tbaa !5
  %440 = load i32, ptr %30, align 4, !tbaa !47
  %441 = icmp eq i32 %440, 9
  br i1 %441, label %448, label %442

442:                                              ; preds = %431
  %443 = load i32, ptr %31, align 8, !tbaa !48
  %444 = icmp sgt i32 %443, 1
  %445 = icmp slt i32 %440, 2
  %446 = or i1 %445, %444
  %447 = select i1 %446, i8 4, i8 0
  br label %448

448:                                              ; preds = %442, %431
  %449 = phi i8 [ %447, %442 ], [ 2, %431 ]
  %450 = load i64, ptr %74, align 8, !tbaa !55
  %451 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %450, i64 1), !nosanitize !44
  %452 = extractvalue { i64, i1 } %451, 1, !nosanitize !44
  br i1 %452, label %453, label %454, !prof !45, !nosanitize !44

453:                                              ; preds = %448
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

454:                                              ; preds = %448
  %455 = extractvalue { i64, i1 } %451, 0, !nosanitize !44
  %456 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %455, ptr %74, align 8, !tbaa !55
  %457 = getelementptr inbounds nuw i8, ptr %456, i64 %450
  store i8 %449, ptr %457, align 1, !tbaa !5
  %458 = load i64, ptr %74, align 8, !tbaa !55
  %459 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %458, i64 1), !nosanitize !44
  %460 = extractvalue { i64, i1 } %459, 1, !nosanitize !44
  br i1 %460, label %461, label %462, !prof !45, !nosanitize !44

461:                                              ; preds = %454
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

462:                                              ; preds = %454
  %463 = extractvalue { i64, i1 } %459, 0, !nosanitize !44
  %464 = load ptr, ptr %262, align 8, !tbaa !40
  %465 = load ptr, ptr %287, align 8, !tbaa !98
  %466 = getelementptr inbounds nuw i8, ptr %465, i64 20
  %467 = load i32, ptr %466, align 4, !tbaa !114
  %468 = trunc i32 %467 to i8
  store i64 %463, ptr %74, align 8, !tbaa !55
  %469 = getelementptr inbounds nuw i8, ptr %464, i64 %458
  store i8 %468, ptr %469, align 1, !tbaa !5
  %470 = load ptr, ptr %287, align 8, !tbaa !98
  %471 = getelementptr inbounds nuw i8, ptr %470, i64 24
  %472 = load ptr, ptr %471, align 8, !tbaa !110
  %473 = icmp eq ptr %472, null
  br i1 %473, label %500, label %474

474:                                              ; preds = %462
  %475 = load i64, ptr %74, align 8, !tbaa !55
  %476 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %475, i64 1), !nosanitize !44
  %477 = extractvalue { i64, i1 } %476, 1, !nosanitize !44
  br i1 %477, label %478, label %479, !prof !45, !nosanitize !44

478:                                              ; preds = %474
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

479:                                              ; preds = %474
  %480 = extractvalue { i64, i1 } %476, 0, !nosanitize !44
  %481 = load ptr, ptr %262, align 8, !tbaa !40
  %482 = getelementptr inbounds nuw i8, ptr %470, i64 32
  %483 = load i32, ptr %482, align 8, !tbaa !115
  %484 = trunc i32 %483 to i8
  store i64 %480, ptr %74, align 8, !tbaa !55
  %485 = getelementptr inbounds nuw i8, ptr %481, i64 %475
  store i8 %484, ptr %485, align 1, !tbaa !5
  %486 = load i64, ptr %74, align 8, !tbaa !55
  %487 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %486, i64 1), !nosanitize !44
  %488 = extractvalue { i64, i1 } %487, 1, !nosanitize !44
  br i1 %488, label %489, label %490, !prof !45, !nosanitize !44

489:                                              ; preds = %479
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

490:                                              ; preds = %479
  %491 = extractvalue { i64, i1 } %487, 0, !nosanitize !44
  %492 = load ptr, ptr %262, align 8, !tbaa !40
  %493 = load ptr, ptr %287, align 8, !tbaa !98
  %494 = getelementptr inbounds nuw i8, ptr %493, i64 32
  %495 = load i32, ptr %494, align 8, !tbaa !115
  %496 = lshr i32 %495, 8
  %497 = trunc i32 %496 to i8
  store i64 %491, ptr %74, align 8, !tbaa !55
  %498 = getelementptr inbounds nuw i8, ptr %492, i64 %486
  store i8 %497, ptr %498, align 1, !tbaa !5
  %499 = load ptr, ptr %287, align 8, !tbaa !98
  br label %500

500:                                              ; preds = %490, %462
  %501 = phi ptr [ %499, %490 ], [ %470, %462 ]
  %502 = getelementptr inbounds nuw i8, ptr %501, i64 68
  %503 = load i32, ptr %502, align 4, !tbaa !112
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %510, label %505

505:                                              ; preds = %500
  %506 = load i64, ptr %261, align 8, !tbaa !57
  %507 = load ptr, ptr %262, align 8, !tbaa !40
  %508 = load i64, ptr %74, align 8, !tbaa !55
  %509 = tail call i64 @crc32_z(i64 noundef %506, ptr noundef %507, i64 noundef %508) #11
  store i64 %509, ptr %261, align 8, !tbaa !57
  br label %510

510:                                              ; preds = %505, %500
  %511 = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i64 0, ptr %511, align 8, !tbaa !116
  store i32 69, ptr %21, align 8, !tbaa !28
  br label %516

512:                                              ; preds = %353
  %513 = load i32, ptr %21, align 8, !tbaa !28
  br label %514

514:                                              ; preds = %512, %256
  %515 = phi i32 [ %513, %512 ], [ %257, %256 ]
  switch i32 %515, label %985 [
    i32 69, label %516
    i32 73, label %717
    i32 91, label %829
    i32 103, label %940
  ]

516:                                              ; preds = %514, %510
  %517 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %518 = load ptr, ptr %517, align 8, !tbaa !98
  %519 = getelementptr inbounds nuw i8, ptr %518, i64 24
  %520 = load ptr, ptr %519, align 8, !tbaa !110
  %521 = icmp eq ptr %520, null
  br i1 %521, label %716, label %522

522:                                              ; preds = %516
  %523 = getelementptr inbounds nuw i8, ptr %518, i64 32
  %524 = load i32, ptr %523, align 8, !tbaa !115
  %525 = and i32 %524, 65535
  %526 = zext nneg i32 %525 to i64
  %527 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %528 = load i64, ptr %527, align 8, !tbaa !116
  %529 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %526, i64 %528), !nosanitize !44
  %530 = extractvalue { i64, i1 } %529, 1, !nosanitize !44
  br i1 %530, label %531, label %532, !prof !45, !nosanitize !44

531:                                              ; preds = %522
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

532:                                              ; preds = %522
  %533 = load i64, ptr %74, align 8, !tbaa !55
  %534 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %535 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %536 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %537 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %538 = extractvalue { i64, i1 } %529, 0
  %539 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %533, i64 %538), !nosanitize !44
  %540 = extractvalue { i64, i1 } %539, 1, !nosanitize !44
  br i1 %540, label %613, label %541, !prof !45, !nosanitize !44

541:                                              ; preds = %532
  %542 = extractvalue { i64, i1 } %539, 0, !nosanitize !44
  %543 = load i64, ptr %534, align 8, !tbaa !41
  %544 = icmp ugt i64 %542, %543
  br i1 %544, label %545, label %689

545:                                              ; preds = %541
  %546 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %543, i64 %533), !nosanitize !44
  %547 = extractvalue { i64, i1 } %546, 0, !nosanitize !44
  %548 = extractvalue { i64, i1 } %546, 1, !nosanitize !44
  br i1 %548, label %618, label %549, !prof !45, !nosanitize !44

549:                                              ; preds = %545
  %550 = load ptr, ptr %535, align 8, !tbaa !40
  %551 = getelementptr inbounds nuw i8, ptr %550, i64 %533
  %552 = getelementptr inbounds nuw i8, ptr %520, i64 %528
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %551, ptr nonnull align 1 %552, i64 %547, i1 false)
  %553 = load i64, ptr %534, align 8, !tbaa !41
  store i64 %553, ptr %74, align 8, !tbaa !55
  %554 = load ptr, ptr %517, align 8, !tbaa !98
  %555 = getelementptr inbounds nuw i8, ptr %554, i64 68
  %556 = load i32, ptr %555, align 4, !tbaa !112
  %557 = icmp ne i32 %556, 0
  %558 = icmp ugt i64 %553, %533
  %559 = select i1 %557, i1 %558, i1 false
  br i1 %559, label %560, label %566

560:                                              ; preds = %549
  %561 = sub nuw i64 %553, %533
  %562 = load ptr, ptr %535, align 8, !tbaa !40
  %563 = getelementptr inbounds nuw i8, ptr %562, i64 %533
  %564 = load i64, ptr %536, align 8, !tbaa !57
  %565 = tail call i64 @crc32_z(i64 noundef %564, ptr noundef %563, i64 noundef %561) #11
  store i64 %565, ptr %536, align 8, !tbaa !57
  br label %566

566:                                              ; preds = %560, %549
  %567 = load i64, ptr %527, align 8, !tbaa !116
  %568 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %567, i64 %547), !nosanitize !44
  %569 = extractvalue { i64, i1 } %568, 1, !nosanitize !44
  br i1 %569, label %.loopexit, label %570, !prof !45, !nosanitize !44

570:                                              ; preds = %566
  %571 = extractvalue { i64, i1 } %568, 0, !nosanitize !44
  store i64 %571, ptr %527, align 8, !tbaa !116
  %572 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %572) #11
  %573 = getelementptr inbounds nuw i8, ptr %572, i64 40
  %574 = load i64, ptr %573, align 8, !tbaa !55
  %575 = load i32, ptr %67, align 8, !tbaa !105
  %576 = zext i32 %575 to i64
  %577 = tail call i64 @llvm.umin.i64(i64 %574, i64 %576)
  %578 = trunc nuw i64 %577 to i32
  %579 = icmp eq i64 %577, 0
  br i1 %579, label %607, label %580

580:                                              ; preds = %570
  %581 = load ptr, ptr %49, align 8, !tbaa !104
  %582 = getelementptr inbounds nuw i8, ptr %572, i64 32
  %583 = load ptr, ptr %582, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %581, ptr align 1 %583, i64 %577, i1 false)
  %584 = load ptr, ptr %49, align 8, !tbaa !104
  %585 = getelementptr inbounds nuw i8, ptr %584, i64 %577
  store ptr %585, ptr %49, align 8, !tbaa !104
  %586 = load ptr, ptr %582, align 8, !tbaa !56
  %587 = getelementptr inbounds nuw i8, ptr %586, i64 %577
  store ptr %587, ptr %582, align 8, !tbaa !56
  %588 = load i64, ptr %537, align 8, !tbaa !106
  %589 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %588, i64 %577), !nosanitize !44
  %590 = extractvalue { i64, i1 } %589, 1, !nosanitize !44
  br i1 %590, label %.loopexit39, label %591, !prof !45, !nosanitize !44

591:                                              ; preds = %580
  %592 = extractvalue { i64, i1 } %589, 0, !nosanitize !44
  store i64 %592, ptr %537, align 8, !tbaa !106
  %593 = load i32, ptr %67, align 8, !tbaa !105
  %594 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %593, i32 %578), !nosanitize !44
  %595 = extractvalue { i32, i1 } %594, 1, !nosanitize !44
  br i1 %595, label %.loopexit40, label %596, !prof !45, !nosanitize !44

596:                                              ; preds = %591
  %597 = extractvalue { i32, i1 } %594, 0, !nosanitize !44
  store i32 %597, ptr %67, align 8, !tbaa !105
  %598 = load i64, ptr %573, align 8, !tbaa !55
  %599 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %598, i64 %577), !nosanitize !44
  %600 = extractvalue { i64, i1 } %599, 1, !nosanitize !44
  br i1 %600, label %.loopexit41, label %601, !prof !45, !nosanitize !44

601:                                              ; preds = %596
  %602 = extractvalue { i64, i1 } %599, 0, !nosanitize !44
  store i64 %602, ptr %573, align 8, !tbaa !55
  %603 = icmp eq i64 %602, 0
  br i1 %603, label %604, label %607

604:                                              ; preds = %601
  %605 = getelementptr inbounds nuw i8, ptr %572, i64 16
  %606 = load ptr, ptr %605, align 8, !tbaa !40
  store ptr %606, ptr %582, align 8, !tbaa !56
  br label %607

607:                                              ; preds = %604, %601, %570
  %608 = load i64, ptr %74, align 8, !tbaa !55
  %609 = icmp eq i64 %608, 0
  br i1 %609, label %610, label %.loopexit42

610:                                              ; preds = %607
  %611 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %538, i64 %547), !nosanitize !44
  %612 = extractvalue { i64, i1 } %611, 1, !nosanitize !44
  br i1 %612, label %.loopexit43, label %.preheader, !prof !45, !nosanitize !44

613:                                              ; preds = %532
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.preheader:                                       ; preds = %610, %681
  %614 = phi { i64, i1 } [ %682, %681 ], [ %611, %610 ]
  %615 = extractvalue { i64, i1 } %614, 0
  %616 = load i64, ptr %534, align 8, !tbaa !41
  %617 = icmp ugt i64 %615, %616
  br i1 %617, label %619, label %684

618:                                              ; preds = %545
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

619:                                              ; preds = %.preheader
  %620 = load ptr, ptr %535, align 8, !tbaa !40
  %621 = load ptr, ptr %517, align 8, !tbaa !98
  %622 = getelementptr inbounds nuw i8, ptr %621, i64 24
  %623 = load ptr, ptr %622, align 8, !tbaa !110
  %624 = load i64, ptr %527, align 8, !tbaa !116
  %625 = getelementptr inbounds nuw i8, ptr %623, i64 %624
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %620, ptr align 1 %625, i64 %616, i1 false)
  %626 = load i64, ptr %534, align 8, !tbaa !41
  store i64 %626, ptr %74, align 8, !tbaa !55
  %627 = load ptr, ptr %517, align 8, !tbaa !98
  %628 = getelementptr inbounds nuw i8, ptr %627, i64 68
  %629 = load i32, ptr %628, align 4, !tbaa !112
  %630 = icmp ne i32 %629, 0
  %631 = icmp ne i64 %626, 0
  %632 = select i1 %630, i1 %631, i1 false
  br i1 %632, label %633, label %637

633:                                              ; preds = %619
  %634 = load ptr, ptr %535, align 8, !tbaa !40
  %635 = load i64, ptr %536, align 8, !tbaa !57
  %636 = tail call i64 @crc32_z(i64 noundef %635, ptr noundef %634, i64 noundef %626) #11
  store i64 %636, ptr %536, align 8, !tbaa !57
  br label %637

637:                                              ; preds = %633, %619
  %638 = load i64, ptr %527, align 8, !tbaa !116
  %639 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %638, i64 %616), !nosanitize !44
  %640 = extractvalue { i64, i1 } %639, 1, !nosanitize !44
  br i1 %640, label %.loopexit, label %641, !prof !117, !nosanitize !44

.loopexit:                                        ; preds = %637, %566
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

641:                                              ; preds = %637
  %642 = extractvalue { i64, i1 } %639, 0, !nosanitize !44
  store i64 %642, ptr %527, align 8, !tbaa !116
  %643 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %643) #11
  %644 = getelementptr inbounds nuw i8, ptr %643, i64 40
  %645 = load i64, ptr %644, align 8, !tbaa !55
  %646 = load i32, ptr %67, align 8, !tbaa !105
  %647 = zext i32 %646 to i64
  %648 = tail call i64 @llvm.umin.i64(i64 %645, i64 %647)
  %649 = trunc nuw i64 %648 to i32
  %650 = icmp eq i64 %648, 0
  br i1 %650, label %678, label %651

651:                                              ; preds = %641
  %652 = load ptr, ptr %49, align 8, !tbaa !104
  %653 = getelementptr inbounds nuw i8, ptr %643, i64 32
  %654 = load ptr, ptr %653, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %652, ptr align 1 %654, i64 %648, i1 false)
  %655 = load ptr, ptr %49, align 8, !tbaa !104
  %656 = getelementptr inbounds nuw i8, ptr %655, i64 %648
  store ptr %656, ptr %49, align 8, !tbaa !104
  %657 = load ptr, ptr %653, align 8, !tbaa !56
  %658 = getelementptr inbounds nuw i8, ptr %657, i64 %648
  store ptr %658, ptr %653, align 8, !tbaa !56
  %659 = load i64, ptr %537, align 8, !tbaa !106
  %660 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %659, i64 %648), !nosanitize !44
  %661 = extractvalue { i64, i1 } %660, 1, !nosanitize !44
  br i1 %661, label %.loopexit39, label %662, !prof !117, !nosanitize !44

.loopexit39:                                      ; preds = %651, %580
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

662:                                              ; preds = %651
  %663 = extractvalue { i64, i1 } %660, 0, !nosanitize !44
  store i64 %663, ptr %537, align 8, !tbaa !106
  %664 = load i32, ptr %67, align 8, !tbaa !105
  %665 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %664, i32 %649), !nosanitize !44
  %666 = extractvalue { i32, i1 } %665, 1, !nosanitize !44
  br i1 %666, label %.loopexit40, label %667, !prof !117, !nosanitize !44

.loopexit40:                                      ; preds = %662, %591
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

667:                                              ; preds = %662
  %668 = extractvalue { i32, i1 } %665, 0, !nosanitize !44
  store i32 %668, ptr %67, align 8, !tbaa !105
  %669 = load i64, ptr %644, align 8, !tbaa !55
  %670 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %669, i64 %648), !nosanitize !44
  %671 = extractvalue { i64, i1 } %670, 1, !nosanitize !44
  br i1 %671, label %.loopexit41, label %672, !prof !117, !nosanitize !44

.loopexit41:                                      ; preds = %667, %596
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

672:                                              ; preds = %667
  %673 = extractvalue { i64, i1 } %670, 0, !nosanitize !44
  store i64 %673, ptr %644, align 8, !tbaa !55
  %674 = icmp eq i64 %673, 0
  br i1 %674, label %675, label %678

675:                                              ; preds = %672
  %676 = getelementptr inbounds nuw i8, ptr %643, i64 16
  %677 = load ptr, ptr %676, align 8, !tbaa !40
  store ptr %677, ptr %653, align 8, !tbaa !56
  br label %678

678:                                              ; preds = %675, %672, %641
  %679 = load i64, ptr %74, align 8, !tbaa !55
  %680 = icmp eq i64 %679, 0
  br i1 %680, label %681, label %.loopexit42

.loopexit42:                                      ; preds = %678, %607
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1029

681:                                              ; preds = %678
  %682 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %615, i64 %616), !nosanitize !44
  %683 = extractvalue { i64, i1 } %682, 1, !nosanitize !44
  br i1 %683, label %.loopexit43, label %.preheader, !prof !117, !llvm.loop !118, !nosanitize !44

.loopexit43:                                      ; preds = %681, %610
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

684:                                              ; preds = %.preheader
  %685 = load ptr, ptr %517, align 8, !tbaa !98
  %686 = getelementptr inbounds nuw i8, ptr %685, i64 24
  %687 = load ptr, ptr %686, align 8, !tbaa !110
  %688 = load i64, ptr %527, align 8, !tbaa !116
  br label %689

689:                                              ; preds = %684, %541
  %690 = phi i64 [ %528, %541 ], [ %688, %684 ]
  %691 = phi ptr [ %520, %541 ], [ %687, %684 ]
  %692 = phi i64 [ %533, %541 ], [ 0, %684 ]
  %693 = phi i64 [ %538, %541 ], [ %615, %684 ]
  %694 = load ptr, ptr %535, align 8, !tbaa !40
  %695 = getelementptr inbounds nuw i8, ptr %694, i64 %692
  %696 = getelementptr inbounds nuw i8, ptr %691, i64 %690
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %695, ptr align 1 %696, i64 %693, i1 false)
  %697 = load i64, ptr %74, align 8, !tbaa !55
  %698 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %697, i64 %693), !nosanitize !44
  %699 = extractvalue { i64, i1 } %698, 0, !nosanitize !44
  %700 = extractvalue { i64, i1 } %698, 1, !nosanitize !44
  br i1 %700, label %701, label %702, !prof !45, !nosanitize !44

701:                                              ; preds = %689
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

702:                                              ; preds = %689
  store i64 %699, ptr %74, align 8, !tbaa !55
  %703 = load ptr, ptr %517, align 8, !tbaa !98
  %704 = getelementptr inbounds nuw i8, ptr %703, i64 68
  %705 = load i32, ptr %704, align 4, !tbaa !112
  %706 = icmp ne i32 %705, 0
  %707 = icmp ugt i64 %699, %692
  %708 = select i1 %706, i1 %707, i1 false
  br i1 %708, label %709, label %715

709:                                              ; preds = %702
  %710 = sub nuw i64 %699, %692
  %711 = load ptr, ptr %535, align 8, !tbaa !40
  %712 = getelementptr inbounds nuw i8, ptr %711, i64 %692
  %713 = load i64, ptr %536, align 8, !tbaa !57
  %714 = tail call i64 @crc32_z(i64 noundef %713, ptr noundef %712, i64 noundef %710) #11
  store i64 %714, ptr %536, align 8, !tbaa !57
  br label %715

715:                                              ; preds = %709, %702
  store i64 0, ptr %527, align 8, !tbaa !116
  br label %716

716:                                              ; preds = %715, %516
  store i32 73, ptr %21, align 8, !tbaa !28
  br label %717

717:                                              ; preds = %716, %514
  %718 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %719 = load ptr, ptr %718, align 8, !tbaa !98
  %720 = getelementptr inbounds nuw i8, ptr %719, i64 40
  %721 = load ptr, ptr %720, align 8, !tbaa !109
  %722 = icmp eq ptr %721, null
  br i1 %722, label %828, label %723

723:                                              ; preds = %717
  %724 = load i64, ptr %74, align 8, !tbaa !55
  %725 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %726 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %727 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %728 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %729 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %730

730:                                              ; preds = %806, %723
  %731 = phi i64 [ %724, %723 ], [ %793, %806 ]
  %732 = load i64, ptr %74, align 8, !tbaa !55
  %733 = load i64, ptr %725, align 8, !tbaa !41
  %734 = icmp eq i64 %732, %733
  br i1 %734, label %735, label %791

735:                                              ; preds = %730
  %736 = load ptr, ptr %718, align 8, !tbaa !98
  %737 = getelementptr inbounds nuw i8, ptr %736, i64 68
  %738 = load i32, ptr %737, align 4, !tbaa !112
  %739 = icmp ne i32 %738, 0
  %740 = icmp ugt i64 %732, %731
  %741 = select i1 %739, i1 %740, i1 false
  br i1 %741, label %742, label %748

742:                                              ; preds = %735
  %743 = sub nuw i64 %732, %731
  %744 = load ptr, ptr %726, align 8, !tbaa !40
  %745 = getelementptr inbounds nuw i8, ptr %744, i64 %731
  %746 = load i64, ptr %727, align 8, !tbaa !57
  %747 = tail call i64 @crc32_z(i64 noundef %746, ptr noundef %745, i64 noundef %743) #11
  store i64 %747, ptr %727, align 8, !tbaa !57
  br label %748

748:                                              ; preds = %742, %735
  %749 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %749) #11
  %750 = getelementptr inbounds nuw i8, ptr %749, i64 40
  %751 = load i64, ptr %750, align 8, !tbaa !55
  %752 = load i32, ptr %67, align 8, !tbaa !105
  %753 = zext i32 %752 to i64
  %754 = tail call i64 @llvm.umin.i64(i64 %751, i64 %753)
  %755 = trunc nuw i64 %754 to i32
  %756 = icmp eq i64 %754, 0
  br i1 %756, label %787, label %757

757:                                              ; preds = %748
  %758 = load ptr, ptr %49, align 8, !tbaa !104
  %759 = getelementptr inbounds nuw i8, ptr %749, i64 32
  %760 = load ptr, ptr %759, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %758, ptr align 1 %760, i64 %754, i1 false)
  %761 = load ptr, ptr %49, align 8, !tbaa !104
  %762 = getelementptr inbounds nuw i8, ptr %761, i64 %754
  store ptr %762, ptr %49, align 8, !tbaa !104
  %763 = load ptr, ptr %759, align 8, !tbaa !56
  %764 = getelementptr inbounds nuw i8, ptr %763, i64 %754
  store ptr %764, ptr %759, align 8, !tbaa !56
  %765 = load i64, ptr %728, align 8, !tbaa !106
  %766 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %765, i64 %754), !nosanitize !44
  %767 = extractvalue { i64, i1 } %766, 1, !nosanitize !44
  br i1 %767, label %768, label %769, !prof !45, !nosanitize !44

768:                                              ; preds = %757
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

769:                                              ; preds = %757
  %770 = extractvalue { i64, i1 } %766, 0, !nosanitize !44
  store i64 %770, ptr %728, align 8, !tbaa !106
  %771 = load i32, ptr %67, align 8, !tbaa !105
  %772 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %771, i32 %755), !nosanitize !44
  %773 = extractvalue { i32, i1 } %772, 1, !nosanitize !44
  br i1 %773, label %774, label %775, !prof !45, !nosanitize !44

774:                                              ; preds = %769
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

775:                                              ; preds = %769
  %776 = extractvalue { i32, i1 } %772, 0, !nosanitize !44
  store i32 %776, ptr %67, align 8, !tbaa !105
  %777 = load i64, ptr %750, align 8, !tbaa !55
  %778 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %777, i64 %754), !nosanitize !44
  %779 = extractvalue { i64, i1 } %778, 1, !nosanitize !44
  br i1 %779, label %780, label %781, !prof !45, !nosanitize !44

780:                                              ; preds = %775
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

781:                                              ; preds = %775
  %782 = extractvalue { i64, i1 } %778, 0, !nosanitize !44
  store i64 %782, ptr %750, align 8, !tbaa !55
  %783 = icmp eq i64 %782, 0
  br i1 %783, label %784, label %787

784:                                              ; preds = %781
  %785 = getelementptr inbounds nuw i8, ptr %749, i64 16
  %786 = load ptr, ptr %785, align 8, !tbaa !40
  store ptr %786, ptr %759, align 8, !tbaa !56
  br label %787

787:                                              ; preds = %784, %781, %748
  %788 = load i64, ptr %74, align 8, !tbaa !55
  %789 = icmp eq i64 %788, 0
  br i1 %789, label %791, label %790

790:                                              ; preds = %787
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1029

791:                                              ; preds = %787, %730
  %792 = phi i64 [ %732, %730 ], [ 0, %787 ]
  %793 = phi i64 [ %731, %730 ], [ 0, %787 ]
  %794 = load i64, ptr %729, align 8, !tbaa !116
  %795 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %794, i64 1), !nosanitize !44
  %796 = extractvalue { i64, i1 } %795, 1, !nosanitize !44
  br i1 %796, label %797, label %798, !prof !45, !nosanitize !44

797:                                              ; preds = %791
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

798:                                              ; preds = %791
  %799 = extractvalue { i64, i1 } %795, 0, !nosanitize !44
  %800 = load ptr, ptr %718, align 8, !tbaa !98
  %801 = getelementptr inbounds nuw i8, ptr %800, i64 40
  %802 = load ptr, ptr %801, align 8, !tbaa !109
  store i64 %799, ptr %729, align 8, !tbaa !116
  %803 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %792, i64 1), !nosanitize !44
  %804 = extractvalue { i64, i1 } %803, 1, !nosanitize !44
  br i1 %804, label %805, label %806, !prof !45, !nosanitize !44

805:                                              ; preds = %798
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

806:                                              ; preds = %798
  %807 = extractvalue { i64, i1 } %803, 0, !nosanitize !44
  %808 = load ptr, ptr %726, align 8, !tbaa !40
  %809 = getelementptr inbounds nuw i8, ptr %802, i64 %794
  %810 = load i8, ptr %809, align 1, !tbaa !5
  store i64 %807, ptr %74, align 8, !tbaa !55
  %811 = getelementptr inbounds nuw i8, ptr %808, i64 %792
  store i8 %810, ptr %811, align 1, !tbaa !5
  %812 = icmp eq i8 %810, 0
  br i1 %812, label %813, label %730, !llvm.loop !120

813:                                              ; preds = %806
  %814 = load ptr, ptr %718, align 8, !tbaa !98
  %815 = getelementptr inbounds nuw i8, ptr %814, i64 68
  %816 = load i32, ptr %815, align 4, !tbaa !112
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %827, label %818

818:                                              ; preds = %813
  %819 = load i64, ptr %74, align 8, !tbaa !55
  %820 = icmp ugt i64 %819, %793
  br i1 %820, label %821, label %827

821:                                              ; preds = %818
  %822 = sub nuw i64 %819, %793
  %823 = load ptr, ptr %726, align 8, !tbaa !40
  %824 = getelementptr inbounds nuw i8, ptr %823, i64 %793
  %825 = load i64, ptr %727, align 8, !tbaa !57
  %826 = tail call i64 @crc32_z(i64 noundef %825, ptr noundef %824, i64 noundef %822) #11
  store i64 %826, ptr %727, align 8, !tbaa !57
  br label %827

827:                                              ; preds = %821, %818, %813
  store i64 0, ptr %729, align 8, !tbaa !116
  br label %828

828:                                              ; preds = %827, %717
  store i32 91, ptr %21, align 8, !tbaa !28
  br label %829

829:                                              ; preds = %828, %514
  %830 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %831 = load ptr, ptr %830, align 8, !tbaa !98
  %832 = getelementptr inbounds nuw i8, ptr %831, i64 56
  %833 = load ptr, ptr %832, align 8, !tbaa !107
  %834 = icmp eq ptr %833, null
  br i1 %834, label %939, label %835

835:                                              ; preds = %829
  %836 = load i64, ptr %74, align 8, !tbaa !55
  %837 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %838 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %839 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %840 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %841 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %842

842:                                              ; preds = %918, %835
  %843 = phi i64 [ %836, %835 ], [ %905, %918 ]
  %844 = load i64, ptr %74, align 8, !tbaa !55
  %845 = load i64, ptr %837, align 8, !tbaa !41
  %846 = icmp eq i64 %844, %845
  br i1 %846, label %847, label %903

847:                                              ; preds = %842
  %848 = load ptr, ptr %830, align 8, !tbaa !98
  %849 = getelementptr inbounds nuw i8, ptr %848, i64 68
  %850 = load i32, ptr %849, align 4, !tbaa !112
  %851 = icmp ne i32 %850, 0
  %852 = icmp ugt i64 %844, %843
  %853 = select i1 %851, i1 %852, i1 false
  br i1 %853, label %854, label %860

854:                                              ; preds = %847
  %855 = sub nuw i64 %844, %843
  %856 = load ptr, ptr %838, align 8, !tbaa !40
  %857 = getelementptr inbounds nuw i8, ptr %856, i64 %843
  %858 = load i64, ptr %839, align 8, !tbaa !57
  %859 = tail call i64 @crc32_z(i64 noundef %858, ptr noundef %857, i64 noundef %855) #11
  store i64 %859, ptr %839, align 8, !tbaa !57
  br label %860

860:                                              ; preds = %854, %847
  %861 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %861) #11
  %862 = getelementptr inbounds nuw i8, ptr %861, i64 40
  %863 = load i64, ptr %862, align 8, !tbaa !55
  %864 = load i32, ptr %67, align 8, !tbaa !105
  %865 = zext i32 %864 to i64
  %866 = tail call i64 @llvm.umin.i64(i64 %863, i64 %865)
  %867 = trunc nuw i64 %866 to i32
  %868 = icmp eq i64 %866, 0
  br i1 %868, label %899, label %869

869:                                              ; preds = %860
  %870 = load ptr, ptr %49, align 8, !tbaa !104
  %871 = getelementptr inbounds nuw i8, ptr %861, i64 32
  %872 = load ptr, ptr %871, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %870, ptr align 1 %872, i64 %866, i1 false)
  %873 = load ptr, ptr %49, align 8, !tbaa !104
  %874 = getelementptr inbounds nuw i8, ptr %873, i64 %866
  store ptr %874, ptr %49, align 8, !tbaa !104
  %875 = load ptr, ptr %871, align 8, !tbaa !56
  %876 = getelementptr inbounds nuw i8, ptr %875, i64 %866
  store ptr %876, ptr %871, align 8, !tbaa !56
  %877 = load i64, ptr %840, align 8, !tbaa !106
  %878 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %877, i64 %866), !nosanitize !44
  %879 = extractvalue { i64, i1 } %878, 1, !nosanitize !44
  br i1 %879, label %880, label %881, !prof !45, !nosanitize !44

880:                                              ; preds = %869
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

881:                                              ; preds = %869
  %882 = extractvalue { i64, i1 } %878, 0, !nosanitize !44
  store i64 %882, ptr %840, align 8, !tbaa !106
  %883 = load i32, ptr %67, align 8, !tbaa !105
  %884 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %883, i32 %867), !nosanitize !44
  %885 = extractvalue { i32, i1 } %884, 1, !nosanitize !44
  br i1 %885, label %886, label %887, !prof !45, !nosanitize !44

886:                                              ; preds = %881
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

887:                                              ; preds = %881
  %888 = extractvalue { i32, i1 } %884, 0, !nosanitize !44
  store i32 %888, ptr %67, align 8, !tbaa !105
  %889 = load i64, ptr %862, align 8, !tbaa !55
  %890 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %889, i64 %866), !nosanitize !44
  %891 = extractvalue { i64, i1 } %890, 1, !nosanitize !44
  br i1 %891, label %892, label %893, !prof !45, !nosanitize !44

892:                                              ; preds = %887
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

893:                                              ; preds = %887
  %894 = extractvalue { i64, i1 } %890, 0, !nosanitize !44
  store i64 %894, ptr %862, align 8, !tbaa !55
  %895 = icmp eq i64 %894, 0
  br i1 %895, label %896, label %899

896:                                              ; preds = %893
  %897 = getelementptr inbounds nuw i8, ptr %861, i64 16
  %898 = load ptr, ptr %897, align 8, !tbaa !40
  store ptr %898, ptr %871, align 8, !tbaa !56
  br label %899

899:                                              ; preds = %896, %893, %860
  %900 = load i64, ptr %74, align 8, !tbaa !55
  %901 = icmp eq i64 %900, 0
  br i1 %901, label %903, label %902

902:                                              ; preds = %899
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1029

903:                                              ; preds = %899, %842
  %904 = phi i64 [ %844, %842 ], [ 0, %899 ]
  %905 = phi i64 [ %843, %842 ], [ 0, %899 ]
  %906 = load i64, ptr %841, align 8, !tbaa !116
  %907 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %906, i64 1), !nosanitize !44
  %908 = extractvalue { i64, i1 } %907, 1, !nosanitize !44
  br i1 %908, label %909, label %910, !prof !45, !nosanitize !44

909:                                              ; preds = %903
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

910:                                              ; preds = %903
  %911 = extractvalue { i64, i1 } %907, 0, !nosanitize !44
  %912 = load ptr, ptr %830, align 8, !tbaa !98
  %913 = getelementptr inbounds nuw i8, ptr %912, i64 56
  %914 = load ptr, ptr %913, align 8, !tbaa !107
  store i64 %911, ptr %841, align 8, !tbaa !116
  %915 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %904, i64 1), !nosanitize !44
  %916 = extractvalue { i64, i1 } %915, 1, !nosanitize !44
  br i1 %916, label %917, label %918, !prof !45, !nosanitize !44

917:                                              ; preds = %910
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

918:                                              ; preds = %910
  %919 = extractvalue { i64, i1 } %915, 0, !nosanitize !44
  %920 = load ptr, ptr %838, align 8, !tbaa !40
  %921 = getelementptr inbounds nuw i8, ptr %914, i64 %906
  %922 = load i8, ptr %921, align 1, !tbaa !5
  store i64 %919, ptr %74, align 8, !tbaa !55
  %923 = getelementptr inbounds nuw i8, ptr %920, i64 %904
  store i8 %922, ptr %923, align 1, !tbaa !5
  %924 = icmp eq i8 %922, 0
  br i1 %924, label %925, label %842, !llvm.loop !121

925:                                              ; preds = %918
  %926 = load ptr, ptr %830, align 8, !tbaa !98
  %927 = getelementptr inbounds nuw i8, ptr %926, i64 68
  %928 = load i32, ptr %927, align 4, !tbaa !112
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %939, label %930

930:                                              ; preds = %925
  %931 = load i64, ptr %74, align 8, !tbaa !55
  %932 = icmp ugt i64 %931, %905
  br i1 %932, label %933, label %939

933:                                              ; preds = %930
  %934 = sub nuw i64 %931, %905
  %935 = load ptr, ptr %838, align 8, !tbaa !40
  %936 = getelementptr inbounds nuw i8, ptr %935, i64 %905
  %937 = load i64, ptr %839, align 8, !tbaa !57
  %938 = tail call i64 @crc32_z(i64 noundef %937, ptr noundef %936, i64 noundef %934) #11
  store i64 %938, ptr %839, align 8, !tbaa !57
  br label %939

939:                                              ; preds = %933, %930, %925, %829
  store i32 103, ptr %21, align 8, !tbaa !28
  br label %940

940:                                              ; preds = %939, %514
  %941 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %942 = load ptr, ptr %941, align 8, !tbaa !98
  %943 = getelementptr inbounds nuw i8, ptr %942, i64 68
  %944 = load i32, ptr %943, align 4, !tbaa !112
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %981, label %946

946:                                              ; preds = %940
  %947 = load i64, ptr %74, align 8, !tbaa !55
  %948 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %947, i64 2), !nosanitize !44
  %949 = extractvalue { i64, i1 } %948, 1, !nosanitize !44
  br i1 %949, label %950, label %951, !prof !45, !nosanitize !44

950:                                              ; preds = %946
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

951:                                              ; preds = %946
  %952 = extractvalue { i64, i1 } %948, 0, !nosanitize !44
  %953 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %954 = load i64, ptr %953, align 8, !tbaa !41
  %955 = icmp ugt i64 %952, %954
  br i1 %955, label %956, label %960

956:                                              ; preds = %951
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %957 = load i64, ptr %74, align 8, !tbaa !55
  %958 = icmp eq i64 %957, 0
  br i1 %958, label %960, label %959

959:                                              ; preds = %956
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1029

960:                                              ; preds = %956, %951
  %961 = phi i64 [ 0, %956 ], [ %947, %951 ]
  %962 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %963 = add nuw i64 %961, 1
  %964 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %965 = load ptr, ptr %964, align 8, !tbaa !40
  %966 = load i64, ptr %962, align 8, !tbaa !57
  %967 = trunc i64 %966 to i8
  store i64 %963, ptr %74, align 8, !tbaa !55
  %968 = getelementptr inbounds nuw i8, ptr %965, i64 %961
  store i8 %967, ptr %968, align 1, !tbaa !5
  %969 = load i64, ptr %74, align 8, !tbaa !55
  %970 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %969, i64 1), !nosanitize !44
  %971 = extractvalue { i64, i1 } %970, 1, !nosanitize !44
  br i1 %971, label %972, label %973, !prof !45, !nosanitize !44

972:                                              ; preds = %960
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

973:                                              ; preds = %960
  %974 = extractvalue { i64, i1 } %970, 0, !nosanitize !44
  %975 = load ptr, ptr %964, align 8, !tbaa !40
  %976 = load i64, ptr %962, align 8, !tbaa !57
  %977 = lshr i64 %976, 8
  %978 = trunc i64 %977 to i8
  store i64 %974, ptr %74, align 8, !tbaa !55
  %979 = getelementptr inbounds nuw i8, ptr %975, i64 %969
  store i8 %978, ptr %979, align 1, !tbaa !5
  %980 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %980, ptr %962, align 8, !tbaa !57
  br label %981

981:                                              ; preds = %973, %940
  store i32 113, ptr %21, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %982 = load i64, ptr %74, align 8, !tbaa !55
  %983 = icmp eq i64 %982, 0
  br i1 %983, label %985, label %984

984:                                              ; preds = %981
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1029

985:                                              ; preds = %981, %514, %153
  %986 = load i32, ptr %53, align 8, !tbaa !79
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %988, label %995

988:                                              ; preds = %985, %143
  %989 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %990 = load i32, ptr %989, align 4, !tbaa !73
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %992, label %995

992:                                              ; preds = %988
  %993 = load i32, ptr %21, align 8, !tbaa !28
  %994 = icmp eq i32 %993, 666
  br i1 %994, label %1029, label %995

995:                                              ; preds = %992, %988, %985
  %996 = load i32, ptr %30, align 4, !tbaa !47
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %998, label %1000

998:                                              ; preds = %995
  %999 = tail call i32 @deflate_stored(ptr noundef nonnull %15, i32 noundef 5)
  br label %1011

1000:                                             ; preds = %995
  %1001 = load i32, ptr %31, align 8, !tbaa !48
  switch i32 %1001, label %1006 [
    i32 2, label %1002
    i32 3, label %1004
  ]

1002:                                             ; preds = %1000
  %1003 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %15, i32 noundef 5)
  br label %1011

1004:                                             ; preds = %1000
  %1005 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %15, i32 noundef 5)
  br label %1011

1006:                                             ; preds = %1000
  %1007 = sext i32 %996 to i64
  %.split38 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %1007
  %1008 = getelementptr inbounds nuw i8, ptr %.split38, i64 8
  %1009 = load ptr, ptr %1008, align 8, !tbaa !103
  %1010 = tail call i32 %1009(ptr noundef nonnull %15, i32 noundef 5) #11
  br label %1011

1011:                                             ; preds = %1006, %1004, %1002, %998
  %1012 = phi i32 [ %999, %998 ], [ %1003, %1002 ], [ %1005, %1004 ], [ %1010, %1006 ]
  %1013 = and i32 %1012, -2
  %1014 = icmp eq i32 %1013, 2
  br i1 %1014, label %1015, label %1016

1015:                                             ; preds = %1011
  store i32 666, ptr %21, align 8, !tbaa !28
  br label %1016

1016:                                             ; preds = %1015, %1011
  %1017 = and i32 %1012, -3
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1019, label %1023

1019:                                             ; preds = %1016
  %1020 = load i32, ptr %67, align 8, !tbaa !105
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1022, label %1029

1022:                                             ; preds = %1019
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1029

1023:                                             ; preds = %1016
  %1024 = icmp eq i32 %1012, 1
  br i1 %1024, label %1025, label %1029

1025:                                             ; preds = %1023
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1026 = load i32, ptr %67, align 8, !tbaa !105
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1028, label %1029

1028:                                             ; preds = %1025
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1029

1029:                                             ; preds = %1028, %1025, %1023, %1022, %1019, %992, %984, %959, %902, %790, %.loopexit42, %359, %255, %146, %137, %121, %70
  %1030 = load i32, ptr %53, align 8, !tbaa !79
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1032, label %1095

1032:                                             ; preds = %1029
  %1033 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %1034 = load i32, ptr %1033, align 4, !tbaa !71
  %1035 = zext i32 %1034 to i64
  %1036 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %1037 = load i64, ptr %1036, align 8, !tbaa !72
  %1038 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1035, i64 %1037), !nosanitize !44
  %1039 = extractvalue { i64, i1 } %1038, 1, !nosanitize !44
  br i1 %1039, label %1040, label %1041, !prof !45, !nosanitize !44

1040:                                             ; preds = %1032
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !44
  unreachable, !nosanitize !44

1041:                                             ; preds = %1032
  %1042 = extractvalue { i64, i1 } %1038, 0, !nosanitize !44
  %1043 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %1044 = load i32, ptr %1043, align 4, !tbaa !73
  %1045 = zext i32 %1044 to i64
  %1046 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1042, i64 %1045), !nosanitize !44
  %1047 = extractvalue { i64, i1 } %1046, 1, !nosanitize !44
  br i1 %1047, label %1048, label %1049, !prof !45, !nosanitize !44

1048:                                             ; preds = %1041
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !44
  unreachable, !nosanitize !44

1049:                                             ; preds = %1041
  %1050 = extractvalue { i64, i1 } %1046, 0, !nosanitize !44
  %1051 = icmp eq i64 %1050, 0
  br i1 %1051, label %1052, label %1095

1052:                                             ; preds = %1049, %43, %34
  %1053 = load i32, ptr %30, align 4, !tbaa !47
  %1054 = icmp eq i32 %1053, %25
  br i1 %1054, label %1094, label %1055

1055:                                             ; preds = %1052
  %1056 = icmp eq i32 %1053, 0
  br i1 %1056, label %1057, label %1076

1057:                                             ; preds = %1055
  %1058 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %1059 = load i32, ptr %1058, align 8, !tbaa !122
  switch i32 %1059, label %1061 [
    i32 0, label %1076
    i32 1, label %1060
  ]

1060:                                             ; preds = %1057
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %1075

1061:                                             ; preds = %1057
  %1062 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %1063 = load i32, ptr %1062, align 4, !tbaa !36
  %1064 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1063, i32 1), !nosanitize !44
  %1065 = extractvalue { i32, i1 } %1064, 1, !nosanitize !44
  br i1 %1065, label %1066, label %1067, !prof !45, !nosanitize !44

1066:                                             ; preds = %1061
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1067:                                             ; preds = %1061
  %1068 = extractvalue { i32, i1 } %1064, 0, !nosanitize !44
  %1069 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %1070 = load ptr, ptr %1069, align 8, !tbaa !37
  %1071 = zext i32 %1068 to i64
  %1072 = getelementptr inbounds nuw [2 x i8], ptr %1070, i64 %1071
  store i16 0, ptr %1072, align 2, !tbaa !60
  %1073 = shl nuw nsw i64 %1071, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1070, i8 0, i64 %1073, i1 false)
  %1074 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %1074, align 8, !tbaa !61
  br label %1075

1075:                                             ; preds = %1067, %1060
  store i32 0, ptr %1058, align 8, !tbaa !122
  br label %1076

1076:                                             ; preds = %1075, %1057, %1055
  store i32 %25, ptr %30, align 4, !tbaa !47
  %1077 = zext nneg i32 %25 to i64
  %1078 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %1077
  %1079 = getelementptr inbounds nuw i8, ptr %1078, i64 2
  %1080 = load i16, ptr %1079, align 2, !tbaa !62
  %1081 = zext i16 %1080 to i32
  %1082 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %1081, ptr %1082, align 8, !tbaa !64
  %1083 = load i16, ptr %1078, align 16, !tbaa !65
  %1084 = zext i16 %1083 to i32
  %1085 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %1084, ptr %1085, align 4, !tbaa !66
  %1086 = getelementptr inbounds nuw i8, ptr %1078, i64 4
  %1087 = load i16, ptr %1086, align 4, !tbaa !67
  %1088 = zext i16 %1087 to i32
  %1089 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %1088, ptr %1089, align 8, !tbaa !68
  %1090 = getelementptr inbounds nuw i8, ptr %1078, i64 6
  %1091 = load i16, ptr %1090, align 2, !tbaa !69
  %1092 = zext i16 %1091 to i32
  %1093 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %1092, ptr %1093, align 4, !tbaa !70
  br label %1094

1094:                                             ; preds = %1076, %1052
  store i32 %2, ptr %31, align 8, !tbaa !48
  br label %1095

1095:                                             ; preds = %1094, %1049, %1029, %63, %47, %23, %20, %17, %13, %9, %5, %3
  %1096 = phi i32 [ 0, %1094 ], [ -5, %1049 ], [ -2, %23 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ], [ -2, %63 ], [ -2, %47 ], [ -5, %1029 ]
  ret i32 %1096
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1196, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1196, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1196, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %1196, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %1196

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
  switch i32 %21, label %1196 [
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
  br i1 %23, label %1196, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load ptr, ptr %25, align 8, !tbaa !104
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %30 = load i32, ptr %29, align 8, !tbaa !79
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8, !tbaa !80
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32, %28
  %36 = icmp eq i32 %21, 666
  %37 = icmp ne i32 %1, 4
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %32, %24
  %40 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 32), align 16, !tbaa !42
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %40, ptr %41, align 8, !tbaa !8
  br label %1196

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !105
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !8
  br label %1196

49:                                               ; preds = %42
  %50 = getelementptr inbounds nuw i8, ptr %14, i64 76
  %51 = load i32, ptr %50, align 4, !tbaa !58
  store i32 %1, ptr %50, align 4, !tbaa !58
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !55
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %100, label %55

55:                                               ; preds = %49
  tail call void @_tr_flush_bits(ptr noundef nonnull %14) #11
  %56 = load i64, ptr %52, align 8, !tbaa !55
  %57 = load i32, ptr %43, align 8, !tbaa !105
  %58 = zext i32 %57 to i64
  %59 = tail call i64 @llvm.umin.i64(i64 %56, i64 %58)
  %60 = trunc nuw i64 %59 to i32
  %61 = icmp eq i64 %59, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %25, align 8, !tbaa !104
  %64 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %65 = load ptr, ptr %64, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %65, i64 %59, i1 false)
  %66 = load ptr, ptr %25, align 8, !tbaa !104
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %59
  store ptr %67, ptr %25, align 8, !tbaa !104
  %68 = load ptr, ptr %64, align 8, !tbaa !56
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 %59
  store ptr %69, ptr %64, align 8, !tbaa !56
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %71 = load i64, ptr %70, align 8, !tbaa !106
  %72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %71, i64 %59), !nosanitize !44
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !44
  br i1 %73, label %74, label %75, !prof !45, !nosanitize !44

74:                                               ; preds = %62
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

75:                                               ; preds = %62
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !44
  store i64 %76, ptr %70, align 8, !tbaa !106
  %77 = load i32, ptr %43, align 8, !tbaa !105
  %78 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %77, i32 %60), !nosanitize !44
  %79 = extractvalue { i32, i1 } %78, 1, !nosanitize !44
  br i1 %79, label %80, label %81, !prof !45, !nosanitize !44

80:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

81:                                               ; preds = %75
  %82 = extractvalue { i32, i1 } %78, 0, !nosanitize !44
  store i32 %82, ptr %43, align 8, !tbaa !105
  %83 = load i64, ptr %52, align 8, !tbaa !55
  %84 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 %59), !nosanitize !44
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !44
  br i1 %85, label %86, label %87, !prof !45, !nosanitize !44

86:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

87:                                               ; preds = %81
  %88 = extractvalue { i64, i1 } %84, 0, !nosanitize !44
  store i64 %88, ptr %52, align 8, !tbaa !55
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %92 = load ptr, ptr %91, align 8, !tbaa !40
  store ptr %92, ptr %64, align 8, !tbaa !56
  br label %93

93:                                               ; preds = %90, %87, %55
  %94 = phi i64 [ %56, %55 ], [ 0, %90 ], [ %88, %87 ]
  %95 = phi i32 [ %57, %55 ], [ %82, %90 ], [ %82, %87 ]
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %20, align 8, !tbaa !28
  br label %123

99:                                               ; preds = %93
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1196

100:                                              ; preds = %49
  br i1 %31, label %102, label %123

101:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !44
  unreachable, !nosanitize !44

102:                                              ; preds = %100
  %103 = shl nuw nsw i32 %1, 1
  %104 = icmp eq i32 %1, 5
  %105 = select i1 %104, i32 -9, i32 0
  %106 = add nsw i32 %105, %103
  %107 = add i32 %51, 1073741824
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %110, label %101, !prof !91, !nosanitize !44

109:                                              ; preds = %110
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !44
  unreachable, !nosanitize !44

110:                                              ; preds = %102
  %111 = shl nsw i32 %51, 1
  %112 = icmp sgt i32 %51, 4
  %113 = select i1 %112, i32 9, i32 0
  %114 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %111, i32 %113), !nosanitize !44
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !44
  br i1 %115, label %109, label %116, !prof !45, !nosanitize !44

116:                                              ; preds = %110
  %117 = extractvalue { i32, i1 } %114, 0, !nosanitize !44
  %118 = icmp sle i32 %106, %117
  %119 = and i1 %37, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %121, ptr %122, align 8, !tbaa !8
  br label %1196

123:                                              ; preds = %116, %100, %97
  %124 = phi i64 [ %94, %97 ], [ 0, %100 ], [ 0, %116 ]
  %125 = phi i32 [ %98, %97 ], [ %21, %100 ], [ %21, %116 ]
  switch i32 %125, label %241 [
    i32 666, label %126
    i32 42, label %132
  ]

126:                                              ; preds = %123
  %127 = load i32, ptr %29, align 8, !tbaa !79
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %977, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %130, ptr %131, align 8, !tbaa !8
  br label %1196

132:                                              ; preds = %123
  %133 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %134 = load i32, ptr %133, align 8, !tbaa !29
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 113, ptr %20, align 8, !tbaa !28
  br label %974

137:                                              ; preds = %132
  %138 = getelementptr inbounds nuw i8, ptr %14, i64 84
  %139 = load i32, ptr %138, align 4, !tbaa !30
  %140 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %139, i32 8), !nosanitize !44
  %141 = extractvalue { i32, i1 } %140, 1, !nosanitize !44
  br i1 %141, label %142, label %143, !prof !45, !nosanitize !44

142:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

143:                                              ; preds = %137
  %144 = extractvalue { i32, i1 } %140, 0, !nosanitize !44
  %145 = shl i32 %144, 12
  %146 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %147 = load i32, ptr %146, align 8, !tbaa !48
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %158, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %151 = load i32, ptr %150, align 4, !tbaa !47
  %152 = icmp slt i32 %151, 2
  br i1 %152, label %158, label %153

153:                                              ; preds = %149
  %154 = icmp samesign ult i32 %151, 6
  br i1 %154, label %158, label %155

155:                                              ; preds = %153
  %156 = icmp eq i32 %151, 6
  %157 = select i1 %156, i32 128, i32 192
  br label %158

158:                                              ; preds = %155, %153, %149, %143
  %159 = phi i32 [ 0, %149 ], [ 0, %143 ], [ 64, %153 ], [ %157, %155 ]
  %160 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %161 = or disjoint i32 %159, %145
  %162 = load i32, ptr %160, align 4, !tbaa !71
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, i32 2048, i32 2080
  %165 = or disjoint i32 %164, %161
  %166 = urem i32 %165, 31
  %167 = or disjoint i32 %166, %165
  %168 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 1), !nosanitize !44
  %169 = extractvalue { i64, i1 } %168, 1, !nosanitize !44
  br i1 %169, label %170, label %171, !prof !45, !nosanitize !44

170:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

171:                                              ; preds = %158
  %172 = extractvalue { i64, i1 } %168, 0, !nosanitize !44
  %173 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %174 = load ptr, ptr %173, align 8, !tbaa !40
  %175 = lshr i32 %165, 8
  %176 = trunc i32 %175 to i8
  store i64 %172, ptr %52, align 8, !tbaa !55
  %177 = getelementptr inbounds nuw i8, ptr %174, i64 %124
  store i8 %176, ptr %177, align 1, !tbaa !5
  %178 = load i64, ptr %52, align 8, !tbaa !55
  %179 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %178, i64 1), !nosanitize !44
  %180 = extractvalue { i64, i1 } %179, 1, !nosanitize !44
  br i1 %180, label %181, label %182, !prof !45, !nosanitize !44

181:                                              ; preds = %171
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

182:                                              ; preds = %171
  %183 = extractvalue { i64, i1 } %179, 0, !nosanitize !44
  %184 = load ptr, ptr %173, align 8, !tbaa !40
  %185 = trunc i32 %167 to i8
  %186 = xor i8 %185, 31
  store i64 %183, ptr %52, align 8, !tbaa !55
  %187 = getelementptr inbounds nuw i8, ptr %184, i64 %178
  store i8 %186, ptr %187, align 1, !tbaa !5
  %188 = load i32, ptr %160, align 4, !tbaa !71
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %233, label %190

190:                                              ; preds = %182
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %192 = load i64, ptr %191, align 8, !tbaa !57
  %193 = lshr i64 %192, 16
  %194 = load i64, ptr %52, align 8, !tbaa !55
  %195 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %194, i64 1), !nosanitize !44
  %196 = extractvalue { i64, i1 } %195, 1, !nosanitize !44
  br i1 %196, label %197, label %198, !prof !45, !nosanitize !44

197:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

198:                                              ; preds = %190
  %199 = extractvalue { i64, i1 } %195, 0, !nosanitize !44
  %200 = load ptr, ptr %173, align 8, !tbaa !40
  %201 = lshr i64 %192, 24
  %202 = trunc i64 %201 to i8
  store i64 %199, ptr %52, align 8, !tbaa !55
  %203 = getelementptr inbounds nuw i8, ptr %200, i64 %194
  store i8 %202, ptr %203, align 1, !tbaa !5
  %204 = load i64, ptr %52, align 8, !tbaa !55
  %205 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %204, i64 1), !nosanitize !44
  %206 = extractvalue { i64, i1 } %205, 1, !nosanitize !44
  br i1 %206, label %207, label %208, !prof !45, !nosanitize !44

207:                                              ; preds = %198
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

208:                                              ; preds = %198
  %209 = extractvalue { i64, i1 } %205, 0, !nosanitize !44
  %210 = load ptr, ptr %173, align 8, !tbaa !40
  %211 = trunc i64 %193 to i8
  store i64 %209, ptr %52, align 8, !tbaa !55
  %212 = getelementptr inbounds nuw i8, ptr %210, i64 %204
  store i8 %211, ptr %212, align 1, !tbaa !5
  %213 = load i64, ptr %191, align 8, !tbaa !57
  %214 = trunc i64 %213 to i8
  %215 = load i64, ptr %52, align 8, !tbaa !55
  %216 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %215, i64 1), !nosanitize !44
  %217 = extractvalue { i64, i1 } %216, 1, !nosanitize !44
  br i1 %217, label %218, label %219, !prof !45, !nosanitize !44

218:                                              ; preds = %208
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

219:                                              ; preds = %208
  %220 = extractvalue { i64, i1 } %216, 0, !nosanitize !44
  %221 = load ptr, ptr %173, align 8, !tbaa !40
  %222 = lshr i64 %213, 8
  %223 = trunc i64 %222 to i8
  store i64 %220, ptr %52, align 8, !tbaa !55
  %224 = getelementptr inbounds nuw i8, ptr %221, i64 %215
  store i8 %223, ptr %224, align 1, !tbaa !5
  %225 = load i64, ptr %52, align 8, !tbaa !55
  %226 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %225, i64 1), !nosanitize !44
  %227 = extractvalue { i64, i1 } %226, 1, !nosanitize !44
  br i1 %227, label %228, label %229, !prof !45, !nosanitize !44

228:                                              ; preds = %219
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

229:                                              ; preds = %219
  %230 = extractvalue { i64, i1 } %226, 0, !nosanitize !44
  %231 = load ptr, ptr %173, align 8, !tbaa !40
  store i64 %230, ptr %52, align 8, !tbaa !55
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 %225
  store i8 %214, ptr %232, align 1, !tbaa !5
  br label %233

233:                                              ; preds = %229, %182
  %234 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %234, ptr %235, align 8, !tbaa !57
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %236 = load i64, ptr %52, align 8, !tbaa !55
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i32, ptr %20, align 8, !tbaa !28
  br label %241

240:                                              ; preds = %233
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1196

241:                                              ; preds = %238, %123
  %242 = phi i32 [ %239, %238 ], [ %125, %123 ]
  %243 = icmp eq i32 %242, 57
  br i1 %243, label %244, label %503

244:                                              ; preds = %241
  %245 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %245, ptr %246, align 8, !tbaa !57
  %247 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %248 = load i64, ptr %52, align 8, !tbaa !55
  %249 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %248, i64 1), !nosanitize !44
  %250 = extractvalue { i64, i1 } %249, 1, !nosanitize !44
  br i1 %250, label %251, label %252, !prof !45, !nosanitize !44

251:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

252:                                              ; preds = %244
  %253 = extractvalue { i64, i1 } %249, 0, !nosanitize !44
  %254 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %253, ptr %52, align 8, !tbaa !55
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 %248
  store i8 31, ptr %255, align 1, !tbaa !5
  %256 = load i64, ptr %52, align 8, !tbaa !55
  %257 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %256, i64 1), !nosanitize !44
  %258 = extractvalue { i64, i1 } %257, 1, !nosanitize !44
  br i1 %258, label %259, label %260, !prof !45, !nosanitize !44

259:                                              ; preds = %252
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

260:                                              ; preds = %252
  %261 = extractvalue { i64, i1 } %257, 0, !nosanitize !44
  %262 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %261, ptr %52, align 8, !tbaa !55
  %263 = getelementptr inbounds nuw i8, ptr %262, i64 %256
  store i8 -117, ptr %263, align 1, !tbaa !5
  %264 = load i64, ptr %52, align 8, !tbaa !55
  %265 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %264, i64 1), !nosanitize !44
  %266 = extractvalue { i64, i1 } %265, 1, !nosanitize !44
  br i1 %266, label %267, label %268, !prof !45, !nosanitize !44

267:                                              ; preds = %260
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

268:                                              ; preds = %260
  %269 = extractvalue { i64, i1 } %265, 0, !nosanitize !44
  %270 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %269, ptr %52, align 8, !tbaa !55
  %271 = getelementptr inbounds nuw i8, ptr %270, i64 %264
  store i8 8, ptr %271, align 1, !tbaa !5
  %272 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %273 = load ptr, ptr %272, align 8, !tbaa !98
  %274 = icmp eq ptr %273, null
  %275 = load i64, ptr %52, align 8, !tbaa !55
  %276 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %275, i64 1), !nosanitize !44
  %277 = extractvalue { i64, i1 } %276, 1, !nosanitize !44
  br i1 %274, label %278, label %347

278:                                              ; preds = %268
  br i1 %277, label %279, label %280, !prof !45, !nosanitize !44

279:                                              ; preds = %278
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

280:                                              ; preds = %278
  %281 = extractvalue { i64, i1 } %276, 0, !nosanitize !44
  %282 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %281, ptr %52, align 8, !tbaa !55
  %283 = getelementptr inbounds nuw i8, ptr %282, i64 %275
  store i8 0, ptr %283, align 1, !tbaa !5
  %284 = load i64, ptr %52, align 8, !tbaa !55
  %285 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %284, i64 1), !nosanitize !44
  %286 = extractvalue { i64, i1 } %285, 1, !nosanitize !44
  br i1 %286, label %287, label %288, !prof !45, !nosanitize !44

287:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

288:                                              ; preds = %280
  %289 = extractvalue { i64, i1 } %285, 0, !nosanitize !44
  %290 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %289, ptr %52, align 8, !tbaa !55
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 %284
  store i8 0, ptr %291, align 1, !tbaa !5
  %292 = load i64, ptr %52, align 8, !tbaa !55
  %293 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %292, i64 1), !nosanitize !44
  %294 = extractvalue { i64, i1 } %293, 1, !nosanitize !44
  br i1 %294, label %295, label %296, !prof !45, !nosanitize !44

295:                                              ; preds = %288
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

296:                                              ; preds = %288
  %297 = extractvalue { i64, i1 } %293, 0, !nosanitize !44
  %298 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %297, ptr %52, align 8, !tbaa !55
  %299 = getelementptr inbounds nuw i8, ptr %298, i64 %292
  store i8 0, ptr %299, align 1, !tbaa !5
  %300 = load i64, ptr %52, align 8, !tbaa !55
  %301 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %300, i64 1), !nosanitize !44
  %302 = extractvalue { i64, i1 } %301, 1, !nosanitize !44
  br i1 %302, label %303, label %304, !prof !45, !nosanitize !44

303:                                              ; preds = %296
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

304:                                              ; preds = %296
  %305 = extractvalue { i64, i1 } %301, 0, !nosanitize !44
  %306 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %305, ptr %52, align 8, !tbaa !55
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 %300
  store i8 0, ptr %307, align 1, !tbaa !5
  %308 = load i64, ptr %52, align 8, !tbaa !55
  %309 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %308, i64 1), !nosanitize !44
  %310 = extractvalue { i64, i1 } %309, 1, !nosanitize !44
  br i1 %310, label %311, label %312, !prof !45, !nosanitize !44

311:                                              ; preds = %304
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

312:                                              ; preds = %304
  %313 = extractvalue { i64, i1 } %309, 0, !nosanitize !44
  %314 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %313, ptr %52, align 8, !tbaa !55
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 %308
  store i8 0, ptr %315, align 1, !tbaa !5
  %316 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %317 = load i32, ptr %316, align 4, !tbaa !47
  %318 = icmp eq i32 %317, 9
  br i1 %318, label %326, label %319

319:                                              ; preds = %312
  %320 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %321 = load i32, ptr %320, align 8, !tbaa !48
  %322 = icmp sgt i32 %321, 1
  %323 = icmp slt i32 %317, 2
  %324 = or i1 %323, %322
  %325 = select i1 %324, i8 4, i8 0
  br label %326

326:                                              ; preds = %319, %312
  %327 = phi i8 [ %325, %319 ], [ 2, %312 ]
  %328 = load i64, ptr %52, align 8, !tbaa !55
  %329 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %328, i64 1), !nosanitize !44
  %330 = extractvalue { i64, i1 } %329, 1, !nosanitize !44
  br i1 %330, label %331, label %332, !prof !45, !nosanitize !44

331:                                              ; preds = %326
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

332:                                              ; preds = %326
  %333 = extractvalue { i64, i1 } %329, 0, !nosanitize !44
  %334 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %333, ptr %52, align 8, !tbaa !55
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 %328
  store i8 %327, ptr %335, align 1, !tbaa !5
  %336 = load i64, ptr %52, align 8, !tbaa !55
  %337 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %336, i64 1), !nosanitize !44
  %338 = extractvalue { i64, i1 } %337, 1, !nosanitize !44
  br i1 %338, label %339, label %340, !prof !45, !nosanitize !44

339:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

340:                                              ; preds = %332
  %341 = extractvalue { i64, i1 } %337, 0, !nosanitize !44
  %342 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %341, ptr %52, align 8, !tbaa !55
  %343 = getelementptr inbounds nuw i8, ptr %342, i64 %336
  store i8 3, ptr %343, align 1, !tbaa !5
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %344 = load i64, ptr %52, align 8, !tbaa !55
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %501, label %346

346:                                              ; preds = %340
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1196

347:                                              ; preds = %268
  br i1 %277, label %348, label %349, !prof !45, !nosanitize !44

348:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

349:                                              ; preds = %347
  %350 = extractvalue { i64, i1 } %276, 0, !nosanitize !44
  %351 = load ptr, ptr %247, align 8, !tbaa !40
  %352 = getelementptr inbounds nuw i8, ptr %273, i64 56
  %353 = load ptr, ptr %352, align 8, !tbaa !107
  %354 = icmp eq ptr %353, null
  %355 = getelementptr inbounds nuw i8, ptr %273, i64 40
  %356 = load ptr, ptr %355, align 8, !tbaa !109
  %357 = icmp eq ptr %356, null
  %358 = getelementptr inbounds nuw i8, ptr %273, i64 24
  %359 = load ptr, ptr %358, align 8, !tbaa !110
  %360 = icmp eq ptr %359, null
  %361 = load i32, ptr %273, align 8, !tbaa !111
  %362 = icmp ne i32 %361, 0
  %363 = getelementptr inbounds nuw i8, ptr %273, i64 68
  %364 = load i32, ptr %363, align 4, !tbaa !112
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
  store i64 %350, ptr %52, align 8, !tbaa !55
  %375 = getelementptr inbounds nuw i8, ptr %351, i64 %275
  store i8 %374, ptr %375, align 1, !tbaa !5
  %376 = load i64, ptr %52, align 8, !tbaa !55
  %377 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %376, i64 1), !nosanitize !44
  %378 = extractvalue { i64, i1 } %377, 1, !nosanitize !44
  br i1 %378, label %379, label %380, !prof !45, !nosanitize !44

379:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

380:                                              ; preds = %349
  %381 = extractvalue { i64, i1 } %377, 0, !nosanitize !44
  %382 = load ptr, ptr %247, align 8, !tbaa !40
  %383 = load ptr, ptr %272, align 8, !tbaa !98
  %384 = getelementptr inbounds nuw i8, ptr %383, i64 8
  %385 = load i64, ptr %384, align 8, !tbaa !113
  %386 = trunc i64 %385 to i8
  store i64 %381, ptr %52, align 8, !tbaa !55
  %387 = getelementptr inbounds nuw i8, ptr %382, i64 %376
  store i8 %386, ptr %387, align 1, !tbaa !5
  %388 = load i64, ptr %52, align 8, !tbaa !55
  %389 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %388, i64 1), !nosanitize !44
  %390 = extractvalue { i64, i1 } %389, 1, !nosanitize !44
  br i1 %390, label %391, label %392, !prof !45, !nosanitize !44

391:                                              ; preds = %380
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

392:                                              ; preds = %380
  %393 = extractvalue { i64, i1 } %389, 0, !nosanitize !44
  %394 = load ptr, ptr %247, align 8, !tbaa !40
  %395 = load ptr, ptr %272, align 8, !tbaa !98
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 8
  %397 = load i64, ptr %396, align 8, !tbaa !113
  %398 = lshr i64 %397, 8
  %399 = trunc i64 %398 to i8
  store i64 %393, ptr %52, align 8, !tbaa !55
  %400 = getelementptr inbounds nuw i8, ptr %394, i64 %388
  store i8 %399, ptr %400, align 1, !tbaa !5
  %401 = load i64, ptr %52, align 8, !tbaa !55
  %402 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %401, i64 1), !nosanitize !44
  %403 = extractvalue { i64, i1 } %402, 1, !nosanitize !44
  br i1 %403, label %404, label %405, !prof !45, !nosanitize !44

404:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

405:                                              ; preds = %392
  %406 = extractvalue { i64, i1 } %402, 0, !nosanitize !44
  %407 = load ptr, ptr %247, align 8, !tbaa !40
  %408 = load ptr, ptr %272, align 8, !tbaa !98
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 8
  %410 = load i64, ptr %409, align 8, !tbaa !113
  %411 = lshr i64 %410, 16
  %412 = trunc i64 %411 to i8
  store i64 %406, ptr %52, align 8, !tbaa !55
  %413 = getelementptr inbounds nuw i8, ptr %407, i64 %401
  store i8 %412, ptr %413, align 1, !tbaa !5
  %414 = load i64, ptr %52, align 8, !tbaa !55
  %415 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %414, i64 1), !nosanitize !44
  %416 = extractvalue { i64, i1 } %415, 1, !nosanitize !44
  br i1 %416, label %417, label %418, !prof !45, !nosanitize !44

417:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

418:                                              ; preds = %405
  %419 = extractvalue { i64, i1 } %415, 0, !nosanitize !44
  %420 = load ptr, ptr %247, align 8, !tbaa !40
  %421 = load ptr, ptr %272, align 8, !tbaa !98
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 8
  %423 = load i64, ptr %422, align 8, !tbaa !113
  %424 = lshr i64 %423, 24
  %425 = trunc i64 %424 to i8
  store i64 %419, ptr %52, align 8, !tbaa !55
  %426 = getelementptr inbounds nuw i8, ptr %420, i64 %414
  store i8 %425, ptr %426, align 1, !tbaa !5
  %427 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %428 = load i32, ptr %427, align 4, !tbaa !47
  %429 = icmp eq i32 %428, 9
  br i1 %429, label %437, label %430

430:                                              ; preds = %418
  %431 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %432 = load i32, ptr %431, align 8, !tbaa !48
  %433 = icmp sgt i32 %432, 1
  %434 = icmp slt i32 %428, 2
  %435 = or i1 %434, %433
  %436 = select i1 %435, i8 4, i8 0
  br label %437

437:                                              ; preds = %430, %418
  %438 = phi i8 [ %436, %430 ], [ 2, %418 ]
  %439 = load i64, ptr %52, align 8, !tbaa !55
  %440 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %439, i64 1), !nosanitize !44
  %441 = extractvalue { i64, i1 } %440, 1, !nosanitize !44
  br i1 %441, label %442, label %443, !prof !45, !nosanitize !44

442:                                              ; preds = %437
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

443:                                              ; preds = %437
  %444 = extractvalue { i64, i1 } %440, 0, !nosanitize !44
  %445 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %444, ptr %52, align 8, !tbaa !55
  %446 = getelementptr inbounds nuw i8, ptr %445, i64 %439
  store i8 %438, ptr %446, align 1, !tbaa !5
  %447 = load i64, ptr %52, align 8, !tbaa !55
  %448 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %447, i64 1), !nosanitize !44
  %449 = extractvalue { i64, i1 } %448, 1, !nosanitize !44
  br i1 %449, label %450, label %451, !prof !45, !nosanitize !44

450:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

451:                                              ; preds = %443
  %452 = extractvalue { i64, i1 } %448, 0, !nosanitize !44
  %453 = load ptr, ptr %247, align 8, !tbaa !40
  %454 = load ptr, ptr %272, align 8, !tbaa !98
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 20
  %456 = load i32, ptr %455, align 4, !tbaa !114
  %457 = trunc i32 %456 to i8
  store i64 %452, ptr %52, align 8, !tbaa !55
  %458 = getelementptr inbounds nuw i8, ptr %453, i64 %447
  store i8 %457, ptr %458, align 1, !tbaa !5
  %459 = load ptr, ptr %272, align 8, !tbaa !98
  %460 = getelementptr inbounds nuw i8, ptr %459, i64 24
  %461 = load ptr, ptr %460, align 8, !tbaa !110
  %462 = icmp eq ptr %461, null
  br i1 %462, label %489, label %463

463:                                              ; preds = %451
  %464 = load i64, ptr %52, align 8, !tbaa !55
  %465 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %464, i64 1), !nosanitize !44
  %466 = extractvalue { i64, i1 } %465, 1, !nosanitize !44
  br i1 %466, label %467, label %468, !prof !45, !nosanitize !44

467:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

468:                                              ; preds = %463
  %469 = extractvalue { i64, i1 } %465, 0, !nosanitize !44
  %470 = load ptr, ptr %247, align 8, !tbaa !40
  %471 = getelementptr inbounds nuw i8, ptr %459, i64 32
  %472 = load i32, ptr %471, align 8, !tbaa !115
  %473 = trunc i32 %472 to i8
  store i64 %469, ptr %52, align 8, !tbaa !55
  %474 = getelementptr inbounds nuw i8, ptr %470, i64 %464
  store i8 %473, ptr %474, align 1, !tbaa !5
  %475 = load i64, ptr %52, align 8, !tbaa !55
  %476 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %475, i64 1), !nosanitize !44
  %477 = extractvalue { i64, i1 } %476, 1, !nosanitize !44
  br i1 %477, label %478, label %479, !prof !45, !nosanitize !44

478:                                              ; preds = %468
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

479:                                              ; preds = %468
  %480 = extractvalue { i64, i1 } %476, 0, !nosanitize !44
  %481 = load ptr, ptr %247, align 8, !tbaa !40
  %482 = load ptr, ptr %272, align 8, !tbaa !98
  %483 = getelementptr inbounds nuw i8, ptr %482, i64 32
  %484 = load i32, ptr %483, align 8, !tbaa !115
  %485 = lshr i32 %484, 8
  %486 = trunc i32 %485 to i8
  store i64 %480, ptr %52, align 8, !tbaa !55
  %487 = getelementptr inbounds nuw i8, ptr %481, i64 %475
  store i8 %486, ptr %487, align 1, !tbaa !5
  %488 = load ptr, ptr %272, align 8, !tbaa !98
  br label %489

489:                                              ; preds = %479, %451
  %490 = phi ptr [ %488, %479 ], [ %459, %451 ]
  %491 = getelementptr inbounds nuw i8, ptr %490, i64 68
  %492 = load i32, ptr %491, align 4, !tbaa !112
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %499, label %494

494:                                              ; preds = %489
  %495 = load i64, ptr %246, align 8, !tbaa !57
  %496 = load ptr, ptr %247, align 8, !tbaa !40
  %497 = load i64, ptr %52, align 8, !tbaa !55
  %498 = tail call i64 @crc32_z(i64 noundef %495, ptr noundef %496, i64 noundef %497) #11
  store i64 %498, ptr %246, align 8, !tbaa !57
  br label %499

499:                                              ; preds = %494, %489
  %500 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %500, align 8, !tbaa !116
  store i32 69, ptr %20, align 8, !tbaa !28
  br label %505

501:                                              ; preds = %340
  %502 = load i32, ptr %20, align 8, !tbaa !28
  br label %503

503:                                              ; preds = %501, %241
  %504 = phi i32 [ %502, %501 ], [ %242, %241 ]
  switch i32 %504, label %974 [
    i32 69, label %505
    i32 73, label %706
    i32 91, label %818
    i32 103, label %929
  ]

505:                                              ; preds = %503, %499
  %506 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %507 = load ptr, ptr %506, align 8, !tbaa !98
  %508 = getelementptr inbounds nuw i8, ptr %507, i64 24
  %509 = load ptr, ptr %508, align 8, !tbaa !110
  %510 = icmp eq ptr %509, null
  br i1 %510, label %705, label %511

511:                                              ; preds = %505
  %512 = getelementptr inbounds nuw i8, ptr %507, i64 32
  %513 = load i32, ptr %512, align 8, !tbaa !115
  %514 = and i32 %513, 65535
  %515 = zext nneg i32 %514 to i64
  %516 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %517 = load i64, ptr %516, align 8, !tbaa !116
  %518 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %515, i64 %517), !nosanitize !44
  %519 = extractvalue { i64, i1 } %518, 1, !nosanitize !44
  br i1 %519, label %520, label %521, !prof !45, !nosanitize !44

520:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

521:                                              ; preds = %511
  %522 = load i64, ptr %52, align 8, !tbaa !55
  %523 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %524 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %525 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %526 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %527 = extractvalue { i64, i1 } %518, 0
  %528 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %522, i64 %527), !nosanitize !44
  %529 = extractvalue { i64, i1 } %528, 1, !nosanitize !44
  br i1 %529, label %602, label %530, !prof !45, !nosanitize !44

530:                                              ; preds = %521
  %531 = extractvalue { i64, i1 } %528, 0, !nosanitize !44
  %532 = load i64, ptr %523, align 8, !tbaa !41
  %533 = icmp ugt i64 %531, %532
  br i1 %533, label %534, label %678

534:                                              ; preds = %530
  %535 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %532, i64 %522), !nosanitize !44
  %536 = extractvalue { i64, i1 } %535, 0, !nosanitize !44
  %537 = extractvalue { i64, i1 } %535, 1, !nosanitize !44
  br i1 %537, label %607, label %538, !prof !45, !nosanitize !44

538:                                              ; preds = %534
  %539 = load ptr, ptr %524, align 8, !tbaa !40
  %540 = getelementptr inbounds nuw i8, ptr %539, i64 %522
  %541 = getelementptr inbounds nuw i8, ptr %509, i64 %517
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %540, ptr nonnull align 1 %541, i64 %536, i1 false)
  %542 = load i64, ptr %523, align 8, !tbaa !41
  store i64 %542, ptr %52, align 8, !tbaa !55
  %543 = load ptr, ptr %506, align 8, !tbaa !98
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 68
  %545 = load i32, ptr %544, align 4, !tbaa !112
  %546 = icmp ne i32 %545, 0
  %547 = icmp ugt i64 %542, %522
  %548 = select i1 %546, i1 %547, i1 false
  br i1 %548, label %549, label %555

549:                                              ; preds = %538
  %550 = sub nuw i64 %542, %522
  %551 = load ptr, ptr %524, align 8, !tbaa !40
  %552 = getelementptr inbounds nuw i8, ptr %551, i64 %522
  %553 = load i64, ptr %525, align 8, !tbaa !57
  %554 = tail call i64 @crc32_z(i64 noundef %553, ptr noundef %552, i64 noundef %550) #11
  store i64 %554, ptr %525, align 8, !tbaa !57
  br label %555

555:                                              ; preds = %549, %538
  %556 = load i64, ptr %516, align 8, !tbaa !116
  %557 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %556, i64 %536), !nosanitize !44
  %558 = extractvalue { i64, i1 } %557, 1, !nosanitize !44
  br i1 %558, label %.loopexit, label %559, !prof !45, !nosanitize !44

559:                                              ; preds = %555
  %560 = extractvalue { i64, i1 } %557, 0, !nosanitize !44
  store i64 %560, ptr %516, align 8, !tbaa !116
  %561 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %561) #11
  %562 = getelementptr inbounds nuw i8, ptr %561, i64 40
  %563 = load i64, ptr %562, align 8, !tbaa !55
  %564 = load i32, ptr %43, align 8, !tbaa !105
  %565 = zext i32 %564 to i64
  %566 = tail call i64 @llvm.umin.i64(i64 %563, i64 %565)
  %567 = trunc nuw i64 %566 to i32
  %568 = icmp eq i64 %566, 0
  br i1 %568, label %596, label %569

569:                                              ; preds = %559
  %570 = load ptr, ptr %25, align 8, !tbaa !104
  %571 = getelementptr inbounds nuw i8, ptr %561, i64 32
  %572 = load ptr, ptr %571, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %570, ptr align 1 %572, i64 %566, i1 false)
  %573 = load ptr, ptr %25, align 8, !tbaa !104
  %574 = getelementptr inbounds nuw i8, ptr %573, i64 %566
  store ptr %574, ptr %25, align 8, !tbaa !104
  %575 = load ptr, ptr %571, align 8, !tbaa !56
  %576 = getelementptr inbounds nuw i8, ptr %575, i64 %566
  store ptr %576, ptr %571, align 8, !tbaa !56
  %577 = load i64, ptr %526, align 8, !tbaa !106
  %578 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %577, i64 %566), !nosanitize !44
  %579 = extractvalue { i64, i1 } %578, 1, !nosanitize !44
  br i1 %579, label %.loopexit36, label %580, !prof !45, !nosanitize !44

580:                                              ; preds = %569
  %581 = extractvalue { i64, i1 } %578, 0, !nosanitize !44
  store i64 %581, ptr %526, align 8, !tbaa !106
  %582 = load i32, ptr %43, align 8, !tbaa !105
  %583 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %582, i32 %567), !nosanitize !44
  %584 = extractvalue { i32, i1 } %583, 1, !nosanitize !44
  br i1 %584, label %.loopexit37, label %585, !prof !45, !nosanitize !44

585:                                              ; preds = %580
  %586 = extractvalue { i32, i1 } %583, 0, !nosanitize !44
  store i32 %586, ptr %43, align 8, !tbaa !105
  %587 = load i64, ptr %562, align 8, !tbaa !55
  %588 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %587, i64 %566), !nosanitize !44
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !44
  br i1 %589, label %.loopexit38, label %590, !prof !45, !nosanitize !44

590:                                              ; preds = %585
  %591 = extractvalue { i64, i1 } %588, 0, !nosanitize !44
  store i64 %591, ptr %562, align 8, !tbaa !55
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %593, label %596

593:                                              ; preds = %590
  %594 = getelementptr inbounds nuw i8, ptr %561, i64 16
  %595 = load ptr, ptr %594, align 8, !tbaa !40
  store ptr %595, ptr %571, align 8, !tbaa !56
  br label %596

596:                                              ; preds = %593, %590, %559
  %597 = load i64, ptr %52, align 8, !tbaa !55
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %599, label %.loopexit39

599:                                              ; preds = %596
  %600 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %527, i64 %536), !nosanitize !44
  %601 = extractvalue { i64, i1 } %600, 1, !nosanitize !44
  br i1 %601, label %.loopexit40, label %.preheader, !prof !45, !nosanitize !44

602:                                              ; preds = %521
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.preheader:                                       ; preds = %599, %670
  %603 = phi { i64, i1 } [ %671, %670 ], [ %600, %599 ]
  %604 = extractvalue { i64, i1 } %603, 0
  %605 = load i64, ptr %523, align 8, !tbaa !41
  %606 = icmp ugt i64 %604, %605
  br i1 %606, label %608, label %673

607:                                              ; preds = %534
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

608:                                              ; preds = %.preheader
  %609 = load ptr, ptr %524, align 8, !tbaa !40
  %610 = load ptr, ptr %506, align 8, !tbaa !98
  %611 = getelementptr inbounds nuw i8, ptr %610, i64 24
  %612 = load ptr, ptr %611, align 8, !tbaa !110
  %613 = load i64, ptr %516, align 8, !tbaa !116
  %614 = getelementptr inbounds nuw i8, ptr %612, i64 %613
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %609, ptr align 1 %614, i64 %605, i1 false)
  %615 = load i64, ptr %523, align 8, !tbaa !41
  store i64 %615, ptr %52, align 8, !tbaa !55
  %616 = load ptr, ptr %506, align 8, !tbaa !98
  %617 = getelementptr inbounds nuw i8, ptr %616, i64 68
  %618 = load i32, ptr %617, align 4, !tbaa !112
  %619 = icmp ne i32 %618, 0
  %620 = icmp ne i64 %615, 0
  %621 = select i1 %619, i1 %620, i1 false
  br i1 %621, label %622, label %626

622:                                              ; preds = %608
  %623 = load ptr, ptr %524, align 8, !tbaa !40
  %624 = load i64, ptr %525, align 8, !tbaa !57
  %625 = tail call i64 @crc32_z(i64 noundef %624, ptr noundef %623, i64 noundef %615) #11
  store i64 %625, ptr %525, align 8, !tbaa !57
  br label %626

626:                                              ; preds = %622, %608
  %627 = load i64, ptr %516, align 8, !tbaa !116
  %628 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %627, i64 %605), !nosanitize !44
  %629 = extractvalue { i64, i1 } %628, 1, !nosanitize !44
  br i1 %629, label %.loopexit, label %630, !prof !117, !nosanitize !44

.loopexit:                                        ; preds = %626, %555
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

630:                                              ; preds = %626
  %631 = extractvalue { i64, i1 } %628, 0, !nosanitize !44
  store i64 %631, ptr %516, align 8, !tbaa !116
  %632 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %632) #11
  %633 = getelementptr inbounds nuw i8, ptr %632, i64 40
  %634 = load i64, ptr %633, align 8, !tbaa !55
  %635 = load i32, ptr %43, align 8, !tbaa !105
  %636 = zext i32 %635 to i64
  %637 = tail call i64 @llvm.umin.i64(i64 %634, i64 %636)
  %638 = trunc nuw i64 %637 to i32
  %639 = icmp eq i64 %637, 0
  br i1 %639, label %667, label %640

640:                                              ; preds = %630
  %641 = load ptr, ptr %25, align 8, !tbaa !104
  %642 = getelementptr inbounds nuw i8, ptr %632, i64 32
  %643 = load ptr, ptr %642, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %641, ptr align 1 %643, i64 %637, i1 false)
  %644 = load ptr, ptr %25, align 8, !tbaa !104
  %645 = getelementptr inbounds nuw i8, ptr %644, i64 %637
  store ptr %645, ptr %25, align 8, !tbaa !104
  %646 = load ptr, ptr %642, align 8, !tbaa !56
  %647 = getelementptr inbounds nuw i8, ptr %646, i64 %637
  store ptr %647, ptr %642, align 8, !tbaa !56
  %648 = load i64, ptr %526, align 8, !tbaa !106
  %649 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %648, i64 %637), !nosanitize !44
  %650 = extractvalue { i64, i1 } %649, 1, !nosanitize !44
  br i1 %650, label %.loopexit36, label %651, !prof !117, !nosanitize !44

.loopexit36:                                      ; preds = %640, %569
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

651:                                              ; preds = %640
  %652 = extractvalue { i64, i1 } %649, 0, !nosanitize !44
  store i64 %652, ptr %526, align 8, !tbaa !106
  %653 = load i32, ptr %43, align 8, !tbaa !105
  %654 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %653, i32 %638), !nosanitize !44
  %655 = extractvalue { i32, i1 } %654, 1, !nosanitize !44
  br i1 %655, label %.loopexit37, label %656, !prof !117, !nosanitize !44

.loopexit37:                                      ; preds = %651, %580
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

656:                                              ; preds = %651
  %657 = extractvalue { i32, i1 } %654, 0, !nosanitize !44
  store i32 %657, ptr %43, align 8, !tbaa !105
  %658 = load i64, ptr %633, align 8, !tbaa !55
  %659 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %658, i64 %637), !nosanitize !44
  %660 = extractvalue { i64, i1 } %659, 1, !nosanitize !44
  br i1 %660, label %.loopexit38, label %661, !prof !117, !nosanitize !44

.loopexit38:                                      ; preds = %656, %585
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

661:                                              ; preds = %656
  %662 = extractvalue { i64, i1 } %659, 0, !nosanitize !44
  store i64 %662, ptr %633, align 8, !tbaa !55
  %663 = icmp eq i64 %662, 0
  br i1 %663, label %664, label %667

664:                                              ; preds = %661
  %665 = getelementptr inbounds nuw i8, ptr %632, i64 16
  %666 = load ptr, ptr %665, align 8, !tbaa !40
  store ptr %666, ptr %642, align 8, !tbaa !56
  br label %667

667:                                              ; preds = %664, %661, %630
  %668 = load i64, ptr %52, align 8, !tbaa !55
  %669 = icmp eq i64 %668, 0
  br i1 %669, label %670, label %.loopexit39

.loopexit39:                                      ; preds = %667, %596
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1196

670:                                              ; preds = %667
  %671 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %604, i64 %605), !nosanitize !44
  %672 = extractvalue { i64, i1 } %671, 1, !nosanitize !44
  br i1 %672, label %.loopexit40, label %.preheader, !prof !117, !llvm.loop !118, !nosanitize !44

.loopexit40:                                      ; preds = %670, %599
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

673:                                              ; preds = %.preheader
  %674 = load ptr, ptr %506, align 8, !tbaa !98
  %675 = getelementptr inbounds nuw i8, ptr %674, i64 24
  %676 = load ptr, ptr %675, align 8, !tbaa !110
  %677 = load i64, ptr %516, align 8, !tbaa !116
  br label %678

678:                                              ; preds = %673, %530
  %679 = phi i64 [ %517, %530 ], [ %677, %673 ]
  %680 = phi ptr [ %509, %530 ], [ %676, %673 ]
  %681 = phi i64 [ %522, %530 ], [ 0, %673 ]
  %682 = phi i64 [ %527, %530 ], [ %604, %673 ]
  %683 = load ptr, ptr %524, align 8, !tbaa !40
  %684 = getelementptr inbounds nuw i8, ptr %683, i64 %681
  %685 = getelementptr inbounds nuw i8, ptr %680, i64 %679
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %684, ptr align 1 %685, i64 %682, i1 false)
  %686 = load i64, ptr %52, align 8, !tbaa !55
  %687 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %686, i64 %682), !nosanitize !44
  %688 = extractvalue { i64, i1 } %687, 0, !nosanitize !44
  %689 = extractvalue { i64, i1 } %687, 1, !nosanitize !44
  br i1 %689, label %690, label %691, !prof !45, !nosanitize !44

690:                                              ; preds = %678
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

691:                                              ; preds = %678
  store i64 %688, ptr %52, align 8, !tbaa !55
  %692 = load ptr, ptr %506, align 8, !tbaa !98
  %693 = getelementptr inbounds nuw i8, ptr %692, i64 68
  %694 = load i32, ptr %693, align 4, !tbaa !112
  %695 = icmp ne i32 %694, 0
  %696 = icmp ugt i64 %688, %681
  %697 = select i1 %695, i1 %696, i1 false
  br i1 %697, label %698, label %704

698:                                              ; preds = %691
  %699 = sub nuw i64 %688, %681
  %700 = load ptr, ptr %524, align 8, !tbaa !40
  %701 = getelementptr inbounds nuw i8, ptr %700, i64 %681
  %702 = load i64, ptr %525, align 8, !tbaa !57
  %703 = tail call i64 @crc32_z(i64 noundef %702, ptr noundef %701, i64 noundef %699) #11
  store i64 %703, ptr %525, align 8, !tbaa !57
  br label %704

704:                                              ; preds = %698, %691
  store i64 0, ptr %516, align 8, !tbaa !116
  br label %705

705:                                              ; preds = %704, %505
  store i32 73, ptr %20, align 8, !tbaa !28
  br label %706

706:                                              ; preds = %705, %503
  %707 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %708 = load ptr, ptr %707, align 8, !tbaa !98
  %709 = getelementptr inbounds nuw i8, ptr %708, i64 40
  %710 = load ptr, ptr %709, align 8, !tbaa !109
  %711 = icmp eq ptr %710, null
  br i1 %711, label %817, label %712

712:                                              ; preds = %706
  %713 = load i64, ptr %52, align 8, !tbaa !55
  %714 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %715 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %716 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %717 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %718 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %719

719:                                              ; preds = %795, %712
  %720 = phi i64 [ %713, %712 ], [ %782, %795 ]
  %721 = load i64, ptr %52, align 8, !tbaa !55
  %722 = load i64, ptr %714, align 8, !tbaa !41
  %723 = icmp eq i64 %721, %722
  br i1 %723, label %724, label %780

724:                                              ; preds = %719
  %725 = load ptr, ptr %707, align 8, !tbaa !98
  %726 = getelementptr inbounds nuw i8, ptr %725, i64 68
  %727 = load i32, ptr %726, align 4, !tbaa !112
  %728 = icmp ne i32 %727, 0
  %729 = icmp ugt i64 %721, %720
  %730 = select i1 %728, i1 %729, i1 false
  br i1 %730, label %731, label %737

731:                                              ; preds = %724
  %732 = sub nuw i64 %721, %720
  %733 = load ptr, ptr %715, align 8, !tbaa !40
  %734 = getelementptr inbounds nuw i8, ptr %733, i64 %720
  %735 = load i64, ptr %716, align 8, !tbaa !57
  %736 = tail call i64 @crc32_z(i64 noundef %735, ptr noundef %734, i64 noundef %732) #11
  store i64 %736, ptr %716, align 8, !tbaa !57
  br label %737

737:                                              ; preds = %731, %724
  %738 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %738) #11
  %739 = getelementptr inbounds nuw i8, ptr %738, i64 40
  %740 = load i64, ptr %739, align 8, !tbaa !55
  %741 = load i32, ptr %43, align 8, !tbaa !105
  %742 = zext i32 %741 to i64
  %743 = tail call i64 @llvm.umin.i64(i64 %740, i64 %742)
  %744 = trunc nuw i64 %743 to i32
  %745 = icmp eq i64 %743, 0
  br i1 %745, label %776, label %746

746:                                              ; preds = %737
  %747 = load ptr, ptr %25, align 8, !tbaa !104
  %748 = getelementptr inbounds nuw i8, ptr %738, i64 32
  %749 = load ptr, ptr %748, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %747, ptr align 1 %749, i64 %743, i1 false)
  %750 = load ptr, ptr %25, align 8, !tbaa !104
  %751 = getelementptr inbounds nuw i8, ptr %750, i64 %743
  store ptr %751, ptr %25, align 8, !tbaa !104
  %752 = load ptr, ptr %748, align 8, !tbaa !56
  %753 = getelementptr inbounds nuw i8, ptr %752, i64 %743
  store ptr %753, ptr %748, align 8, !tbaa !56
  %754 = load i64, ptr %717, align 8, !tbaa !106
  %755 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %754, i64 %743), !nosanitize !44
  %756 = extractvalue { i64, i1 } %755, 1, !nosanitize !44
  br i1 %756, label %757, label %758, !prof !45, !nosanitize !44

757:                                              ; preds = %746
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

758:                                              ; preds = %746
  %759 = extractvalue { i64, i1 } %755, 0, !nosanitize !44
  store i64 %759, ptr %717, align 8, !tbaa !106
  %760 = load i32, ptr %43, align 8, !tbaa !105
  %761 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %760, i32 %744), !nosanitize !44
  %762 = extractvalue { i32, i1 } %761, 1, !nosanitize !44
  br i1 %762, label %763, label %764, !prof !45, !nosanitize !44

763:                                              ; preds = %758
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

764:                                              ; preds = %758
  %765 = extractvalue { i32, i1 } %761, 0, !nosanitize !44
  store i32 %765, ptr %43, align 8, !tbaa !105
  %766 = load i64, ptr %739, align 8, !tbaa !55
  %767 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %766, i64 %743), !nosanitize !44
  %768 = extractvalue { i64, i1 } %767, 1, !nosanitize !44
  br i1 %768, label %769, label %770, !prof !45, !nosanitize !44

769:                                              ; preds = %764
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

770:                                              ; preds = %764
  %771 = extractvalue { i64, i1 } %767, 0, !nosanitize !44
  store i64 %771, ptr %739, align 8, !tbaa !55
  %772 = icmp eq i64 %771, 0
  br i1 %772, label %773, label %776

773:                                              ; preds = %770
  %774 = getelementptr inbounds nuw i8, ptr %738, i64 16
  %775 = load ptr, ptr %774, align 8, !tbaa !40
  store ptr %775, ptr %748, align 8, !tbaa !56
  br label %776

776:                                              ; preds = %773, %770, %737
  %777 = load i64, ptr %52, align 8, !tbaa !55
  %778 = icmp eq i64 %777, 0
  br i1 %778, label %780, label %779

779:                                              ; preds = %776
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1196

780:                                              ; preds = %776, %719
  %781 = phi i64 [ %721, %719 ], [ 0, %776 ]
  %782 = phi i64 [ %720, %719 ], [ 0, %776 ]
  %783 = load i64, ptr %718, align 8, !tbaa !116
  %784 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %783, i64 1), !nosanitize !44
  %785 = extractvalue { i64, i1 } %784, 1, !nosanitize !44
  br i1 %785, label %786, label %787, !prof !45, !nosanitize !44

786:                                              ; preds = %780
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

787:                                              ; preds = %780
  %788 = extractvalue { i64, i1 } %784, 0, !nosanitize !44
  %789 = load ptr, ptr %707, align 8, !tbaa !98
  %790 = getelementptr inbounds nuw i8, ptr %789, i64 40
  %791 = load ptr, ptr %790, align 8, !tbaa !109
  store i64 %788, ptr %718, align 8, !tbaa !116
  %792 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %781, i64 1), !nosanitize !44
  %793 = extractvalue { i64, i1 } %792, 1, !nosanitize !44
  br i1 %793, label %794, label %795, !prof !45, !nosanitize !44

794:                                              ; preds = %787
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

795:                                              ; preds = %787
  %796 = extractvalue { i64, i1 } %792, 0, !nosanitize !44
  %797 = load ptr, ptr %715, align 8, !tbaa !40
  %798 = getelementptr inbounds nuw i8, ptr %791, i64 %783
  %799 = load i8, ptr %798, align 1, !tbaa !5
  store i64 %796, ptr %52, align 8, !tbaa !55
  %800 = getelementptr inbounds nuw i8, ptr %797, i64 %781
  store i8 %799, ptr %800, align 1, !tbaa !5
  %801 = icmp eq i8 %799, 0
  br i1 %801, label %802, label %719, !llvm.loop !120

802:                                              ; preds = %795
  %803 = load ptr, ptr %707, align 8, !tbaa !98
  %804 = getelementptr inbounds nuw i8, ptr %803, i64 68
  %805 = load i32, ptr %804, align 4, !tbaa !112
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %816, label %807

807:                                              ; preds = %802
  %808 = load i64, ptr %52, align 8, !tbaa !55
  %809 = icmp ugt i64 %808, %782
  br i1 %809, label %810, label %816

810:                                              ; preds = %807
  %811 = sub nuw i64 %808, %782
  %812 = load ptr, ptr %715, align 8, !tbaa !40
  %813 = getelementptr inbounds nuw i8, ptr %812, i64 %782
  %814 = load i64, ptr %716, align 8, !tbaa !57
  %815 = tail call i64 @crc32_z(i64 noundef %814, ptr noundef %813, i64 noundef %811) #11
  store i64 %815, ptr %716, align 8, !tbaa !57
  br label %816

816:                                              ; preds = %810, %807, %802
  store i64 0, ptr %718, align 8, !tbaa !116
  br label %817

817:                                              ; preds = %816, %706
  store i32 91, ptr %20, align 8, !tbaa !28
  br label %818

818:                                              ; preds = %817, %503
  %819 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %820 = load ptr, ptr %819, align 8, !tbaa !98
  %821 = getelementptr inbounds nuw i8, ptr %820, i64 56
  %822 = load ptr, ptr %821, align 8, !tbaa !107
  %823 = icmp eq ptr %822, null
  br i1 %823, label %928, label %824

824:                                              ; preds = %818
  %825 = load i64, ptr %52, align 8, !tbaa !55
  %826 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %827 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %828 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %829 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %830 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %831

831:                                              ; preds = %907, %824
  %832 = phi i64 [ %825, %824 ], [ %894, %907 ]
  %833 = load i64, ptr %52, align 8, !tbaa !55
  %834 = load i64, ptr %826, align 8, !tbaa !41
  %835 = icmp eq i64 %833, %834
  br i1 %835, label %836, label %892

836:                                              ; preds = %831
  %837 = load ptr, ptr %819, align 8, !tbaa !98
  %838 = getelementptr inbounds nuw i8, ptr %837, i64 68
  %839 = load i32, ptr %838, align 4, !tbaa !112
  %840 = icmp ne i32 %839, 0
  %841 = icmp ugt i64 %833, %832
  %842 = select i1 %840, i1 %841, i1 false
  br i1 %842, label %843, label %849

843:                                              ; preds = %836
  %844 = sub nuw i64 %833, %832
  %845 = load ptr, ptr %827, align 8, !tbaa !40
  %846 = getelementptr inbounds nuw i8, ptr %845, i64 %832
  %847 = load i64, ptr %828, align 8, !tbaa !57
  %848 = tail call i64 @crc32_z(i64 noundef %847, ptr noundef %846, i64 noundef %844) #11
  store i64 %848, ptr %828, align 8, !tbaa !57
  br label %849

849:                                              ; preds = %843, %836
  %850 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %850) #11
  %851 = getelementptr inbounds nuw i8, ptr %850, i64 40
  %852 = load i64, ptr %851, align 8, !tbaa !55
  %853 = load i32, ptr %43, align 8, !tbaa !105
  %854 = zext i32 %853 to i64
  %855 = tail call i64 @llvm.umin.i64(i64 %852, i64 %854)
  %856 = trunc nuw i64 %855 to i32
  %857 = icmp eq i64 %855, 0
  br i1 %857, label %888, label %858

858:                                              ; preds = %849
  %859 = load ptr, ptr %25, align 8, !tbaa !104
  %860 = getelementptr inbounds nuw i8, ptr %850, i64 32
  %861 = load ptr, ptr %860, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %859, ptr align 1 %861, i64 %855, i1 false)
  %862 = load ptr, ptr %25, align 8, !tbaa !104
  %863 = getelementptr inbounds nuw i8, ptr %862, i64 %855
  store ptr %863, ptr %25, align 8, !tbaa !104
  %864 = load ptr, ptr %860, align 8, !tbaa !56
  %865 = getelementptr inbounds nuw i8, ptr %864, i64 %855
  store ptr %865, ptr %860, align 8, !tbaa !56
  %866 = load i64, ptr %829, align 8, !tbaa !106
  %867 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %866, i64 %855), !nosanitize !44
  %868 = extractvalue { i64, i1 } %867, 1, !nosanitize !44
  br i1 %868, label %869, label %870, !prof !45, !nosanitize !44

869:                                              ; preds = %858
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

870:                                              ; preds = %858
  %871 = extractvalue { i64, i1 } %867, 0, !nosanitize !44
  store i64 %871, ptr %829, align 8, !tbaa !106
  %872 = load i32, ptr %43, align 8, !tbaa !105
  %873 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %872, i32 %856), !nosanitize !44
  %874 = extractvalue { i32, i1 } %873, 1, !nosanitize !44
  br i1 %874, label %875, label %876, !prof !45, !nosanitize !44

875:                                              ; preds = %870
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

876:                                              ; preds = %870
  %877 = extractvalue { i32, i1 } %873, 0, !nosanitize !44
  store i32 %877, ptr %43, align 8, !tbaa !105
  %878 = load i64, ptr %851, align 8, !tbaa !55
  %879 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %878, i64 %855), !nosanitize !44
  %880 = extractvalue { i64, i1 } %879, 1, !nosanitize !44
  br i1 %880, label %881, label %882, !prof !45, !nosanitize !44

881:                                              ; preds = %876
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

882:                                              ; preds = %876
  %883 = extractvalue { i64, i1 } %879, 0, !nosanitize !44
  store i64 %883, ptr %851, align 8, !tbaa !55
  %884 = icmp eq i64 %883, 0
  br i1 %884, label %885, label %888

885:                                              ; preds = %882
  %886 = getelementptr inbounds nuw i8, ptr %850, i64 16
  %887 = load ptr, ptr %886, align 8, !tbaa !40
  store ptr %887, ptr %860, align 8, !tbaa !56
  br label %888

888:                                              ; preds = %885, %882, %849
  %889 = load i64, ptr %52, align 8, !tbaa !55
  %890 = icmp eq i64 %889, 0
  br i1 %890, label %892, label %891

891:                                              ; preds = %888
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1196

892:                                              ; preds = %888, %831
  %893 = phi i64 [ %833, %831 ], [ 0, %888 ]
  %894 = phi i64 [ %832, %831 ], [ 0, %888 ]
  %895 = load i64, ptr %830, align 8, !tbaa !116
  %896 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %895, i64 1), !nosanitize !44
  %897 = extractvalue { i64, i1 } %896, 1, !nosanitize !44
  br i1 %897, label %898, label %899, !prof !45, !nosanitize !44

898:                                              ; preds = %892
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

899:                                              ; preds = %892
  %900 = extractvalue { i64, i1 } %896, 0, !nosanitize !44
  %901 = load ptr, ptr %819, align 8, !tbaa !98
  %902 = getelementptr inbounds nuw i8, ptr %901, i64 56
  %903 = load ptr, ptr %902, align 8, !tbaa !107
  store i64 %900, ptr %830, align 8, !tbaa !116
  %904 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %893, i64 1), !nosanitize !44
  %905 = extractvalue { i64, i1 } %904, 1, !nosanitize !44
  br i1 %905, label %906, label %907, !prof !45, !nosanitize !44

906:                                              ; preds = %899
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

907:                                              ; preds = %899
  %908 = extractvalue { i64, i1 } %904, 0, !nosanitize !44
  %909 = load ptr, ptr %827, align 8, !tbaa !40
  %910 = getelementptr inbounds nuw i8, ptr %903, i64 %895
  %911 = load i8, ptr %910, align 1, !tbaa !5
  store i64 %908, ptr %52, align 8, !tbaa !55
  %912 = getelementptr inbounds nuw i8, ptr %909, i64 %893
  store i8 %911, ptr %912, align 1, !tbaa !5
  %913 = icmp eq i8 %911, 0
  br i1 %913, label %914, label %831, !llvm.loop !121

914:                                              ; preds = %907
  %915 = load ptr, ptr %819, align 8, !tbaa !98
  %916 = getelementptr inbounds nuw i8, ptr %915, i64 68
  %917 = load i32, ptr %916, align 4, !tbaa !112
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %928, label %919

919:                                              ; preds = %914
  %920 = load i64, ptr %52, align 8, !tbaa !55
  %921 = icmp ugt i64 %920, %894
  br i1 %921, label %922, label %928

922:                                              ; preds = %919
  %923 = sub nuw i64 %920, %894
  %924 = load ptr, ptr %827, align 8, !tbaa !40
  %925 = getelementptr inbounds nuw i8, ptr %924, i64 %894
  %926 = load i64, ptr %828, align 8, !tbaa !57
  %927 = tail call i64 @crc32_z(i64 noundef %926, ptr noundef %925, i64 noundef %923) #11
  store i64 %927, ptr %828, align 8, !tbaa !57
  br label %928

928:                                              ; preds = %922, %919, %914, %818
  store i32 103, ptr %20, align 8, !tbaa !28
  br label %929

929:                                              ; preds = %928, %503
  %930 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %931 = load ptr, ptr %930, align 8, !tbaa !98
  %932 = getelementptr inbounds nuw i8, ptr %931, i64 68
  %933 = load i32, ptr %932, align 4, !tbaa !112
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %970, label %935

935:                                              ; preds = %929
  %936 = load i64, ptr %52, align 8, !tbaa !55
  %937 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %936, i64 2), !nosanitize !44
  %938 = extractvalue { i64, i1 } %937, 1, !nosanitize !44
  br i1 %938, label %939, label %940, !prof !45, !nosanitize !44

939:                                              ; preds = %935
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

940:                                              ; preds = %935
  %941 = extractvalue { i64, i1 } %937, 0, !nosanitize !44
  %942 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %943 = load i64, ptr %942, align 8, !tbaa !41
  %944 = icmp ugt i64 %941, %943
  br i1 %944, label %945, label %949

945:                                              ; preds = %940
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %946 = load i64, ptr %52, align 8, !tbaa !55
  %947 = icmp eq i64 %946, 0
  br i1 %947, label %949, label %948

948:                                              ; preds = %945
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1196

949:                                              ; preds = %945, %940
  %950 = phi i64 [ 0, %945 ], [ %936, %940 ]
  %951 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %952 = add nuw i64 %950, 1
  %953 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %954 = load ptr, ptr %953, align 8, !tbaa !40
  %955 = load i64, ptr %951, align 8, !tbaa !57
  %956 = trunc i64 %955 to i8
  store i64 %952, ptr %52, align 8, !tbaa !55
  %957 = getelementptr inbounds nuw i8, ptr %954, i64 %950
  store i8 %956, ptr %957, align 1, !tbaa !5
  %958 = load i64, ptr %52, align 8, !tbaa !55
  %959 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %958, i64 1), !nosanitize !44
  %960 = extractvalue { i64, i1 } %959, 1, !nosanitize !44
  br i1 %960, label %961, label %962, !prof !45, !nosanitize !44

961:                                              ; preds = %949
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

962:                                              ; preds = %949
  %963 = extractvalue { i64, i1 } %959, 0, !nosanitize !44
  %964 = load ptr, ptr %953, align 8, !tbaa !40
  %965 = load i64, ptr %951, align 8, !tbaa !57
  %966 = lshr i64 %965, 8
  %967 = trunc i64 %966 to i8
  store i64 %963, ptr %52, align 8, !tbaa !55
  %968 = getelementptr inbounds nuw i8, ptr %964, i64 %958
  store i8 %967, ptr %968, align 1, !tbaa !5
  %969 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %969, ptr %951, align 8, !tbaa !57
  br label %970

970:                                              ; preds = %962, %929
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %971 = load i64, ptr %52, align 8, !tbaa !55
  %972 = icmp eq i64 %971, 0
  br i1 %972, label %974, label %973

973:                                              ; preds = %970
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1196

974:                                              ; preds = %970, %503, %136
  %975 = load i32, ptr %29, align 8, !tbaa !79
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %977, label %986

977:                                              ; preds = %974, %126
  %978 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %979 = load i32, ptr %978, align 4, !tbaa !73
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %981, label %986

981:                                              ; preds = %977
  %982 = icmp eq i32 %1, 0
  br i1 %982, label %1196, label %983

983:                                              ; preds = %981
  %984 = load i32, ptr %20, align 8, !tbaa !28
  %985 = icmp eq i32 %984, 666
  br i1 %985, label %1047, label %986

986:                                              ; preds = %983, %977, %974
  %987 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %988 = load i32, ptr %987, align 4, !tbaa !47
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %990, label %992

990:                                              ; preds = %986
  %991 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %1004

992:                                              ; preds = %986
  %993 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %994 = load i32, ptr %993, align 8, !tbaa !48
  switch i32 %994, label %999 [
    i32 2, label %995
    i32 3, label %997
  ]

995:                                              ; preds = %992
  %996 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %1004

997:                                              ; preds = %992
  %998 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %1004

999:                                              ; preds = %992
  %1000 = sext i32 %988 to i64
  %.split = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %1000
  %1001 = getelementptr inbounds nuw i8, ptr %.split, i64 8
  %1002 = load ptr, ptr %1001, align 8, !tbaa !103
  %1003 = tail call i32 %1002(ptr noundef nonnull %14, i32 noundef %1) #11
  br label %1004

1004:                                             ; preds = %999, %997, %995, %990
  %1005 = phi i32 [ %991, %990 ], [ %996, %995 ], [ %998, %997 ], [ %1003, %999 ]
  %1006 = and i32 %1005, -2
  %1007 = icmp eq i32 %1006, 2
  br i1 %1007, label %1008, label %1009

1008:                                             ; preds = %1004
  store i32 666, ptr %20, align 8, !tbaa !28
  br label %1009

1009:                                             ; preds = %1008, %1004
  %1010 = and i32 %1005, -3
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1012, label %1016

1012:                                             ; preds = %1009
  %1013 = load i32, ptr %43, align 8, !tbaa !105
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1015, label %1196

1015:                                             ; preds = %1012
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1196

1016:                                             ; preds = %1009
  %1017 = icmp eq i32 %1005, 1
  br i1 %1017, label %1018, label %1047

1018:                                             ; preds = %1016
  switch i32 %1, label %1020 [
    i32 1, label %1019
    i32 5, label %1043
  ]

1019:                                             ; preds = %1018
  tail call void @_tr_align(ptr noundef nonnull %14) #11
  br label %1043

1020:                                             ; preds = %1018
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %1021 = icmp eq i32 %1, 3
  br i1 %1021, label %1022, label %1043

1022:                                             ; preds = %1020
  %1023 = getelementptr inbounds nuw i8, ptr %14, i64 132
  %1024 = load i32, ptr %1023, align 4, !tbaa !36
  %1025 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1024, i32 1), !nosanitize !44
  %1026 = extractvalue { i32, i1 } %1025, 1, !nosanitize !44
  br i1 %1026, label %1027, label %1028, !prof !45, !nosanitize !44

1027:                                             ; preds = %1022
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1028:                                             ; preds = %1022
  %1029 = extractvalue { i32, i1 } %1025, 0, !nosanitize !44
  %1030 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %1031 = load ptr, ptr %1030, align 8, !tbaa !37
  %1032 = zext i32 %1029 to i64
  %1033 = getelementptr inbounds nuw [2 x i8], ptr %1031, i64 %1032
  store i16 0, ptr %1033, align 2, !tbaa !60
  %1034 = shl nuw nsw i64 %1032, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1031, i8 0, i64 %1034, i1 false)
  %1035 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %1035, align 8, !tbaa !61
  %1036 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %1037 = load i32, ptr %1036, align 4, !tbaa !73
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1039, label %1043

1039:                                             ; preds = %1028
  %1040 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %1040, align 4, !tbaa !71
  %1041 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %1041, align 8, !tbaa !72
  %1042 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %1042, align 4, !tbaa !74
  br label %1043

1043:                                             ; preds = %1039, %1028, %1020, %1019, %1018
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1044 = load i32, ptr %43, align 8, !tbaa !105
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1046, label %1047

1046:                                             ; preds = %1043
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1196

1047:                                             ; preds = %1043, %1016, %983
  br i1 %37, label %1196, label %1048

1048:                                             ; preds = %1047
  %1049 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %1050 = load i32, ptr %1049, align 8, !tbaa !29
  %1051 = icmp slt i32 %1050, 1
  br i1 %1051, label %1196, label %1052

1052:                                             ; preds = %1048
  %1053 = icmp eq i32 %1050, 2
  %1054 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1053, label %1055, label %1144

1055:                                             ; preds = %1052
  %1056 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1057 = load i64, ptr %52, align 8, !tbaa !55
  %1058 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1057, i64 1), !nosanitize !44
  %1059 = extractvalue { i64, i1 } %1058, 1, !nosanitize !44
  br i1 %1059, label %1060, label %1061, !prof !45, !nosanitize !44

1060:                                             ; preds = %1055
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1061:                                             ; preds = %1055
  %1062 = extractvalue { i64, i1 } %1058, 0, !nosanitize !44
  %1063 = load ptr, ptr %1056, align 8, !tbaa !40
  %1064 = load i64, ptr %1054, align 8, !tbaa !57
  %1065 = trunc i64 %1064 to i8
  store i64 %1062, ptr %52, align 8, !tbaa !55
  %1066 = getelementptr inbounds nuw i8, ptr %1063, i64 %1057
  store i8 %1065, ptr %1066, align 1, !tbaa !5
  %1067 = load i64, ptr %52, align 8, !tbaa !55
  %1068 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1067, i64 1), !nosanitize !44
  %1069 = extractvalue { i64, i1 } %1068, 1, !nosanitize !44
  br i1 %1069, label %1070, label %1071, !prof !45, !nosanitize !44

1070:                                             ; preds = %1061
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1071:                                             ; preds = %1061
  %1072 = extractvalue { i64, i1 } %1068, 0, !nosanitize !44
  %1073 = load ptr, ptr %1056, align 8, !tbaa !40
  %1074 = load i64, ptr %1054, align 8, !tbaa !57
  %1075 = lshr i64 %1074, 8
  %1076 = trunc i64 %1075 to i8
  store i64 %1072, ptr %52, align 8, !tbaa !55
  %1077 = getelementptr inbounds nuw i8, ptr %1073, i64 %1067
  store i8 %1076, ptr %1077, align 1, !tbaa !5
  %1078 = load i64, ptr %52, align 8, !tbaa !55
  %1079 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1078, i64 1), !nosanitize !44
  %1080 = extractvalue { i64, i1 } %1079, 1, !nosanitize !44
  br i1 %1080, label %1081, label %1082, !prof !45, !nosanitize !44

1081:                                             ; preds = %1071
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1082:                                             ; preds = %1071
  %1083 = extractvalue { i64, i1 } %1079, 0, !nosanitize !44
  %1084 = load ptr, ptr %1056, align 8, !tbaa !40
  %1085 = load i64, ptr %1054, align 8, !tbaa !57
  %1086 = lshr i64 %1085, 16
  %1087 = trunc i64 %1086 to i8
  store i64 %1083, ptr %52, align 8, !tbaa !55
  %1088 = getelementptr inbounds nuw i8, ptr %1084, i64 %1078
  store i8 %1087, ptr %1088, align 1, !tbaa !5
  %1089 = load i64, ptr %52, align 8, !tbaa !55
  %1090 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1089, i64 1), !nosanitize !44
  %1091 = extractvalue { i64, i1 } %1090, 1, !nosanitize !44
  br i1 %1091, label %1092, label %1093, !prof !45, !nosanitize !44

1092:                                             ; preds = %1082
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1093:                                             ; preds = %1082
  %1094 = extractvalue { i64, i1 } %1090, 0, !nosanitize !44
  %1095 = load ptr, ptr %1056, align 8, !tbaa !40
  %1096 = load i64, ptr %1054, align 8, !tbaa !57
  %1097 = lshr i64 %1096, 24
  %1098 = trunc i64 %1097 to i8
  store i64 %1094, ptr %52, align 8, !tbaa !55
  %1099 = getelementptr inbounds nuw i8, ptr %1095, i64 %1089
  store i8 %1098, ptr %1099, align 1, !tbaa !5
  %1100 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1101 = load i64, ptr %52, align 8, !tbaa !55
  %1102 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1101, i64 1), !nosanitize !44
  %1103 = extractvalue { i64, i1 } %1102, 1, !nosanitize !44
  br i1 %1103, label %1104, label %1105, !prof !45, !nosanitize !44

1104:                                             ; preds = %1093
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1105:                                             ; preds = %1093
  %1106 = extractvalue { i64, i1 } %1102, 0, !nosanitize !44
  %1107 = load ptr, ptr %1056, align 8, !tbaa !40
  %1108 = load i64, ptr %1100, align 8, !tbaa !53
  %1109 = trunc i64 %1108 to i8
  store i64 %1106, ptr %52, align 8, !tbaa !55
  %1110 = getelementptr inbounds nuw i8, ptr %1107, i64 %1101
  store i8 %1109, ptr %1110, align 1, !tbaa !5
  %1111 = load i64, ptr %52, align 8, !tbaa !55
  %1112 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1111, i64 1), !nosanitize !44
  %1113 = extractvalue { i64, i1 } %1112, 1, !nosanitize !44
  br i1 %1113, label %1114, label %1115, !prof !45, !nosanitize !44

1114:                                             ; preds = %1105
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1115:                                             ; preds = %1105
  %1116 = extractvalue { i64, i1 } %1112, 0, !nosanitize !44
  %1117 = load ptr, ptr %1056, align 8, !tbaa !40
  %1118 = load i64, ptr %1100, align 8, !tbaa !53
  %1119 = lshr i64 %1118, 8
  %1120 = trunc i64 %1119 to i8
  store i64 %1116, ptr %52, align 8, !tbaa !55
  %1121 = getelementptr inbounds nuw i8, ptr %1117, i64 %1111
  store i8 %1120, ptr %1121, align 1, !tbaa !5
  %1122 = load i64, ptr %52, align 8, !tbaa !55
  %1123 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1122, i64 1), !nosanitize !44
  %1124 = extractvalue { i64, i1 } %1123, 1, !nosanitize !44
  br i1 %1124, label %1125, label %1126, !prof !45, !nosanitize !44

1125:                                             ; preds = %1115
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1126:                                             ; preds = %1115
  %1127 = extractvalue { i64, i1 } %1123, 0, !nosanitize !44
  %1128 = load ptr, ptr %1056, align 8, !tbaa !40
  %1129 = load i64, ptr %1100, align 8, !tbaa !53
  %1130 = lshr i64 %1129, 16
  %1131 = trunc i64 %1130 to i8
  store i64 %1127, ptr %52, align 8, !tbaa !55
  %1132 = getelementptr inbounds nuw i8, ptr %1128, i64 %1122
  store i8 %1131, ptr %1132, align 1, !tbaa !5
  %1133 = load i64, ptr %52, align 8, !tbaa !55
  %1134 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1133, i64 1), !nosanitize !44
  %1135 = extractvalue { i64, i1 } %1134, 1, !nosanitize !44
  br i1 %1135, label %1136, label %1137, !prof !45, !nosanitize !44

1136:                                             ; preds = %1126
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1137:                                             ; preds = %1126
  %1138 = extractvalue { i64, i1 } %1134, 0, !nosanitize !44
  %1139 = load ptr, ptr %1056, align 8, !tbaa !40
  %1140 = load i64, ptr %1100, align 8, !tbaa !53
  %1141 = lshr i64 %1140, 24
  %1142 = trunc i64 %1141 to i8
  store i64 %1138, ptr %52, align 8, !tbaa !55
  %1143 = getelementptr inbounds nuw i8, ptr %1139, i64 %1133
  store i8 %1142, ptr %1143, align 1, !tbaa !5
  br label %1187

1144:                                             ; preds = %1052
  %1145 = load i64, ptr %1054, align 8, !tbaa !57
  %1146 = lshr i64 %1145, 16
  %1147 = load i64, ptr %52, align 8, !tbaa !55
  %1148 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1147, i64 1), !nosanitize !44
  %1149 = extractvalue { i64, i1 } %1148, 1, !nosanitize !44
  br i1 %1149, label %1150, label %1151, !prof !45, !nosanitize !44

1150:                                             ; preds = %1144
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1151:                                             ; preds = %1144
  %1152 = extractvalue { i64, i1 } %1148, 0, !nosanitize !44
  %1153 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1154 = load ptr, ptr %1153, align 8, !tbaa !40
  %1155 = lshr i64 %1145, 24
  %1156 = trunc i64 %1155 to i8
  store i64 %1152, ptr %52, align 8, !tbaa !55
  %1157 = getelementptr inbounds nuw i8, ptr %1154, i64 %1147
  store i8 %1156, ptr %1157, align 1, !tbaa !5
  %1158 = load i64, ptr %52, align 8, !tbaa !55
  %1159 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1158, i64 1), !nosanitize !44
  %1160 = extractvalue { i64, i1 } %1159, 1, !nosanitize !44
  br i1 %1160, label %1161, label %1162, !prof !45, !nosanitize !44

1161:                                             ; preds = %1151
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1162:                                             ; preds = %1151
  %1163 = extractvalue { i64, i1 } %1159, 0, !nosanitize !44
  %1164 = load ptr, ptr %1153, align 8, !tbaa !40
  %1165 = trunc i64 %1146 to i8
  store i64 %1163, ptr %52, align 8, !tbaa !55
  %1166 = getelementptr inbounds nuw i8, ptr %1164, i64 %1158
  store i8 %1165, ptr %1166, align 1, !tbaa !5
  %1167 = load i64, ptr %1054, align 8, !tbaa !57
  %1168 = trunc i64 %1167 to i8
  %1169 = load i64, ptr %52, align 8, !tbaa !55
  %1170 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1169, i64 1), !nosanitize !44
  %1171 = extractvalue { i64, i1 } %1170, 1, !nosanitize !44
  br i1 %1171, label %1172, label %1173, !prof !45, !nosanitize !44

1172:                                             ; preds = %1162
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1173:                                             ; preds = %1162
  %1174 = extractvalue { i64, i1 } %1170, 0, !nosanitize !44
  %1175 = load ptr, ptr %1153, align 8, !tbaa !40
  %1176 = lshr i64 %1167, 8
  %1177 = trunc i64 %1176 to i8
  store i64 %1174, ptr %52, align 8, !tbaa !55
  %1178 = getelementptr inbounds nuw i8, ptr %1175, i64 %1169
  store i8 %1177, ptr %1178, align 1, !tbaa !5
  %1179 = load i64, ptr %52, align 8, !tbaa !55
  %1180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1179, i64 1), !nosanitize !44
  %1181 = extractvalue { i64, i1 } %1180, 1, !nosanitize !44
  br i1 %1181, label %1182, label %1183, !prof !45, !nosanitize !44

1182:                                             ; preds = %1173
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1183:                                             ; preds = %1173
  %1184 = extractvalue { i64, i1 } %1180, 0, !nosanitize !44
  %1185 = load ptr, ptr %1153, align 8, !tbaa !40
  store i64 %1184, ptr %52, align 8, !tbaa !55
  %1186 = getelementptr inbounds nuw i8, ptr %1185, i64 %1179
  store i8 %1168, ptr %1186, align 1, !tbaa !5
  br label %1187

1187:                                             ; preds = %1183, %1137
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1188 = load i32, ptr %1049, align 8, !tbaa !29
  %1189 = icmp sgt i32 %1188, 0
  br i1 %1189, label %1190, label %1192

1190:                                             ; preds = %1187
  %1191 = sub nsw i32 0, %1188
  store i32 %1191, ptr %1049, align 8, !tbaa !29
  br label %1192

1192:                                             ; preds = %1190, %1187
  %1193 = load i64, ptr %52, align 8, !tbaa !55
  %1194 = icmp eq i64 %1193, 0
  %1195 = zext i1 %1194 to i32
  br label %1196

1196:                                             ; preds = %1192, %1048, %1047, %1046, %1015, %1012, %981, %973, %948, %891, %779, %.loopexit39, %346, %240, %129, %120, %99, %46, %39, %22, %19, %16, %12, %8, %4, %2
  %1197 = phi i32 [ -2, %39 ], [ -5, %46 ], [ 0, %99 ], [ -5, %129 ], [ 0, %346 ], [ 0, %948 ], [ 0, %973 ], [ %1195, %1192 ], [ 0, %240 ], [ -5, %120 ], [ -2, %22 ], [ 0, %779 ], [ 0, %891 ], [ 0, %1047 ], [ 1, %1048 ], [ 0, %1012 ], [ 0, %1015 ], [ 0, %1046 ], [ 0, %.loopexit39 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ], [ 0, %981 ]
  ret i32 %1197
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @slide_hash(ptr noundef nonnull captures(none) %0) unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %8
  %.not.not = icmp eq i32 %5, 0
  br i1 %.not.not, label %.split.us, label %.split.preheader, !prof !45, !nosanitize !44

.split.preheader:                                 ; preds = %1
  %min.iters.check = icmp ult i32 %5, 8
  br i1 %min.iters.check, label %.split.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.split.preheader
  %n.vec = and i64 %8, 4294967288
  %10 = mul nsw i64 %n.vec, -2
  %11 = getelementptr i8, ptr %9, i64 %10
  %.cast = trunc nuw i64 %n.vec to i32
  %12 = sub i32 %5, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %3, i64 0
  %13 = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %9, i64 %offset.idx
  %14 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.load = load <8 x i16>, ptr %14, align 2, !tbaa !60
  %15 = zext <8 x i16> %wide.load to <8 x i32>
  %16 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %15, <8 x i32> %13)
  %reverse11 = trunc nuw <8 x i32> %16 to <8 x i16>
  store <8 x i16> %reverse11, ptr %14, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %17 = icmp eq i64 %index.next, %n.vec
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %8
  br i1 %cmp.n, label %.loopexit33, label %.split.preheader35

.split.preheader35:                               ; preds = %.split.preheader, %middle.block
  %.ph36 = phi ptr [ %9, %.split.preheader ], [ %11, %middle.block ]
  %.ph37 = phi i32 [ %5, %.split.preheader ], [ %12, %middle.block ]
  br label %.split

.split.us:                                        ; preds = %1
  %18 = getelementptr inbounds i8, ptr %9, i64 -2
  %19 = load i16, ptr %18, align 2, !tbaa !60
  %20 = zext i16 %19 to i32
  %21 = tail call i32 @llvm.usub.sat.i32(i32 %20, i32 %3)
  %22 = trunc nuw i32 %21 to i16
  store i16 %22, ptr %18, align 2, !tbaa !60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split:                                           ; preds = %.split.preheader35, %.split
  %23 = phi ptr [ %25, %.split ], [ %.ph36, %.split.preheader35 ]
  %24 = phi i32 [ %30, %.split ], [ %.ph37, %.split.preheader35 ]
  %25 = getelementptr inbounds i8, ptr %23, i64 -2
  %26 = load i16, ptr %25, align 2, !tbaa !60
  %27 = zext i16 %26 to i32
  %28 = tail call i32 @llvm.usub.sat.i32(i32 %27, i32 %3)
  %29 = trunc nuw i32 %28 to i16
  store i16 %29, ptr %25, align 2, !tbaa !60
  %30 = add i32 %24, -1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %.loopexit33, label %.split, !llvm.loop !124

.loopexit33:                                      ; preds = %.split, %middle.block
  %.not.not10 = icmp eq i32 %3, 0
  br i1 %.not.not10, label %.split5.us, label %.split5, !prof !45, !nosanitize !44

.split5.us:                                       ; preds = %.loopexit33
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split5:                                          ; preds = %.loopexit33
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = zext i32 %3 to i64
  %35 = getelementptr inbounds nuw [2 x i8], ptr %33, i64 %34
  %min.iters.check14 = icmp ult i32 %3, 8
  br i1 %min.iters.check14, label %scalar.ph13.preheader, label %vector.ph15

vector.ph15:                                      ; preds = %.split5
  %n.vec17 = and i64 %34, 4294967288
  %36 = mul nsw i64 %n.vec17, -2
  %37 = getelementptr i8, ptr %35, i64 %36
  %.cast18 = trunc nuw i64 %n.vec17 to i32
  %38 = sub i32 %3, %.cast18
  %broadcast.splatinsert19 = insertelement <8 x i32> poison, i32 %3, i64 0
  %39 = shufflevector <8 x i32> %broadcast.splatinsert19, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph15
  %index22 = phi i64 [ 0, %vector.ph15 ], [ %index.next28, %vector.body21 ]
  %offset.idx23 = mul i64 %index22, -2
  %next.gep24 = getelementptr i8, ptr %35, i64 %offset.idx23
  %40 = getelementptr inbounds i8, ptr %next.gep24, i64 -16
  %wide.load25 = load <8 x i16>, ptr %40, align 2, !tbaa !60
  %41 = zext <8 x i16> %wide.load25 to <8 x i32>
  %42 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %41, <8 x i32> %39)
  %reverse27 = trunc nuw <8 x i32> %42 to <8 x i16>
  store <8 x i16> %reverse27, ptr %40, align 2, !tbaa !60
  %index.next28 = add nuw i64 %index22, 8
  %43 = icmp eq i64 %index.next28, %n.vec17
  br i1 %43, label %middle.block29, label %vector.body21, !llvm.loop !125

middle.block29:                                   ; preds = %vector.body21
  %cmp.n30 = icmp eq i64 %n.vec17, %34
  br i1 %cmp.n30, label %.loopexit, label %scalar.ph13.preheader

scalar.ph13.preheader:                            ; preds = %.split5, %middle.block29
  %.ph = phi ptr [ %35, %.split5 ], [ %37, %middle.block29 ]
  %.ph34 = phi i32 [ %3, %.split5 ], [ %38, %middle.block29 ]
  br label %scalar.ph13

scalar.ph13:                                      ; preds = %scalar.ph13.preheader, %scalar.ph13
  %44 = phi ptr [ %46, %scalar.ph13 ], [ %.ph, %scalar.ph13.preheader ]
  %45 = phi i32 [ %51, %scalar.ph13 ], [ %.ph34, %scalar.ph13.preheader ]
  %46 = getelementptr inbounds i8, ptr %44, i64 -2
  %47 = load i16, ptr %46, align 2, !tbaa !60
  %48 = zext i16 %47 to i32
  %49 = tail call i32 @llvm.usub.sat.i32(i32 %48, i32 %3)
  %50 = trunc nuw i32 %49 to i16
  store i16 %50, ptr %46, align 2, !tbaa !60
  %51 = add i32 %45, -1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %.loopexit, label %scalar.ph13, !llvm.loop !126

.loopexit:                                        ; preds = %scalar.ph13, %middle.block29
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i32 1, ptr %53, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateTune(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !19
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %24 = load i32, ptr %23, align 8, !tbaa !28
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
  %26 = getelementptr inbounds nuw i8, ptr %17, i64 204
  store i32 %1, ptr %26, align 4, !tbaa !66
  %27 = getelementptr inbounds nuw i8, ptr %17, i64 192
  store i32 %2, ptr %27, align 8, !tbaa !64
  %28 = getelementptr inbounds nuw i8, ptr %17, i64 208
  store i32 %3, ptr %28, align 8, !tbaa !68
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 188
  store i32 %4, ptr %29, align 4, !tbaa !70
  br label %30

30:                                               ; preds = %25, %22, %19, %15, %11, %7, %5
  %31 = phi i32 [ 0, %25 ], [ -2, %11 ], [ -2, %7 ], [ -2, %5 ], [ -2, %22 ], [ -2, %19 ], [ -2, %15 ]
  ret i32 %31
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound_z(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !44
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !44
  br i1 %5, label %6, label %7, !prof !45, !nosanitize !44

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !44
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !44
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !44
  br i1 %11, label %12, label %13, !prof !45, !nosanitize !44

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !44
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !44
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !44
  br i1 %17, label %18, label %19, !prof !45, !nosanitize !44

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !44
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !44
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !44
  br i1 %22, label %23, label %24, !prof !45, !nosanitize !44

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !44
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !44
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !44
  br i1 %30, label %31, label %32, !prof !45, !nosanitize !44

31:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !44
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !44
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !44
  br i1 %36, label %37, label %38, !prof !45, !nosanitize !44

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !44
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !44
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !44
  br i1 %42, label %43, label %44, !prof !45, !nosanitize !44

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !44
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !44
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !44
  br i1 %47, label %48, label %49, !prof !45, !nosanitize !44

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

49:                                               ; preds = %44
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !44
  %51 = icmp ult i64 %50, %1
  %52 = select i1 %51, i64 -1, i64 %50
  %53 = icmp eq ptr %0, null
  br i1 %53, label %72, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %56 = load ptr, ptr %55, align 8, !tbaa !15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %60 = load ptr, ptr %59, align 8, !tbaa !17
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %64 = load ptr, ptr %63, align 8, !tbaa !18
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %64, align 8, !tbaa !19
  %68 = icmp eq ptr %67, %0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %71 = load i32, ptr %70, align 8, !tbaa !28
  switch i32 %71, label %72 [
    i32 42, label %78
    i32 57, label %78
    i32 69, label %78
    i32 73, label %78
    i32 91, label %78
    i32 103, label %78
    i32 113, label %78
    i32 666, label %78
  ]

72:                                               ; preds = %69, %66, %62, %58, %54, %49
  %73 = tail call i64 @llvm.umax.i64(i64 %27, i64 %52)
  %74 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 18), !nosanitize !44
  %75 = extractvalue { i64, i1 } %74, 0, !nosanitize !44
  %76 = extractvalue { i64, i1 } %74, 1, !nosanitize !44
  br i1 %76, label %77, label %206, !prof !45, !nosanitize !44

77:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

78:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %79 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %80 = load i32, ptr %79, align 8, !tbaa !29
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %80), !nosanitize !44
  %84 = extractvalue { i32, i1 } %83, 0, !nosanitize !44
  %85 = extractvalue { i32, i1 } %83, 1, !nosanitize !44
  br i1 %85, label %86, label %87, !prof !45, !nosanitize !44

86:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !44
  unreachable, !nosanitize !44

87:                                               ; preds = %82, %78
  %88 = phi i32 [ %84, %82 ], [ %80, %78 ]
  switch i32 %88, label %151 [
    i32 0, label %152
    i32 1, label %89
    i32 2, label %94
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %91 = load i32, ptr %90, align 4, !tbaa !71
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i64 6, i64 10
  br label %152

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %96 = load ptr, ptr %95, align 8, !tbaa !98
  %97 = icmp eq ptr %96, null
  br i1 %97, label %152, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %100 = load ptr, ptr %99, align 8, !tbaa !110
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %104 = load i32, ptr %103, align 8, !tbaa !115
  %105 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %104, i32 2), !nosanitize !44
  %106 = extractvalue { i32, i1 } %105, 1, !nosanitize !44
  br i1 %106, label %107, label %108, !prof !45, !nosanitize !44

107:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

108:                                              ; preds = %102
  %109 = extractvalue { i32, i1 } %105, 0, !nosanitize !44
  %110 = zext i32 %109 to i64
  %111 = add nuw nsw i64 %110, 18
  br label %112

112:                                              ; preds = %108, %98
  %113 = phi i64 [ %111, %108 ], [ 18, %98 ]
  %114 = getelementptr inbounds nuw i8, ptr %96, i64 40
  %115 = load ptr, ptr %114, align 8, !tbaa !109
  %116 = icmp eq ptr %115, null
  br i1 %116, label %.loopexit7, label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %112
  %117 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %113, i64 1), !nosanitize !44
  %118 = extractvalue { i64, i1 } %117, 1, !nosanitize !44
  br i1 %118, label %.preheader6._crit_edge, label %.lr.ph, !prof !127, !nosanitize !44

.preheader6:                                      ; preds = %.lr.ph
  %119 = getelementptr inbounds nuw i8, ptr %123, i64 1
  %120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 1), !nosanitize !44
  %121 = extractvalue { i64, i1 } %120, 1, !nosanitize !44
  br i1 %121, label %.preheader6._crit_edge, label %.lr.ph, !prof !128, !llvm.loop !129, !nosanitize !44

.preheader6._crit_edge:                           ; preds = %.preheader6, %.preheader6.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.lr.ph:                                           ; preds = %.preheader6.preheader, %.preheader6
  %122 = phi { i64, i1 } [ %120, %.preheader6 ], [ %117, %.preheader6.preheader ]
  %123 = phi ptr [ %119, %.preheader6 ], [ %115, %.preheader6.preheader ]
  %124 = extractvalue { i64, i1 } %122, 0, !nosanitize !44
  %125 = load i8, ptr %123, align 1, !tbaa !5
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %.loopexit7, label %.preheader6, !llvm.loop !129

.loopexit7:                                       ; preds = %.lr.ph, %112
  %127 = phi i64 [ %113, %112 ], [ %124, %.lr.ph ]
  %128 = getelementptr inbounds nuw i8, ptr %96, i64 56
  %129 = load ptr, ptr %128, align 8, !tbaa !107
  %130 = icmp eq ptr %129, null
  br i1 %130, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit7
  %131 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %127, i64 1), !nosanitize !44
  %132 = extractvalue { i64, i1 } %131, 1, !nosanitize !44
  br i1 %132, label %.preheader._crit_edge, label %.lr.ph17, !prof !127, !nosanitize !44

.preheader:                                       ; preds = %.lr.ph17
  %133 = getelementptr inbounds nuw i8, ptr %137, i64 1
  %134 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %138, i64 1), !nosanitize !44
  %135 = extractvalue { i64, i1 } %134, 1, !nosanitize !44
  br i1 %135, label %.preheader._crit_edge, label %.lr.ph17, !prof !128, !llvm.loop !130, !nosanitize !44

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.lr.ph17:                                         ; preds = %.preheader.preheader, %.preheader
  %136 = phi { i64, i1 } [ %134, %.preheader ], [ %131, %.preheader.preheader ]
  %137 = phi ptr [ %133, %.preheader ], [ %129, %.preheader.preheader ]
  %138 = extractvalue { i64, i1 } %136, 0, !nosanitize !44
  %139 = load i8, ptr %137, align 1, !tbaa !5
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %.loopexit, label %.preheader, !llvm.loop !130

.loopexit:                                        ; preds = %.lr.ph17, %.loopexit7
  %141 = phi i64 [ %127, %.loopexit7 ], [ %138, %.lr.ph17 ]
  %142 = getelementptr inbounds nuw i8, ptr %96, i64 68
  %143 = load i32, ptr %142, align 4, !tbaa !112
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %.loopexit
  %146 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %141, i64 2), !nosanitize !44
  %147 = extractvalue { i64, i1 } %146, 1, !nosanitize !44
  br i1 %147, label %148, label %149, !prof !45, !nosanitize !44

148:                                              ; preds = %145
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

149:                                              ; preds = %145
  %150 = extractvalue { i64, i1 } %146, 0, !nosanitize !44
  br label %152

151:                                              ; preds = %87
  br label %152

152:                                              ; preds = %151, %149, %.loopexit, %94, %89, %87
  %153 = phi i64 [ 18, %151 ], [ %93, %89 ], [ 18, %94 ], [ 0, %87 ], [ %150, %149 ], [ %141, %.loopexit ]
  %154 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %155 = load i32, ptr %154, align 4, !tbaa !30
  %156 = icmp eq i32 %155, 15
  %157 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %158 = load i32, ptr %157, align 8, !tbaa !50
  %159 = icmp eq i32 %158, 15
  %160 = select i1 %156, i1 %159, i1 false
  br i1 %160, label %174, label %161

161:                                              ; preds = %152
  %162 = icmp ugt i32 %155, %158
  br i1 %162, label %167, label %163

163:                                              ; preds = %161
  %164 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %165 = load i32, ptr %164, align 4, !tbaa !47
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163, %161
  br label %168

168:                                              ; preds = %167, %163
  %169 = phi i64 [ %52, %167 ], [ %27, %163 ]
  %170 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %169, i64 %153), !nosanitize !44
  %171 = extractvalue { i64, i1 } %170, 0, !nosanitize !44
  %172 = extractvalue { i64, i1 } %170, 1, !nosanitize !44
  br i1 %172, label %173, label %206, !prof !45, !nosanitize !44

173:                                              ; preds = %168
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

174:                                              ; preds = %152
  %175 = lshr i64 %1, 12
  %176 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %175), !nosanitize !44
  %177 = extractvalue { i64, i1 } %176, 1, !nosanitize !44
  br i1 %177, label %178, label %179, !prof !45, !nosanitize !44

178:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

179:                                              ; preds = %174
  %180 = extractvalue { i64, i1 } %176, 0, !nosanitize !44
  %181 = lshr i64 %1, 14
  %182 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %180, i64 %181), !nosanitize !44
  %183 = extractvalue { i64, i1 } %182, 1, !nosanitize !44
  br i1 %183, label %184, label %185, !prof !45, !nosanitize !44

184:                                              ; preds = %179
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

185:                                              ; preds = %179
  %186 = extractvalue { i64, i1 } %182, 0, !nosanitize !44
  %187 = lshr i64 %1, 25
  %188 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %186, i64 %187), !nosanitize !44
  %189 = extractvalue { i64, i1 } %188, 1, !nosanitize !44
  br i1 %189, label %190, label %191, !prof !45, !nosanitize !44

190:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

191:                                              ; preds = %185
  %192 = extractvalue { i64, i1 } %188, 0, !nosanitize !44
  %193 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %192, i64 13), !nosanitize !44
  %194 = extractvalue { i64, i1 } %193, 1, !nosanitize !44
  br i1 %194, label %195, label %196, !prof !45, !nosanitize !44

195:                                              ; preds = %191
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

196:                                              ; preds = %191
  %197 = extractvalue { i64, i1 } %193, 0, !nosanitize !44
  %198 = add i64 %197, -6
  %199 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %198, i64 %153), !nosanitize !44
  %200 = extractvalue { i64, i1 } %199, 1, !nosanitize !44
  br i1 %200, label %201, label %202, !prof !45, !nosanitize !44

201:                                              ; preds = %196
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

202:                                              ; preds = %196
  %203 = extractvalue { i64, i1 } %199, 0, !nosanitize !44
  %204 = icmp ult i64 %203, %1
  %205 = select i1 %204, i64 -1, i64 %203
  br label %206

206:                                              ; preds = %202, %168, %72
  %207 = phi i64 [ %205, %202 ], [ %75, %72 ], [ %171, %168 ]
  ret i64 %207
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !44
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !44
  br i1 %5, label %6, label %7, !prof !45, !nosanitize !44

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !44
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !44
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !44
  br i1 %11, label %12, label %13, !prof !45, !nosanitize !44

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !44
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !44
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !44
  br i1 %17, label %18, label %19, !prof !45, !nosanitize !44

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !44
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !44
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !44
  br i1 %22, label %23, label %24, !prof !45, !nosanitize !44

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !44
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !44
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !44
  br i1 %30, label %31, label %32, !prof !45, !nosanitize !44

31:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !44
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !44
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !44
  br i1 %36, label %37, label %38, !prof !45, !nosanitize !44

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !44
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !44
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !44
  br i1 %42, label %43, label %44, !prof !45, !nosanitize !44

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !44
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !44
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !44
  br i1 %47, label %48, label %49, !prof !45, !nosanitize !44

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

49:                                               ; preds = %44
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !44
  %51 = icmp ult i64 %50, %1
  %52 = select i1 %51, i64 -1, i64 %50
  %53 = icmp eq ptr %0, null
  br i1 %53, label %72, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %56 = load ptr, ptr %55, align 8, !tbaa !15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %60 = load ptr, ptr %59, align 8, !tbaa !17
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %64 = load ptr, ptr %63, align 8, !tbaa !18
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %64, align 8, !tbaa !19
  %68 = icmp eq ptr %67, %0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %71 = load i32, ptr %70, align 8, !tbaa !28
  switch i32 %71, label %72 [
    i32 42, label %78
    i32 57, label %78
    i32 69, label %78
    i32 73, label %78
    i32 91, label %78
    i32 103, label %78
    i32 113, label %78
    i32 666, label %78
  ]

72:                                               ; preds = %69, %66, %62, %58, %54, %49
  %73 = tail call i64 @llvm.umax.i64(i64 %27, i64 %52)
  %74 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 18), !nosanitize !44
  %75 = extractvalue { i64, i1 } %74, 0, !nosanitize !44
  %76 = extractvalue { i64, i1 } %74, 1, !nosanitize !44
  br i1 %76, label %77, label %206, !prof !45, !nosanitize !44

77:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

78:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %79 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %80 = load i32, ptr %79, align 8, !tbaa !29
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %80), !nosanitize !44
  %84 = extractvalue { i32, i1 } %83, 0, !nosanitize !44
  %85 = extractvalue { i32, i1 } %83, 1, !nosanitize !44
  br i1 %85, label %86, label %87, !prof !45, !nosanitize !44

86:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !44
  unreachable, !nosanitize !44

87:                                               ; preds = %82, %78
  %88 = phi i32 [ %84, %82 ], [ %80, %78 ]
  switch i32 %88, label %151 [
    i32 0, label %152
    i32 1, label %89
    i32 2, label %94
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %91 = load i32, ptr %90, align 4, !tbaa !71
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i64 6, i64 10
  br label %152

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %96 = load ptr, ptr %95, align 8, !tbaa !98
  %97 = icmp eq ptr %96, null
  br i1 %97, label %152, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %100 = load ptr, ptr %99, align 8, !tbaa !110
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %104 = load i32, ptr %103, align 8, !tbaa !115
  %105 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %104, i32 2), !nosanitize !44
  %106 = extractvalue { i32, i1 } %105, 1, !nosanitize !44
  br i1 %106, label %107, label %108, !prof !45, !nosanitize !44

107:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

108:                                              ; preds = %102
  %109 = extractvalue { i32, i1 } %105, 0, !nosanitize !44
  %110 = zext i32 %109 to i64
  %111 = add nuw nsw i64 %110, 18
  br label %112

112:                                              ; preds = %108, %98
  %113 = phi i64 [ %111, %108 ], [ 18, %98 ]
  %114 = getelementptr inbounds nuw i8, ptr %96, i64 40
  %115 = load ptr, ptr %114, align 8, !tbaa !109
  %116 = icmp eq ptr %115, null
  br i1 %116, label %.loopexit7, label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %112
  %117 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %113, i64 1), !nosanitize !44
  %118 = extractvalue { i64, i1 } %117, 1, !nosanitize !44
  br i1 %118, label %.preheader6._crit_edge, label %.lr.ph, !prof !127, !nosanitize !44

.preheader6:                                      ; preds = %.lr.ph
  %119 = getelementptr inbounds nuw i8, ptr %123, i64 1
  %120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 1), !nosanitize !44
  %121 = extractvalue { i64, i1 } %120, 1, !nosanitize !44
  br i1 %121, label %.preheader6._crit_edge, label %.lr.ph, !prof !128, !llvm.loop !129, !nosanitize !44

.preheader6._crit_edge:                           ; preds = %.preheader6, %.preheader6.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.lr.ph:                                           ; preds = %.preheader6.preheader, %.preheader6
  %122 = phi { i64, i1 } [ %120, %.preheader6 ], [ %117, %.preheader6.preheader ]
  %123 = phi ptr [ %119, %.preheader6 ], [ %115, %.preheader6.preheader ]
  %124 = extractvalue { i64, i1 } %122, 0, !nosanitize !44
  %125 = load i8, ptr %123, align 1, !tbaa !5
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %.loopexit7, label %.preheader6, !llvm.loop !129

.loopexit7:                                       ; preds = %.lr.ph, %112
  %127 = phi i64 [ %113, %112 ], [ %124, %.lr.ph ]
  %128 = getelementptr inbounds nuw i8, ptr %96, i64 56
  %129 = load ptr, ptr %128, align 8, !tbaa !107
  %130 = icmp eq ptr %129, null
  br i1 %130, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit7
  %131 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %127, i64 1), !nosanitize !44
  %132 = extractvalue { i64, i1 } %131, 1, !nosanitize !44
  br i1 %132, label %.preheader._crit_edge, label %.lr.ph17, !prof !127, !nosanitize !44

.preheader:                                       ; preds = %.lr.ph17
  %133 = getelementptr inbounds nuw i8, ptr %137, i64 1
  %134 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %138, i64 1), !nosanitize !44
  %135 = extractvalue { i64, i1 } %134, 1, !nosanitize !44
  br i1 %135, label %.preheader._crit_edge, label %.lr.ph17, !prof !128, !llvm.loop !130, !nosanitize !44

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.lr.ph17:                                         ; preds = %.preheader.preheader, %.preheader
  %136 = phi { i64, i1 } [ %134, %.preheader ], [ %131, %.preheader.preheader ]
  %137 = phi ptr [ %133, %.preheader ], [ %129, %.preheader.preheader ]
  %138 = extractvalue { i64, i1 } %136, 0, !nosanitize !44
  %139 = load i8, ptr %137, align 1, !tbaa !5
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %.loopexit, label %.preheader, !llvm.loop !130

.loopexit:                                        ; preds = %.lr.ph17, %.loopexit7
  %141 = phi i64 [ %127, %.loopexit7 ], [ %138, %.lr.ph17 ]
  %142 = getelementptr inbounds nuw i8, ptr %96, i64 68
  %143 = load i32, ptr %142, align 4, !tbaa !112
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %.loopexit
  %146 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %141, i64 2), !nosanitize !44
  %147 = extractvalue { i64, i1 } %146, 1, !nosanitize !44
  br i1 %147, label %148, label %149, !prof !45, !nosanitize !44

148:                                              ; preds = %145
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

149:                                              ; preds = %145
  %150 = extractvalue { i64, i1 } %146, 0, !nosanitize !44
  br label %152

151:                                              ; preds = %87
  br label %152

152:                                              ; preds = %151, %149, %.loopexit, %94, %89, %87
  %153 = phi i64 [ 18, %151 ], [ %93, %89 ], [ 18, %94 ], [ 0, %87 ], [ %150, %149 ], [ %141, %.loopexit ]
  %154 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %155 = load i32, ptr %154, align 4, !tbaa !30
  %156 = icmp eq i32 %155, 15
  %157 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %158 = load i32, ptr %157, align 8, !tbaa !50
  %159 = icmp eq i32 %158, 15
  %160 = select i1 %156, i1 %159, i1 false
  br i1 %160, label %174, label %161

161:                                              ; preds = %152
  %162 = icmp ugt i32 %155, %158
  br i1 %162, label %167, label %163

163:                                              ; preds = %161
  %164 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %165 = load i32, ptr %164, align 4, !tbaa !47
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163, %161
  br label %168

168:                                              ; preds = %167, %163
  %169 = phi i64 [ %52, %167 ], [ %27, %163 ]
  %170 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %169, i64 %153), !nosanitize !44
  %171 = extractvalue { i64, i1 } %170, 0, !nosanitize !44
  %172 = extractvalue { i64, i1 } %170, 1, !nosanitize !44
  br i1 %172, label %173, label %206, !prof !45, !nosanitize !44

173:                                              ; preds = %168
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

174:                                              ; preds = %152
  %175 = lshr i64 %1, 12
  %176 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %175), !nosanitize !44
  %177 = extractvalue { i64, i1 } %176, 1, !nosanitize !44
  br i1 %177, label %178, label %179, !prof !45, !nosanitize !44

178:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

179:                                              ; preds = %174
  %180 = extractvalue { i64, i1 } %176, 0, !nosanitize !44
  %181 = lshr i64 %1, 14
  %182 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %180, i64 %181), !nosanitize !44
  %183 = extractvalue { i64, i1 } %182, 1, !nosanitize !44
  br i1 %183, label %184, label %185, !prof !45, !nosanitize !44

184:                                              ; preds = %179
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

185:                                              ; preds = %179
  %186 = extractvalue { i64, i1 } %182, 0, !nosanitize !44
  %187 = lshr i64 %1, 25
  %188 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %186, i64 %187), !nosanitize !44
  %189 = extractvalue { i64, i1 } %188, 1, !nosanitize !44
  br i1 %189, label %190, label %191, !prof !45, !nosanitize !44

190:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

191:                                              ; preds = %185
  %192 = extractvalue { i64, i1 } %188, 0, !nosanitize !44
  %193 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %192, i64 13), !nosanitize !44
  %194 = extractvalue { i64, i1 } %193, 1, !nosanitize !44
  br i1 %194, label %195, label %196, !prof !45, !nosanitize !44

195:                                              ; preds = %191
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

196:                                              ; preds = %191
  %197 = extractvalue { i64, i1 } %193, 0, !nosanitize !44
  %198 = add i64 %197, -6
  %199 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %198, i64 %153), !nosanitize !44
  %200 = extractvalue { i64, i1 } %199, 1, !nosanitize !44
  br i1 %200, label %201, label %202, !prof !45, !nosanitize !44

201:                                              ; preds = %196
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

202:                                              ; preds = %196
  %203 = extractvalue { i64, i1 } %199, 0, !nosanitize !44
  %204 = icmp ult i64 %203, %1
  %205 = select i1 %204, i64 -1, i64 %203
  br label %206

206:                                              ; preds = %202, %168, %72
  %207 = phi i64 [ %205, %202 ], [ %75, %72 ], [ %171, %168 ]
  ret i64 %207
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef nonnull captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %3) #11
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i64, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 8, !tbaa !105
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = trunc nuw i64 %9 to i32
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !104
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %16, i64 %9, i1 false)
  %17 = load ptr, ptr %13, align 8, !tbaa !104
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %9
  store ptr %18, ptr %13, align 8, !tbaa !104
  %19 = load ptr, ptr %15, align 8, !tbaa !56
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  store ptr %20, ptr %15, align 8, !tbaa !56
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8, !tbaa !106
  %23 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %22, i64 %9), !nosanitize !44
  %24 = extractvalue { i64, i1 } %23, 1, !nosanitize !44
  br i1 %24, label %25, label %26, !prof !45, !nosanitize !44

25:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

26:                                               ; preds = %12
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !44
  store i64 %27, ptr %21, align 8, !tbaa !106
  %28 = load i32, ptr %6, align 8, !tbaa !105
  %29 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %28, i32 %10), !nosanitize !44
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !44
  br i1 %30, label %31, label %32, !prof !45, !nosanitize !44

31:                                               ; preds = %26
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

32:                                               ; preds = %26
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !44
  store i32 %33, ptr %6, align 8, !tbaa !105
  %34 = load i64, ptr %4, align 8, !tbaa !55
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %9), !nosanitize !44
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !44
  br i1 %36, label %37, label %38, !prof !45, !nosanitize !44

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !44
  store i64 %39, ptr %4, align 8, !tbaa !55
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %43 = load ptr, ptr %42, align 8, !tbaa !40
  store ptr %43, ptr %15, align 8, !tbaa !56
  br label %44

44:                                               ; preds = %41, %38, %1
  ret void
}

declare i64 @crc32_z(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = load i64, ptr %3, align 8, !tbaa !41
  %5 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 5), !nosanitize !44
  %6 = extractvalue { i64, i1 } %5, 1, !nosanitize !44
  br i1 %6, label %7, label %8, !prof !45, !nosanitize !44

7:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

8:                                                ; preds = %2
  %9 = extractvalue { i64, i1 } %5, 0, !nosanitize !44
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %11 = load i32, ptr %10, align 8, !tbaa !31
  %12 = zext i32 %11 to i64
  %13 = tail call i64 @llvm.umin.i64(i64 %9, i64 %12)
  %14 = trunc nuw i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !19
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load i32, ptr %16, align 8, !tbaa !79
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %21 = icmp ne i32 %1, 4
  %22 = icmp eq i32 %1, 0
  %23 = icmp eq i32 %1, 4
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %27

27:                                               ; preds = %273, %8
  %28 = load i32, ptr %18, align 4, !tbaa !99
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %28, i32 42), !nosanitize !44
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !44
  br i1 %30, label %31, label %32, !prof !45, !nosanitize !44

31:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

32:                                               ; preds = %27
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !44
  %34 = lshr i32 %33, 3
  %35 = load ptr, ptr %0, align 8, !tbaa !19
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %37 = load i32, ptr %36, align 8, !tbaa !105
  %38 = icmp ult i32 %37, %34
  br i1 %38, label %.loopexit, label %39

39:                                               ; preds = %32
  %40 = sub nuw i32 %37, %34
  %41 = load i32, ptr %19, align 4, !tbaa !71
  %42 = zext i32 %41 to i64
  %43 = load i64, ptr %20, align 8, !tbaa !72
  %44 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %42, i64 %43), !nosanitize !44
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !44
  br i1 %45, label %46, label %47, !prof !45, !nosanitize !44

46:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

47:                                               ; preds = %39
  %48 = extractvalue { i64, i1 } %44, 0, !nosanitize !44
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %51 = load i32, ptr %50, align 8, !tbaa !79
  %52 = and i64 %48, 4294967295
  %53 = zext i32 %51 to i64
  %54 = add nuw nsw i64 %52, %53
  %55 = icmp samesign ult i64 %54, 65535
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !44
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !44
  br i1 %58, label %59, label %60, !prof !45, !nosanitize !44

59:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

60:                                               ; preds = %56
  %61 = extractvalue { i32, i1 } %57, 0, !nosanitize !44
  br label %62

62:                                               ; preds = %60, %47
  %63 = phi i32 [ %61, %60 ], [ 65535, %47 ]
  %64 = tail call i32 @llvm.umin.i32(i32 %63, i32 %40)
  %65 = icmp ult i32 %64, %14
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = icmp eq i32 %64, 0
  %68 = and i1 %21, %67
  %69 = or i1 %22, %68
  br i1 %69, label %.loopexit, label %70

70:                                               ; preds = %66
  %71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !44
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !44
  br i1 %72, label %73, label %74, !prof !45, !nosanitize !44

73:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

74:                                               ; preds = %70
  %75 = extractvalue { i32, i1 } %71, 0, !nosanitize !44
  %76 = icmp eq i32 %64, %75
  br i1 %76, label %77, label %.loopexit

77:                                               ; preds = %74, %62
  br i1 %23, label %78, label %86

78:                                               ; preds = %77
  %79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !44
  %80 = extractvalue { i32, i1 } %79, 1, !nosanitize !44
  br i1 %80, label %81, label %82, !prof !45, !nosanitize !44

81:                                               ; preds = %78
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

82:                                               ; preds = %78
  %83 = extractvalue { i32, i1 } %79, 0, !nosanitize !44
  %84 = icmp eq i32 %64, %83
  %85 = zext i1 %84 to i32
  br label %86

86:                                               ; preds = %82, %77
  %87 = phi i32 [ 0, %77 ], [ %85, %82 ]
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %87) #11
  %88 = load i64, ptr %25, align 8, !tbaa !55
  %89 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %88, i64 4), !nosanitize !44
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !44
  br i1 %90, label %91, label %92, !prof !45, !nosanitize !44

91:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

92:                                               ; preds = %86
  %93 = extractvalue { i64, i1 } %89, 0, !nosanitize !44
  %94 = load ptr, ptr %24, align 8, !tbaa !40
  %95 = trunc i32 %64 to i8
  %96 = getelementptr inbounds nuw i8, ptr %94, i64 %93
  store i8 %95, ptr %96, align 1, !tbaa !5
  %97 = load i64, ptr %25, align 8, !tbaa !55
  %98 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %97, i64 3), !nosanitize !44
  %99 = extractvalue { i64, i1 } %98, 1, !nosanitize !44
  br i1 %99, label %100, label %101, !prof !45, !nosanitize !44

100:                                              ; preds = %92
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

101:                                              ; preds = %92
  %102 = extractvalue { i64, i1 } %98, 0, !nosanitize !44
  %103 = load ptr, ptr %24, align 8, !tbaa !40
  %104 = lshr i32 %64, 8
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds nuw i8, ptr %103, i64 %102
  store i8 %105, ptr %106, align 1, !tbaa !5
  %107 = load i64, ptr %25, align 8, !tbaa !55
  %108 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 2), !nosanitize !44
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !44
  br i1 %109, label %110, label %111, !prof !45, !nosanitize !44

110:                                              ; preds = %101
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

111:                                              ; preds = %101
  %112 = extractvalue { i64, i1 } %108, 0, !nosanitize !44
  %113 = load ptr, ptr %24, align 8, !tbaa !40
  %114 = xor i32 %64, -1
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds nuw i8, ptr %113, i64 %112
  store i8 %115, ptr %116, align 1, !tbaa !5
  %117 = load i64, ptr %25, align 8, !tbaa !55
  %118 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %117, i64 1), !nosanitize !44
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !44
  br i1 %119, label %120, label %121, !prof !45, !nosanitize !44

120:                                              ; preds = %111
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

121:                                              ; preds = %111
  %122 = extractvalue { i64, i1 } %118, 0, !nosanitize !44
  %123 = load ptr, ptr %24, align 8, !tbaa !40
  %124 = lshr i32 %114, 8
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds nuw i8, ptr %123, i64 %122
  store i8 %125, ptr %126, align 1, !tbaa !5
  %127 = load ptr, ptr %0, align 8, !tbaa !19
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 56
  %129 = load ptr, ptr %128, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %129) #11
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 40
  %131 = load i64, ptr %130, align 8, !tbaa !55
  %132 = getelementptr inbounds nuw i8, ptr %127, i64 32
  %133 = load i32, ptr %132, align 8, !tbaa !105
  %134 = zext i32 %133 to i64
  %135 = tail call i64 @llvm.umin.i64(i64 %131, i64 %134)
  %136 = trunc nuw i64 %135 to i32
  %137 = icmp eq i64 %135, 0
  br i1 %137, label %170, label %138

138:                                              ; preds = %121
  %139 = getelementptr inbounds nuw i8, ptr %127, i64 24
  %140 = load ptr, ptr %139, align 8, !tbaa !104
  %141 = getelementptr inbounds nuw i8, ptr %129, i64 32
  %142 = load ptr, ptr %141, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %140, ptr align 1 %142, i64 %135, i1 false)
  %143 = load ptr, ptr %139, align 8, !tbaa !104
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 %135
  store ptr %144, ptr %139, align 8, !tbaa !104
  %145 = load ptr, ptr %141, align 8, !tbaa !56
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 %135
  store ptr %146, ptr %141, align 8, !tbaa !56
  %147 = getelementptr inbounds nuw i8, ptr %127, i64 40
  %148 = load i64, ptr %147, align 8, !tbaa !106
  %149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %148, i64 %135), !nosanitize !44
  %150 = extractvalue { i64, i1 } %149, 1, !nosanitize !44
  br i1 %150, label %151, label %152, !prof !45, !nosanitize !44

151:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

152:                                              ; preds = %138
  %153 = extractvalue { i64, i1 } %149, 0, !nosanitize !44
  store i64 %153, ptr %147, align 8, !tbaa !106
  %154 = load i32, ptr %132, align 8, !tbaa !105
  %155 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %154, i32 %136), !nosanitize !44
  %156 = extractvalue { i32, i1 } %155, 1, !nosanitize !44
  br i1 %156, label %157, label %158, !prof !45, !nosanitize !44

157:                                              ; preds = %152
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

158:                                              ; preds = %152
  %159 = extractvalue { i32, i1 } %155, 0, !nosanitize !44
  store i32 %159, ptr %132, align 8, !tbaa !105
  %160 = load i64, ptr %130, align 8, !tbaa !55
  %161 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %160, i64 %135), !nosanitize !44
  %162 = extractvalue { i64, i1 } %161, 1, !nosanitize !44
  br i1 %162, label %163, label %164, !prof !45, !nosanitize !44

163:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

164:                                              ; preds = %158
  %165 = extractvalue { i64, i1 } %161, 0, !nosanitize !44
  store i64 %165, ptr %130, align 8, !tbaa !55
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = getelementptr inbounds nuw i8, ptr %129, i64 16
  %169 = load ptr, ptr %168, align 8, !tbaa !40
  store ptr %169, ptr %141, align 8, !tbaa !56
  br label %170

170:                                              ; preds = %167, %164, %121
  %171 = icmp eq i32 %49, 0
  br i1 %171, label %209, label %172

172:                                              ; preds = %170
  %173 = tail call i32 @llvm.umin.i32(i32 %64, i32 %49)
  %174 = load ptr, ptr %0, align 8, !tbaa !19
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 24
  %176 = load ptr, ptr %175, align 8, !tbaa !104
  %177 = load ptr, ptr %26, align 8, !tbaa !34
  %178 = load i64, ptr %20, align 8, !tbaa !72
  %179 = getelementptr inbounds i8, ptr %177, i64 %178
  %180 = zext i32 %173 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %176, ptr align 1 %179, i64 %180, i1 false)
  %181 = load ptr, ptr %0, align 8, !tbaa !19
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 24
  %183 = load ptr, ptr %182, align 8, !tbaa !104
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 %180
  store ptr %184, ptr %182, align 8, !tbaa !104
  %185 = getelementptr inbounds nuw i8, ptr %181, i64 32
  %186 = load i32, ptr %185, align 8, !tbaa !105
  %187 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %186, i32 %173), !nosanitize !44
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !44
  br i1 %188, label %189, label %190, !prof !45, !nosanitize !44

189:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

190:                                              ; preds = %172
  %191 = extractvalue { i32, i1 } %187, 0, !nosanitize !44
  store i32 %191, ptr %185, align 8, !tbaa !105
  %192 = getelementptr inbounds nuw i8, ptr %181, i64 40
  %193 = load i64, ptr %192, align 8, !tbaa !106
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 %180), !nosanitize !44
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !44
  br i1 %195, label %196, label %197, !prof !45, !nosanitize !44

196:                                              ; preds = %197, %190
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

197:                                              ; preds = %190
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !44
  store i64 %198, ptr %192, align 8, !tbaa !106
  %199 = load i64, ptr %20, align 8, !tbaa !72
  %200 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %199, i64 %180), !nosanitize !44
  %201 = extractvalue { i64, i1 } %200, 1, !nosanitize !44
  br i1 %201, label %196, label %202, !prof !45, !nosanitize !44

202:                                              ; preds = %197
  %203 = extractvalue { i64, i1 } %200, 0, !nosanitize !44
  store i64 %203, ptr %20, align 8, !tbaa !72
  %204 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %64, i32 %173), !nosanitize !44
  %205 = extractvalue { i32, i1 } %204, 1, !nosanitize !44
  br i1 %205, label %206, label %207, !prof !45, !nosanitize !44

206:                                              ; preds = %202
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

207:                                              ; preds = %202
  %208 = extractvalue { i32, i1 } %204, 0, !nosanitize !44
  br label %209

209:                                              ; preds = %207, %170
  %210 = phi i32 [ %208, %207 ], [ %64, %170 ]
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %273, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %0, align 8, !tbaa !19
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 24
  %215 = load ptr, ptr %214, align 8, !tbaa !104
  %216 = getelementptr inbounds nuw i8, ptr %213, i64 8
  %217 = load i32, ptr %216, align 8, !tbaa !79
  %218 = tail call i32 @llvm.umin.i32(i32 %217, i32 %210)
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %253, label %220

220:                                              ; preds = %212
  %221 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %217, i32 %218), !nosanitize !44
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !44
  br i1 %222, label %223, label %224, !prof !45, !nosanitize !44

223:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

224:                                              ; preds = %220
  %225 = extractvalue { i32, i1 } %221, 0, !nosanitize !44
  store i32 %225, ptr %216, align 8, !tbaa !79
  %226 = load ptr, ptr %213, align 8, !tbaa !80
  %227 = zext i32 %218 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %215, ptr align 1 %226, i64 %227, i1 false)
  %228 = getelementptr inbounds nuw i8, ptr %213, i64 56
  %229 = load ptr, ptr %228, align 8, !tbaa !18
  %230 = getelementptr inbounds nuw i8, ptr %229, i64 48
  %231 = load i32, ptr %230, align 8, !tbaa !29
  switch i32 %231, label %240 [
    i32 1, label %232
    i32 2, label %236
  ]

232:                                              ; preds = %224
  %233 = getelementptr inbounds nuw i8, ptr %213, i64 96
  %234 = load i64, ptr %233, align 8, !tbaa !57
  %235 = tail call i64 @adler32(i64 noundef %234, ptr noundef %215, i32 noundef %218) #11
  store i64 %235, ptr %233, align 8, !tbaa !57
  br label %240

236:                                              ; preds = %224
  %237 = getelementptr inbounds nuw i8, ptr %213, i64 96
  %238 = load i64, ptr %237, align 8, !tbaa !57
  %239 = tail call i64 @crc32(i64 noundef %238, ptr noundef %215, i32 noundef %218) #11
  store i64 %239, ptr %237, align 8, !tbaa !57
  br label %240

240:                                              ; preds = %236, %232, %224
  %241 = load ptr, ptr %213, align 8, !tbaa !80
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 %227
  store ptr %242, ptr %213, align 8, !tbaa !80
  %243 = getelementptr inbounds nuw i8, ptr %213, i64 16
  %244 = load i64, ptr %243, align 8, !tbaa !53
  %245 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %244, i64 %227), !nosanitize !44
  %246 = extractvalue { i64, i1 } %245, 1, !nosanitize !44
  br i1 %246, label %247, label %248, !prof !45, !nosanitize !44

247:                                              ; preds = %240
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

248:                                              ; preds = %240
  %249 = extractvalue { i64, i1 } %245, 0, !nosanitize !44
  store i64 %249, ptr %243, align 8, !tbaa !53
  %250 = load ptr, ptr %0, align 8, !tbaa !19
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 24
  %252 = load ptr, ptr %251, align 8, !tbaa !104
  br label %253

253:                                              ; preds = %248, %212
  %254 = phi ptr [ %215, %212 ], [ %252, %248 ]
  %255 = phi ptr [ %213, %212 ], [ %250, %248 ]
  %256 = getelementptr inbounds nuw i8, ptr %255, i64 24
  %257 = zext i32 %210 to i64
  %258 = getelementptr inbounds nuw i8, ptr %254, i64 %257
  store ptr %258, ptr %256, align 8, !tbaa !104
  %259 = getelementptr inbounds nuw i8, ptr %255, i64 32
  %260 = load i32, ptr %259, align 8, !tbaa !105
  %261 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %260, i32 %210), !nosanitize !44
  %262 = extractvalue { i32, i1 } %261, 1, !nosanitize !44
  br i1 %262, label %263, label %264, !prof !45, !nosanitize !44

263:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

264:                                              ; preds = %253
  %265 = extractvalue { i32, i1 } %261, 0, !nosanitize !44
  store i32 %265, ptr %259, align 8, !tbaa !105
  %266 = getelementptr inbounds nuw i8, ptr %255, i64 40
  %267 = load i64, ptr %266, align 8, !tbaa !106
  %268 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %267, i64 %257), !nosanitize !44
  %269 = extractvalue { i64, i1 } %268, 1, !nosanitize !44
  br i1 %269, label %270, label %271, !prof !45, !nosanitize !44

270:                                              ; preds = %264
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

271:                                              ; preds = %264
  %272 = extractvalue { i64, i1 } %268, 0, !nosanitize !44
  store i64 %272, ptr %266, align 8, !tbaa !106
  br label %273

273:                                              ; preds = %271, %209
  %274 = icmp eq i32 %87, 0
  br i1 %274, label %27, label %275, !llvm.loop !131

275:                                              ; preds = %273
  %276 = load ptr, ptr %0, align 8, !tbaa !19
  br label %.loopexit, !llvm.loop !131

.loopexit:                                        ; preds = %74, %66, %32, %275
  %277 = phi ptr [ %276, %275 ], [ %35, %32 ], [ %35, %66 ], [ %35, %74 ]
  %278 = phi i1 [ false, %275 ], [ true, %32 ], [ true, %66 ], [ true, %74 ]
  %279 = getelementptr inbounds nuw i8, ptr %277, i64 8
  %280 = load i32, ptr %279, align 8, !tbaa !79
  %281 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %280), !nosanitize !44
  %282 = extractvalue { i32, i1 } %281, 0, !nosanitize !44
  %283 = extractvalue { i32, i1 } %281, 1, !nosanitize !44
  br i1 %283, label %284, label %285, !prof !45, !nosanitize !44

284:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

285:                                              ; preds = %.loopexit
  %286 = icmp eq i32 %282, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %285
  %288 = load i32, ptr %19, align 4, !tbaa !71
  %289 = zext i32 %288 to i64
  br label %367

290:                                              ; preds = %285
  %291 = load i32, ptr %10, align 8, !tbaa !31
  %292 = icmp ult i32 %282, %291
  br i1 %292, label %302, label %293

293:                                              ; preds = %290
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %294, align 8, !tbaa !122
  %295 = load ptr, ptr %26, align 8, !tbaa !34
  %296 = load ptr, ptr %277, align 8, !tbaa !80
  %297 = zext i32 %291 to i64
  %298 = sub nsw i64 0, %297
  %299 = getelementptr inbounds i8, ptr %296, i64 %298
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %295, ptr align 1 %299, i64 %297, i1 false)
  %300 = load i32, ptr %10, align 8, !tbaa !31
  store i32 %300, ptr %19, align 4, !tbaa !71
  %301 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %300, ptr %301, align 4, !tbaa !74
  br label %364

302:                                              ; preds = %290
  %303 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %304 = load i64, ptr %303, align 8, !tbaa !59
  %305 = load i32, ptr %19, align 4, !tbaa !71
  %306 = zext i32 %305 to i64
  %307 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %304, i64 %306), !nosanitize !44
  %308 = extractvalue { i64, i1 } %307, 1, !nosanitize !44
  br i1 %308, label %309, label %310, !prof !45, !nosanitize !44

309:                                              ; preds = %302
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

310:                                              ; preds = %302
  %311 = extractvalue { i64, i1 } %307, 0, !nosanitize !44
  %312 = zext i32 %282 to i64
  %313 = icmp ugt i64 %311, %312
  br i1 %313, label %335, label %314

314:                                              ; preds = %310
  %315 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %305, i32 %291), !nosanitize !44
  %316 = extractvalue { i32, i1 } %315, 1, !nosanitize !44
  br i1 %316, label %317, label %318, !prof !45, !nosanitize !44

317:                                              ; preds = %314
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

318:                                              ; preds = %314
  %319 = extractvalue { i32, i1 } %315, 0, !nosanitize !44
  store i32 %319, ptr %19, align 4, !tbaa !71
  %320 = load ptr, ptr %26, align 8, !tbaa !34
  %321 = zext i32 %291 to i64
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 %321
  %323 = zext i32 %319 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %320, ptr nonnull align 1 %322, i64 %323, i1 false)
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %325 = load i32, ptr %324, align 8, !tbaa !122
  %326 = icmp ult i32 %325, 2
  br i1 %326, label %327, label %329

327:                                              ; preds = %318
  %328 = add nuw nsw i32 %325, 1
  store i32 %328, ptr %324, align 8, !tbaa !122
  br label %329

329:                                              ; preds = %327, %318
  %330 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %331 = load i32, ptr %330, align 4, !tbaa !74
  %332 = load i32, ptr %19, align 4, !tbaa !71
  %333 = icmp ugt i32 %331, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %329
  store i32 %332, ptr %330, align 4, !tbaa !74
  br label %335

335:                                              ; preds = %334, %329, %310
  %336 = phi i32 [ %332, %329 ], [ %332, %334 ], [ %305, %310 ]
  %337 = load ptr, ptr %26, align 8, !tbaa !34
  %338 = zext i32 %336 to i64
  %339 = getelementptr inbounds nuw i8, ptr %337, i64 %338
  %340 = load ptr, ptr %0, align 8, !tbaa !19
  %341 = load ptr, ptr %340, align 8, !tbaa !80
  %342 = sub nsw i64 0, %312
  %343 = getelementptr inbounds i8, ptr %341, i64 %342
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %339, ptr nonnull align 1 %343, i64 %312, i1 false)
  %344 = load i32, ptr %19, align 4, !tbaa !71
  %345 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %344, i32 %282), !nosanitize !44
  %346 = extractvalue { i32, i1 } %345, 1, !nosanitize !44
  br i1 %346, label %347, label %348, !prof !45, !nosanitize !44

347:                                              ; preds = %335
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

348:                                              ; preds = %335
  %349 = extractvalue { i32, i1 } %345, 0, !nosanitize !44
  store i32 %349, ptr %19, align 4, !tbaa !71
  %350 = load i32, ptr %10, align 8, !tbaa !31
  %351 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %352 = load i32, ptr %351, align 4, !tbaa !74
  %353 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %350, i32 %352), !nosanitize !44
  %354 = extractvalue { i32, i1 } %353, 1, !nosanitize !44
  br i1 %354, label %355, label %356, !prof !45, !nosanitize !44

355:                                              ; preds = %348
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

356:                                              ; preds = %348
  %357 = extractvalue { i32, i1 } %353, 0, !nosanitize !44
  %358 = tail call i32 @llvm.umin.i32(i32 %282, i32 %357)
  %359 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %352, i32 %358), !nosanitize !44
  %360 = extractvalue { i32, i1 } %359, 1, !nosanitize !44
  br i1 %360, label %361, label %362, !prof !45, !nosanitize !44

361:                                              ; preds = %356
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

362:                                              ; preds = %356
  %363 = extractvalue { i32, i1 } %359, 0, !nosanitize !44
  store i32 %363, ptr %351, align 4, !tbaa !74
  br label %364

364:                                              ; preds = %362, %293
  %365 = phi i32 [ %349, %362 ], [ %300, %293 ]
  %366 = zext i32 %365 to i64
  store i64 %366, ptr %20, align 8, !tbaa !72
  br label %367

367:                                              ; preds = %364, %287
  %368 = phi i64 [ %289, %287 ], [ %366, %364 ]
  %369 = phi i32 [ %288, %287 ], [ %365, %364 ]
  %370 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %371 = load i64, ptr %370, align 8, !tbaa !38
  %372 = icmp ult i64 %371, %368
  br i1 %372, label %373, label %374

373:                                              ; preds = %367
  store i64 %368, ptr %370, align 8, !tbaa !38
  br label %374

374:                                              ; preds = %373, %367
  br i1 %278, label %375, label %598

375:                                              ; preds = %374
  %376 = icmp ne i32 %1, 0
  switch i32 %1, label %377 [
    i32 4, label %385
    i32 0, label %385
  ]

377:                                              ; preds = %375
  %378 = load ptr, ptr %0, align 8, !tbaa !19
  %379 = getelementptr inbounds nuw i8, ptr %378, i64 8
  %380 = load i32, ptr %379, align 8, !tbaa !79
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %377
  %383 = load i64, ptr %20, align 8, !tbaa !72
  %384 = icmp eq i64 %383, %368
  br i1 %384, label %601, label %385

385:                                              ; preds = %382, %377, %375, %375
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %387 = load i64, ptr %386, align 8, !tbaa !59
  %388 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %387, i64 %368), !nosanitize !44
  %389 = extractvalue { i64, i1 } %388, 1, !nosanitize !44
  br i1 %389, label %390, label %391, !prof !45, !nosanitize !44

390:                                              ; preds = %385
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

391:                                              ; preds = %385
  %392 = extractvalue { i64, i1 } %388, 0, !nosanitize !44
  %393 = trunc i64 %392 to i32
  %394 = load ptr, ptr %0, align 8, !tbaa !19
  %395 = getelementptr inbounds nuw i8, ptr %394, i64 8
  %396 = load i32, ptr %395, align 8, !tbaa !79
  %397 = icmp ugt i32 %396, %393
  br i1 %397, label %398, label %430

398:                                              ; preds = %391
  %399 = load i64, ptr %20, align 8, !tbaa !72
  %400 = load i32, ptr %10, align 8, !tbaa !31
  %401 = zext i32 %400 to i64
  %402 = icmp slt i64 %399, %401
  br i1 %402, label %430, label %403

403:                                              ; preds = %398
  %404 = sub nsw i64 %399, %401
  store i64 %404, ptr %20, align 8, !tbaa !72
  %405 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %369, i32 %400), !nosanitize !44
  %406 = extractvalue { i32, i1 } %405, 1, !nosanitize !44
  br i1 %406, label %407, label %408, !prof !45, !nosanitize !44

407:                                              ; preds = %403
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

408:                                              ; preds = %403
  %409 = extractvalue { i32, i1 } %405, 0, !nosanitize !44
  store i32 %409, ptr %19, align 4, !tbaa !71
  %410 = load ptr, ptr %26, align 8, !tbaa !34
  %411 = getelementptr inbounds nuw i8, ptr %410, i64 %401
  %412 = zext i32 %409 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %410, ptr align 1 %411, i64 %412, i1 false)
  %413 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %414 = load i32, ptr %413, align 8, !tbaa !122
  %415 = icmp ult i32 %414, 2
  br i1 %415, label %416, label %418

416:                                              ; preds = %408
  %417 = add nuw nsw i32 %414, 1
  store i32 %417, ptr %413, align 8, !tbaa !122
  br label %418

418:                                              ; preds = %416, %408
  %419 = load i32, ptr %10, align 8, !tbaa !31
  %420 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %393, i32 %419), !nosanitize !44
  %421 = extractvalue { i32, i1 } %420, 0, !nosanitize !44
  %422 = extractvalue { i32, i1 } %420, 1, !nosanitize !44
  br i1 %422, label %423, label %424, !prof !45, !nosanitize !44

423:                                              ; preds = %418
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

424:                                              ; preds = %418
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %426 = load i32, ptr %425, align 4, !tbaa !74
  %427 = load i32, ptr %19, align 4, !tbaa !71
  %428 = icmp ugt i32 %426, %427
  br i1 %428, label %429, label %430

429:                                              ; preds = %424
  store i32 %427, ptr %425, align 4, !tbaa !74
  br label %430

430:                                              ; preds = %429, %424, %398, %391
  %431 = phi i32 [ %427, %429 ], [ %427, %424 ], [ %369, %398 ], [ %369, %391 ]
  %432 = phi i32 [ %421, %429 ], [ %421, %424 ], [ %393, %398 ], [ %393, %391 ]
  %433 = load ptr, ptr %0, align 8, !tbaa !19
  %434 = getelementptr inbounds nuw i8, ptr %433, i64 8
  %435 = load i32, ptr %434, align 8, !tbaa !79
  %436 = tail call i32 @llvm.umin.i32(i32 %432, i32 %435)
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %491, label %438

438:                                              ; preds = %430
  %439 = load ptr, ptr %26, align 8, !tbaa !34
  %440 = zext i32 %431 to i64
  %441 = getelementptr inbounds nuw i8, ptr %439, i64 %440
  %442 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %435, i32 %436), !nosanitize !44
  %443 = extractvalue { i32, i1 } %442, 1, !nosanitize !44
  br i1 %443, label %444, label %445, !prof !45, !nosanitize !44

444:                                              ; preds = %438
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

445:                                              ; preds = %438
  %446 = extractvalue { i32, i1 } %442, 0, !nosanitize !44
  store i32 %446, ptr %434, align 8, !tbaa !79
  %447 = load ptr, ptr %433, align 8, !tbaa !80
  %448 = zext i32 %436 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %441, ptr align 1 %447, i64 %448, i1 false)
  %449 = getelementptr inbounds nuw i8, ptr %433, i64 56
  %450 = load ptr, ptr %449, align 8, !tbaa !18
  %451 = getelementptr inbounds nuw i8, ptr %450, i64 48
  %452 = load i32, ptr %451, align 8, !tbaa !29
  switch i32 %452, label %461 [
    i32 1, label %453
    i32 2, label %457
  ]

453:                                              ; preds = %445
  %454 = getelementptr inbounds nuw i8, ptr %433, i64 96
  %455 = load i64, ptr %454, align 8, !tbaa !57
  %456 = tail call i64 @adler32(i64 noundef %455, ptr noundef %441, i32 noundef %436) #11
  store i64 %456, ptr %454, align 8, !tbaa !57
  br label %461

457:                                              ; preds = %445
  %458 = getelementptr inbounds nuw i8, ptr %433, i64 96
  %459 = load i64, ptr %458, align 8, !tbaa !57
  %460 = tail call i64 @crc32(i64 noundef %459, ptr noundef %441, i32 noundef %436) #11
  store i64 %460, ptr %458, align 8, !tbaa !57
  br label %461

461:                                              ; preds = %457, %453, %445
  %462 = load ptr, ptr %433, align 8, !tbaa !80
  %463 = getelementptr inbounds nuw i8, ptr %462, i64 %448
  store ptr %463, ptr %433, align 8, !tbaa !80
  %464 = getelementptr inbounds nuw i8, ptr %433, i64 16
  %465 = load i64, ptr %464, align 8, !tbaa !53
  %466 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %465, i64 %448), !nosanitize !44
  %467 = extractvalue { i64, i1 } %466, 1, !nosanitize !44
  br i1 %467, label %468, label %469, !prof !45, !nosanitize !44

468:                                              ; preds = %461
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

469:                                              ; preds = %461
  %470 = extractvalue { i64, i1 } %466, 0, !nosanitize !44
  store i64 %470, ptr %464, align 8, !tbaa !53
  %471 = load i32, ptr %19, align 4, !tbaa !71
  %472 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %471, i32 %436), !nosanitize !44
  %473 = extractvalue { i32, i1 } %472, 1, !nosanitize !44
  br i1 %473, label %474, label %475, !prof !45, !nosanitize !44

474:                                              ; preds = %469
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

475:                                              ; preds = %469
  %476 = extractvalue { i32, i1 } %472, 0, !nosanitize !44
  store i32 %476, ptr %19, align 4, !tbaa !71
  %477 = load i32, ptr %10, align 8, !tbaa !31
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %479 = load i32, ptr %478, align 4, !tbaa !74
  %480 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %477, i32 %479), !nosanitize !44
  %481 = extractvalue { i32, i1 } %480, 1, !nosanitize !44
  br i1 %481, label %482, label %483, !prof !45, !nosanitize !44

482:                                              ; preds = %475
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

483:                                              ; preds = %475
  %484 = extractvalue { i32, i1 } %480, 0, !nosanitize !44
  %485 = tail call i32 @llvm.umin.i32(i32 %436, i32 %484)
  %486 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %479, i32 %485), !nosanitize !44
  %487 = extractvalue { i32, i1 } %486, 1, !nosanitize !44
  br i1 %487, label %488, label %489, !prof !45, !nosanitize !44

488:                                              ; preds = %483
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

489:                                              ; preds = %483
  %490 = extractvalue { i32, i1 } %486, 0, !nosanitize !44
  store i32 %490, ptr %478, align 4, !tbaa !74
  br label %491

491:                                              ; preds = %489, %430
  %492 = phi i32 [ %476, %489 ], [ %431, %430 ]
  %493 = load i64, ptr %370, align 8, !tbaa !38
  %494 = zext i32 %492 to i64
  %495 = icmp ult i64 %493, %494
  br i1 %495, label %496, label %497

496:                                              ; preds = %491
  store i64 %494, ptr %370, align 8, !tbaa !38
  br label %497

497:                                              ; preds = %496, %491
  %498 = load i32, ptr %18, align 4, !tbaa !99
  %499 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %498, i32 42), !nosanitize !44
  %500 = extractvalue { i32, i1 } %499, 1, !nosanitize !44
  br i1 %500, label %501, label %502, !prof !45, !nosanitize !44

501:                                              ; preds = %543, %497
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

502:                                              ; preds = %497
  %503 = extractvalue { i32, i1 } %499, 0, !nosanitize !44
  %504 = lshr i32 %503, 3
  %505 = load i64, ptr %3, align 8, !tbaa !41
  %506 = zext nneg i32 %504 to i64
  %507 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %505, i64 %506), !nosanitize !44
  %508 = extractvalue { i64, i1 } %507, 1, !nosanitize !44
  br i1 %508, label %509, label %510, !prof !45, !nosanitize !44

509:                                              ; preds = %502
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

510:                                              ; preds = %502
  %511 = extractvalue { i64, i1 } %507, 0, !nosanitize !44
  %512 = tail call i64 @llvm.umin.i64(i64 %511, i64 65535)
  %513 = trunc nuw nsw i64 %512 to i32
  %514 = load i64, ptr %20, align 8, !tbaa !72
  %515 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %494, i64 %514), !nosanitize !44
  %516 = extractvalue { i64, i1 } %515, 1, !nosanitize !44
  br i1 %516, label %517, label %518, !prof !45, !nosanitize !44

517:                                              ; preds = %510
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

518:                                              ; preds = %510
  %519 = load i32, ptr %10, align 8, !tbaa !31
  %520 = tail call i32 @llvm.umin.i32(i32 %519, i32 %513)
  %521 = extractvalue { i64, i1 } %515, 0, !nosanitize !44
  %522 = trunc i64 %521 to i32
  %523 = icmp ugt i32 %520, %522
  br i1 %523, label %524, label %533

524:                                              ; preds = %518
  %525 = icmp ne i32 %522, 0
  %526 = or i1 %23, %525
  %527 = and i1 %376, %526
  br i1 %527, label %528, label %601

528:                                              ; preds = %524
  %529 = load ptr, ptr %0, align 8, !tbaa !19
  %530 = getelementptr inbounds nuw i8, ptr %529, i64 8
  %531 = load i32, ptr %530, align 8, !tbaa !79
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %601

533:                                              ; preds = %528, %518
  %534 = tail call i32 @llvm.umin.i32(i32 %513, i32 %522)
  br i1 %23, label %535, label %543

535:                                              ; preds = %533
  %536 = load ptr, ptr %0, align 8, !tbaa !19
  %537 = getelementptr inbounds nuw i8, ptr %536, i64 8
  %538 = load i32, ptr %537, align 8, !tbaa !79
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %543

540:                                              ; preds = %535
  %541 = icmp uge i32 %513, %522
  %542 = zext i1 %541 to i32
  br label %543

543:                                              ; preds = %540, %535, %533
  %544 = phi i32 [ 0, %535 ], [ 0, %533 ], [ %542, %540 ]
  %545 = load ptr, ptr %26, align 8, !tbaa !34
  %546 = getelementptr inbounds i8, ptr %545, i64 %514
  %547 = zext nneg i32 %534 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %546, i64 noundef %547, i32 noundef %544) #11
  %548 = load i64, ptr %20, align 8, !tbaa !72
  %549 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %548, i64 %547), !nosanitize !44
  %550 = extractvalue { i64, i1 } %549, 1, !nosanitize !44
  br i1 %550, label %501, label %551, !prof !45, !nosanitize !44

551:                                              ; preds = %543
  %552 = extractvalue { i64, i1 } %549, 0, !nosanitize !44
  store i64 %552, ptr %20, align 8, !tbaa !72
  %553 = load ptr, ptr %0, align 8, !tbaa !19
  %554 = getelementptr inbounds nuw i8, ptr %553, i64 56
  %555 = load ptr, ptr %554, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %555) #11
  %556 = getelementptr inbounds nuw i8, ptr %555, i64 40
  %557 = load i64, ptr %556, align 8, !tbaa !55
  %558 = getelementptr inbounds nuw i8, ptr %553, i64 32
  %559 = load i32, ptr %558, align 8, !tbaa !105
  %560 = zext i32 %559 to i64
  %561 = tail call i64 @llvm.umin.i64(i64 %557, i64 %560)
  %562 = trunc nuw i64 %561 to i32
  %563 = icmp eq i64 %561, 0
  br i1 %563, label %596, label %564

564:                                              ; preds = %551
  %565 = getelementptr inbounds nuw i8, ptr %553, i64 24
  %566 = load ptr, ptr %565, align 8, !tbaa !104
  %567 = getelementptr inbounds nuw i8, ptr %555, i64 32
  %568 = load ptr, ptr %567, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %566, ptr align 1 %568, i64 %561, i1 false)
  %569 = load ptr, ptr %565, align 8, !tbaa !104
  %570 = getelementptr inbounds nuw i8, ptr %569, i64 %561
  store ptr %570, ptr %565, align 8, !tbaa !104
  %571 = load ptr, ptr %567, align 8, !tbaa !56
  %572 = getelementptr inbounds nuw i8, ptr %571, i64 %561
  store ptr %572, ptr %567, align 8, !tbaa !56
  %573 = getelementptr inbounds nuw i8, ptr %553, i64 40
  %574 = load i64, ptr %573, align 8, !tbaa !106
  %575 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %574, i64 %561), !nosanitize !44
  %576 = extractvalue { i64, i1 } %575, 1, !nosanitize !44
  br i1 %576, label %577, label %578, !prof !45, !nosanitize !44

577:                                              ; preds = %564
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

578:                                              ; preds = %564
  %579 = extractvalue { i64, i1 } %575, 0, !nosanitize !44
  store i64 %579, ptr %573, align 8, !tbaa !106
  %580 = load i32, ptr %558, align 8, !tbaa !105
  %581 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %580, i32 %562), !nosanitize !44
  %582 = extractvalue { i32, i1 } %581, 1, !nosanitize !44
  br i1 %582, label %583, label %584, !prof !45, !nosanitize !44

583:                                              ; preds = %578
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

584:                                              ; preds = %578
  %585 = extractvalue { i32, i1 } %581, 0, !nosanitize !44
  store i32 %585, ptr %558, align 8, !tbaa !105
  %586 = load i64, ptr %556, align 8, !tbaa !55
  %587 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %586, i64 %561), !nosanitize !44
  %588 = extractvalue { i64, i1 } %587, 1, !nosanitize !44
  br i1 %588, label %589, label %590, !prof !45, !nosanitize !44

589:                                              ; preds = %584
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

590:                                              ; preds = %584
  %591 = extractvalue { i64, i1 } %587, 0, !nosanitize !44
  store i64 %591, ptr %556, align 8, !tbaa !55
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %593, label %596

593:                                              ; preds = %590
  %594 = getelementptr inbounds nuw i8, ptr %555, i64 16
  %595 = load ptr, ptr %594, align 8, !tbaa !40
  store ptr %595, ptr %567, align 8, !tbaa !56
  br label %596

596:                                              ; preds = %593, %590, %551
  %597 = icmp eq i32 %544, 0
  br i1 %597, label %601, label %598

598:                                              ; preds = %596, %374
  %599 = phi i32 [ 3, %374 ], [ 2, %596 ]
  %600 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %600, align 8, !tbaa !100
  br label %601

601:                                              ; preds = %598, %596, %528, %524, %382
  %602 = phi i32 [ 1, %382 ], [ 0, %596 ], [ 0, %524 ], [ 0, %528 ], [ %599, %598 ]
  ret i32 %602
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_huff(ptr noundef nonnull %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  br label %25

25:                                               ; preds = %.backedge, %2
  %26 = load i32, ptr %3, align 4, !tbaa !73
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %322

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 8, !tbaa !31
  %30 = zext i32 %29 to i64
  br label %31

31:                                               ; preds = %268, %28
  %32 = phi i32 [ %196, %268 ], [ 0, %28 ]
  %33 = load i64, ptr %5, align 8, !tbaa !59
  %34 = zext nneg i32 %32 to i64
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %33, i64 %34), !nosanitize !44
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !44
  br i1 %36, label %37, label %38, !prof !45, !nosanitize !44

37:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

38:                                               ; preds = %31
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !44
  %40 = load i32, ptr %6, align 4, !tbaa !71
  %41 = zext i32 %40 to i64
  %42 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %39, i64 %41), !nosanitize !44
  %43 = extractvalue { i64, i1 } %42, 1, !nosanitize !44
  br i1 %43, label %44, label %45, !prof !45, !nosanitize !44

44:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

45:                                               ; preds = %38
  %46 = extractvalue { i64, i1 } %42, 0, !nosanitize !44
  %47 = trunc i64 %46 to i32
  %48 = load i32, ptr %4, align 8, !tbaa !31
  %49 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %48, i32 262), !nosanitize !44
  %50 = extractvalue { i32, i1 } %49, 1, !nosanitize !44
  br i1 %50, label %51, label %52, !prof !45, !nosanitize !44

51:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

52:                                               ; preds = %45
  %53 = extractvalue { i32, i1 } %49, 0, !nosanitize !44
  %54 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %29, i32 %53), !nosanitize !44
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !44
  br i1 %55, label %56, label %57, !prof !45, !nosanitize !44

56:                                               ; preds = %52
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

57:                                               ; preds = %52
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !44
  %59 = icmp ult i32 %40, %58
  br i1 %59, label %143, label %60

60:                                               ; preds = %57
  %61 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %29, i32 %47), !nosanitize !44
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !44
  br i1 %62, label %63, label %64, !prof !45, !nosanitize !44

63:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

64:                                               ; preds = %60
  %65 = extractvalue { i32, i1 } %61, 0, !nosanitize !44
  %66 = load ptr, ptr %7, align 8, !tbaa !34
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %30
  %68 = zext i32 %65 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr align 1 %67, i64 %68, i1 false)
  %69 = load i32, ptr %8, align 8, !tbaa !81
  %70 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %69, i32 %29), !nosanitize !44
  %71 = extractvalue { i32, i1 } %70, 1, !nosanitize !44
  br i1 %71, label %72, label %73, !prof !45, !nosanitize !44

72:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

73:                                               ; preds = %64
  %74 = extractvalue { i32, i1 } %70, 0, !nosanitize !44
  store i32 %74, ptr %8, align 8, !tbaa !81
  %75 = load i32, ptr %6, align 4, !tbaa !71
  %76 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %75, i32 %29), !nosanitize !44
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !44
  br i1 %77, label %78, label %79, !prof !45, !nosanitize !44

78:                                               ; preds = %79, %73
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

79:                                               ; preds = %73
  %80 = extractvalue { i32, i1 } %76, 0, !nosanitize !44
  store i32 %80, ptr %6, align 4, !tbaa !71
  %81 = load i64, ptr %9, align 8, !tbaa !72
  %82 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %81, i64 %30), !nosanitize !44
  %83 = extractvalue { i64, i1 } %82, 1, !nosanitize !44
  br i1 %83, label %78, label %84, !prof !45, !nosanitize !44

84:                                               ; preds = %79
  %85 = extractvalue { i64, i1 } %82, 0, !nosanitize !44
  store i64 %85, ptr %9, align 8, !tbaa !72
  %86 = load i32, ptr %10, align 4, !tbaa !74
  %87 = icmp ugt i32 %86, %80
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 %80, ptr %10, align 4, !tbaa !74
  br label %89

89:                                               ; preds = %88, %84
  %90 = load i32, ptr %4, align 8, !tbaa !31
  %91 = load i32, ptr %11, align 4, !tbaa !36
  %92 = load ptr, ptr %12, align 8, !tbaa !37
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds nuw [2 x i8], ptr %92, i64 %93
  %.not.not = icmp eq i32 %91, 0
  br i1 %.not.not, label %.split.us, label %.split.preheader, !prof !45, !nosanitize !44

.split.preheader:                                 ; preds = %89
  %min.iters.check74 = icmp ult i32 %91, 8
  br i1 %min.iters.check74, label %.split.preheader96, label %vector.ph75

vector.ph75:                                      ; preds = %.split.preheader
  %n.vec77 = and i64 %93, 4294967288
  %95 = mul nsw i64 %n.vec77, -2
  %96 = getelementptr i8, ptr %94, i64 %95
  %.cast78 = trunc nuw i64 %n.vec77 to i32
  %97 = sub i32 %91, %.cast78
  %broadcast.splatinsert79 = insertelement <8 x i32> poison, i32 %90, i64 0
  %98 = shufflevector <8 x i32> %broadcast.splatinsert79, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph75
  %index82 = phi i64 [ 0, %vector.ph75 ], [ %index.next88, %vector.body81 ]
  %offset.idx83 = mul i64 %index82, -2
  %next.gep84 = getelementptr i8, ptr %94, i64 %offset.idx83
  %99 = getelementptr inbounds i8, ptr %next.gep84, i64 -16
  %wide.load85 = load <8 x i16>, ptr %99, align 2, !tbaa !60
  %100 = zext <8 x i16> %wide.load85 to <8 x i32>
  %101 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %100, <8 x i32> %98)
  %reverse87 = trunc nuw <8 x i32> %101 to <8 x i16>
  store <8 x i16> %reverse87, ptr %99, align 2, !tbaa !60
  %index.next88 = add nuw i64 %index82, 8
  %102 = icmp eq i64 %index.next88, %n.vec77
  br i1 %102, label %middle.block89, label %vector.body81, !llvm.loop !132

middle.block89:                                   ; preds = %vector.body81
  %cmp.n90 = icmp eq i64 %n.vec77, %93
  br i1 %cmp.n90, label %.loopexit94, label %.split.preheader96

.split.preheader96:                               ; preds = %.split.preheader, %middle.block89
  %.ph97 = phi ptr [ %94, %.split.preheader ], [ %96, %middle.block89 ]
  %.ph98 = phi i32 [ %91, %.split.preheader ], [ %97, %middle.block89 ]
  br label %.split

.split.us:                                        ; preds = %89
  %103 = getelementptr inbounds i8, ptr %94, i64 -2
  %104 = load i16, ptr %103, align 2, !tbaa !60
  %105 = zext i16 %104 to i32
  %106 = tail call i32 @llvm.usub.sat.i32(i32 %105, i32 %90)
  %107 = trunc nuw i32 %106 to i16
  store i16 %107, ptr %103, align 2, !tbaa !60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split:                                           ; preds = %.split.preheader96, %.split
  %108 = phi ptr [ %110, %.split ], [ %.ph97, %.split.preheader96 ]
  %109 = phi i32 [ %115, %.split ], [ %.ph98, %.split.preheader96 ]
  %110 = getelementptr inbounds i8, ptr %108, i64 -2
  %111 = load i16, ptr %110, align 2, !tbaa !60
  %112 = zext i16 %111 to i32
  %113 = tail call i32 @llvm.usub.sat.i32(i32 %112, i32 %90)
  %114 = trunc nuw i32 %113 to i16
  store i16 %114, ptr %110, align 2, !tbaa !60
  %115 = add i32 %109, -1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %.loopexit94, label %.split, !llvm.loop !133

.loopexit94:                                      ; preds = %.split, %middle.block89
  %.not.not60 = icmp eq i32 %90, 0
  br i1 %.not.not60, label %.split32.us, label %.split32, !prof !45, !nosanitize !44

.split32.us:                                      ; preds = %.loopexit94
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split32:                                         ; preds = %.loopexit94
  %117 = load ptr, ptr %13, align 8, !tbaa !35
  %118 = zext i32 %90 to i64
  %119 = getelementptr inbounds nuw [2 x i8], ptr %117, i64 %118
  %min.iters.check = icmp ult i32 %90, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.split32
  %n.vec = and i64 %118, 4294967288
  %120 = mul nsw i64 %n.vec, -2
  %121 = getelementptr i8, ptr %119, i64 %120
  %.cast = trunc nuw i64 %n.vec to i32
  %122 = sub i32 %90, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %90, i64 0
  %123 = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %119, i64 %offset.idx
  %124 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.load = load <8 x i16>, ptr %124, align 2, !tbaa !60
  %125 = zext <8 x i16> %wide.load to <8 x i32>
  %126 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %125, <8 x i32> %123)
  %reverse71 = trunc nuw <8 x i32> %126 to <8 x i16>
  store <8 x i16> %reverse71, ptr %124, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %127 = icmp eq i64 %index.next, %n.vec
  br i1 %127, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %118
  br i1 %cmp.n, label %.loopexit93, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split32, %middle.block
  %.ph = phi ptr [ %119, %.split32 ], [ %121, %middle.block ]
  %.ph95 = phi i32 [ %90, %.split32 ], [ %122, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %128 = phi ptr [ %130, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %129 = phi i32 [ %135, %scalar.ph ], [ %.ph95, %scalar.ph.preheader ]
  %130 = getelementptr inbounds i8, ptr %128, i64 -2
  %131 = load i16, ptr %130, align 2, !tbaa !60
  %132 = zext i16 %131 to i32
  %133 = tail call i32 @llvm.usub.sat.i32(i32 %132, i32 %90)
  %134 = trunc nuw i32 %133 to i16
  store i16 %134, ptr %130, align 2, !tbaa !60
  %135 = add i32 %129, -1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %.loopexit93, label %scalar.ph, !llvm.loop !135

.loopexit93:                                      ; preds = %scalar.ph, %middle.block
  store i32 1, ptr %14, align 8, !tbaa !61
  %137 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %47, i32 %29), !nosanitize !44
  %138 = extractvalue { i32, i1 } %137, 1, !nosanitize !44
  br i1 %138, label %139, label %140, !prof !45, !nosanitize !44

139:                                              ; preds = %.loopexit93
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

140:                                              ; preds = %.loopexit93
  %141 = extractvalue { i32, i1 } %137, 0, !nosanitize !44
  %142 = load i32, ptr %3, align 4, !tbaa !73
  br label %143

143:                                              ; preds = %140, %57
  %144 = phi i32 [ %142, %140 ], [ %32, %57 ]
  %145 = phi i32 [ %80, %140 ], [ %40, %57 ]
  %146 = phi i32 [ %141, %140 ], [ %47, %57 ]
  %147 = load ptr, ptr %0, align 8, !tbaa !19
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 8
  %149 = load i32, ptr %148, align 8, !tbaa !79
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %273, label %151

151:                                              ; preds = %143
  %152 = load ptr, ptr %7, align 8, !tbaa !34
  %153 = zext i32 %145 to i64
  %154 = getelementptr inbounds nuw i8, ptr %152, i64 %153
  %155 = zext i32 %144 to i64
  %156 = getelementptr inbounds nuw i8, ptr %154, i64 %155
  %157 = tail call i32 @llvm.umin.i32(i32 %149, i32 %146)
  %158 = icmp eq i32 %146, 0
  br i1 %158, label %190, label %159

159:                                              ; preds = %151
  %160 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %157), !nosanitize !44
  %161 = extractvalue { i32, i1 } %160, 1, !nosanitize !44
  br i1 %161, label %162, label %163, !prof !45, !nosanitize !44

162:                                              ; preds = %159
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

163:                                              ; preds = %159
  %164 = extractvalue { i32, i1 } %160, 0, !nosanitize !44
  store i32 %164, ptr %148, align 8, !tbaa !79
  %165 = load ptr, ptr %147, align 8, !tbaa !80
  %166 = zext i32 %157 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %156, ptr align 1 %165, i64 %166, i1 false)
  %167 = getelementptr inbounds nuw i8, ptr %147, i64 56
  %168 = load ptr, ptr %167, align 8, !tbaa !18
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 48
  %170 = load i32, ptr %169, align 8, !tbaa !29
  switch i32 %170, label %179 [
    i32 1, label %171
    i32 2, label %175
  ]

171:                                              ; preds = %163
  %172 = getelementptr inbounds nuw i8, ptr %147, i64 96
  %173 = load i64, ptr %172, align 8, !tbaa !57
  %174 = tail call i64 @adler32(i64 noundef %173, ptr noundef %156, i32 noundef %157) #11
  store i64 %174, ptr %172, align 8, !tbaa !57
  br label %179

175:                                              ; preds = %163
  %176 = getelementptr inbounds nuw i8, ptr %147, i64 96
  %177 = load i64, ptr %176, align 8, !tbaa !57
  %178 = tail call i64 @crc32(i64 noundef %177, ptr noundef %156, i32 noundef %157) #11
  store i64 %178, ptr %176, align 8, !tbaa !57
  br label %179

179:                                              ; preds = %175, %171, %163
  %180 = load ptr, ptr %147, align 8, !tbaa !80
  %181 = getelementptr inbounds nuw i8, ptr %180, i64 %166
  store ptr %181, ptr %147, align 8, !tbaa !80
  %182 = getelementptr inbounds nuw i8, ptr %147, i64 16
  %183 = load i64, ptr %182, align 8, !tbaa !53
  %184 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %183, i64 %166), !nosanitize !44
  %185 = extractvalue { i64, i1 } %184, 1, !nosanitize !44
  br i1 %185, label %186, label %187, !prof !45, !nosanitize !44

186:                                              ; preds = %179
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

187:                                              ; preds = %179
  %188 = extractvalue { i64, i1 } %184, 0, !nosanitize !44
  store i64 %188, ptr %182, align 8, !tbaa !53
  %189 = load i32, ptr %3, align 4, !tbaa !73
  br label %190

190:                                              ; preds = %187, %151
  %191 = phi i32 [ %144, %151 ], [ %189, %187 ]
  %192 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %191, i32 %157), !nosanitize !44
  %193 = extractvalue { i32, i1 } %192, 1, !nosanitize !44
  br i1 %193, label %194, label %195, !prof !45, !nosanitize !44

194:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

195:                                              ; preds = %190
  %196 = extractvalue { i32, i1 } %192, 0, !nosanitize !44
  store i32 %196, ptr %3, align 4, !tbaa !73
  %197 = load i32, ptr %10, align 4, !tbaa !74
  %198 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %196, i32 %197), !nosanitize !44
  %199 = extractvalue { i32, i1 } %198, 1, !nosanitize !44
  br i1 %199, label %200, label %201, !prof !45, !nosanitize !44

200:                                              ; preds = %195
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

201:                                              ; preds = %195
  %202 = extractvalue { i32, i1 } %198, 0, !nosanitize !44
  %203 = icmp ugt i32 %202, 2
  br i1 %203, label %204, label %.loopexit

204:                                              ; preds = %201
  %205 = load i32, ptr %6, align 4, !tbaa !71
  %206 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %205, i32 %197), !nosanitize !44
  %207 = extractvalue { i32, i1 } %206, 0, !nosanitize !44
  %208 = extractvalue { i32, i1 } %206, 1, !nosanitize !44
  br i1 %208, label %209, label %210, !prof !45, !nosanitize !44

209:                                              ; preds = %204
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

210:                                              ; preds = %204
  %211 = load ptr, ptr %7, align 8, !tbaa !34
  %212 = zext i32 %207 to i64
  %213 = getelementptr inbounds nuw i8, ptr %211, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !5
  %215 = zext i8 %214 to i32
  store i32 %215, ptr %15, align 8, !tbaa !78
  %216 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %207, i32 1), !nosanitize !44
  %217 = extractvalue { i32, i1 } %216, 1, !nosanitize !44
  br i1 %217, label %218, label %219, !prof !45, !nosanitize !44

218:                                              ; preds = %210
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

219:                                              ; preds = %210
  %220 = extractvalue { i32, i1 } %216, 0, !nosanitize !44
  %221 = load i32, ptr %16, align 8, !tbaa !52
  %222 = shl i32 %215, %221
  %223 = zext i32 %220 to i64
  %224 = getelementptr inbounds nuw i8, ptr %211, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !5
  %226 = zext i8 %225 to i32
  %227 = xor i32 %222, %226
  %228 = load i32, ptr %17, align 4, !tbaa !51
  %229 = and i32 %227, %228
  store i32 %229, ptr %15, align 8, !tbaa !78
  br label %230

230:                                              ; preds = %263, %219
  %231 = phi i32 [ %229, %219 ], [ %248, %263 ]
  %232 = phi i32 [ %197, %219 ], [ %259, %263 ]
  %233 = phi i32 [ %207, %219 ], [ %264, %263 ]
  %234 = icmp eq i32 %232, 0
  br i1 %234, label %.loopexit, label %235

235:                                              ; preds = %230
  %236 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %233, i32 3), !nosanitize !44
  %237 = extractvalue { i32, i1 } %236, 1, !nosanitize !44
  br i1 %237, label %238, label %239, !prof !45, !nosanitize !44

238:                                              ; preds = %235
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

239:                                              ; preds = %235
  %240 = shl i32 %231, %221
  %241 = extractvalue { i32, i1 } %236, 0, !nosanitize !44
  %242 = add i32 %241, -1
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds nuw i8, ptr %211, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !5
  %246 = zext i8 %245 to i32
  %247 = xor i32 %240, %246
  %248 = and i32 %247, %228
  store i32 %248, ptr %15, align 8, !tbaa !78
  %249 = load ptr, ptr %12, align 8, !tbaa !37
  %250 = zext i32 %248 to i64
  %251 = getelementptr inbounds nuw [2 x i8], ptr %249, i64 %250
  %252 = load i16, ptr %251, align 2, !tbaa !60
  %253 = load ptr, ptr %13, align 8, !tbaa !35
  %254 = load i32, ptr %18, align 8, !tbaa !32
  %255 = and i32 %254, %233
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds nuw [2 x i8], ptr %253, i64 %256
  store i16 %252, ptr %257, align 2, !tbaa !60
  %258 = trunc i32 %233 to i16
  store i16 %258, ptr %251, align 2, !tbaa !60
  %259 = add i32 %232, -1
  store i32 %259, ptr %10, align 4, !tbaa !74
  %260 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %196, i32 %259), !nosanitize !44
  %261 = extractvalue { i32, i1 } %260, 1, !nosanitize !44
  br i1 %261, label %262, label %263, !prof !45, !nosanitize !44

262:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

263:                                              ; preds = %239
  %264 = add nuw i32 %233, 1
  %265 = extractvalue { i32, i1 } %260, 0, !nosanitize !44
  %266 = icmp ult i32 %265, 3
  br i1 %266, label %.loopexit, label %230, !llvm.loop !89

.loopexit:                                        ; preds = %263, %230, %201
  %267 = icmp ult i32 %196, 262
  br i1 %267, label %268, label %273

268:                                              ; preds = %.loopexit
  %269 = load ptr, ptr %0, align 8, !tbaa !19
  %270 = getelementptr inbounds nuw i8, ptr %269, i64 8
  %271 = load i32, ptr %270, align 8, !tbaa !79
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %31, !llvm.loop !90

273:                                              ; preds = %268, %.loopexit, %143
  %274 = phi i32 [ %196, %268 ], [ %196, %.loopexit ], [ %144, %143 ]
  %275 = load i64, ptr %19, align 8, !tbaa !38
  %276 = load i64, ptr %5, align 8, !tbaa !59
  %277 = icmp ult i64 %275, %276
  br i1 %277, label %278, label %317

278:                                              ; preds = %273
  %279 = load i32, ptr %6, align 4, !tbaa !71
  %280 = zext i32 %279 to i64
  %281 = zext i32 %274 to i64
  %282 = add nuw nsw i64 %280, %281
  %283 = icmp ult i64 %275, %282
  br i1 %283, label %284, label %294

284:                                              ; preds = %278
  %285 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %276, i64 %282), !nosanitize !44
  %286 = extractvalue { i64, i1 } %285, 1, !nosanitize !44
  br i1 %286, label %287, label %288, !prof !45, !nosanitize !44

287:                                              ; preds = %284
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

288:                                              ; preds = %284
  %289 = extractvalue { i64, i1 } %285, 0, !nosanitize !44
  %290 = tail call i64 @llvm.umin.i64(i64 %289, i64 258)
  %291 = load ptr, ptr %7, align 8, !tbaa !34
  %292 = getelementptr inbounds nuw i8, ptr %291, i64 %282
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %292, i8 0, i64 %290, i1 false)
  %293 = add nuw nsw i64 %290, %282
  br label %314

294:                                              ; preds = %278
  %295 = add nuw nsw i64 %282, 258
  %296 = icmp ult i64 %275, %295
  br i1 %296, label %297, label %317

297:                                              ; preds = %294
  %298 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %276, i64 %275), !nosanitize !44
  %299 = extractvalue { i64, i1 } %298, 1, !nosanitize !44
  br i1 %299, label %300, label %301, !prof !45, !nosanitize !44

300:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

301:                                              ; preds = %297
  %302 = sub nuw nsw i64 %295, %275
  %303 = extractvalue { i64, i1 } %298, 0, !nosanitize !44
  %304 = tail call i64 @llvm.umin.i64(i64 %302, i64 %303)
  %305 = load ptr, ptr %7, align 8, !tbaa !34
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 %275
  %307 = and i64 %304, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %306, i8 0, i64 %307, i1 false)
  %308 = load i64, ptr %19, align 8, !tbaa !38
  %309 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %308, i64 %304), !nosanitize !44
  %310 = extractvalue { i64, i1 } %309, 1, !nosanitize !44
  br i1 %310, label %311, label %312, !prof !45, !nosanitize !44

311:                                              ; preds = %301
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

312:                                              ; preds = %301
  %313 = extractvalue { i64, i1 } %309, 0, !nosanitize !44
  br label %314

314:                                              ; preds = %312, %288
  %315 = phi i64 [ %293, %288 ], [ %313, %312 ]
  store i64 %315, ptr %19, align 8, !tbaa !38
  %316 = load i32, ptr %3, align 4, !tbaa !73
  br label %317

317:                                              ; preds = %314, %294, %273
  %318 = phi i32 [ %274, %273 ], [ %274, %294 ], [ %316, %314 ]
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %317
  %321 = icmp eq i32 %1, 0
  br i1 %321, label %.loopexit20, label %437

322:                                              ; preds = %317, %25
  store i32 0, ptr %20, align 8, !tbaa !76
  %323 = load ptr, ptr %7, align 8, !tbaa !34
  %324 = load i32, ptr %6, align 4, !tbaa !71
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds nuw i8, ptr %323, i64 %325
  %327 = load i8, ptr %326, align 1, !tbaa !5
  %328 = load i32, ptr %22, align 4, !tbaa !136
  %329 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %328, i32 1), !nosanitize !44
  %330 = extractvalue { i32, i1 } %329, 1, !nosanitize !44
  br i1 %330, label %331, label %332, !prof !45, !nosanitize !44

331:                                              ; preds = %322
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

332:                                              ; preds = %322
  %333 = extractvalue { i32, i1 } %329, 0, !nosanitize !44
  %334 = load ptr, ptr %21, align 8, !tbaa !43
  store i32 %333, ptr %22, align 4, !tbaa !136
  %335 = zext i32 %328 to i64
  %336 = getelementptr inbounds nuw i8, ptr %334, i64 %335
  store i8 0, ptr %336, align 1, !tbaa !5
  %337 = load i32, ptr %22, align 4, !tbaa !136
  %338 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %337, i32 1), !nosanitize !44
  %339 = extractvalue { i32, i1 } %338, 1, !nosanitize !44
  br i1 %339, label %340, label %341, !prof !45, !nosanitize !44

340:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

341:                                              ; preds = %332
  %342 = extractvalue { i32, i1 } %338, 0, !nosanitize !44
  %343 = load ptr, ptr %21, align 8, !tbaa !43
  store i32 %342, ptr %22, align 4, !tbaa !136
  %344 = zext i32 %337 to i64
  %345 = getelementptr inbounds nuw i8, ptr %343, i64 %344
  store i8 0, ptr %345, align 1, !tbaa !5
  %346 = load i32, ptr %22, align 4, !tbaa !136
  %347 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %346, i32 1), !nosanitize !44
  %348 = extractvalue { i32, i1 } %347, 1, !nosanitize !44
  br i1 %348, label %349, label %350, !prof !45, !nosanitize !44

349:                                              ; preds = %341
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

350:                                              ; preds = %341
  %351 = extractvalue { i32, i1 } %347, 0, !nosanitize !44
  %352 = load ptr, ptr %21, align 8, !tbaa !43
  store i32 %351, ptr %22, align 4, !tbaa !136
  %353 = zext i32 %346 to i64
  %354 = getelementptr inbounds nuw i8, ptr %352, i64 %353
  store i8 %327, ptr %354, align 1, !tbaa !5
  %355 = zext i8 %327 to i64
  %356 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %355
  %357 = load i16, ptr %356, align 4, !tbaa !5
  %358 = add i16 %357, 1
  store i16 %358, ptr %356, align 4, !tbaa !5
  %359 = load i32, ptr %22, align 4, !tbaa !136
  %360 = load i32, ptr %24, align 8, !tbaa !46
  %361 = icmp eq i32 %359, %360
  %362 = load i32, ptr %3, align 4, !tbaa !73
  %363 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %362, i32 1), !nosanitize !44
  %364 = extractvalue { i32, i1 } %363, 1, !nosanitize !44
  br i1 %364, label %.loopexit19, label %365, !prof !45, !nosanitize !44

.loopexit19:                                      ; preds = %380, %350, %515, %446
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

365:                                              ; preds = %350
  %366 = extractvalue { i32, i1 } %363, 0, !nosanitize !44
  store i32 %366, ptr %3, align 4, !tbaa !73
  %367 = load i32, ptr %6, align 4, !tbaa !71
  %368 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %367, i32 1), !nosanitize !44
  %369 = extractvalue { i32, i1 } %368, 1, !nosanitize !44
  br i1 %369, label %370, label %371, !prof !45, !nosanitize !44

370:                                              ; preds = %365
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

371:                                              ; preds = %365
  %372 = extractvalue { i32, i1 } %368, 0, !nosanitize !44
  store i32 %372, ptr %6, align 4, !tbaa !71
  br i1 %361, label %373, label %.backedge

373:                                              ; preds = %371
  %374 = load i64, ptr %9, align 8, !tbaa !72
  %375 = icmp sgt i64 %374, -1
  br i1 %375, label %376, label %380

376:                                              ; preds = %373
  %377 = load ptr, ptr %7, align 8, !tbaa !34
  %378 = and i64 %374, 4294967295
  %379 = getelementptr inbounds nuw i8, ptr %377, i64 %378
  br label %380

380:                                              ; preds = %376, %373
  %381 = phi ptr [ %379, %376 ], [ null, %373 ]
  %382 = zext i32 %372 to i64
  %383 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %382, i64 %374), !nosanitize !44
  %384 = extractvalue { i64, i1 } %383, 1, !nosanitize !44
  br i1 %384, label %.loopexit19, label %385, !prof !45, !nosanitize !44

385:                                              ; preds = %380
  %386 = extractvalue { i64, i1 } %383, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %381, i64 noundef %386, i32 noundef 0) #11
  %387 = load i32, ptr %6, align 4, !tbaa !71
  %388 = zext i32 %387 to i64
  store i64 %388, ptr %9, align 8, !tbaa !72
  %389 = load ptr, ptr %0, align 8, !tbaa !19
  %390 = getelementptr inbounds nuw i8, ptr %389, i64 56
  %391 = load ptr, ptr %390, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %391) #11
  %392 = getelementptr inbounds nuw i8, ptr %391, i64 40
  %393 = load i64, ptr %392, align 8, !tbaa !55
  %394 = getelementptr inbounds nuw i8, ptr %389, i64 32
  %395 = load i32, ptr %394, align 8, !tbaa !105
  %396 = zext i32 %395 to i64
  %397 = tail call i64 @llvm.umin.i64(i64 %393, i64 %396)
  %398 = trunc nuw i64 %397 to i32
  %399 = icmp eq i64 %397, 0
  br i1 %399, label %432, label %400

400:                                              ; preds = %385
  %401 = getelementptr inbounds nuw i8, ptr %389, i64 24
  %402 = load ptr, ptr %401, align 8, !tbaa !104
  %403 = getelementptr inbounds nuw i8, ptr %391, i64 32
  %404 = load ptr, ptr %403, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %402, ptr align 1 %404, i64 %397, i1 false)
  %405 = load ptr, ptr %401, align 8, !tbaa !104
  %406 = getelementptr inbounds nuw i8, ptr %405, i64 %397
  store ptr %406, ptr %401, align 8, !tbaa !104
  %407 = load ptr, ptr %403, align 8, !tbaa !56
  %408 = getelementptr inbounds nuw i8, ptr %407, i64 %397
  store ptr %408, ptr %403, align 8, !tbaa !56
  %409 = getelementptr inbounds nuw i8, ptr %389, i64 40
  %410 = load i64, ptr %409, align 8, !tbaa !106
  %411 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %410, i64 %397), !nosanitize !44
  %412 = extractvalue { i64, i1 } %411, 1, !nosanitize !44
  br i1 %412, label %413, label %414, !prof !45, !nosanitize !44

413:                                              ; preds = %400
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

414:                                              ; preds = %400
  %415 = extractvalue { i64, i1 } %411, 0, !nosanitize !44
  store i64 %415, ptr %409, align 8, !tbaa !106
  %416 = load i32, ptr %394, align 8, !tbaa !105
  %417 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %416, i32 %398), !nosanitize !44
  %418 = extractvalue { i32, i1 } %417, 1, !nosanitize !44
  br i1 %418, label %419, label %420, !prof !45, !nosanitize !44

419:                                              ; preds = %414
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

420:                                              ; preds = %414
  %421 = extractvalue { i32, i1 } %417, 0, !nosanitize !44
  store i32 %421, ptr %394, align 8, !tbaa !105
  %422 = load i64, ptr %392, align 8, !tbaa !55
  %423 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %422, i64 %397), !nosanitize !44
  %424 = extractvalue { i64, i1 } %423, 1, !nosanitize !44
  br i1 %424, label %425, label %426, !prof !45, !nosanitize !44

425:                                              ; preds = %420
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

426:                                              ; preds = %420
  %427 = extractvalue { i64, i1 } %423, 0, !nosanitize !44
  store i64 %427, ptr %392, align 8, !tbaa !55
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %426
  %430 = getelementptr inbounds nuw i8, ptr %391, i64 16
  %431 = load ptr, ptr %430, align 8, !tbaa !40
  store ptr %431, ptr %403, align 8, !tbaa !56
  br label %432

432:                                              ; preds = %429, %426, %385
  %433 = load ptr, ptr %0, align 8, !tbaa !19
  %434 = getelementptr inbounds nuw i8, ptr %433, i64 32
  %435 = load i32, ptr %434, align 8, !tbaa !105
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %.loopexit20, label %.backedge

.backedge:                                        ; preds = %432, %371
  br label %25

437:                                              ; preds = %320
  store i32 0, ptr %10, align 4, !tbaa !74
  %438 = icmp eq i32 %1, 4
  br i1 %438, label %439, label %505

439:                                              ; preds = %437
  %440 = load i64, ptr %9, align 8, !tbaa !72
  %441 = icmp sgt i64 %440, -1
  br i1 %441, label %442, label %446

442:                                              ; preds = %439
  %443 = load ptr, ptr %7, align 8, !tbaa !34
  %444 = and i64 %440, 4294967295
  %445 = getelementptr inbounds nuw i8, ptr %443, i64 %444
  br label %446

446:                                              ; preds = %442, %439
  %447 = phi ptr [ %445, %442 ], [ null, %439 ]
  %448 = load i32, ptr %6, align 4, !tbaa !71
  %449 = zext i32 %448 to i64
  %450 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %449, i64 %440), !nosanitize !44
  %451 = extractvalue { i64, i1 } %450, 1, !nosanitize !44
  br i1 %451, label %.loopexit19, label %452, !prof !45, !nosanitize !44

452:                                              ; preds = %446
  %453 = extractvalue { i64, i1 } %450, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %447, i64 noundef %453, i32 noundef 1) #11
  %454 = load i32, ptr %6, align 4, !tbaa !71
  %455 = zext i32 %454 to i64
  store i64 %455, ptr %9, align 8, !tbaa !72
  %456 = load ptr, ptr %0, align 8, !tbaa !19
  %457 = getelementptr inbounds nuw i8, ptr %456, i64 56
  %458 = load ptr, ptr %457, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %458) #11
  %459 = getelementptr inbounds nuw i8, ptr %458, i64 40
  %460 = load i64, ptr %459, align 8, !tbaa !55
  %461 = getelementptr inbounds nuw i8, ptr %456, i64 32
  %462 = load i32, ptr %461, align 8, !tbaa !105
  %463 = zext i32 %462 to i64
  %464 = tail call i64 @llvm.umin.i64(i64 %460, i64 %463)
  %465 = trunc nuw i64 %464 to i32
  %466 = icmp eq i64 %464, 0
  br i1 %466, label %499, label %467

467:                                              ; preds = %452
  %468 = getelementptr inbounds nuw i8, ptr %456, i64 24
  %469 = load ptr, ptr %468, align 8, !tbaa !104
  %470 = getelementptr inbounds nuw i8, ptr %458, i64 32
  %471 = load ptr, ptr %470, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %469, ptr align 1 %471, i64 %464, i1 false)
  %472 = load ptr, ptr %468, align 8, !tbaa !104
  %473 = getelementptr inbounds nuw i8, ptr %472, i64 %464
  store ptr %473, ptr %468, align 8, !tbaa !104
  %474 = load ptr, ptr %470, align 8, !tbaa !56
  %475 = getelementptr inbounds nuw i8, ptr %474, i64 %464
  store ptr %475, ptr %470, align 8, !tbaa !56
  %476 = getelementptr inbounds nuw i8, ptr %456, i64 40
  %477 = load i64, ptr %476, align 8, !tbaa !106
  %478 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %477, i64 %464), !nosanitize !44
  %479 = extractvalue { i64, i1 } %478, 1, !nosanitize !44
  br i1 %479, label %480, label %481, !prof !45, !nosanitize !44

480:                                              ; preds = %467
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

481:                                              ; preds = %467
  %482 = extractvalue { i64, i1 } %478, 0, !nosanitize !44
  store i64 %482, ptr %476, align 8, !tbaa !106
  %483 = load i32, ptr %461, align 8, !tbaa !105
  %484 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %483, i32 %465), !nosanitize !44
  %485 = extractvalue { i32, i1 } %484, 1, !nosanitize !44
  br i1 %485, label %486, label %487, !prof !45, !nosanitize !44

486:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

487:                                              ; preds = %481
  %488 = extractvalue { i32, i1 } %484, 0, !nosanitize !44
  store i32 %488, ptr %461, align 8, !tbaa !105
  %489 = load i64, ptr %459, align 8, !tbaa !55
  %490 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %489, i64 %464), !nosanitize !44
  %491 = extractvalue { i64, i1 } %490, 1, !nosanitize !44
  br i1 %491, label %492, label %493, !prof !45, !nosanitize !44

492:                                              ; preds = %487
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

493:                                              ; preds = %487
  %494 = extractvalue { i64, i1 } %490, 0, !nosanitize !44
  store i64 %494, ptr %459, align 8, !tbaa !55
  %495 = icmp eq i64 %494, 0
  br i1 %495, label %496, label %499

496:                                              ; preds = %493
  %497 = getelementptr inbounds nuw i8, ptr %458, i64 16
  %498 = load ptr, ptr %497, align 8, !tbaa !40
  store ptr %498, ptr %470, align 8, !tbaa !56
  br label %499

499:                                              ; preds = %496, %493, %452
  %500 = load ptr, ptr %0, align 8, !tbaa !19
  %501 = getelementptr inbounds nuw i8, ptr %500, i64 32
  %502 = load i32, ptr %501, align 8, !tbaa !105
  %503 = icmp eq i32 %502, 0
  %504 = select i1 %503, i32 2, i32 3
  br label %.loopexit20

505:                                              ; preds = %437
  %506 = load i32, ptr %22, align 4, !tbaa !136
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %573, label %508

508:                                              ; preds = %505
  %509 = load i64, ptr %9, align 8, !tbaa !72
  %510 = icmp sgt i64 %509, -1
  br i1 %510, label %511, label %515

511:                                              ; preds = %508
  %512 = load ptr, ptr %7, align 8, !tbaa !34
  %513 = and i64 %509, 4294967295
  %514 = getelementptr inbounds nuw i8, ptr %512, i64 %513
  br label %515

515:                                              ; preds = %511, %508
  %516 = phi ptr [ %514, %511 ], [ null, %508 ]
  %517 = load i32, ptr %6, align 4, !tbaa !71
  %518 = zext i32 %517 to i64
  %519 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %518, i64 %509), !nosanitize !44
  %520 = extractvalue { i64, i1 } %519, 1, !nosanitize !44
  br i1 %520, label %.loopexit19, label %521, !prof !45, !nosanitize !44

521:                                              ; preds = %515
  %522 = extractvalue { i64, i1 } %519, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %516, i64 noundef %522, i32 noundef 0) #11
  %523 = load i32, ptr %6, align 4, !tbaa !71
  %524 = zext i32 %523 to i64
  store i64 %524, ptr %9, align 8, !tbaa !72
  %525 = load ptr, ptr %0, align 8, !tbaa !19
  %526 = getelementptr inbounds nuw i8, ptr %525, i64 56
  %527 = load ptr, ptr %526, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %527) #11
  %528 = getelementptr inbounds nuw i8, ptr %527, i64 40
  %529 = load i64, ptr %528, align 8, !tbaa !55
  %530 = getelementptr inbounds nuw i8, ptr %525, i64 32
  %531 = load i32, ptr %530, align 8, !tbaa !105
  %532 = zext i32 %531 to i64
  %533 = tail call i64 @llvm.umin.i64(i64 %529, i64 %532)
  %534 = trunc nuw i64 %533 to i32
  %535 = icmp eq i64 %533, 0
  br i1 %535, label %568, label %536

536:                                              ; preds = %521
  %537 = getelementptr inbounds nuw i8, ptr %525, i64 24
  %538 = load ptr, ptr %537, align 8, !tbaa !104
  %539 = getelementptr inbounds nuw i8, ptr %527, i64 32
  %540 = load ptr, ptr %539, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %538, ptr align 1 %540, i64 %533, i1 false)
  %541 = load ptr, ptr %537, align 8, !tbaa !104
  %542 = getelementptr inbounds nuw i8, ptr %541, i64 %533
  store ptr %542, ptr %537, align 8, !tbaa !104
  %543 = load ptr, ptr %539, align 8, !tbaa !56
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 %533
  store ptr %544, ptr %539, align 8, !tbaa !56
  %545 = getelementptr inbounds nuw i8, ptr %525, i64 40
  %546 = load i64, ptr %545, align 8, !tbaa !106
  %547 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %546, i64 %533), !nosanitize !44
  %548 = extractvalue { i64, i1 } %547, 1, !nosanitize !44
  br i1 %548, label %549, label %550, !prof !45, !nosanitize !44

549:                                              ; preds = %536
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

550:                                              ; preds = %536
  %551 = extractvalue { i64, i1 } %547, 0, !nosanitize !44
  store i64 %551, ptr %545, align 8, !tbaa !106
  %552 = load i32, ptr %530, align 8, !tbaa !105
  %553 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %552, i32 %534), !nosanitize !44
  %554 = extractvalue { i32, i1 } %553, 1, !nosanitize !44
  br i1 %554, label %555, label %556, !prof !45, !nosanitize !44

555:                                              ; preds = %550
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

556:                                              ; preds = %550
  %557 = extractvalue { i32, i1 } %553, 0, !nosanitize !44
  store i32 %557, ptr %530, align 8, !tbaa !105
  %558 = load i64, ptr %528, align 8, !tbaa !55
  %559 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %558, i64 %533), !nosanitize !44
  %560 = extractvalue { i64, i1 } %559, 1, !nosanitize !44
  br i1 %560, label %561, label %562, !prof !45, !nosanitize !44

561:                                              ; preds = %556
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

562:                                              ; preds = %556
  %563 = extractvalue { i64, i1 } %559, 0, !nosanitize !44
  store i64 %563, ptr %528, align 8, !tbaa !55
  %564 = icmp eq i64 %563, 0
  br i1 %564, label %565, label %568

565:                                              ; preds = %562
  %566 = getelementptr inbounds nuw i8, ptr %527, i64 16
  %567 = load ptr, ptr %566, align 8, !tbaa !40
  store ptr %567, ptr %539, align 8, !tbaa !56
  br label %568

568:                                              ; preds = %565, %562, %521
  %569 = load ptr, ptr %0, align 8, !tbaa !19
  %570 = getelementptr inbounds nuw i8, ptr %569, i64 32
  %571 = load i32, ptr %570, align 8, !tbaa !105
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %.loopexit20, label %573

573:                                              ; preds = %568, %505
  br label %.loopexit20

.loopexit20:                                      ; preds = %432, %573, %568, %499, %320
  %574 = phi i32 [ 1, %573 ], [ 0, %320 ], [ %504, %499 ], [ 0, %568 ], [ 0, %432 ]
  ret i32 %574
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_rle(ptr noundef nonnull %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %21 = icmp eq i32 %1, 0
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  br label %27

27:                                               ; preds = %.backedge, %2
  %28 = load i32, ptr %3, align 4, !tbaa !73
  %29 = icmp ult i32 %28, 259
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  store i32 0, ptr %4, align 8, !tbaa !76
  %31 = load i32, ptr %7, align 4, !tbaa !71
  %.pre.pre77.pre = load ptr, ptr %8, align 8, !tbaa !34
  br label %330

32:                                               ; preds = %27
  %33 = load i32, ptr %5, align 8, !tbaa !31
  %34 = zext i32 %33 to i64
  br label %35

35:                                               ; preds = %272, %32
  %36 = phi i32 [ %200, %272 ], [ %28, %32 ]
  %37 = load i64, ptr %6, align 8, !tbaa !59
  %38 = zext nneg i32 %36 to i64
  %39 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %37, i64 %38), !nosanitize !44
  %40 = extractvalue { i64, i1 } %39, 1, !nosanitize !44
  br i1 %40, label %41, label %42, !prof !45, !nosanitize !44

41:                                               ; preds = %35
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

42:                                               ; preds = %35
  %43 = extractvalue { i64, i1 } %39, 0, !nosanitize !44
  %44 = load i32, ptr %7, align 4, !tbaa !71
  %45 = zext i32 %44 to i64
  %46 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %43, i64 %45), !nosanitize !44
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !44
  br i1 %47, label %48, label %49, !prof !45, !nosanitize !44

48:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

49:                                               ; preds = %42
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !44
  %51 = trunc i64 %50 to i32
  %52 = load i32, ptr %5, align 8, !tbaa !31
  %53 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %52, i32 262), !nosanitize !44
  %54 = extractvalue { i32, i1 } %53, 1, !nosanitize !44
  br i1 %54, label %55, label %56, !prof !45, !nosanitize !44

55:                                               ; preds = %49
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

56:                                               ; preds = %49
  %57 = extractvalue { i32, i1 } %53, 0, !nosanitize !44
  %58 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %33, i32 %57), !nosanitize !44
  %59 = extractvalue { i32, i1 } %58, 1, !nosanitize !44
  br i1 %59, label %60, label %61, !prof !45, !nosanitize !44

60:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

61:                                               ; preds = %56
  %62 = extractvalue { i32, i1 } %58, 0, !nosanitize !44
  %63 = icmp ult i32 %44, %62
  br i1 %63, label %147, label %64

64:                                               ; preds = %61
  %65 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %33, i32 %51), !nosanitize !44
  %66 = extractvalue { i32, i1 } %65, 1, !nosanitize !44
  br i1 %66, label %67, label %68, !prof !45, !nosanitize !44

67:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

68:                                               ; preds = %64
  %69 = extractvalue { i32, i1 } %65, 0, !nosanitize !44
  %70 = load ptr, ptr %8, align 8, !tbaa !34
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 %34
  %72 = zext i32 %69 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %70, ptr align 1 %71, i64 %72, i1 false)
  %73 = load i32, ptr %9, align 8, !tbaa !81
  %74 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %73, i32 %33), !nosanitize !44
  %75 = extractvalue { i32, i1 } %74, 1, !nosanitize !44
  br i1 %75, label %76, label %77, !prof !45, !nosanitize !44

76:                                               ; preds = %68
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

77:                                               ; preds = %68
  %78 = extractvalue { i32, i1 } %74, 0, !nosanitize !44
  store i32 %78, ptr %9, align 8, !tbaa !81
  %79 = load i32, ptr %7, align 4, !tbaa !71
  %80 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %79, i32 %33), !nosanitize !44
  %81 = extractvalue { i32, i1 } %80, 1, !nosanitize !44
  br i1 %81, label %82, label %83, !prof !45, !nosanitize !44

82:                                               ; preds = %83, %77
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

83:                                               ; preds = %77
  %84 = extractvalue { i32, i1 } %80, 0, !nosanitize !44
  store i32 %84, ptr %7, align 4, !tbaa !71
  %85 = load i64, ptr %10, align 8, !tbaa !72
  %86 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %85, i64 %34), !nosanitize !44
  %87 = extractvalue { i64, i1 } %86, 1, !nosanitize !44
  br i1 %87, label %82, label %88, !prof !45, !nosanitize !44

88:                                               ; preds = %83
  %89 = extractvalue { i64, i1 } %86, 0, !nosanitize !44
  store i64 %89, ptr %10, align 8, !tbaa !72
  %90 = load i32, ptr %11, align 4, !tbaa !74
  %91 = icmp ugt i32 %90, %84
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 %84, ptr %11, align 4, !tbaa !74
  br label %93

93:                                               ; preds = %92, %88
  %94 = load i32, ptr %5, align 8, !tbaa !31
  %95 = load i32, ptr %12, align 4, !tbaa !36
  %96 = load ptr, ptr %13, align 8, !tbaa !37
  %97 = zext i32 %95 to i64
  %98 = getelementptr inbounds nuw [2 x i8], ptr %96, i64 %97
  %.not.not = icmp eq i32 %95, 0
  br i1 %.not.not, label %.split.us, label %.split.preheader, !prof !45, !nosanitize !44

.split.preheader:                                 ; preds = %93
  %min.iters.check151 = icmp ult i32 %95, 8
  br i1 %min.iters.check151, label %.split.preheader173, label %vector.ph152

vector.ph152:                                     ; preds = %.split.preheader
  %n.vec154 = and i64 %97, 4294967288
  %99 = mul nsw i64 %n.vec154, -2
  %100 = getelementptr i8, ptr %98, i64 %99
  %.cast155 = trunc nuw i64 %n.vec154 to i32
  %101 = sub i32 %95, %.cast155
  %broadcast.splatinsert156 = insertelement <8 x i32> poison, i32 %94, i64 0
  %102 = shufflevector <8 x i32> %broadcast.splatinsert156, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph152
  %index159 = phi i64 [ 0, %vector.ph152 ], [ %index.next165, %vector.body158 ]
  %offset.idx160 = mul i64 %index159, -2
  %next.gep161 = getelementptr i8, ptr %98, i64 %offset.idx160
  %103 = getelementptr inbounds i8, ptr %next.gep161, i64 -16
  %wide.load162 = load <8 x i16>, ptr %103, align 2, !tbaa !60
  %104 = zext <8 x i16> %wide.load162 to <8 x i32>
  %105 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %104, <8 x i32> %102)
  %reverse164 = trunc nuw <8 x i32> %105 to <8 x i16>
  store <8 x i16> %reverse164, ptr %103, align 2, !tbaa !60
  %index.next165 = add nuw i64 %index159, 8
  %106 = icmp eq i64 %index.next165, %n.vec154
  br i1 %106, label %middle.block166, label %vector.body158, !llvm.loop !137

middle.block166:                                  ; preds = %vector.body158
  %cmp.n167 = icmp eq i64 %n.vec154, %97
  br i1 %cmp.n167, label %.loopexit171, label %.split.preheader173

.split.preheader173:                              ; preds = %.split.preheader, %middle.block166
  %.ph174 = phi ptr [ %98, %.split.preheader ], [ %100, %middle.block166 ]
  %.ph175 = phi i32 [ %95, %.split.preheader ], [ %101, %middle.block166 ]
  br label %.split

.split.us:                                        ; preds = %93
  %107 = getelementptr inbounds i8, ptr %98, i64 -2
  %108 = load i16, ptr %107, align 2, !tbaa !60
  %109 = zext i16 %108 to i32
  %110 = tail call i32 @llvm.usub.sat.i32(i32 %109, i32 %94)
  %111 = trunc nuw i32 %110 to i16
  store i16 %111, ptr %107, align 2, !tbaa !60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split:                                           ; preds = %.split.preheader173, %.split
  %112 = phi ptr [ %114, %.split ], [ %.ph174, %.split.preheader173 ]
  %113 = phi i32 [ %119, %.split ], [ %.ph175, %.split.preheader173 ]
  %114 = getelementptr inbounds i8, ptr %112, i64 -2
  %115 = load i16, ptr %114, align 2, !tbaa !60
  %116 = zext i16 %115 to i32
  %117 = tail call i32 @llvm.usub.sat.i32(i32 %116, i32 %94)
  %118 = trunc nuw i32 %117 to i16
  store i16 %118, ptr %114, align 2, !tbaa !60
  %119 = add i32 %113, -1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %.loopexit171, label %.split, !llvm.loop !138

.loopexit171:                                     ; preds = %.split, %middle.block166
  %.not.not106 = icmp eq i32 %94, 0
  br i1 %.not.not106, label %.split68.us, label %.split68, !prof !45, !nosanitize !44

.split68.us:                                      ; preds = %.loopexit171
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split68:                                         ; preds = %.loopexit171
  %121 = load ptr, ptr %14, align 8, !tbaa !35
  %122 = zext i32 %94 to i64
  %123 = getelementptr inbounds nuw [2 x i8], ptr %121, i64 %122
  %min.iters.check = icmp ult i32 %94, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.split68
  %n.vec = and i64 %122, 4294967288
  %124 = mul nsw i64 %n.vec, -2
  %125 = getelementptr i8, ptr %123, i64 %124
  %.cast = trunc nuw i64 %n.vec to i32
  %126 = sub i32 %94, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %94, i64 0
  %127 = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %123, i64 %offset.idx
  %128 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.load = load <8 x i16>, ptr %128, align 2, !tbaa !60
  %129 = zext <8 x i16> %wide.load to <8 x i32>
  %130 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %129, <8 x i32> %127)
  %reverse148 = trunc nuw <8 x i32> %130 to <8 x i16>
  store <8 x i16> %reverse148, ptr %128, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %131 = icmp eq i64 %index.next, %n.vec
  br i1 %131, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %122
  br i1 %cmp.n, label %.loopexit170, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split68, %middle.block
  %.ph = phi ptr [ %123, %.split68 ], [ %125, %middle.block ]
  %.ph172 = phi i32 [ %94, %.split68 ], [ %126, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %132 = phi ptr [ %134, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %133 = phi i32 [ %139, %scalar.ph ], [ %.ph172, %scalar.ph.preheader ]
  %134 = getelementptr inbounds i8, ptr %132, i64 -2
  %135 = load i16, ptr %134, align 2, !tbaa !60
  %136 = zext i16 %135 to i32
  %137 = tail call i32 @llvm.usub.sat.i32(i32 %136, i32 %94)
  %138 = trunc nuw i32 %137 to i16
  store i16 %138, ptr %134, align 2, !tbaa !60
  %139 = add i32 %133, -1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %.loopexit170, label %scalar.ph, !llvm.loop !140

.loopexit170:                                     ; preds = %scalar.ph, %middle.block
  store i32 1, ptr %15, align 8, !tbaa !61
  %141 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %51, i32 %33), !nosanitize !44
  %142 = extractvalue { i32, i1 } %141, 1, !nosanitize !44
  br i1 %142, label %143, label %144, !prof !45, !nosanitize !44

143:                                              ; preds = %.loopexit170
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

144:                                              ; preds = %.loopexit170
  %145 = extractvalue { i32, i1 } %141, 0, !nosanitize !44
  %146 = load i32, ptr %3, align 4, !tbaa !73
  br label %147

147:                                              ; preds = %144, %61
  %148 = phi i32 [ %146, %144 ], [ %36, %61 ]
  %149 = phi i32 [ %84, %144 ], [ %44, %61 ]
  %150 = phi i32 [ %145, %144 ], [ %51, %61 ]
  %151 = load ptr, ptr %0, align 8, !tbaa !19
  %152 = getelementptr inbounds nuw i8, ptr %151, i64 8
  %153 = load i32, ptr %152, align 8, !tbaa !79
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %277, label %155

155:                                              ; preds = %147
  %156 = load ptr, ptr %8, align 8, !tbaa !34
  %157 = zext i32 %149 to i64
  %158 = getelementptr inbounds nuw i8, ptr %156, i64 %157
  %159 = zext i32 %148 to i64
  %160 = getelementptr inbounds nuw i8, ptr %158, i64 %159
  %161 = tail call i32 @llvm.umin.i32(i32 %153, i32 %150)
  %162 = icmp eq i32 %150, 0
  br i1 %162, label %194, label %163

163:                                              ; preds = %155
  %164 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %153, i32 %161), !nosanitize !44
  %165 = extractvalue { i32, i1 } %164, 1, !nosanitize !44
  br i1 %165, label %166, label %167, !prof !45, !nosanitize !44

166:                                              ; preds = %163
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

167:                                              ; preds = %163
  %168 = extractvalue { i32, i1 } %164, 0, !nosanitize !44
  store i32 %168, ptr %152, align 8, !tbaa !79
  %169 = load ptr, ptr %151, align 8, !tbaa !80
  %170 = zext i32 %161 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %160, ptr align 1 %169, i64 %170, i1 false)
  %171 = getelementptr inbounds nuw i8, ptr %151, i64 56
  %172 = load ptr, ptr %171, align 8, !tbaa !18
  %173 = getelementptr inbounds nuw i8, ptr %172, i64 48
  %174 = load i32, ptr %173, align 8, !tbaa !29
  switch i32 %174, label %183 [
    i32 1, label %175
    i32 2, label %179
  ]

175:                                              ; preds = %167
  %176 = getelementptr inbounds nuw i8, ptr %151, i64 96
  %177 = load i64, ptr %176, align 8, !tbaa !57
  %178 = tail call i64 @adler32(i64 noundef %177, ptr noundef %160, i32 noundef %161) #11
  store i64 %178, ptr %176, align 8, !tbaa !57
  br label %183

179:                                              ; preds = %167
  %180 = getelementptr inbounds nuw i8, ptr %151, i64 96
  %181 = load i64, ptr %180, align 8, !tbaa !57
  %182 = tail call i64 @crc32(i64 noundef %181, ptr noundef %160, i32 noundef %161) #11
  store i64 %182, ptr %180, align 8, !tbaa !57
  br label %183

183:                                              ; preds = %179, %175, %167
  %184 = load ptr, ptr %151, align 8, !tbaa !80
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 %170
  store ptr %185, ptr %151, align 8, !tbaa !80
  %186 = getelementptr inbounds nuw i8, ptr %151, i64 16
  %187 = load i64, ptr %186, align 8, !tbaa !53
  %188 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %187, i64 %170), !nosanitize !44
  %189 = extractvalue { i64, i1 } %188, 1, !nosanitize !44
  br i1 %189, label %190, label %191, !prof !45, !nosanitize !44

190:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

191:                                              ; preds = %183
  %192 = extractvalue { i64, i1 } %188, 0, !nosanitize !44
  store i64 %192, ptr %186, align 8, !tbaa !53
  %193 = load i32, ptr %3, align 4, !tbaa !73
  br label %194

194:                                              ; preds = %191, %155
  %195 = phi i32 [ %148, %155 ], [ %193, %191 ]
  %196 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %195, i32 %161), !nosanitize !44
  %197 = extractvalue { i32, i1 } %196, 1, !nosanitize !44
  br i1 %197, label %198, label %199, !prof !45, !nosanitize !44

198:                                              ; preds = %194
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

199:                                              ; preds = %194
  %200 = extractvalue { i32, i1 } %196, 0, !nosanitize !44
  store i32 %200, ptr %3, align 4, !tbaa !73
  %201 = load i32, ptr %11, align 4, !tbaa !74
  %202 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %200, i32 %201), !nosanitize !44
  %203 = extractvalue { i32, i1 } %202, 1, !nosanitize !44
  br i1 %203, label %204, label %205, !prof !45, !nosanitize !44

204:                                              ; preds = %199
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

205:                                              ; preds = %199
  %206 = extractvalue { i32, i1 } %202, 0, !nosanitize !44
  %207 = icmp ugt i32 %206, 2
  br i1 %207, label %208, label %.loopexit

208:                                              ; preds = %205
  %209 = load i32, ptr %7, align 4, !tbaa !71
  %210 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %209, i32 %201), !nosanitize !44
  %211 = extractvalue { i32, i1 } %210, 0, !nosanitize !44
  %212 = extractvalue { i32, i1 } %210, 1, !nosanitize !44
  br i1 %212, label %213, label %214, !prof !45, !nosanitize !44

213:                                              ; preds = %208
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

214:                                              ; preds = %208
  %215 = load ptr, ptr %8, align 8, !tbaa !34
  %216 = zext i32 %211 to i64
  %217 = getelementptr inbounds nuw i8, ptr %215, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !5
  %219 = zext i8 %218 to i32
  store i32 %219, ptr %16, align 8, !tbaa !78
  %220 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %211, i32 1), !nosanitize !44
  %221 = extractvalue { i32, i1 } %220, 1, !nosanitize !44
  br i1 %221, label %222, label %223, !prof !45, !nosanitize !44

222:                                              ; preds = %214
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

223:                                              ; preds = %214
  %224 = extractvalue { i32, i1 } %220, 0, !nosanitize !44
  %225 = load i32, ptr %17, align 8, !tbaa !52
  %226 = shl i32 %219, %225
  %227 = zext i32 %224 to i64
  %228 = getelementptr inbounds nuw i8, ptr %215, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !5
  %230 = zext i8 %229 to i32
  %231 = xor i32 %226, %230
  %232 = load i32, ptr %18, align 4, !tbaa !51
  %233 = and i32 %231, %232
  store i32 %233, ptr %16, align 8, !tbaa !78
  br label %234

234:                                              ; preds = %267, %223
  %235 = phi i32 [ %233, %223 ], [ %252, %267 ]
  %236 = phi i32 [ %201, %223 ], [ %263, %267 ]
  %237 = phi i32 [ %211, %223 ], [ %268, %267 ]
  %238 = icmp eq i32 %236, 0
  br i1 %238, label %.loopexit, label %239

239:                                              ; preds = %234
  %240 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 3), !nosanitize !44
  %241 = extractvalue { i32, i1 } %240, 1, !nosanitize !44
  br i1 %241, label %242, label %243, !prof !45, !nosanitize !44

242:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

243:                                              ; preds = %239
  %244 = shl i32 %235, %225
  %245 = extractvalue { i32, i1 } %240, 0, !nosanitize !44
  %246 = add i32 %245, -1
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds nuw i8, ptr %215, i64 %247
  %249 = load i8, ptr %248, align 1, !tbaa !5
  %250 = zext i8 %249 to i32
  %251 = xor i32 %244, %250
  %252 = and i32 %251, %232
  store i32 %252, ptr %16, align 8, !tbaa !78
  %253 = load ptr, ptr %13, align 8, !tbaa !37
  %254 = zext i32 %252 to i64
  %255 = getelementptr inbounds nuw [2 x i8], ptr %253, i64 %254
  %256 = load i16, ptr %255, align 2, !tbaa !60
  %257 = load ptr, ptr %14, align 8, !tbaa !35
  %258 = load i32, ptr %19, align 8, !tbaa !32
  %259 = and i32 %258, %237
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds nuw [2 x i8], ptr %257, i64 %260
  store i16 %256, ptr %261, align 2, !tbaa !60
  %262 = trunc i32 %237 to i16
  store i16 %262, ptr %255, align 2, !tbaa !60
  %263 = add i32 %236, -1
  store i32 %263, ptr %11, align 4, !tbaa !74
  %264 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %200, i32 %263), !nosanitize !44
  %265 = extractvalue { i32, i1 } %264, 1, !nosanitize !44
  br i1 %265, label %266, label %267, !prof !45, !nosanitize !44

266:                                              ; preds = %243
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

267:                                              ; preds = %243
  %268 = add nuw i32 %237, 1
  %269 = extractvalue { i32, i1 } %264, 0, !nosanitize !44
  %270 = icmp ult i32 %269, 3
  br i1 %270, label %.loopexit, label %234, !llvm.loop !89

.loopexit:                                        ; preds = %267, %234, %205
  %271 = icmp ult i32 %200, 262
  br i1 %271, label %272, label %277

272:                                              ; preds = %.loopexit
  %273 = load ptr, ptr %0, align 8, !tbaa !19
  %274 = getelementptr inbounds nuw i8, ptr %273, i64 8
  %275 = load i32, ptr %274, align 8, !tbaa !79
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %35, !llvm.loop !90

277:                                              ; preds = %272, %.loopexit, %147
  %278 = phi i32 [ %200, %272 ], [ %200, %.loopexit ], [ %148, %147 ]
  %279 = load i64, ptr %20, align 8, !tbaa !38
  %280 = load i64, ptr %6, align 8, !tbaa !59
  %281 = icmp ult i64 %279, %280
  br i1 %281, label %282, label %321

282:                                              ; preds = %277
  %283 = load i32, ptr %7, align 4, !tbaa !71
  %284 = zext i32 %283 to i64
  %285 = zext i32 %278 to i64
  %286 = add nuw nsw i64 %284, %285
  %287 = icmp ult i64 %279, %286
  br i1 %287, label %288, label %298

288:                                              ; preds = %282
  %289 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %280, i64 %286), !nosanitize !44
  %290 = extractvalue { i64, i1 } %289, 1, !nosanitize !44
  br i1 %290, label %291, label %292, !prof !45, !nosanitize !44

291:                                              ; preds = %288
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

292:                                              ; preds = %288
  %293 = extractvalue { i64, i1 } %289, 0, !nosanitize !44
  %294 = tail call i64 @llvm.umin.i64(i64 %293, i64 258)
  %295 = load ptr, ptr %8, align 8, !tbaa !34
  %296 = getelementptr inbounds nuw i8, ptr %295, i64 %286
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %296, i8 0, i64 %294, i1 false)
  %297 = add nuw nsw i64 %294, %286
  br label %318

298:                                              ; preds = %282
  %299 = add nuw nsw i64 %286, 258
  %300 = icmp ult i64 %279, %299
  br i1 %300, label %301, label %321

301:                                              ; preds = %298
  %302 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %280, i64 %279), !nosanitize !44
  %303 = extractvalue { i64, i1 } %302, 1, !nosanitize !44
  br i1 %303, label %304, label %305, !prof !45, !nosanitize !44

304:                                              ; preds = %301
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

305:                                              ; preds = %301
  %306 = sub nuw nsw i64 %299, %279
  %307 = extractvalue { i64, i1 } %302, 0, !nosanitize !44
  %308 = tail call i64 @llvm.umin.i64(i64 %306, i64 %307)
  %309 = load ptr, ptr %8, align 8, !tbaa !34
  %310 = getelementptr inbounds nuw i8, ptr %309, i64 %279
  %311 = and i64 %308, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %310, i8 0, i64 %311, i1 false)
  %312 = load i64, ptr %20, align 8, !tbaa !38
  %313 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %312, i64 %308), !nosanitize !44
  %314 = extractvalue { i64, i1 } %313, 1, !nosanitize !44
  br i1 %314, label %315, label %316, !prof !45, !nosanitize !44

315:                                              ; preds = %305
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

316:                                              ; preds = %305
  %317 = extractvalue { i64, i1 } %313, 0, !nosanitize !44
  br label %318

318:                                              ; preds = %316, %292
  %319 = phi i64 [ %297, %292 ], [ %317, %316 ]
  store i64 %319, ptr %20, align 8, !tbaa !38
  %320 = load i32, ptr %3, align 4, !tbaa !73
  br label %321

321:                                              ; preds = %318, %298, %277
  %322 = phi i32 [ %278, %277 ], [ %278, %298 ], [ %320, %318 ]
  %323 = icmp ult i32 %322, 259
  %324 = and i1 %21, %323
  br i1 %324, label %.loopexit25, label %325

325:                                              ; preds = %321
  %326 = icmp eq i32 %322, 0
  br i1 %326, label %583, label %327

327:                                              ; preds = %325
  store i32 0, ptr %4, align 8, !tbaa !76
  %328 = icmp ugt i32 %322, 2
  %329 = load i32, ptr %7, align 4, !tbaa !71
  %.pre.pre77.pre79 = load ptr, ptr %8, align 8, !tbaa !34
  br i1 %328, label %330, label %._crit_edge

330:                                              ; preds = %327, %30
  %.pre.pre77 = phi ptr [ %.pre.pre77.pre, %30 ], [ %.pre.pre77.pre79, %327 ]
  %331 = phi i32 [ %31, %30 ], [ %329, %327 ]
  %332 = phi i32 [ %28, %30 ], [ %322, %327 ]
  %333 = icmp eq i32 %331, 0
  br i1 %333, label %._crit_edge, label %334

334:                                              ; preds = %330
  %335 = zext i32 %331 to i64
  %336 = getelementptr inbounds nuw i8, ptr %.pre.pre77, i64 %335
  %337 = getelementptr inbounds i8, ptr %336, i64 -1
  %338 = load i8, ptr %337, align 1, !tbaa !5
  %339 = load i8, ptr %336, align 1, !tbaa !5
  %340 = icmp eq i8 %338, %339
  br i1 %340, label %341, label %._crit_edge

341:                                              ; preds = %334
  %342 = getelementptr inbounds nuw i8, ptr %336, i64 1
  %343 = load i8, ptr %342, align 1, !tbaa !5
  %344 = icmp eq i8 %338, %343
  br i1 %344, label %345, label %._crit_edge

345:                                              ; preds = %341
  %346 = getelementptr inbounds nuw i8, ptr %336, i64 2
  %347 = load i8, ptr %346, align 1, !tbaa !5
  %348 = icmp eq i8 %338, %347
  br i1 %348, label %349, label %._crit_edge

349:                                              ; preds = %345
  %350 = getelementptr inbounds nuw i8, ptr %336, i64 258
  br label %351

351:                                              ; preds = %381, %349
  %352 = phi i64 [ 2, %349 ], [ %382, %381 ]
  %353 = getelementptr inbounds nuw i8, ptr %336, i64 %352
  %354 = getelementptr inbounds nuw i8, ptr %353, i64 1
  %355 = load i8, ptr %354, align 1, !tbaa !5
  %356 = icmp eq i8 %338, %355
  br i1 %356, label %357, label %.split.loop.exit.split.loop.exit

357:                                              ; preds = %351
  %358 = getelementptr inbounds nuw i8, ptr %353, i64 2
  %359 = load i8, ptr %358, align 1, !tbaa !5
  %360 = icmp eq i8 %338, %359
  br i1 %360, label %361, label %.split.loop.exit.split.loop.exit112

361:                                              ; preds = %357
  %362 = getelementptr inbounds nuw i8, ptr %353, i64 3
  %363 = load i8, ptr %362, align 1, !tbaa !5
  %364 = icmp eq i8 %338, %363
  br i1 %364, label %365, label %.split.loop.exit.split.loop.exit114

365:                                              ; preds = %361
  %366 = getelementptr inbounds nuw i8, ptr %353, i64 4
  %367 = load i8, ptr %366, align 1, !tbaa !5
  %368 = icmp eq i8 %338, %367
  br i1 %368, label %369, label %.split.loop.exit.split.loop.exit116

369:                                              ; preds = %365
  %370 = getelementptr inbounds nuw i8, ptr %353, i64 5
  %371 = load i8, ptr %370, align 1, !tbaa !5
  %372 = icmp eq i8 %338, %371
  br i1 %372, label %373, label %.split.loop.exit.split.loop.exit118

373:                                              ; preds = %369
  %374 = getelementptr inbounds nuw i8, ptr %353, i64 6
  %375 = load i8, ptr %374, align 1, !tbaa !5
  %376 = icmp eq i8 %338, %375
  br i1 %376, label %377, label %.split.loop.exit.split.loop.exit120

377:                                              ; preds = %373
  %378 = getelementptr inbounds nuw i8, ptr %353, i64 7
  %379 = load i8, ptr %378, align 1, !tbaa !5
  %380 = icmp eq i8 %338, %379
  br i1 %380, label %381, label %.split.loop.exit.split.loop.exit122

381:                                              ; preds = %377
  %382 = add nuw nsw i64 %352, 8
  %383 = getelementptr inbounds nuw i8, ptr %336, i64 %382
  %384 = load i8, ptr %383, align 1, !tbaa !5
  %385 = icmp eq i8 %338, %384
  %386 = icmp samesign ult i64 %352, 250
  %387 = select i1 %385, i1 %386, i1 false
  br i1 %387, label %351, label %.split.loop.exit.split.loop.exit124, !llvm.loop !141

.split.loop.exit.split.loop.exit:                 ; preds = %351
  %388 = getelementptr inbounds nuw i8, ptr %353, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit112:              ; preds = %357
  %389 = getelementptr inbounds nuw i8, ptr %353, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit114:              ; preds = %361
  %390 = getelementptr inbounds nuw i8, ptr %353, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit116:              ; preds = %365
  %391 = getelementptr inbounds nuw i8, ptr %353, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit118:              ; preds = %369
  %392 = getelementptr inbounds nuw i8, ptr %353, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit120:              ; preds = %373
  %393 = getelementptr inbounds nuw i8, ptr %353, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit122:              ; preds = %377
  %394 = getelementptr inbounds nuw i8, ptr %353, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit124:              ; preds = %381
  %395 = getelementptr inbounds nuw i8, ptr %336, i64 %382
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit124, %.split.loop.exit.split.loop.exit122, %.split.loop.exit.split.loop.exit120, %.split.loop.exit.split.loop.exit118, %.split.loop.exit.split.loop.exit116, %.split.loop.exit.split.loop.exit114, %.split.loop.exit.split.loop.exit112, %.split.loop.exit.split.loop.exit
  %396 = phi ptr [ %388, %.split.loop.exit.split.loop.exit ], [ %389, %.split.loop.exit.split.loop.exit112 ], [ %390, %.split.loop.exit.split.loop.exit114 ], [ %391, %.split.loop.exit.split.loop.exit116 ], [ %392, %.split.loop.exit.split.loop.exit118 ], [ %393, %.split.loop.exit.split.loop.exit120 ], [ %394, %.split.loop.exit.split.loop.exit122 ], [ %395, %.split.loop.exit.split.loop.exit124 ]
  %397 = ptrtoint ptr %350 to i64
  %398 = ptrtoint ptr %396 to i64
  %399 = sub i64 %397, %398
  %400 = trunc i64 %399 to i32
  %401 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %400), !nosanitize !44
  %402 = extractvalue { i32, i1 } %401, 1, !nosanitize !44
  br i1 %402, label %403, label %404, !prof !45, !nosanitize !44

403:                                              ; preds = %.split.loop.exit
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

404:                                              ; preds = %.split.loop.exit
  %405 = extractvalue { i32, i1 } %401, 0, !nosanitize !44
  %406 = tail call i32 @llvm.umin.i32(i32 %405, i32 %332)
  store i32 %406, ptr %4, align 8
  %407 = icmp ugt i32 %406, 2
  %408 = load i32, ptr %23, align 4, !tbaa !136
  br i1 %407, label %409, label %469

409:                                              ; preds = %404
  %410 = trunc i32 %406 to i8
  %411 = add i8 %410, -3
  %412 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %408, i32 1), !nosanitize !44
  %413 = extractvalue { i32, i1 } %412, 1, !nosanitize !44
  br i1 %413, label %414, label %415, !prof !45, !nosanitize !44

414:                                              ; preds = %409
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

415:                                              ; preds = %409
  %416 = extractvalue { i32, i1 } %412, 0, !nosanitize !44
  %417 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %416, ptr %23, align 4, !tbaa !136
  %418 = zext i32 %408 to i64
  %419 = getelementptr inbounds nuw i8, ptr %417, i64 %418
  store i8 1, ptr %419, align 1, !tbaa !5
  %420 = load i32, ptr %23, align 4, !tbaa !136
  %421 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %420, i32 1), !nosanitize !44
  %422 = extractvalue { i32, i1 } %421, 1, !nosanitize !44
  br i1 %422, label %423, label %424, !prof !45, !nosanitize !44

423:                                              ; preds = %415
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

424:                                              ; preds = %415
  %425 = extractvalue { i32, i1 } %421, 0, !nosanitize !44
  %426 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %425, ptr %23, align 4, !tbaa !136
  %427 = zext i32 %420 to i64
  %428 = getelementptr inbounds nuw i8, ptr %426, i64 %427
  store i8 0, ptr %428, align 1, !tbaa !5
  %429 = load i32, ptr %23, align 4, !tbaa !136
  %430 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %429, i32 1), !nosanitize !44
  %431 = extractvalue { i32, i1 } %430, 1, !nosanitize !44
  br i1 %431, label %432, label %433, !prof !45, !nosanitize !44

432:                                              ; preds = %424
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

433:                                              ; preds = %424
  %434 = extractvalue { i32, i1 } %430, 0, !nosanitize !44
  %435 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %434, ptr %23, align 4, !tbaa !136
  %436 = zext i32 %429 to i64
  %437 = getelementptr inbounds nuw i8, ptr %435, i64 %436
  store i8 %411, ptr %437, align 1, !tbaa !5
  %438 = zext i8 %411 to i64
  %439 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %438
  %440 = load i8, ptr %439, align 1, !tbaa !5
  %441 = zext i8 %440 to i64
  %442 = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %441
  %443 = getelementptr inbounds nuw i8, ptr %442, i64 1028
  %444 = load i16, ptr %443, align 4, !tbaa !5
  %445 = add i16 %444, 1
  store i16 %445, ptr %443, align 4, !tbaa !5
  %446 = load i8, ptr @_dist_code, align 1, !tbaa !5
  %447 = zext i8 %446 to i64
  %448 = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %447
  %449 = load i16, ptr %448, align 4, !tbaa !5
  %450 = add i16 %449, 1
  store i16 %450, ptr %448, align 4, !tbaa !5
  %451 = load i32, ptr %23, align 4, !tbaa !136
  %452 = load i32, ptr %25, align 8, !tbaa !46
  %453 = icmp eq i32 %451, %452
  %454 = load i32, ptr %4, align 8, !tbaa !76
  %455 = load i32, ptr %3, align 4, !tbaa !73
  %456 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %455, i32 %454), !nosanitize !44
  %457 = extractvalue { i32, i1 } %456, 1, !nosanitize !44
  br i1 %457, label %458, label %459, !prof !45, !nosanitize !44

458:                                              ; preds = %433
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

459:                                              ; preds = %433
  %460 = extractvalue { i32, i1 } %456, 0, !nosanitize !44
  store i32 %460, ptr %3, align 4, !tbaa !73
  %461 = load i32, ptr %7, align 4, !tbaa !71
  %462 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %461, i32 %454), !nosanitize !44
  %463 = extractvalue { i32, i1 } %462, 1, !nosanitize !44
  br i1 %463, label %464, label %465, !prof !45, !nosanitize !44

464:                                              ; preds = %459
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

465:                                              ; preds = %459
  %466 = extractvalue { i32, i1 } %462, 0, !nosanitize !44
  store i32 %466, ptr %7, align 4, !tbaa !71
  store i32 0, ptr %4, align 8, !tbaa !76
  br i1 %453, label %518, label %.backedge

._crit_edge:                                      ; preds = %327, %345, %341, %334, %330
  %.pre = phi ptr [ %.pre.pre77, %334 ], [ %.pre.pre77, %330 ], [ %.pre.pre77, %345 ], [ %.pre.pre77, %341 ], [ %.pre.pre77.pre79, %327 ]
  %467 = phi i32 [ %331, %334 ], [ 0, %330 ], [ %331, %345 ], [ %331, %341 ], [ %329, %327 ]
  %468 = load i32, ptr %23, align 4, !tbaa !136
  %.pre76 = zext i32 %467 to i64
  br label %469

469:                                              ; preds = %._crit_edge, %404
  %.pre-phi = phi i64 [ %.pre76, %._crit_edge ], [ %335, %404 ]
  %470 = phi ptr [ %.pre, %._crit_edge ], [ %.pre.pre77, %404 ]
  %471 = phi i32 [ %468, %._crit_edge ], [ %408, %404 ]
  %472 = getelementptr inbounds nuw i8, ptr %470, i64 %.pre-phi
  %473 = load i8, ptr %472, align 1, !tbaa !5
  %474 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %471, i32 1), !nosanitize !44
  %475 = extractvalue { i32, i1 } %474, 1, !nosanitize !44
  br i1 %475, label %476, label %477, !prof !45, !nosanitize !44

476:                                              ; preds = %469
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

477:                                              ; preds = %469
  %478 = extractvalue { i32, i1 } %474, 0, !nosanitize !44
  %479 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %478, ptr %23, align 4, !tbaa !136
  %480 = zext i32 %471 to i64
  %481 = getelementptr inbounds nuw i8, ptr %479, i64 %480
  store i8 0, ptr %481, align 1, !tbaa !5
  %482 = load i32, ptr %23, align 4, !tbaa !136
  %483 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %482, i32 1), !nosanitize !44
  %484 = extractvalue { i32, i1 } %483, 1, !nosanitize !44
  br i1 %484, label %485, label %486, !prof !45, !nosanitize !44

485:                                              ; preds = %477
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

486:                                              ; preds = %477
  %487 = extractvalue { i32, i1 } %483, 0, !nosanitize !44
  %488 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %487, ptr %23, align 4, !tbaa !136
  %489 = zext i32 %482 to i64
  %490 = getelementptr inbounds nuw i8, ptr %488, i64 %489
  store i8 0, ptr %490, align 1, !tbaa !5
  %491 = load i32, ptr %23, align 4, !tbaa !136
  %492 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %491, i32 1), !nosanitize !44
  %493 = extractvalue { i32, i1 } %492, 1, !nosanitize !44
  br i1 %493, label %494, label %495, !prof !45, !nosanitize !44

494:                                              ; preds = %486
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

495:                                              ; preds = %486
  %496 = extractvalue { i32, i1 } %492, 0, !nosanitize !44
  %497 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %496, ptr %23, align 4, !tbaa !136
  %498 = zext i32 %491 to i64
  %499 = getelementptr inbounds nuw i8, ptr %497, i64 %498
  store i8 %473, ptr %499, align 1, !tbaa !5
  %500 = zext i8 %473 to i64
  %501 = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %500
  %502 = load i16, ptr %501, align 4, !tbaa !5
  %503 = add i16 %502, 1
  store i16 %503, ptr %501, align 4, !tbaa !5
  %504 = load i32, ptr %23, align 4, !tbaa !136
  %505 = load i32, ptr %25, align 8, !tbaa !46
  %506 = icmp eq i32 %504, %505
  %507 = load i32, ptr %3, align 4, !tbaa !73
  %508 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %507, i32 1), !nosanitize !44
  %509 = extractvalue { i32, i1 } %508, 1, !nosanitize !44
  br i1 %509, label %.loopexit26, label %510, !prof !45, !nosanitize !44

.loopexit26:                                      ; preds = %526, %495, %661, %592
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

510:                                              ; preds = %495
  %511 = extractvalue { i32, i1 } %508, 0, !nosanitize !44
  store i32 %511, ptr %3, align 4, !tbaa !73
  %512 = load i32, ptr %7, align 4, !tbaa !71
  %513 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %512, i32 1), !nosanitize !44
  %514 = extractvalue { i32, i1 } %513, 1, !nosanitize !44
  br i1 %514, label %515, label %516, !prof !45, !nosanitize !44

515:                                              ; preds = %510
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

516:                                              ; preds = %510
  %517 = extractvalue { i32, i1 } %513, 0, !nosanitize !44
  store i32 %517, ptr %7, align 4, !tbaa !71
  br i1 %506, label %518, label %.backedge

518:                                              ; preds = %516, %465
  %519 = phi i32 [ %466, %465 ], [ %517, %516 ]
  %520 = load i64, ptr %10, align 8, !tbaa !72
  %521 = icmp sgt i64 %520, -1
  br i1 %521, label %522, label %526

522:                                              ; preds = %518
  %523 = load ptr, ptr %8, align 8, !tbaa !34
  %524 = and i64 %520, 4294967295
  %525 = getelementptr inbounds nuw i8, ptr %523, i64 %524
  br label %526

526:                                              ; preds = %522, %518
  %527 = phi ptr [ %525, %522 ], [ null, %518 ]
  %528 = zext i32 %519 to i64
  %529 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %528, i64 %520), !nosanitize !44
  %530 = extractvalue { i64, i1 } %529, 1, !nosanitize !44
  br i1 %530, label %.loopexit26, label %531, !prof !45, !nosanitize !44

531:                                              ; preds = %526
  %532 = extractvalue { i64, i1 } %529, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %527, i64 noundef %532, i32 noundef 0) #11
  %533 = load i32, ptr %7, align 4, !tbaa !71
  %534 = zext i32 %533 to i64
  store i64 %534, ptr %10, align 8, !tbaa !72
  %535 = load ptr, ptr %0, align 8, !tbaa !19
  %536 = getelementptr inbounds nuw i8, ptr %535, i64 56
  %537 = load ptr, ptr %536, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %537) #11
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 40
  %539 = load i64, ptr %538, align 8, !tbaa !55
  %540 = getelementptr inbounds nuw i8, ptr %535, i64 32
  %541 = load i32, ptr %540, align 8, !tbaa !105
  %542 = zext i32 %541 to i64
  %543 = tail call i64 @llvm.umin.i64(i64 %539, i64 %542)
  %544 = trunc nuw i64 %543 to i32
  %545 = icmp eq i64 %543, 0
  br i1 %545, label %578, label %546

546:                                              ; preds = %531
  %547 = getelementptr inbounds nuw i8, ptr %535, i64 24
  %548 = load ptr, ptr %547, align 8, !tbaa !104
  %549 = getelementptr inbounds nuw i8, ptr %537, i64 32
  %550 = load ptr, ptr %549, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %548, ptr align 1 %550, i64 %543, i1 false)
  %551 = load ptr, ptr %547, align 8, !tbaa !104
  %552 = getelementptr inbounds nuw i8, ptr %551, i64 %543
  store ptr %552, ptr %547, align 8, !tbaa !104
  %553 = load ptr, ptr %549, align 8, !tbaa !56
  %554 = getelementptr inbounds nuw i8, ptr %553, i64 %543
  store ptr %554, ptr %549, align 8, !tbaa !56
  %555 = getelementptr inbounds nuw i8, ptr %535, i64 40
  %556 = load i64, ptr %555, align 8, !tbaa !106
  %557 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %556, i64 %543), !nosanitize !44
  %558 = extractvalue { i64, i1 } %557, 1, !nosanitize !44
  br i1 %558, label %559, label %560, !prof !45, !nosanitize !44

559:                                              ; preds = %546
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

560:                                              ; preds = %546
  %561 = extractvalue { i64, i1 } %557, 0, !nosanitize !44
  store i64 %561, ptr %555, align 8, !tbaa !106
  %562 = load i32, ptr %540, align 8, !tbaa !105
  %563 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %562, i32 %544), !nosanitize !44
  %564 = extractvalue { i32, i1 } %563, 1, !nosanitize !44
  br i1 %564, label %565, label %566, !prof !45, !nosanitize !44

565:                                              ; preds = %560
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

566:                                              ; preds = %560
  %567 = extractvalue { i32, i1 } %563, 0, !nosanitize !44
  store i32 %567, ptr %540, align 8, !tbaa !105
  %568 = load i64, ptr %538, align 8, !tbaa !55
  %569 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %568, i64 %543), !nosanitize !44
  %570 = extractvalue { i64, i1 } %569, 1, !nosanitize !44
  br i1 %570, label %571, label %572, !prof !45, !nosanitize !44

571:                                              ; preds = %566
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

572:                                              ; preds = %566
  %573 = extractvalue { i64, i1 } %569, 0, !nosanitize !44
  store i64 %573, ptr %538, align 8, !tbaa !55
  %574 = icmp eq i64 %573, 0
  br i1 %574, label %575, label %578

575:                                              ; preds = %572
  %576 = getelementptr inbounds nuw i8, ptr %537, i64 16
  %577 = load ptr, ptr %576, align 8, !tbaa !40
  store ptr %577, ptr %549, align 8, !tbaa !56
  br label %578

578:                                              ; preds = %575, %572, %531
  %579 = load ptr, ptr %0, align 8, !tbaa !19
  %580 = getelementptr inbounds nuw i8, ptr %579, i64 32
  %581 = load i32, ptr %580, align 8, !tbaa !105
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %.loopexit25, label %.backedge

.backedge:                                        ; preds = %578, %516, %465
  br label %27

583:                                              ; preds = %325
  store i32 0, ptr %11, align 4, !tbaa !74
  %584 = icmp eq i32 %1, 4
  br i1 %584, label %585, label %651

585:                                              ; preds = %583
  %586 = load i64, ptr %10, align 8, !tbaa !72
  %587 = icmp sgt i64 %586, -1
  br i1 %587, label %588, label %592

588:                                              ; preds = %585
  %589 = load ptr, ptr %8, align 8, !tbaa !34
  %590 = and i64 %586, 4294967295
  %591 = getelementptr inbounds nuw i8, ptr %589, i64 %590
  br label %592

592:                                              ; preds = %588, %585
  %593 = phi ptr [ %591, %588 ], [ null, %585 ]
  %594 = load i32, ptr %7, align 4, !tbaa !71
  %595 = zext i32 %594 to i64
  %596 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %595, i64 %586), !nosanitize !44
  %597 = extractvalue { i64, i1 } %596, 1, !nosanitize !44
  br i1 %597, label %.loopexit26, label %598, !prof !45, !nosanitize !44

598:                                              ; preds = %592
  %599 = extractvalue { i64, i1 } %596, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %593, i64 noundef %599, i32 noundef 1) #11
  %600 = load i32, ptr %7, align 4, !tbaa !71
  %601 = zext i32 %600 to i64
  store i64 %601, ptr %10, align 8, !tbaa !72
  %602 = load ptr, ptr %0, align 8, !tbaa !19
  %603 = getelementptr inbounds nuw i8, ptr %602, i64 56
  %604 = load ptr, ptr %603, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %604) #11
  %605 = getelementptr inbounds nuw i8, ptr %604, i64 40
  %606 = load i64, ptr %605, align 8, !tbaa !55
  %607 = getelementptr inbounds nuw i8, ptr %602, i64 32
  %608 = load i32, ptr %607, align 8, !tbaa !105
  %609 = zext i32 %608 to i64
  %610 = tail call i64 @llvm.umin.i64(i64 %606, i64 %609)
  %611 = trunc nuw i64 %610 to i32
  %612 = icmp eq i64 %610, 0
  br i1 %612, label %645, label %613

613:                                              ; preds = %598
  %614 = getelementptr inbounds nuw i8, ptr %602, i64 24
  %615 = load ptr, ptr %614, align 8, !tbaa !104
  %616 = getelementptr inbounds nuw i8, ptr %604, i64 32
  %617 = load ptr, ptr %616, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %615, ptr align 1 %617, i64 %610, i1 false)
  %618 = load ptr, ptr %614, align 8, !tbaa !104
  %619 = getelementptr inbounds nuw i8, ptr %618, i64 %610
  store ptr %619, ptr %614, align 8, !tbaa !104
  %620 = load ptr, ptr %616, align 8, !tbaa !56
  %621 = getelementptr inbounds nuw i8, ptr %620, i64 %610
  store ptr %621, ptr %616, align 8, !tbaa !56
  %622 = getelementptr inbounds nuw i8, ptr %602, i64 40
  %623 = load i64, ptr %622, align 8, !tbaa !106
  %624 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %623, i64 %610), !nosanitize !44
  %625 = extractvalue { i64, i1 } %624, 1, !nosanitize !44
  br i1 %625, label %626, label %627, !prof !45, !nosanitize !44

626:                                              ; preds = %613
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

627:                                              ; preds = %613
  %628 = extractvalue { i64, i1 } %624, 0, !nosanitize !44
  store i64 %628, ptr %622, align 8, !tbaa !106
  %629 = load i32, ptr %607, align 8, !tbaa !105
  %630 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %629, i32 %611), !nosanitize !44
  %631 = extractvalue { i32, i1 } %630, 1, !nosanitize !44
  br i1 %631, label %632, label %633, !prof !45, !nosanitize !44

632:                                              ; preds = %627
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

633:                                              ; preds = %627
  %634 = extractvalue { i32, i1 } %630, 0, !nosanitize !44
  store i32 %634, ptr %607, align 8, !tbaa !105
  %635 = load i64, ptr %605, align 8, !tbaa !55
  %636 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %635, i64 %610), !nosanitize !44
  %637 = extractvalue { i64, i1 } %636, 1, !nosanitize !44
  br i1 %637, label %638, label %639, !prof !45, !nosanitize !44

638:                                              ; preds = %633
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

639:                                              ; preds = %633
  %640 = extractvalue { i64, i1 } %636, 0, !nosanitize !44
  store i64 %640, ptr %605, align 8, !tbaa !55
  %641 = icmp eq i64 %640, 0
  br i1 %641, label %642, label %645

642:                                              ; preds = %639
  %643 = getelementptr inbounds nuw i8, ptr %604, i64 16
  %644 = load ptr, ptr %643, align 8, !tbaa !40
  store ptr %644, ptr %616, align 8, !tbaa !56
  br label %645

645:                                              ; preds = %642, %639, %598
  %646 = load ptr, ptr %0, align 8, !tbaa !19
  %647 = getelementptr inbounds nuw i8, ptr %646, i64 32
  %648 = load i32, ptr %647, align 8, !tbaa !105
  %649 = icmp eq i32 %648, 0
  %650 = select i1 %649, i32 2, i32 3
  br label %.loopexit25

651:                                              ; preds = %583
  %652 = load i32, ptr %23, align 4, !tbaa !136
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %719, label %654

654:                                              ; preds = %651
  %655 = load i64, ptr %10, align 8, !tbaa !72
  %656 = icmp sgt i64 %655, -1
  br i1 %656, label %657, label %661

657:                                              ; preds = %654
  %658 = load ptr, ptr %8, align 8, !tbaa !34
  %659 = and i64 %655, 4294967295
  %660 = getelementptr inbounds nuw i8, ptr %658, i64 %659
  br label %661

661:                                              ; preds = %657, %654
  %662 = phi ptr [ %660, %657 ], [ null, %654 ]
  %663 = load i32, ptr %7, align 4, !tbaa !71
  %664 = zext i32 %663 to i64
  %665 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %664, i64 %655), !nosanitize !44
  %666 = extractvalue { i64, i1 } %665, 1, !nosanitize !44
  br i1 %666, label %.loopexit26, label %667, !prof !45, !nosanitize !44

667:                                              ; preds = %661
  %668 = extractvalue { i64, i1 } %665, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %662, i64 noundef %668, i32 noundef 0) #11
  %669 = load i32, ptr %7, align 4, !tbaa !71
  %670 = zext i32 %669 to i64
  store i64 %670, ptr %10, align 8, !tbaa !72
  %671 = load ptr, ptr %0, align 8, !tbaa !19
  %672 = getelementptr inbounds nuw i8, ptr %671, i64 56
  %673 = load ptr, ptr %672, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %673) #11
  %674 = getelementptr inbounds nuw i8, ptr %673, i64 40
  %675 = load i64, ptr %674, align 8, !tbaa !55
  %676 = getelementptr inbounds nuw i8, ptr %671, i64 32
  %677 = load i32, ptr %676, align 8, !tbaa !105
  %678 = zext i32 %677 to i64
  %679 = tail call i64 @llvm.umin.i64(i64 %675, i64 %678)
  %680 = trunc nuw i64 %679 to i32
  %681 = icmp eq i64 %679, 0
  br i1 %681, label %714, label %682

682:                                              ; preds = %667
  %683 = getelementptr inbounds nuw i8, ptr %671, i64 24
  %684 = load ptr, ptr %683, align 8, !tbaa !104
  %685 = getelementptr inbounds nuw i8, ptr %673, i64 32
  %686 = load ptr, ptr %685, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %684, ptr align 1 %686, i64 %679, i1 false)
  %687 = load ptr, ptr %683, align 8, !tbaa !104
  %688 = getelementptr inbounds nuw i8, ptr %687, i64 %679
  store ptr %688, ptr %683, align 8, !tbaa !104
  %689 = load ptr, ptr %685, align 8, !tbaa !56
  %690 = getelementptr inbounds nuw i8, ptr %689, i64 %679
  store ptr %690, ptr %685, align 8, !tbaa !56
  %691 = getelementptr inbounds nuw i8, ptr %671, i64 40
  %692 = load i64, ptr %691, align 8, !tbaa !106
  %693 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %692, i64 %679), !nosanitize !44
  %694 = extractvalue { i64, i1 } %693, 1, !nosanitize !44
  br i1 %694, label %695, label %696, !prof !45, !nosanitize !44

695:                                              ; preds = %682
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

696:                                              ; preds = %682
  %697 = extractvalue { i64, i1 } %693, 0, !nosanitize !44
  store i64 %697, ptr %691, align 8, !tbaa !106
  %698 = load i32, ptr %676, align 8, !tbaa !105
  %699 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %698, i32 %680), !nosanitize !44
  %700 = extractvalue { i32, i1 } %699, 1, !nosanitize !44
  br i1 %700, label %701, label %702, !prof !45, !nosanitize !44

701:                                              ; preds = %696
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

702:                                              ; preds = %696
  %703 = extractvalue { i32, i1 } %699, 0, !nosanitize !44
  store i32 %703, ptr %676, align 8, !tbaa !105
  %704 = load i64, ptr %674, align 8, !tbaa !55
  %705 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %704, i64 %679), !nosanitize !44
  %706 = extractvalue { i64, i1 } %705, 1, !nosanitize !44
  br i1 %706, label %707, label %708, !prof !45, !nosanitize !44

707:                                              ; preds = %702
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

708:                                              ; preds = %702
  %709 = extractvalue { i64, i1 } %705, 0, !nosanitize !44
  store i64 %709, ptr %674, align 8, !tbaa !55
  %710 = icmp eq i64 %709, 0
  br i1 %710, label %711, label %714

711:                                              ; preds = %708
  %712 = getelementptr inbounds nuw i8, ptr %673, i64 16
  %713 = load ptr, ptr %712, align 8, !tbaa !40
  store ptr %713, ptr %685, align 8, !tbaa !56
  br label %714

714:                                              ; preds = %711, %708, %667
  %715 = load ptr, ptr %0, align 8, !tbaa !19
  %716 = getelementptr inbounds nuw i8, ptr %715, i64 32
  %717 = load i32, ptr %716, align 8, !tbaa !105
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %.loopexit25, label %719

719:                                              ; preds = %714, %651
  br label %.loopexit25

.loopexit25:                                      ; preds = %578, %321, %719, %714, %645
  %720 = phi i32 [ 1, %719 ], [ %650, %645 ], [ 0, %714 ], [ 0, %321 ], [ 0, %578 ]
  ret i32 %720
}

declare void @_tr_align(ptr noundef) local_unnamed_addr #1

declare void @_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @deflateCopy(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %188, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %188, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %188, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %188, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %188

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
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
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  %29 = tail call ptr %26(ptr noundef %28, i32 noundef 1, i32 noundef 5968) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %188, label %31

31:                                               ; preds = %24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %29, i8 0, i64 5968, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %29, ptr %32, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %29, ptr noundef nonnull align 8 dereferenceable(5968) %14, i64 5968, i1 false)
  store ptr %0, ptr %29, align 8, !tbaa !19
  %33 = load ptr, ptr %25, align 8, !tbaa !15
  %34 = load ptr, ptr %27, align 8, !tbaa !16
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 80
  %36 = load i32, ptr %35, align 8, !tbaa !31
  %37 = tail call ptr %33(ptr noundef %34, i32 noundef %36, i32 noundef 2) #11
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 96
  store ptr %37, ptr %38, align 8, !tbaa !34
  %39 = load ptr, ptr %25, align 8, !tbaa !15
  %40 = load ptr, ptr %27, align 8, !tbaa !16
  %41 = load i32, ptr %35, align 8, !tbaa !31
  %42 = tail call ptr %39(ptr noundef %40, i32 noundef %41, i32 noundef 2) #11
  %43 = getelementptr inbounds nuw i8, ptr %29, i64 112
  store ptr %42, ptr %43, align 8, !tbaa !35
  %44 = load ptr, ptr %25, align 8, !tbaa !15
  %45 = load ptr, ptr %27, align 8, !tbaa !16
  %46 = getelementptr inbounds nuw i8, ptr %29, i64 132
  %47 = load i32, ptr %46, align 4, !tbaa !36
  %48 = tail call ptr %44(ptr noundef %45, i32 noundef %47, i32 noundef 2) #11
  %49 = getelementptr inbounds nuw i8, ptr %29, i64 120
  store ptr %48, ptr %49, align 8, !tbaa !37
  %50 = load ptr, ptr %25, align 8, !tbaa !15
  %51 = load ptr, ptr %27, align 8, !tbaa !16
  %52 = getelementptr inbounds nuw i8, ptr %29, i64 5896
  %53 = load i32, ptr %52, align 8, !tbaa !39
  %54 = tail call ptr %50(ptr noundef %51, i32 noundef %53, i32 noundef 4) #11
  %55 = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr %54, ptr %55, align 8, !tbaa !40
  %56 = load ptr, ptr %38, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %31
  %59 = load ptr, ptr %43, align 8, !tbaa !35
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %49, align 8, !tbaa !37
  %63 = icmp eq ptr %62, null
  %64 = icmp eq ptr %54, null
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %66, label %124

66:                                               ; preds = %61, %58, %31
  %67 = load ptr, ptr %25, align 8, !tbaa !15
  %68 = icmp eq ptr %67, null
  br i1 %68, label %188, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %71 = load ptr, ptr %70, align 8, !tbaa !17
  %72 = icmp eq ptr %71, null
  br i1 %72, label %188, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %32, align 8, !tbaa !18
  %75 = icmp eq ptr %74, null
  br i1 %75, label %188, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %74, align 8, !tbaa !19
  %78 = icmp eq ptr %77, %0
  br i1 %78, label %79, label %188

79:                                               ; preds = %76
  %80 = getelementptr inbounds nuw i8, ptr %74, i64 8
  %81 = load i32, ptr %80, align 8, !tbaa !28
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
  %83 = getelementptr inbounds nuw i8, ptr %74, i64 16
  %84 = load ptr, ptr %83, align 8, !tbaa !40
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %71(ptr noundef %87, ptr noundef nonnull %84) #11
  %88 = load ptr, ptr %32, align 8, !tbaa !18
  %89 = load ptr, ptr %70, align 8, !tbaa !17
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi ptr [ %89, %86 ], [ %71, %82 ]
  %92 = phi ptr [ %88, %86 ], [ %74, %82 ]
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 120
  %94 = load ptr, ptr %93, align 8, !tbaa !37
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %90
  %97 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %91(ptr noundef %97, ptr noundef nonnull %94) #11
  %98 = load ptr, ptr %32, align 8, !tbaa !18
  %99 = load ptr, ptr %70, align 8, !tbaa !17
  br label %100

100:                                              ; preds = %96, %90
  %101 = phi ptr [ %99, %96 ], [ %91, %90 ]
  %102 = phi ptr [ %98, %96 ], [ %92, %90 ]
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 112
  %104 = load ptr, ptr %103, align 8, !tbaa !35
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %101(ptr noundef %107, ptr noundef nonnull %104) #11
  %108 = load ptr, ptr %32, align 8, !tbaa !18
  %109 = load ptr, ptr %70, align 8, !tbaa !17
  br label %110

110:                                              ; preds = %106, %100
  %111 = phi ptr [ %109, %106 ], [ %101, %100 ]
  %112 = phi ptr [ %108, %106 ], [ %102, %100 ]
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 96
  %114 = load ptr, ptr %113, align 8, !tbaa !34
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %110
  %117 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %111(ptr noundef %117, ptr noundef nonnull %114) #11
  %118 = load ptr, ptr %70, align 8, !tbaa !17
  %119 = load ptr, ptr %32, align 8, !tbaa !18
  br label %120

120:                                              ; preds = %116, %110
  %121 = phi ptr [ %119, %116 ], [ %112, %110 ]
  %122 = phi ptr [ %118, %116 ], [ %111, %110 ]
  %123 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %122(ptr noundef %123, ptr noundef %121) #11
  store ptr null, ptr %32, align 8, !tbaa !18
  br label %188

124:                                              ; preds = %61
  %125 = getelementptr inbounds nuw i8, ptr %14, i64 96
  %126 = load ptr, ptr %125, align 8, !tbaa !34
  %127 = getelementptr inbounds nuw i8, ptr %14, i64 5952
  %128 = load i64, ptr %127, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %56, ptr align 1 %126, i64 %128, i1 false)
  %129 = load ptr, ptr %43, align 8, !tbaa !35
  %130 = getelementptr inbounds nuw i8, ptr %14, i64 112
  %131 = load ptr, ptr %130, align 8, !tbaa !35
  %132 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  %133 = load i32, ptr %132, align 8, !tbaa !61
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %124
  %136 = load i32, ptr %35, align 8, !tbaa !31
  br label %149

137:                                              ; preds = %124
  %138 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %139 = load i32, ptr %138, align 4, !tbaa !71
  %140 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  %141 = load i32, ptr %140, align 4, !tbaa !74
  %142 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %139, i32 %141), !nosanitize !44
  %143 = extractvalue { i32, i1 } %142, 1, !nosanitize !44
  br i1 %143, label %144, label %145, !prof !45, !nosanitize !44

144:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

145:                                              ; preds = %137
  %146 = extractvalue { i32, i1 } %142, 0, !nosanitize !44
  %147 = load i32, ptr %35, align 8, !tbaa !31
  %148 = tail call i32 @llvm.umin.i32(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %135
  %150 = phi i32 [ %136, %135 ], [ %148, %145 ]
  %151 = zext i32 %150 to i64
  %152 = shl nuw nsw i64 %151, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %129, ptr align 2 %131, i64 %152, i1 false)
  %153 = load i32, ptr %46, align 4, !tbaa !36
  %154 = zext i32 %153 to i64
  %155 = shl nuw nsw i64 %154, 1
  %156 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %157 = load ptr, ptr %156, align 8, !tbaa !37
  %158 = load ptr, ptr %49, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %158, ptr align 2 %157, i64 %155, i1 false)
  %159 = load ptr, ptr %55, align 8, !tbaa !40
  %160 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %161 = load ptr, ptr %160, align 8, !tbaa !56
  %162 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %163 = load ptr, ptr %162, align 8, !tbaa !40
  %164 = ptrtoint ptr %161 to i64
  %165 = ptrtoint ptr %163 to i64
  %166 = sub i64 %164, %165
  %167 = getelementptr inbounds i8, ptr %159, i64 %166
  %168 = getelementptr inbounds nuw i8, ptr %29, i64 32
  store ptr %167, ptr %168, align 8, !tbaa !56
  %169 = load ptr, ptr %160, align 8, !tbaa !56
  %170 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %171 = load i64, ptr %170, align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %167, ptr align 1 %169, i64 %171, i1 false)
  %172 = load ptr, ptr %55, align 8, !tbaa !40
  %173 = load i32, ptr %52, align 8, !tbaa !39
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds nuw i8, ptr %172, i64 %174
  %176 = getelementptr inbounds nuw i8, ptr %29, i64 5888
  store ptr %175, ptr %176, align 8, !tbaa !43
  %177 = getelementptr inbounds nuw i8, ptr %14, i64 5888
  %178 = load ptr, ptr %177, align 8, !tbaa !43
  %179 = getelementptr inbounds nuw i8, ptr %14, i64 5900
  %180 = load i32, ptr %179, align 4, !tbaa !136
  %181 = zext i32 %180 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %175, ptr align 1 %178, i64 %181, i1 false)
  %182 = getelementptr inbounds nuw i8, ptr %29, i64 212
  %183 = getelementptr inbounds nuw i8, ptr %29, i64 2904
  store ptr %182, ptr %183, align 8, !tbaa !142
  %184 = getelementptr inbounds nuw i8, ptr %29, i64 2504
  %185 = getelementptr inbounds nuw i8, ptr %29, i64 2928
  store ptr %184, ptr %185, align 8, !tbaa !143
  %186 = getelementptr inbounds nuw i8, ptr %29, i64 2748
  %187 = getelementptr inbounds nuw i8, ptr %29, i64 2952
  store ptr %186, ptr %187, align 8, !tbaa !144
  br label %188

188:                                              ; preds = %149, %120, %79, %76, %73, %69, %66, %24, %22, %19, %16, %12, %8, %4, %2
  %189 = phi i32 [ 0, %149 ], [ -2, %22 ], [ -4, %24 ], [ -4, %66 ], [ -4, %69 ], [ -4, %73 ], [ -4, %76 ], [ -4, %79 ], [ -4, %120 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %189
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_fast(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %20 = icmp eq i32 %1, 0
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 188
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 204
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %32

32:                                               ; preds = %.backedge, %2
  %33 = load i32, ptr %3, align 4, !tbaa !73
  %34 = icmp ult i32 %33, 262
  br i1 %34, label %35, label %332

35:                                               ; preds = %32
  %36 = load i32, ptr %4, align 8, !tbaa !31
  %37 = zext i32 %36 to i64
  br label %38

38:                                               ; preds = %275, %35
  %39 = phi i32 [ %203, %275 ], [ %33, %35 ]
  %40 = load i64, ptr %5, align 8, !tbaa !59
  %41 = zext nneg i32 %39 to i64
  %42 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %40, i64 %41), !nosanitize !44
  %43 = extractvalue { i64, i1 } %42, 1, !nosanitize !44
  br i1 %43, label %44, label %45, !prof !45, !nosanitize !44

44:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

45:                                               ; preds = %38
  %46 = extractvalue { i64, i1 } %42, 0, !nosanitize !44
  %47 = load i32, ptr %6, align 4, !tbaa !71
  %48 = zext i32 %47 to i64
  %49 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %46, i64 %48), !nosanitize !44
  %50 = extractvalue { i64, i1 } %49, 1, !nosanitize !44
  br i1 %50, label %51, label %52, !prof !45, !nosanitize !44

51:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

52:                                               ; preds = %45
  %53 = extractvalue { i64, i1 } %49, 0, !nosanitize !44
  %54 = trunc i64 %53 to i32
  %55 = load i32, ptr %4, align 8, !tbaa !31
  %56 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 262), !nosanitize !44
  %57 = extractvalue { i32, i1 } %56, 1, !nosanitize !44
  br i1 %57, label %58, label %59, !prof !45, !nosanitize !44

58:                                               ; preds = %52
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

59:                                               ; preds = %52
  %60 = extractvalue { i32, i1 } %56, 0, !nosanitize !44
  %61 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %36, i32 %60), !nosanitize !44
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !44
  br i1 %62, label %63, label %64, !prof !45, !nosanitize !44

63:                                               ; preds = %59
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

64:                                               ; preds = %59
  %65 = extractvalue { i32, i1 } %61, 0, !nosanitize !44
  %66 = icmp ult i32 %47, %65
  br i1 %66, label %150, label %67

67:                                               ; preds = %64
  %68 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %36, i32 %54), !nosanitize !44
  %69 = extractvalue { i32, i1 } %68, 1, !nosanitize !44
  br i1 %69, label %70, label %71, !prof !45, !nosanitize !44

70:                                               ; preds = %67
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

71:                                               ; preds = %67
  %72 = extractvalue { i32, i1 } %68, 0, !nosanitize !44
  %73 = load ptr, ptr %7, align 8, !tbaa !34
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 %37
  %75 = zext i32 %72 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %73, ptr align 1 %74, i64 %75, i1 false)
  %76 = load i32, ptr %8, align 8, !tbaa !81
  %77 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %76, i32 %36), !nosanitize !44
  %78 = extractvalue { i32, i1 } %77, 1, !nosanitize !44
  br i1 %78, label %79, label %80, !prof !45, !nosanitize !44

79:                                               ; preds = %71
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

80:                                               ; preds = %71
  %81 = extractvalue { i32, i1 } %77, 0, !nosanitize !44
  store i32 %81, ptr %8, align 8, !tbaa !81
  %82 = load i32, ptr %6, align 4, !tbaa !71
  %83 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %82, i32 %36), !nosanitize !44
  %84 = extractvalue { i32, i1 } %83, 1, !nosanitize !44
  br i1 %84, label %85, label %86, !prof !45, !nosanitize !44

85:                                               ; preds = %86, %80
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

86:                                               ; preds = %80
  %87 = extractvalue { i32, i1 } %83, 0, !nosanitize !44
  store i32 %87, ptr %6, align 4, !tbaa !71
  %88 = load i64, ptr %9, align 8, !tbaa !72
  %89 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %88, i64 %37), !nosanitize !44
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !44
  br i1 %90, label %85, label %91, !prof !45, !nosanitize !44

91:                                               ; preds = %86
  %92 = extractvalue { i64, i1 } %89, 0, !nosanitize !44
  store i64 %92, ptr %9, align 8, !tbaa !72
  %93 = load i32, ptr %10, align 4, !tbaa !74
  %94 = icmp ugt i32 %93, %87
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 %87, ptr %10, align 4, !tbaa !74
  br label %96

96:                                               ; preds = %95, %91
  %97 = load i32, ptr %4, align 8, !tbaa !31
  %98 = load i32, ptr %11, align 4, !tbaa !36
  %99 = load ptr, ptr %12, align 8, !tbaa !37
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds nuw [2 x i8], ptr %99, i64 %100
  %.not.not = icmp eq i32 %98, 0
  br i1 %.not.not, label %.split.us, label %.split.preheader, !prof !45, !nosanitize !44

.split.preheader:                                 ; preds = %96
  %min.iters.check208 = icmp ult i32 %98, 8
  br i1 %min.iters.check208, label %.split.preheader230, label %vector.ph209

vector.ph209:                                     ; preds = %.split.preheader
  %n.vec211 = and i64 %100, 4294967288
  %102 = mul nsw i64 %n.vec211, -2
  %103 = getelementptr i8, ptr %101, i64 %102
  %.cast212 = trunc nuw i64 %n.vec211 to i32
  %104 = sub i32 %98, %.cast212
  %broadcast.splatinsert213 = insertelement <8 x i32> poison, i32 %97, i64 0
  %105 = shufflevector <8 x i32> %broadcast.splatinsert213, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph209
  %index216 = phi i64 [ 0, %vector.ph209 ], [ %index.next222, %vector.body215 ]
  %offset.idx217 = mul i64 %index216, -2
  %next.gep218 = getelementptr i8, ptr %101, i64 %offset.idx217
  %106 = getelementptr inbounds i8, ptr %next.gep218, i64 -16
  %wide.load219 = load <8 x i16>, ptr %106, align 2, !tbaa !60
  %107 = zext <8 x i16> %wide.load219 to <8 x i32>
  %108 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %107, <8 x i32> %105)
  %reverse221 = trunc nuw <8 x i32> %108 to <8 x i16>
  store <8 x i16> %reverse221, ptr %106, align 2, !tbaa !60
  %index.next222 = add nuw i64 %index216, 8
  %109 = icmp eq i64 %index.next222, %n.vec211
  br i1 %109, label %middle.block223, label %vector.body215, !llvm.loop !145

middle.block223:                                  ; preds = %vector.body215
  %cmp.n224 = icmp eq i64 %n.vec211, %100
  br i1 %cmp.n224, label %.loopexit228, label %.split.preheader230

.split.preheader230:                              ; preds = %.split.preheader, %middle.block223
  %.ph231 = phi ptr [ %101, %.split.preheader ], [ %103, %middle.block223 ]
  %.ph232 = phi i32 [ %98, %.split.preheader ], [ %104, %middle.block223 ]
  br label %.split

.split.us:                                        ; preds = %96
  %110 = getelementptr inbounds i8, ptr %101, i64 -2
  %111 = load i16, ptr %110, align 2, !tbaa !60
  %112 = zext i16 %111 to i32
  %113 = tail call i32 @llvm.usub.sat.i32(i32 %112, i32 %97)
  %114 = trunc nuw i32 %113 to i16
  store i16 %114, ptr %110, align 2, !tbaa !60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split:                                           ; preds = %.split.preheader230, %.split
  %115 = phi ptr [ %117, %.split ], [ %.ph231, %.split.preheader230 ]
  %116 = phi i32 [ %122, %.split ], [ %.ph232, %.split.preheader230 ]
  %117 = getelementptr inbounds i8, ptr %115, i64 -2
  %118 = load i16, ptr %117, align 2, !tbaa !60
  %119 = zext i16 %118 to i32
  %120 = tail call i32 @llvm.usub.sat.i32(i32 %119, i32 %97)
  %121 = trunc nuw i32 %120 to i16
  store i16 %121, ptr %117, align 2, !tbaa !60
  %122 = add i32 %116, -1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %.loopexit228, label %.split, !llvm.loop !146

.loopexit228:                                     ; preds = %.split, %middle.block223
  %.not.not153 = icmp eq i32 %97, 0
  br i1 %.not.not153, label %.split84.us, label %.split84, !prof !45, !nosanitize !44

.split84.us:                                      ; preds = %.loopexit228
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split84:                                         ; preds = %.loopexit228
  %124 = load ptr, ptr %13, align 8, !tbaa !35
  %125 = zext i32 %97 to i64
  %126 = getelementptr inbounds nuw [2 x i8], ptr %124, i64 %125
  %min.iters.check = icmp ult i32 %97, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.split84
  %n.vec = and i64 %125, 4294967288
  %127 = mul nsw i64 %n.vec, -2
  %128 = getelementptr i8, ptr %126, i64 %127
  %.cast = trunc nuw i64 %n.vec to i32
  %129 = sub i32 %97, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %97, i64 0
  %130 = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %126, i64 %offset.idx
  %131 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.load = load <8 x i16>, ptr %131, align 2, !tbaa !60
  %132 = zext <8 x i16> %wide.load to <8 x i32>
  %133 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %132, <8 x i32> %130)
  %reverse205 = trunc nuw <8 x i32> %133 to <8 x i16>
  store <8 x i16> %reverse205, ptr %131, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %134 = icmp eq i64 %index.next, %n.vec
  br i1 %134, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %125
  br i1 %cmp.n, label %.loopexit227, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split84, %middle.block
  %.ph = phi ptr [ %126, %.split84 ], [ %128, %middle.block ]
  %.ph229 = phi i32 [ %97, %.split84 ], [ %129, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %135 = phi ptr [ %137, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %136 = phi i32 [ %142, %scalar.ph ], [ %.ph229, %scalar.ph.preheader ]
  %137 = getelementptr inbounds i8, ptr %135, i64 -2
  %138 = load i16, ptr %137, align 2, !tbaa !60
  %139 = zext i16 %138 to i32
  %140 = tail call i32 @llvm.usub.sat.i32(i32 %139, i32 %97)
  %141 = trunc nuw i32 %140 to i16
  store i16 %141, ptr %137, align 2, !tbaa !60
  %142 = add i32 %136, -1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %.loopexit227, label %scalar.ph, !llvm.loop !148

.loopexit227:                                     ; preds = %scalar.ph, %middle.block
  store i32 1, ptr %14, align 8, !tbaa !61
  %144 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %54, i32 %36), !nosanitize !44
  %145 = extractvalue { i32, i1 } %144, 1, !nosanitize !44
  br i1 %145, label %146, label %147, !prof !45, !nosanitize !44

146:                                              ; preds = %.loopexit227
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

147:                                              ; preds = %.loopexit227
  %148 = extractvalue { i32, i1 } %144, 0, !nosanitize !44
  %149 = load i32, ptr %3, align 4, !tbaa !73
  br label %150

150:                                              ; preds = %147, %64
  %151 = phi i32 [ %149, %147 ], [ %39, %64 ]
  %152 = phi i32 [ %87, %147 ], [ %47, %64 ]
  %153 = phi i32 [ %148, %147 ], [ %54, %64 ]
  %154 = load ptr, ptr %0, align 8, !tbaa !19
  %155 = getelementptr inbounds nuw i8, ptr %154, i64 8
  %156 = load i32, ptr %155, align 8, !tbaa !79
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %280, label %158

158:                                              ; preds = %150
  %159 = load ptr, ptr %7, align 8, !tbaa !34
  %160 = zext i32 %152 to i64
  %161 = getelementptr inbounds nuw i8, ptr %159, i64 %160
  %162 = zext i32 %151 to i64
  %163 = getelementptr inbounds nuw i8, ptr %161, i64 %162
  %164 = tail call i32 @llvm.umin.i32(i32 %156, i32 %153)
  %165 = icmp eq i32 %153, 0
  br i1 %165, label %197, label %166

166:                                              ; preds = %158
  %167 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %156, i32 %164), !nosanitize !44
  %168 = extractvalue { i32, i1 } %167, 1, !nosanitize !44
  br i1 %168, label %169, label %170, !prof !45, !nosanitize !44

169:                                              ; preds = %166
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

170:                                              ; preds = %166
  %171 = extractvalue { i32, i1 } %167, 0, !nosanitize !44
  store i32 %171, ptr %155, align 8, !tbaa !79
  %172 = load ptr, ptr %154, align 8, !tbaa !80
  %173 = zext i32 %164 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %163, ptr align 1 %172, i64 %173, i1 false)
  %174 = getelementptr inbounds nuw i8, ptr %154, i64 56
  %175 = load ptr, ptr %174, align 8, !tbaa !18
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 48
  %177 = load i32, ptr %176, align 8, !tbaa !29
  switch i32 %177, label %186 [
    i32 1, label %178
    i32 2, label %182
  ]

178:                                              ; preds = %170
  %179 = getelementptr inbounds nuw i8, ptr %154, i64 96
  %180 = load i64, ptr %179, align 8, !tbaa !57
  %181 = tail call i64 @adler32(i64 noundef %180, ptr noundef %163, i32 noundef %164) #11
  store i64 %181, ptr %179, align 8, !tbaa !57
  br label %186

182:                                              ; preds = %170
  %183 = getelementptr inbounds nuw i8, ptr %154, i64 96
  %184 = load i64, ptr %183, align 8, !tbaa !57
  %185 = tail call i64 @crc32(i64 noundef %184, ptr noundef %163, i32 noundef %164) #11
  store i64 %185, ptr %183, align 8, !tbaa !57
  br label %186

186:                                              ; preds = %182, %178, %170
  %187 = load ptr, ptr %154, align 8, !tbaa !80
  %188 = getelementptr inbounds nuw i8, ptr %187, i64 %173
  store ptr %188, ptr %154, align 8, !tbaa !80
  %189 = getelementptr inbounds nuw i8, ptr %154, i64 16
  %190 = load i64, ptr %189, align 8, !tbaa !53
  %191 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %190, i64 %173), !nosanitize !44
  %192 = extractvalue { i64, i1 } %191, 1, !nosanitize !44
  br i1 %192, label %193, label %194, !prof !45, !nosanitize !44

193:                                              ; preds = %186
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

194:                                              ; preds = %186
  %195 = extractvalue { i64, i1 } %191, 0, !nosanitize !44
  store i64 %195, ptr %189, align 8, !tbaa !53
  %196 = load i32, ptr %3, align 4, !tbaa !73
  br label %197

197:                                              ; preds = %194, %158
  %198 = phi i32 [ %151, %158 ], [ %196, %194 ]
  %199 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %198, i32 %164), !nosanitize !44
  %200 = extractvalue { i32, i1 } %199, 1, !nosanitize !44
  br i1 %200, label %201, label %202, !prof !45, !nosanitize !44

201:                                              ; preds = %197
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

202:                                              ; preds = %197
  %203 = extractvalue { i32, i1 } %199, 0, !nosanitize !44
  store i32 %203, ptr %3, align 4, !tbaa !73
  %204 = load i32, ptr %10, align 4, !tbaa !74
  %205 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %203, i32 %204), !nosanitize !44
  %206 = extractvalue { i32, i1 } %205, 1, !nosanitize !44
  br i1 %206, label %207, label %208, !prof !45, !nosanitize !44

207:                                              ; preds = %202
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

208:                                              ; preds = %202
  %209 = extractvalue { i32, i1 } %205, 0, !nosanitize !44
  %210 = icmp ugt i32 %209, 2
  br i1 %210, label %211, label %.loopexit

211:                                              ; preds = %208
  %212 = load i32, ptr %6, align 4, !tbaa !71
  %213 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %212, i32 %204), !nosanitize !44
  %214 = extractvalue { i32, i1 } %213, 0, !nosanitize !44
  %215 = extractvalue { i32, i1 } %213, 1, !nosanitize !44
  br i1 %215, label %216, label %217, !prof !45, !nosanitize !44

216:                                              ; preds = %211
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

217:                                              ; preds = %211
  %218 = load ptr, ptr %7, align 8, !tbaa !34
  %219 = zext i32 %214 to i64
  %220 = getelementptr inbounds nuw i8, ptr %218, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !5
  %222 = zext i8 %221 to i32
  store i32 %222, ptr %15, align 8, !tbaa !78
  %223 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %214, i32 1), !nosanitize !44
  %224 = extractvalue { i32, i1 } %223, 1, !nosanitize !44
  br i1 %224, label %225, label %226, !prof !45, !nosanitize !44

225:                                              ; preds = %217
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

226:                                              ; preds = %217
  %227 = extractvalue { i32, i1 } %223, 0, !nosanitize !44
  %228 = load i32, ptr %16, align 8, !tbaa !52
  %229 = shl i32 %222, %228
  %230 = zext i32 %227 to i64
  %231 = getelementptr inbounds nuw i8, ptr %218, i64 %230
  %232 = load i8, ptr %231, align 1, !tbaa !5
  %233 = zext i8 %232 to i32
  %234 = xor i32 %229, %233
  %235 = load i32, ptr %17, align 4, !tbaa !51
  %236 = and i32 %234, %235
  store i32 %236, ptr %15, align 8, !tbaa !78
  br label %237

237:                                              ; preds = %270, %226
  %238 = phi i32 [ %236, %226 ], [ %255, %270 ]
  %239 = phi i32 [ %204, %226 ], [ %266, %270 ]
  %240 = phi i32 [ %214, %226 ], [ %271, %270 ]
  %241 = icmp eq i32 %239, 0
  br i1 %241, label %.loopexit, label %242

242:                                              ; preds = %237
  %243 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 3), !nosanitize !44
  %244 = extractvalue { i32, i1 } %243, 1, !nosanitize !44
  br i1 %244, label %245, label %246, !prof !45, !nosanitize !44

245:                                              ; preds = %242
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

246:                                              ; preds = %242
  %247 = shl i32 %238, %228
  %248 = extractvalue { i32, i1 } %243, 0, !nosanitize !44
  %249 = add i32 %248, -1
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds nuw i8, ptr %218, i64 %250
  %252 = load i8, ptr %251, align 1, !tbaa !5
  %253 = zext i8 %252 to i32
  %254 = xor i32 %247, %253
  %255 = and i32 %254, %235
  store i32 %255, ptr %15, align 8, !tbaa !78
  %256 = load ptr, ptr %12, align 8, !tbaa !37
  %257 = zext i32 %255 to i64
  %258 = getelementptr inbounds nuw [2 x i8], ptr %256, i64 %257
  %259 = load i16, ptr %258, align 2, !tbaa !60
  %260 = load ptr, ptr %13, align 8, !tbaa !35
  %261 = load i32, ptr %18, align 8, !tbaa !32
  %262 = and i32 %261, %240
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds nuw [2 x i8], ptr %260, i64 %263
  store i16 %259, ptr %264, align 2, !tbaa !60
  %265 = trunc i32 %240 to i16
  store i16 %265, ptr %258, align 2, !tbaa !60
  %266 = add i32 %239, -1
  store i32 %266, ptr %10, align 4, !tbaa !74
  %267 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %203, i32 %266), !nosanitize !44
  %268 = extractvalue { i32, i1 } %267, 1, !nosanitize !44
  br i1 %268, label %269, label %270, !prof !45, !nosanitize !44

269:                                              ; preds = %246
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

270:                                              ; preds = %246
  %271 = add nuw i32 %240, 1
  %272 = extractvalue { i32, i1 } %267, 0, !nosanitize !44
  %273 = icmp ult i32 %272, 3
  br i1 %273, label %.loopexit, label %237, !llvm.loop !89

.loopexit:                                        ; preds = %270, %237, %208
  %274 = icmp ult i32 %203, 262
  br i1 %274, label %275, label %280

275:                                              ; preds = %.loopexit
  %276 = load ptr, ptr %0, align 8, !tbaa !19
  %277 = getelementptr inbounds nuw i8, ptr %276, i64 8
  %278 = load i32, ptr %277, align 8, !tbaa !79
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %38, !llvm.loop !90

280:                                              ; preds = %275, %.loopexit, %150
  %281 = phi i32 [ %203, %275 ], [ %203, %.loopexit ], [ %151, %150 ]
  %282 = load i64, ptr %19, align 8, !tbaa !38
  %283 = load i64, ptr %5, align 8, !tbaa !59
  %284 = icmp ult i64 %282, %283
  br i1 %284, label %285, label %324

285:                                              ; preds = %280
  %286 = load i32, ptr %6, align 4, !tbaa !71
  %287 = zext i32 %286 to i64
  %288 = zext i32 %281 to i64
  %289 = add nuw nsw i64 %287, %288
  %290 = icmp ult i64 %282, %289
  br i1 %290, label %291, label %301

291:                                              ; preds = %285
  %292 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %283, i64 %289), !nosanitize !44
  %293 = extractvalue { i64, i1 } %292, 1, !nosanitize !44
  br i1 %293, label %294, label %295, !prof !45, !nosanitize !44

294:                                              ; preds = %291
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

295:                                              ; preds = %291
  %296 = extractvalue { i64, i1 } %292, 0, !nosanitize !44
  %297 = tail call i64 @llvm.umin.i64(i64 %296, i64 258)
  %298 = load ptr, ptr %7, align 8, !tbaa !34
  %299 = getelementptr inbounds nuw i8, ptr %298, i64 %289
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %299, i8 0, i64 %297, i1 false)
  %300 = add nuw nsw i64 %297, %289
  br label %321

301:                                              ; preds = %285
  %302 = add nuw nsw i64 %289, 258
  %303 = icmp ult i64 %282, %302
  br i1 %303, label %304, label %324

304:                                              ; preds = %301
  %305 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %283, i64 %282), !nosanitize !44
  %306 = extractvalue { i64, i1 } %305, 1, !nosanitize !44
  br i1 %306, label %307, label %308, !prof !45, !nosanitize !44

307:                                              ; preds = %304
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

308:                                              ; preds = %304
  %309 = sub nuw nsw i64 %302, %282
  %310 = extractvalue { i64, i1 } %305, 0, !nosanitize !44
  %311 = tail call i64 @llvm.umin.i64(i64 %309, i64 %310)
  %312 = load ptr, ptr %7, align 8, !tbaa !34
  %313 = getelementptr inbounds nuw i8, ptr %312, i64 %282
  %314 = and i64 %311, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %313, i8 0, i64 %314, i1 false)
  %315 = load i64, ptr %19, align 8, !tbaa !38
  %316 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %315, i64 %311), !nosanitize !44
  %317 = extractvalue { i64, i1 } %316, 1, !nosanitize !44
  br i1 %317, label %318, label %319, !prof !45, !nosanitize !44

318:                                              ; preds = %308
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

319:                                              ; preds = %308
  %320 = extractvalue { i64, i1 } %316, 0, !nosanitize !44
  br label %321

321:                                              ; preds = %319, %295
  %322 = phi i64 [ %300, %295 ], [ %320, %319 ]
  store i64 %322, ptr %19, align 8, !tbaa !38
  %323 = load i32, ptr %3, align 4, !tbaa !73
  br label %324

324:                                              ; preds = %321, %301, %280
  %325 = phi i32 [ %281, %280 ], [ %281, %301 ], [ %323, %321 ]
  %326 = icmp ult i32 %325, 262
  %327 = and i1 %20, %326
  br i1 %327, label %.loopexit34, label %328

328:                                              ; preds = %324
  %329 = icmp eq i32 %325, 0
  br i1 %329, label %820, label %330

330:                                              ; preds = %328
  %331 = icmp ugt i32 %325, 2
  br i1 %331, label %332, label %533

332:                                              ; preds = %330, %32
  %333 = phi i32 [ %325, %330 ], [ %33, %32 ]
  %334 = load i32, ptr %6, align 4, !tbaa !71
  %335 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %334, i32 2), !nosanitize !44
  %336 = extractvalue { i32, i1 } %335, 1, !nosanitize !44
  br i1 %336, label %337, label %338, !prof !45, !nosanitize !44

337:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

338:                                              ; preds = %332
  %339 = extractvalue { i32, i1 } %335, 0, !nosanitize !44
  %340 = load ptr, ptr %7, align 8, !tbaa !34
  %341 = load i32, ptr %15, align 8, !tbaa !78
  %342 = load i32, ptr %16, align 8, !tbaa !52
  %343 = shl i32 %341, %342
  %344 = zext i32 %339 to i64
  %345 = getelementptr inbounds nuw i8, ptr %340, i64 %344
  %346 = load i8, ptr %345, align 1, !tbaa !5
  %347 = zext i8 %346 to i32
  %348 = xor i32 %343, %347
  %349 = load i32, ptr %17, align 4, !tbaa !51
  %350 = and i32 %348, %349
  store i32 %350, ptr %15, align 8, !tbaa !78
  %351 = load ptr, ptr %12, align 8, !tbaa !37
  %352 = zext i32 %350 to i64
  %353 = getelementptr inbounds nuw [2 x i8], ptr %351, i64 %352
  %354 = load i16, ptr %353, align 2, !tbaa !60
  %355 = load ptr, ptr %13, align 8, !tbaa !35
  %356 = load i32, ptr %18, align 8, !tbaa !32
  %357 = and i32 %356, %334
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds nuw [2 x i8], ptr %355, i64 %358
  store i16 %354, ptr %359, align 2, !tbaa !60
  %360 = zext i16 %354 to i32
  %361 = trunc i32 %334 to i16
  store i16 %361, ptr %353, align 2, !tbaa !60
  %362 = icmp eq i16 %354, 0
  br i1 %362, label %533, label %363

363:                                              ; preds = %338
  %364 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %334, i32 %360), !nosanitize !44
  %365 = extractvalue { i32, i1 } %364, 0, !nosanitize !44
  %366 = extractvalue { i32, i1 } %364, 1, !nosanitize !44
  br i1 %366, label %367, label %368, !prof !45, !nosanitize !44

367:                                              ; preds = %363
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

368:                                              ; preds = %363
  %369 = load i32, ptr %4, align 8, !tbaa !31
  %370 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %369, i32 262), !nosanitize !44
  %371 = extractvalue { i32, i1 } %370, 1, !nosanitize !44
  br i1 %371, label %372, label %373, !prof !45, !nosanitize !44

372:                                              ; preds = %368
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

373:                                              ; preds = %368
  %374 = extractvalue { i32, i1 } %370, 0, !nosanitize !44
  %375 = icmp ugt i32 %365, %374
  br i1 %375, label %533, label %376

376:                                              ; preds = %373
  %377 = zext i32 %334 to i64
  %378 = getelementptr inbounds nuw i8, ptr %340, i64 %377
  %379 = load i32, ptr %21, align 8, !tbaa !75
  %380 = tail call i32 @llvm.usub.sat.i32(i32 %334, i32 %374)
  %381 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %379, i32 -1)
  %382 = extractvalue { i32, i1 } %381, 1, !nosanitize !44
  br i1 %382, label %.loopexit33, label %383, !prof !45, !nosanitize !44

.loopexit33:                                      ; preds = %376, %.split.loop.exit, %414
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

383:                                              ; preds = %376
  %384 = load i32, ptr %22, align 8, !tbaa !68
  %385 = load i32, ptr %23, align 4, !tbaa !70
  %386 = getelementptr inbounds nuw i8, ptr %378, i64 258
  %387 = extractvalue { i32, i1 } %381, 0, !nosanitize !44
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, ptr %378, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !5
  %391 = sext i32 %379 to i64
  %392 = getelementptr inbounds i8, ptr %378, i64 %391
  %393 = load i8, ptr %392, align 1, !tbaa !5
  %394 = load i32, ptr %24, align 4, !tbaa !66
  %395 = icmp ult i32 %379, %394
  %396 = lshr i32 %385, 2
  %397 = select i1 %395, i32 %385, i32 %396
  %398 = tail call i32 @llvm.umin.i32(i32 %384, i32 %333)
  %399 = getelementptr i8, ptr %378, i64 -1
  %400 = getelementptr inbounds nuw i8, ptr %378, i64 1
  %401 = ptrtoint ptr %386 to i64
  br label %402

402:                                              ; preds = %527, %383
  %403 = phi i32 [ %379, %383 ], [ %514, %527 ]
  %404 = phi i32 [ %397, %383 ], [ %528, %527 ]
  %405 = phi i32 [ %360, %383 ], [ %521, %527 ]
  %406 = phi i8 [ %390, %383 ], [ %515, %527 ]
  %407 = phi i8 [ %393, %383 ], [ %516, %527 ]
  %408 = zext nneg i32 %405 to i64
  %409 = getelementptr inbounds nuw i8, ptr %340, i64 %408
  %410 = sext i32 %403 to i64
  %411 = getelementptr inbounds i8, ptr %409, i64 %410
  %412 = load i8, ptr %411, align 1, !tbaa !5
  %413 = icmp eq i8 %412, %407
  br i1 %413, label %414, label %513

414:                                              ; preds = %402
  %415 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %403, i32 -1)
  %416 = extractvalue { i32, i1 } %415, 1, !nosanitize !44
  br i1 %416, label %.loopexit33, label %417, !prof !45, !nosanitize !44

417:                                              ; preds = %414
  %418 = extractvalue { i32, i1 } %415, 0, !nosanitize !44
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8, ptr %409, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !5
  %422 = icmp eq i8 %421, %406
  br i1 %422, label %423, label %513

423:                                              ; preds = %417
  %424 = load i8, ptr %409, align 1, !tbaa !5
  %425 = load i8, ptr %378, align 1, !tbaa !5
  %426 = icmp eq i8 %424, %425
  br i1 %426, label %427, label %513

427:                                              ; preds = %423
  %428 = getelementptr inbounds nuw i8, ptr %409, i64 1
  %429 = load i8, ptr %428, align 1, !tbaa !5
  %430 = load i8, ptr %400, align 1, !tbaa !5
  %431 = icmp eq i8 %429, %430
  br i1 %431, label %432, label %513

432:                                              ; preds = %427
  %433 = getelementptr inbounds nuw i8, ptr %409, i64 2
  br label %434

434:                                              ; preds = %479, %432
  %435 = phi ptr [ %433, %432 ], [ %483, %479 ]
  %436 = phi i64 [ 2, %432 ], [ %480, %479 ]
  %437 = getelementptr inbounds nuw i8, ptr %378, i64 %436
  %438 = getelementptr inbounds nuw i8, ptr %437, i64 1
  %439 = load i8, ptr %438, align 1, !tbaa !5
  %440 = getelementptr inbounds nuw i8, ptr %435, i64 1
  %441 = load i8, ptr %440, align 1, !tbaa !5
  %442 = icmp eq i8 %439, %441
  br i1 %442, label %443, label %.split.loop.exit.split.loop.exit

443:                                              ; preds = %434
  %444 = getelementptr inbounds nuw i8, ptr %437, i64 2
  %445 = load i8, ptr %444, align 1, !tbaa !5
  %446 = getelementptr inbounds nuw i8, ptr %435, i64 2
  %447 = load i8, ptr %446, align 1, !tbaa !5
  %448 = icmp eq i8 %445, %447
  br i1 %448, label %449, label %.split.loop.exit.split.loop.exit164

449:                                              ; preds = %443
  %450 = getelementptr inbounds nuw i8, ptr %437, i64 3
  %451 = load i8, ptr %450, align 1, !tbaa !5
  %452 = getelementptr inbounds nuw i8, ptr %435, i64 3
  %453 = load i8, ptr %452, align 1, !tbaa !5
  %454 = icmp eq i8 %451, %453
  br i1 %454, label %455, label %.split.loop.exit.split.loop.exit166

455:                                              ; preds = %449
  %456 = getelementptr inbounds nuw i8, ptr %437, i64 4
  %457 = load i8, ptr %456, align 1, !tbaa !5
  %458 = getelementptr inbounds nuw i8, ptr %435, i64 4
  %459 = load i8, ptr %458, align 1, !tbaa !5
  %460 = icmp eq i8 %457, %459
  br i1 %460, label %461, label %.split.loop.exit.split.loop.exit168

461:                                              ; preds = %455
  %462 = getelementptr inbounds nuw i8, ptr %437, i64 5
  %463 = load i8, ptr %462, align 1, !tbaa !5
  %464 = getelementptr inbounds nuw i8, ptr %435, i64 5
  %465 = load i8, ptr %464, align 1, !tbaa !5
  %466 = icmp eq i8 %463, %465
  br i1 %466, label %467, label %.split.loop.exit.split.loop.exit170

467:                                              ; preds = %461
  %468 = getelementptr inbounds nuw i8, ptr %437, i64 6
  %469 = load i8, ptr %468, align 1, !tbaa !5
  %470 = getelementptr inbounds nuw i8, ptr %435, i64 6
  %471 = load i8, ptr %470, align 1, !tbaa !5
  %472 = icmp eq i8 %469, %471
  br i1 %472, label %473, label %.split.loop.exit.split.loop.exit172

473:                                              ; preds = %467
  %474 = getelementptr inbounds nuw i8, ptr %437, i64 7
  %475 = load i8, ptr %474, align 1, !tbaa !5
  %476 = getelementptr inbounds nuw i8, ptr %435, i64 7
  %477 = load i8, ptr %476, align 1, !tbaa !5
  %478 = icmp eq i8 %475, %477
  br i1 %478, label %479, label %.split.loop.exit.split.loop.exit174

479:                                              ; preds = %473
  %480 = add nuw nsw i64 %436, 8
  %481 = getelementptr inbounds nuw i8, ptr %378, i64 %480
  %482 = load i8, ptr %481, align 1, !tbaa !5
  %483 = getelementptr inbounds nuw i8, ptr %435, i64 8
  %484 = load i8, ptr %483, align 1, !tbaa !5
  %485 = icmp eq i8 %482, %484
  %486 = icmp samesign ult i64 %436, 250
  %487 = select i1 %485, i1 %486, i1 false
  br i1 %487, label %434, label %.split.loop.exit.split.loop.exit176, !llvm.loop !149

.split.loop.exit.split.loop.exit:                 ; preds = %434
  %488 = getelementptr inbounds nuw i8, ptr %437, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit164:              ; preds = %443
  %489 = getelementptr inbounds nuw i8, ptr %437, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit166:              ; preds = %449
  %490 = getelementptr inbounds nuw i8, ptr %437, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit168:              ; preds = %455
  %491 = getelementptr inbounds nuw i8, ptr %437, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit170:              ; preds = %461
  %492 = getelementptr inbounds nuw i8, ptr %437, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit172:              ; preds = %467
  %493 = getelementptr inbounds nuw i8, ptr %437, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit174:              ; preds = %473
  %494 = getelementptr inbounds nuw i8, ptr %437, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit176:              ; preds = %479
  %495 = getelementptr inbounds nuw i8, ptr %378, i64 %480
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit176, %.split.loop.exit.split.loop.exit174, %.split.loop.exit.split.loop.exit172, %.split.loop.exit.split.loop.exit170, %.split.loop.exit.split.loop.exit168, %.split.loop.exit.split.loop.exit166, %.split.loop.exit.split.loop.exit164, %.split.loop.exit.split.loop.exit
  %496 = phi ptr [ %488, %.split.loop.exit.split.loop.exit ], [ %489, %.split.loop.exit.split.loop.exit164 ], [ %490, %.split.loop.exit.split.loop.exit166 ], [ %491, %.split.loop.exit.split.loop.exit168 ], [ %492, %.split.loop.exit.split.loop.exit170 ], [ %493, %.split.loop.exit.split.loop.exit172 ], [ %494, %.split.loop.exit.split.loop.exit174 ], [ %495, %.split.loop.exit.split.loop.exit176 ]
  %497 = ptrtoint ptr %496 to i64
  %498 = sub i64 %401, %497
  %499 = trunc i64 %498 to i32
  %500 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %499), !nosanitize !44
  %501 = extractvalue { i32, i1 } %500, 0, !nosanitize !44
  %502 = extractvalue { i32, i1 } %500, 1, !nosanitize !44
  br i1 %502, label %.loopexit33, label %503, !prof !45, !nosanitize !44

503:                                              ; preds = %.split.loop.exit
  %504 = icmp sgt i32 %501, %403
  br i1 %504, label %505, label %513

505:                                              ; preds = %503
  store i32 %405, ptr %8, align 8, !tbaa !81
  %506 = icmp slt i32 %501, %398
  br i1 %506, label %507, label %530

507:                                              ; preds = %505
  %508 = sext i32 %501 to i64
  %509 = getelementptr i8, ptr %399, i64 %508
  %510 = load i8, ptr %509, align 1, !tbaa !5
  %511 = getelementptr inbounds i8, ptr %378, i64 %508
  %512 = load i8, ptr %511, align 1, !tbaa !5
  br label %513

513:                                              ; preds = %507, %503, %427, %423, %417, %402
  %514 = phi i32 [ %403, %402 ], [ %403, %417 ], [ %403, %423 ], [ %403, %427 ], [ %501, %507 ], [ %403, %503 ]
  %515 = phi i8 [ %406, %402 ], [ %406, %417 ], [ %406, %423 ], [ %406, %427 ], [ %510, %507 ], [ %406, %503 ]
  %516 = phi i8 [ %407, %402 ], [ %407, %417 ], [ %407, %423 ], [ %407, %427 ], [ %512, %507 ], [ %407, %503 ]
  %517 = and i32 %405, %356
  %518 = zext nneg i32 %517 to i64
  %519 = getelementptr inbounds nuw [2 x i8], ptr %355, i64 %518
  %520 = load i16, ptr %519, align 2, !tbaa !60
  %521 = zext i16 %520 to i32
  %522 = icmp ult i32 %380, %521
  br i1 %522, label %523, label %530

523:                                              ; preds = %513
  %524 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %404, i32 1), !nosanitize !44
  %525 = extractvalue { i32, i1 } %524, 1, !nosanitize !44
  br i1 %525, label %526, label %527, !prof !45, !nosanitize !44

526:                                              ; preds = %523
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

527:                                              ; preds = %523
  %528 = extractvalue { i32, i1 } %524, 0, !nosanitize !44
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %402, !llvm.loop !150

530:                                              ; preds = %527, %513, %505
  %531 = phi i32 [ %514, %527 ], [ %514, %513 ], [ %501, %505 ]
  %532 = tail call i32 @llvm.umin.i32(i32 %531, i32 %333)
  store i32 %532, ptr %25, align 8, !tbaa !76
  br label %535

533:                                              ; preds = %373, %338, %330
  %534 = load i32, ptr %25, align 8, !tbaa !76
  br label %535

535:                                              ; preds = %533, %530
  %536 = phi i32 [ %534, %533 ], [ %532, %530 ]
  %537 = icmp ugt i32 %536, 2
  br i1 %537, label %538, label %704

538:                                              ; preds = %535
  %539 = trunc i32 %536 to i8
  %540 = add i8 %539, -3
  %541 = load i32, ptr %6, align 4, !tbaa !71
  %542 = load i32, ptr %8, align 8, !tbaa !81
  %543 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %541, i32 %542), !nosanitize !44
  %544 = extractvalue { i32, i1 } %543, 1, !nosanitize !44
  br i1 %544, label %545, label %546, !prof !45, !nosanitize !44

545:                                              ; preds = %538
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

546:                                              ; preds = %538
  %547 = extractvalue { i32, i1 } %543, 0, !nosanitize !44
  %548 = trunc i32 %547 to i16
  %549 = load i32, ptr %27, align 4, !tbaa !136
  %550 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %549, i32 1), !nosanitize !44
  %551 = extractvalue { i32, i1 } %550, 1, !nosanitize !44
  br i1 %551, label %552, label %553, !prof !45, !nosanitize !44

552:                                              ; preds = %546
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

553:                                              ; preds = %546
  %554 = extractvalue { i32, i1 } %550, 0, !nosanitize !44
  %555 = load ptr, ptr %26, align 8, !tbaa !43
  %556 = trunc i32 %547 to i8
  store i32 %554, ptr %27, align 4, !tbaa !136
  %557 = zext i32 %549 to i64
  %558 = getelementptr inbounds nuw i8, ptr %555, i64 %557
  store i8 %556, ptr %558, align 1, !tbaa !5
  %559 = load i32, ptr %27, align 4, !tbaa !136
  %560 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %559, i32 1), !nosanitize !44
  %561 = extractvalue { i32, i1 } %560, 1, !nosanitize !44
  br i1 %561, label %562, label %563, !prof !45, !nosanitize !44

562:                                              ; preds = %553
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

563:                                              ; preds = %553
  %564 = extractvalue { i32, i1 } %560, 0, !nosanitize !44
  %565 = load ptr, ptr %26, align 8, !tbaa !43
  %566 = lshr i32 %547, 8
  %567 = trunc i32 %566 to i8
  store i32 %564, ptr %27, align 4, !tbaa !136
  %568 = zext i32 %559 to i64
  %569 = getelementptr inbounds nuw i8, ptr %565, i64 %568
  store i8 %567, ptr %569, align 1, !tbaa !5
  %570 = load i32, ptr %27, align 4, !tbaa !136
  %571 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %570, i32 1), !nosanitize !44
  %572 = extractvalue { i32, i1 } %571, 1, !nosanitize !44
  br i1 %572, label %573, label %574, !prof !45, !nosanitize !44

573:                                              ; preds = %563
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

574:                                              ; preds = %563
  %575 = extractvalue { i32, i1 } %571, 0, !nosanitize !44
  %576 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %575, ptr %27, align 4, !tbaa !136
  %577 = zext i32 %570 to i64
  %578 = getelementptr inbounds nuw i8, ptr %576, i64 %577
  store i8 %540, ptr %578, align 1, !tbaa !5
  %579 = add i16 %548, -1
  %580 = zext i8 %540 to i64
  %581 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %580
  %582 = load i8, ptr %581, align 1, !tbaa !5
  %583 = zext i8 %582 to i64
  %584 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %583
  %585 = getelementptr inbounds nuw i8, ptr %584, i64 1028
  %586 = load i16, ptr %585, align 4, !tbaa !5
  %587 = add i16 %586, 1
  store i16 %587, ptr %585, align 4, !tbaa !5
  %588 = icmp ult i16 %579, 256
  %589 = lshr i16 %579, 7
  %590 = add nuw nsw i16 %589, 256
  %591 = select i1 %588, i16 %579, i16 %590
  %592 = zext i16 %591 to i64
  %593 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %592
  %594 = load i8, ptr %593, align 1, !tbaa !5
  %595 = zext i8 %594 to i64
  %596 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %595
  %597 = load i16, ptr %596, align 4, !tbaa !5
  %598 = add i16 %597, 1
  store i16 %598, ptr %596, align 4, !tbaa !5
  %599 = load i32, ptr %27, align 4, !tbaa !136
  %600 = load i32, ptr %29, align 8, !tbaa !46
  %601 = icmp eq i32 %599, %600
  %602 = load i32, ptr %25, align 8, !tbaa !76
  %603 = load i32, ptr %3, align 4, !tbaa !73
  %604 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %603, i32 %602), !nosanitize !44
  %605 = extractvalue { i32, i1 } %604, 1, !nosanitize !44
  br i1 %605, label %606, label %607, !prof !45, !nosanitize !44

606:                                              ; preds = %574
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

607:                                              ; preds = %574
  %608 = extractvalue { i32, i1 } %604, 0, !nosanitize !44
  store i32 %608, ptr %3, align 4, !tbaa !73
  %609 = load i32, ptr %31, align 8, !tbaa !64
  %610 = icmp ule i32 %602, %609
  %611 = icmp ugt i32 %608, 2
  %612 = select i1 %610, i1 %611, i1 false
  br i1 %612, label %613, label %678

613:                                              ; preds = %607
  %614 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %602, i32 1), !nosanitize !44
  %615 = extractvalue { i32, i1 } %614, 1, !nosanitize !44
  br i1 %615, label %616, label %617, !prof !45, !nosanitize !44

616:                                              ; preds = %613
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

617:                                              ; preds = %613
  %618 = extractvalue { i32, i1 } %614, 0, !nosanitize !44
  store i32 %618, ptr %25, align 8, !tbaa !76
  %619 = load i32, ptr %6, align 4, !tbaa !71
  %620 = xor i32 %619, -1
  %621 = add i32 %602, -2
  %umin92 = tail call i32 @llvm.umin.i32(i32 %618, i32 %621)
  %622 = freeze i32 %umin92
  %623 = add i32 %619, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %623, i32 -2)
  %624 = xor i32 %619, -1
  %625 = add i32 %umax, %624
  %umin93 = tail call i32 @llvm.umin.i32(i32 %625, i32 %620)
  %umin94 = tail call i32 @llvm.umin.i32(i32 %622, i32 %umin93)
  %626 = icmp eq i32 %umin94, %620
  %627 = icmp eq i32 %618, %umin94
  br i1 %626, label %675, label %.split95, !prof !45, !nosanitize !44

.split95:                                         ; preds = %617
  %628 = icmp eq i32 %625, %umin94
  br i1 %628, label %.split95.split.us, label %.split95.split, !prof !45, !nosanitize !44

.split95.split.us:                                ; preds = %.split95
  %629 = add i32 %619, 1
  store i32 %629, ptr %6, align 4, !tbaa !71
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split95.split:                                   ; preds = %.split95
  br i1 %627, label %.split95.split.split.us, label %.split95.split.split, !prof !45, !nosanitize !44

.split95.split.split.us:                          ; preds = %.split95.split
  %630 = add i32 %619, 1
  store i32 %630, ptr %6, align 4, !tbaa !71
  %631 = add i32 %619, 3
  %632 = load ptr, ptr %7, align 8, !tbaa !34
  %633 = load i32, ptr %15, align 8, !tbaa !78
  %634 = load i32, ptr %16, align 8, !tbaa !52
  %635 = shl i32 %633, %634
  %636 = zext i32 %631 to i64
  %637 = getelementptr inbounds nuw i8, ptr %632, i64 %636
  %638 = load i8, ptr %637, align 1, !tbaa !5
  %639 = zext i8 %638 to i32
  %640 = xor i32 %635, %639
  %641 = load i32, ptr %17, align 4, !tbaa !51
  %642 = and i32 %640, %641
  store i32 %642, ptr %15, align 8, !tbaa !78
  %643 = load ptr, ptr %12, align 8, !tbaa !37
  %644 = zext i32 %642 to i64
  %645 = getelementptr inbounds nuw [2 x i8], ptr %643, i64 %644
  %646 = load i16, ptr %645, align 2, !tbaa !60
  %647 = load ptr, ptr %13, align 8, !tbaa !35
  %648 = load i32, ptr %18, align 8, !tbaa !32
  %649 = and i32 %648, %630
  %650 = zext i32 %649 to i64
  %651 = getelementptr inbounds nuw [2 x i8], ptr %647, i64 %650
  store i16 %646, ptr %651, align 2, !tbaa !60
  %652 = trunc i32 %630 to i16
  store i16 %652, ptr %645, align 2, !tbaa !60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split95.split.split:                             ; preds = %.split95.split
  %.pre = load ptr, ptr %7, align 8, !tbaa !34
  %.pre112 = load i32, ptr %15, align 8, !tbaa !78
  %.pre113 = load i32, ptr %16, align 8, !tbaa !52
  %.pre114 = load i32, ptr %17, align 4, !tbaa !51
  %.pre115 = load ptr, ptr %12, align 8, !tbaa !37
  %.pre116 = load ptr, ptr %13, align 8, !tbaa !35
  %.pre117 = load i32, ptr %18, align 8, !tbaa !32
  br label %653

653:                                              ; preds = %653, %.split95.split.split
  %654 = phi i32 [ %665, %653 ], [ %.pre112, %.split95.split.split ]
  %655 = phi i32 [ %673, %653 ], [ %618, %.split95.split.split ]
  %656 = phi i32 [ %657, %653 ], [ %619, %.split95.split.split ]
  %657 = add i32 %656, 1
  store i32 %657, ptr %6, align 4, !tbaa !71
  %658 = add i32 %656, 3
  %659 = shl i32 %654, %.pre113
  %660 = zext i32 %658 to i64
  %661 = getelementptr inbounds nuw i8, ptr %.pre, i64 %660
  %662 = load i8, ptr %661, align 1, !tbaa !5
  %663 = zext i8 %662 to i32
  %664 = xor i32 %659, %663
  %665 = and i32 %664, %.pre114
  store i32 %665, ptr %15, align 8, !tbaa !78
  %666 = zext i32 %665 to i64
  %667 = getelementptr inbounds nuw [2 x i8], ptr %.pre115, i64 %666
  %668 = load i16, ptr %667, align 2, !tbaa !60
  %669 = and i32 %.pre117, %657
  %670 = zext i32 %669 to i64
  %671 = getelementptr inbounds nuw [2 x i8], ptr %.pre116, i64 %670
  store i16 %668, ptr %671, align 2, !tbaa !60
  %672 = trunc i32 %657 to i16
  store i16 %672, ptr %667, align 2, !tbaa !60
  %673 = add i32 %655, -1
  store i32 %673, ptr %25, align 8, !tbaa !76
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %676, label %653, !llvm.loop !151

675:                                              ; preds = %617
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

676:                                              ; preds = %653
  %677 = add i32 %656, 2
  store i32 %677, ptr %6, align 4, !tbaa !71
  br i1 %601, label %755, label %.backedge

678:                                              ; preds = %607
  %679 = load i32, ptr %6, align 4, !tbaa !71
  %680 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %679, i32 %602), !nosanitize !44
  %681 = extractvalue { i32, i1 } %680, 1, !nosanitize !44
  br i1 %681, label %682, label %683, !prof !45, !nosanitize !44

682:                                              ; preds = %678
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

683:                                              ; preds = %678
  %684 = extractvalue { i32, i1 } %680, 0, !nosanitize !44
  store i32 %684, ptr %6, align 4, !tbaa !71
  store i32 0, ptr %25, align 8, !tbaa !76
  %685 = load ptr, ptr %7, align 8, !tbaa !34
  %686 = zext i32 %684 to i64
  %687 = getelementptr inbounds nuw i8, ptr %685, i64 %686
  %688 = load i8, ptr %687, align 1, !tbaa !5
  %689 = zext i8 %688 to i32
  store i32 %689, ptr %15, align 8, !tbaa !78
  %690 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %684, i32 1), !nosanitize !44
  %691 = extractvalue { i32, i1 } %690, 1, !nosanitize !44
  br i1 %691, label %692, label %693, !prof !45, !nosanitize !44

692:                                              ; preds = %683
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

693:                                              ; preds = %683
  %694 = extractvalue { i32, i1 } %690, 0, !nosanitize !44
  %695 = load i32, ptr %16, align 8, !tbaa !52
  %696 = shl i32 %689, %695
  %697 = zext i32 %694 to i64
  %698 = getelementptr inbounds nuw i8, ptr %685, i64 %697
  %699 = load i8, ptr %698, align 1, !tbaa !5
  %700 = zext i8 %699 to i32
  %701 = xor i32 %696, %700
  %702 = load i32, ptr %17, align 4, !tbaa !51
  %703 = and i32 %701, %702
  store i32 %703, ptr %15, align 8, !tbaa !78
  br i1 %601, label %755, label %.backedge

704:                                              ; preds = %535
  %705 = load ptr, ptr %7, align 8, !tbaa !34
  %706 = load i32, ptr %6, align 4, !tbaa !71
  %707 = zext i32 %706 to i64
  %708 = getelementptr inbounds nuw i8, ptr %705, i64 %707
  %709 = load i8, ptr %708, align 1, !tbaa !5
  %710 = load i32, ptr %27, align 4, !tbaa !136
  %711 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %710, i32 1), !nosanitize !44
  %712 = extractvalue { i32, i1 } %711, 1, !nosanitize !44
  br i1 %712, label %713, label %714, !prof !45, !nosanitize !44

713:                                              ; preds = %704
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

714:                                              ; preds = %704
  %715 = extractvalue { i32, i1 } %711, 0, !nosanitize !44
  %716 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %715, ptr %27, align 4, !tbaa !136
  %717 = zext i32 %710 to i64
  %718 = getelementptr inbounds nuw i8, ptr %716, i64 %717
  store i8 0, ptr %718, align 1, !tbaa !5
  %719 = load i32, ptr %27, align 4, !tbaa !136
  %720 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %719, i32 1), !nosanitize !44
  %721 = extractvalue { i32, i1 } %720, 1, !nosanitize !44
  br i1 %721, label %722, label %723, !prof !45, !nosanitize !44

722:                                              ; preds = %714
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

723:                                              ; preds = %714
  %724 = extractvalue { i32, i1 } %720, 0, !nosanitize !44
  %725 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %724, ptr %27, align 4, !tbaa !136
  %726 = zext i32 %719 to i64
  %727 = getelementptr inbounds nuw i8, ptr %725, i64 %726
  store i8 0, ptr %727, align 1, !tbaa !5
  %728 = load i32, ptr %27, align 4, !tbaa !136
  %729 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %728, i32 1), !nosanitize !44
  %730 = extractvalue { i32, i1 } %729, 1, !nosanitize !44
  br i1 %730, label %731, label %732, !prof !45, !nosanitize !44

731:                                              ; preds = %723
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

732:                                              ; preds = %723
  %733 = extractvalue { i32, i1 } %729, 0, !nosanitize !44
  %734 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %733, ptr %27, align 4, !tbaa !136
  %735 = zext i32 %728 to i64
  %736 = getelementptr inbounds nuw i8, ptr %734, i64 %735
  store i8 %709, ptr %736, align 1, !tbaa !5
  %737 = zext i8 %709 to i64
  %738 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %737
  %739 = load i16, ptr %738, align 4, !tbaa !5
  %740 = add i16 %739, 1
  store i16 %740, ptr %738, align 4, !tbaa !5
  %741 = load i32, ptr %27, align 4, !tbaa !136
  %742 = load i32, ptr %29, align 8, !tbaa !46
  %743 = icmp eq i32 %741, %742
  %744 = load i32, ptr %3, align 4, !tbaa !73
  %745 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %744, i32 1), !nosanitize !44
  %746 = extractvalue { i32, i1 } %745, 1, !nosanitize !44
  br i1 %746, label %.loopexit36, label %747, !prof !45, !nosanitize !44

.loopexit36:                                      ; preds = %763, %732, %899, %831
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

747:                                              ; preds = %732
  %748 = extractvalue { i32, i1 } %745, 0, !nosanitize !44
  store i32 %748, ptr %3, align 4, !tbaa !73
  %749 = load i32, ptr %6, align 4, !tbaa !71
  %750 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %749, i32 1), !nosanitize !44
  %751 = extractvalue { i32, i1 } %750, 1, !nosanitize !44
  br i1 %751, label %752, label %753, !prof !45, !nosanitize !44

752:                                              ; preds = %747
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

753:                                              ; preds = %747
  %754 = extractvalue { i32, i1 } %750, 0, !nosanitize !44
  store i32 %754, ptr %6, align 4, !tbaa !71
  br i1 %743, label %755, label %.backedge

755:                                              ; preds = %753, %693, %676
  %756 = phi i32 [ %684, %693 ], [ %677, %676 ], [ %754, %753 ]
  %757 = load i64, ptr %9, align 8, !tbaa !72
  %758 = icmp sgt i64 %757, -1
  br i1 %758, label %759, label %763

759:                                              ; preds = %755
  %760 = load ptr, ptr %7, align 8, !tbaa !34
  %761 = and i64 %757, 4294967295
  %762 = getelementptr inbounds nuw i8, ptr %760, i64 %761
  br label %763

763:                                              ; preds = %759, %755
  %764 = phi ptr [ %762, %759 ], [ null, %755 ]
  %765 = zext i32 %756 to i64
  %766 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %765, i64 %757), !nosanitize !44
  %767 = extractvalue { i64, i1 } %766, 1, !nosanitize !44
  br i1 %767, label %.loopexit36, label %768, !prof !45, !nosanitize !44

768:                                              ; preds = %763
  %769 = extractvalue { i64, i1 } %766, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %764, i64 noundef %769, i32 noundef 0) #11
  %770 = load i32, ptr %6, align 4, !tbaa !71
  %771 = zext i32 %770 to i64
  store i64 %771, ptr %9, align 8, !tbaa !72
  %772 = load ptr, ptr %0, align 8, !tbaa !19
  %773 = getelementptr inbounds nuw i8, ptr %772, i64 56
  %774 = load ptr, ptr %773, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %774) #11
  %775 = getelementptr inbounds nuw i8, ptr %774, i64 40
  %776 = load i64, ptr %775, align 8, !tbaa !55
  %777 = getelementptr inbounds nuw i8, ptr %772, i64 32
  %778 = load i32, ptr %777, align 8, !tbaa !105
  %779 = zext i32 %778 to i64
  %780 = tail call i64 @llvm.umin.i64(i64 %776, i64 %779)
  %781 = trunc nuw i64 %780 to i32
  %782 = icmp eq i64 %780, 0
  br i1 %782, label %815, label %783

783:                                              ; preds = %768
  %784 = getelementptr inbounds nuw i8, ptr %772, i64 24
  %785 = load ptr, ptr %784, align 8, !tbaa !104
  %786 = getelementptr inbounds nuw i8, ptr %774, i64 32
  %787 = load ptr, ptr %786, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %785, ptr align 1 %787, i64 %780, i1 false)
  %788 = load ptr, ptr %784, align 8, !tbaa !104
  %789 = getelementptr inbounds nuw i8, ptr %788, i64 %780
  store ptr %789, ptr %784, align 8, !tbaa !104
  %790 = load ptr, ptr %786, align 8, !tbaa !56
  %791 = getelementptr inbounds nuw i8, ptr %790, i64 %780
  store ptr %791, ptr %786, align 8, !tbaa !56
  %792 = getelementptr inbounds nuw i8, ptr %772, i64 40
  %793 = load i64, ptr %792, align 8, !tbaa !106
  %794 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %793, i64 %780), !nosanitize !44
  %795 = extractvalue { i64, i1 } %794, 1, !nosanitize !44
  br i1 %795, label %796, label %797, !prof !45, !nosanitize !44

796:                                              ; preds = %783
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

797:                                              ; preds = %783
  %798 = extractvalue { i64, i1 } %794, 0, !nosanitize !44
  store i64 %798, ptr %792, align 8, !tbaa !106
  %799 = load i32, ptr %777, align 8, !tbaa !105
  %800 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %799, i32 %781), !nosanitize !44
  %801 = extractvalue { i32, i1 } %800, 1, !nosanitize !44
  br i1 %801, label %802, label %803, !prof !45, !nosanitize !44

802:                                              ; preds = %797
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

803:                                              ; preds = %797
  %804 = extractvalue { i32, i1 } %800, 0, !nosanitize !44
  store i32 %804, ptr %777, align 8, !tbaa !105
  %805 = load i64, ptr %775, align 8, !tbaa !55
  %806 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %805, i64 %780), !nosanitize !44
  %807 = extractvalue { i64, i1 } %806, 1, !nosanitize !44
  br i1 %807, label %808, label %809, !prof !45, !nosanitize !44

808:                                              ; preds = %803
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

809:                                              ; preds = %803
  %810 = extractvalue { i64, i1 } %806, 0, !nosanitize !44
  store i64 %810, ptr %775, align 8, !tbaa !55
  %811 = icmp eq i64 %810, 0
  br i1 %811, label %812, label %815

812:                                              ; preds = %809
  %813 = getelementptr inbounds nuw i8, ptr %774, i64 16
  %814 = load ptr, ptr %813, align 8, !tbaa !40
  store ptr %814, ptr %786, align 8, !tbaa !56
  br label %815

815:                                              ; preds = %812, %809, %768
  %816 = load ptr, ptr %0, align 8, !tbaa !19
  %817 = getelementptr inbounds nuw i8, ptr %816, i64 32
  %818 = load i32, ptr %817, align 8, !tbaa !105
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %.loopexit34, label %.backedge

.backedge:                                        ; preds = %815, %753, %693, %676
  br label %32

820:                                              ; preds = %328
  %821 = load i32, ptr %6, align 4, !tbaa !71
  %822 = tail call i32 @llvm.umin.i32(i32 %821, i32 2)
  store i32 %822, ptr %10, align 4, !tbaa !74
  %823 = icmp eq i32 %1, 4
  br i1 %823, label %824, label %889

824:                                              ; preds = %820
  %825 = load i64, ptr %9, align 8, !tbaa !72
  %826 = icmp sgt i64 %825, -1
  br i1 %826, label %827, label %831

827:                                              ; preds = %824
  %828 = load ptr, ptr %7, align 8, !tbaa !34
  %829 = and i64 %825, 4294967295
  %830 = getelementptr inbounds nuw i8, ptr %828, i64 %829
  br label %831

831:                                              ; preds = %827, %824
  %832 = phi ptr [ %830, %827 ], [ null, %824 ]
  %833 = zext i32 %821 to i64
  %834 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %833, i64 %825), !nosanitize !44
  %835 = extractvalue { i64, i1 } %834, 1, !nosanitize !44
  br i1 %835, label %.loopexit36, label %836, !prof !45, !nosanitize !44

836:                                              ; preds = %831
  %837 = extractvalue { i64, i1 } %834, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %832, i64 noundef %837, i32 noundef 1) #11
  %838 = load i32, ptr %6, align 4, !tbaa !71
  %839 = zext i32 %838 to i64
  store i64 %839, ptr %9, align 8, !tbaa !72
  %840 = load ptr, ptr %0, align 8, !tbaa !19
  %841 = getelementptr inbounds nuw i8, ptr %840, i64 56
  %842 = load ptr, ptr %841, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %842) #11
  %843 = getelementptr inbounds nuw i8, ptr %842, i64 40
  %844 = load i64, ptr %843, align 8, !tbaa !55
  %845 = getelementptr inbounds nuw i8, ptr %840, i64 32
  %846 = load i32, ptr %845, align 8, !tbaa !105
  %847 = zext i32 %846 to i64
  %848 = tail call i64 @llvm.umin.i64(i64 %844, i64 %847)
  %849 = trunc nuw i64 %848 to i32
  %850 = icmp eq i64 %848, 0
  br i1 %850, label %883, label %851

851:                                              ; preds = %836
  %852 = getelementptr inbounds nuw i8, ptr %840, i64 24
  %853 = load ptr, ptr %852, align 8, !tbaa !104
  %854 = getelementptr inbounds nuw i8, ptr %842, i64 32
  %855 = load ptr, ptr %854, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %853, ptr align 1 %855, i64 %848, i1 false)
  %856 = load ptr, ptr %852, align 8, !tbaa !104
  %857 = getelementptr inbounds nuw i8, ptr %856, i64 %848
  store ptr %857, ptr %852, align 8, !tbaa !104
  %858 = load ptr, ptr %854, align 8, !tbaa !56
  %859 = getelementptr inbounds nuw i8, ptr %858, i64 %848
  store ptr %859, ptr %854, align 8, !tbaa !56
  %860 = getelementptr inbounds nuw i8, ptr %840, i64 40
  %861 = load i64, ptr %860, align 8, !tbaa !106
  %862 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %861, i64 %848), !nosanitize !44
  %863 = extractvalue { i64, i1 } %862, 1, !nosanitize !44
  br i1 %863, label %864, label %865, !prof !45, !nosanitize !44

864:                                              ; preds = %851
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

865:                                              ; preds = %851
  %866 = extractvalue { i64, i1 } %862, 0, !nosanitize !44
  store i64 %866, ptr %860, align 8, !tbaa !106
  %867 = load i32, ptr %845, align 8, !tbaa !105
  %868 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %867, i32 %849), !nosanitize !44
  %869 = extractvalue { i32, i1 } %868, 1, !nosanitize !44
  br i1 %869, label %870, label %871, !prof !45, !nosanitize !44

870:                                              ; preds = %865
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

871:                                              ; preds = %865
  %872 = extractvalue { i32, i1 } %868, 0, !nosanitize !44
  store i32 %872, ptr %845, align 8, !tbaa !105
  %873 = load i64, ptr %843, align 8, !tbaa !55
  %874 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %873, i64 %848), !nosanitize !44
  %875 = extractvalue { i64, i1 } %874, 1, !nosanitize !44
  br i1 %875, label %876, label %877, !prof !45, !nosanitize !44

876:                                              ; preds = %871
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

877:                                              ; preds = %871
  %878 = extractvalue { i64, i1 } %874, 0, !nosanitize !44
  store i64 %878, ptr %843, align 8, !tbaa !55
  %879 = icmp eq i64 %878, 0
  br i1 %879, label %880, label %883

880:                                              ; preds = %877
  %881 = getelementptr inbounds nuw i8, ptr %842, i64 16
  %882 = load ptr, ptr %881, align 8, !tbaa !40
  store ptr %882, ptr %854, align 8, !tbaa !56
  br label %883

883:                                              ; preds = %880, %877, %836
  %884 = load ptr, ptr %0, align 8, !tbaa !19
  %885 = getelementptr inbounds nuw i8, ptr %884, i64 32
  %886 = load i32, ptr %885, align 8, !tbaa !105
  %887 = icmp eq i32 %886, 0
  %888 = select i1 %887, i32 2, i32 3
  br label %.loopexit34

889:                                              ; preds = %820
  %890 = load i32, ptr %27, align 4, !tbaa !136
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %956, label %892

892:                                              ; preds = %889
  %893 = load i64, ptr %9, align 8, !tbaa !72
  %894 = icmp sgt i64 %893, -1
  br i1 %894, label %895, label %899

895:                                              ; preds = %892
  %896 = load ptr, ptr %7, align 8, !tbaa !34
  %897 = and i64 %893, 4294967295
  %898 = getelementptr inbounds nuw i8, ptr %896, i64 %897
  br label %899

899:                                              ; preds = %895, %892
  %900 = phi ptr [ %898, %895 ], [ null, %892 ]
  %901 = zext i32 %821 to i64
  %902 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %901, i64 %893), !nosanitize !44
  %903 = extractvalue { i64, i1 } %902, 1, !nosanitize !44
  br i1 %903, label %.loopexit36, label %904, !prof !45, !nosanitize !44

904:                                              ; preds = %899
  %905 = extractvalue { i64, i1 } %902, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %900, i64 noundef %905, i32 noundef 0) #11
  %906 = load i32, ptr %6, align 4, !tbaa !71
  %907 = zext i32 %906 to i64
  store i64 %907, ptr %9, align 8, !tbaa !72
  %908 = load ptr, ptr %0, align 8, !tbaa !19
  %909 = getelementptr inbounds nuw i8, ptr %908, i64 56
  %910 = load ptr, ptr %909, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %910) #11
  %911 = getelementptr inbounds nuw i8, ptr %910, i64 40
  %912 = load i64, ptr %911, align 8, !tbaa !55
  %913 = getelementptr inbounds nuw i8, ptr %908, i64 32
  %914 = load i32, ptr %913, align 8, !tbaa !105
  %915 = zext i32 %914 to i64
  %916 = tail call i64 @llvm.umin.i64(i64 %912, i64 %915)
  %917 = trunc nuw i64 %916 to i32
  %918 = icmp eq i64 %916, 0
  br i1 %918, label %951, label %919

919:                                              ; preds = %904
  %920 = getelementptr inbounds nuw i8, ptr %908, i64 24
  %921 = load ptr, ptr %920, align 8, !tbaa !104
  %922 = getelementptr inbounds nuw i8, ptr %910, i64 32
  %923 = load ptr, ptr %922, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %921, ptr align 1 %923, i64 %916, i1 false)
  %924 = load ptr, ptr %920, align 8, !tbaa !104
  %925 = getelementptr inbounds nuw i8, ptr %924, i64 %916
  store ptr %925, ptr %920, align 8, !tbaa !104
  %926 = load ptr, ptr %922, align 8, !tbaa !56
  %927 = getelementptr inbounds nuw i8, ptr %926, i64 %916
  store ptr %927, ptr %922, align 8, !tbaa !56
  %928 = getelementptr inbounds nuw i8, ptr %908, i64 40
  %929 = load i64, ptr %928, align 8, !tbaa !106
  %930 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %929, i64 %916), !nosanitize !44
  %931 = extractvalue { i64, i1 } %930, 1, !nosanitize !44
  br i1 %931, label %932, label %933, !prof !45, !nosanitize !44

932:                                              ; preds = %919
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

933:                                              ; preds = %919
  %934 = extractvalue { i64, i1 } %930, 0, !nosanitize !44
  store i64 %934, ptr %928, align 8, !tbaa !106
  %935 = load i32, ptr %913, align 8, !tbaa !105
  %936 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %935, i32 %917), !nosanitize !44
  %937 = extractvalue { i32, i1 } %936, 1, !nosanitize !44
  br i1 %937, label %938, label %939, !prof !45, !nosanitize !44

938:                                              ; preds = %933
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

939:                                              ; preds = %933
  %940 = extractvalue { i32, i1 } %936, 0, !nosanitize !44
  store i32 %940, ptr %913, align 8, !tbaa !105
  %941 = load i64, ptr %911, align 8, !tbaa !55
  %942 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %941, i64 %916), !nosanitize !44
  %943 = extractvalue { i64, i1 } %942, 1, !nosanitize !44
  br i1 %943, label %944, label %945, !prof !45, !nosanitize !44

944:                                              ; preds = %939
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

945:                                              ; preds = %939
  %946 = extractvalue { i64, i1 } %942, 0, !nosanitize !44
  store i64 %946, ptr %911, align 8, !tbaa !55
  %947 = icmp eq i64 %946, 0
  br i1 %947, label %948, label %951

948:                                              ; preds = %945
  %949 = getelementptr inbounds nuw i8, ptr %910, i64 16
  %950 = load ptr, ptr %949, align 8, !tbaa !40
  store ptr %950, ptr %922, align 8, !tbaa !56
  br label %951

951:                                              ; preds = %948, %945, %904
  %952 = load ptr, ptr %0, align 8, !tbaa !19
  %953 = getelementptr inbounds nuw i8, ptr %952, i64 32
  %954 = load i32, ptr %953, align 8, !tbaa !105
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %.loopexit34, label %956

956:                                              ; preds = %951, %889
  br label %.loopexit34

.loopexit34:                                      ; preds = %815, %324, %956, %951, %883
  %957 = phi i32 [ 1, %956 ], [ %888, %883 ], [ 0, %951 ], [ 0, %324 ], [ 0, %815 ]
  ret i32 %957
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_slow(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %20 = icmp eq i32 %1, 0
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 164
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 188
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 204
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %35

35:                                               ; preds = %.backedge, %2
  %36 = load i32, ptr %3, align 4, !tbaa !73
  %37 = icmp ult i32 %36, 262
  br i1 %37, label %38, label %338

38:                                               ; preds = %35
  %39 = load i32, ptr %4, align 8, !tbaa !31
  %40 = zext i32 %39 to i64
  br label %41

41:                                               ; preds = %278, %38
  %42 = phi i32 [ %206, %278 ], [ %36, %38 ]
  %43 = load i64, ptr %5, align 8, !tbaa !59
  %44 = zext nneg i32 %42 to i64
  %45 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %43, i64 %44), !nosanitize !44
  %46 = extractvalue { i64, i1 } %45, 1, !nosanitize !44
  br i1 %46, label %47, label %48, !prof !45, !nosanitize !44

47:                                               ; preds = %41
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

48:                                               ; preds = %41
  %49 = extractvalue { i64, i1 } %45, 0, !nosanitize !44
  %50 = load i32, ptr %6, align 4, !tbaa !71
  %51 = zext i32 %50 to i64
  %52 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %49, i64 %51), !nosanitize !44
  %53 = extractvalue { i64, i1 } %52, 1, !nosanitize !44
  br i1 %53, label %54, label %55, !prof !45, !nosanitize !44

54:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

55:                                               ; preds = %48
  %56 = extractvalue { i64, i1 } %52, 0, !nosanitize !44
  %57 = trunc i64 %56 to i32
  %58 = load i32, ptr %4, align 8, !tbaa !31
  %59 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %58, i32 262), !nosanitize !44
  %60 = extractvalue { i32, i1 } %59, 1, !nosanitize !44
  br i1 %60, label %61, label %62, !prof !45, !nosanitize !44

61:                                               ; preds = %55
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

62:                                               ; preds = %55
  %63 = extractvalue { i32, i1 } %59, 0, !nosanitize !44
  %64 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %39, i32 %63), !nosanitize !44
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !44
  br i1 %65, label %66, label %67, !prof !45, !nosanitize !44

66:                                               ; preds = %62
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

67:                                               ; preds = %62
  %68 = extractvalue { i32, i1 } %64, 0, !nosanitize !44
  %69 = icmp ult i32 %50, %68
  br i1 %69, label %153, label %70

70:                                               ; preds = %67
  %71 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %39, i32 %57), !nosanitize !44
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !44
  br i1 %72, label %73, label %74, !prof !45, !nosanitize !44

73:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

74:                                               ; preds = %70
  %75 = extractvalue { i32, i1 } %71, 0, !nosanitize !44
  %76 = load ptr, ptr %7, align 8, !tbaa !34
  %77 = getelementptr inbounds nuw i8, ptr %76, i64 %40
  %78 = zext i32 %75 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %76, ptr align 1 %77, i64 %78, i1 false)
  %79 = load i32, ptr %8, align 8, !tbaa !81
  %80 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %79, i32 %39), !nosanitize !44
  %81 = extractvalue { i32, i1 } %80, 1, !nosanitize !44
  br i1 %81, label %82, label %83, !prof !45, !nosanitize !44

82:                                               ; preds = %74
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

83:                                               ; preds = %74
  %84 = extractvalue { i32, i1 } %80, 0, !nosanitize !44
  store i32 %84, ptr %8, align 8, !tbaa !81
  %85 = load i32, ptr %6, align 4, !tbaa !71
  %86 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %85, i32 %39), !nosanitize !44
  %87 = extractvalue { i32, i1 } %86, 1, !nosanitize !44
  br i1 %87, label %88, label %89, !prof !45, !nosanitize !44

88:                                               ; preds = %89, %83
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

89:                                               ; preds = %83
  %90 = extractvalue { i32, i1 } %86, 0, !nosanitize !44
  store i32 %90, ptr %6, align 4, !tbaa !71
  %91 = load i64, ptr %9, align 8, !tbaa !72
  %92 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %91, i64 %40), !nosanitize !44
  %93 = extractvalue { i64, i1 } %92, 1, !nosanitize !44
  br i1 %93, label %88, label %94, !prof !45, !nosanitize !44

94:                                               ; preds = %89
  %95 = extractvalue { i64, i1 } %92, 0, !nosanitize !44
  store i64 %95, ptr %9, align 8, !tbaa !72
  %96 = load i32, ptr %10, align 4, !tbaa !74
  %97 = icmp ugt i32 %96, %90
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 %90, ptr %10, align 4, !tbaa !74
  br label %99

99:                                               ; preds = %98, %94
  %100 = load i32, ptr %4, align 8, !tbaa !31
  %101 = load i32, ptr %11, align 4, !tbaa !36
  %102 = load ptr, ptr %12, align 8, !tbaa !37
  %103 = zext i32 %101 to i64
  %104 = getelementptr inbounds nuw [2 x i8], ptr %102, i64 %103
  %.not.not = icmp eq i32 %101, 0
  br i1 %.not.not, label %.split.us, label %.split.preheader, !prof !45, !nosanitize !44

.split.preheader:                                 ; preds = %99
  %min.iters.check199 = icmp ult i32 %101, 8
  br i1 %min.iters.check199, label %.split.preheader221, label %vector.ph200

vector.ph200:                                     ; preds = %.split.preheader
  %n.vec202 = and i64 %103, 4294967288
  %105 = mul nsw i64 %n.vec202, -2
  %106 = getelementptr i8, ptr %104, i64 %105
  %.cast203 = trunc nuw i64 %n.vec202 to i32
  %107 = sub i32 %101, %.cast203
  %broadcast.splatinsert204 = insertelement <8 x i32> poison, i32 %100, i64 0
  %108 = shufflevector <8 x i32> %broadcast.splatinsert204, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph200
  %index207 = phi i64 [ 0, %vector.ph200 ], [ %index.next213, %vector.body206 ]
  %offset.idx208 = mul i64 %index207, -2
  %next.gep209 = getelementptr i8, ptr %104, i64 %offset.idx208
  %109 = getelementptr inbounds i8, ptr %next.gep209, i64 -16
  %wide.load210 = load <8 x i16>, ptr %109, align 2, !tbaa !60
  %110 = zext <8 x i16> %wide.load210 to <8 x i32>
  %111 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %110, <8 x i32> %108)
  %reverse212 = trunc nuw <8 x i32> %111 to <8 x i16>
  store <8 x i16> %reverse212, ptr %109, align 2, !tbaa !60
  %index.next213 = add nuw i64 %index207, 8
  %112 = icmp eq i64 %index.next213, %n.vec202
  br i1 %112, label %middle.block214, label %vector.body206, !llvm.loop !152

middle.block214:                                  ; preds = %vector.body206
  %cmp.n215 = icmp eq i64 %n.vec202, %103
  br i1 %cmp.n215, label %.loopexit219, label %.split.preheader221

.split.preheader221:                              ; preds = %.split.preheader, %middle.block214
  %.ph222 = phi ptr [ %104, %.split.preheader ], [ %106, %middle.block214 ]
  %.ph223 = phi i32 [ %101, %.split.preheader ], [ %107, %middle.block214 ]
  br label %.split

.split.us:                                        ; preds = %99
  %113 = getelementptr inbounds i8, ptr %104, i64 -2
  %114 = load i16, ptr %113, align 2, !tbaa !60
  %115 = zext i16 %114 to i32
  %116 = tail call i32 @llvm.usub.sat.i32(i32 %115, i32 %100)
  %117 = trunc nuw i32 %116 to i16
  store i16 %117, ptr %113, align 2, !tbaa !60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split:                                           ; preds = %.split.preheader221, %.split
  %118 = phi ptr [ %120, %.split ], [ %.ph222, %.split.preheader221 ]
  %119 = phi i32 [ %125, %.split ], [ %.ph223, %.split.preheader221 ]
  %120 = getelementptr inbounds i8, ptr %118, i64 -2
  %121 = load i16, ptr %120, align 2, !tbaa !60
  %122 = zext i16 %121 to i32
  %123 = tail call i32 @llvm.usub.sat.i32(i32 %122, i32 %100)
  %124 = trunc nuw i32 %123 to i16
  store i16 %124, ptr %120, align 2, !tbaa !60
  %125 = add i32 %119, -1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %.loopexit219, label %.split, !llvm.loop !153

.loopexit219:                                     ; preds = %.split, %middle.block214
  %.not.not142 = icmp eq i32 %100, 0
  br i1 %.not.not142, label %.split94.us, label %.split94, !prof !45, !nosanitize !44

.split94.us:                                      ; preds = %.loopexit219
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split94:                                         ; preds = %.loopexit219
  %127 = load ptr, ptr %13, align 8, !tbaa !35
  %128 = zext i32 %100 to i64
  %129 = getelementptr inbounds nuw [2 x i8], ptr %127, i64 %128
  %min.iters.check = icmp ult i32 %100, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.split94
  %n.vec = and i64 %128, 4294967288
  %130 = mul nsw i64 %n.vec, -2
  %131 = getelementptr i8, ptr %129, i64 %130
  %.cast = trunc nuw i64 %n.vec to i32
  %132 = sub i32 %100, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %100, i64 0
  %133 = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %129, i64 %offset.idx
  %134 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.load = load <8 x i16>, ptr %134, align 2, !tbaa !60
  %135 = zext <8 x i16> %wide.load to <8 x i32>
  %136 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %135, <8 x i32> %133)
  %reverse196 = trunc nuw <8 x i32> %136 to <8 x i16>
  store <8 x i16> %reverse196, ptr %134, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %137 = icmp eq i64 %index.next, %n.vec
  br i1 %137, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %128
  br i1 %cmp.n, label %.loopexit218, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split94, %middle.block
  %.ph = phi ptr [ %129, %.split94 ], [ %131, %middle.block ]
  %.ph220 = phi i32 [ %100, %.split94 ], [ %132, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %138 = phi ptr [ %140, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %139 = phi i32 [ %145, %scalar.ph ], [ %.ph220, %scalar.ph.preheader ]
  %140 = getelementptr inbounds i8, ptr %138, i64 -2
  %141 = load i16, ptr %140, align 2, !tbaa !60
  %142 = zext i16 %141 to i32
  %143 = tail call i32 @llvm.usub.sat.i32(i32 %142, i32 %100)
  %144 = trunc nuw i32 %143 to i16
  store i16 %144, ptr %140, align 2, !tbaa !60
  %145 = add i32 %139, -1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %.loopexit218, label %scalar.ph, !llvm.loop !155

.loopexit218:                                     ; preds = %scalar.ph, %middle.block
  store i32 1, ptr %14, align 8, !tbaa !61
  %147 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %57, i32 %39), !nosanitize !44
  %148 = extractvalue { i32, i1 } %147, 1, !nosanitize !44
  br i1 %148, label %149, label %150, !prof !45, !nosanitize !44

149:                                              ; preds = %.loopexit218
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

150:                                              ; preds = %.loopexit218
  %151 = extractvalue { i32, i1 } %147, 0, !nosanitize !44
  %152 = load i32, ptr %3, align 4, !tbaa !73
  br label %153

153:                                              ; preds = %150, %67
  %154 = phi i32 [ %152, %150 ], [ %42, %67 ]
  %155 = phi i32 [ %90, %150 ], [ %50, %67 ]
  %156 = phi i32 [ %151, %150 ], [ %57, %67 ]
  %157 = load ptr, ptr %0, align 8, !tbaa !19
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 8
  %159 = load i32, ptr %158, align 8, !tbaa !79
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %283, label %161

161:                                              ; preds = %153
  %162 = load ptr, ptr %7, align 8, !tbaa !34
  %163 = zext i32 %155 to i64
  %164 = getelementptr inbounds nuw i8, ptr %162, i64 %163
  %165 = zext i32 %154 to i64
  %166 = getelementptr inbounds nuw i8, ptr %164, i64 %165
  %167 = tail call i32 @llvm.umin.i32(i32 %159, i32 %156)
  %168 = icmp eq i32 %156, 0
  br i1 %168, label %200, label %169

169:                                              ; preds = %161
  %170 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %159, i32 %167), !nosanitize !44
  %171 = extractvalue { i32, i1 } %170, 1, !nosanitize !44
  br i1 %171, label %172, label %173, !prof !45, !nosanitize !44

172:                                              ; preds = %169
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

173:                                              ; preds = %169
  %174 = extractvalue { i32, i1 } %170, 0, !nosanitize !44
  store i32 %174, ptr %158, align 8, !tbaa !79
  %175 = load ptr, ptr %157, align 8, !tbaa !80
  %176 = zext i32 %167 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %166, ptr align 1 %175, i64 %176, i1 false)
  %177 = getelementptr inbounds nuw i8, ptr %157, i64 56
  %178 = load ptr, ptr %177, align 8, !tbaa !18
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 48
  %180 = load i32, ptr %179, align 8, !tbaa !29
  switch i32 %180, label %189 [
    i32 1, label %181
    i32 2, label %185
  ]

181:                                              ; preds = %173
  %182 = getelementptr inbounds nuw i8, ptr %157, i64 96
  %183 = load i64, ptr %182, align 8, !tbaa !57
  %184 = tail call i64 @adler32(i64 noundef %183, ptr noundef %166, i32 noundef %167) #11
  store i64 %184, ptr %182, align 8, !tbaa !57
  br label %189

185:                                              ; preds = %173
  %186 = getelementptr inbounds nuw i8, ptr %157, i64 96
  %187 = load i64, ptr %186, align 8, !tbaa !57
  %188 = tail call i64 @crc32(i64 noundef %187, ptr noundef %166, i32 noundef %167) #11
  store i64 %188, ptr %186, align 8, !tbaa !57
  br label %189

189:                                              ; preds = %185, %181, %173
  %190 = load ptr, ptr %157, align 8, !tbaa !80
  %191 = getelementptr inbounds nuw i8, ptr %190, i64 %176
  store ptr %191, ptr %157, align 8, !tbaa !80
  %192 = getelementptr inbounds nuw i8, ptr %157, i64 16
  %193 = load i64, ptr %192, align 8, !tbaa !53
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 %176), !nosanitize !44
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !44
  br i1 %195, label %196, label %197, !prof !45, !nosanitize !44

196:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

197:                                              ; preds = %189
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !44
  store i64 %198, ptr %192, align 8, !tbaa !53
  %199 = load i32, ptr %3, align 4, !tbaa !73
  br label %200

200:                                              ; preds = %197, %161
  %201 = phi i32 [ %154, %161 ], [ %199, %197 ]
  %202 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %201, i32 %167), !nosanitize !44
  %203 = extractvalue { i32, i1 } %202, 1, !nosanitize !44
  br i1 %203, label %204, label %205, !prof !45, !nosanitize !44

204:                                              ; preds = %200
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

205:                                              ; preds = %200
  %206 = extractvalue { i32, i1 } %202, 0, !nosanitize !44
  store i32 %206, ptr %3, align 4, !tbaa !73
  %207 = load i32, ptr %10, align 4, !tbaa !74
  %208 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %206, i32 %207), !nosanitize !44
  %209 = extractvalue { i32, i1 } %208, 1, !nosanitize !44
  br i1 %209, label %210, label %211, !prof !45, !nosanitize !44

210:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

211:                                              ; preds = %205
  %212 = extractvalue { i32, i1 } %208, 0, !nosanitize !44
  %213 = icmp ugt i32 %212, 2
  br i1 %213, label %214, label %.loopexit

214:                                              ; preds = %211
  %215 = load i32, ptr %6, align 4, !tbaa !71
  %216 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %215, i32 %207), !nosanitize !44
  %217 = extractvalue { i32, i1 } %216, 0, !nosanitize !44
  %218 = extractvalue { i32, i1 } %216, 1, !nosanitize !44
  br i1 %218, label %219, label %220, !prof !45, !nosanitize !44

219:                                              ; preds = %214
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

220:                                              ; preds = %214
  %221 = load ptr, ptr %7, align 8, !tbaa !34
  %222 = zext i32 %217 to i64
  %223 = getelementptr inbounds nuw i8, ptr %221, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !5
  %225 = zext i8 %224 to i32
  store i32 %225, ptr %15, align 8, !tbaa !78
  %226 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %217, i32 1), !nosanitize !44
  %227 = extractvalue { i32, i1 } %226, 1, !nosanitize !44
  br i1 %227, label %228, label %229, !prof !45, !nosanitize !44

228:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

229:                                              ; preds = %220
  %230 = extractvalue { i32, i1 } %226, 0, !nosanitize !44
  %231 = load i32, ptr %16, align 8, !tbaa !52
  %232 = shl i32 %225, %231
  %233 = zext i32 %230 to i64
  %234 = getelementptr inbounds nuw i8, ptr %221, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !5
  %236 = zext i8 %235 to i32
  %237 = xor i32 %232, %236
  %238 = load i32, ptr %17, align 4, !tbaa !51
  %239 = and i32 %237, %238
  store i32 %239, ptr %15, align 8, !tbaa !78
  br label %240

240:                                              ; preds = %273, %229
  %241 = phi i32 [ %239, %229 ], [ %258, %273 ]
  %242 = phi i32 [ %207, %229 ], [ %269, %273 ]
  %243 = phi i32 [ %217, %229 ], [ %274, %273 ]
  %244 = icmp eq i32 %242, 0
  br i1 %244, label %.loopexit, label %245

245:                                              ; preds = %240
  %246 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %243, i32 3), !nosanitize !44
  %247 = extractvalue { i32, i1 } %246, 1, !nosanitize !44
  br i1 %247, label %248, label %249, !prof !45, !nosanitize !44

248:                                              ; preds = %245
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

249:                                              ; preds = %245
  %250 = shl i32 %241, %231
  %251 = extractvalue { i32, i1 } %246, 0, !nosanitize !44
  %252 = add i32 %251, -1
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds nuw i8, ptr %221, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !5
  %256 = zext i8 %255 to i32
  %257 = xor i32 %250, %256
  %258 = and i32 %257, %238
  store i32 %258, ptr %15, align 8, !tbaa !78
  %259 = load ptr, ptr %12, align 8, !tbaa !37
  %260 = zext i32 %258 to i64
  %261 = getelementptr inbounds nuw [2 x i8], ptr %259, i64 %260
  %262 = load i16, ptr %261, align 2, !tbaa !60
  %263 = load ptr, ptr %13, align 8, !tbaa !35
  %264 = load i32, ptr %18, align 8, !tbaa !32
  %265 = and i32 %264, %243
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds nuw [2 x i8], ptr %263, i64 %266
  store i16 %262, ptr %267, align 2, !tbaa !60
  %268 = trunc i32 %243 to i16
  store i16 %268, ptr %261, align 2, !tbaa !60
  %269 = add i32 %242, -1
  store i32 %269, ptr %10, align 4, !tbaa !74
  %270 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %206, i32 %269), !nosanitize !44
  %271 = extractvalue { i32, i1 } %270, 1, !nosanitize !44
  br i1 %271, label %272, label %273, !prof !45, !nosanitize !44

272:                                              ; preds = %249
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

273:                                              ; preds = %249
  %274 = add nuw i32 %243, 1
  %275 = extractvalue { i32, i1 } %270, 0, !nosanitize !44
  %276 = icmp ult i32 %275, 3
  br i1 %276, label %.loopexit, label %240, !llvm.loop !89

.loopexit:                                        ; preds = %273, %240, %211
  %277 = icmp ult i32 %206, 262
  br i1 %277, label %278, label %283

278:                                              ; preds = %.loopexit
  %279 = load ptr, ptr %0, align 8, !tbaa !19
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 8
  %281 = load i32, ptr %280, align 8, !tbaa !79
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %41, !llvm.loop !90

283:                                              ; preds = %278, %.loopexit, %153
  %284 = phi i32 [ %206, %278 ], [ %206, %.loopexit ], [ %154, %153 ]
  %285 = load i64, ptr %19, align 8, !tbaa !38
  %286 = load i64, ptr %5, align 8, !tbaa !59
  %287 = icmp ult i64 %285, %286
  br i1 %287, label %288, label %327

288:                                              ; preds = %283
  %289 = load i32, ptr %6, align 4, !tbaa !71
  %290 = zext i32 %289 to i64
  %291 = zext i32 %284 to i64
  %292 = add nuw nsw i64 %290, %291
  %293 = icmp ult i64 %285, %292
  br i1 %293, label %294, label %304

294:                                              ; preds = %288
  %295 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %286, i64 %292), !nosanitize !44
  %296 = extractvalue { i64, i1 } %295, 1, !nosanitize !44
  br i1 %296, label %297, label %298, !prof !45, !nosanitize !44

297:                                              ; preds = %294
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

298:                                              ; preds = %294
  %299 = extractvalue { i64, i1 } %295, 0, !nosanitize !44
  %300 = tail call i64 @llvm.umin.i64(i64 %299, i64 258)
  %301 = load ptr, ptr %7, align 8, !tbaa !34
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 %292
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %302, i8 0, i64 %300, i1 false)
  %303 = add nuw nsw i64 %300, %292
  br label %324

304:                                              ; preds = %288
  %305 = add nuw nsw i64 %292, 258
  %306 = icmp ult i64 %285, %305
  br i1 %306, label %307, label %327

307:                                              ; preds = %304
  %308 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %286, i64 %285), !nosanitize !44
  %309 = extractvalue { i64, i1 } %308, 1, !nosanitize !44
  br i1 %309, label %310, label %311, !prof !45, !nosanitize !44

310:                                              ; preds = %307
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

311:                                              ; preds = %307
  %312 = sub nuw nsw i64 %305, %285
  %313 = extractvalue { i64, i1 } %308, 0, !nosanitize !44
  %314 = tail call i64 @llvm.umin.i64(i64 %312, i64 %313)
  %315 = load ptr, ptr %7, align 8, !tbaa !34
  %316 = getelementptr inbounds nuw i8, ptr %315, i64 %285
  %317 = and i64 %314, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %316, i8 0, i64 %317, i1 false)
  %318 = load i64, ptr %19, align 8, !tbaa !38
  %319 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %318, i64 %314), !nosanitize !44
  %320 = extractvalue { i64, i1 } %319, 1, !nosanitize !44
  br i1 %320, label %321, label %322, !prof !45, !nosanitize !44

321:                                              ; preds = %311
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

322:                                              ; preds = %311
  %323 = extractvalue { i64, i1 } %319, 0, !nosanitize !44
  br label %324

324:                                              ; preds = %322, %298
  %325 = phi i64 [ %303, %298 ], [ %323, %322 ]
  store i64 %325, ptr %19, align 8, !tbaa !38
  %326 = load i32, ptr %3, align 4, !tbaa !73
  br label %327

327:                                              ; preds = %324, %304, %283
  %328 = phi i32 [ %284, %283 ], [ %284, %304 ], [ %326, %324 ]
  %329 = icmp ult i32 %328, 262
  %330 = and i1 %20, %329
  br i1 %330, label %.loopexit41, label %331

331:                                              ; preds = %327
  %332 = icmp eq i32 %328, 0
  br i1 %332, label %916, label %333

333:                                              ; preds = %331
  %334 = icmp ugt i32 %328, 2
  br i1 %334, label %338, label %335

335:                                              ; preds = %333
  %336 = load i32, ptr %21, align 8, !tbaa !76
  store i32 %336, ptr %22, align 8, !tbaa !75
  %337 = load i32, ptr %8, align 8, !tbaa !81
  store i32 %337, ptr %23, align 4, !tbaa !156
  br label %559

338:                                              ; preds = %333, %35
  %339 = phi i32 [ %328, %333 ], [ %36, %35 ]
  %340 = load i32, ptr %6, align 4, !tbaa !71
  %341 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %340, i32 2), !nosanitize !44
  %342 = extractvalue { i32, i1 } %341, 1, !nosanitize !44
  br i1 %342, label %343, label %344, !prof !45, !nosanitize !44

343:                                              ; preds = %338
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

344:                                              ; preds = %338
  %345 = extractvalue { i32, i1 } %341, 0, !nosanitize !44
  %346 = load ptr, ptr %7, align 8, !tbaa !34
  %347 = load i32, ptr %15, align 8, !tbaa !78
  %348 = load i32, ptr %16, align 8, !tbaa !52
  %349 = shl i32 %347, %348
  %350 = zext i32 %345 to i64
  %351 = getelementptr inbounds nuw i8, ptr %346, i64 %350
  %352 = load i8, ptr %351, align 1, !tbaa !5
  %353 = zext i8 %352 to i32
  %354 = xor i32 %349, %353
  %355 = load i32, ptr %17, align 4, !tbaa !51
  %356 = and i32 %354, %355
  store i32 %356, ptr %15, align 8, !tbaa !78
  %357 = load ptr, ptr %12, align 8, !tbaa !37
  %358 = zext i32 %356 to i64
  %359 = getelementptr inbounds nuw [2 x i8], ptr %357, i64 %358
  %360 = load i16, ptr %359, align 2, !tbaa !60
  %361 = load ptr, ptr %13, align 8, !tbaa !35
  %362 = load i32, ptr %18, align 8, !tbaa !32
  %363 = and i32 %362, %340
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds nuw [2 x i8], ptr %361, i64 %364
  store i16 %360, ptr %365, align 2, !tbaa !60
  %366 = zext i16 %360 to i32
  %367 = trunc i32 %340 to i16
  store i16 %367, ptr %359, align 2, !tbaa !60
  %368 = load i32, ptr %21, align 8, !tbaa !76
  store i32 %368, ptr %22, align 8, !tbaa !75
  %369 = load i32, ptr %8, align 8, !tbaa !81
  store i32 %369, ptr %23, align 4, !tbaa !156
  store i32 2, ptr %21, align 8, !tbaa !76
  %370 = icmp eq i16 %360, 0
  br i1 %370, label %563, label %371

371:                                              ; preds = %344
  %372 = load i32, ptr %24, align 8, !tbaa !64
  %373 = icmp ult i32 %368, %372
  br i1 %373, label %374, label %563

374:                                              ; preds = %371
  %375 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %340, i32 %366), !nosanitize !44
  %376 = extractvalue { i32, i1 } %375, 0, !nosanitize !44
  %377 = extractvalue { i32, i1 } %375, 1, !nosanitize !44
  br i1 %377, label %378, label %379, !prof !45, !nosanitize !44

378:                                              ; preds = %374
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

379:                                              ; preds = %374
  %380 = load i32, ptr %4, align 8, !tbaa !31
  %381 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %380, i32 262), !nosanitize !44
  %382 = extractvalue { i32, i1 } %381, 1, !nosanitize !44
  br i1 %382, label %383, label %384, !prof !45, !nosanitize !44

383:                                              ; preds = %379
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

384:                                              ; preds = %379
  %385 = extractvalue { i32, i1 } %381, 0, !nosanitize !44
  %386 = icmp ugt i32 %376, %385
  br i1 %386, label %563, label %387

387:                                              ; preds = %384
  %388 = zext i32 %340 to i64
  %389 = getelementptr inbounds nuw i8, ptr %346, i64 %388
  %390 = tail call i32 @llvm.usub.sat.i32(i32 %340, i32 %385)
  %391 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %368, i32 -1)
  %392 = extractvalue { i32, i1 } %391, 1, !nosanitize !44
  br i1 %392, label %.loopexit40, label %393, !prof !45, !nosanitize !44

.loopexit40:                                      ; preds = %387, %.split.loop.exit, %425
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

393:                                              ; preds = %387
  %394 = load i32, ptr %25, align 8, !tbaa !68
  %395 = load i32, ptr %26, align 4, !tbaa !70
  %396 = getelementptr inbounds nuw i8, ptr %389, i64 258
  %397 = extractvalue { i32, i1 } %391, 0, !nosanitize !44
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, ptr %389, i64 %398
  %400 = load i8, ptr %399, align 1, !tbaa !5
  %401 = sext i32 %368 to i64
  %402 = getelementptr inbounds i8, ptr %389, i64 %401
  %403 = load i8, ptr %402, align 1, !tbaa !5
  %404 = load i32, ptr %27, align 4, !tbaa !66
  %405 = icmp ult i32 %368, %404
  %406 = lshr i32 %395, 2
  %407 = select i1 %405, i32 %395, i32 %406
  %408 = tail call i32 @llvm.umin.i32(i32 %394, i32 %339)
  %409 = getelementptr i8, ptr %389, i64 -1
  %410 = getelementptr inbounds nuw i8, ptr %389, i64 1
  %411 = ptrtoint ptr %396 to i64
  br label %412

412:                                              ; preds = %539, %393
  %413 = phi i32 [ %369, %393 ], [ %525, %539 ]
  %414 = phi i32 [ %368, %393 ], [ %526, %539 ]
  %415 = phi i32 [ %407, %393 ], [ %540, %539 ]
  %416 = phi i32 [ %366, %393 ], [ %533, %539 ]
  %417 = phi i8 [ %400, %393 ], [ %527, %539 ]
  %418 = phi i8 [ %403, %393 ], [ %528, %539 ]
  %419 = zext nneg i32 %416 to i64
  %420 = getelementptr inbounds nuw i8, ptr %346, i64 %419
  %421 = sext i32 %414 to i64
  %422 = getelementptr inbounds i8, ptr %420, i64 %421
  %423 = load i8, ptr %422, align 1, !tbaa !5
  %424 = icmp eq i8 %423, %418
  br i1 %424, label %425, label %524

425:                                              ; preds = %412
  %426 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %414, i32 -1)
  %427 = extractvalue { i32, i1 } %426, 1, !nosanitize !44
  br i1 %427, label %.loopexit40, label %428, !prof !45, !nosanitize !44

428:                                              ; preds = %425
  %429 = extractvalue { i32, i1 } %426, 0, !nosanitize !44
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i8, ptr %420, i64 %430
  %432 = load i8, ptr %431, align 1, !tbaa !5
  %433 = icmp eq i8 %432, %417
  br i1 %433, label %434, label %524

434:                                              ; preds = %428
  %435 = load i8, ptr %420, align 1, !tbaa !5
  %436 = load i8, ptr %389, align 1, !tbaa !5
  %437 = icmp eq i8 %435, %436
  br i1 %437, label %438, label %524

438:                                              ; preds = %434
  %439 = getelementptr inbounds nuw i8, ptr %420, i64 1
  %440 = load i8, ptr %439, align 1, !tbaa !5
  %441 = load i8, ptr %410, align 1, !tbaa !5
  %442 = icmp eq i8 %440, %441
  br i1 %442, label %443, label %524

443:                                              ; preds = %438
  %444 = getelementptr inbounds nuw i8, ptr %420, i64 2
  br label %445

445:                                              ; preds = %490, %443
  %446 = phi ptr [ %444, %443 ], [ %494, %490 ]
  %447 = phi i64 [ 2, %443 ], [ %491, %490 ]
  %448 = getelementptr inbounds nuw i8, ptr %389, i64 %447
  %449 = getelementptr inbounds nuw i8, ptr %448, i64 1
  %450 = load i8, ptr %449, align 1, !tbaa !5
  %451 = getelementptr inbounds nuw i8, ptr %446, i64 1
  %452 = load i8, ptr %451, align 1, !tbaa !5
  %453 = icmp eq i8 %450, %452
  br i1 %453, label %454, label %.split.loop.exit.split.loop.exit

454:                                              ; preds = %445
  %455 = getelementptr inbounds nuw i8, ptr %448, i64 2
  %456 = load i8, ptr %455, align 1, !tbaa !5
  %457 = getelementptr inbounds nuw i8, ptr %446, i64 2
  %458 = load i8, ptr %457, align 1, !tbaa !5
  %459 = icmp eq i8 %456, %458
  br i1 %459, label %460, label %.split.loop.exit.split.loop.exit154

460:                                              ; preds = %454
  %461 = getelementptr inbounds nuw i8, ptr %448, i64 3
  %462 = load i8, ptr %461, align 1, !tbaa !5
  %463 = getelementptr inbounds nuw i8, ptr %446, i64 3
  %464 = load i8, ptr %463, align 1, !tbaa !5
  %465 = icmp eq i8 %462, %464
  br i1 %465, label %466, label %.split.loop.exit.split.loop.exit156

466:                                              ; preds = %460
  %467 = getelementptr inbounds nuw i8, ptr %448, i64 4
  %468 = load i8, ptr %467, align 1, !tbaa !5
  %469 = getelementptr inbounds nuw i8, ptr %446, i64 4
  %470 = load i8, ptr %469, align 1, !tbaa !5
  %471 = icmp eq i8 %468, %470
  br i1 %471, label %472, label %.split.loop.exit.split.loop.exit158

472:                                              ; preds = %466
  %473 = getelementptr inbounds nuw i8, ptr %448, i64 5
  %474 = load i8, ptr %473, align 1, !tbaa !5
  %475 = getelementptr inbounds nuw i8, ptr %446, i64 5
  %476 = load i8, ptr %475, align 1, !tbaa !5
  %477 = icmp eq i8 %474, %476
  br i1 %477, label %478, label %.split.loop.exit.split.loop.exit160

478:                                              ; preds = %472
  %479 = getelementptr inbounds nuw i8, ptr %448, i64 6
  %480 = load i8, ptr %479, align 1, !tbaa !5
  %481 = getelementptr inbounds nuw i8, ptr %446, i64 6
  %482 = load i8, ptr %481, align 1, !tbaa !5
  %483 = icmp eq i8 %480, %482
  br i1 %483, label %484, label %.split.loop.exit.split.loop.exit162

484:                                              ; preds = %478
  %485 = getelementptr inbounds nuw i8, ptr %448, i64 7
  %486 = load i8, ptr %485, align 1, !tbaa !5
  %487 = getelementptr inbounds nuw i8, ptr %446, i64 7
  %488 = load i8, ptr %487, align 1, !tbaa !5
  %489 = icmp eq i8 %486, %488
  br i1 %489, label %490, label %.split.loop.exit.split.loop.exit164

490:                                              ; preds = %484
  %491 = add nuw nsw i64 %447, 8
  %492 = getelementptr inbounds nuw i8, ptr %389, i64 %491
  %493 = load i8, ptr %492, align 1, !tbaa !5
  %494 = getelementptr inbounds nuw i8, ptr %446, i64 8
  %495 = load i8, ptr %494, align 1, !tbaa !5
  %496 = icmp eq i8 %493, %495
  %497 = icmp samesign ult i64 %447, 250
  %498 = select i1 %496, i1 %497, i1 false
  br i1 %498, label %445, label %.split.loop.exit.split.loop.exit166, !llvm.loop !149

.split.loop.exit.split.loop.exit:                 ; preds = %445
  %499 = getelementptr inbounds nuw i8, ptr %448, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit154:              ; preds = %454
  %500 = getelementptr inbounds nuw i8, ptr %448, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit156:              ; preds = %460
  %501 = getelementptr inbounds nuw i8, ptr %448, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit158:              ; preds = %466
  %502 = getelementptr inbounds nuw i8, ptr %448, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit160:              ; preds = %472
  %503 = getelementptr inbounds nuw i8, ptr %448, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit162:              ; preds = %478
  %504 = getelementptr inbounds nuw i8, ptr %448, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit164:              ; preds = %484
  %505 = getelementptr inbounds nuw i8, ptr %448, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit166:              ; preds = %490
  %506 = getelementptr inbounds nuw i8, ptr %389, i64 %491
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit166, %.split.loop.exit.split.loop.exit164, %.split.loop.exit.split.loop.exit162, %.split.loop.exit.split.loop.exit160, %.split.loop.exit.split.loop.exit158, %.split.loop.exit.split.loop.exit156, %.split.loop.exit.split.loop.exit154, %.split.loop.exit.split.loop.exit
  %507 = phi ptr [ %499, %.split.loop.exit.split.loop.exit ], [ %500, %.split.loop.exit.split.loop.exit154 ], [ %501, %.split.loop.exit.split.loop.exit156 ], [ %502, %.split.loop.exit.split.loop.exit158 ], [ %503, %.split.loop.exit.split.loop.exit160 ], [ %504, %.split.loop.exit.split.loop.exit162 ], [ %505, %.split.loop.exit.split.loop.exit164 ], [ %506, %.split.loop.exit.split.loop.exit166 ]
  %508 = ptrtoint ptr %507 to i64
  %509 = sub i64 %411, %508
  %510 = trunc i64 %509 to i32
  %511 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %510), !nosanitize !44
  %512 = extractvalue { i32, i1 } %511, 0, !nosanitize !44
  %513 = extractvalue { i32, i1 } %511, 1, !nosanitize !44
  br i1 %513, label %.loopexit40, label %514, !prof !45, !nosanitize !44

514:                                              ; preds = %.split.loop.exit
  %515 = icmp sgt i32 %512, %414
  br i1 %515, label %516, label %524

516:                                              ; preds = %514
  store i32 %416, ptr %8, align 8, !tbaa !81
  %517 = icmp slt i32 %512, %408
  br i1 %517, label %518, label %542

518:                                              ; preds = %516
  %519 = sext i32 %512 to i64
  %520 = getelementptr i8, ptr %409, i64 %519
  %521 = load i8, ptr %520, align 1, !tbaa !5
  %522 = getelementptr inbounds i8, ptr %389, i64 %519
  %523 = load i8, ptr %522, align 1, !tbaa !5
  br label %524

524:                                              ; preds = %518, %514, %438, %434, %428, %412
  %525 = phi i32 [ %413, %412 ], [ %413, %428 ], [ %413, %434 ], [ %413, %438 ], [ %416, %518 ], [ %413, %514 ]
  %526 = phi i32 [ %414, %412 ], [ %414, %428 ], [ %414, %434 ], [ %414, %438 ], [ %512, %518 ], [ %414, %514 ]
  %527 = phi i8 [ %417, %412 ], [ %417, %428 ], [ %417, %434 ], [ %417, %438 ], [ %521, %518 ], [ %417, %514 ]
  %528 = phi i8 [ %418, %412 ], [ %418, %428 ], [ %418, %434 ], [ %418, %438 ], [ %523, %518 ], [ %418, %514 ]
  %529 = and i32 %416, %362
  %530 = zext nneg i32 %529 to i64
  %531 = getelementptr inbounds nuw [2 x i8], ptr %361, i64 %530
  %532 = load i16, ptr %531, align 2, !tbaa !60
  %533 = zext i16 %532 to i32
  %534 = icmp ult i32 %390, %533
  br i1 %534, label %535, label %542

535:                                              ; preds = %524
  %536 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %415, i32 1), !nosanitize !44
  %537 = extractvalue { i32, i1 } %536, 1, !nosanitize !44
  br i1 %537, label %538, label %539, !prof !45, !nosanitize !44

538:                                              ; preds = %535
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

539:                                              ; preds = %535
  %540 = extractvalue { i32, i1 } %536, 0, !nosanitize !44
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %412, !llvm.loop !150

542:                                              ; preds = %539, %524, %516
  %543 = phi i32 [ %525, %539 ], [ %525, %524 ], [ %416, %516 ]
  %544 = phi i32 [ %526, %539 ], [ %526, %524 ], [ %512, %516 ]
  %545 = tail call i32 @llvm.umin.i32(i32 %544, i32 %339)
  store i32 %545, ptr %21, align 8, !tbaa !76
  %546 = icmp ult i32 %545, 6
  br i1 %546, label %547, label %563

547:                                              ; preds = %542
  %548 = load i32, ptr %28, align 8, !tbaa !48
  %549 = icmp eq i32 %548, 1
  br i1 %549, label %559, label %550

550:                                              ; preds = %547
  %551 = icmp eq i32 %545, 3
  br i1 %551, label %552, label %563

552:                                              ; preds = %550
  %553 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %340, i32 %543), !nosanitize !44
  %554 = extractvalue { i32, i1 } %553, 1, !nosanitize !44
  br i1 %554, label %555, label %556, !prof !45, !nosanitize !44

555:                                              ; preds = %552
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

556:                                              ; preds = %552
  %557 = extractvalue { i32, i1 } %553, 0, !nosanitize !44
  %558 = icmp ugt i32 %557, 4096
  br i1 %558, label %559, label %563

559:                                              ; preds = %556, %547, %335
  %560 = phi i32 [ %337, %335 ], [ %369, %556 ], [ %369, %547 ]
  %561 = phi i32 [ %336, %335 ], [ %368, %556 ], [ %368, %547 ]
  %562 = phi i32 [ %328, %335 ], [ %339, %556 ], [ %339, %547 ]
  store i32 2, ptr %21, align 8, !tbaa !76
  br label %563

563:                                              ; preds = %559, %556, %550, %542, %384, %371, %344
  %564 = phi i32 [ %545, %542 ], [ %545, %550 ], [ 3, %556 ], [ 2, %384 ], [ 2, %371 ], [ 2, %344 ], [ 2, %559 ]
  %565 = phi i32 [ %369, %542 ], [ %369, %550 ], [ %369, %556 ], [ %369, %384 ], [ %369, %371 ], [ %369, %344 ], [ %560, %559 ]
  %566 = phi i32 [ %368, %542 ], [ %368, %550 ], [ %368, %556 ], [ %368, %384 ], [ %368, %371 ], [ %368, %344 ], [ %561, %559 ]
  %567 = phi i32 [ %339, %542 ], [ %339, %550 ], [ %339, %556 ], [ %339, %384 ], [ %339, %371 ], [ %339, %344 ], [ %562, %559 ]
  %568 = icmp ult i32 %566, 3
  %569 = icmp ugt i32 %564, %566
  %570 = or i1 %568, %569
  br i1 %570, label %779, label %571

571:                                              ; preds = %563
  %572 = load i32, ptr %6, align 4, !tbaa !71
  %573 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %572, i32 %567), !nosanitize !44
  %574 = extractvalue { i32, i1 } %573, 1, !nosanitize !44
  br i1 %574, label %575, label %576, !prof !45, !nosanitize !44

575:                                              ; preds = %571
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

576:                                              ; preds = %571
  %577 = extractvalue { i32, i1 } %573, 0, !nosanitize !44
  %578 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %577, i32 3), !nosanitize !44
  %579 = extractvalue { i32, i1 } %578, 0, !nosanitize !44
  %580 = extractvalue { i32, i1 } %578, 1, !nosanitize !44
  br i1 %580, label %581, label %582, !prof !45, !nosanitize !44

581:                                              ; preds = %576
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

582:                                              ; preds = %576
  %583 = trunc i32 %566 to i8
  %584 = add i8 %583, -3
  %585 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %572, i32 1), !nosanitize !44
  %586 = extractvalue { i32, i1 } %585, 1, !nosanitize !44
  br i1 %586, label %587, label %588, !prof !45, !nosanitize !44

587:                                              ; preds = %582
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

588:                                              ; preds = %582
  %589 = extractvalue { i32, i1 } %585, 0, !nosanitize !44
  %590 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %589, i32 %565), !nosanitize !44
  %591 = extractvalue { i32, i1 } %590, 1, !nosanitize !44
  br i1 %591, label %592, label %593, !prof !45, !nosanitize !44

592:                                              ; preds = %588
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

593:                                              ; preds = %588
  %594 = extractvalue { i32, i1 } %590, 0, !nosanitize !44
  %595 = trunc i32 %594 to i16
  %596 = load i32, ptr %30, align 4, !tbaa !136
  %597 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %596, i32 1), !nosanitize !44
  %598 = extractvalue { i32, i1 } %597, 1, !nosanitize !44
  br i1 %598, label %599, label %600, !prof !45, !nosanitize !44

599:                                              ; preds = %593
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

600:                                              ; preds = %593
  %601 = extractvalue { i32, i1 } %597, 0, !nosanitize !44
  %602 = load ptr, ptr %29, align 8, !tbaa !43
  %603 = trunc i32 %594 to i8
  store i32 %601, ptr %30, align 4, !tbaa !136
  %604 = zext i32 %596 to i64
  %605 = getelementptr inbounds nuw i8, ptr %602, i64 %604
  store i8 %603, ptr %605, align 1, !tbaa !5
  %606 = load i32, ptr %30, align 4, !tbaa !136
  %607 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %606, i32 1), !nosanitize !44
  %608 = extractvalue { i32, i1 } %607, 1, !nosanitize !44
  br i1 %608, label %609, label %610, !prof !45, !nosanitize !44

609:                                              ; preds = %600
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

610:                                              ; preds = %600
  %611 = extractvalue { i32, i1 } %607, 0, !nosanitize !44
  %612 = load ptr, ptr %29, align 8, !tbaa !43
  %613 = lshr i32 %594, 8
  %614 = trunc i32 %613 to i8
  store i32 %611, ptr %30, align 4, !tbaa !136
  %615 = zext i32 %606 to i64
  %616 = getelementptr inbounds nuw i8, ptr %612, i64 %615
  store i8 %614, ptr %616, align 1, !tbaa !5
  %617 = load i32, ptr %30, align 4, !tbaa !136
  %618 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %617, i32 1), !nosanitize !44
  %619 = extractvalue { i32, i1 } %618, 1, !nosanitize !44
  br i1 %619, label %620, label %621, !prof !45, !nosanitize !44

620:                                              ; preds = %610
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

621:                                              ; preds = %610
  %622 = extractvalue { i32, i1 } %618, 0, !nosanitize !44
  %623 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %622, ptr %30, align 4, !tbaa !136
  %624 = zext i32 %617 to i64
  %625 = getelementptr inbounds nuw i8, ptr %623, i64 %624
  store i8 %584, ptr %625, align 1, !tbaa !5
  %626 = add i16 %595, -1
  %627 = zext i8 %584 to i64
  %628 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %627
  %629 = load i8, ptr %628, align 1, !tbaa !5
  %630 = zext i8 %629 to i64
  %631 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %630
  %632 = getelementptr inbounds nuw i8, ptr %631, i64 1028
  %633 = load i16, ptr %632, align 4, !tbaa !5
  %634 = add i16 %633, 1
  store i16 %634, ptr %632, align 4, !tbaa !5
  %635 = icmp ult i16 %626, 256
  %636 = lshr i16 %626, 7
  %637 = add nuw nsw i16 %636, 256
  %638 = select i1 %635, i16 %626, i16 %637
  %639 = zext i16 %638 to i64
  %640 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %639
  %641 = load i8, ptr %640, align 1, !tbaa !5
  %642 = zext i8 %641 to i64
  %643 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %642
  %644 = load i16, ptr %643, align 4, !tbaa !5
  %645 = add i16 %644, 1
  store i16 %645, ptr %643, align 4, !tbaa !5
  %646 = load i32, ptr %30, align 4, !tbaa !136
  %647 = load i32, ptr %33, align 8, !tbaa !46
  %648 = icmp eq i32 %646, %647
  %649 = load i32, ptr %22, align 8, !tbaa !75
  %650 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %649, i32 1), !nosanitize !44
  %651 = extractvalue { i32, i1 } %650, 1, !nosanitize !44
  br i1 %651, label %652, label %653, !prof !45, !nosanitize !44

652:                                              ; preds = %621
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

653:                                              ; preds = %621
  %654 = extractvalue { i32, i1 } %650, 0, !nosanitize !44
  %655 = load i32, ptr %3, align 4, !tbaa !73
  %656 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %655, i32 %654), !nosanitize !44
  %657 = extractvalue { i32, i1 } %656, 1, !nosanitize !44
  br i1 %657, label %658, label %659, !prof !45, !nosanitize !44

658:                                              ; preds = %653
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

659:                                              ; preds = %653
  %660 = extractvalue { i32, i1 } %656, 0, !nosanitize !44
  store i32 %660, ptr %3, align 4, !tbaa !73
  %661 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %649, i32 2), !nosanitize !44
  %662 = extractvalue { i32, i1 } %661, 1, !nosanitize !44
  br i1 %662, label %663, label %664, !prof !45, !nosanitize !44

663:                                              ; preds = %659
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

664:                                              ; preds = %659
  %665 = extractvalue { i32, i1 } %661, 0, !nosanitize !44
  store i32 %665, ptr %22, align 8, !tbaa !75
  %666 = load i32, ptr %6, align 4, !tbaa !71
  br label %667

667:                                              ; preds = %706, %664
  %668 = phi i32 [ %707, %706 ], [ %665, %664 ]
  %669 = phi i32 [ %671, %706 ], [ %666, %664 ]
  %670 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %669, i32 1), !nosanitize !44
  %671 = extractvalue { i32, i1 } %670, 0, !nosanitize !44
  %672 = extractvalue { i32, i1 } %670, 1, !nosanitize !44
  br i1 %672, label %673, label %674, !prof !45, !nosanitize !44

673:                                              ; preds = %667
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

674:                                              ; preds = %667
  store i32 %671, ptr %6, align 4, !tbaa !71
  %675 = icmp ugt i32 %671, %579
  br i1 %675, label %703, label %676

676:                                              ; preds = %674
  %677 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %671, i32 2), !nosanitize !44
  %678 = extractvalue { i32, i1 } %677, 1, !nosanitize !44
  br i1 %678, label %679, label %680, !prof !45, !nosanitize !44

679:                                              ; preds = %676
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

680:                                              ; preds = %676
  %681 = extractvalue { i32, i1 } %677, 0, !nosanitize !44
  %682 = load ptr, ptr %7, align 8, !tbaa !34
  %683 = load i32, ptr %15, align 8, !tbaa !78
  %684 = load i32, ptr %16, align 8, !tbaa !52
  %685 = shl i32 %683, %684
  %686 = zext i32 %681 to i64
  %687 = getelementptr inbounds nuw i8, ptr %682, i64 %686
  %688 = load i8, ptr %687, align 1, !tbaa !5
  %689 = zext i8 %688 to i32
  %690 = xor i32 %685, %689
  %691 = load i32, ptr %17, align 4, !tbaa !51
  %692 = and i32 %690, %691
  store i32 %692, ptr %15, align 8, !tbaa !78
  %693 = load ptr, ptr %12, align 8, !tbaa !37
  %694 = zext i32 %692 to i64
  %695 = getelementptr inbounds nuw [2 x i8], ptr %693, i64 %694
  %696 = load i16, ptr %695, align 2, !tbaa !60
  %697 = load ptr, ptr %13, align 8, !tbaa !35
  %698 = load i32, ptr %18, align 8, !tbaa !32
  %699 = and i32 %698, %671
  %700 = zext i32 %699 to i64
  %701 = getelementptr inbounds nuw [2 x i8], ptr %697, i64 %700
  store i16 %696, ptr %701, align 2, !tbaa !60
  %702 = trunc i32 %671 to i16
  store i16 %702, ptr %695, align 2, !tbaa !60
  br label %703

703:                                              ; preds = %680, %674
  %704 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %668, i32 1), !nosanitize !44
  %705 = extractvalue { i32, i1 } %704, 1, !nosanitize !44
  br i1 %705, label %.loopexit39, label %706, !prof !45, !nosanitize !44

.loopexit39:                                      ; preds = %722, %703
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

706:                                              ; preds = %703
  %707 = extractvalue { i32, i1 } %704, 0, !nosanitize !44
  store i32 %707, ptr %22, align 8, !tbaa !75
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %709, label %667, !llvm.loop !157

709:                                              ; preds = %706
  store i32 0, ptr %34, align 8, !tbaa !77
  store i32 2, ptr %21, align 8, !tbaa !76
  %710 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %671, i32 1), !nosanitize !44
  %711 = extractvalue { i32, i1 } %710, 1, !nosanitize !44
  br i1 %711, label %712, label %713, !prof !45, !nosanitize !44

712:                                              ; preds = %709
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

713:                                              ; preds = %709
  %714 = extractvalue { i32, i1 } %710, 0, !nosanitize !44
  store i32 %714, ptr %6, align 4, !tbaa !71
  br i1 %648, label %715, label %.backedge

715:                                              ; preds = %713
  %716 = load i64, ptr %9, align 8, !tbaa !72
  %717 = icmp sgt i64 %716, -1
  br i1 %717, label %718, label %722

718:                                              ; preds = %715
  %719 = load ptr, ptr %7, align 8, !tbaa !34
  %720 = and i64 %716, 4294967295
  %721 = getelementptr inbounds nuw i8, ptr %719, i64 %720
  br label %722

722:                                              ; preds = %718, %715
  %723 = phi ptr [ %721, %718 ], [ null, %715 ]
  %724 = zext i32 %714 to i64
  %725 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %724, i64 %716), !nosanitize !44
  %726 = extractvalue { i64, i1 } %725, 1, !nosanitize !44
  br i1 %726, label %.loopexit39, label %727, !prof !45, !nosanitize !44

727:                                              ; preds = %722
  %728 = extractvalue { i64, i1 } %725, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %723, i64 noundef %728, i32 noundef 0) #11
  %729 = load i32, ptr %6, align 4, !tbaa !71
  %730 = zext i32 %729 to i64
  store i64 %730, ptr %9, align 8, !tbaa !72
  %731 = load ptr, ptr %0, align 8, !tbaa !19
  %732 = getelementptr inbounds nuw i8, ptr %731, i64 56
  %733 = load ptr, ptr %732, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %733) #11
  %734 = getelementptr inbounds nuw i8, ptr %733, i64 40
  %735 = load i64, ptr %734, align 8, !tbaa !55
  %736 = getelementptr inbounds nuw i8, ptr %731, i64 32
  %737 = load i32, ptr %736, align 8, !tbaa !105
  %738 = zext i32 %737 to i64
  %739 = tail call i64 @llvm.umin.i64(i64 %735, i64 %738)
  %740 = trunc nuw i64 %739 to i32
  %741 = icmp eq i64 %739, 0
  br i1 %741, label %774, label %742

742:                                              ; preds = %727
  %743 = getelementptr inbounds nuw i8, ptr %731, i64 24
  %744 = load ptr, ptr %743, align 8, !tbaa !104
  %745 = getelementptr inbounds nuw i8, ptr %733, i64 32
  %746 = load ptr, ptr %745, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %744, ptr align 1 %746, i64 %739, i1 false)
  %747 = load ptr, ptr %743, align 8, !tbaa !104
  %748 = getelementptr inbounds nuw i8, ptr %747, i64 %739
  store ptr %748, ptr %743, align 8, !tbaa !104
  %749 = load ptr, ptr %745, align 8, !tbaa !56
  %750 = getelementptr inbounds nuw i8, ptr %749, i64 %739
  store ptr %750, ptr %745, align 8, !tbaa !56
  %751 = getelementptr inbounds nuw i8, ptr %731, i64 40
  %752 = load i64, ptr %751, align 8, !tbaa !106
  %753 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %752, i64 %739), !nosanitize !44
  %754 = extractvalue { i64, i1 } %753, 1, !nosanitize !44
  br i1 %754, label %755, label %756, !prof !45, !nosanitize !44

755:                                              ; preds = %742
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

756:                                              ; preds = %742
  %757 = extractvalue { i64, i1 } %753, 0, !nosanitize !44
  store i64 %757, ptr %751, align 8, !tbaa !106
  %758 = load i32, ptr %736, align 8, !tbaa !105
  %759 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %758, i32 %740), !nosanitize !44
  %760 = extractvalue { i32, i1 } %759, 1, !nosanitize !44
  br i1 %760, label %761, label %762, !prof !45, !nosanitize !44

761:                                              ; preds = %756
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

762:                                              ; preds = %756
  %763 = extractvalue { i32, i1 } %759, 0, !nosanitize !44
  store i32 %763, ptr %736, align 8, !tbaa !105
  %764 = load i64, ptr %734, align 8, !tbaa !55
  %765 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %764, i64 %739), !nosanitize !44
  %766 = extractvalue { i64, i1 } %765, 1, !nosanitize !44
  br i1 %766, label %767, label %768, !prof !45, !nosanitize !44

767:                                              ; preds = %762
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

768:                                              ; preds = %762
  %769 = extractvalue { i64, i1 } %765, 0, !nosanitize !44
  store i64 %769, ptr %734, align 8, !tbaa !55
  %770 = icmp eq i64 %769, 0
  br i1 %770, label %771, label %774

771:                                              ; preds = %768
  %772 = getelementptr inbounds nuw i8, ptr %733, i64 16
  %773 = load ptr, ptr %772, align 8, !tbaa !40
  store ptr %773, ptr %745, align 8, !tbaa !56
  br label %774

774:                                              ; preds = %771, %768, %727
  %775 = load ptr, ptr %0, align 8, !tbaa !19
  %776 = getelementptr inbounds nuw i8, ptr %775, i64 32
  %777 = load i32, ptr %776, align 8, !tbaa !105
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %.loopexit41, label %.backedge

779:                                              ; preds = %563
  %780 = load i32, ptr %34, align 8, !tbaa !77
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %904, label %782

782:                                              ; preds = %779
  %783 = load i32, ptr %6, align 4, !tbaa !71
  %784 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %783, i32 1), !nosanitize !44
  %785 = extractvalue { i32, i1 } %784, 1, !nosanitize !44
  br i1 %785, label %786, label %787, !prof !45, !nosanitize !44

786:                                              ; preds = %834, %782
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

787:                                              ; preds = %782
  %788 = extractvalue { i32, i1 } %784, 0, !nosanitize !44
  %789 = load ptr, ptr %7, align 8, !tbaa !34
  %790 = zext i32 %788 to i64
  %791 = getelementptr inbounds nuw i8, ptr %789, i64 %790
  %792 = load i8, ptr %791, align 1, !tbaa !5
  %793 = load i32, ptr %30, align 4, !tbaa !136
  %794 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %793, i32 1), !nosanitize !44
  %795 = extractvalue { i32, i1 } %794, 1, !nosanitize !44
  br i1 %795, label %796, label %797, !prof !45, !nosanitize !44

796:                                              ; preds = %787
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

797:                                              ; preds = %787
  %798 = extractvalue { i32, i1 } %794, 0, !nosanitize !44
  %799 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %798, ptr %30, align 4, !tbaa !136
  %800 = zext i32 %793 to i64
  %801 = getelementptr inbounds nuw i8, ptr %799, i64 %800
  store i8 0, ptr %801, align 1, !tbaa !5
  %802 = load i32, ptr %30, align 4, !tbaa !136
  %803 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %802, i32 1), !nosanitize !44
  %804 = extractvalue { i32, i1 } %803, 1, !nosanitize !44
  br i1 %804, label %805, label %806, !prof !45, !nosanitize !44

805:                                              ; preds = %797
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

806:                                              ; preds = %797
  %807 = extractvalue { i32, i1 } %803, 0, !nosanitize !44
  %808 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %807, ptr %30, align 4, !tbaa !136
  %809 = zext i32 %802 to i64
  %810 = getelementptr inbounds nuw i8, ptr %808, i64 %809
  store i8 0, ptr %810, align 1, !tbaa !5
  %811 = load i32, ptr %30, align 4, !tbaa !136
  %812 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %811, i32 1), !nosanitize !44
  %813 = extractvalue { i32, i1 } %812, 1, !nosanitize !44
  br i1 %813, label %814, label %815, !prof !45, !nosanitize !44

814:                                              ; preds = %806
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

815:                                              ; preds = %806
  %816 = extractvalue { i32, i1 } %812, 0, !nosanitize !44
  %817 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %816, ptr %30, align 4, !tbaa !136
  %818 = zext i32 %811 to i64
  %819 = getelementptr inbounds nuw i8, ptr %817, i64 %818
  store i8 %792, ptr %819, align 1, !tbaa !5
  %820 = zext i8 %792 to i64
  %821 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %820
  %822 = load i16, ptr %821, align 4, !tbaa !5
  %823 = add i16 %822, 1
  store i16 %823, ptr %821, align 4, !tbaa !5
  %824 = load i32, ptr %30, align 4, !tbaa !136
  %825 = load i32, ptr %33, align 8, !tbaa !46
  %826 = icmp eq i32 %824, %825
  br i1 %826, label %827, label %887

827:                                              ; preds = %815
  %828 = load i64, ptr %9, align 8, !tbaa !72
  %829 = icmp sgt i64 %828, -1
  br i1 %829, label %830, label %834

830:                                              ; preds = %827
  %831 = load ptr, ptr %7, align 8, !tbaa !34
  %832 = and i64 %828, 4294967295
  %833 = getelementptr inbounds nuw i8, ptr %831, i64 %832
  br label %834

834:                                              ; preds = %830, %827
  %835 = phi ptr [ %833, %830 ], [ null, %827 ]
  %836 = load i32, ptr %6, align 4, !tbaa !71
  %837 = zext i32 %836 to i64
  %838 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %837, i64 %828), !nosanitize !44
  %839 = extractvalue { i64, i1 } %838, 1, !nosanitize !44
  br i1 %839, label %786, label %840, !prof !45, !nosanitize !44

840:                                              ; preds = %834
  %841 = extractvalue { i64, i1 } %838, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %835, i64 noundef %841, i32 noundef 0) #11
  %842 = load i32, ptr %6, align 4, !tbaa !71
  %843 = zext i32 %842 to i64
  store i64 %843, ptr %9, align 8, !tbaa !72
  %844 = load ptr, ptr %0, align 8, !tbaa !19
  %845 = getelementptr inbounds nuw i8, ptr %844, i64 56
  %846 = load ptr, ptr %845, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %846) #11
  %847 = getelementptr inbounds nuw i8, ptr %846, i64 40
  %848 = load i64, ptr %847, align 8, !tbaa !55
  %849 = getelementptr inbounds nuw i8, ptr %844, i64 32
  %850 = load i32, ptr %849, align 8, !tbaa !105
  %851 = zext i32 %850 to i64
  %852 = tail call i64 @llvm.umin.i64(i64 %848, i64 %851)
  %853 = trunc nuw i64 %852 to i32
  %854 = icmp eq i64 %852, 0
  br i1 %854, label %887, label %855

855:                                              ; preds = %840
  %856 = getelementptr inbounds nuw i8, ptr %844, i64 24
  %857 = load ptr, ptr %856, align 8, !tbaa !104
  %858 = getelementptr inbounds nuw i8, ptr %846, i64 32
  %859 = load ptr, ptr %858, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %857, ptr align 1 %859, i64 %852, i1 false)
  %860 = load ptr, ptr %856, align 8, !tbaa !104
  %861 = getelementptr inbounds nuw i8, ptr %860, i64 %852
  store ptr %861, ptr %856, align 8, !tbaa !104
  %862 = load ptr, ptr %858, align 8, !tbaa !56
  %863 = getelementptr inbounds nuw i8, ptr %862, i64 %852
  store ptr %863, ptr %858, align 8, !tbaa !56
  %864 = getelementptr inbounds nuw i8, ptr %844, i64 40
  %865 = load i64, ptr %864, align 8, !tbaa !106
  %866 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %865, i64 %852), !nosanitize !44
  %867 = extractvalue { i64, i1 } %866, 1, !nosanitize !44
  br i1 %867, label %868, label %869, !prof !45, !nosanitize !44

868:                                              ; preds = %855
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

869:                                              ; preds = %855
  %870 = extractvalue { i64, i1 } %866, 0, !nosanitize !44
  store i64 %870, ptr %864, align 8, !tbaa !106
  %871 = load i32, ptr %849, align 8, !tbaa !105
  %872 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %871, i32 %853), !nosanitize !44
  %873 = extractvalue { i32, i1 } %872, 1, !nosanitize !44
  br i1 %873, label %874, label %875, !prof !45, !nosanitize !44

874:                                              ; preds = %869
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

875:                                              ; preds = %869
  %876 = extractvalue { i32, i1 } %872, 0, !nosanitize !44
  store i32 %876, ptr %849, align 8, !tbaa !105
  %877 = load i64, ptr %847, align 8, !tbaa !55
  %878 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %877, i64 %852), !nosanitize !44
  %879 = extractvalue { i64, i1 } %878, 1, !nosanitize !44
  br i1 %879, label %880, label %881, !prof !45, !nosanitize !44

880:                                              ; preds = %875
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

881:                                              ; preds = %875
  %882 = extractvalue { i64, i1 } %878, 0, !nosanitize !44
  store i64 %882, ptr %847, align 8, !tbaa !55
  %883 = icmp eq i64 %882, 0
  br i1 %883, label %884, label %887

884:                                              ; preds = %881
  %885 = getelementptr inbounds nuw i8, ptr %846, i64 16
  %886 = load ptr, ptr %885, align 8, !tbaa !40
  store ptr %886, ptr %858, align 8, !tbaa !56
  br label %887

887:                                              ; preds = %884, %881, %840, %815
  %888 = load i32, ptr %6, align 4, !tbaa !71
  %889 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %888, i32 1), !nosanitize !44
  %890 = extractvalue { i32, i1 } %889, 1, !nosanitize !44
  br i1 %890, label %891, label %892, !prof !45, !nosanitize !44

891:                                              ; preds = %887
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

892:                                              ; preds = %887
  %893 = extractvalue { i32, i1 } %889, 0, !nosanitize !44
  store i32 %893, ptr %6, align 4, !tbaa !71
  %894 = load i32, ptr %3, align 4, !tbaa !73
  %895 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %894, i32 1), !nosanitize !44
  %896 = extractvalue { i32, i1 } %895, 1, !nosanitize !44
  br i1 %896, label %897, label %898, !prof !45, !nosanitize !44

897:                                              ; preds = %892
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

898:                                              ; preds = %892
  %899 = extractvalue { i32, i1 } %895, 0, !nosanitize !44
  store i32 %899, ptr %3, align 4, !tbaa !73
  %900 = load ptr, ptr %0, align 8, !tbaa !19
  %901 = getelementptr inbounds nuw i8, ptr %900, i64 32
  %902 = load i32, ptr %901, align 8, !tbaa !105
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %.loopexit41, label %.backedge

904:                                              ; preds = %779
  store i32 1, ptr %34, align 8, !tbaa !77
  %905 = load i32, ptr %6, align 4, !tbaa !71
  %906 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %905, i32 1), !nosanitize !44
  %907 = extractvalue { i32, i1 } %906, 1, !nosanitize !44
  br i1 %907, label %908, label %909, !prof !45, !nosanitize !44

908:                                              ; preds = %904
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

909:                                              ; preds = %904
  %910 = extractvalue { i32, i1 } %906, 0, !nosanitize !44
  store i32 %910, ptr %6, align 4, !tbaa !71
  %911 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %567, i32 1), !nosanitize !44
  %912 = extractvalue { i32, i1 } %911, 1, !nosanitize !44
  br i1 %912, label %913, label %914, !prof !45, !nosanitize !44

913:                                              ; preds = %909
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

914:                                              ; preds = %909
  %915 = extractvalue { i32, i1 } %911, 0, !nosanitize !44
  store i32 %915, ptr %3, align 4, !tbaa !73
  br label %.backedge

.backedge:                                        ; preds = %914, %898, %774, %713
  br label %35

916:                                              ; preds = %331
  %917 = load i32, ptr %34, align 8, !tbaa !77
  %918 = icmp eq i32 %917, 0
  %919 = load i32, ptr %6, align 4, !tbaa !71
  br i1 %918, label %962, label %920

920:                                              ; preds = %916
  %921 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %919, i32 1), !nosanitize !44
  %922 = extractvalue { i32, i1 } %921, 1, !nosanitize !44
  br i1 %922, label %923, label %924, !prof !45, !nosanitize !44

923:                                              ; preds = %1041, %973, %920
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

924:                                              ; preds = %920
  %925 = extractvalue { i32, i1 } %921, 0, !nosanitize !44
  %926 = load ptr, ptr %7, align 8, !tbaa !34
  %927 = zext i32 %925 to i64
  %928 = getelementptr inbounds nuw i8, ptr %926, i64 %927
  %929 = load i8, ptr %928, align 1, !tbaa !5
  %930 = load i32, ptr %30, align 4, !tbaa !136
  %931 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %930, i32 1), !nosanitize !44
  %932 = extractvalue { i32, i1 } %931, 1, !nosanitize !44
  br i1 %932, label %933, label %934, !prof !45, !nosanitize !44

933:                                              ; preds = %924
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

934:                                              ; preds = %924
  %935 = extractvalue { i32, i1 } %931, 0, !nosanitize !44
  %936 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %935, ptr %30, align 4, !tbaa !136
  %937 = zext i32 %930 to i64
  %938 = getelementptr inbounds nuw i8, ptr %936, i64 %937
  store i8 0, ptr %938, align 1, !tbaa !5
  %939 = load i32, ptr %30, align 4, !tbaa !136
  %940 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %939, i32 1), !nosanitize !44
  %941 = extractvalue { i32, i1 } %940, 1, !nosanitize !44
  br i1 %941, label %942, label %943, !prof !45, !nosanitize !44

942:                                              ; preds = %934
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

943:                                              ; preds = %934
  %944 = extractvalue { i32, i1 } %940, 0, !nosanitize !44
  %945 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %944, ptr %30, align 4, !tbaa !136
  %946 = zext i32 %939 to i64
  %947 = getelementptr inbounds nuw i8, ptr %945, i64 %946
  store i8 0, ptr %947, align 1, !tbaa !5
  %948 = load i32, ptr %30, align 4, !tbaa !136
  %949 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %948, i32 1), !nosanitize !44
  %950 = extractvalue { i32, i1 } %949, 1, !nosanitize !44
  br i1 %950, label %951, label %952, !prof !45, !nosanitize !44

951:                                              ; preds = %943
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

952:                                              ; preds = %943
  %953 = extractvalue { i32, i1 } %949, 0, !nosanitize !44
  %954 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %953, ptr %30, align 4, !tbaa !136
  %955 = zext i32 %948 to i64
  %956 = getelementptr inbounds nuw i8, ptr %954, i64 %955
  store i8 %929, ptr %956, align 1, !tbaa !5
  %957 = zext i8 %929 to i64
  %958 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %957
  %959 = load i16, ptr %958, align 4, !tbaa !5
  %960 = add i16 %959, 1
  store i16 %960, ptr %958, align 4, !tbaa !5
  store i32 0, ptr %34, align 8, !tbaa !77
  %961 = load i32, ptr %6, align 4, !tbaa !71
  br label %962

962:                                              ; preds = %952, %916
  %963 = phi i32 [ %961, %952 ], [ %919, %916 ]
  %964 = tail call i32 @llvm.umin.i32(i32 %963, i32 2)
  store i32 %964, ptr %10, align 4, !tbaa !74
  %965 = icmp eq i32 %1, 4
  br i1 %965, label %966, label %1031

966:                                              ; preds = %962
  %967 = load i64, ptr %9, align 8, !tbaa !72
  %968 = icmp sgt i64 %967, -1
  br i1 %968, label %969, label %973

969:                                              ; preds = %966
  %970 = load ptr, ptr %7, align 8, !tbaa !34
  %971 = and i64 %967, 4294967295
  %972 = getelementptr inbounds nuw i8, ptr %970, i64 %971
  br label %973

973:                                              ; preds = %969, %966
  %974 = phi ptr [ %972, %969 ], [ null, %966 ]
  %975 = zext i32 %963 to i64
  %976 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %975, i64 %967), !nosanitize !44
  %977 = extractvalue { i64, i1 } %976, 1, !nosanitize !44
  br i1 %977, label %923, label %978, !prof !45, !nosanitize !44

978:                                              ; preds = %973
  %979 = extractvalue { i64, i1 } %976, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %974, i64 noundef %979, i32 noundef 1) #11
  %980 = load i32, ptr %6, align 4, !tbaa !71
  %981 = zext i32 %980 to i64
  store i64 %981, ptr %9, align 8, !tbaa !72
  %982 = load ptr, ptr %0, align 8, !tbaa !19
  %983 = getelementptr inbounds nuw i8, ptr %982, i64 56
  %984 = load ptr, ptr %983, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %984) #11
  %985 = getelementptr inbounds nuw i8, ptr %984, i64 40
  %986 = load i64, ptr %985, align 8, !tbaa !55
  %987 = getelementptr inbounds nuw i8, ptr %982, i64 32
  %988 = load i32, ptr %987, align 8, !tbaa !105
  %989 = zext i32 %988 to i64
  %990 = tail call i64 @llvm.umin.i64(i64 %986, i64 %989)
  %991 = trunc nuw i64 %990 to i32
  %992 = icmp eq i64 %990, 0
  br i1 %992, label %1025, label %993

993:                                              ; preds = %978
  %994 = getelementptr inbounds nuw i8, ptr %982, i64 24
  %995 = load ptr, ptr %994, align 8, !tbaa !104
  %996 = getelementptr inbounds nuw i8, ptr %984, i64 32
  %997 = load ptr, ptr %996, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %995, ptr align 1 %997, i64 %990, i1 false)
  %998 = load ptr, ptr %994, align 8, !tbaa !104
  %999 = getelementptr inbounds nuw i8, ptr %998, i64 %990
  store ptr %999, ptr %994, align 8, !tbaa !104
  %1000 = load ptr, ptr %996, align 8, !tbaa !56
  %1001 = getelementptr inbounds nuw i8, ptr %1000, i64 %990
  store ptr %1001, ptr %996, align 8, !tbaa !56
  %1002 = getelementptr inbounds nuw i8, ptr %982, i64 40
  %1003 = load i64, ptr %1002, align 8, !tbaa !106
  %1004 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1003, i64 %990), !nosanitize !44
  %1005 = extractvalue { i64, i1 } %1004, 1, !nosanitize !44
  br i1 %1005, label %1006, label %1007, !prof !45, !nosanitize !44

1006:                                             ; preds = %993
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1007:                                             ; preds = %993
  %1008 = extractvalue { i64, i1 } %1004, 0, !nosanitize !44
  store i64 %1008, ptr %1002, align 8, !tbaa !106
  %1009 = load i32, ptr %987, align 8, !tbaa !105
  %1010 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1009, i32 %991), !nosanitize !44
  %1011 = extractvalue { i32, i1 } %1010, 1, !nosanitize !44
  br i1 %1011, label %1012, label %1013, !prof !45, !nosanitize !44

1012:                                             ; preds = %1007
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1013:                                             ; preds = %1007
  %1014 = extractvalue { i32, i1 } %1010, 0, !nosanitize !44
  store i32 %1014, ptr %987, align 8, !tbaa !105
  %1015 = load i64, ptr %985, align 8, !tbaa !55
  %1016 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1015, i64 %990), !nosanitize !44
  %1017 = extractvalue { i64, i1 } %1016, 1, !nosanitize !44
  br i1 %1017, label %1018, label %1019, !prof !45, !nosanitize !44

1018:                                             ; preds = %1013
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1019:                                             ; preds = %1013
  %1020 = extractvalue { i64, i1 } %1016, 0, !nosanitize !44
  store i64 %1020, ptr %985, align 8, !tbaa !55
  %1021 = icmp eq i64 %1020, 0
  br i1 %1021, label %1022, label %1025

1022:                                             ; preds = %1019
  %1023 = getelementptr inbounds nuw i8, ptr %984, i64 16
  %1024 = load ptr, ptr %1023, align 8, !tbaa !40
  store ptr %1024, ptr %996, align 8, !tbaa !56
  br label %1025

1025:                                             ; preds = %1022, %1019, %978
  %1026 = load ptr, ptr %0, align 8, !tbaa !19
  %1027 = getelementptr inbounds nuw i8, ptr %1026, i64 32
  %1028 = load i32, ptr %1027, align 8, !tbaa !105
  %1029 = icmp eq i32 %1028, 0
  %1030 = select i1 %1029, i32 2, i32 3
  br label %.loopexit41

1031:                                             ; preds = %962
  %1032 = load i32, ptr %30, align 4, !tbaa !136
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1098, label %1034

1034:                                             ; preds = %1031
  %1035 = load i64, ptr %9, align 8, !tbaa !72
  %1036 = icmp sgt i64 %1035, -1
  br i1 %1036, label %1037, label %1041

1037:                                             ; preds = %1034
  %1038 = load ptr, ptr %7, align 8, !tbaa !34
  %1039 = and i64 %1035, 4294967295
  %1040 = getelementptr inbounds nuw i8, ptr %1038, i64 %1039
  br label %1041

1041:                                             ; preds = %1037, %1034
  %1042 = phi ptr [ %1040, %1037 ], [ null, %1034 ]
  %1043 = zext i32 %963 to i64
  %1044 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1043, i64 %1035), !nosanitize !44
  %1045 = extractvalue { i64, i1 } %1044, 1, !nosanitize !44
  br i1 %1045, label %923, label %1046, !prof !45, !nosanitize !44

1046:                                             ; preds = %1041
  %1047 = extractvalue { i64, i1 } %1044, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1042, i64 noundef %1047, i32 noundef 0) #11
  %1048 = load i32, ptr %6, align 4, !tbaa !71
  %1049 = zext i32 %1048 to i64
  store i64 %1049, ptr %9, align 8, !tbaa !72
  %1050 = load ptr, ptr %0, align 8, !tbaa !19
  %1051 = getelementptr inbounds nuw i8, ptr %1050, i64 56
  %1052 = load ptr, ptr %1051, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1052) #11
  %1053 = getelementptr inbounds nuw i8, ptr %1052, i64 40
  %1054 = load i64, ptr %1053, align 8, !tbaa !55
  %1055 = getelementptr inbounds nuw i8, ptr %1050, i64 32
  %1056 = load i32, ptr %1055, align 8, !tbaa !105
  %1057 = zext i32 %1056 to i64
  %1058 = tail call i64 @llvm.umin.i64(i64 %1054, i64 %1057)
  %1059 = trunc nuw i64 %1058 to i32
  %1060 = icmp eq i64 %1058, 0
  br i1 %1060, label %1093, label %1061

1061:                                             ; preds = %1046
  %1062 = getelementptr inbounds nuw i8, ptr %1050, i64 24
  %1063 = load ptr, ptr %1062, align 8, !tbaa !104
  %1064 = getelementptr inbounds nuw i8, ptr %1052, i64 32
  %1065 = load ptr, ptr %1064, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1063, ptr align 1 %1065, i64 %1058, i1 false)
  %1066 = load ptr, ptr %1062, align 8, !tbaa !104
  %1067 = getelementptr inbounds nuw i8, ptr %1066, i64 %1058
  store ptr %1067, ptr %1062, align 8, !tbaa !104
  %1068 = load ptr, ptr %1064, align 8, !tbaa !56
  %1069 = getelementptr inbounds nuw i8, ptr %1068, i64 %1058
  store ptr %1069, ptr %1064, align 8, !tbaa !56
  %1070 = getelementptr inbounds nuw i8, ptr %1050, i64 40
  %1071 = load i64, ptr %1070, align 8, !tbaa !106
  %1072 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1071, i64 %1058), !nosanitize !44
  %1073 = extractvalue { i64, i1 } %1072, 1, !nosanitize !44
  br i1 %1073, label %1074, label %1075, !prof !45, !nosanitize !44

1074:                                             ; preds = %1061
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1075:                                             ; preds = %1061
  %1076 = extractvalue { i64, i1 } %1072, 0, !nosanitize !44
  store i64 %1076, ptr %1070, align 8, !tbaa !106
  %1077 = load i32, ptr %1055, align 8, !tbaa !105
  %1078 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1077, i32 %1059), !nosanitize !44
  %1079 = extractvalue { i32, i1 } %1078, 1, !nosanitize !44
  br i1 %1079, label %1080, label %1081, !prof !45, !nosanitize !44

1080:                                             ; preds = %1075
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1081:                                             ; preds = %1075
  %1082 = extractvalue { i32, i1 } %1078, 0, !nosanitize !44
  store i32 %1082, ptr %1055, align 8, !tbaa !105
  %1083 = load i64, ptr %1053, align 8, !tbaa !55
  %1084 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1083, i64 %1058), !nosanitize !44
  %1085 = extractvalue { i64, i1 } %1084, 1, !nosanitize !44
  br i1 %1085, label %1086, label %1087, !prof !45, !nosanitize !44

1086:                                             ; preds = %1081
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1087:                                             ; preds = %1081
  %1088 = extractvalue { i64, i1 } %1084, 0, !nosanitize !44
  store i64 %1088, ptr %1053, align 8, !tbaa !55
  %1089 = icmp eq i64 %1088, 0
  br i1 %1089, label %1090, label %1093

1090:                                             ; preds = %1087
  %1091 = getelementptr inbounds nuw i8, ptr %1052, i64 16
  %1092 = load ptr, ptr %1091, align 8, !tbaa !40
  store ptr %1092, ptr %1064, align 8, !tbaa !56
  br label %1093

1093:                                             ; preds = %1090, %1087, %1046
  %1094 = load ptr, ptr %0, align 8, !tbaa !19
  %1095 = getelementptr inbounds nuw i8, ptr %1094, i64 32
  %1096 = load i32, ptr %1095, align 8, !tbaa !105
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %.loopexit41, label %1098

1098:                                             ; preds = %1093, %1031
  br label %.loopexit41

.loopexit41:                                      ; preds = %898, %774, %327, %1098, %1093, %1025
  %1099 = phi i32 [ 1, %1098 ], [ %1030, %1025 ], [ 0, %1093 ], [ 0, %327 ], [ 0, %774 ], [ 0, %898 ]
  ret i32 %1099
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nomerge noreturn nounwind }
attributes #13 = { noreturn nounwind }

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
!19 = !{!20, !21, i64 0}
!20 = !{!"internal_state", !21, i64 0, !12, i64 8, !10, i64 16, !13, i64 24, !10, i64 32, !13, i64 40, !12, i64 48, !22, i64 56, !13, i64 64, !6, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !10, i64 96, !13, i64 104, !23, i64 112, !23, i64 120, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !13, i64 152, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !6, i64 212, !6, i64 2504, !6, i64 2748, !24, i64 2904, !24, i64 2928, !24, i64 2952, !6, i64 2976, !6, i64 3008, !12, i64 5300, !12, i64 5304, !6, i64 5308, !10, i64 5888, !12, i64 5896, !12, i64 5900, !12, i64 5904, !13, i64 5912, !13, i64 5920, !12, i64 5928, !12, i64 5932, !27, i64 5936, !12, i64 5940, !12, i64 5944, !13, i64 5952, !12, i64 5960}
!21 = !{!"p1 _ZTS10z_stream_s", !11, i64 0}
!22 = !{!"p1 _ZTS11gz_header_s", !11, i64 0}
!23 = !{!"p1 short", !11, i64 0}
!24 = !{!"tree_desc_s", !25, i64 0, !12, i64 8, !26, i64 16}
!25 = !{!"p1 _ZTS9ct_data_s", !11, i64 0}
!26 = !{!"p1 _ZTS18static_tree_desc_s", !11, i64 0}
!27 = !{!"short", !6, i64 0}
!28 = !{!20, !12, i64 8}
!29 = !{!20, !12, i64 48}
!30 = !{!20, !12, i64 84}
!31 = !{!20, !12, i64 80}
!32 = !{!20, !12, i64 88}
!33 = !{!12, !12, i64 0}
!34 = !{!20, !10, i64 96}
!35 = !{!20, !23, i64 112}
!36 = !{!20, !12, i64 132}
!37 = !{!20, !23, i64 120}
!38 = !{!20, !13, i64 5952}
!39 = !{!20, !12, i64 5896}
!40 = !{!20, !10, i64 16}
!41 = !{!20, !13, i64 24}
!42 = !{!10, !10, i64 0}
!43 = !{!20, !10, i64 5888}
!44 = !{}
!45 = !{!"branch_weights", i32 1, i32 1048575}
!46 = !{!20, !12, i64 5904}
!47 = !{!20, !12, i64 196}
!48 = !{!20, !12, i64 200}
!49 = !{!20, !6, i64 72}
!50 = !{!20, !12, i64 136}
!51 = !{!20, !12, i64 140}
!52 = !{!20, !12, i64 144}
!53 = !{!9, !13, i64 16}
!54 = !{!9, !12, i64 88}
!55 = !{!20, !13, i64 40}
!56 = !{!20, !10, i64 32}
!57 = !{!9, !13, i64 96}
!58 = !{!20, !12, i64 76}
!59 = !{!20, !13, i64 104}
!60 = !{!27, !27, i64 0}
!61 = !{!20, !12, i64 5960}
!62 = !{!63, !27, i64 2}
!63 = !{!"config_s", !27, i64 0, !27, i64 2, !27, i64 4, !27, i64 6, !11, i64 8}
!64 = !{!20, !12, i64 192}
!65 = !{!63, !27, i64 0}
!66 = !{!20, !12, i64 204}
!67 = !{!63, !27, i64 4}
!68 = !{!20, !12, i64 208}
!69 = !{!63, !27, i64 6}
!70 = !{!20, !12, i64 188}
!71 = !{!20, !12, i64 172}
!72 = !{!20, !13, i64 152}
!73 = !{!20, !12, i64 180}
!74 = !{!20, !12, i64 5932}
!75 = !{!20, !12, i64 184}
!76 = !{!20, !12, i64 160}
!77 = !{!20, !12, i64 168}
!78 = !{!20, !12, i64 128}
!79 = !{!9, !12, i64 8}
!80 = !{!9, !10, i64 0}
!81 = !{!20, !12, i64 176}
!82 = distinct !{!82, !83, !84, !85}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = !{!"llvm.loop.unroll.runtime.disable"}
!86 = distinct !{!86, !83, !85, !84}
!87 = distinct !{!87, !83, !84, !85}
!88 = distinct !{!88, !83, !85, !84}
!89 = distinct !{!89, !83}
!90 = distinct !{!90, !83}
!91 = !{!"branch_weights", i32 1048575, i32 1}
!92 = distinct !{!92, !83}
!93 = distinct !{!93, !83, !84, !85}
!94 = distinct !{!94, !83, !85, !84}
!95 = distinct !{!95, !83, !84, !85}
!96 = distinct !{!96, !83, !85, !84}
!97 = distinct !{!97, !83}
!98 = !{!20, !22, i64 56}
!99 = !{!20, !12, i64 5940}
!100 = !{!20, !12, i64 5944}
!101 = !{!20, !27, i64 5936}
!102 = distinct !{!102, !83}
!103 = !{!63, !11, i64 8}
!104 = !{!9, !10, i64 24}
!105 = !{!9, !12, i64 32}
!106 = !{!9, !13, i64 40}
!107 = !{!108, !10, i64 56}
!108 = !{!"gz_header_s", !12, i64 0, !13, i64 8, !12, i64 16, !12, i64 20, !10, i64 24, !12, i64 32, !12, i64 36, !10, i64 40, !12, i64 48, !10, i64 56, !12, i64 64, !12, i64 68, !12, i64 72}
!109 = !{!108, !10, i64 40}
!110 = !{!108, !10, i64 24}
!111 = !{!108, !12, i64 0}
!112 = !{!108, !12, i64 68}
!113 = !{!108, !13, i64 8}
!114 = !{!108, !12, i64 20}
!115 = !{!108, !12, i64 32}
!116 = !{!20, !13, i64 64}
!117 = !{!"branch_weights", i32 1, i32 1048574}
!118 = distinct !{!118, !83, !119}
!119 = !{!"llvm.loop.peeled.count", i32 1}
!120 = distinct !{!120, !83}
!121 = distinct !{!121, !83}
!122 = !{!20, !12, i64 5928}
!123 = distinct !{!123, !83, !84, !85}
!124 = distinct !{!124, !83, !85, !84}
!125 = distinct !{!125, !83, !84, !85}
!126 = distinct !{!126, !83, !85, !84}
!127 = !{!"branch_weights", i32 1, i32 127}
!128 = !{!"branch_weights", i32 127, i32 134217473}
!129 = distinct !{!129, !83}
!130 = distinct !{!130, !83}
!131 = distinct !{!131, !83}
!132 = distinct !{!132, !83, !84, !85}
!133 = distinct !{!133, !83, !85, !84}
!134 = distinct !{!134, !83, !84, !85}
!135 = distinct !{!135, !83, !85, !84}
!136 = !{!20, !12, i64 5900}
!137 = distinct !{!137, !83, !84, !85}
!138 = distinct !{!138, !83, !85, !84}
!139 = distinct !{!139, !83, !84, !85}
!140 = distinct !{!140, !83, !85, !84}
!141 = distinct !{!141, !83}
!142 = !{!20, !25, i64 2904}
!143 = !{!20, !25, i64 2928}
!144 = !{!20, !25, i64 2952}
!145 = distinct !{!145, !83, !84, !85}
!146 = distinct !{!146, !83, !85, !84}
!147 = distinct !{!147, !83, !84, !85}
!148 = distinct !{!148, !83, !85, !84}
!149 = distinct !{!149, !83}
!150 = distinct !{!150, !83}
!151 = distinct !{!151, !83}
!152 = distinct !{!152, !83, !84, !85}
!153 = distinct !{!153, !83, !85, !84}
!154 = distinct !{!154, !83, !84, !85}
!155 = distinct !{!155, !83, !85, !84}
!156 = !{!20, !12, i64 164}
!157 = distinct !{!157, !83}
