; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_deflate.thorough.mid.ll'
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
  br i1 %4, label %1032, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1032, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1032, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1032, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1032

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %1032 [
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
  br i1 %24, label %1032, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !29
  switch i32 %27, label %34 [
    i32 2, label %1032
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %1032

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !73
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %1032

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !73
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %1032

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

105:                                              ; preds = %359, %80
  %106 = phi i32 [ %266, %359 ], [ %104, %80 ]
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
  %min.iters.check266 = icmp ult i32 %165, 8
  br i1 %min.iters.check266, label %.split.preheader399, label %vector.ph267

vector.ph267:                                     ; preds = %.split.preheader
  %n.vec269 = and i64 %167, 4294967288
  %169 = mul nsw i64 %n.vec269, -2
  %170 = getelementptr i8, ptr %168, i64 %169
  %.cast270 = trunc nuw i64 %n.vec269 to i32
  %171 = sub i32 %165, %.cast270
  %broadcast.splatinsert271 = insertelement <8 x i32> poison, i32 %164, i64 0
  %172 = shufflevector <8 x i32> %broadcast.splatinsert271, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph267
  %index274 = phi i64 [ 0, %vector.ph267 ], [ %index.next280, %vector.body273 ]
  %offset.idx275 = mul i64 %index274, -2
  %next.gep276 = getelementptr i8, ptr %168, i64 %offset.idx275
  %173 = getelementptr inbounds i8, ptr %next.gep276, i64 -16
  %wide.load277 = load <8 x i16>, ptr %173, align 2, !tbaa !60
  %174 = zext <8 x i16> %wide.load277 to <8 x i32>
  %175 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %174, <8 x i32> %172)
  %reverse279 = trunc nuw <8 x i32> %175 to <8 x i16>
  store <8 x i16> %reverse279, ptr %173, align 2, !tbaa !60
  %index.next280 = add nuw i64 %index274, 8
  %176 = icmp eq i64 %index.next280, %n.vec269
  br i1 %176, label %middle.block281, label %vector.body273, !llvm.loop !82

middle.block281:                                  ; preds = %vector.body273
  %cmp.n282 = icmp eq i64 %n.vec269, %167
  br i1 %cmp.n282, label %.loopexit365, label %.split.preheader399

.split.preheader399:                              ; preds = %.split.preheader, %middle.block281
  %.ph400 = phi ptr [ %168, %.split.preheader ], [ %170, %middle.block281 ]
  %.ph401 = phi i32 [ %165, %.split.preheader ], [ %171, %middle.block281 ]
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

.split:                                           ; preds = %.split.preheader399, %.split
  %182 = phi ptr [ %184, %.split ], [ %.ph400, %.split.preheader399 ]
  %183 = phi i32 [ %189, %.split ], [ %.ph401, %.split.preheader399 ]
  %184 = getelementptr inbounds i8, ptr %182, i64 -2
  %185 = load i16, ptr %184, align 2, !tbaa !60
  %186 = zext i16 %185 to i32
  %187 = tail call i32 @llvm.usub.sat.i32(i32 %186, i32 %164)
  %188 = trunc nuw i32 %187 to i16
  store i16 %188, ptr %184, align 2, !tbaa !60
  %189 = add i32 %183, -1
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %.loopexit365, label %.split, !llvm.loop !86

.loopexit365:                                     ; preds = %.split, %middle.block281
  %.not.not204 = icmp eq i32 %164, 0
  br i1 %.not.not204, label %.split132.us, label %.split132, !prof !45, !nosanitize !44

.split132.us:                                     ; preds = %.loopexit365
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split132:                                        ; preds = %.loopexit365
  %191 = load ptr, ptr %98, align 8, !tbaa !35
  %192 = zext i32 %164 to i64
  %193 = getelementptr inbounds nuw [2 x i8], ptr %191, i64 %192
  %min.iters.check = icmp ult i32 %164, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.split132
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
  %reverse263 = trunc nuw <8 x i32> %200 to <8 x i16>
  store <8 x i16> %reverse263, ptr %198, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %201 = icmp eq i64 %index.next, %n.vec
  br i1 %201, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %192
  br i1 %cmp.n, label %.loopexit364, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split132, %middle.block
  %.ph397 = phi ptr [ %193, %.split132 ], [ %195, %middle.block ]
  %.ph398 = phi i32 [ %164, %.split132 ], [ %196, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %202 = phi ptr [ %204, %scalar.ph ], [ %.ph397, %scalar.ph.preheader ]
  %203 = phi i32 [ %209, %scalar.ph ], [ %.ph398, %scalar.ph.preheader ]
  %204 = getelementptr inbounds i8, ptr %202, i64 -2
  %205 = load i16, ptr %204, align 2, !tbaa !60
  %206 = zext i16 %205 to i32
  %207 = tail call i32 @llvm.usub.sat.i32(i32 %206, i32 %164)
  %208 = trunc nuw i32 %207 to i16
  store i16 %208, ptr %204, align 2, !tbaa !60
  %209 = add i32 %203, -1
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %.loopexit364, label %scalar.ph, !llvm.loop !88

.loopexit364:                                     ; preds = %scalar.ph, %middle.block
  store i32 1, ptr %99, align 8, !tbaa !61
  %211 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %121, i32 %83), !nosanitize !44
  %212 = extractvalue { i32, i1 } %211, 1, !nosanitize !44
  br i1 %212, label %213, label %214, !prof !45, !nosanitize !44

213:                                              ; preds = %.loopexit364
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

214:                                              ; preds = %.loopexit364
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
  br i1 %224, label %364, label %225

225:                                              ; preds = %217
  %226 = load ptr, ptr %92, align 8, !tbaa !34
  %227 = zext i32 %219 to i64
  %228 = getelementptr inbounds nuw i8, ptr %226, i64 %227
  %229 = zext i32 %218 to i64
  %230 = getelementptr inbounds nuw i8, ptr %228, i64 %229
  %231 = tail call i32 @llvm.umin.i32(i32 %223, i32 %220)
  %232 = icmp eq i32 %220, 0
  br i1 %232, label %260, label %233

233:                                              ; preds = %225
  %234 = sub i32 %223, %231
  store i32 %234, ptr %222, align 8, !tbaa !79
  %235 = load ptr, ptr %221, align 8, !tbaa !80
  %236 = zext i32 %231 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %230, ptr align 1 %235, i64 %236, i1 false)
  %237 = getelementptr inbounds nuw i8, ptr %221, i64 56
  %238 = load ptr, ptr %237, align 8, !tbaa !18
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 48
  %240 = load i32, ptr %239, align 8, !tbaa !29
  switch i32 %240, label %249 [
    i32 1, label %241
    i32 2, label %245
  ]

241:                                              ; preds = %233
  %242 = getelementptr inbounds nuw i8, ptr %221, i64 96
  %243 = load i64, ptr %242, align 8, !tbaa !57
  %244 = tail call i64 @adler32(i64 noundef %243, ptr noundef %230, i32 noundef %231) #11
  store i64 %244, ptr %242, align 8, !tbaa !57
  br label %249

245:                                              ; preds = %233
  %246 = getelementptr inbounds nuw i8, ptr %221, i64 96
  %247 = load i64, ptr %246, align 8, !tbaa !57
  %248 = tail call i64 @crc32(i64 noundef %247, ptr noundef %230, i32 noundef %231) #11
  store i64 %248, ptr %246, align 8, !tbaa !57
  br label %249

249:                                              ; preds = %245, %241, %233
  %250 = load ptr, ptr %221, align 8, !tbaa !80
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 %236
  store ptr %251, ptr %221, align 8, !tbaa !80
  %252 = getelementptr inbounds nuw i8, ptr %221, i64 16
  %253 = load i64, ptr %252, align 8, !tbaa !53
  %254 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %253, i64 %236), !nosanitize !44
  %255 = extractvalue { i64, i1 } %254, 1, !nosanitize !44
  br i1 %255, label %256, label %257, !prof !45, !nosanitize !44

256:                                              ; preds = %249
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

257:                                              ; preds = %249
  %258 = extractvalue { i64, i1 } %254, 0, !nosanitize !44
  store i64 %258, ptr %252, align 8, !tbaa !53
  %259 = load i32, ptr %82, align 4, !tbaa !73
  br label %260

260:                                              ; preds = %257, %225
  %261 = phi i32 [ %218, %225 ], [ %259, %257 ]
  %262 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %261, i32 %231), !nosanitize !44
  %263 = extractvalue { i32, i1 } %262, 1, !nosanitize !44
  br i1 %263, label %264, label %265, !prof !45, !nosanitize !44

264:                                              ; preds = %260
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

265:                                              ; preds = %260
  %266 = extractvalue { i32, i1 } %262, 0, !nosanitize !44
  store i32 %266, ptr %82, align 4, !tbaa !73
  %267 = load i32, ptr %95, align 4, !tbaa !74
  %268 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %266, i32 %267), !nosanitize !44
  %269 = extractvalue { i32, i1 } %268, 1, !nosanitize !44
  br i1 %269, label %270, label %271, !prof !45, !nosanitize !44

270:                                              ; preds = %265
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

271:                                              ; preds = %265
  %272 = extractvalue { i32, i1 } %268, 0, !nosanitize !44
  %273 = icmp ugt i32 %272, 2
  br i1 %273, label %274, label %.loopexit10

274:                                              ; preds = %271
  %275 = load i32, ptr %90, align 4, !tbaa !71
  %.fr = freeze i32 %275
  %276 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr, i32 %267), !nosanitize !44
  %277 = extractvalue { i32, i1 } %276, 0, !nosanitize !44
  %278 = extractvalue { i32, i1 } %276, 1, !nosanitize !44
  br i1 %278, label %279, label %280, !prof !45, !nosanitize !44

279:                                              ; preds = %274
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

280:                                              ; preds = %274
  %281 = load ptr, ptr %92, align 8, !tbaa !34
  %282 = zext i32 %277 to i64
  %283 = getelementptr inbounds nuw i8, ptr %281, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !5
  %285 = zext i8 %284 to i32
  store i32 %285, ptr %100, align 8, !tbaa !78
  %286 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %277, i32 1), !nosanitize !44
  %287 = extractvalue { i32, i1 } %286, 1, !nosanitize !44
  br i1 %287, label %288, label %289, !prof !45, !nosanitize !44

288:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

289:                                              ; preds = %280
  %290 = extractvalue { i32, i1 } %286, 0, !nosanitize !44
  %291 = load i32, ptr %101, align 8, !tbaa !52
  %292 = shl i32 %285, %291
  %293 = zext i32 %290 to i64
  %294 = getelementptr inbounds nuw i8, ptr %281, i64 %293
  %295 = load i8, ptr %294, align 1, !tbaa !5
  %296 = zext i8 %295 to i32
  %297 = xor i32 %292, %296
  %298 = load i32, ptr %102, align 4, !tbaa !51
  %299 = and i32 %297, %298
  store i32 %299, ptr %100, align 8, !tbaa !78
  %mv.h11 = icmp sgt i32 %.fr, -1
  br i1 %mv.h11, label %.mv.ph13.mv.fast, label %.mv.ph13

.mv.ph13.mv.fast:                                 ; preds = %289, %303
  %indvars.iv = phi i64 [ %indvars.iv.next, %303 ], [ %282, %289 ]
  %300 = phi i32 [ %312, %303 ], [ %299, %289 ]
  %301 = phi i32 [ %323, %303 ], [ %267, %289 ]
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %.loopexit10, label %303

303:                                              ; preds = %.mv.ph13.mv.fast
  %304 = shl i32 %300, %291
  %305 = trunc nuw i64 %indvars.iv to i32
  %306 = add nuw i64 %indvars.iv, 2
  %307 = and i64 %306, 4294967295
  %308 = getelementptr inbounds nuw i8, ptr %281, i64 %307
  %309 = load i8, ptr %308, align 1, !tbaa !5
  %310 = zext i8 %309 to i32
  %311 = xor i32 %304, %310
  %312 = and i32 %311, %298
  store i32 %312, ptr %100, align 8, !tbaa !78
  %313 = load ptr, ptr %97, align 8, !tbaa !37
  %314 = zext i32 %312 to i64
  %315 = getelementptr inbounds nuw [2 x i8], ptr %313, i64 %314
  %316 = load i16, ptr %315, align 2, !tbaa !60
  %317 = load ptr, ptr %98, align 8, !tbaa !35
  %318 = load i32, ptr %103, align 8, !tbaa !32
  %319 = and i32 %318, %305
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds nuw [2 x i8], ptr %317, i64 %320
  store i16 %316, ptr %321, align 2, !tbaa !60
  %322 = trunc i64 %indvars.iv to i16
  store i16 %322, ptr %315, align 2, !tbaa !60
  %323 = add i32 %301, -1
  store i32 %323, ptr %95, align 4, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %324 = add i32 %323, %266
  %325 = icmp ult i32 %324, 3
  br i1 %325, label %.loopexit10, label %.mv.ph13.mv.fast, !llvm.loop !89

.mv.ph13:                                         ; preds = %289, %334
  %326 = phi i32 [ %343, %334 ], [ %299, %289 ]
  %327 = phi i32 [ %354, %334 ], [ %267, %289 ]
  %328 = phi i32 [ %355, %334 ], [ %277, %289 ]
  %329 = icmp eq i32 %327, 0
  br i1 %329, label %.loopexit10, label %330

330:                                              ; preds = %.mv.ph13
  %331 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %328, i32 3), !nosanitize !44
  %332 = extractvalue { i32, i1 } %331, 1, !nosanitize !44
  br i1 %332, label %333, label %334, !prof !45, !nosanitize !44

333:                                              ; preds = %330
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

334:                                              ; preds = %330
  %335 = shl i32 %326, %291
  %336 = extractvalue { i32, i1 } %331, 0, !nosanitize !44
  %337 = add i32 %336, -1
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds nuw i8, ptr %281, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !5
  %341 = zext i8 %340 to i32
  %342 = xor i32 %335, %341
  %343 = and i32 %342, %298
  store i32 %343, ptr %100, align 8, !tbaa !78
  %344 = load ptr, ptr %97, align 8, !tbaa !37
  %345 = zext i32 %343 to i64
  %346 = getelementptr inbounds nuw [2 x i8], ptr %344, i64 %345
  %347 = load i16, ptr %346, align 2, !tbaa !60
  %348 = load ptr, ptr %98, align 8, !tbaa !35
  %349 = load i32, ptr %103, align 8, !tbaa !32
  %350 = and i32 %349, %328
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds nuw [2 x i8], ptr %348, i64 %351
  store i16 %347, ptr %352, align 2, !tbaa !60
  %353 = trunc i32 %328 to i16
  store i16 %353, ptr %346, align 2, !tbaa !60
  %354 = add i32 %327, -1
  store i32 %354, ptr %95, align 4, !tbaa !74
  %355 = add nuw i32 %328, 1
  %356 = add i32 %354, %266
  %357 = icmp ult i32 %356, 3
  br i1 %357, label %.loopexit10, label %.mv.ph13, !llvm.loop !89

.loopexit10:                                      ; preds = %.mv.ph13, %334, %.mv.ph13.mv.fast, %303, %271
  %358 = icmp ult i32 %266, 262
  br i1 %358, label %359, label %364

359:                                              ; preds = %.loopexit10
  %360 = load ptr, ptr %15, align 8, !tbaa !19
  %361 = getelementptr inbounds nuw i8, ptr %360, i64 8
  %362 = load i32, ptr %361, align 8, !tbaa !79
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %105, !llvm.loop !90

364:                                              ; preds = %359, %.loopexit10, %217
  %365 = phi i32 [ %266, %359 ], [ %266, %.loopexit10 ], [ %218, %217 ]
  %366 = getelementptr inbounds nuw i8, ptr %15, i64 5952
  %367 = load i64, ptr %366, align 8, !tbaa !38
  %368 = load i64, ptr %89, align 8, !tbaa !59
  %369 = icmp ult i64 %367, %368
  br i1 %369, label %370, label %405

370:                                              ; preds = %364
  %371 = load i32, ptr %90, align 4, !tbaa !71
  %372 = zext i32 %371 to i64
  %373 = zext i32 %365 to i64
  %374 = add nuw nsw i64 %372, %373
  %375 = icmp ult i64 %367, %374
  br i1 %375, label %376, label %386

376:                                              ; preds = %370
  %377 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %368, i64 %374), !nosanitize !44
  %378 = extractvalue { i64, i1 } %377, 1, !nosanitize !44
  br i1 %378, label %379, label %380, !prof !45, !nosanitize !44

379:                                              ; preds = %376
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

380:                                              ; preds = %376
  %381 = extractvalue { i64, i1 } %377, 0, !nosanitize !44
  %382 = tail call i64 @llvm.umin.i64(i64 %381, i64 258)
  %383 = load ptr, ptr %92, align 8, !tbaa !34
  %384 = getelementptr inbounds nuw i8, ptr %383, i64 %374
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %384, i8 0, i64 %382, i1 false)
  %385 = add nuw nsw i64 %382, %374
  br label %402

386:                                              ; preds = %370
  %387 = add nuw nsw i64 %374, 258
  %388 = icmp ult i64 %367, %387
  br i1 %388, label %389, label %405

389:                                              ; preds = %386
  %390 = sub nuw nsw i64 %387, %367
  %391 = sub i64 %368, %367
  %392 = tail call i64 @llvm.umin.i64(i64 %390, i64 %391)
  %393 = load ptr, ptr %92, align 8, !tbaa !34
  %394 = getelementptr inbounds nuw i8, ptr %393, i64 %367
  %395 = and i64 %392, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %394, i8 0, i64 %395, i1 false)
  %396 = load i64, ptr %366, align 8, !tbaa !38
  %397 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %396, i64 %392), !nosanitize !44
  %398 = extractvalue { i64, i1 } %397, 1, !nosanitize !44
  br i1 %398, label %399, label %400, !prof !45, !nosanitize !44

399:                                              ; preds = %389
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

400:                                              ; preds = %389
  %401 = extractvalue { i64, i1 } %397, 0, !nosanitize !44
  br label %402

402:                                              ; preds = %400, %380
  %403 = phi i64 [ %385, %380 ], [ %401, %400 ]
  store i64 %403, ptr %366, align 8, !tbaa !38
  %404 = load i32, ptr %82, align 4, !tbaa !73
  br label %405

405:                                              ; preds = %402, %386, %364
  %406 = phi i32 [ %365, %364 ], [ %365, %386 ], [ %404, %402 ]
  %407 = icmp ugt i32 %406, 2
  br i1 %407, label %.preheader, label %.loopexit91

.preheader:                                       ; preds = %405, %1018
  %408 = phi i32 [ %1019, %1018 ], [ %406, %405 ]
  %409 = add i32 %408, -2
  %410 = load i32, ptr %90, align 4, !tbaa !71
  %411 = load i32, ptr %101, align 8, !tbaa !52
  %412 = load ptr, ptr %92, align 8, !tbaa !34
  %413 = load i32, ptr %100, align 8, !tbaa !78
  %414 = or i32 %410, %408
  %.fr50 = freeze i32 %414
  %mv.h7 = icmp sgt i32 %.fr50, -1
  br i1 %mv.h7, label %.mv.ph9.mv.fast.preheader, label %.mv.ph9.preheader

.mv.ph9.preheader:                                ; preds = %.preheader
  %415 = tail call i32 @llvm.usub.sat.i32(i32 -3, i32 %410)
  %416 = add i32 %408, -3
  %.not = icmp ugt i32 %415, %416
  br i1 %.not, label %.mv.ph9.preheader.split, label %463, !prof !91, !nosanitize !44

.mv.ph9.preheader.split:                          ; preds = %.mv.ph9.preheader
  %.pre = load i32, ptr %102, align 4, !tbaa !51
  %.pre151 = load ptr, ptr %97, align 8, !tbaa !37
  %.pre152 = load ptr, ptr %98, align 8, !tbaa !35
  %.pre153 = load i32, ptr %103, align 8, !tbaa !32
  br label %.mv.ph9

.mv.ph9.mv.fast.preheader:                        ; preds = %.preheader
  %417 = load i32, ptr %102, align 4, !tbaa !51
  %418 = load ptr, ptr %97, align 8, !tbaa !37
  %419 = load ptr, ptr %98, align 8, !tbaa !35
  %420 = load i32, ptr %103, align 8, !tbaa !32
  %421 = zext i32 %410 to i64
  br label %.mv.ph9.mv.fast

.mv.ph9.mv.fast:                                  ; preds = %.mv.ph9.mv.fast.preheader, %.mv.ph9.mv.fast
  %indvars.iv142 = phi i64 [ %421, %.mv.ph9.mv.fast.preheader ], [ %indvars.iv.next143, %.mv.ph9.mv.fast ]
  %422 = phi i32 [ %413, %.mv.ph9.mv.fast.preheader ], [ %432, %.mv.ph9.mv.fast ]
  %423 = phi i32 [ %409, %.mv.ph9.mv.fast.preheader ], [ %440, %.mv.ph9.mv.fast ]
  %424 = shl i32 %422, %411
  %425 = trunc nuw i64 %indvars.iv142 to i32
  %426 = add nuw i64 %indvars.iv142, 2
  %427 = and i64 %426, 4294967295
  %428 = getelementptr inbounds nuw i8, ptr %412, i64 %427
  %429 = load i8, ptr %428, align 1, !tbaa !5
  %430 = zext i8 %429 to i32
  %431 = xor i32 %424, %430
  %432 = and i32 %431, %417
  store i32 %432, ptr %100, align 8, !tbaa !78
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds nuw [2 x i8], ptr %418, i64 %433
  %435 = load i16, ptr %434, align 2, !tbaa !60
  %436 = and i32 %420, %425
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds nuw [2 x i8], ptr %419, i64 %437
  store i16 %435, ptr %438, align 2, !tbaa !60
  %439 = trunc i64 %indvars.iv142 to i16
  store i16 %439, ptr %434, align 2, !tbaa !60
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1
  %440 = add i32 %423, -1
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %.loopexit89.loopexit, label %.mv.ph9.mv.fast, !llvm.loop !92

.mv.ph9:                                          ; preds = %.mv.ph9.preheader.split, %.mv.ph9
  %442 = phi i32 [ %452, %.mv.ph9 ], [ %413, %.mv.ph9.preheader.split ]
  %443 = phi i32 [ %460, %.mv.ph9 ], [ %410, %.mv.ph9.preheader.split ]
  %444 = phi i32 [ %461, %.mv.ph9 ], [ %409, %.mv.ph9.preheader.split ]
  %445 = shl i32 %442, %411
  %446 = add i32 %443, 2
  %447 = zext i32 %446 to i64
  %448 = getelementptr inbounds nuw i8, ptr %412, i64 %447
  %449 = load i8, ptr %448, align 1, !tbaa !5
  %450 = zext i8 %449 to i32
  %451 = xor i32 %445, %450
  %452 = and i32 %451, %.pre
  store i32 %452, ptr %100, align 8, !tbaa !78
  %453 = zext i32 %452 to i64
  %454 = getelementptr inbounds nuw [2 x i8], ptr %.pre151, i64 %453
  %455 = load i16, ptr %454, align 2, !tbaa !60
  %456 = and i32 %.pre153, %443
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds nuw [2 x i8], ptr %.pre152, i64 %457
  store i16 %455, ptr %458, align 2, !tbaa !60
  %459 = trunc i32 %443 to i16
  store i16 %459, ptr %454, align 2, !tbaa !60
  %460 = add nuw i32 %443, 1
  %461 = add i32 %444, -1
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %.loopexit89, label %.mv.ph9, !llvm.loop !92

463:                                              ; preds = %.mv.ph9.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.loopexit89.loopexit:                             ; preds = %.mv.ph9.mv.fast
  %464 = trunc nuw i64 %indvars.iv.next143 to i32
  br label %.loopexit89

.loopexit89:                                      ; preds = %.mv.ph9, %.loopexit89.loopexit
  %.lcssa = phi i32 [ %464, %.loopexit89.loopexit ], [ %460, %.mv.ph9 ]
  store i32 %.lcssa, ptr %90, align 4, !tbaa !71
  store i32 2, ptr %82, align 4, !tbaa !73
  %465 = load i32, ptr %81, align 8, !tbaa !31
  %.fr51 = freeze i32 %465
  %466 = zext i32 %.fr51 to i64
  %mv.h1 = icmp sgt i32 %.fr51, -1
  br i1 %mv.h1, label %.mv.ph3.mv.fast, label %.mv.ph3

.mv.ph3.mv.fast:                                  ; preds = %.loopexit89, %690
  %467 = phi i32 [ %627, %690 ], [ 2, %.loopexit89 ]
  %468 = load i64, ptr %89, align 8, !tbaa !59
  %469 = zext nneg i32 %467 to i64
  %470 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %468, i64 %469), !nosanitize !44
  %471 = extractvalue { i64, i1 } %470, 1, !nosanitize !44
  br i1 %471, label %.loopexit62, label %472, !prof !45, !nosanitize !44

472:                                              ; preds = %.mv.ph3.mv.fast
  %473 = extractvalue { i64, i1 } %470, 0, !nosanitize !44
  %474 = load i32, ptr %90, align 4, !tbaa !71
  %475 = zext i32 %474 to i64
  %476 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %473, i64 %475), !nosanitize !44
  %477 = extractvalue { i64, i1 } %476, 1, !nosanitize !44
  br i1 %477, label %.loopexit63, label %478, !prof !45, !nosanitize !44

478:                                              ; preds = %472
  %479 = extractvalue { i64, i1 } %476, 0, !nosanitize !44
  %480 = trunc i64 %479 to i32
  %481 = load i32, ptr %81, align 8, !tbaa !31
  %482 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %481, i32 262), !nosanitize !44
  %483 = extractvalue { i32, i1 } %482, 1, !nosanitize !44
  br i1 %483, label %.loopexit64, label %484, !prof !45, !nosanitize !44

484:                                              ; preds = %478
  %485 = extractvalue { i32, i1 } %482, 0, !nosanitize !44
  %486 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.fr51, i32 %485), !nosanitize !44
  %487 = extractvalue { i32, i1 } %486, 1, !nosanitize !44
  br i1 %487, label %.loopexit65, label %488, !prof !45, !nosanitize !44

488:                                              ; preds = %484
  %489 = extractvalue { i32, i1 } %486, 0, !nosanitize !44
  %490 = icmp ult i32 %474, %489
  br i1 %490, label %580, label %491

491:                                              ; preds = %488
  %492 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr51, i32 %480), !nosanitize !44
  %493 = extractvalue { i32, i1 } %492, 1, !nosanitize !44
  br i1 %493, label %.loopexit66, label %494, !prof !45, !nosanitize !44

494:                                              ; preds = %491
  %495 = extractvalue { i32, i1 } %492, 0, !nosanitize !44
  %496 = load ptr, ptr %92, align 8, !tbaa !34
  %497 = getelementptr inbounds nuw i8, ptr %496, i64 %466
  %498 = zext i32 %495 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %496, ptr align 1 %497, i64 %498, i1 false)
  %499 = load i32, ptr %93, align 8, !tbaa !81
  %500 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %499, i32 %.fr51), !nosanitize !44
  %501 = extractvalue { i32, i1 } %500, 1, !nosanitize !44
  br i1 %501, label %.loopexit67, label %502, !prof !45, !nosanitize !44

502:                                              ; preds = %494
  %503 = extractvalue { i32, i1 } %500, 0, !nosanitize !44
  store i32 %503, ptr %93, align 8, !tbaa !81
  %504 = load i32, ptr %90, align 4, !tbaa !71
  %505 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %504, i32 %.fr51), !nosanitize !44
  %506 = extractvalue { i32, i1 } %505, 1, !nosanitize !44
  br i1 %506, label %.loopexit68, label %507, !prof !45, !nosanitize !44

507:                                              ; preds = %502
  %508 = extractvalue { i32, i1 } %505, 0, !nosanitize !44
  store i32 %508, ptr %90, align 4, !tbaa !71
  %509 = load i64, ptr %94, align 8, !tbaa !72
  %510 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %509, i64 %466), !nosanitize !44
  %511 = extractvalue { i64, i1 } %510, 1, !nosanitize !44
  br i1 %511, label %.loopexit68, label %512, !prof !45, !nosanitize !44

512:                                              ; preds = %507
  %513 = extractvalue { i64, i1 } %510, 0, !nosanitize !44
  store i64 %513, ptr %94, align 8, !tbaa !72
  %514 = load i32, ptr %95, align 4, !tbaa !74
  %515 = icmp ugt i32 %514, %508
  br i1 %515, label %516, label %517

516:                                              ; preds = %512
  store i32 %508, ptr %95, align 4, !tbaa !74
  br label %517

517:                                              ; preds = %516, %512
  %518 = load i32, ptr %81, align 8, !tbaa !31
  %519 = load i32, ptr %96, align 4, !tbaa !36
  %520 = load ptr, ptr %97, align 8, !tbaa !37
  %521 = zext i32 %519 to i64
  %522 = getelementptr inbounds nuw [2 x i8], ptr %520, i64 %521
  %523 = add i32 %519, -1
  %524 = tail call i32 @llvm.umin.i32(i32 %519, i32 %523)
  %min.iters.check306 = icmp ult i32 %524, 8
  br i1 %min.iters.check306, label %scalar.ph305.preheader, label %vector.ph307

vector.ph307:                                     ; preds = %517
  %umin304 = zext i32 %524 to i64
  %525 = add nuw nsw i64 %umin304, 1
  %n.mod.vf308 = and i64 %525, 7
  %526 = icmp eq i64 %n.mod.vf308, 0
  %527 = select i1 %526, i64 8, i64 %n.mod.vf308
  %n.vec309 = sub nsw i64 %525, %527
  %528 = mul nsw i64 %n.vec309, -2
  %529 = getelementptr i8, ptr %522, i64 %528
  %.cast310 = trunc i64 %n.vec309 to i32
  %530 = sub i32 %519, %.cast310
  %broadcast.splatinsert311 = insertelement <8 x i32> poison, i32 %518, i64 0
  %531 = shufflevector <8 x i32> %broadcast.splatinsert311, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body313

vector.body313:                                   ; preds = %vector.body313, %vector.ph307
  %index314 = phi i64 [ 0, %vector.ph307 ], [ %index.next320, %vector.body313 ]
  %offset.idx315 = mul i64 %index314, -2
  %next.gep316 = getelementptr i8, ptr %522, i64 %offset.idx315
  %532 = getelementptr inbounds i8, ptr %next.gep316, i64 -16
  %wide.load317 = load <8 x i16>, ptr %532, align 2, !tbaa !60
  %533 = zext <8 x i16> %wide.load317 to <8 x i32>
  %534 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %533, <8 x i32> %531)
  %reverse319 = trunc nuw <8 x i32> %534 to <8 x i16>
  store <8 x i16> %reverse319, ptr %532, align 2, !tbaa !60
  %index.next320 = add nuw i64 %index314, 8
  %535 = icmp eq i64 %index.next320, %n.vec309
  br i1 %535, label %scalar.ph305.preheader, label %vector.body313, !llvm.loop !93

scalar.ph305.preheader:                           ; preds = %vector.body313, %517
  %.ph368 = phi ptr [ %522, %517 ], [ %529, %vector.body313 ]
  %.ph369 = phi i32 [ %519, %517 ], [ %530, %vector.body313 ]
  br label %scalar.ph305

scalar.ph305:                                     ; preds = %scalar.ph305.preheader, %545
  %536 = phi ptr [ %538, %545 ], [ %.ph368, %scalar.ph305.preheader ]
  %537 = phi i32 [ %546, %545 ], [ %.ph369, %scalar.ph305.preheader ]
  %538 = getelementptr inbounds i8, ptr %536, i64 -2
  %539 = load i16, ptr %538, align 2, !tbaa !60
  %540 = zext i16 %539 to i32
  %541 = tail call i32 @llvm.usub.sat.i32(i32 %540, i32 %518)
  %542 = trunc nuw i32 %541 to i16
  store i16 %542, ptr %538, align 2, !tbaa !60
  %543 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %537, i32 1), !nosanitize !44
  %544 = extractvalue { i32, i1 } %543, 1, !nosanitize !44
  br i1 %544, label %.loopexit57, label %545, !prof !45, !nosanitize !44

545:                                              ; preds = %scalar.ph305
  %546 = extractvalue { i32, i1 } %543, 0, !nosanitize !44
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %scalar.ph305, !llvm.loop !94

548:                                              ; preds = %545
  %549 = load ptr, ptr %98, align 8, !tbaa !35
  %550 = zext i32 %518 to i64
  %551 = getelementptr inbounds nuw [2 x i8], ptr %549, i64 %550
  %552 = add i32 %518, -1
  %553 = tail call i32 @llvm.umin.i32(i32 %518, i32 %552)
  %min.iters.check286 = icmp ult i32 %553, 8
  br i1 %min.iters.check286, label %scalar.ph285.preheader, label %vector.ph287

vector.ph287:                                     ; preds = %548
  %umin = zext i32 %553 to i64
  %554 = add nuw nsw i64 %umin, 1
  %n.mod.vf288 = and i64 %554, 7
  %555 = icmp eq i64 %n.mod.vf288, 0
  %556 = select i1 %555, i64 8, i64 %n.mod.vf288
  %n.vec289 = sub nsw i64 %554, %556
  %557 = mul nsw i64 %n.vec289, -2
  %558 = getelementptr i8, ptr %551, i64 %557
  %.cast290 = trunc i64 %n.vec289 to i32
  %559 = sub i32 %518, %.cast290
  %broadcast.splatinsert291 = insertelement <8 x i32> poison, i32 %518, i64 0
  %560 = shufflevector <8 x i32> %broadcast.splatinsert291, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body293

vector.body293:                                   ; preds = %vector.body293, %vector.ph287
  %index294 = phi i64 [ 0, %vector.ph287 ], [ %index.next300, %vector.body293 ]
  %offset.idx295 = mul i64 %index294, -2
  %next.gep296 = getelementptr i8, ptr %551, i64 %offset.idx295
  %561 = getelementptr inbounds i8, ptr %next.gep296, i64 -16
  %wide.load297 = load <8 x i16>, ptr %561, align 2, !tbaa !60
  %562 = zext <8 x i16> %wide.load297 to <8 x i32>
  %563 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %562, <8 x i32> %560)
  %reverse299 = trunc nuw <8 x i32> %563 to <8 x i16>
  store <8 x i16> %reverse299, ptr %561, align 2, !tbaa !60
  %index.next300 = add nuw i64 %index294, 8
  %564 = icmp eq i64 %index.next300, %n.vec289
  br i1 %564, label %scalar.ph285.preheader, label %vector.body293, !llvm.loop !95

scalar.ph285.preheader:                           ; preds = %vector.body293, %548
  %.ph = phi ptr [ %551, %548 ], [ %558, %vector.body293 ]
  %.ph367 = phi i32 [ %518, %548 ], [ %559, %vector.body293 ]
  br label %scalar.ph285

scalar.ph285:                                     ; preds = %scalar.ph285.preheader, %574
  %565 = phi ptr [ %567, %574 ], [ %.ph, %scalar.ph285.preheader ]
  %566 = phi i32 [ %575, %574 ], [ %.ph367, %scalar.ph285.preheader ]
  %567 = getelementptr inbounds i8, ptr %565, i64 -2
  %568 = load i16, ptr %567, align 2, !tbaa !60
  %569 = zext i16 %568 to i32
  %570 = tail call i32 @llvm.usub.sat.i32(i32 %569, i32 %518)
  %571 = trunc nuw i32 %570 to i16
  store i16 %571, ptr %567, align 2, !tbaa !60
  %572 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %566, i32 1), !nosanitize !44
  %573 = extractvalue { i32, i1 } %572, 1, !nosanitize !44
  br i1 %573, label %.loopexit56, label %574, !prof !45, !nosanitize !44

574:                                              ; preds = %scalar.ph285
  %575 = extractvalue { i32, i1 } %572, 0, !nosanitize !44
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %scalar.ph285, !llvm.loop !96

577:                                              ; preds = %574
  store i32 1, ptr %99, align 8, !tbaa !61
  %578 = add i32 %.fr51, %480
  %579 = load i32, ptr %82, align 4, !tbaa !73
  br label %580

580:                                              ; preds = %577, %488
  %581 = phi i32 [ %579, %577 ], [ %467, %488 ]
  %582 = phi i32 [ %508, %577 ], [ %474, %488 ]
  %583 = phi i32 [ %578, %577 ], [ %480, %488 ]
  %584 = load ptr, ptr %15, align 8, !tbaa !19
  %585 = getelementptr inbounds nuw i8, ptr %584, i64 8
  %586 = load i32, ptr %585, align 8, !tbaa !79
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %.loopexit69, label %588

588:                                              ; preds = %580
  %589 = load ptr, ptr %92, align 8, !tbaa !34
  %590 = zext i32 %582 to i64
  %591 = getelementptr inbounds nuw i8, ptr %589, i64 %590
  %592 = zext i32 %581 to i64
  %593 = getelementptr inbounds nuw i8, ptr %591, i64 %592
  %594 = tail call i32 @llvm.umin.i32(i32 %586, i32 %583)
  %595 = icmp eq i32 %583, 0
  br i1 %595, label %622, label %596

596:                                              ; preds = %588
  %597 = sub i32 %586, %594
  store i32 %597, ptr %585, align 8, !tbaa !79
  %598 = load ptr, ptr %584, align 8, !tbaa !80
  %599 = zext i32 %594 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %593, ptr align 1 %598, i64 %599, i1 false)
  %600 = getelementptr inbounds nuw i8, ptr %584, i64 56
  %601 = load ptr, ptr %600, align 8, !tbaa !18
  %602 = getelementptr inbounds nuw i8, ptr %601, i64 48
  %603 = load i32, ptr %602, align 8, !tbaa !29
  switch i32 %603, label %612 [
    i32 1, label %608
    i32 2, label %604
  ]

604:                                              ; preds = %596
  %605 = getelementptr inbounds nuw i8, ptr %584, i64 96
  %606 = load i64, ptr %605, align 8, !tbaa !57
  %607 = tail call i64 @crc32(i64 noundef %606, ptr noundef %593, i32 noundef %594) #11
  store i64 %607, ptr %605, align 8, !tbaa !57
  br label %612

608:                                              ; preds = %596
  %609 = getelementptr inbounds nuw i8, ptr %584, i64 96
  %610 = load i64, ptr %609, align 8, !tbaa !57
  %611 = tail call i64 @adler32(i64 noundef %610, ptr noundef %593, i32 noundef %594) #11
  store i64 %611, ptr %609, align 8, !tbaa !57
  br label %612

612:                                              ; preds = %608, %604, %596
  %613 = load ptr, ptr %584, align 8, !tbaa !80
  %614 = getelementptr inbounds nuw i8, ptr %613, i64 %599
  store ptr %614, ptr %584, align 8, !tbaa !80
  %615 = getelementptr inbounds nuw i8, ptr %584, i64 16
  %616 = load i64, ptr %615, align 8, !tbaa !53
  %617 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %616, i64 %599), !nosanitize !44
  %618 = extractvalue { i64, i1 } %617, 1, !nosanitize !44
  br i1 %618, label %.loopexit70, label %619, !prof !45, !nosanitize !44

619:                                              ; preds = %612
  %620 = extractvalue { i64, i1 } %617, 0, !nosanitize !44
  store i64 %620, ptr %615, align 8, !tbaa !53
  %621 = load i32, ptr %82, align 4, !tbaa !73
  br label %622

622:                                              ; preds = %619, %588
  %623 = phi i32 [ %581, %588 ], [ %621, %619 ]
  %624 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %623, i32 %594), !nosanitize !44
  %625 = extractvalue { i32, i1 } %624, 1, !nosanitize !44
  br i1 %625, label %.loopexit71, label %626, !prof !45, !nosanitize !44

626:                                              ; preds = %622
  %627 = extractvalue { i32, i1 } %624, 0, !nosanitize !44
  store i32 %627, ptr %82, align 4, !tbaa !73
  %628 = load i32, ptr %95, align 4, !tbaa !74
  %629 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %627, i32 %628), !nosanitize !44
  %630 = extractvalue { i32, i1 } %629, 1, !nosanitize !44
  br i1 %630, label %.loopexit72, label %631, !prof !45, !nosanitize !44

631:                                              ; preds = %626
  %632 = extractvalue { i32, i1 } %629, 0, !nosanitize !44
  %633 = icmp ugt i32 %632, 2
  br i1 %633, label %634, label %.loopexit.mv.fast

634:                                              ; preds = %631
  %635 = load i32, ptr %90, align 4, !tbaa !71
  %.fr53 = freeze i32 %635
  %636 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr53, i32 %628), !nosanitize !44
  %637 = extractvalue { i32, i1 } %636, 0, !nosanitize !44
  %638 = extractvalue { i32, i1 } %636, 1, !nosanitize !44
  br i1 %638, label %.loopexit73, label %639, !prof !45, !nosanitize !44

639:                                              ; preds = %634
  %640 = load ptr, ptr %92, align 8, !tbaa !34
  %641 = zext i32 %637 to i64
  %642 = getelementptr inbounds nuw i8, ptr %640, i64 %641
  %643 = load i8, ptr %642, align 1, !tbaa !5
  %644 = zext i8 %643 to i32
  store i32 %644, ptr %100, align 8, !tbaa !78
  %645 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %637, i32 1), !nosanitize !44
  %646 = extractvalue { i32, i1 } %645, 1, !nosanitize !44
  br i1 %646, label %.loopexit74, label %647, !prof !45, !nosanitize !44

647:                                              ; preds = %639
  %648 = extractvalue { i32, i1 } %645, 0, !nosanitize !44
  %649 = load i32, ptr %101, align 8, !tbaa !52
  %650 = shl i32 %644, %649
  %651 = zext i32 %648 to i64
  %652 = getelementptr inbounds nuw i8, ptr %640, i64 %651
  %653 = load i8, ptr %652, align 1, !tbaa !5
  %654 = zext i8 %653 to i32
  %655 = xor i32 %650, %654
  %656 = load i32, ptr %102, align 4, !tbaa !51
  %657 = and i32 %655, %656
  store i32 %657, ptr %100, align 8, !tbaa !78
  %mv.h.mv.fast = icmp sgt i32 %.fr53, -1
  br i1 %mv.h.mv.fast, label %.mv.ph.mv.fast.mv.fast, label %.mv.ph.mv.fast4

.mv.ph.mv.fast4:                                  ; preds = %647, %665
  %658 = phi i32 [ %674, %665 ], [ %657, %647 ]
  %659 = phi i32 [ %685, %665 ], [ %628, %647 ]
  %660 = phi i32 [ %686, %665 ], [ %637, %647 ]
  %661 = icmp eq i32 %659, 0
  br i1 %661, label %.loopexit.mv.fast, label %662

662:                                              ; preds = %.mv.ph.mv.fast4
  %663 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %660, i32 3), !nosanitize !44
  %664 = extractvalue { i32, i1 } %663, 1, !nosanitize !44
  br i1 %664, label %.loopexit55, label %665, !prof !45, !nosanitize !44

665:                                              ; preds = %662
  %666 = shl i32 %658, %649
  %667 = extractvalue { i32, i1 } %663, 0, !nosanitize !44
  %668 = add i32 %667, -1
  %669 = zext i32 %668 to i64
  %670 = getelementptr inbounds nuw i8, ptr %640, i64 %669
  %671 = load i8, ptr %670, align 1, !tbaa !5
  %672 = zext i8 %671 to i32
  %673 = xor i32 %666, %672
  %674 = and i32 %673, %656
  store i32 %674, ptr %100, align 8, !tbaa !78
  %675 = load ptr, ptr %97, align 8, !tbaa !37
  %676 = zext i32 %674 to i64
  %677 = getelementptr inbounds nuw [2 x i8], ptr %675, i64 %676
  %678 = load i16, ptr %677, align 2, !tbaa !60
  %679 = load ptr, ptr %98, align 8, !tbaa !35
  %680 = load i32, ptr %103, align 8, !tbaa !32
  %681 = and i32 %680, %660
  %682 = zext i32 %681 to i64
  %683 = getelementptr inbounds nuw [2 x i8], ptr %679, i64 %682
  store i16 %678, ptr %683, align 2, !tbaa !60
  %684 = trunc i32 %660 to i16
  store i16 %684, ptr %677, align 2, !tbaa !60
  %685 = add i32 %659, -1
  store i32 %685, ptr %95, align 4, !tbaa !74
  %686 = add nuw i32 %660, 1
  %687 = add i32 %685, %627
  %688 = icmp ult i32 %687, 3
  br i1 %688, label %.loopexit.mv.fast, label %.mv.ph.mv.fast4, !llvm.loop !89

.loopexit.mv.fast:                                ; preds = %.mv.ph.mv.fast4, %665, %.mv.ph.mv.fast.mv.fast, %698, %631
  %689 = icmp ult i32 %627, 262
  br i1 %689, label %690, label %.loopexit69

690:                                              ; preds = %.loopexit.mv.fast
  %691 = load ptr, ptr %15, align 8, !tbaa !19
  %692 = getelementptr inbounds nuw i8, ptr %691, i64 8
  %693 = load i32, ptr %692, align 8, !tbaa !79
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %.loopexit69, label %.mv.ph3.mv.fast, !llvm.loop !90

.mv.ph.mv.fast.mv.fast:                           ; preds = %647, %698
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %698 ], [ %641, %647 ]
  %695 = phi i32 [ %707, %698 ], [ %657, %647 ]
  %696 = phi i32 [ %718, %698 ], [ %628, %647 ]
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %.loopexit.mv.fast, label %698

698:                                              ; preds = %.mv.ph.mv.fast.mv.fast
  %699 = shl i32 %695, %649
  %700 = trunc nuw i64 %indvars.iv148 to i32
  %701 = add nuw i64 %indvars.iv148, 2
  %702 = and i64 %701, 4294967295
  %703 = getelementptr inbounds nuw i8, ptr %640, i64 %702
  %704 = load i8, ptr %703, align 1, !tbaa !5
  %705 = zext i8 %704 to i32
  %706 = xor i32 %699, %705
  %707 = and i32 %706, %656
  store i32 %707, ptr %100, align 8, !tbaa !78
  %708 = load ptr, ptr %97, align 8, !tbaa !37
  %709 = zext i32 %707 to i64
  %710 = getelementptr inbounds nuw [2 x i8], ptr %708, i64 %709
  %711 = load i16, ptr %710, align 2, !tbaa !60
  %712 = load ptr, ptr %98, align 8, !tbaa !35
  %713 = load i32, ptr %103, align 8, !tbaa !32
  %714 = and i32 %713, %700
  %715 = zext i32 %714 to i64
  %716 = getelementptr inbounds nuw [2 x i8], ptr %712, i64 %715
  store i16 %711, ptr %716, align 2, !tbaa !60
  %717 = trunc i64 %indvars.iv148 to i16
  store i16 %717, ptr %710, align 2, !tbaa !60
  %718 = add i32 %696, -1
  store i32 %718, ptr %95, align 4, !tbaa !74
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1
  %719 = add i32 %718, %627
  %720 = icmp ult i32 %719, 3
  br i1 %720, label %.loopexit.mv.fast, label %.mv.ph.mv.fast.mv.fast, !llvm.loop !89

.mv.ph3:                                          ; preds = %.loopexit89, %974
  %721 = phi i32 [ %885, %974 ], [ 2, %.loopexit89 ]
  %722 = load i64, ptr %89, align 8, !tbaa !59
  %723 = zext nneg i32 %721 to i64
  %724 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %722, i64 %723), !nosanitize !44
  %725 = extractvalue { i64, i1 } %724, 1, !nosanitize !44
  br i1 %725, label %.loopexit62, label %726, !prof !45, !nosanitize !44

.loopexit62:                                      ; preds = %.mv.ph3, %.mv.ph3.mv.fast
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

726:                                              ; preds = %.mv.ph3
  %727 = extractvalue { i64, i1 } %724, 0, !nosanitize !44
  %728 = load i32, ptr %90, align 4, !tbaa !71
  %729 = zext i32 %728 to i64
  %730 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %727, i64 %729), !nosanitize !44
  %731 = extractvalue { i64, i1 } %730, 1, !nosanitize !44
  br i1 %731, label %.loopexit63, label %732, !prof !45, !nosanitize !44

.loopexit63:                                      ; preds = %726, %472
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

732:                                              ; preds = %726
  %733 = extractvalue { i64, i1 } %730, 0, !nosanitize !44
  %734 = trunc i64 %733 to i32
  %735 = load i32, ptr %81, align 8, !tbaa !31
  %736 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %735, i32 262), !nosanitize !44
  %737 = extractvalue { i32, i1 } %736, 1, !nosanitize !44
  br i1 %737, label %.loopexit64, label %738, !prof !45, !nosanitize !44

.loopexit64:                                      ; preds = %732, %478
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

738:                                              ; preds = %732
  %739 = extractvalue { i32, i1 } %736, 0, !nosanitize !44
  %740 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.fr51, i32 %739), !nosanitize !44
  %741 = extractvalue { i32, i1 } %740, 1, !nosanitize !44
  br i1 %741, label %.loopexit65, label %742, !prof !45, !nosanitize !44

.loopexit65:                                      ; preds = %738, %484
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

742:                                              ; preds = %738
  %743 = extractvalue { i32, i1 } %740, 0, !nosanitize !44
  %744 = icmp ult i32 %728, %743
  br i1 %744, label %838, label %745

745:                                              ; preds = %742
  %746 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr51, i32 %734), !nosanitize !44
  %747 = extractvalue { i32, i1 } %746, 1, !nosanitize !44
  br i1 %747, label %.loopexit66, label %748, !prof !45, !nosanitize !44

.loopexit66:                                      ; preds = %745, %491
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

748:                                              ; preds = %745
  %749 = extractvalue { i32, i1 } %746, 0, !nosanitize !44
  %750 = load ptr, ptr %92, align 8, !tbaa !34
  %751 = getelementptr inbounds nuw i8, ptr %750, i64 %466
  %752 = zext i32 %749 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %750, ptr nonnull align 1 %751, i64 %752, i1 false)
  %753 = load i32, ptr %93, align 8, !tbaa !81
  %754 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %753, i32 %.fr51), !nosanitize !44
  %755 = extractvalue { i32, i1 } %754, 1, !nosanitize !44
  br i1 %755, label %.loopexit67, label %756, !prof !45, !nosanitize !44

.loopexit67:                                      ; preds = %748, %494
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

756:                                              ; preds = %748
  %757 = extractvalue { i32, i1 } %754, 0, !nosanitize !44
  store i32 %757, ptr %93, align 8, !tbaa !81
  %758 = load i32, ptr %90, align 4, !tbaa !71
  %759 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %758, i32 %.fr51), !nosanitize !44
  %760 = extractvalue { i32, i1 } %759, 1, !nosanitize !44
  br i1 %760, label %.loopexit68, label %761, !prof !45, !nosanitize !44

.loopexit68:                                      ; preds = %761, %756, %507, %502
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

761:                                              ; preds = %756
  %762 = extractvalue { i32, i1 } %759, 0, !nosanitize !44
  store i32 %762, ptr %90, align 4, !tbaa !71
  %763 = load i64, ptr %94, align 8, !tbaa !72
  %764 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %763, i64 %466), !nosanitize !44
  %765 = extractvalue { i64, i1 } %764, 1, !nosanitize !44
  br i1 %765, label %.loopexit68, label %766, !prof !45, !nosanitize !44

766:                                              ; preds = %761
  %767 = extractvalue { i64, i1 } %764, 0, !nosanitize !44
  store i64 %767, ptr %94, align 8, !tbaa !72
  %768 = load i32, ptr %95, align 4, !tbaa !74
  %769 = icmp ugt i32 %768, %762
  br i1 %769, label %770, label %771

770:                                              ; preds = %766
  store i32 %762, ptr %95, align 4, !tbaa !74
  br label %771

771:                                              ; preds = %770, %766
  %772 = load i32, ptr %81, align 8, !tbaa !31
  %773 = load i32, ptr %96, align 4, !tbaa !36
  %774 = load ptr, ptr %97, align 8, !tbaa !37
  %775 = zext i32 %773 to i64
  %776 = getelementptr inbounds nuw [2 x i8], ptr %774, i64 %775
  %777 = add i32 %773, -1
  %778 = tail call i32 @llvm.umin.i32(i32 %773, i32 %777)
  %min.iters.check346 = icmp ult i32 %778, 8
  br i1 %min.iters.check346, label %scalar.ph345.preheader, label %vector.ph347

vector.ph347:                                     ; preds = %771
  %umin344 = zext i32 %778 to i64
  %779 = add nuw nsw i64 %umin344, 1
  %n.mod.vf348 = and i64 %779, 7
  %780 = icmp eq i64 %n.mod.vf348, 0
  %781 = select i1 %780, i64 8, i64 %n.mod.vf348
  %n.vec349 = sub nsw i64 %779, %781
  %782 = mul nsw i64 %n.vec349, -2
  %783 = getelementptr i8, ptr %776, i64 %782
  %.cast350 = trunc i64 %n.vec349 to i32
  %784 = sub i32 %773, %.cast350
  %broadcast.splatinsert351 = insertelement <8 x i32> poison, i32 %772, i64 0
  %785 = shufflevector <8 x i32> %broadcast.splatinsert351, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph347
  %index354 = phi i64 [ 0, %vector.ph347 ], [ %index.next360, %vector.body353 ]
  %offset.idx355 = mul i64 %index354, -2
  %next.gep356 = getelementptr i8, ptr %776, i64 %offset.idx355
  %786 = getelementptr inbounds i8, ptr %next.gep356, i64 -16
  %wide.load357 = load <8 x i16>, ptr %786, align 2, !tbaa !60
  %787 = zext <8 x i16> %wide.load357 to <8 x i32>
  %788 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %787, <8 x i32> %785)
  %reverse359 = trunc nuw <8 x i32> %788 to <8 x i16>
  store <8 x i16> %reverse359, ptr %786, align 2, !tbaa !60
  %index.next360 = add nuw i64 %index354, 8
  %789 = icmp eq i64 %index.next360, %n.vec349
  br i1 %789, label %scalar.ph345.preheader, label %vector.body353, !llvm.loop !97

scalar.ph345.preheader:                           ; preds = %vector.body353, %771
  %.ph375 = phi ptr [ %776, %771 ], [ %783, %vector.body353 ]
  %.ph376 = phi i32 [ %773, %771 ], [ %784, %vector.body353 ]
  br label %scalar.ph345

scalar.ph345:                                     ; preds = %scalar.ph345.preheader, %799
  %790 = phi ptr [ %792, %799 ], [ %.ph375, %scalar.ph345.preheader ]
  %791 = phi i32 [ %800, %799 ], [ %.ph376, %scalar.ph345.preheader ]
  %792 = getelementptr inbounds i8, ptr %790, i64 -2
  %793 = load i16, ptr %792, align 2, !tbaa !60
  %794 = zext i16 %793 to i32
  %795 = tail call i32 @llvm.usub.sat.i32(i32 %794, i32 %772)
  %796 = trunc nuw i32 %795 to i16
  store i16 %796, ptr %792, align 2, !tbaa !60
  %797 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %791, i32 1), !nosanitize !44
  %798 = extractvalue { i32, i1 } %797, 1, !nosanitize !44
  br i1 %798, label %.loopexit57, label %799, !prof !45, !nosanitize !44

.loopexit57:                                      ; preds = %scalar.ph345, %scalar.ph305
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

799:                                              ; preds = %scalar.ph345
  %800 = extractvalue { i32, i1 } %797, 0, !nosanitize !44
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %scalar.ph345, !llvm.loop !98

802:                                              ; preds = %799
  %803 = load ptr, ptr %98, align 8, !tbaa !35
  %804 = zext i32 %772 to i64
  %805 = getelementptr inbounds nuw [2 x i8], ptr %803, i64 %804
  %806 = add i32 %772, -1
  %807 = tail call i32 @llvm.umin.i32(i32 %772, i32 %806)
  %min.iters.check326 = icmp ult i32 %807, 8
  br i1 %min.iters.check326, label %scalar.ph325.preheader, label %vector.ph327

vector.ph327:                                     ; preds = %802
  %umin324 = zext i32 %807 to i64
  %808 = add nuw nsw i64 %umin324, 1
  %n.mod.vf328 = and i64 %808, 7
  %809 = icmp eq i64 %n.mod.vf328, 0
  %810 = select i1 %809, i64 8, i64 %n.mod.vf328
  %n.vec329 = sub nsw i64 %808, %810
  %811 = mul nsw i64 %n.vec329, -2
  %812 = getelementptr i8, ptr %805, i64 %811
  %.cast330 = trunc i64 %n.vec329 to i32
  %813 = sub i32 %772, %.cast330
  %broadcast.splatinsert331 = insertelement <8 x i32> poison, i32 %772, i64 0
  %814 = shufflevector <8 x i32> %broadcast.splatinsert331, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph327
  %index334 = phi i64 [ 0, %vector.ph327 ], [ %index.next340, %vector.body333 ]
  %offset.idx335 = mul i64 %index334, -2
  %next.gep336 = getelementptr i8, ptr %805, i64 %offset.idx335
  %815 = getelementptr inbounds i8, ptr %next.gep336, i64 -16
  %wide.load337 = load <8 x i16>, ptr %815, align 2, !tbaa !60
  %816 = zext <8 x i16> %wide.load337 to <8 x i32>
  %817 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %816, <8 x i32> %814)
  %reverse339 = trunc nuw <8 x i32> %817 to <8 x i16>
  store <8 x i16> %reverse339, ptr %815, align 2, !tbaa !60
  %index.next340 = add nuw i64 %index334, 8
  %818 = icmp eq i64 %index.next340, %n.vec329
  br i1 %818, label %scalar.ph325.preheader, label %vector.body333, !llvm.loop !99

scalar.ph325.preheader:                           ; preds = %vector.body333, %802
  %.ph372 = phi ptr [ %805, %802 ], [ %812, %vector.body333 ]
  %.ph373 = phi i32 [ %772, %802 ], [ %813, %vector.body333 ]
  br label %scalar.ph325

scalar.ph325:                                     ; preds = %scalar.ph325.preheader, %828
  %819 = phi ptr [ %821, %828 ], [ %.ph372, %scalar.ph325.preheader ]
  %820 = phi i32 [ %829, %828 ], [ %.ph373, %scalar.ph325.preheader ]
  %821 = getelementptr inbounds i8, ptr %819, i64 -2
  %822 = load i16, ptr %821, align 2, !tbaa !60
  %823 = zext i16 %822 to i32
  %824 = tail call i32 @llvm.usub.sat.i32(i32 %823, i32 %772)
  %825 = trunc nuw i32 %824 to i16
  store i16 %825, ptr %821, align 2, !tbaa !60
  %826 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %820, i32 1), !nosanitize !44
  %827 = extractvalue { i32, i1 } %826, 1, !nosanitize !44
  br i1 %827, label %.loopexit56, label %828, !prof !45, !nosanitize !44

.loopexit56:                                      ; preds = %scalar.ph325, %scalar.ph285
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

828:                                              ; preds = %scalar.ph325
  %829 = extractvalue { i32, i1 } %826, 0, !nosanitize !44
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %831, label %scalar.ph325, !llvm.loop !100

831:                                              ; preds = %828
  store i32 1, ptr %99, align 8, !tbaa !61
  %832 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %734, i32 %.fr51), !nosanitize !44
  %833 = extractvalue { i32, i1 } %832, 1, !nosanitize !44
  br i1 %833, label %834, label %835, !prof !45, !nosanitize !44

834:                                              ; preds = %831
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

835:                                              ; preds = %831
  %836 = extractvalue { i32, i1 } %832, 0, !nosanitize !44
  %837 = load i32, ptr %82, align 4, !tbaa !73
  br label %838

838:                                              ; preds = %835, %742
  %839 = phi i32 [ %837, %835 ], [ %721, %742 ]
  %840 = phi i32 [ %762, %835 ], [ %728, %742 ]
  %841 = phi i32 [ %836, %835 ], [ %734, %742 ]
  %842 = load ptr, ptr %15, align 8, !tbaa !19
  %843 = getelementptr inbounds nuw i8, ptr %842, i64 8
  %844 = load i32, ptr %843, align 8, !tbaa !79
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %.loopexit69, label %846

846:                                              ; preds = %838
  %847 = load ptr, ptr %92, align 8, !tbaa !34
  %848 = zext i32 %840 to i64
  %849 = getelementptr inbounds nuw i8, ptr %847, i64 %848
  %850 = zext i32 %839 to i64
  %851 = getelementptr inbounds nuw i8, ptr %849, i64 %850
  %852 = tail call i32 @llvm.umin.i32(i32 %844, i32 %841)
  %853 = icmp eq i32 %841, 0
  br i1 %853, label %880, label %854

854:                                              ; preds = %846
  %855 = sub i32 %844, %852
  store i32 %855, ptr %843, align 8, !tbaa !79
  %856 = load ptr, ptr %842, align 8, !tbaa !80
  %857 = zext i32 %852 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %851, ptr align 1 %856, i64 %857, i1 false)
  %858 = getelementptr inbounds nuw i8, ptr %842, i64 56
  %859 = load ptr, ptr %858, align 8, !tbaa !18
  %860 = getelementptr inbounds nuw i8, ptr %859, i64 48
  %861 = load i32, ptr %860, align 8, !tbaa !29
  switch i32 %861, label %870 [
    i32 1, label %862
    i32 2, label %866
  ]

862:                                              ; preds = %854
  %863 = getelementptr inbounds nuw i8, ptr %842, i64 96
  %864 = load i64, ptr %863, align 8, !tbaa !57
  %865 = tail call i64 @adler32(i64 noundef %864, ptr noundef %851, i32 noundef %852) #11
  store i64 %865, ptr %863, align 8, !tbaa !57
  br label %870

866:                                              ; preds = %854
  %867 = getelementptr inbounds nuw i8, ptr %842, i64 96
  %868 = load i64, ptr %867, align 8, !tbaa !57
  %869 = tail call i64 @crc32(i64 noundef %868, ptr noundef %851, i32 noundef %852) #11
  store i64 %869, ptr %867, align 8, !tbaa !57
  br label %870

870:                                              ; preds = %866, %862, %854
  %871 = load ptr, ptr %842, align 8, !tbaa !80
  %872 = getelementptr inbounds nuw i8, ptr %871, i64 %857
  store ptr %872, ptr %842, align 8, !tbaa !80
  %873 = getelementptr inbounds nuw i8, ptr %842, i64 16
  %874 = load i64, ptr %873, align 8, !tbaa !53
  %875 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %874, i64 %857), !nosanitize !44
  %876 = extractvalue { i64, i1 } %875, 1, !nosanitize !44
  br i1 %876, label %.loopexit70, label %877, !prof !45, !nosanitize !44

.loopexit70:                                      ; preds = %870, %612
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

877:                                              ; preds = %870
  %878 = extractvalue { i64, i1 } %875, 0, !nosanitize !44
  store i64 %878, ptr %873, align 8, !tbaa !53
  %879 = load i32, ptr %82, align 4, !tbaa !73
  br label %880

880:                                              ; preds = %877, %846
  %881 = phi i32 [ %839, %846 ], [ %879, %877 ]
  %882 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %881, i32 %852), !nosanitize !44
  %883 = extractvalue { i32, i1 } %882, 1, !nosanitize !44
  br i1 %883, label %.loopexit71, label %884, !prof !45, !nosanitize !44

.loopexit71:                                      ; preds = %880, %622
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

884:                                              ; preds = %880
  %885 = extractvalue { i32, i1 } %882, 0, !nosanitize !44
  store i32 %885, ptr %82, align 4, !tbaa !73
  %886 = load i32, ptr %95, align 4, !tbaa !74
  %887 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %885, i32 %886), !nosanitize !44
  %888 = extractvalue { i32, i1 } %887, 1, !nosanitize !44
  br i1 %888, label %.loopexit72, label %889, !prof !45, !nosanitize !44

.loopexit72:                                      ; preds = %884, %626
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

889:                                              ; preds = %884
  %890 = extractvalue { i32, i1 } %887, 0, !nosanitize !44
  %891 = icmp ugt i32 %890, 2
  br i1 %891, label %892, label %.loopexit

892:                                              ; preds = %889
  %893 = load i32, ptr %90, align 4, !tbaa !71
  %.fr52 = freeze i32 %893
  %894 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr52, i32 %886), !nosanitize !44
  %895 = extractvalue { i32, i1 } %894, 0, !nosanitize !44
  %896 = extractvalue { i32, i1 } %894, 1, !nosanitize !44
  br i1 %896, label %.loopexit73, label %897, !prof !45, !nosanitize !44

.loopexit73:                                      ; preds = %892, %634
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

897:                                              ; preds = %892
  %898 = load ptr, ptr %92, align 8, !tbaa !34
  %899 = zext i32 %895 to i64
  %900 = getelementptr inbounds nuw i8, ptr %898, i64 %899
  %901 = load i8, ptr %900, align 1, !tbaa !5
  %902 = zext i8 %901 to i32
  store i32 %902, ptr %100, align 8, !tbaa !78
  %903 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %895, i32 1), !nosanitize !44
  %904 = extractvalue { i32, i1 } %903, 1, !nosanitize !44
  br i1 %904, label %.loopexit74, label %905, !prof !45, !nosanitize !44

.loopexit74:                                      ; preds = %897, %639
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

905:                                              ; preds = %897
  %906 = extractvalue { i32, i1 } %903, 0, !nosanitize !44
  %907 = load i32, ptr %101, align 8, !tbaa !52
  %908 = shl i32 %902, %907
  %909 = zext i32 %906 to i64
  %910 = getelementptr inbounds nuw i8, ptr %898, i64 %909
  %911 = load i8, ptr %910, align 1, !tbaa !5
  %912 = zext i8 %911 to i32
  %913 = xor i32 %908, %912
  %914 = load i32, ptr %102, align 4, !tbaa !51
  %915 = and i32 %913, %914
  store i32 %915, ptr %100, align 8, !tbaa !78
  %mv.h = icmp sgt i32 %.fr52, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %905, %919
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %919 ], [ %899, %905 ]
  %916 = phi i32 [ %928, %919 ], [ %915, %905 ]
  %917 = phi i32 [ %939, %919 ], [ %886, %905 ]
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %.loopexit, label %919

919:                                              ; preds = %.mv.ph.mv.fast
  %920 = shl i32 %916, %907
  %921 = trunc nuw i64 %indvars.iv145 to i32
  %922 = add nuw i64 %indvars.iv145, 2
  %923 = and i64 %922, 4294967295
  %924 = getelementptr inbounds nuw i8, ptr %898, i64 %923
  %925 = load i8, ptr %924, align 1, !tbaa !5
  %926 = zext i8 %925 to i32
  %927 = xor i32 %920, %926
  %928 = and i32 %927, %914
  store i32 %928, ptr %100, align 8, !tbaa !78
  %929 = load ptr, ptr %97, align 8, !tbaa !37
  %930 = zext i32 %928 to i64
  %931 = getelementptr inbounds nuw [2 x i8], ptr %929, i64 %930
  %932 = load i16, ptr %931, align 2, !tbaa !60
  %933 = load ptr, ptr %98, align 8, !tbaa !35
  %934 = load i32, ptr %103, align 8, !tbaa !32
  %935 = and i32 %934, %921
  %936 = zext i32 %935 to i64
  %937 = getelementptr inbounds nuw [2 x i8], ptr %933, i64 %936
  store i16 %932, ptr %937, align 2, !tbaa !60
  %938 = trunc i64 %indvars.iv145 to i16
  store i16 %938, ptr %931, align 2, !tbaa !60
  %939 = add i32 %917, -1
  store i32 %939, ptr %95, align 4, !tbaa !74
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  %940 = add i32 %939, %885
  %941 = icmp ult i32 %940, 3
  br i1 %941, label %.loopexit, label %.mv.ph.mv.fast, !llvm.loop !89

.mv.ph:                                           ; preds = %905, %949
  %942 = phi i32 [ %958, %949 ], [ %915, %905 ]
  %943 = phi i32 [ %969, %949 ], [ %886, %905 ]
  %944 = phi i32 [ %970, %949 ], [ %895, %905 ]
  %945 = icmp eq i32 %943, 0
  br i1 %945, label %.loopexit, label %946

946:                                              ; preds = %.mv.ph
  %947 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %944, i32 3), !nosanitize !44
  %948 = extractvalue { i32, i1 } %947, 1, !nosanitize !44
  br i1 %948, label %.loopexit55, label %949, !prof !45, !nosanitize !44

.loopexit55:                                      ; preds = %946, %662
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

949:                                              ; preds = %946
  %950 = shl i32 %942, %907
  %951 = extractvalue { i32, i1 } %947, 0, !nosanitize !44
  %952 = add i32 %951, -1
  %953 = zext i32 %952 to i64
  %954 = getelementptr inbounds nuw i8, ptr %898, i64 %953
  %955 = load i8, ptr %954, align 1, !tbaa !5
  %956 = zext i8 %955 to i32
  %957 = xor i32 %950, %956
  %958 = and i32 %957, %914
  store i32 %958, ptr %100, align 8, !tbaa !78
  %959 = load ptr, ptr %97, align 8, !tbaa !37
  %960 = zext i32 %958 to i64
  %961 = getelementptr inbounds nuw [2 x i8], ptr %959, i64 %960
  %962 = load i16, ptr %961, align 2, !tbaa !60
  %963 = load ptr, ptr %98, align 8, !tbaa !35
  %964 = load i32, ptr %103, align 8, !tbaa !32
  %965 = and i32 %964, %944
  %966 = zext i32 %965 to i64
  %967 = getelementptr inbounds nuw [2 x i8], ptr %963, i64 %966
  store i16 %962, ptr %967, align 2, !tbaa !60
  %968 = trunc i32 %944 to i16
  store i16 %968, ptr %961, align 2, !tbaa !60
  %969 = add i32 %943, -1
  store i32 %969, ptr %95, align 4, !tbaa !74
  %970 = add nuw i32 %944, 1
  %971 = add i32 %969, %885
  %972 = icmp ult i32 %971, 3
  br i1 %972, label %.loopexit, label %.mv.ph, !llvm.loop !89

.loopexit:                                        ; preds = %.mv.ph, %949, %.mv.ph.mv.fast, %919, %889
  %973 = icmp ult i32 %885, 262
  br i1 %973, label %974, label %.loopexit69

974:                                              ; preds = %.loopexit
  %975 = load ptr, ptr %15, align 8, !tbaa !19
  %976 = getelementptr inbounds nuw i8, ptr %975, i64 8
  %977 = load i32, ptr %976, align 8, !tbaa !79
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %.loopexit69, label %.mv.ph3, !llvm.loop !90

.loopexit69:                                      ; preds = %974, %.loopexit, %838, %690, %.loopexit.mv.fast, %580
  %979 = phi i32 [ %627, %690 ], [ %581, %580 ], [ %627, %.loopexit.mv.fast ], [ %839, %838 ], [ %885, %.loopexit ], [ %885, %974 ]
  %980 = load i64, ptr %366, align 8, !tbaa !38
  %981 = load i64, ptr %89, align 8, !tbaa !59
  %982 = icmp ult i64 %980, %981
  br i1 %982, label %983, label %1018

983:                                              ; preds = %.loopexit69
  %984 = load i32, ptr %90, align 4, !tbaa !71
  %985 = zext i32 %984 to i64
  %986 = zext i32 %979 to i64
  %987 = add nuw nsw i64 %985, %986
  %988 = icmp ult i64 %980, %987
  br i1 %988, label %989, label %999

989:                                              ; preds = %983
  %990 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %981, i64 %987), !nosanitize !44
  %991 = extractvalue { i64, i1 } %990, 1, !nosanitize !44
  br i1 %991, label %992, label %993, !prof !45, !nosanitize !44

992:                                              ; preds = %989
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

993:                                              ; preds = %989
  %994 = extractvalue { i64, i1 } %990, 0, !nosanitize !44
  %995 = tail call i64 @llvm.umin.i64(i64 %994, i64 258)
  %996 = load ptr, ptr %92, align 8, !tbaa !34
  %997 = getelementptr inbounds nuw i8, ptr %996, i64 %987
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %997, i8 0, i64 %995, i1 false)
  %998 = add nuw nsw i64 %995, %987
  br label %1015

999:                                              ; preds = %983
  %1000 = add nuw nsw i64 %987, 258
  %1001 = icmp ult i64 %980, %1000
  br i1 %1001, label %1002, label %1018

1002:                                             ; preds = %999
  %1003 = sub nuw nsw i64 %1000, %980
  %1004 = sub i64 %981, %980
  %1005 = tail call i64 @llvm.umin.i64(i64 %1003, i64 %1004)
  %1006 = load ptr, ptr %92, align 8, !tbaa !34
  %1007 = getelementptr inbounds nuw i8, ptr %1006, i64 %980
  %1008 = and i64 %1005, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %1007, i8 0, i64 %1008, i1 false)
  %1009 = load i64, ptr %366, align 8, !tbaa !38
  %1010 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1009, i64 %1005), !nosanitize !44
  %1011 = extractvalue { i64, i1 } %1010, 1, !nosanitize !44
  br i1 %1011, label %1012, label %1013, !prof !45, !nosanitize !44

1012:                                             ; preds = %1002
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1013:                                             ; preds = %1002
  %1014 = extractvalue { i64, i1 } %1010, 0, !nosanitize !44
  br label %1015

1015:                                             ; preds = %1013, %993
  %1016 = phi i64 [ %998, %993 ], [ %1014, %1013 ]
  store i64 %1016, ptr %366, align 8, !tbaa !38
  %1017 = load i32, ptr %82, align 4, !tbaa !73
  br label %1018

1018:                                             ; preds = %1015, %999, %.loopexit69
  %1019 = phi i32 [ %979, %.loopexit69 ], [ %979, %999 ], [ %1017, %1015 ]
  %1020 = icmp ugt i32 %1019, 2
  br i1 %1020, label %.preheader, label %.loopexit91, !llvm.loop !101

.loopexit91:                                      ; preds = %1018, %405
  %1021 = phi i32 [ %406, %405 ], [ %1019, %1018 ]
  %1022 = load i32, ptr %90, align 4, !tbaa !71
  %1023 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1022, i32 %1021), !nosanitize !44
  %1024 = extractvalue { i32, i1 } %1023, 1, !nosanitize !44
  br i1 %1024, label %1025, label %1026, !prof !45, !nosanitize !44

1025:                                             ; preds = %.loopexit91
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1026:                                             ; preds = %.loopexit91
  %1027 = extractvalue { i32, i1 } %1023, 0, !nosanitize !44
  store i32 %1027, ptr %90, align 4, !tbaa !71
  %1028 = zext i32 %1027 to i64
  store i64 %1028, ptr %94, align 8, !tbaa !72
  store i32 %1021, ptr %95, align 4, !tbaa !74
  store i32 0, ptr %82, align 4, !tbaa !73
  %1029 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %1029, align 8, !tbaa !75
  %1030 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %1030, align 8, !tbaa !76
  %1031 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %1031, align 8, !tbaa !77
  store ptr %88, ptr %0, align 8, !tbaa !80
  store i32 %87, ptr %86, align 8, !tbaa !79
  store i32 %27, ptr %26, align 8, !tbaa !29
  br label %1032

1032:                                             ; preds = %1026, %34, %30, %28, %25, %23, %20, %17, %13, %9, %5, %3
  %1033 = phi i32 [ 0, %1026 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %1033
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
  store ptr %1, ptr %27, align 8, !tbaa !102
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
  %27 = load i32, ptr %26, align 4, !tbaa !103
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
  %26 = load i32, ptr %25, align 8, !tbaa !104
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

35:                                               ; preds = %58, %32
  %36 = phi i32 [ %60, %58 ], [ %1, %32 ]
  %37 = phi i32 [ %61, %58 ], [ %2, %32 ]
  %38 = load i32, ptr %33, align 4, !tbaa !103
  %39 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %38), !nosanitize !44
  %40 = extractvalue { i32, i1 } %39, 1, !nosanitize !44
  br i1 %40, label %41, label %42, !prof !45, !nosanitize !44

41:                                               ; preds = %42, %35
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
  %52 = load i16, ptr %34, align 8, !tbaa !105
  %53 = trunc i32 %51 to i16
  %54 = or i16 %52, %53
  store i16 %54, ptr %34, align 8, !tbaa !105
  %55 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 %44), !nosanitize !44
  %56 = extractvalue { i32, i1 } %55, 1, !nosanitize !44
  br i1 %56, label %57, label %58, !prof !45, !nosanitize !44

57:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !44
  unreachable, !nosanitize !44

58:                                               ; preds = %48
  %59 = extractvalue { i32, i1 } %55, 0, !nosanitize !44
  store i32 %59, ptr %33, align 4, !tbaa !103
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #11
  %60 = sub i32 %36, %44
  %61 = ashr i32 %37, %44
  %62 = icmp eq i32 %60, 0
  br i1 %62, label %.loopexit, label %35, !llvm.loop !106

.loopexit:                                        ; preds = %58, %25, %23, %20, %17, %13, %9, %5, %3
  %63 = phi i32 [ -5, %25 ], [ -5, %23 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ], [ 0, %58 ]
  ret i32 %63
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1091, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1091, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1091, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1091, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1091

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %1091 [
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
  br i1 %28, label %1091, label %29

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
  %38 = load ptr, ptr %37, align 8, !tbaa !107
  %39 = zext nneg i32 %25 to i64
  %.split37 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %39
  %40 = getelementptr inbounds nuw i8, ptr %.split37, i64 8
  %41 = load ptr, ptr %40, align 8, !tbaa !107
  %42 = icmp eq ptr %38, %41
  br i1 %42, label %1048, label %43

43:                                               ; preds = %34, %29
  %44 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %45 = load i32, ptr %44, align 4, !tbaa !58
  %46 = icmp eq i32 %45, -2
  br i1 %46, label %1048, label %47

47:                                               ; preds = %43
  switch i32 %22, label %1091 [
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
  %50 = load ptr, ptr %49, align 8, !tbaa !108
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
  br label %1091

66:                                               ; preds = %61, %56
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %68 = load i32, ptr %67, align 8, !tbaa !109
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %71, ptr %72, align 8, !tbaa !8
  br label %1025

73:                                               ; preds = %66
  store i32 5, ptr %44, align 4, !tbaa !58
  %74 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %75 = load i64, ptr %74, align 8, !tbaa !55
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %122, label %77

77:                                               ; preds = %73
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #11
  %78 = load i64, ptr %74, align 8, !tbaa !55
  %79 = load i32, ptr %67, align 8, !tbaa !109
  %80 = zext i32 %79 to i64
  %81 = tail call i64 @llvm.umin.i64(i64 %78, i64 %80)
  %82 = trunc nuw i64 %81 to i32
  %83 = icmp eq i64 %81, 0
  br i1 %83, label %115, label %84

84:                                               ; preds = %77
  %85 = load ptr, ptr %49, align 8, !tbaa !108
  %86 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %87 = load ptr, ptr %86, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %85, ptr align 1 %87, i64 %81, i1 false)
  %88 = load ptr, ptr %49, align 8, !tbaa !108
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 %81
  store ptr %89, ptr %49, align 8, !tbaa !108
  %90 = load ptr, ptr %86, align 8, !tbaa !56
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 %81
  store ptr %91, ptr %86, align 8, !tbaa !56
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %93 = load i64, ptr %92, align 8, !tbaa !110
  %94 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %93, i64 %81), !nosanitize !44
  %95 = extractvalue { i64, i1 } %94, 1, !nosanitize !44
  br i1 %95, label %96, label %97, !prof !45, !nosanitize !44

96:                                               ; preds = %84
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

97:                                               ; preds = %84
  %98 = extractvalue { i64, i1 } %94, 0, !nosanitize !44
  store i64 %98, ptr %92, align 8, !tbaa !110
  %99 = load i32, ptr %67, align 8, !tbaa !109
  %100 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %99, i32 %82), !nosanitize !44
  %101 = extractvalue { i32, i1 } %100, 1, !nosanitize !44
  br i1 %101, label %102, label %103, !prof !45, !nosanitize !44

102:                                              ; preds = %97
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

103:                                              ; preds = %97
  %104 = extractvalue { i32, i1 } %100, 0, !nosanitize !44
  store i32 %104, ptr %67, align 8, !tbaa !109
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
  br label %135

121:                                              ; preds = %115
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1025

122:                                              ; preds = %73
  br i1 %55, label %124, label %135

123:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !44
  unreachable, !nosanitize !44

124:                                              ; preds = %122
  %125 = add i32 %45, 1073741824
  %126 = icmp sgt i32 %125, -1
  br i1 %126, label %127, label %123, !prof !91, !nosanitize !44

127:                                              ; preds = %124
  %128 = shl nsw i32 %45, 1
  %129 = icmp sgt i32 %45, 4
  %.neg = select i1 %129, i32 -9, i32 0
  %130 = add i32 %.neg, %128
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %133, ptr %134, align 8, !tbaa !8
  br label %1025

135:                                              ; preds = %127, %122, %119
  %136 = phi i64 [ %116, %119 ], [ 0, %122 ], [ 0, %127 ]
  %137 = phi i32 [ %120, %119 ], [ %22, %122 ], [ %22, %127 ]
  switch i32 %137, label %251 [
    i32 666, label %138
    i32 42, label %144
  ]

138:                                              ; preds = %135
  %139 = load i32, ptr %53, align 8, !tbaa !79
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %984, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %142, ptr %143, align 8, !tbaa !8
  br label %1025

144:                                              ; preds = %135
  %145 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %146 = load i32, ptr %145, align 8, !tbaa !29
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 113, ptr %21, align 8, !tbaa !28
  br label %981

149:                                              ; preds = %144
  %150 = getelementptr inbounds nuw i8, ptr %15, i64 84
  %151 = load i32, ptr %150, align 4, !tbaa !30
  %152 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %151, i32 8), !nosanitize !44
  %153 = extractvalue { i32, i1 } %152, 1, !nosanitize !44
  br i1 %153, label %154, label %155, !prof !45, !nosanitize !44

154:                                              ; preds = %149
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

155:                                              ; preds = %149
  %156 = extractvalue { i32, i1 } %152, 0, !nosanitize !44
  %157 = shl i32 %156, 12
  %158 = load i32, ptr %31, align 8, !tbaa !48
  %159 = icmp sgt i32 %158, 1
  br i1 %159, label %168, label %160

160:                                              ; preds = %155
  %161 = load i32, ptr %30, align 4, !tbaa !47
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = icmp samesign ult i32 %161, 6
  br i1 %164, label %168, label %165

165:                                              ; preds = %163
  %166 = icmp eq i32 %161, 6
  %167 = select i1 %166, i32 128, i32 192
  br label %168

168:                                              ; preds = %165, %163, %160, %155
  %169 = phi i32 [ 0, %160 ], [ 0, %155 ], [ 64, %163 ], [ %167, %165 ]
  %170 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %171 = or disjoint i32 %169, %157
  %172 = load i32, ptr %170, align 4, !tbaa !71
  %173 = icmp eq i32 %172, 0
  %174 = select i1 %173, i32 2048, i32 2080
  %175 = or disjoint i32 %174, %171
  %176 = urem i32 %175, 31
  %177 = or disjoint i32 %176, %175
  %178 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %136, i64 1), !nosanitize !44
  %179 = extractvalue { i64, i1 } %178, 1, !nosanitize !44
  br i1 %179, label %180, label %181, !prof !45, !nosanitize !44

180:                                              ; preds = %168
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

181:                                              ; preds = %168
  %182 = extractvalue { i64, i1 } %178, 0, !nosanitize !44
  %183 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %184 = load ptr, ptr %183, align 8, !tbaa !40
  %185 = lshr i32 %175, 8
  %186 = trunc i32 %185 to i8
  store i64 %182, ptr %74, align 8, !tbaa !55
  %187 = getelementptr inbounds nuw i8, ptr %184, i64 %136
  store i8 %186, ptr %187, align 1, !tbaa !5
  %188 = load i64, ptr %74, align 8, !tbaa !55
  %189 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %188, i64 1), !nosanitize !44
  %190 = extractvalue { i64, i1 } %189, 1, !nosanitize !44
  br i1 %190, label %191, label %192, !prof !45, !nosanitize !44

191:                                              ; preds = %181
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

192:                                              ; preds = %181
  %193 = extractvalue { i64, i1 } %189, 0, !nosanitize !44
  %194 = load ptr, ptr %183, align 8, !tbaa !40
  %195 = trunc i32 %177 to i8
  %196 = xor i8 %195, 31
  store i64 %193, ptr %74, align 8, !tbaa !55
  %197 = getelementptr inbounds nuw i8, ptr %194, i64 %188
  store i8 %196, ptr %197, align 1, !tbaa !5
  %198 = load i32, ptr %170, align 4, !tbaa !71
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %243, label %200

200:                                              ; preds = %192
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %202 = load i64, ptr %201, align 8, !tbaa !57
  %203 = lshr i64 %202, 16
  %204 = load i64, ptr %74, align 8, !tbaa !55
  %205 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %204, i64 1), !nosanitize !44
  %206 = extractvalue { i64, i1 } %205, 1, !nosanitize !44
  br i1 %206, label %207, label %208, !prof !45, !nosanitize !44

207:                                              ; preds = %200
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

208:                                              ; preds = %200
  %209 = extractvalue { i64, i1 } %205, 0, !nosanitize !44
  %210 = load ptr, ptr %183, align 8, !tbaa !40
  %211 = lshr i64 %202, 24
  %212 = trunc i64 %211 to i8
  store i64 %209, ptr %74, align 8, !tbaa !55
  %213 = getelementptr inbounds nuw i8, ptr %210, i64 %204
  store i8 %212, ptr %213, align 1, !tbaa !5
  %214 = load i64, ptr %74, align 8, !tbaa !55
  %215 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %214, i64 1), !nosanitize !44
  %216 = extractvalue { i64, i1 } %215, 1, !nosanitize !44
  br i1 %216, label %217, label %218, !prof !45, !nosanitize !44

217:                                              ; preds = %208
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

218:                                              ; preds = %208
  %219 = extractvalue { i64, i1 } %215, 0, !nosanitize !44
  %220 = load ptr, ptr %183, align 8, !tbaa !40
  %221 = trunc i64 %203 to i8
  store i64 %219, ptr %74, align 8, !tbaa !55
  %222 = getelementptr inbounds nuw i8, ptr %220, i64 %214
  store i8 %221, ptr %222, align 1, !tbaa !5
  %223 = load i64, ptr %201, align 8, !tbaa !57
  %224 = trunc i64 %223 to i8
  %225 = load i64, ptr %74, align 8, !tbaa !55
  %226 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %225, i64 1), !nosanitize !44
  %227 = extractvalue { i64, i1 } %226, 1, !nosanitize !44
  br i1 %227, label %228, label %229, !prof !45, !nosanitize !44

228:                                              ; preds = %218
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

229:                                              ; preds = %218
  %230 = extractvalue { i64, i1 } %226, 0, !nosanitize !44
  %231 = load ptr, ptr %183, align 8, !tbaa !40
  %232 = lshr i64 %223, 8
  %233 = trunc i64 %232 to i8
  store i64 %230, ptr %74, align 8, !tbaa !55
  %234 = getelementptr inbounds nuw i8, ptr %231, i64 %225
  store i8 %233, ptr %234, align 1, !tbaa !5
  %235 = load i64, ptr %74, align 8, !tbaa !55
  %236 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %235, i64 1), !nosanitize !44
  %237 = extractvalue { i64, i1 } %236, 1, !nosanitize !44
  br i1 %237, label %238, label %239, !prof !45, !nosanitize !44

238:                                              ; preds = %229
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

239:                                              ; preds = %229
  %240 = extractvalue { i64, i1 } %236, 0, !nosanitize !44
  %241 = load ptr, ptr %183, align 8, !tbaa !40
  store i64 %240, ptr %74, align 8, !tbaa !55
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 %235
  store i8 %224, ptr %242, align 1, !tbaa !5
  br label %243

243:                                              ; preds = %239, %192
  %244 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %245 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %244, ptr %245, align 8, !tbaa !57
  store i32 113, ptr %21, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %246 = load i64, ptr %74, align 8, !tbaa !55
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %243
  %249 = load i32, ptr %21, align 8, !tbaa !28
  br label %251

250:                                              ; preds = %243
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1025

251:                                              ; preds = %248, %135
  %252 = phi i32 [ %249, %248 ], [ %137, %135 ]
  %253 = icmp eq i32 %252, 57
  br i1 %253, label %254, label %509

254:                                              ; preds = %251
  %255 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %256 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %255, ptr %256, align 8, !tbaa !57
  %257 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %258 = load i64, ptr %74, align 8, !tbaa !55
  %259 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %258, i64 1), !nosanitize !44
  %260 = extractvalue { i64, i1 } %259, 1, !nosanitize !44
  br i1 %260, label %261, label %262, !prof !45, !nosanitize !44

261:                                              ; preds = %254
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

262:                                              ; preds = %254
  %263 = extractvalue { i64, i1 } %259, 0, !nosanitize !44
  %264 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %263, ptr %74, align 8, !tbaa !55
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 %258
  store i8 31, ptr %265, align 1, !tbaa !5
  %266 = load i64, ptr %74, align 8, !tbaa !55
  %267 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %266, i64 1), !nosanitize !44
  %268 = extractvalue { i64, i1 } %267, 1, !nosanitize !44
  br i1 %268, label %269, label %270, !prof !45, !nosanitize !44

269:                                              ; preds = %262
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

270:                                              ; preds = %262
  %271 = extractvalue { i64, i1 } %267, 0, !nosanitize !44
  %272 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %271, ptr %74, align 8, !tbaa !55
  %273 = getelementptr inbounds nuw i8, ptr %272, i64 %266
  store i8 -117, ptr %273, align 1, !tbaa !5
  %274 = load i64, ptr %74, align 8, !tbaa !55
  %275 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %274, i64 1), !nosanitize !44
  %276 = extractvalue { i64, i1 } %275, 1, !nosanitize !44
  br i1 %276, label %277, label %278, !prof !45, !nosanitize !44

277:                                              ; preds = %270
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

278:                                              ; preds = %270
  %279 = extractvalue { i64, i1 } %275, 0, !nosanitize !44
  %280 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %279, ptr %74, align 8, !tbaa !55
  %281 = getelementptr inbounds nuw i8, ptr %280, i64 %274
  store i8 8, ptr %281, align 1, !tbaa !5
  %282 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %283 = load ptr, ptr %282, align 8, !tbaa !102
  %284 = icmp eq ptr %283, null
  %285 = load i64, ptr %74, align 8, !tbaa !55
  %286 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %285, i64 1), !nosanitize !44
  %287 = extractvalue { i64, i1 } %286, 1, !nosanitize !44
  br i1 %284, label %288, label %355

288:                                              ; preds = %278
  br i1 %287, label %289, label %290, !prof !45, !nosanitize !44

289:                                              ; preds = %288
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

290:                                              ; preds = %288
  %291 = extractvalue { i64, i1 } %286, 0, !nosanitize !44
  %292 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %291, ptr %74, align 8, !tbaa !55
  %293 = getelementptr inbounds nuw i8, ptr %292, i64 %285
  store i8 0, ptr %293, align 1, !tbaa !5
  %294 = load i64, ptr %74, align 8, !tbaa !55
  %295 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %294, i64 1), !nosanitize !44
  %296 = extractvalue { i64, i1 } %295, 1, !nosanitize !44
  br i1 %296, label %297, label %298, !prof !45, !nosanitize !44

297:                                              ; preds = %290
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

298:                                              ; preds = %290
  %299 = extractvalue { i64, i1 } %295, 0, !nosanitize !44
  %300 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %299, ptr %74, align 8, !tbaa !55
  %301 = getelementptr inbounds nuw i8, ptr %300, i64 %294
  store i8 0, ptr %301, align 1, !tbaa !5
  %302 = load i64, ptr %74, align 8, !tbaa !55
  %303 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %302, i64 1), !nosanitize !44
  %304 = extractvalue { i64, i1 } %303, 1, !nosanitize !44
  br i1 %304, label %305, label %306, !prof !45, !nosanitize !44

305:                                              ; preds = %298
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

306:                                              ; preds = %298
  %307 = extractvalue { i64, i1 } %303, 0, !nosanitize !44
  %308 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %307, ptr %74, align 8, !tbaa !55
  %309 = getelementptr inbounds nuw i8, ptr %308, i64 %302
  store i8 0, ptr %309, align 1, !tbaa !5
  %310 = load i64, ptr %74, align 8, !tbaa !55
  %311 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %310, i64 1), !nosanitize !44
  %312 = extractvalue { i64, i1 } %311, 1, !nosanitize !44
  br i1 %312, label %313, label %314, !prof !45, !nosanitize !44

313:                                              ; preds = %306
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

314:                                              ; preds = %306
  %315 = extractvalue { i64, i1 } %311, 0, !nosanitize !44
  %316 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %315, ptr %74, align 8, !tbaa !55
  %317 = getelementptr inbounds nuw i8, ptr %316, i64 %310
  store i8 0, ptr %317, align 1, !tbaa !5
  %318 = load i64, ptr %74, align 8, !tbaa !55
  %319 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %318, i64 1), !nosanitize !44
  %320 = extractvalue { i64, i1 } %319, 1, !nosanitize !44
  br i1 %320, label %321, label %322, !prof !45, !nosanitize !44

321:                                              ; preds = %314
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

322:                                              ; preds = %314
  %323 = extractvalue { i64, i1 } %319, 0, !nosanitize !44
  %324 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %323, ptr %74, align 8, !tbaa !55
  %325 = getelementptr inbounds nuw i8, ptr %324, i64 %318
  store i8 0, ptr %325, align 1, !tbaa !5
  %326 = load i32, ptr %30, align 4, !tbaa !47
  %327 = icmp eq i32 %326, 9
  br i1 %327, label %334, label %328

328:                                              ; preds = %322
  %329 = load i32, ptr %31, align 8, !tbaa !48
  %330 = icmp sgt i32 %329, 1
  %331 = icmp slt i32 %326, 2
  %332 = or i1 %331, %330
  %333 = select i1 %332, i8 4, i8 0
  br label %334

334:                                              ; preds = %328, %322
  %335 = phi i8 [ %333, %328 ], [ 2, %322 ]
  %336 = load i64, ptr %74, align 8, !tbaa !55
  %337 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %336, i64 1), !nosanitize !44
  %338 = extractvalue { i64, i1 } %337, 1, !nosanitize !44
  br i1 %338, label %339, label %340, !prof !45, !nosanitize !44

339:                                              ; preds = %334
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

340:                                              ; preds = %334
  %341 = extractvalue { i64, i1 } %337, 0, !nosanitize !44
  %342 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %341, ptr %74, align 8, !tbaa !55
  %343 = getelementptr inbounds nuw i8, ptr %342, i64 %336
  store i8 %335, ptr %343, align 1, !tbaa !5
  %344 = load i64, ptr %74, align 8, !tbaa !55
  %345 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %344, i64 1), !nosanitize !44
  %346 = extractvalue { i64, i1 } %345, 1, !nosanitize !44
  br i1 %346, label %347, label %348, !prof !45, !nosanitize !44

347:                                              ; preds = %340
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

348:                                              ; preds = %340
  %349 = extractvalue { i64, i1 } %345, 0, !nosanitize !44
  %350 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %349, ptr %74, align 8, !tbaa !55
  %351 = getelementptr inbounds nuw i8, ptr %350, i64 %344
  store i8 3, ptr %351, align 1, !tbaa !5
  store i32 113, ptr %21, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %352 = load i64, ptr %74, align 8, !tbaa !55
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %507, label %354

354:                                              ; preds = %348
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1025

355:                                              ; preds = %278
  br i1 %287, label %356, label %357, !prof !45, !nosanitize !44

356:                                              ; preds = %355
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

357:                                              ; preds = %355
  %358 = extractvalue { i64, i1 } %286, 0, !nosanitize !44
  %359 = load ptr, ptr %257, align 8, !tbaa !40
  %360 = getelementptr inbounds nuw i8, ptr %283, i64 56
  %361 = load ptr, ptr %360, align 8, !tbaa !111
  %362 = icmp eq ptr %361, null
  %363 = getelementptr inbounds nuw i8, ptr %283, i64 40
  %364 = load ptr, ptr %363, align 8, !tbaa !113
  %365 = icmp eq ptr %364, null
  %366 = getelementptr inbounds nuw i8, ptr %283, i64 24
  %367 = load ptr, ptr %366, align 8, !tbaa !114
  %368 = icmp eq ptr %367, null
  %369 = load i32, ptr %283, align 8, !tbaa !115
  %370 = icmp ne i32 %369, 0
  %371 = getelementptr inbounds nuw i8, ptr %283, i64 68
  %372 = load i32, ptr %371, align 4, !tbaa !116
  %373 = icmp eq i32 %372, 0
  %374 = select i1 %373, i8 0, i8 2
  %375 = zext i1 %370 to i8
  %376 = select i1 %368, i8 0, i8 4
  %377 = select i1 %365, i8 0, i8 8
  %378 = select i1 %362, i8 0, i8 16
  %379 = or disjoint i8 %377, %378
  %380 = or disjoint i8 %379, %376
  %381 = or disjoint i8 %380, %375
  %382 = or disjoint i8 %381, %374
  store i64 %358, ptr %74, align 8, !tbaa !55
  %383 = getelementptr inbounds nuw i8, ptr %359, i64 %285
  store i8 %382, ptr %383, align 1, !tbaa !5
  %384 = load i64, ptr %74, align 8, !tbaa !55
  %385 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %384, i64 1), !nosanitize !44
  %386 = extractvalue { i64, i1 } %385, 1, !nosanitize !44
  br i1 %386, label %387, label %388, !prof !45, !nosanitize !44

387:                                              ; preds = %357
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

388:                                              ; preds = %357
  %389 = extractvalue { i64, i1 } %385, 0, !nosanitize !44
  %390 = load ptr, ptr %257, align 8, !tbaa !40
  %391 = load ptr, ptr %282, align 8, !tbaa !102
  %392 = getelementptr inbounds nuw i8, ptr %391, i64 8
  %393 = load i64, ptr %392, align 8, !tbaa !117
  %394 = trunc i64 %393 to i8
  store i64 %389, ptr %74, align 8, !tbaa !55
  %395 = getelementptr inbounds nuw i8, ptr %390, i64 %384
  store i8 %394, ptr %395, align 1, !tbaa !5
  %396 = load i64, ptr %74, align 8, !tbaa !55
  %397 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %396, i64 1), !nosanitize !44
  %398 = extractvalue { i64, i1 } %397, 1, !nosanitize !44
  br i1 %398, label %399, label %400, !prof !45, !nosanitize !44

399:                                              ; preds = %388
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

400:                                              ; preds = %388
  %401 = extractvalue { i64, i1 } %397, 0, !nosanitize !44
  %402 = load ptr, ptr %257, align 8, !tbaa !40
  %403 = load ptr, ptr %282, align 8, !tbaa !102
  %404 = getelementptr inbounds nuw i8, ptr %403, i64 8
  %405 = load i64, ptr %404, align 8, !tbaa !117
  %406 = lshr i64 %405, 8
  %407 = trunc i64 %406 to i8
  store i64 %401, ptr %74, align 8, !tbaa !55
  %408 = getelementptr inbounds nuw i8, ptr %402, i64 %396
  store i8 %407, ptr %408, align 1, !tbaa !5
  %409 = load i64, ptr %74, align 8, !tbaa !55
  %410 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %409, i64 1), !nosanitize !44
  %411 = extractvalue { i64, i1 } %410, 1, !nosanitize !44
  br i1 %411, label %412, label %413, !prof !45, !nosanitize !44

412:                                              ; preds = %400
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

413:                                              ; preds = %400
  %414 = extractvalue { i64, i1 } %410, 0, !nosanitize !44
  %415 = load ptr, ptr %257, align 8, !tbaa !40
  %416 = load ptr, ptr %282, align 8, !tbaa !102
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 8
  %418 = load i64, ptr %417, align 8, !tbaa !117
  %419 = lshr i64 %418, 16
  %420 = trunc i64 %419 to i8
  store i64 %414, ptr %74, align 8, !tbaa !55
  %421 = getelementptr inbounds nuw i8, ptr %415, i64 %409
  store i8 %420, ptr %421, align 1, !tbaa !5
  %422 = load i64, ptr %74, align 8, !tbaa !55
  %423 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %422, i64 1), !nosanitize !44
  %424 = extractvalue { i64, i1 } %423, 1, !nosanitize !44
  br i1 %424, label %425, label %426, !prof !45, !nosanitize !44

425:                                              ; preds = %413
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

426:                                              ; preds = %413
  %427 = extractvalue { i64, i1 } %423, 0, !nosanitize !44
  %428 = load ptr, ptr %257, align 8, !tbaa !40
  %429 = load ptr, ptr %282, align 8, !tbaa !102
  %430 = getelementptr inbounds nuw i8, ptr %429, i64 8
  %431 = load i64, ptr %430, align 8, !tbaa !117
  %432 = lshr i64 %431, 24
  %433 = trunc i64 %432 to i8
  store i64 %427, ptr %74, align 8, !tbaa !55
  %434 = getelementptr inbounds nuw i8, ptr %428, i64 %422
  store i8 %433, ptr %434, align 1, !tbaa !5
  %435 = load i32, ptr %30, align 4, !tbaa !47
  %436 = icmp eq i32 %435, 9
  br i1 %436, label %443, label %437

437:                                              ; preds = %426
  %438 = load i32, ptr %31, align 8, !tbaa !48
  %439 = icmp sgt i32 %438, 1
  %440 = icmp slt i32 %435, 2
  %441 = or i1 %440, %439
  %442 = select i1 %441, i8 4, i8 0
  br label %443

443:                                              ; preds = %437, %426
  %444 = phi i8 [ %442, %437 ], [ 2, %426 ]
  %445 = load i64, ptr %74, align 8, !tbaa !55
  %446 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %445, i64 1), !nosanitize !44
  %447 = extractvalue { i64, i1 } %446, 1, !nosanitize !44
  br i1 %447, label %448, label %449, !prof !45, !nosanitize !44

448:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

449:                                              ; preds = %443
  %450 = extractvalue { i64, i1 } %446, 0, !nosanitize !44
  %451 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %450, ptr %74, align 8, !tbaa !55
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 %445
  store i8 %444, ptr %452, align 1, !tbaa !5
  %453 = load i64, ptr %74, align 8, !tbaa !55
  %454 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %453, i64 1), !nosanitize !44
  %455 = extractvalue { i64, i1 } %454, 1, !nosanitize !44
  br i1 %455, label %456, label %457, !prof !45, !nosanitize !44

456:                                              ; preds = %449
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

457:                                              ; preds = %449
  %458 = extractvalue { i64, i1 } %454, 0, !nosanitize !44
  %459 = load ptr, ptr %257, align 8, !tbaa !40
  %460 = load ptr, ptr %282, align 8, !tbaa !102
  %461 = getelementptr inbounds nuw i8, ptr %460, i64 20
  %462 = load i32, ptr %461, align 4, !tbaa !118
  %463 = trunc i32 %462 to i8
  store i64 %458, ptr %74, align 8, !tbaa !55
  %464 = getelementptr inbounds nuw i8, ptr %459, i64 %453
  store i8 %463, ptr %464, align 1, !tbaa !5
  %465 = load ptr, ptr %282, align 8, !tbaa !102
  %466 = getelementptr inbounds nuw i8, ptr %465, i64 24
  %467 = load ptr, ptr %466, align 8, !tbaa !114
  %468 = icmp eq ptr %467, null
  br i1 %468, label %495, label %469

469:                                              ; preds = %457
  %470 = load i64, ptr %74, align 8, !tbaa !55
  %471 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %470, i64 1), !nosanitize !44
  %472 = extractvalue { i64, i1 } %471, 1, !nosanitize !44
  br i1 %472, label %473, label %474, !prof !45, !nosanitize !44

473:                                              ; preds = %469
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

474:                                              ; preds = %469
  %475 = extractvalue { i64, i1 } %471, 0, !nosanitize !44
  %476 = load ptr, ptr %257, align 8, !tbaa !40
  %477 = getelementptr inbounds nuw i8, ptr %465, i64 32
  %478 = load i32, ptr %477, align 8, !tbaa !119
  %479 = trunc i32 %478 to i8
  store i64 %475, ptr %74, align 8, !tbaa !55
  %480 = getelementptr inbounds nuw i8, ptr %476, i64 %470
  store i8 %479, ptr %480, align 1, !tbaa !5
  %481 = load i64, ptr %74, align 8, !tbaa !55
  %482 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %481, i64 1), !nosanitize !44
  %483 = extractvalue { i64, i1 } %482, 1, !nosanitize !44
  br i1 %483, label %484, label %485, !prof !45, !nosanitize !44

484:                                              ; preds = %474
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

485:                                              ; preds = %474
  %486 = extractvalue { i64, i1 } %482, 0, !nosanitize !44
  %487 = load ptr, ptr %257, align 8, !tbaa !40
  %488 = load ptr, ptr %282, align 8, !tbaa !102
  %489 = getelementptr inbounds nuw i8, ptr %488, i64 32
  %490 = load i32, ptr %489, align 8, !tbaa !119
  %491 = lshr i32 %490, 8
  %492 = trunc i32 %491 to i8
  store i64 %486, ptr %74, align 8, !tbaa !55
  %493 = getelementptr inbounds nuw i8, ptr %487, i64 %481
  store i8 %492, ptr %493, align 1, !tbaa !5
  %494 = load ptr, ptr %282, align 8, !tbaa !102
  br label %495

495:                                              ; preds = %485, %457
  %496 = phi ptr [ %494, %485 ], [ %465, %457 ]
  %497 = getelementptr inbounds nuw i8, ptr %496, i64 68
  %498 = load i32, ptr %497, align 4, !tbaa !116
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %505, label %500

500:                                              ; preds = %495
  %501 = load i64, ptr %256, align 8, !tbaa !57
  %502 = load ptr, ptr %257, align 8, !tbaa !40
  %503 = load i64, ptr %74, align 8, !tbaa !55
  %504 = tail call i64 @crc32_z(i64 noundef %501, ptr noundef %502, i64 noundef %503) #11
  store i64 %504, ptr %256, align 8, !tbaa !57
  br label %505

505:                                              ; preds = %500, %495
  %506 = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i64 0, ptr %506, align 8, !tbaa !120
  store i32 69, ptr %21, align 8, !tbaa !28
  br label %511

507:                                              ; preds = %348
  %508 = load i32, ptr %21, align 8, !tbaa !28
  br label %509

509:                                              ; preds = %507, %251
  %510 = phi i32 [ %508, %507 ], [ %252, %251 ]
  switch i32 %510, label %981 [
    i32 69, label %511
    i32 73, label %713
    i32 91, label %825
    i32 103, label %936
  ]

511:                                              ; preds = %509, %505
  %512 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %513 = load ptr, ptr %512, align 8, !tbaa !102
  %514 = getelementptr inbounds nuw i8, ptr %513, i64 24
  %515 = load ptr, ptr %514, align 8, !tbaa !114
  %516 = icmp eq ptr %515, null
  br i1 %516, label %712, label %517

517:                                              ; preds = %511
  %518 = getelementptr inbounds nuw i8, ptr %513, i64 32
  %519 = load i32, ptr %518, align 8, !tbaa !119
  %520 = and i32 %519, 65535
  %521 = zext nneg i32 %520 to i64
  %522 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %523 = load i64, ptr %522, align 8, !tbaa !120
  %524 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %521, i64 %523), !nosanitize !44
  %525 = extractvalue { i64, i1 } %524, 1, !nosanitize !44
  br i1 %525, label %526, label %527, !prof !45, !nosanitize !44

526:                                              ; preds = %517
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

527:                                              ; preds = %517
  %528 = load i64, ptr %74, align 8, !tbaa !55
  %529 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %530 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %531 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %532 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %533 = extractvalue { i64, i1 } %524, 0
  %534 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %528, i64 %533), !nosanitize !44
  %535 = extractvalue { i64, i1 } %534, 1, !nosanitize !44
  br i1 %535, label %611, label %536, !prof !45, !nosanitize !44

536:                                              ; preds = %527
  %537 = extractvalue { i64, i1 } %534, 0, !nosanitize !44
  %538 = load i64, ptr %529, align 8, !tbaa !41
  %539 = icmp ugt i64 %537, %538
  br i1 %539, label %540, label %685

540:                                              ; preds = %536
  %541 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %538, i64 %528), !nosanitize !44
  %542 = extractvalue { i64, i1 } %541, 0, !nosanitize !44
  %543 = extractvalue { i64, i1 } %541, 1, !nosanitize !44
  br i1 %543, label %612, label %544, !prof !45, !nosanitize !44

544:                                              ; preds = %540
  %545 = load ptr, ptr %530, align 8, !tbaa !40
  %546 = getelementptr inbounds nuw i8, ptr %545, i64 %528
  %547 = getelementptr inbounds nuw i8, ptr %515, i64 %523
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %546, ptr nonnull align 1 %547, i64 %542, i1 false)
  %548 = load i64, ptr %529, align 8, !tbaa !41
  store i64 %548, ptr %74, align 8, !tbaa !55
  %549 = load ptr, ptr %512, align 8, !tbaa !102
  %550 = getelementptr inbounds nuw i8, ptr %549, i64 68
  %551 = load i32, ptr %550, align 4, !tbaa !116
  %552 = icmp ne i32 %551, 0
  %553 = icmp ugt i64 %548, %528
  %554 = select i1 %552, i1 %553, i1 false
  br i1 %554, label %555, label %561

555:                                              ; preds = %544
  %556 = sub nuw i64 %548, %528
  %557 = load ptr, ptr %530, align 8, !tbaa !40
  %558 = getelementptr inbounds nuw i8, ptr %557, i64 %528
  %559 = load i64, ptr %531, align 8, !tbaa !57
  %560 = tail call i64 @crc32_z(i64 noundef %559, ptr noundef %558, i64 noundef %556) #11
  store i64 %560, ptr %531, align 8, !tbaa !57
  br label %561

561:                                              ; preds = %555, %544
  %562 = load i64, ptr %522, align 8, !tbaa !120
  %563 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %562, i64 %542), !nosanitize !44
  %564 = extractvalue { i64, i1 } %563, 1, !nosanitize !44
  br i1 %564, label %.loopexit, label %565, !prof !45, !nosanitize !44

565:                                              ; preds = %561
  %566 = extractvalue { i64, i1 } %563, 0, !nosanitize !44
  store i64 %566, ptr %522, align 8, !tbaa !120
  %567 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %567) #11
  %568 = getelementptr inbounds nuw i8, ptr %567, i64 40
  %569 = load i64, ptr %568, align 8, !tbaa !55
  %570 = load i32, ptr %67, align 8, !tbaa !109
  %571 = zext i32 %570 to i64
  %572 = tail call i64 @llvm.umin.i64(i64 %569, i64 %571)
  %573 = trunc nuw i64 %572 to i32
  %574 = icmp eq i64 %572, 0
  br i1 %574, label %602, label %575

575:                                              ; preds = %565
  %576 = load ptr, ptr %49, align 8, !tbaa !108
  %577 = getelementptr inbounds nuw i8, ptr %567, i64 32
  %578 = load ptr, ptr %577, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %576, ptr align 1 %578, i64 %572, i1 false)
  %579 = load ptr, ptr %49, align 8, !tbaa !108
  %580 = getelementptr inbounds nuw i8, ptr %579, i64 %572
  store ptr %580, ptr %49, align 8, !tbaa !108
  %581 = load ptr, ptr %577, align 8, !tbaa !56
  %582 = getelementptr inbounds nuw i8, ptr %581, i64 %572
  store ptr %582, ptr %577, align 8, !tbaa !56
  %583 = load i64, ptr %532, align 8, !tbaa !110
  %584 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %583, i64 %572), !nosanitize !44
  %585 = extractvalue { i64, i1 } %584, 1, !nosanitize !44
  br i1 %585, label %.loopexit39, label %586, !prof !45, !nosanitize !44

586:                                              ; preds = %575
  %587 = extractvalue { i64, i1 } %584, 0, !nosanitize !44
  store i64 %587, ptr %532, align 8, !tbaa !110
  %588 = load i32, ptr %67, align 8, !tbaa !109
  %589 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %588, i32 %573), !nosanitize !44
  %590 = extractvalue { i32, i1 } %589, 1, !nosanitize !44
  br i1 %590, label %.loopexit40, label %591, !prof !45, !nosanitize !44

591:                                              ; preds = %586
  %592 = extractvalue { i32, i1 } %589, 0, !nosanitize !44
  store i32 %592, ptr %67, align 8, !tbaa !109
  %593 = load i64, ptr %568, align 8, !tbaa !55
  %594 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %593, i64 %572), !nosanitize !44
  %595 = extractvalue { i64, i1 } %594, 1, !nosanitize !44
  br i1 %595, label %.loopexit41, label %596, !prof !45, !nosanitize !44

596:                                              ; preds = %591
  %597 = extractvalue { i64, i1 } %594, 0, !nosanitize !44
  store i64 %597, ptr %568, align 8, !tbaa !55
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %599, label %602

599:                                              ; preds = %596
  %600 = getelementptr inbounds nuw i8, ptr %567, i64 16
  %601 = load ptr, ptr %600, align 8, !tbaa !40
  store ptr %601, ptr %577, align 8, !tbaa !56
  br label %602

602:                                              ; preds = %599, %596, %565
  %603 = load i64, ptr %74, align 8, !tbaa !55
  %604 = icmp eq i64 %603, 0
  br i1 %604, label %605, label %.loopexit42

605:                                              ; preds = %602
  %606 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %533, i64 %542), !nosanitize !44
  %607 = extractvalue { i64, i1 } %606, 1, !nosanitize !44
  br i1 %607, label %680, label %.preheader, !prof !45, !nosanitize !44

.preheader:                                       ; preds = %605
  %608 = extractvalue { i64, i1 } %606, 0
  %609 = load i64, ptr %529, align 8, !tbaa !41
  %610 = icmp ugt i64 %608, %609
  br i1 %610, label %.lr.ph, label %._crit_edge

611:                                              ; preds = %527
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

612:                                              ; preds = %540
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.lr.ph:                                           ; preds = %.preheader, %676
  %613 = phi i64 [ %678, %676 ], [ %609, %.preheader ]
  %614 = phi i64 [ %677, %676 ], [ %608, %.preheader ]
  %615 = load ptr, ptr %530, align 8, !tbaa !40
  %616 = load ptr, ptr %512, align 8, !tbaa !102
  %617 = getelementptr inbounds nuw i8, ptr %616, i64 24
  %618 = load ptr, ptr %617, align 8, !tbaa !114
  %619 = load i64, ptr %522, align 8, !tbaa !120
  %620 = getelementptr inbounds nuw i8, ptr %618, i64 %619
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %615, ptr align 1 %620, i64 %613, i1 false)
  %621 = load i64, ptr %529, align 8, !tbaa !41
  store i64 %621, ptr %74, align 8, !tbaa !55
  %622 = load ptr, ptr %512, align 8, !tbaa !102
  %623 = getelementptr inbounds nuw i8, ptr %622, i64 68
  %624 = load i32, ptr %623, align 4, !tbaa !116
  %625 = icmp ne i32 %624, 0
  %626 = icmp ne i64 %621, 0
  %627 = select i1 %625, i1 %626, i1 false
  br i1 %627, label %628, label %632

628:                                              ; preds = %.lr.ph
  %629 = load ptr, ptr %530, align 8, !tbaa !40
  %630 = load i64, ptr %531, align 8, !tbaa !57
  %631 = tail call i64 @crc32_z(i64 noundef %630, ptr noundef %629, i64 noundef %621) #11
  store i64 %631, ptr %531, align 8, !tbaa !57
  br label %632

632:                                              ; preds = %628, %.lr.ph
  %633 = load i64, ptr %522, align 8, !tbaa !120
  %634 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %633, i64 %613), !nosanitize !44
  %635 = extractvalue { i64, i1 } %634, 1, !nosanitize !44
  br i1 %635, label %.loopexit, label %636, !prof !121, !nosanitize !44

.loopexit:                                        ; preds = %632, %561
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

636:                                              ; preds = %632
  %637 = extractvalue { i64, i1 } %634, 0, !nosanitize !44
  store i64 %637, ptr %522, align 8, !tbaa !120
  %638 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %638) #11
  %639 = getelementptr inbounds nuw i8, ptr %638, i64 40
  %640 = load i64, ptr %639, align 8, !tbaa !55
  %641 = load i32, ptr %67, align 8, !tbaa !109
  %642 = zext i32 %641 to i64
  %643 = tail call i64 @llvm.umin.i64(i64 %640, i64 %642)
  %644 = trunc nuw i64 %643 to i32
  %645 = icmp eq i64 %643, 0
  br i1 %645, label %673, label %646

646:                                              ; preds = %636
  %647 = load ptr, ptr %49, align 8, !tbaa !108
  %648 = getelementptr inbounds nuw i8, ptr %638, i64 32
  %649 = load ptr, ptr %648, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %647, ptr align 1 %649, i64 %643, i1 false)
  %650 = load ptr, ptr %49, align 8, !tbaa !108
  %651 = getelementptr inbounds nuw i8, ptr %650, i64 %643
  store ptr %651, ptr %49, align 8, !tbaa !108
  %652 = load ptr, ptr %648, align 8, !tbaa !56
  %653 = getelementptr inbounds nuw i8, ptr %652, i64 %643
  store ptr %653, ptr %648, align 8, !tbaa !56
  %654 = load i64, ptr %532, align 8, !tbaa !110
  %655 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %654, i64 %643), !nosanitize !44
  %656 = extractvalue { i64, i1 } %655, 1, !nosanitize !44
  br i1 %656, label %.loopexit39, label %657, !prof !121, !nosanitize !44

.loopexit39:                                      ; preds = %646, %575
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

657:                                              ; preds = %646
  %658 = extractvalue { i64, i1 } %655, 0, !nosanitize !44
  store i64 %658, ptr %532, align 8, !tbaa !110
  %659 = load i32, ptr %67, align 8, !tbaa !109
  %660 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %659, i32 %644), !nosanitize !44
  %661 = extractvalue { i32, i1 } %660, 1, !nosanitize !44
  br i1 %661, label %.loopexit40, label %662, !prof !121, !nosanitize !44

.loopexit40:                                      ; preds = %657, %586
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

662:                                              ; preds = %657
  %663 = extractvalue { i32, i1 } %660, 0, !nosanitize !44
  store i32 %663, ptr %67, align 8, !tbaa !109
  %664 = load i64, ptr %639, align 8, !tbaa !55
  %665 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %664, i64 %643), !nosanitize !44
  %666 = extractvalue { i64, i1 } %665, 1, !nosanitize !44
  br i1 %666, label %.loopexit41, label %667, !prof !121, !nosanitize !44

.loopexit41:                                      ; preds = %662, %591
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

667:                                              ; preds = %662
  %668 = extractvalue { i64, i1 } %665, 0, !nosanitize !44
  store i64 %668, ptr %639, align 8, !tbaa !55
  %669 = icmp eq i64 %668, 0
  br i1 %669, label %670, label %673

670:                                              ; preds = %667
  %671 = getelementptr inbounds nuw i8, ptr %638, i64 16
  %672 = load ptr, ptr %671, align 8, !tbaa !40
  store ptr %672, ptr %648, align 8, !tbaa !56
  br label %673

673:                                              ; preds = %670, %667, %636
  %674 = load i64, ptr %74, align 8, !tbaa !55
  %675 = icmp eq i64 %674, 0
  br i1 %675, label %676, label %.loopexit42

.loopexit42:                                      ; preds = %673, %602
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1025

676:                                              ; preds = %673
  %677 = sub i64 %614, %613
  %678 = load i64, ptr %529, align 8, !tbaa !41
  %679 = icmp ugt i64 %677, %678
  br i1 %679, label %.lr.ph, label %._crit_edge, !llvm.loop !122

680:                                              ; preds = %605
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

._crit_edge:                                      ; preds = %676, %.preheader
  %.lcssa = phi i64 [ %608, %.preheader ], [ %677, %676 ]
  %681 = load ptr, ptr %512, align 8, !tbaa !102
  %682 = getelementptr inbounds nuw i8, ptr %681, i64 24
  %683 = load ptr, ptr %682, align 8, !tbaa !114
  %684 = load i64, ptr %522, align 8, !tbaa !120
  br label %685

685:                                              ; preds = %._crit_edge, %536
  %686 = phi i64 [ %523, %536 ], [ %684, %._crit_edge ]
  %687 = phi ptr [ %515, %536 ], [ %683, %._crit_edge ]
  %688 = phi i64 [ %528, %536 ], [ 0, %._crit_edge ]
  %689 = phi i64 [ %533, %536 ], [ %.lcssa, %._crit_edge ]
  %690 = load ptr, ptr %530, align 8, !tbaa !40
  %691 = getelementptr inbounds nuw i8, ptr %690, i64 %688
  %692 = getelementptr inbounds nuw i8, ptr %687, i64 %686
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %691, ptr align 1 %692, i64 %689, i1 false)
  %693 = load i64, ptr %74, align 8, !tbaa !55
  %694 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %693, i64 %689), !nosanitize !44
  %695 = extractvalue { i64, i1 } %694, 0, !nosanitize !44
  %696 = extractvalue { i64, i1 } %694, 1, !nosanitize !44
  br i1 %696, label %697, label %698, !prof !45, !nosanitize !44

697:                                              ; preds = %685
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

698:                                              ; preds = %685
  store i64 %695, ptr %74, align 8, !tbaa !55
  %699 = load ptr, ptr %512, align 8, !tbaa !102
  %700 = getelementptr inbounds nuw i8, ptr %699, i64 68
  %701 = load i32, ptr %700, align 4, !tbaa !116
  %702 = icmp ne i32 %701, 0
  %703 = icmp ugt i64 %695, %688
  %704 = select i1 %702, i1 %703, i1 false
  br i1 %704, label %705, label %711

705:                                              ; preds = %698
  %706 = sub nuw i64 %695, %688
  %707 = load ptr, ptr %530, align 8, !tbaa !40
  %708 = getelementptr inbounds nuw i8, ptr %707, i64 %688
  %709 = load i64, ptr %531, align 8, !tbaa !57
  %710 = tail call i64 @crc32_z(i64 noundef %709, ptr noundef %708, i64 noundef %706) #11
  store i64 %710, ptr %531, align 8, !tbaa !57
  br label %711

711:                                              ; preds = %705, %698
  store i64 0, ptr %522, align 8, !tbaa !120
  br label %712

712:                                              ; preds = %711, %511
  store i32 73, ptr %21, align 8, !tbaa !28
  br label %713

713:                                              ; preds = %712, %509
  %714 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %715 = load ptr, ptr %714, align 8, !tbaa !102
  %716 = getelementptr inbounds nuw i8, ptr %715, i64 40
  %717 = load ptr, ptr %716, align 8, !tbaa !113
  %718 = icmp eq ptr %717, null
  br i1 %718, label %824, label %719

719:                                              ; preds = %713
  %720 = load i64, ptr %74, align 8, !tbaa !55
  %721 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %722 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %723 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %724 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %725 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %726

726:                                              ; preds = %802, %719
  %727 = phi i64 [ %720, %719 ], [ %789, %802 ]
  %728 = load i64, ptr %74, align 8, !tbaa !55
  %729 = load i64, ptr %721, align 8, !tbaa !41
  %730 = icmp eq i64 %728, %729
  br i1 %730, label %731, label %787

731:                                              ; preds = %726
  %732 = load ptr, ptr %714, align 8, !tbaa !102
  %733 = getelementptr inbounds nuw i8, ptr %732, i64 68
  %734 = load i32, ptr %733, align 4, !tbaa !116
  %735 = icmp ne i32 %734, 0
  %736 = icmp ugt i64 %728, %727
  %737 = select i1 %735, i1 %736, i1 false
  br i1 %737, label %738, label %744

738:                                              ; preds = %731
  %739 = sub nuw i64 %728, %727
  %740 = load ptr, ptr %722, align 8, !tbaa !40
  %741 = getelementptr inbounds nuw i8, ptr %740, i64 %727
  %742 = load i64, ptr %723, align 8, !tbaa !57
  %743 = tail call i64 @crc32_z(i64 noundef %742, ptr noundef %741, i64 noundef %739) #11
  store i64 %743, ptr %723, align 8, !tbaa !57
  br label %744

744:                                              ; preds = %738, %731
  %745 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %745) #11
  %746 = getelementptr inbounds nuw i8, ptr %745, i64 40
  %747 = load i64, ptr %746, align 8, !tbaa !55
  %748 = load i32, ptr %67, align 8, !tbaa !109
  %749 = zext i32 %748 to i64
  %750 = tail call i64 @llvm.umin.i64(i64 %747, i64 %749)
  %751 = trunc nuw i64 %750 to i32
  %752 = icmp eq i64 %750, 0
  br i1 %752, label %783, label %753

753:                                              ; preds = %744
  %754 = load ptr, ptr %49, align 8, !tbaa !108
  %755 = getelementptr inbounds nuw i8, ptr %745, i64 32
  %756 = load ptr, ptr %755, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %754, ptr align 1 %756, i64 %750, i1 false)
  %757 = load ptr, ptr %49, align 8, !tbaa !108
  %758 = getelementptr inbounds nuw i8, ptr %757, i64 %750
  store ptr %758, ptr %49, align 8, !tbaa !108
  %759 = load ptr, ptr %755, align 8, !tbaa !56
  %760 = getelementptr inbounds nuw i8, ptr %759, i64 %750
  store ptr %760, ptr %755, align 8, !tbaa !56
  %761 = load i64, ptr %724, align 8, !tbaa !110
  %762 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %761, i64 %750), !nosanitize !44
  %763 = extractvalue { i64, i1 } %762, 1, !nosanitize !44
  br i1 %763, label %764, label %765, !prof !45, !nosanitize !44

764:                                              ; preds = %753
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

765:                                              ; preds = %753
  %766 = extractvalue { i64, i1 } %762, 0, !nosanitize !44
  store i64 %766, ptr %724, align 8, !tbaa !110
  %767 = load i32, ptr %67, align 8, !tbaa !109
  %768 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %767, i32 %751), !nosanitize !44
  %769 = extractvalue { i32, i1 } %768, 1, !nosanitize !44
  br i1 %769, label %770, label %771, !prof !45, !nosanitize !44

770:                                              ; preds = %765
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

771:                                              ; preds = %765
  %772 = extractvalue { i32, i1 } %768, 0, !nosanitize !44
  store i32 %772, ptr %67, align 8, !tbaa !109
  %773 = load i64, ptr %746, align 8, !tbaa !55
  %774 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %773, i64 %750), !nosanitize !44
  %775 = extractvalue { i64, i1 } %774, 1, !nosanitize !44
  br i1 %775, label %776, label %777, !prof !45, !nosanitize !44

776:                                              ; preds = %771
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

777:                                              ; preds = %771
  %778 = extractvalue { i64, i1 } %774, 0, !nosanitize !44
  store i64 %778, ptr %746, align 8, !tbaa !55
  %779 = icmp eq i64 %778, 0
  br i1 %779, label %780, label %783

780:                                              ; preds = %777
  %781 = getelementptr inbounds nuw i8, ptr %745, i64 16
  %782 = load ptr, ptr %781, align 8, !tbaa !40
  store ptr %782, ptr %755, align 8, !tbaa !56
  br label %783

783:                                              ; preds = %780, %777, %744
  %784 = load i64, ptr %74, align 8, !tbaa !55
  %785 = icmp eq i64 %784, 0
  br i1 %785, label %787, label %786

786:                                              ; preds = %783
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1025

787:                                              ; preds = %783, %726
  %788 = phi i64 [ %728, %726 ], [ 0, %783 ]
  %789 = phi i64 [ %727, %726 ], [ 0, %783 ]
  %790 = load i64, ptr %725, align 8, !tbaa !120
  %791 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %790, i64 1), !nosanitize !44
  %792 = extractvalue { i64, i1 } %791, 1, !nosanitize !44
  br i1 %792, label %793, label %794, !prof !45, !nosanitize !44

793:                                              ; preds = %787
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

794:                                              ; preds = %787
  %795 = extractvalue { i64, i1 } %791, 0, !nosanitize !44
  %796 = load ptr, ptr %714, align 8, !tbaa !102
  %797 = getelementptr inbounds nuw i8, ptr %796, i64 40
  %798 = load ptr, ptr %797, align 8, !tbaa !113
  store i64 %795, ptr %725, align 8, !tbaa !120
  %799 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %788, i64 1), !nosanitize !44
  %800 = extractvalue { i64, i1 } %799, 1, !nosanitize !44
  br i1 %800, label %801, label %802, !prof !45, !nosanitize !44

801:                                              ; preds = %794
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

802:                                              ; preds = %794
  %803 = extractvalue { i64, i1 } %799, 0, !nosanitize !44
  %804 = load ptr, ptr %722, align 8, !tbaa !40
  %805 = getelementptr inbounds nuw i8, ptr %798, i64 %790
  %806 = load i8, ptr %805, align 1, !tbaa !5
  store i64 %803, ptr %74, align 8, !tbaa !55
  %807 = getelementptr inbounds nuw i8, ptr %804, i64 %788
  store i8 %806, ptr %807, align 1, !tbaa !5
  %808 = icmp eq i8 %806, 0
  br i1 %808, label %809, label %726, !llvm.loop !124

809:                                              ; preds = %802
  %810 = load ptr, ptr %714, align 8, !tbaa !102
  %811 = getelementptr inbounds nuw i8, ptr %810, i64 68
  %812 = load i32, ptr %811, align 4, !tbaa !116
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %823, label %814

814:                                              ; preds = %809
  %815 = load i64, ptr %74, align 8, !tbaa !55
  %816 = icmp ugt i64 %815, %789
  br i1 %816, label %817, label %823

817:                                              ; preds = %814
  %818 = sub nuw i64 %815, %789
  %819 = load ptr, ptr %722, align 8, !tbaa !40
  %820 = getelementptr inbounds nuw i8, ptr %819, i64 %789
  %821 = load i64, ptr %723, align 8, !tbaa !57
  %822 = tail call i64 @crc32_z(i64 noundef %821, ptr noundef %820, i64 noundef %818) #11
  store i64 %822, ptr %723, align 8, !tbaa !57
  br label %823

823:                                              ; preds = %817, %814, %809
  store i64 0, ptr %725, align 8, !tbaa !120
  br label %824

824:                                              ; preds = %823, %713
  store i32 91, ptr %21, align 8, !tbaa !28
  br label %825

825:                                              ; preds = %824, %509
  %826 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %827 = load ptr, ptr %826, align 8, !tbaa !102
  %828 = getelementptr inbounds nuw i8, ptr %827, i64 56
  %829 = load ptr, ptr %828, align 8, !tbaa !111
  %830 = icmp eq ptr %829, null
  br i1 %830, label %935, label %831

831:                                              ; preds = %825
  %832 = load i64, ptr %74, align 8, !tbaa !55
  %833 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %834 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %835 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %836 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %837 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %838

838:                                              ; preds = %914, %831
  %839 = phi i64 [ %832, %831 ], [ %901, %914 ]
  %840 = load i64, ptr %74, align 8, !tbaa !55
  %841 = load i64, ptr %833, align 8, !tbaa !41
  %842 = icmp eq i64 %840, %841
  br i1 %842, label %843, label %899

843:                                              ; preds = %838
  %844 = load ptr, ptr %826, align 8, !tbaa !102
  %845 = getelementptr inbounds nuw i8, ptr %844, i64 68
  %846 = load i32, ptr %845, align 4, !tbaa !116
  %847 = icmp ne i32 %846, 0
  %848 = icmp ugt i64 %840, %839
  %849 = select i1 %847, i1 %848, i1 false
  br i1 %849, label %850, label %856

850:                                              ; preds = %843
  %851 = sub nuw i64 %840, %839
  %852 = load ptr, ptr %834, align 8, !tbaa !40
  %853 = getelementptr inbounds nuw i8, ptr %852, i64 %839
  %854 = load i64, ptr %835, align 8, !tbaa !57
  %855 = tail call i64 @crc32_z(i64 noundef %854, ptr noundef %853, i64 noundef %851) #11
  store i64 %855, ptr %835, align 8, !tbaa !57
  br label %856

856:                                              ; preds = %850, %843
  %857 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %857) #11
  %858 = getelementptr inbounds nuw i8, ptr %857, i64 40
  %859 = load i64, ptr %858, align 8, !tbaa !55
  %860 = load i32, ptr %67, align 8, !tbaa !109
  %861 = zext i32 %860 to i64
  %862 = tail call i64 @llvm.umin.i64(i64 %859, i64 %861)
  %863 = trunc nuw i64 %862 to i32
  %864 = icmp eq i64 %862, 0
  br i1 %864, label %895, label %865

865:                                              ; preds = %856
  %866 = load ptr, ptr %49, align 8, !tbaa !108
  %867 = getelementptr inbounds nuw i8, ptr %857, i64 32
  %868 = load ptr, ptr %867, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %866, ptr align 1 %868, i64 %862, i1 false)
  %869 = load ptr, ptr %49, align 8, !tbaa !108
  %870 = getelementptr inbounds nuw i8, ptr %869, i64 %862
  store ptr %870, ptr %49, align 8, !tbaa !108
  %871 = load ptr, ptr %867, align 8, !tbaa !56
  %872 = getelementptr inbounds nuw i8, ptr %871, i64 %862
  store ptr %872, ptr %867, align 8, !tbaa !56
  %873 = load i64, ptr %836, align 8, !tbaa !110
  %874 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %873, i64 %862), !nosanitize !44
  %875 = extractvalue { i64, i1 } %874, 1, !nosanitize !44
  br i1 %875, label %876, label %877, !prof !45, !nosanitize !44

876:                                              ; preds = %865
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

877:                                              ; preds = %865
  %878 = extractvalue { i64, i1 } %874, 0, !nosanitize !44
  store i64 %878, ptr %836, align 8, !tbaa !110
  %879 = load i32, ptr %67, align 8, !tbaa !109
  %880 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %879, i32 %863), !nosanitize !44
  %881 = extractvalue { i32, i1 } %880, 1, !nosanitize !44
  br i1 %881, label %882, label %883, !prof !45, !nosanitize !44

882:                                              ; preds = %877
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

883:                                              ; preds = %877
  %884 = extractvalue { i32, i1 } %880, 0, !nosanitize !44
  store i32 %884, ptr %67, align 8, !tbaa !109
  %885 = load i64, ptr %858, align 8, !tbaa !55
  %886 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %885, i64 %862), !nosanitize !44
  %887 = extractvalue { i64, i1 } %886, 1, !nosanitize !44
  br i1 %887, label %888, label %889, !prof !45, !nosanitize !44

888:                                              ; preds = %883
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

889:                                              ; preds = %883
  %890 = extractvalue { i64, i1 } %886, 0, !nosanitize !44
  store i64 %890, ptr %858, align 8, !tbaa !55
  %891 = icmp eq i64 %890, 0
  br i1 %891, label %892, label %895

892:                                              ; preds = %889
  %893 = getelementptr inbounds nuw i8, ptr %857, i64 16
  %894 = load ptr, ptr %893, align 8, !tbaa !40
  store ptr %894, ptr %867, align 8, !tbaa !56
  br label %895

895:                                              ; preds = %892, %889, %856
  %896 = load i64, ptr %74, align 8, !tbaa !55
  %897 = icmp eq i64 %896, 0
  br i1 %897, label %899, label %898

898:                                              ; preds = %895
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1025

899:                                              ; preds = %895, %838
  %900 = phi i64 [ %840, %838 ], [ 0, %895 ]
  %901 = phi i64 [ %839, %838 ], [ 0, %895 ]
  %902 = load i64, ptr %837, align 8, !tbaa !120
  %903 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %902, i64 1), !nosanitize !44
  %904 = extractvalue { i64, i1 } %903, 1, !nosanitize !44
  br i1 %904, label %905, label %906, !prof !45, !nosanitize !44

905:                                              ; preds = %899
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

906:                                              ; preds = %899
  %907 = extractvalue { i64, i1 } %903, 0, !nosanitize !44
  %908 = load ptr, ptr %826, align 8, !tbaa !102
  %909 = getelementptr inbounds nuw i8, ptr %908, i64 56
  %910 = load ptr, ptr %909, align 8, !tbaa !111
  store i64 %907, ptr %837, align 8, !tbaa !120
  %911 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %900, i64 1), !nosanitize !44
  %912 = extractvalue { i64, i1 } %911, 1, !nosanitize !44
  br i1 %912, label %913, label %914, !prof !45, !nosanitize !44

913:                                              ; preds = %906
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

914:                                              ; preds = %906
  %915 = extractvalue { i64, i1 } %911, 0, !nosanitize !44
  %916 = load ptr, ptr %834, align 8, !tbaa !40
  %917 = getelementptr inbounds nuw i8, ptr %910, i64 %902
  %918 = load i8, ptr %917, align 1, !tbaa !5
  store i64 %915, ptr %74, align 8, !tbaa !55
  %919 = getelementptr inbounds nuw i8, ptr %916, i64 %900
  store i8 %918, ptr %919, align 1, !tbaa !5
  %920 = icmp eq i8 %918, 0
  br i1 %920, label %921, label %838, !llvm.loop !125

921:                                              ; preds = %914
  %922 = load ptr, ptr %826, align 8, !tbaa !102
  %923 = getelementptr inbounds nuw i8, ptr %922, i64 68
  %924 = load i32, ptr %923, align 4, !tbaa !116
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %935, label %926

926:                                              ; preds = %921
  %927 = load i64, ptr %74, align 8, !tbaa !55
  %928 = icmp ugt i64 %927, %901
  br i1 %928, label %929, label %935

929:                                              ; preds = %926
  %930 = sub nuw i64 %927, %901
  %931 = load ptr, ptr %834, align 8, !tbaa !40
  %932 = getelementptr inbounds nuw i8, ptr %931, i64 %901
  %933 = load i64, ptr %835, align 8, !tbaa !57
  %934 = tail call i64 @crc32_z(i64 noundef %933, ptr noundef %932, i64 noundef %930) #11
  store i64 %934, ptr %835, align 8, !tbaa !57
  br label %935

935:                                              ; preds = %929, %926, %921, %825
  store i32 103, ptr %21, align 8, !tbaa !28
  br label %936

936:                                              ; preds = %935, %509
  %937 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %938 = load ptr, ptr %937, align 8, !tbaa !102
  %939 = getelementptr inbounds nuw i8, ptr %938, i64 68
  %940 = load i32, ptr %939, align 4, !tbaa !116
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %977, label %942

942:                                              ; preds = %936
  %943 = load i64, ptr %74, align 8, !tbaa !55
  %944 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %943, i64 2), !nosanitize !44
  %945 = extractvalue { i64, i1 } %944, 1, !nosanitize !44
  br i1 %945, label %946, label %947, !prof !45, !nosanitize !44

946:                                              ; preds = %942
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

947:                                              ; preds = %942
  %948 = extractvalue { i64, i1 } %944, 0, !nosanitize !44
  %949 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %950 = load i64, ptr %949, align 8, !tbaa !41
  %951 = icmp ugt i64 %948, %950
  br i1 %951, label %952, label %956

952:                                              ; preds = %947
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %953 = load i64, ptr %74, align 8, !tbaa !55
  %954 = icmp eq i64 %953, 0
  br i1 %954, label %956, label %955

955:                                              ; preds = %952
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1025

956:                                              ; preds = %952, %947
  %957 = phi i64 [ 0, %952 ], [ %943, %947 ]
  %958 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %959 = add nuw i64 %957, 1
  %960 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %961 = load ptr, ptr %960, align 8, !tbaa !40
  %962 = load i64, ptr %958, align 8, !tbaa !57
  %963 = trunc i64 %962 to i8
  store i64 %959, ptr %74, align 8, !tbaa !55
  %964 = getelementptr inbounds nuw i8, ptr %961, i64 %957
  store i8 %963, ptr %964, align 1, !tbaa !5
  %965 = load i64, ptr %74, align 8, !tbaa !55
  %966 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %965, i64 1), !nosanitize !44
  %967 = extractvalue { i64, i1 } %966, 1, !nosanitize !44
  br i1 %967, label %968, label %969, !prof !45, !nosanitize !44

968:                                              ; preds = %956
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

969:                                              ; preds = %956
  %970 = extractvalue { i64, i1 } %966, 0, !nosanitize !44
  %971 = load ptr, ptr %960, align 8, !tbaa !40
  %972 = load i64, ptr %958, align 8, !tbaa !57
  %973 = lshr i64 %972, 8
  %974 = trunc i64 %973 to i8
  store i64 %970, ptr %74, align 8, !tbaa !55
  %975 = getelementptr inbounds nuw i8, ptr %971, i64 %965
  store i8 %974, ptr %975, align 1, !tbaa !5
  %976 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %976, ptr %958, align 8, !tbaa !57
  br label %977

977:                                              ; preds = %969, %936
  store i32 113, ptr %21, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %978 = load i64, ptr %74, align 8, !tbaa !55
  %979 = icmp eq i64 %978, 0
  br i1 %979, label %981, label %980

980:                                              ; preds = %977
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1025

981:                                              ; preds = %977, %509, %148
  %982 = load i32, ptr %53, align 8, !tbaa !79
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %984, label %991

984:                                              ; preds = %981, %138
  %985 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %986 = load i32, ptr %985, align 4, !tbaa !73
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %988, label %991

988:                                              ; preds = %984
  %989 = load i32, ptr %21, align 8, !tbaa !28
  %990 = icmp eq i32 %989, 666
  br i1 %990, label %1025, label %991

991:                                              ; preds = %988, %984, %981
  %992 = load i32, ptr %30, align 4, !tbaa !47
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %994, label %996

994:                                              ; preds = %991
  %995 = tail call i32 @deflate_stored(ptr noundef nonnull %15, i32 noundef 5)
  br label %1007

996:                                              ; preds = %991
  %997 = load i32, ptr %31, align 8, !tbaa !48
  switch i32 %997, label %1002 [
    i32 2, label %998
    i32 3, label %1000
  ]

998:                                              ; preds = %996
  %999 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %15, i32 noundef 5)
  br label %1007

1000:                                             ; preds = %996
  %1001 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %15, i32 noundef 5)
  br label %1007

1002:                                             ; preds = %996
  %1003 = sext i32 %992 to i64
  %.split38 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %1003
  %1004 = getelementptr inbounds nuw i8, ptr %.split38, i64 8
  %1005 = load ptr, ptr %1004, align 8, !tbaa !107
  %1006 = tail call i32 %1005(ptr noundef nonnull %15, i32 noundef 5) #11
  br label %1007

1007:                                             ; preds = %1002, %1000, %998, %994
  %1008 = phi i32 [ %995, %994 ], [ %999, %998 ], [ %1001, %1000 ], [ %1006, %1002 ]
  %1009 = and i32 %1008, -2
  %1010 = icmp eq i32 %1009, 2
  br i1 %1010, label %1011, label %1012

1011:                                             ; preds = %1007
  store i32 666, ptr %21, align 8, !tbaa !28
  br label %1012

1012:                                             ; preds = %1011, %1007
  %1013 = and i32 %1008, -3
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1015, label %1019

1015:                                             ; preds = %1012
  %1016 = load i32, ptr %67, align 8, !tbaa !109
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1018, label %1025

1018:                                             ; preds = %1015
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1025

1019:                                             ; preds = %1012
  %1020 = icmp eq i32 %1008, 1
  br i1 %1020, label %1021, label %1025

1021:                                             ; preds = %1019
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1022 = load i32, ptr %67, align 8, !tbaa !109
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1024, label %1025

1024:                                             ; preds = %1021
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1025

1025:                                             ; preds = %1024, %1021, %1019, %1018, %1015, %988, %980, %955, %898, %786, %.loopexit42, %354, %250, %141, %132, %121, %70
  %1026 = load i32, ptr %53, align 8, !tbaa !79
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1028, label %1091

1028:                                             ; preds = %1025
  %1029 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %1030 = load i32, ptr %1029, align 4, !tbaa !71
  %1031 = zext i32 %1030 to i64
  %1032 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %1033 = load i64, ptr %1032, align 8, !tbaa !72
  %1034 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1031, i64 %1033), !nosanitize !44
  %1035 = extractvalue { i64, i1 } %1034, 1, !nosanitize !44
  br i1 %1035, label %1036, label %1037, !prof !45, !nosanitize !44

1036:                                             ; preds = %1028
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !44
  unreachable, !nosanitize !44

1037:                                             ; preds = %1028
  %1038 = extractvalue { i64, i1 } %1034, 0, !nosanitize !44
  %1039 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %1040 = load i32, ptr %1039, align 4, !tbaa !73
  %1041 = zext i32 %1040 to i64
  %1042 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1038, i64 %1041), !nosanitize !44
  %1043 = extractvalue { i64, i1 } %1042, 1, !nosanitize !44
  br i1 %1043, label %1044, label %1045, !prof !45, !nosanitize !44

1044:                                             ; preds = %1037
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !44
  unreachable, !nosanitize !44

1045:                                             ; preds = %1037
  %1046 = extractvalue { i64, i1 } %1042, 0, !nosanitize !44
  %1047 = icmp eq i64 %1046, 0
  br i1 %1047, label %1048, label %1091

1048:                                             ; preds = %1045, %43, %34
  %1049 = load i32, ptr %30, align 4, !tbaa !47
  %1050 = icmp eq i32 %1049, %25
  br i1 %1050, label %1090, label %1051

1051:                                             ; preds = %1048
  %1052 = icmp eq i32 %1049, 0
  br i1 %1052, label %1053, label %1072

1053:                                             ; preds = %1051
  %1054 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %1055 = load i32, ptr %1054, align 8, !tbaa !126
  switch i32 %1055, label %1057 [
    i32 0, label %1072
    i32 1, label %1056
  ]

1056:                                             ; preds = %1053
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %1071

1057:                                             ; preds = %1053
  %1058 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %1059 = load i32, ptr %1058, align 4, !tbaa !36
  %1060 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1059, i32 1), !nosanitize !44
  %1061 = extractvalue { i32, i1 } %1060, 1, !nosanitize !44
  br i1 %1061, label %1062, label %1063, !prof !45, !nosanitize !44

1062:                                             ; preds = %1057
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1063:                                             ; preds = %1057
  %1064 = extractvalue { i32, i1 } %1060, 0, !nosanitize !44
  %1065 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %1066 = load ptr, ptr %1065, align 8, !tbaa !37
  %1067 = zext i32 %1064 to i64
  %1068 = getelementptr inbounds nuw [2 x i8], ptr %1066, i64 %1067
  store i16 0, ptr %1068, align 2, !tbaa !60
  %1069 = shl nuw nsw i64 %1067, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1066, i8 0, i64 %1069, i1 false)
  %1070 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %1070, align 8, !tbaa !61
  br label %1071

1071:                                             ; preds = %1063, %1056
  store i32 0, ptr %1054, align 8, !tbaa !126
  br label %1072

1072:                                             ; preds = %1071, %1053, %1051
  store i32 %25, ptr %30, align 4, !tbaa !47
  %1073 = zext nneg i32 %25 to i64
  %1074 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %1073
  %1075 = getelementptr inbounds nuw i8, ptr %1074, i64 2
  %1076 = load i16, ptr %1075, align 2, !tbaa !62
  %1077 = zext i16 %1076 to i32
  %1078 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %1077, ptr %1078, align 8, !tbaa !64
  %1079 = load i16, ptr %1074, align 16, !tbaa !65
  %1080 = zext i16 %1079 to i32
  %1081 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %1080, ptr %1081, align 4, !tbaa !66
  %1082 = getelementptr inbounds nuw i8, ptr %1074, i64 4
  %1083 = load i16, ptr %1082, align 4, !tbaa !67
  %1084 = zext i16 %1083 to i32
  %1085 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %1084, ptr %1085, align 8, !tbaa !68
  %1086 = getelementptr inbounds nuw i8, ptr %1074, i64 6
  %1087 = load i16, ptr %1086, align 2, !tbaa !69
  %1088 = zext i16 %1087 to i32
  %1089 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %1088, ptr %1089, align 4, !tbaa !70
  br label %1090

1090:                                             ; preds = %1072, %1048
  store i32 %2, ptr %31, align 8, !tbaa !48
  br label %1091

1091:                                             ; preds = %1090, %1045, %1025, %63, %47, %23, %20, %17, %13, %9, %5, %3
  %1092 = phi i32 [ 0, %1090 ], [ -5, %1045 ], [ -2, %23 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ], [ -2, %63 ], [ -2, %47 ], [ -5, %1025 ]
  ret i32 %1092
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1192, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1192, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1192, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %1192, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %1192

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
  switch i32 %21, label %1192 [
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
  br i1 %23, label %1192, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load ptr, ptr %25, align 8, !tbaa !108
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
  br label %1192

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !109
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !8
  br label %1192

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
  %57 = load i32, ptr %43, align 8, !tbaa !109
  %58 = zext i32 %57 to i64
  %59 = tail call i64 @llvm.umin.i64(i64 %56, i64 %58)
  %60 = trunc nuw i64 %59 to i32
  %61 = icmp eq i64 %59, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %25, align 8, !tbaa !108
  %64 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %65 = load ptr, ptr %64, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %65, i64 %59, i1 false)
  %66 = load ptr, ptr %25, align 8, !tbaa !108
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %59
  store ptr %67, ptr %25, align 8, !tbaa !108
  %68 = load ptr, ptr %64, align 8, !tbaa !56
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 %59
  store ptr %69, ptr %64, align 8, !tbaa !56
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %71 = load i64, ptr %70, align 8, !tbaa !110
  %72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %71, i64 %59), !nosanitize !44
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !44
  br i1 %73, label %74, label %75, !prof !45, !nosanitize !44

74:                                               ; preds = %62
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

75:                                               ; preds = %62
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !44
  store i64 %76, ptr %70, align 8, !tbaa !110
  %77 = load i32, ptr %43, align 8, !tbaa !109
  %78 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %77, i32 %60), !nosanitize !44
  %79 = extractvalue { i32, i1 } %78, 1, !nosanitize !44
  br i1 %79, label %80, label %81, !prof !45, !nosanitize !44

80:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

81:                                               ; preds = %75
  %82 = extractvalue { i32, i1 } %78, 0, !nosanitize !44
  store i32 %82, ptr %43, align 8, !tbaa !109
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
  br label %118

99:                                               ; preds = %93
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1192

100:                                              ; preds = %49
  br i1 %31, label %102, label %118

101:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !44
  unreachable, !nosanitize !44

102:                                              ; preds = %100
  %103 = add i32 %51, 1073741824
  %104 = icmp sgt i32 %103, -1
  br i1 %104, label %105, label %101, !prof !91, !nosanitize !44

105:                                              ; preds = %102
  %106 = icmp eq i32 %1, 5
  %107 = select i1 %106, i32 -9, i32 0
  %108 = shl nuw nsw i32 %1, 1
  %109 = add nsw i32 %107, %108
  %110 = shl nsw i32 %51, 1
  %111 = icmp sgt i32 %51, 4
  %.neg = select i1 %111, i32 -9, i32 0
  %112 = add i32 %.neg, %110
  %113 = icmp sle i32 %109, %112
  %114 = and i1 %37, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %116, ptr %117, align 8, !tbaa !8
  br label %1192

118:                                              ; preds = %105, %100, %97
  %119 = phi i64 [ %94, %97 ], [ 0, %100 ], [ 0, %105 ]
  %120 = phi i32 [ %98, %97 ], [ %21, %100 ], [ %21, %105 ]
  switch i32 %120, label %236 [
    i32 666, label %121
    i32 42, label %127
  ]

121:                                              ; preds = %118
  %122 = load i32, ptr %29, align 8, !tbaa !79
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %973, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %125, ptr %126, align 8, !tbaa !8
  br label %1192

127:                                              ; preds = %118
  %128 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %129 = load i32, ptr %128, align 8, !tbaa !29
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 113, ptr %20, align 8, !tbaa !28
  br label %970

132:                                              ; preds = %127
  %133 = getelementptr inbounds nuw i8, ptr %14, i64 84
  %134 = load i32, ptr %133, align 4, !tbaa !30
  %135 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %134, i32 8), !nosanitize !44
  %136 = extractvalue { i32, i1 } %135, 1, !nosanitize !44
  br i1 %136, label %137, label %138, !prof !45, !nosanitize !44

137:                                              ; preds = %132
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

138:                                              ; preds = %132
  %139 = extractvalue { i32, i1 } %135, 0, !nosanitize !44
  %140 = shl i32 %139, 12
  %141 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %142 = load i32, ptr %141, align 8, !tbaa !48
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %153, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %146 = load i32, ptr %145, align 4, !tbaa !47
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %153, label %148

148:                                              ; preds = %144
  %149 = icmp samesign ult i32 %146, 6
  br i1 %149, label %153, label %150

150:                                              ; preds = %148
  %151 = icmp eq i32 %146, 6
  %152 = select i1 %151, i32 128, i32 192
  br label %153

153:                                              ; preds = %150, %148, %144, %138
  %154 = phi i32 [ 0, %144 ], [ 0, %138 ], [ 64, %148 ], [ %152, %150 ]
  %155 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %156 = or disjoint i32 %154, %140
  %157 = load i32, ptr %155, align 4, !tbaa !71
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %158, i32 2048, i32 2080
  %160 = or disjoint i32 %159, %156
  %161 = urem i32 %160, 31
  %162 = or disjoint i32 %161, %160
  %163 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %119, i64 1), !nosanitize !44
  %164 = extractvalue { i64, i1 } %163, 1, !nosanitize !44
  br i1 %164, label %165, label %166, !prof !45, !nosanitize !44

165:                                              ; preds = %153
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

166:                                              ; preds = %153
  %167 = extractvalue { i64, i1 } %163, 0, !nosanitize !44
  %168 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %169 = load ptr, ptr %168, align 8, !tbaa !40
  %170 = lshr i32 %160, 8
  %171 = trunc i32 %170 to i8
  store i64 %167, ptr %52, align 8, !tbaa !55
  %172 = getelementptr inbounds nuw i8, ptr %169, i64 %119
  store i8 %171, ptr %172, align 1, !tbaa !5
  %173 = load i64, ptr %52, align 8, !tbaa !55
  %174 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %173, i64 1), !nosanitize !44
  %175 = extractvalue { i64, i1 } %174, 1, !nosanitize !44
  br i1 %175, label %176, label %177, !prof !45, !nosanitize !44

176:                                              ; preds = %166
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

177:                                              ; preds = %166
  %178 = extractvalue { i64, i1 } %174, 0, !nosanitize !44
  %179 = load ptr, ptr %168, align 8, !tbaa !40
  %180 = trunc i32 %162 to i8
  %181 = xor i8 %180, 31
  store i64 %178, ptr %52, align 8, !tbaa !55
  %182 = getelementptr inbounds nuw i8, ptr %179, i64 %173
  store i8 %181, ptr %182, align 1, !tbaa !5
  %183 = load i32, ptr %155, align 4, !tbaa !71
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %228, label %185

185:                                              ; preds = %177
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %187 = load i64, ptr %186, align 8, !tbaa !57
  %188 = lshr i64 %187, 16
  %189 = load i64, ptr %52, align 8, !tbaa !55
  %190 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %189, i64 1), !nosanitize !44
  %191 = extractvalue { i64, i1 } %190, 1, !nosanitize !44
  br i1 %191, label %192, label %193, !prof !45, !nosanitize !44

192:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

193:                                              ; preds = %185
  %194 = extractvalue { i64, i1 } %190, 0, !nosanitize !44
  %195 = load ptr, ptr %168, align 8, !tbaa !40
  %196 = lshr i64 %187, 24
  %197 = trunc i64 %196 to i8
  store i64 %194, ptr %52, align 8, !tbaa !55
  %198 = getelementptr inbounds nuw i8, ptr %195, i64 %189
  store i8 %197, ptr %198, align 1, !tbaa !5
  %199 = load i64, ptr %52, align 8, !tbaa !55
  %200 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %199, i64 1), !nosanitize !44
  %201 = extractvalue { i64, i1 } %200, 1, !nosanitize !44
  br i1 %201, label %202, label %203, !prof !45, !nosanitize !44

202:                                              ; preds = %193
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

203:                                              ; preds = %193
  %204 = extractvalue { i64, i1 } %200, 0, !nosanitize !44
  %205 = load ptr, ptr %168, align 8, !tbaa !40
  %206 = trunc i64 %188 to i8
  store i64 %204, ptr %52, align 8, !tbaa !55
  %207 = getelementptr inbounds nuw i8, ptr %205, i64 %199
  store i8 %206, ptr %207, align 1, !tbaa !5
  %208 = load i64, ptr %186, align 8, !tbaa !57
  %209 = trunc i64 %208 to i8
  %210 = load i64, ptr %52, align 8, !tbaa !55
  %211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %210, i64 1), !nosanitize !44
  %212 = extractvalue { i64, i1 } %211, 1, !nosanitize !44
  br i1 %212, label %213, label %214, !prof !45, !nosanitize !44

213:                                              ; preds = %203
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

214:                                              ; preds = %203
  %215 = extractvalue { i64, i1 } %211, 0, !nosanitize !44
  %216 = load ptr, ptr %168, align 8, !tbaa !40
  %217 = lshr i64 %208, 8
  %218 = trunc i64 %217 to i8
  store i64 %215, ptr %52, align 8, !tbaa !55
  %219 = getelementptr inbounds nuw i8, ptr %216, i64 %210
  store i8 %218, ptr %219, align 1, !tbaa !5
  %220 = load i64, ptr %52, align 8, !tbaa !55
  %221 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %220, i64 1), !nosanitize !44
  %222 = extractvalue { i64, i1 } %221, 1, !nosanitize !44
  br i1 %222, label %223, label %224, !prof !45, !nosanitize !44

223:                                              ; preds = %214
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

224:                                              ; preds = %214
  %225 = extractvalue { i64, i1 } %221, 0, !nosanitize !44
  %226 = load ptr, ptr %168, align 8, !tbaa !40
  store i64 %225, ptr %52, align 8, !tbaa !55
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 %220
  store i8 %209, ptr %227, align 1, !tbaa !5
  br label %228

228:                                              ; preds = %224, %177
  %229 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %229, ptr %230, align 8, !tbaa !57
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %231 = load i64, ptr %52, align 8, !tbaa !55
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load i32, ptr %20, align 8, !tbaa !28
  br label %236

235:                                              ; preds = %228
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1192

236:                                              ; preds = %233, %118
  %237 = phi i32 [ %234, %233 ], [ %120, %118 ]
  %238 = icmp eq i32 %237, 57
  br i1 %238, label %239, label %498

239:                                              ; preds = %236
  %240 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %240, ptr %241, align 8, !tbaa !57
  %242 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %243 = load i64, ptr %52, align 8, !tbaa !55
  %244 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %243, i64 1), !nosanitize !44
  %245 = extractvalue { i64, i1 } %244, 1, !nosanitize !44
  br i1 %245, label %246, label %247, !prof !45, !nosanitize !44

246:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

247:                                              ; preds = %239
  %248 = extractvalue { i64, i1 } %244, 0, !nosanitize !44
  %249 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %248, ptr %52, align 8, !tbaa !55
  %250 = getelementptr inbounds nuw i8, ptr %249, i64 %243
  store i8 31, ptr %250, align 1, !tbaa !5
  %251 = load i64, ptr %52, align 8, !tbaa !55
  %252 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %251, i64 1), !nosanitize !44
  %253 = extractvalue { i64, i1 } %252, 1, !nosanitize !44
  br i1 %253, label %254, label %255, !prof !45, !nosanitize !44

254:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

255:                                              ; preds = %247
  %256 = extractvalue { i64, i1 } %252, 0, !nosanitize !44
  %257 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %256, ptr %52, align 8, !tbaa !55
  %258 = getelementptr inbounds nuw i8, ptr %257, i64 %251
  store i8 -117, ptr %258, align 1, !tbaa !5
  %259 = load i64, ptr %52, align 8, !tbaa !55
  %260 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %259, i64 1), !nosanitize !44
  %261 = extractvalue { i64, i1 } %260, 1, !nosanitize !44
  br i1 %261, label %262, label %263, !prof !45, !nosanitize !44

262:                                              ; preds = %255
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

263:                                              ; preds = %255
  %264 = extractvalue { i64, i1 } %260, 0, !nosanitize !44
  %265 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %264, ptr %52, align 8, !tbaa !55
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 %259
  store i8 8, ptr %266, align 1, !tbaa !5
  %267 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %268 = load ptr, ptr %267, align 8, !tbaa !102
  %269 = icmp eq ptr %268, null
  %270 = load i64, ptr %52, align 8, !tbaa !55
  %271 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %270, i64 1), !nosanitize !44
  %272 = extractvalue { i64, i1 } %271, 1, !nosanitize !44
  br i1 %269, label %273, label %342

273:                                              ; preds = %263
  br i1 %272, label %274, label %275, !prof !45, !nosanitize !44

274:                                              ; preds = %273
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

275:                                              ; preds = %273
  %276 = extractvalue { i64, i1 } %271, 0, !nosanitize !44
  %277 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %276, ptr %52, align 8, !tbaa !55
  %278 = getelementptr inbounds nuw i8, ptr %277, i64 %270
  store i8 0, ptr %278, align 1, !tbaa !5
  %279 = load i64, ptr %52, align 8, !tbaa !55
  %280 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %279, i64 1), !nosanitize !44
  %281 = extractvalue { i64, i1 } %280, 1, !nosanitize !44
  br i1 %281, label %282, label %283, !prof !45, !nosanitize !44

282:                                              ; preds = %275
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

283:                                              ; preds = %275
  %284 = extractvalue { i64, i1 } %280, 0, !nosanitize !44
  %285 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %284, ptr %52, align 8, !tbaa !55
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 %279
  store i8 0, ptr %286, align 1, !tbaa !5
  %287 = load i64, ptr %52, align 8, !tbaa !55
  %288 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %287, i64 1), !nosanitize !44
  %289 = extractvalue { i64, i1 } %288, 1, !nosanitize !44
  br i1 %289, label %290, label %291, !prof !45, !nosanitize !44

290:                                              ; preds = %283
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

291:                                              ; preds = %283
  %292 = extractvalue { i64, i1 } %288, 0, !nosanitize !44
  %293 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %292, ptr %52, align 8, !tbaa !55
  %294 = getelementptr inbounds nuw i8, ptr %293, i64 %287
  store i8 0, ptr %294, align 1, !tbaa !5
  %295 = load i64, ptr %52, align 8, !tbaa !55
  %296 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %295, i64 1), !nosanitize !44
  %297 = extractvalue { i64, i1 } %296, 1, !nosanitize !44
  br i1 %297, label %298, label %299, !prof !45, !nosanitize !44

298:                                              ; preds = %291
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

299:                                              ; preds = %291
  %300 = extractvalue { i64, i1 } %296, 0, !nosanitize !44
  %301 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %300, ptr %52, align 8, !tbaa !55
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 %295
  store i8 0, ptr %302, align 1, !tbaa !5
  %303 = load i64, ptr %52, align 8, !tbaa !55
  %304 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %303, i64 1), !nosanitize !44
  %305 = extractvalue { i64, i1 } %304, 1, !nosanitize !44
  br i1 %305, label %306, label %307, !prof !45, !nosanitize !44

306:                                              ; preds = %299
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

307:                                              ; preds = %299
  %308 = extractvalue { i64, i1 } %304, 0, !nosanitize !44
  %309 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %308, ptr %52, align 8, !tbaa !55
  %310 = getelementptr inbounds nuw i8, ptr %309, i64 %303
  store i8 0, ptr %310, align 1, !tbaa !5
  %311 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %312 = load i32, ptr %311, align 4, !tbaa !47
  %313 = icmp eq i32 %312, 9
  br i1 %313, label %321, label %314

314:                                              ; preds = %307
  %315 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %316 = load i32, ptr %315, align 8, !tbaa !48
  %317 = icmp sgt i32 %316, 1
  %318 = icmp slt i32 %312, 2
  %319 = or i1 %318, %317
  %320 = select i1 %319, i8 4, i8 0
  br label %321

321:                                              ; preds = %314, %307
  %322 = phi i8 [ %320, %314 ], [ 2, %307 ]
  %323 = load i64, ptr %52, align 8, !tbaa !55
  %324 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %323, i64 1), !nosanitize !44
  %325 = extractvalue { i64, i1 } %324, 1, !nosanitize !44
  br i1 %325, label %326, label %327, !prof !45, !nosanitize !44

326:                                              ; preds = %321
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

327:                                              ; preds = %321
  %328 = extractvalue { i64, i1 } %324, 0, !nosanitize !44
  %329 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %328, ptr %52, align 8, !tbaa !55
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 %323
  store i8 %322, ptr %330, align 1, !tbaa !5
  %331 = load i64, ptr %52, align 8, !tbaa !55
  %332 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %331, i64 1), !nosanitize !44
  %333 = extractvalue { i64, i1 } %332, 1, !nosanitize !44
  br i1 %333, label %334, label %335, !prof !45, !nosanitize !44

334:                                              ; preds = %327
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

335:                                              ; preds = %327
  %336 = extractvalue { i64, i1 } %332, 0, !nosanitize !44
  %337 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %336, ptr %52, align 8, !tbaa !55
  %338 = getelementptr inbounds nuw i8, ptr %337, i64 %331
  store i8 3, ptr %338, align 1, !tbaa !5
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %339 = load i64, ptr %52, align 8, !tbaa !55
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %496, label %341

341:                                              ; preds = %335
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1192

342:                                              ; preds = %263
  br i1 %272, label %343, label %344, !prof !45, !nosanitize !44

343:                                              ; preds = %342
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

344:                                              ; preds = %342
  %345 = extractvalue { i64, i1 } %271, 0, !nosanitize !44
  %346 = load ptr, ptr %242, align 8, !tbaa !40
  %347 = getelementptr inbounds nuw i8, ptr %268, i64 56
  %348 = load ptr, ptr %347, align 8, !tbaa !111
  %349 = icmp eq ptr %348, null
  %350 = getelementptr inbounds nuw i8, ptr %268, i64 40
  %351 = load ptr, ptr %350, align 8, !tbaa !113
  %352 = icmp eq ptr %351, null
  %353 = getelementptr inbounds nuw i8, ptr %268, i64 24
  %354 = load ptr, ptr %353, align 8, !tbaa !114
  %355 = icmp eq ptr %354, null
  %356 = load i32, ptr %268, align 8, !tbaa !115
  %357 = icmp ne i32 %356, 0
  %358 = getelementptr inbounds nuw i8, ptr %268, i64 68
  %359 = load i32, ptr %358, align 4, !tbaa !116
  %360 = icmp eq i32 %359, 0
  %361 = select i1 %360, i8 0, i8 2
  %362 = zext i1 %357 to i8
  %363 = select i1 %355, i8 0, i8 4
  %364 = select i1 %352, i8 0, i8 8
  %365 = select i1 %349, i8 0, i8 16
  %366 = or disjoint i8 %364, %365
  %367 = or disjoint i8 %366, %363
  %368 = or disjoint i8 %367, %362
  %369 = or disjoint i8 %368, %361
  store i64 %345, ptr %52, align 8, !tbaa !55
  %370 = getelementptr inbounds nuw i8, ptr %346, i64 %270
  store i8 %369, ptr %370, align 1, !tbaa !5
  %371 = load i64, ptr %52, align 8, !tbaa !55
  %372 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %371, i64 1), !nosanitize !44
  %373 = extractvalue { i64, i1 } %372, 1, !nosanitize !44
  br i1 %373, label %374, label %375, !prof !45, !nosanitize !44

374:                                              ; preds = %344
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

375:                                              ; preds = %344
  %376 = extractvalue { i64, i1 } %372, 0, !nosanitize !44
  %377 = load ptr, ptr %242, align 8, !tbaa !40
  %378 = load ptr, ptr %267, align 8, !tbaa !102
  %379 = getelementptr inbounds nuw i8, ptr %378, i64 8
  %380 = load i64, ptr %379, align 8, !tbaa !117
  %381 = trunc i64 %380 to i8
  store i64 %376, ptr %52, align 8, !tbaa !55
  %382 = getelementptr inbounds nuw i8, ptr %377, i64 %371
  store i8 %381, ptr %382, align 1, !tbaa !5
  %383 = load i64, ptr %52, align 8, !tbaa !55
  %384 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %383, i64 1), !nosanitize !44
  %385 = extractvalue { i64, i1 } %384, 1, !nosanitize !44
  br i1 %385, label %386, label %387, !prof !45, !nosanitize !44

386:                                              ; preds = %375
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

387:                                              ; preds = %375
  %388 = extractvalue { i64, i1 } %384, 0, !nosanitize !44
  %389 = load ptr, ptr %242, align 8, !tbaa !40
  %390 = load ptr, ptr %267, align 8, !tbaa !102
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 8
  %392 = load i64, ptr %391, align 8, !tbaa !117
  %393 = lshr i64 %392, 8
  %394 = trunc i64 %393 to i8
  store i64 %388, ptr %52, align 8, !tbaa !55
  %395 = getelementptr inbounds nuw i8, ptr %389, i64 %383
  store i8 %394, ptr %395, align 1, !tbaa !5
  %396 = load i64, ptr %52, align 8, !tbaa !55
  %397 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %396, i64 1), !nosanitize !44
  %398 = extractvalue { i64, i1 } %397, 1, !nosanitize !44
  br i1 %398, label %399, label %400, !prof !45, !nosanitize !44

399:                                              ; preds = %387
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

400:                                              ; preds = %387
  %401 = extractvalue { i64, i1 } %397, 0, !nosanitize !44
  %402 = load ptr, ptr %242, align 8, !tbaa !40
  %403 = load ptr, ptr %267, align 8, !tbaa !102
  %404 = getelementptr inbounds nuw i8, ptr %403, i64 8
  %405 = load i64, ptr %404, align 8, !tbaa !117
  %406 = lshr i64 %405, 16
  %407 = trunc i64 %406 to i8
  store i64 %401, ptr %52, align 8, !tbaa !55
  %408 = getelementptr inbounds nuw i8, ptr %402, i64 %396
  store i8 %407, ptr %408, align 1, !tbaa !5
  %409 = load i64, ptr %52, align 8, !tbaa !55
  %410 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %409, i64 1), !nosanitize !44
  %411 = extractvalue { i64, i1 } %410, 1, !nosanitize !44
  br i1 %411, label %412, label %413, !prof !45, !nosanitize !44

412:                                              ; preds = %400
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

413:                                              ; preds = %400
  %414 = extractvalue { i64, i1 } %410, 0, !nosanitize !44
  %415 = load ptr, ptr %242, align 8, !tbaa !40
  %416 = load ptr, ptr %267, align 8, !tbaa !102
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 8
  %418 = load i64, ptr %417, align 8, !tbaa !117
  %419 = lshr i64 %418, 24
  %420 = trunc i64 %419 to i8
  store i64 %414, ptr %52, align 8, !tbaa !55
  %421 = getelementptr inbounds nuw i8, ptr %415, i64 %409
  store i8 %420, ptr %421, align 1, !tbaa !5
  %422 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %423 = load i32, ptr %422, align 4, !tbaa !47
  %424 = icmp eq i32 %423, 9
  br i1 %424, label %432, label %425

425:                                              ; preds = %413
  %426 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %427 = load i32, ptr %426, align 8, !tbaa !48
  %428 = icmp sgt i32 %427, 1
  %429 = icmp slt i32 %423, 2
  %430 = or i1 %429, %428
  %431 = select i1 %430, i8 4, i8 0
  br label %432

432:                                              ; preds = %425, %413
  %433 = phi i8 [ %431, %425 ], [ 2, %413 ]
  %434 = load i64, ptr %52, align 8, !tbaa !55
  %435 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %434, i64 1), !nosanitize !44
  %436 = extractvalue { i64, i1 } %435, 1, !nosanitize !44
  br i1 %436, label %437, label %438, !prof !45, !nosanitize !44

437:                                              ; preds = %432
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

438:                                              ; preds = %432
  %439 = extractvalue { i64, i1 } %435, 0, !nosanitize !44
  %440 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %439, ptr %52, align 8, !tbaa !55
  %441 = getelementptr inbounds nuw i8, ptr %440, i64 %434
  store i8 %433, ptr %441, align 1, !tbaa !5
  %442 = load i64, ptr %52, align 8, !tbaa !55
  %443 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %442, i64 1), !nosanitize !44
  %444 = extractvalue { i64, i1 } %443, 1, !nosanitize !44
  br i1 %444, label %445, label %446, !prof !45, !nosanitize !44

445:                                              ; preds = %438
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

446:                                              ; preds = %438
  %447 = extractvalue { i64, i1 } %443, 0, !nosanitize !44
  %448 = load ptr, ptr %242, align 8, !tbaa !40
  %449 = load ptr, ptr %267, align 8, !tbaa !102
  %450 = getelementptr inbounds nuw i8, ptr %449, i64 20
  %451 = load i32, ptr %450, align 4, !tbaa !118
  %452 = trunc i32 %451 to i8
  store i64 %447, ptr %52, align 8, !tbaa !55
  %453 = getelementptr inbounds nuw i8, ptr %448, i64 %442
  store i8 %452, ptr %453, align 1, !tbaa !5
  %454 = load ptr, ptr %267, align 8, !tbaa !102
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 24
  %456 = load ptr, ptr %455, align 8, !tbaa !114
  %457 = icmp eq ptr %456, null
  br i1 %457, label %484, label %458

458:                                              ; preds = %446
  %459 = load i64, ptr %52, align 8, !tbaa !55
  %460 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %459, i64 1), !nosanitize !44
  %461 = extractvalue { i64, i1 } %460, 1, !nosanitize !44
  br i1 %461, label %462, label %463, !prof !45, !nosanitize !44

462:                                              ; preds = %458
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

463:                                              ; preds = %458
  %464 = extractvalue { i64, i1 } %460, 0, !nosanitize !44
  %465 = load ptr, ptr %242, align 8, !tbaa !40
  %466 = getelementptr inbounds nuw i8, ptr %454, i64 32
  %467 = load i32, ptr %466, align 8, !tbaa !119
  %468 = trunc i32 %467 to i8
  store i64 %464, ptr %52, align 8, !tbaa !55
  %469 = getelementptr inbounds nuw i8, ptr %465, i64 %459
  store i8 %468, ptr %469, align 1, !tbaa !5
  %470 = load i64, ptr %52, align 8, !tbaa !55
  %471 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %470, i64 1), !nosanitize !44
  %472 = extractvalue { i64, i1 } %471, 1, !nosanitize !44
  br i1 %472, label %473, label %474, !prof !45, !nosanitize !44

473:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

474:                                              ; preds = %463
  %475 = extractvalue { i64, i1 } %471, 0, !nosanitize !44
  %476 = load ptr, ptr %242, align 8, !tbaa !40
  %477 = load ptr, ptr %267, align 8, !tbaa !102
  %478 = getelementptr inbounds nuw i8, ptr %477, i64 32
  %479 = load i32, ptr %478, align 8, !tbaa !119
  %480 = lshr i32 %479, 8
  %481 = trunc i32 %480 to i8
  store i64 %475, ptr %52, align 8, !tbaa !55
  %482 = getelementptr inbounds nuw i8, ptr %476, i64 %470
  store i8 %481, ptr %482, align 1, !tbaa !5
  %483 = load ptr, ptr %267, align 8, !tbaa !102
  br label %484

484:                                              ; preds = %474, %446
  %485 = phi ptr [ %483, %474 ], [ %454, %446 ]
  %486 = getelementptr inbounds nuw i8, ptr %485, i64 68
  %487 = load i32, ptr %486, align 4, !tbaa !116
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %494, label %489

489:                                              ; preds = %484
  %490 = load i64, ptr %241, align 8, !tbaa !57
  %491 = load ptr, ptr %242, align 8, !tbaa !40
  %492 = load i64, ptr %52, align 8, !tbaa !55
  %493 = tail call i64 @crc32_z(i64 noundef %490, ptr noundef %491, i64 noundef %492) #11
  store i64 %493, ptr %241, align 8, !tbaa !57
  br label %494

494:                                              ; preds = %489, %484
  %495 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %495, align 8, !tbaa !120
  store i32 69, ptr %20, align 8, !tbaa !28
  br label %500

496:                                              ; preds = %335
  %497 = load i32, ptr %20, align 8, !tbaa !28
  br label %498

498:                                              ; preds = %496, %236
  %499 = phi i32 [ %497, %496 ], [ %237, %236 ]
  switch i32 %499, label %970 [
    i32 69, label %500
    i32 73, label %702
    i32 91, label %814
    i32 103, label %925
  ]

500:                                              ; preds = %498, %494
  %501 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %502 = load ptr, ptr %501, align 8, !tbaa !102
  %503 = getelementptr inbounds nuw i8, ptr %502, i64 24
  %504 = load ptr, ptr %503, align 8, !tbaa !114
  %505 = icmp eq ptr %504, null
  br i1 %505, label %701, label %506

506:                                              ; preds = %500
  %507 = getelementptr inbounds nuw i8, ptr %502, i64 32
  %508 = load i32, ptr %507, align 8, !tbaa !119
  %509 = and i32 %508, 65535
  %510 = zext nneg i32 %509 to i64
  %511 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %512 = load i64, ptr %511, align 8, !tbaa !120
  %513 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %510, i64 %512), !nosanitize !44
  %514 = extractvalue { i64, i1 } %513, 1, !nosanitize !44
  br i1 %514, label %515, label %516, !prof !45, !nosanitize !44

515:                                              ; preds = %506
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

516:                                              ; preds = %506
  %517 = load i64, ptr %52, align 8, !tbaa !55
  %518 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %519 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %520 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %521 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %522 = extractvalue { i64, i1 } %513, 0
  %523 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %517, i64 %522), !nosanitize !44
  %524 = extractvalue { i64, i1 } %523, 1, !nosanitize !44
  br i1 %524, label %600, label %525, !prof !45, !nosanitize !44

525:                                              ; preds = %516
  %526 = extractvalue { i64, i1 } %523, 0, !nosanitize !44
  %527 = load i64, ptr %518, align 8, !tbaa !41
  %528 = icmp ugt i64 %526, %527
  br i1 %528, label %529, label %674

529:                                              ; preds = %525
  %530 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %527, i64 %517), !nosanitize !44
  %531 = extractvalue { i64, i1 } %530, 0, !nosanitize !44
  %532 = extractvalue { i64, i1 } %530, 1, !nosanitize !44
  br i1 %532, label %601, label %533, !prof !45, !nosanitize !44

533:                                              ; preds = %529
  %534 = load ptr, ptr %519, align 8, !tbaa !40
  %535 = getelementptr inbounds nuw i8, ptr %534, i64 %517
  %536 = getelementptr inbounds nuw i8, ptr %504, i64 %512
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %535, ptr nonnull align 1 %536, i64 %531, i1 false)
  %537 = load i64, ptr %518, align 8, !tbaa !41
  store i64 %537, ptr %52, align 8, !tbaa !55
  %538 = load ptr, ptr %501, align 8, !tbaa !102
  %539 = getelementptr inbounds nuw i8, ptr %538, i64 68
  %540 = load i32, ptr %539, align 4, !tbaa !116
  %541 = icmp ne i32 %540, 0
  %542 = icmp ugt i64 %537, %517
  %543 = select i1 %541, i1 %542, i1 false
  br i1 %543, label %544, label %550

544:                                              ; preds = %533
  %545 = sub nuw i64 %537, %517
  %546 = load ptr, ptr %519, align 8, !tbaa !40
  %547 = getelementptr inbounds nuw i8, ptr %546, i64 %517
  %548 = load i64, ptr %520, align 8, !tbaa !57
  %549 = tail call i64 @crc32_z(i64 noundef %548, ptr noundef %547, i64 noundef %545) #11
  store i64 %549, ptr %520, align 8, !tbaa !57
  br label %550

550:                                              ; preds = %544, %533
  %551 = load i64, ptr %511, align 8, !tbaa !120
  %552 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %551, i64 %531), !nosanitize !44
  %553 = extractvalue { i64, i1 } %552, 1, !nosanitize !44
  br i1 %553, label %.loopexit, label %554, !prof !45, !nosanitize !44

554:                                              ; preds = %550
  %555 = extractvalue { i64, i1 } %552, 0, !nosanitize !44
  store i64 %555, ptr %511, align 8, !tbaa !120
  %556 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %556) #11
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 40
  %558 = load i64, ptr %557, align 8, !tbaa !55
  %559 = load i32, ptr %43, align 8, !tbaa !109
  %560 = zext i32 %559 to i64
  %561 = tail call i64 @llvm.umin.i64(i64 %558, i64 %560)
  %562 = trunc nuw i64 %561 to i32
  %563 = icmp eq i64 %561, 0
  br i1 %563, label %591, label %564

564:                                              ; preds = %554
  %565 = load ptr, ptr %25, align 8, !tbaa !108
  %566 = getelementptr inbounds nuw i8, ptr %556, i64 32
  %567 = load ptr, ptr %566, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %565, ptr align 1 %567, i64 %561, i1 false)
  %568 = load ptr, ptr %25, align 8, !tbaa !108
  %569 = getelementptr inbounds nuw i8, ptr %568, i64 %561
  store ptr %569, ptr %25, align 8, !tbaa !108
  %570 = load ptr, ptr %566, align 8, !tbaa !56
  %571 = getelementptr inbounds nuw i8, ptr %570, i64 %561
  store ptr %571, ptr %566, align 8, !tbaa !56
  %572 = load i64, ptr %521, align 8, !tbaa !110
  %573 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %572, i64 %561), !nosanitize !44
  %574 = extractvalue { i64, i1 } %573, 1, !nosanitize !44
  br i1 %574, label %.loopexit36, label %575, !prof !45, !nosanitize !44

575:                                              ; preds = %564
  %576 = extractvalue { i64, i1 } %573, 0, !nosanitize !44
  store i64 %576, ptr %521, align 8, !tbaa !110
  %577 = load i32, ptr %43, align 8, !tbaa !109
  %578 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %577, i32 %562), !nosanitize !44
  %579 = extractvalue { i32, i1 } %578, 1, !nosanitize !44
  br i1 %579, label %.loopexit37, label %580, !prof !45, !nosanitize !44

580:                                              ; preds = %575
  %581 = extractvalue { i32, i1 } %578, 0, !nosanitize !44
  store i32 %581, ptr %43, align 8, !tbaa !109
  %582 = load i64, ptr %557, align 8, !tbaa !55
  %583 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %582, i64 %561), !nosanitize !44
  %584 = extractvalue { i64, i1 } %583, 1, !nosanitize !44
  br i1 %584, label %.loopexit38, label %585, !prof !45, !nosanitize !44

585:                                              ; preds = %580
  %586 = extractvalue { i64, i1 } %583, 0, !nosanitize !44
  store i64 %586, ptr %557, align 8, !tbaa !55
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %588, label %591

588:                                              ; preds = %585
  %589 = getelementptr inbounds nuw i8, ptr %556, i64 16
  %590 = load ptr, ptr %589, align 8, !tbaa !40
  store ptr %590, ptr %566, align 8, !tbaa !56
  br label %591

591:                                              ; preds = %588, %585, %554
  %592 = load i64, ptr %52, align 8, !tbaa !55
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %.loopexit39

594:                                              ; preds = %591
  %595 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %522, i64 %531), !nosanitize !44
  %596 = extractvalue { i64, i1 } %595, 1, !nosanitize !44
  br i1 %596, label %669, label %.preheader, !prof !45, !nosanitize !44

.preheader:                                       ; preds = %594
  %597 = extractvalue { i64, i1 } %595, 0
  %598 = load i64, ptr %518, align 8, !tbaa !41
  %599 = icmp ugt i64 %597, %598
  br i1 %599, label %.lr.ph, label %._crit_edge

600:                                              ; preds = %516
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

601:                                              ; preds = %529
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.lr.ph:                                           ; preds = %.preheader, %665
  %602 = phi i64 [ %667, %665 ], [ %598, %.preheader ]
  %603 = phi i64 [ %666, %665 ], [ %597, %.preheader ]
  %604 = load ptr, ptr %519, align 8, !tbaa !40
  %605 = load ptr, ptr %501, align 8, !tbaa !102
  %606 = getelementptr inbounds nuw i8, ptr %605, i64 24
  %607 = load ptr, ptr %606, align 8, !tbaa !114
  %608 = load i64, ptr %511, align 8, !tbaa !120
  %609 = getelementptr inbounds nuw i8, ptr %607, i64 %608
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %604, ptr align 1 %609, i64 %602, i1 false)
  %610 = load i64, ptr %518, align 8, !tbaa !41
  store i64 %610, ptr %52, align 8, !tbaa !55
  %611 = load ptr, ptr %501, align 8, !tbaa !102
  %612 = getelementptr inbounds nuw i8, ptr %611, i64 68
  %613 = load i32, ptr %612, align 4, !tbaa !116
  %614 = icmp ne i32 %613, 0
  %615 = icmp ne i64 %610, 0
  %616 = select i1 %614, i1 %615, i1 false
  br i1 %616, label %617, label %621

617:                                              ; preds = %.lr.ph
  %618 = load ptr, ptr %519, align 8, !tbaa !40
  %619 = load i64, ptr %520, align 8, !tbaa !57
  %620 = tail call i64 @crc32_z(i64 noundef %619, ptr noundef %618, i64 noundef %610) #11
  store i64 %620, ptr %520, align 8, !tbaa !57
  br label %621

621:                                              ; preds = %617, %.lr.ph
  %622 = load i64, ptr %511, align 8, !tbaa !120
  %623 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %622, i64 %602), !nosanitize !44
  %624 = extractvalue { i64, i1 } %623, 1, !nosanitize !44
  br i1 %624, label %.loopexit, label %625, !prof !121, !nosanitize !44

.loopexit:                                        ; preds = %621, %550
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

625:                                              ; preds = %621
  %626 = extractvalue { i64, i1 } %623, 0, !nosanitize !44
  store i64 %626, ptr %511, align 8, !tbaa !120
  %627 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %627) #11
  %628 = getelementptr inbounds nuw i8, ptr %627, i64 40
  %629 = load i64, ptr %628, align 8, !tbaa !55
  %630 = load i32, ptr %43, align 8, !tbaa !109
  %631 = zext i32 %630 to i64
  %632 = tail call i64 @llvm.umin.i64(i64 %629, i64 %631)
  %633 = trunc nuw i64 %632 to i32
  %634 = icmp eq i64 %632, 0
  br i1 %634, label %662, label %635

635:                                              ; preds = %625
  %636 = load ptr, ptr %25, align 8, !tbaa !108
  %637 = getelementptr inbounds nuw i8, ptr %627, i64 32
  %638 = load ptr, ptr %637, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %636, ptr align 1 %638, i64 %632, i1 false)
  %639 = load ptr, ptr %25, align 8, !tbaa !108
  %640 = getelementptr inbounds nuw i8, ptr %639, i64 %632
  store ptr %640, ptr %25, align 8, !tbaa !108
  %641 = load ptr, ptr %637, align 8, !tbaa !56
  %642 = getelementptr inbounds nuw i8, ptr %641, i64 %632
  store ptr %642, ptr %637, align 8, !tbaa !56
  %643 = load i64, ptr %521, align 8, !tbaa !110
  %644 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %643, i64 %632), !nosanitize !44
  %645 = extractvalue { i64, i1 } %644, 1, !nosanitize !44
  br i1 %645, label %.loopexit36, label %646, !prof !121, !nosanitize !44

.loopexit36:                                      ; preds = %635, %564
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

646:                                              ; preds = %635
  %647 = extractvalue { i64, i1 } %644, 0, !nosanitize !44
  store i64 %647, ptr %521, align 8, !tbaa !110
  %648 = load i32, ptr %43, align 8, !tbaa !109
  %649 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %648, i32 %633), !nosanitize !44
  %650 = extractvalue { i32, i1 } %649, 1, !nosanitize !44
  br i1 %650, label %.loopexit37, label %651, !prof !121, !nosanitize !44

.loopexit37:                                      ; preds = %646, %575
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

651:                                              ; preds = %646
  %652 = extractvalue { i32, i1 } %649, 0, !nosanitize !44
  store i32 %652, ptr %43, align 8, !tbaa !109
  %653 = load i64, ptr %628, align 8, !tbaa !55
  %654 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %653, i64 %632), !nosanitize !44
  %655 = extractvalue { i64, i1 } %654, 1, !nosanitize !44
  br i1 %655, label %.loopexit38, label %656, !prof !121, !nosanitize !44

.loopexit38:                                      ; preds = %651, %580
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

656:                                              ; preds = %651
  %657 = extractvalue { i64, i1 } %654, 0, !nosanitize !44
  store i64 %657, ptr %628, align 8, !tbaa !55
  %658 = icmp eq i64 %657, 0
  br i1 %658, label %659, label %662

659:                                              ; preds = %656
  %660 = getelementptr inbounds nuw i8, ptr %627, i64 16
  %661 = load ptr, ptr %660, align 8, !tbaa !40
  store ptr %661, ptr %637, align 8, !tbaa !56
  br label %662

662:                                              ; preds = %659, %656, %625
  %663 = load i64, ptr %52, align 8, !tbaa !55
  %664 = icmp eq i64 %663, 0
  br i1 %664, label %665, label %.loopexit39

.loopexit39:                                      ; preds = %662, %591
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1192

665:                                              ; preds = %662
  %666 = sub i64 %603, %602
  %667 = load i64, ptr %518, align 8, !tbaa !41
  %668 = icmp ugt i64 %666, %667
  br i1 %668, label %.lr.ph, label %._crit_edge, !llvm.loop !122

669:                                              ; preds = %594
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

._crit_edge:                                      ; preds = %665, %.preheader
  %.lcssa = phi i64 [ %597, %.preheader ], [ %666, %665 ]
  %670 = load ptr, ptr %501, align 8, !tbaa !102
  %671 = getelementptr inbounds nuw i8, ptr %670, i64 24
  %672 = load ptr, ptr %671, align 8, !tbaa !114
  %673 = load i64, ptr %511, align 8, !tbaa !120
  br label %674

674:                                              ; preds = %._crit_edge, %525
  %675 = phi i64 [ %512, %525 ], [ %673, %._crit_edge ]
  %676 = phi ptr [ %504, %525 ], [ %672, %._crit_edge ]
  %677 = phi i64 [ %517, %525 ], [ 0, %._crit_edge ]
  %678 = phi i64 [ %522, %525 ], [ %.lcssa, %._crit_edge ]
  %679 = load ptr, ptr %519, align 8, !tbaa !40
  %680 = getelementptr inbounds nuw i8, ptr %679, i64 %677
  %681 = getelementptr inbounds nuw i8, ptr %676, i64 %675
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %680, ptr align 1 %681, i64 %678, i1 false)
  %682 = load i64, ptr %52, align 8, !tbaa !55
  %683 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %682, i64 %678), !nosanitize !44
  %684 = extractvalue { i64, i1 } %683, 0, !nosanitize !44
  %685 = extractvalue { i64, i1 } %683, 1, !nosanitize !44
  br i1 %685, label %686, label %687, !prof !45, !nosanitize !44

686:                                              ; preds = %674
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

687:                                              ; preds = %674
  store i64 %684, ptr %52, align 8, !tbaa !55
  %688 = load ptr, ptr %501, align 8, !tbaa !102
  %689 = getelementptr inbounds nuw i8, ptr %688, i64 68
  %690 = load i32, ptr %689, align 4, !tbaa !116
  %691 = icmp ne i32 %690, 0
  %692 = icmp ugt i64 %684, %677
  %693 = select i1 %691, i1 %692, i1 false
  br i1 %693, label %694, label %700

694:                                              ; preds = %687
  %695 = sub nuw i64 %684, %677
  %696 = load ptr, ptr %519, align 8, !tbaa !40
  %697 = getelementptr inbounds nuw i8, ptr %696, i64 %677
  %698 = load i64, ptr %520, align 8, !tbaa !57
  %699 = tail call i64 @crc32_z(i64 noundef %698, ptr noundef %697, i64 noundef %695) #11
  store i64 %699, ptr %520, align 8, !tbaa !57
  br label %700

700:                                              ; preds = %694, %687
  store i64 0, ptr %511, align 8, !tbaa !120
  br label %701

701:                                              ; preds = %700, %500
  store i32 73, ptr %20, align 8, !tbaa !28
  br label %702

702:                                              ; preds = %701, %498
  %703 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %704 = load ptr, ptr %703, align 8, !tbaa !102
  %705 = getelementptr inbounds nuw i8, ptr %704, i64 40
  %706 = load ptr, ptr %705, align 8, !tbaa !113
  %707 = icmp eq ptr %706, null
  br i1 %707, label %813, label %708

708:                                              ; preds = %702
  %709 = load i64, ptr %52, align 8, !tbaa !55
  %710 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %711 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %712 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %713 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %714 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %715

715:                                              ; preds = %791, %708
  %716 = phi i64 [ %709, %708 ], [ %778, %791 ]
  %717 = load i64, ptr %52, align 8, !tbaa !55
  %718 = load i64, ptr %710, align 8, !tbaa !41
  %719 = icmp eq i64 %717, %718
  br i1 %719, label %720, label %776

720:                                              ; preds = %715
  %721 = load ptr, ptr %703, align 8, !tbaa !102
  %722 = getelementptr inbounds nuw i8, ptr %721, i64 68
  %723 = load i32, ptr %722, align 4, !tbaa !116
  %724 = icmp ne i32 %723, 0
  %725 = icmp ugt i64 %717, %716
  %726 = select i1 %724, i1 %725, i1 false
  br i1 %726, label %727, label %733

727:                                              ; preds = %720
  %728 = sub nuw i64 %717, %716
  %729 = load ptr, ptr %711, align 8, !tbaa !40
  %730 = getelementptr inbounds nuw i8, ptr %729, i64 %716
  %731 = load i64, ptr %712, align 8, !tbaa !57
  %732 = tail call i64 @crc32_z(i64 noundef %731, ptr noundef %730, i64 noundef %728) #11
  store i64 %732, ptr %712, align 8, !tbaa !57
  br label %733

733:                                              ; preds = %727, %720
  %734 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %734) #11
  %735 = getelementptr inbounds nuw i8, ptr %734, i64 40
  %736 = load i64, ptr %735, align 8, !tbaa !55
  %737 = load i32, ptr %43, align 8, !tbaa !109
  %738 = zext i32 %737 to i64
  %739 = tail call i64 @llvm.umin.i64(i64 %736, i64 %738)
  %740 = trunc nuw i64 %739 to i32
  %741 = icmp eq i64 %739, 0
  br i1 %741, label %772, label %742

742:                                              ; preds = %733
  %743 = load ptr, ptr %25, align 8, !tbaa !108
  %744 = getelementptr inbounds nuw i8, ptr %734, i64 32
  %745 = load ptr, ptr %744, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %743, ptr align 1 %745, i64 %739, i1 false)
  %746 = load ptr, ptr %25, align 8, !tbaa !108
  %747 = getelementptr inbounds nuw i8, ptr %746, i64 %739
  store ptr %747, ptr %25, align 8, !tbaa !108
  %748 = load ptr, ptr %744, align 8, !tbaa !56
  %749 = getelementptr inbounds nuw i8, ptr %748, i64 %739
  store ptr %749, ptr %744, align 8, !tbaa !56
  %750 = load i64, ptr %713, align 8, !tbaa !110
  %751 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %750, i64 %739), !nosanitize !44
  %752 = extractvalue { i64, i1 } %751, 1, !nosanitize !44
  br i1 %752, label %753, label %754, !prof !45, !nosanitize !44

753:                                              ; preds = %742
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

754:                                              ; preds = %742
  %755 = extractvalue { i64, i1 } %751, 0, !nosanitize !44
  store i64 %755, ptr %713, align 8, !tbaa !110
  %756 = load i32, ptr %43, align 8, !tbaa !109
  %757 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %756, i32 %740), !nosanitize !44
  %758 = extractvalue { i32, i1 } %757, 1, !nosanitize !44
  br i1 %758, label %759, label %760, !prof !45, !nosanitize !44

759:                                              ; preds = %754
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

760:                                              ; preds = %754
  %761 = extractvalue { i32, i1 } %757, 0, !nosanitize !44
  store i32 %761, ptr %43, align 8, !tbaa !109
  %762 = load i64, ptr %735, align 8, !tbaa !55
  %763 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %762, i64 %739), !nosanitize !44
  %764 = extractvalue { i64, i1 } %763, 1, !nosanitize !44
  br i1 %764, label %765, label %766, !prof !45, !nosanitize !44

765:                                              ; preds = %760
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

766:                                              ; preds = %760
  %767 = extractvalue { i64, i1 } %763, 0, !nosanitize !44
  store i64 %767, ptr %735, align 8, !tbaa !55
  %768 = icmp eq i64 %767, 0
  br i1 %768, label %769, label %772

769:                                              ; preds = %766
  %770 = getelementptr inbounds nuw i8, ptr %734, i64 16
  %771 = load ptr, ptr %770, align 8, !tbaa !40
  store ptr %771, ptr %744, align 8, !tbaa !56
  br label %772

772:                                              ; preds = %769, %766, %733
  %773 = load i64, ptr %52, align 8, !tbaa !55
  %774 = icmp eq i64 %773, 0
  br i1 %774, label %776, label %775

775:                                              ; preds = %772
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1192

776:                                              ; preds = %772, %715
  %777 = phi i64 [ %717, %715 ], [ 0, %772 ]
  %778 = phi i64 [ %716, %715 ], [ 0, %772 ]
  %779 = load i64, ptr %714, align 8, !tbaa !120
  %780 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %779, i64 1), !nosanitize !44
  %781 = extractvalue { i64, i1 } %780, 1, !nosanitize !44
  br i1 %781, label %782, label %783, !prof !45, !nosanitize !44

782:                                              ; preds = %776
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

783:                                              ; preds = %776
  %784 = extractvalue { i64, i1 } %780, 0, !nosanitize !44
  %785 = load ptr, ptr %703, align 8, !tbaa !102
  %786 = getelementptr inbounds nuw i8, ptr %785, i64 40
  %787 = load ptr, ptr %786, align 8, !tbaa !113
  store i64 %784, ptr %714, align 8, !tbaa !120
  %788 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %777, i64 1), !nosanitize !44
  %789 = extractvalue { i64, i1 } %788, 1, !nosanitize !44
  br i1 %789, label %790, label %791, !prof !45, !nosanitize !44

790:                                              ; preds = %783
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

791:                                              ; preds = %783
  %792 = extractvalue { i64, i1 } %788, 0, !nosanitize !44
  %793 = load ptr, ptr %711, align 8, !tbaa !40
  %794 = getelementptr inbounds nuw i8, ptr %787, i64 %779
  %795 = load i8, ptr %794, align 1, !tbaa !5
  store i64 %792, ptr %52, align 8, !tbaa !55
  %796 = getelementptr inbounds nuw i8, ptr %793, i64 %777
  store i8 %795, ptr %796, align 1, !tbaa !5
  %797 = icmp eq i8 %795, 0
  br i1 %797, label %798, label %715, !llvm.loop !124

798:                                              ; preds = %791
  %799 = load ptr, ptr %703, align 8, !tbaa !102
  %800 = getelementptr inbounds nuw i8, ptr %799, i64 68
  %801 = load i32, ptr %800, align 4, !tbaa !116
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %812, label %803

803:                                              ; preds = %798
  %804 = load i64, ptr %52, align 8, !tbaa !55
  %805 = icmp ugt i64 %804, %778
  br i1 %805, label %806, label %812

806:                                              ; preds = %803
  %807 = sub nuw i64 %804, %778
  %808 = load ptr, ptr %711, align 8, !tbaa !40
  %809 = getelementptr inbounds nuw i8, ptr %808, i64 %778
  %810 = load i64, ptr %712, align 8, !tbaa !57
  %811 = tail call i64 @crc32_z(i64 noundef %810, ptr noundef %809, i64 noundef %807) #11
  store i64 %811, ptr %712, align 8, !tbaa !57
  br label %812

812:                                              ; preds = %806, %803, %798
  store i64 0, ptr %714, align 8, !tbaa !120
  br label %813

813:                                              ; preds = %812, %702
  store i32 91, ptr %20, align 8, !tbaa !28
  br label %814

814:                                              ; preds = %813, %498
  %815 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %816 = load ptr, ptr %815, align 8, !tbaa !102
  %817 = getelementptr inbounds nuw i8, ptr %816, i64 56
  %818 = load ptr, ptr %817, align 8, !tbaa !111
  %819 = icmp eq ptr %818, null
  br i1 %819, label %924, label %820

820:                                              ; preds = %814
  %821 = load i64, ptr %52, align 8, !tbaa !55
  %822 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %823 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %824 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %825 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %826 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %827

827:                                              ; preds = %903, %820
  %828 = phi i64 [ %821, %820 ], [ %890, %903 ]
  %829 = load i64, ptr %52, align 8, !tbaa !55
  %830 = load i64, ptr %822, align 8, !tbaa !41
  %831 = icmp eq i64 %829, %830
  br i1 %831, label %832, label %888

832:                                              ; preds = %827
  %833 = load ptr, ptr %815, align 8, !tbaa !102
  %834 = getelementptr inbounds nuw i8, ptr %833, i64 68
  %835 = load i32, ptr %834, align 4, !tbaa !116
  %836 = icmp ne i32 %835, 0
  %837 = icmp ugt i64 %829, %828
  %838 = select i1 %836, i1 %837, i1 false
  br i1 %838, label %839, label %845

839:                                              ; preds = %832
  %840 = sub nuw i64 %829, %828
  %841 = load ptr, ptr %823, align 8, !tbaa !40
  %842 = getelementptr inbounds nuw i8, ptr %841, i64 %828
  %843 = load i64, ptr %824, align 8, !tbaa !57
  %844 = tail call i64 @crc32_z(i64 noundef %843, ptr noundef %842, i64 noundef %840) #11
  store i64 %844, ptr %824, align 8, !tbaa !57
  br label %845

845:                                              ; preds = %839, %832
  %846 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %846) #11
  %847 = getelementptr inbounds nuw i8, ptr %846, i64 40
  %848 = load i64, ptr %847, align 8, !tbaa !55
  %849 = load i32, ptr %43, align 8, !tbaa !109
  %850 = zext i32 %849 to i64
  %851 = tail call i64 @llvm.umin.i64(i64 %848, i64 %850)
  %852 = trunc nuw i64 %851 to i32
  %853 = icmp eq i64 %851, 0
  br i1 %853, label %884, label %854

854:                                              ; preds = %845
  %855 = load ptr, ptr %25, align 8, !tbaa !108
  %856 = getelementptr inbounds nuw i8, ptr %846, i64 32
  %857 = load ptr, ptr %856, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %855, ptr align 1 %857, i64 %851, i1 false)
  %858 = load ptr, ptr %25, align 8, !tbaa !108
  %859 = getelementptr inbounds nuw i8, ptr %858, i64 %851
  store ptr %859, ptr %25, align 8, !tbaa !108
  %860 = load ptr, ptr %856, align 8, !tbaa !56
  %861 = getelementptr inbounds nuw i8, ptr %860, i64 %851
  store ptr %861, ptr %856, align 8, !tbaa !56
  %862 = load i64, ptr %825, align 8, !tbaa !110
  %863 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %862, i64 %851), !nosanitize !44
  %864 = extractvalue { i64, i1 } %863, 1, !nosanitize !44
  br i1 %864, label %865, label %866, !prof !45, !nosanitize !44

865:                                              ; preds = %854
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

866:                                              ; preds = %854
  %867 = extractvalue { i64, i1 } %863, 0, !nosanitize !44
  store i64 %867, ptr %825, align 8, !tbaa !110
  %868 = load i32, ptr %43, align 8, !tbaa !109
  %869 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %868, i32 %852), !nosanitize !44
  %870 = extractvalue { i32, i1 } %869, 1, !nosanitize !44
  br i1 %870, label %871, label %872, !prof !45, !nosanitize !44

871:                                              ; preds = %866
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

872:                                              ; preds = %866
  %873 = extractvalue { i32, i1 } %869, 0, !nosanitize !44
  store i32 %873, ptr %43, align 8, !tbaa !109
  %874 = load i64, ptr %847, align 8, !tbaa !55
  %875 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %874, i64 %851), !nosanitize !44
  %876 = extractvalue { i64, i1 } %875, 1, !nosanitize !44
  br i1 %876, label %877, label %878, !prof !45, !nosanitize !44

877:                                              ; preds = %872
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

878:                                              ; preds = %872
  %879 = extractvalue { i64, i1 } %875, 0, !nosanitize !44
  store i64 %879, ptr %847, align 8, !tbaa !55
  %880 = icmp eq i64 %879, 0
  br i1 %880, label %881, label %884

881:                                              ; preds = %878
  %882 = getelementptr inbounds nuw i8, ptr %846, i64 16
  %883 = load ptr, ptr %882, align 8, !tbaa !40
  store ptr %883, ptr %856, align 8, !tbaa !56
  br label %884

884:                                              ; preds = %881, %878, %845
  %885 = load i64, ptr %52, align 8, !tbaa !55
  %886 = icmp eq i64 %885, 0
  br i1 %886, label %888, label %887

887:                                              ; preds = %884
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1192

888:                                              ; preds = %884, %827
  %889 = phi i64 [ %829, %827 ], [ 0, %884 ]
  %890 = phi i64 [ %828, %827 ], [ 0, %884 ]
  %891 = load i64, ptr %826, align 8, !tbaa !120
  %892 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %891, i64 1), !nosanitize !44
  %893 = extractvalue { i64, i1 } %892, 1, !nosanitize !44
  br i1 %893, label %894, label %895, !prof !45, !nosanitize !44

894:                                              ; preds = %888
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

895:                                              ; preds = %888
  %896 = extractvalue { i64, i1 } %892, 0, !nosanitize !44
  %897 = load ptr, ptr %815, align 8, !tbaa !102
  %898 = getelementptr inbounds nuw i8, ptr %897, i64 56
  %899 = load ptr, ptr %898, align 8, !tbaa !111
  store i64 %896, ptr %826, align 8, !tbaa !120
  %900 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %889, i64 1), !nosanitize !44
  %901 = extractvalue { i64, i1 } %900, 1, !nosanitize !44
  br i1 %901, label %902, label %903, !prof !45, !nosanitize !44

902:                                              ; preds = %895
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

903:                                              ; preds = %895
  %904 = extractvalue { i64, i1 } %900, 0, !nosanitize !44
  %905 = load ptr, ptr %823, align 8, !tbaa !40
  %906 = getelementptr inbounds nuw i8, ptr %899, i64 %891
  %907 = load i8, ptr %906, align 1, !tbaa !5
  store i64 %904, ptr %52, align 8, !tbaa !55
  %908 = getelementptr inbounds nuw i8, ptr %905, i64 %889
  store i8 %907, ptr %908, align 1, !tbaa !5
  %909 = icmp eq i8 %907, 0
  br i1 %909, label %910, label %827, !llvm.loop !125

910:                                              ; preds = %903
  %911 = load ptr, ptr %815, align 8, !tbaa !102
  %912 = getelementptr inbounds nuw i8, ptr %911, i64 68
  %913 = load i32, ptr %912, align 4, !tbaa !116
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %924, label %915

915:                                              ; preds = %910
  %916 = load i64, ptr %52, align 8, !tbaa !55
  %917 = icmp ugt i64 %916, %890
  br i1 %917, label %918, label %924

918:                                              ; preds = %915
  %919 = sub nuw i64 %916, %890
  %920 = load ptr, ptr %823, align 8, !tbaa !40
  %921 = getelementptr inbounds nuw i8, ptr %920, i64 %890
  %922 = load i64, ptr %824, align 8, !tbaa !57
  %923 = tail call i64 @crc32_z(i64 noundef %922, ptr noundef %921, i64 noundef %919) #11
  store i64 %923, ptr %824, align 8, !tbaa !57
  br label %924

924:                                              ; preds = %918, %915, %910, %814
  store i32 103, ptr %20, align 8, !tbaa !28
  br label %925

925:                                              ; preds = %924, %498
  %926 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %927 = load ptr, ptr %926, align 8, !tbaa !102
  %928 = getelementptr inbounds nuw i8, ptr %927, i64 68
  %929 = load i32, ptr %928, align 4, !tbaa !116
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %966, label %931

931:                                              ; preds = %925
  %932 = load i64, ptr %52, align 8, !tbaa !55
  %933 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %932, i64 2), !nosanitize !44
  %934 = extractvalue { i64, i1 } %933, 1, !nosanitize !44
  br i1 %934, label %935, label %936, !prof !45, !nosanitize !44

935:                                              ; preds = %931
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

936:                                              ; preds = %931
  %937 = extractvalue { i64, i1 } %933, 0, !nosanitize !44
  %938 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %939 = load i64, ptr %938, align 8, !tbaa !41
  %940 = icmp ugt i64 %937, %939
  br i1 %940, label %941, label %945

941:                                              ; preds = %936
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %942 = load i64, ptr %52, align 8, !tbaa !55
  %943 = icmp eq i64 %942, 0
  br i1 %943, label %945, label %944

944:                                              ; preds = %941
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1192

945:                                              ; preds = %941, %936
  %946 = phi i64 [ 0, %941 ], [ %932, %936 ]
  %947 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %948 = add nuw i64 %946, 1
  %949 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %950 = load ptr, ptr %949, align 8, !tbaa !40
  %951 = load i64, ptr %947, align 8, !tbaa !57
  %952 = trunc i64 %951 to i8
  store i64 %948, ptr %52, align 8, !tbaa !55
  %953 = getelementptr inbounds nuw i8, ptr %950, i64 %946
  store i8 %952, ptr %953, align 1, !tbaa !5
  %954 = load i64, ptr %52, align 8, !tbaa !55
  %955 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %954, i64 1), !nosanitize !44
  %956 = extractvalue { i64, i1 } %955, 1, !nosanitize !44
  br i1 %956, label %957, label %958, !prof !45, !nosanitize !44

957:                                              ; preds = %945
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

958:                                              ; preds = %945
  %959 = extractvalue { i64, i1 } %955, 0, !nosanitize !44
  %960 = load ptr, ptr %949, align 8, !tbaa !40
  %961 = load i64, ptr %947, align 8, !tbaa !57
  %962 = lshr i64 %961, 8
  %963 = trunc i64 %962 to i8
  store i64 %959, ptr %52, align 8, !tbaa !55
  %964 = getelementptr inbounds nuw i8, ptr %960, i64 %954
  store i8 %963, ptr %964, align 1, !tbaa !5
  %965 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %965, ptr %947, align 8, !tbaa !57
  br label %966

966:                                              ; preds = %958, %925
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %967 = load i64, ptr %52, align 8, !tbaa !55
  %968 = icmp eq i64 %967, 0
  br i1 %968, label %970, label %969

969:                                              ; preds = %966
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1192

970:                                              ; preds = %966, %498, %131
  %971 = load i32, ptr %29, align 8, !tbaa !79
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %973, label %982

973:                                              ; preds = %970, %121
  %974 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %975 = load i32, ptr %974, align 4, !tbaa !73
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %977, label %982

977:                                              ; preds = %973
  %978 = icmp eq i32 %1, 0
  br i1 %978, label %1192, label %979

979:                                              ; preds = %977
  %980 = load i32, ptr %20, align 8, !tbaa !28
  %981 = icmp eq i32 %980, 666
  br i1 %981, label %1043, label %982

982:                                              ; preds = %979, %973, %970
  %983 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %984 = load i32, ptr %983, align 4, !tbaa !47
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %986, label %988

986:                                              ; preds = %982
  %987 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %1000

988:                                              ; preds = %982
  %989 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %990 = load i32, ptr %989, align 8, !tbaa !48
  switch i32 %990, label %995 [
    i32 2, label %991
    i32 3, label %993
  ]

991:                                              ; preds = %988
  %992 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %1000

993:                                              ; preds = %988
  %994 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %1000

995:                                              ; preds = %988
  %996 = sext i32 %984 to i64
  %.split = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %996
  %997 = getelementptr inbounds nuw i8, ptr %.split, i64 8
  %998 = load ptr, ptr %997, align 8, !tbaa !107
  %999 = tail call i32 %998(ptr noundef nonnull %14, i32 noundef %1) #11
  br label %1000

1000:                                             ; preds = %995, %993, %991, %986
  %1001 = phi i32 [ %987, %986 ], [ %992, %991 ], [ %994, %993 ], [ %999, %995 ]
  %1002 = and i32 %1001, -2
  %1003 = icmp eq i32 %1002, 2
  br i1 %1003, label %1004, label %1005

1004:                                             ; preds = %1000
  store i32 666, ptr %20, align 8, !tbaa !28
  br label %1005

1005:                                             ; preds = %1004, %1000
  %1006 = and i32 %1001, -3
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1008, label %1012

1008:                                             ; preds = %1005
  %1009 = load i32, ptr %43, align 8, !tbaa !109
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1011, label %1192

1011:                                             ; preds = %1008
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1192

1012:                                             ; preds = %1005
  %1013 = icmp eq i32 %1001, 1
  br i1 %1013, label %1014, label %1043

1014:                                             ; preds = %1012
  switch i32 %1, label %1016 [
    i32 1, label %1015
    i32 5, label %1039
  ]

1015:                                             ; preds = %1014
  tail call void @_tr_align(ptr noundef nonnull %14) #11
  br label %1039

1016:                                             ; preds = %1014
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %1017 = icmp eq i32 %1, 3
  br i1 %1017, label %1018, label %1039

1018:                                             ; preds = %1016
  %1019 = getelementptr inbounds nuw i8, ptr %14, i64 132
  %1020 = load i32, ptr %1019, align 4, !tbaa !36
  %1021 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1020, i32 1), !nosanitize !44
  %1022 = extractvalue { i32, i1 } %1021, 1, !nosanitize !44
  br i1 %1022, label %1023, label %1024, !prof !45, !nosanitize !44

1023:                                             ; preds = %1018
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1024:                                             ; preds = %1018
  %1025 = extractvalue { i32, i1 } %1021, 0, !nosanitize !44
  %1026 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %1027 = load ptr, ptr %1026, align 8, !tbaa !37
  %1028 = zext i32 %1025 to i64
  %1029 = getelementptr inbounds nuw [2 x i8], ptr %1027, i64 %1028
  store i16 0, ptr %1029, align 2, !tbaa !60
  %1030 = shl nuw nsw i64 %1028, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1027, i8 0, i64 %1030, i1 false)
  %1031 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %1031, align 8, !tbaa !61
  %1032 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %1033 = load i32, ptr %1032, align 4, !tbaa !73
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1035, label %1039

1035:                                             ; preds = %1024
  %1036 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %1036, align 4, !tbaa !71
  %1037 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %1037, align 8, !tbaa !72
  %1038 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %1038, align 4, !tbaa !74
  br label %1039

1039:                                             ; preds = %1035, %1024, %1016, %1015, %1014
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1040 = load i32, ptr %43, align 8, !tbaa !109
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1042, label %1043

1042:                                             ; preds = %1039
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1192

1043:                                             ; preds = %1039, %1012, %979
  br i1 %37, label %1192, label %1044

1044:                                             ; preds = %1043
  %1045 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %1046 = load i32, ptr %1045, align 8, !tbaa !29
  %1047 = icmp slt i32 %1046, 1
  br i1 %1047, label %1192, label %1048

1048:                                             ; preds = %1044
  %1049 = icmp eq i32 %1046, 2
  %1050 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1049, label %1051, label %1140

1051:                                             ; preds = %1048
  %1052 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1053 = load i64, ptr %52, align 8, !tbaa !55
  %1054 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1053, i64 1), !nosanitize !44
  %1055 = extractvalue { i64, i1 } %1054, 1, !nosanitize !44
  br i1 %1055, label %1056, label %1057, !prof !45, !nosanitize !44

1056:                                             ; preds = %1051
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1057:                                             ; preds = %1051
  %1058 = extractvalue { i64, i1 } %1054, 0, !nosanitize !44
  %1059 = load ptr, ptr %1052, align 8, !tbaa !40
  %1060 = load i64, ptr %1050, align 8, !tbaa !57
  %1061 = trunc i64 %1060 to i8
  store i64 %1058, ptr %52, align 8, !tbaa !55
  %1062 = getelementptr inbounds nuw i8, ptr %1059, i64 %1053
  store i8 %1061, ptr %1062, align 1, !tbaa !5
  %1063 = load i64, ptr %52, align 8, !tbaa !55
  %1064 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1063, i64 1), !nosanitize !44
  %1065 = extractvalue { i64, i1 } %1064, 1, !nosanitize !44
  br i1 %1065, label %1066, label %1067, !prof !45, !nosanitize !44

1066:                                             ; preds = %1057
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1067:                                             ; preds = %1057
  %1068 = extractvalue { i64, i1 } %1064, 0, !nosanitize !44
  %1069 = load ptr, ptr %1052, align 8, !tbaa !40
  %1070 = load i64, ptr %1050, align 8, !tbaa !57
  %1071 = lshr i64 %1070, 8
  %1072 = trunc i64 %1071 to i8
  store i64 %1068, ptr %52, align 8, !tbaa !55
  %1073 = getelementptr inbounds nuw i8, ptr %1069, i64 %1063
  store i8 %1072, ptr %1073, align 1, !tbaa !5
  %1074 = load i64, ptr %52, align 8, !tbaa !55
  %1075 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1074, i64 1), !nosanitize !44
  %1076 = extractvalue { i64, i1 } %1075, 1, !nosanitize !44
  br i1 %1076, label %1077, label %1078, !prof !45, !nosanitize !44

1077:                                             ; preds = %1067
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1078:                                             ; preds = %1067
  %1079 = extractvalue { i64, i1 } %1075, 0, !nosanitize !44
  %1080 = load ptr, ptr %1052, align 8, !tbaa !40
  %1081 = load i64, ptr %1050, align 8, !tbaa !57
  %1082 = lshr i64 %1081, 16
  %1083 = trunc i64 %1082 to i8
  store i64 %1079, ptr %52, align 8, !tbaa !55
  %1084 = getelementptr inbounds nuw i8, ptr %1080, i64 %1074
  store i8 %1083, ptr %1084, align 1, !tbaa !5
  %1085 = load i64, ptr %52, align 8, !tbaa !55
  %1086 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1085, i64 1), !nosanitize !44
  %1087 = extractvalue { i64, i1 } %1086, 1, !nosanitize !44
  br i1 %1087, label %1088, label %1089, !prof !45, !nosanitize !44

1088:                                             ; preds = %1078
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1089:                                             ; preds = %1078
  %1090 = extractvalue { i64, i1 } %1086, 0, !nosanitize !44
  %1091 = load ptr, ptr %1052, align 8, !tbaa !40
  %1092 = load i64, ptr %1050, align 8, !tbaa !57
  %1093 = lshr i64 %1092, 24
  %1094 = trunc i64 %1093 to i8
  store i64 %1090, ptr %52, align 8, !tbaa !55
  %1095 = getelementptr inbounds nuw i8, ptr %1091, i64 %1085
  store i8 %1094, ptr %1095, align 1, !tbaa !5
  %1096 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1097 = load i64, ptr %52, align 8, !tbaa !55
  %1098 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1097, i64 1), !nosanitize !44
  %1099 = extractvalue { i64, i1 } %1098, 1, !nosanitize !44
  br i1 %1099, label %1100, label %1101, !prof !45, !nosanitize !44

1100:                                             ; preds = %1089
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1101:                                             ; preds = %1089
  %1102 = extractvalue { i64, i1 } %1098, 0, !nosanitize !44
  %1103 = load ptr, ptr %1052, align 8, !tbaa !40
  %1104 = load i64, ptr %1096, align 8, !tbaa !53
  %1105 = trunc i64 %1104 to i8
  store i64 %1102, ptr %52, align 8, !tbaa !55
  %1106 = getelementptr inbounds nuw i8, ptr %1103, i64 %1097
  store i8 %1105, ptr %1106, align 1, !tbaa !5
  %1107 = load i64, ptr %52, align 8, !tbaa !55
  %1108 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1107, i64 1), !nosanitize !44
  %1109 = extractvalue { i64, i1 } %1108, 1, !nosanitize !44
  br i1 %1109, label %1110, label %1111, !prof !45, !nosanitize !44

1110:                                             ; preds = %1101
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1111:                                             ; preds = %1101
  %1112 = extractvalue { i64, i1 } %1108, 0, !nosanitize !44
  %1113 = load ptr, ptr %1052, align 8, !tbaa !40
  %1114 = load i64, ptr %1096, align 8, !tbaa !53
  %1115 = lshr i64 %1114, 8
  %1116 = trunc i64 %1115 to i8
  store i64 %1112, ptr %52, align 8, !tbaa !55
  %1117 = getelementptr inbounds nuw i8, ptr %1113, i64 %1107
  store i8 %1116, ptr %1117, align 1, !tbaa !5
  %1118 = load i64, ptr %52, align 8, !tbaa !55
  %1119 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1118, i64 1), !nosanitize !44
  %1120 = extractvalue { i64, i1 } %1119, 1, !nosanitize !44
  br i1 %1120, label %1121, label %1122, !prof !45, !nosanitize !44

1121:                                             ; preds = %1111
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1122:                                             ; preds = %1111
  %1123 = extractvalue { i64, i1 } %1119, 0, !nosanitize !44
  %1124 = load ptr, ptr %1052, align 8, !tbaa !40
  %1125 = load i64, ptr %1096, align 8, !tbaa !53
  %1126 = lshr i64 %1125, 16
  %1127 = trunc i64 %1126 to i8
  store i64 %1123, ptr %52, align 8, !tbaa !55
  %1128 = getelementptr inbounds nuw i8, ptr %1124, i64 %1118
  store i8 %1127, ptr %1128, align 1, !tbaa !5
  %1129 = load i64, ptr %52, align 8, !tbaa !55
  %1130 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1129, i64 1), !nosanitize !44
  %1131 = extractvalue { i64, i1 } %1130, 1, !nosanitize !44
  br i1 %1131, label %1132, label %1133, !prof !45, !nosanitize !44

1132:                                             ; preds = %1122
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1133:                                             ; preds = %1122
  %1134 = extractvalue { i64, i1 } %1130, 0, !nosanitize !44
  %1135 = load ptr, ptr %1052, align 8, !tbaa !40
  %1136 = load i64, ptr %1096, align 8, !tbaa !53
  %1137 = lshr i64 %1136, 24
  %1138 = trunc i64 %1137 to i8
  store i64 %1134, ptr %52, align 8, !tbaa !55
  %1139 = getelementptr inbounds nuw i8, ptr %1135, i64 %1129
  store i8 %1138, ptr %1139, align 1, !tbaa !5
  br label %1183

1140:                                             ; preds = %1048
  %1141 = load i64, ptr %1050, align 8, !tbaa !57
  %1142 = lshr i64 %1141, 16
  %1143 = load i64, ptr %52, align 8, !tbaa !55
  %1144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1143, i64 1), !nosanitize !44
  %1145 = extractvalue { i64, i1 } %1144, 1, !nosanitize !44
  br i1 %1145, label %1146, label %1147, !prof !45, !nosanitize !44

1146:                                             ; preds = %1140
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1147:                                             ; preds = %1140
  %1148 = extractvalue { i64, i1 } %1144, 0, !nosanitize !44
  %1149 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1150 = load ptr, ptr %1149, align 8, !tbaa !40
  %1151 = lshr i64 %1141, 24
  %1152 = trunc i64 %1151 to i8
  store i64 %1148, ptr %52, align 8, !tbaa !55
  %1153 = getelementptr inbounds nuw i8, ptr %1150, i64 %1143
  store i8 %1152, ptr %1153, align 1, !tbaa !5
  %1154 = load i64, ptr %52, align 8, !tbaa !55
  %1155 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1154, i64 1), !nosanitize !44
  %1156 = extractvalue { i64, i1 } %1155, 1, !nosanitize !44
  br i1 %1156, label %1157, label %1158, !prof !45, !nosanitize !44

1157:                                             ; preds = %1147
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1158:                                             ; preds = %1147
  %1159 = extractvalue { i64, i1 } %1155, 0, !nosanitize !44
  %1160 = load ptr, ptr %1149, align 8, !tbaa !40
  %1161 = trunc i64 %1142 to i8
  store i64 %1159, ptr %52, align 8, !tbaa !55
  %1162 = getelementptr inbounds nuw i8, ptr %1160, i64 %1154
  store i8 %1161, ptr %1162, align 1, !tbaa !5
  %1163 = load i64, ptr %1050, align 8, !tbaa !57
  %1164 = trunc i64 %1163 to i8
  %1165 = load i64, ptr %52, align 8, !tbaa !55
  %1166 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1165, i64 1), !nosanitize !44
  %1167 = extractvalue { i64, i1 } %1166, 1, !nosanitize !44
  br i1 %1167, label %1168, label %1169, !prof !45, !nosanitize !44

1168:                                             ; preds = %1158
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1169:                                             ; preds = %1158
  %1170 = extractvalue { i64, i1 } %1166, 0, !nosanitize !44
  %1171 = load ptr, ptr %1149, align 8, !tbaa !40
  %1172 = lshr i64 %1163, 8
  %1173 = trunc i64 %1172 to i8
  store i64 %1170, ptr %52, align 8, !tbaa !55
  %1174 = getelementptr inbounds nuw i8, ptr %1171, i64 %1165
  store i8 %1173, ptr %1174, align 1, !tbaa !5
  %1175 = load i64, ptr %52, align 8, !tbaa !55
  %1176 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1175, i64 1), !nosanitize !44
  %1177 = extractvalue { i64, i1 } %1176, 1, !nosanitize !44
  br i1 %1177, label %1178, label %1179, !prof !45, !nosanitize !44

1178:                                             ; preds = %1169
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1179:                                             ; preds = %1169
  %1180 = extractvalue { i64, i1 } %1176, 0, !nosanitize !44
  %1181 = load ptr, ptr %1149, align 8, !tbaa !40
  store i64 %1180, ptr %52, align 8, !tbaa !55
  %1182 = getelementptr inbounds nuw i8, ptr %1181, i64 %1175
  store i8 %1164, ptr %1182, align 1, !tbaa !5
  br label %1183

1183:                                             ; preds = %1179, %1133
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1184 = load i32, ptr %1045, align 8, !tbaa !29
  %1185 = icmp sgt i32 %1184, 0
  br i1 %1185, label %1186, label %1188

1186:                                             ; preds = %1183
  %1187 = sub nsw i32 0, %1184
  store i32 %1187, ptr %1045, align 8, !tbaa !29
  br label %1188

1188:                                             ; preds = %1186, %1183
  %1189 = load i64, ptr %52, align 8, !tbaa !55
  %1190 = icmp eq i64 %1189, 0
  %1191 = zext i1 %1190 to i32
  br label %1192

1192:                                             ; preds = %1188, %1044, %1043, %1042, %1011, %1008, %977, %969, %944, %887, %775, %.loopexit39, %341, %235, %124, %115, %99, %46, %39, %22, %19, %16, %12, %8, %4, %2
  %1193 = phi i32 [ -2, %39 ], [ -5, %46 ], [ 0, %99 ], [ -5, %124 ], [ 0, %341 ], [ 0, %944 ], [ 0, %969 ], [ %1191, %1188 ], [ 0, %235 ], [ -5, %115 ], [ -2, %22 ], [ 0, %775 ], [ 0, %887 ], [ 0, %1043 ], [ 1, %1044 ], [ 0, %1008 ], [ 0, %1011 ], [ 0, %1042 ], [ 0, %.loopexit39 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ], [ 0, %977 ]
  ret i32 %1193
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
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !127

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
  br i1 %31, label %.loopexit33, label %.split, !llvm.loop !128

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
  br i1 %43, label %middle.block29, label %vector.body21, !llvm.loop !129

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
  br i1 %52, label %.loopexit, label %scalar.ph13, !llvm.loop !130

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
  %29 = lshr i64 %1, 7
  %30 = lshr i64 %1, 11
  %31 = add i64 %1, 7
  %32 = add i64 %31, %28
  %33 = add i64 %32, %29
  %34 = add i64 %33, %30
  %35 = icmp ult i64 %34, %1
  %36 = select i1 %35, i64 -1, i64 %34
  %37 = icmp eq ptr %0, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %24
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %40 = load ptr, ptr %39, align 8, !tbaa !15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %44 = load ptr, ptr %43, align 8, !tbaa !17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %48 = load ptr, ptr %47, align 8, !tbaa !18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %48, align 8, !tbaa !19
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %55 = load i32, ptr %54, align 8, !tbaa !28
  switch i32 %55, label %56 [
    i32 42, label %62
    i32 57, label %62
    i32 69, label %62
    i32 73, label %62
    i32 91, label %62
    i32 103, label %62
    i32 113, label %62
    i32 666, label %62
  ]

56:                                               ; preds = %53, %50, %46, %42, %38, %24
  %57 = tail call i64 @llvm.umax.i64(i64 %27, i64 %36)
  %58 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %57, i64 18), !nosanitize !44
  %59 = extractvalue { i64, i1 } %58, 0, !nosanitize !44
  %60 = extractvalue { i64, i1 } %58, 1, !nosanitize !44
  br i1 %60, label %61, label %172, !prof !45, !nosanitize !44

61:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

62:                                               ; preds = %53, %53, %53, %53, %53, %53, %53, %53
  %63 = getelementptr inbounds nuw i8, ptr %48, i64 48
  %64 = load i32, ptr %63, align 8, !tbaa !29
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %64), !nosanitize !44
  %68 = extractvalue { i32, i1 } %67, 0, !nosanitize !44
  %69 = extractvalue { i32, i1 } %67, 1, !nosanitize !44
  br i1 %69, label %70, label %71, !prof !45, !nosanitize !44

70:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !44
  unreachable, !nosanitize !44

71:                                               ; preds = %66, %62
  %72 = phi i32 [ %68, %66 ], [ %64, %62 ]
  switch i32 %72, label %135 [
    i32 0, label %136
    i32 1, label %73
    i32 2, label %78
  ]

73:                                               ; preds = %71
  %74 = getelementptr inbounds nuw i8, ptr %48, i64 172
  %75 = load i32, ptr %74, align 4, !tbaa !71
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, i64 6, i64 10
  br label %136

78:                                               ; preds = %71
  %79 = getelementptr inbounds nuw i8, ptr %48, i64 56
  %80 = load ptr, ptr %79, align 8, !tbaa !102
  %81 = icmp eq ptr %80, null
  br i1 %81, label %136, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %80, i64 24
  %84 = load ptr, ptr %83, align 8, !tbaa !114
  %85 = icmp eq ptr %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %88 = load i32, ptr %87, align 8, !tbaa !119
  %89 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %88, i32 2), !nosanitize !44
  %90 = extractvalue { i32, i1 } %89, 1, !nosanitize !44
  br i1 %90, label %91, label %92, !prof !45, !nosanitize !44

91:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

92:                                               ; preds = %86
  %93 = extractvalue { i32, i1 } %89, 0, !nosanitize !44
  %94 = zext i32 %93 to i64
  %95 = add nuw nsw i64 %94, 18
  br label %96

96:                                               ; preds = %92, %82
  %97 = phi i64 [ %95, %92 ], [ 18, %82 ]
  %98 = getelementptr inbounds nuw i8, ptr %80, i64 40
  %99 = load ptr, ptr %98, align 8, !tbaa !113
  %100 = icmp eq ptr %99, null
  br i1 %100, label %.loopexit7, label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %96
  %101 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %97, i64 1), !nosanitize !44
  %102 = extractvalue { i64, i1 } %101, 1, !nosanitize !44
  br i1 %102, label %.preheader6._crit_edge, label %.lr.ph, !prof !131, !nosanitize !44

.preheader6:                                      ; preds = %.lr.ph
  %103 = getelementptr inbounds nuw i8, ptr %107, i64 1
  %104 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %108, i64 1), !nosanitize !44
  %105 = extractvalue { i64, i1 } %104, 1, !nosanitize !44
  br i1 %105, label %.preheader6._crit_edge, label %.lr.ph, !prof !132, !llvm.loop !133, !nosanitize !44

.preheader6._crit_edge:                           ; preds = %.preheader6, %.preheader6.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.lr.ph:                                           ; preds = %.preheader6.preheader, %.preheader6
  %106 = phi { i64, i1 } [ %104, %.preheader6 ], [ %101, %.preheader6.preheader ]
  %107 = phi ptr [ %103, %.preheader6 ], [ %99, %.preheader6.preheader ]
  %108 = extractvalue { i64, i1 } %106, 0, !nosanitize !44
  %109 = load i8, ptr %107, align 1, !tbaa !5
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %.loopexit7, label %.preheader6, !llvm.loop !133

.loopexit7:                                       ; preds = %.lr.ph, %96
  %111 = phi i64 [ %97, %96 ], [ %108, %.lr.ph ]
  %112 = getelementptr inbounds nuw i8, ptr %80, i64 56
  %113 = load ptr, ptr %112, align 8, !tbaa !111
  %114 = icmp eq ptr %113, null
  br i1 %114, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit7
  %115 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %111, i64 1), !nosanitize !44
  %116 = extractvalue { i64, i1 } %115, 1, !nosanitize !44
  br i1 %116, label %.preheader._crit_edge, label %.lr.ph17, !prof !131, !nosanitize !44

.preheader:                                       ; preds = %.lr.ph17
  %117 = getelementptr inbounds nuw i8, ptr %121, i64 1
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %122, i64 1), !nosanitize !44
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !44
  br i1 %119, label %.preheader._crit_edge, label %.lr.ph17, !prof !132, !llvm.loop !134, !nosanitize !44

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.lr.ph17:                                         ; preds = %.preheader.preheader, %.preheader
  %120 = phi { i64, i1 } [ %118, %.preheader ], [ %115, %.preheader.preheader ]
  %121 = phi ptr [ %117, %.preheader ], [ %113, %.preheader.preheader ]
  %122 = extractvalue { i64, i1 } %120, 0, !nosanitize !44
  %123 = load i8, ptr %121, align 1, !tbaa !5
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %.loopexit, label %.preheader, !llvm.loop !134

.loopexit:                                        ; preds = %.lr.ph17, %.loopexit7
  %125 = phi i64 [ %111, %.loopexit7 ], [ %122, %.lr.ph17 ]
  %126 = getelementptr inbounds nuw i8, ptr %80, i64 68
  %127 = load i32, ptr %126, align 4, !tbaa !116
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %.loopexit
  %130 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %125, i64 2), !nosanitize !44
  %131 = extractvalue { i64, i1 } %130, 1, !nosanitize !44
  br i1 %131, label %132, label %133, !prof !45, !nosanitize !44

132:                                              ; preds = %129
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

133:                                              ; preds = %129
  %134 = extractvalue { i64, i1 } %130, 0, !nosanitize !44
  br label %136

135:                                              ; preds = %71
  br label %136

136:                                              ; preds = %135, %133, %.loopexit, %78, %73, %71
  %137 = phi i64 [ 18, %135 ], [ %77, %73 ], [ 18, %78 ], [ 0, %71 ], [ %134, %133 ], [ %125, %.loopexit ]
  %138 = getelementptr inbounds nuw i8, ptr %48, i64 84
  %139 = load i32, ptr %138, align 4, !tbaa !30
  %140 = icmp eq i32 %139, 15
  %141 = getelementptr inbounds nuw i8, ptr %48, i64 136
  %142 = load i32, ptr %141, align 8, !tbaa !50
  %143 = icmp eq i32 %142, 15
  %144 = select i1 %140, i1 %143, i1 false
  br i1 %144, label %158, label %145

145:                                              ; preds = %136
  %146 = icmp ugt i32 %139, %142
  br i1 %146, label %151, label %147

147:                                              ; preds = %145
  %148 = getelementptr inbounds nuw i8, ptr %48, i64 196
  %149 = load i32, ptr %148, align 4, !tbaa !47
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147, %145
  br label %152

152:                                              ; preds = %151, %147
  %153 = phi i64 [ %36, %151 ], [ %27, %147 ]
  %154 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %153, i64 %137), !nosanitize !44
  %155 = extractvalue { i64, i1 } %154, 0, !nosanitize !44
  %156 = extractvalue { i64, i1 } %154, 1, !nosanitize !44
  br i1 %156, label %157, label %172, !prof !45, !nosanitize !44

157:                                              ; preds = %152
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

158:                                              ; preds = %136
  %159 = lshr i64 %1, 12
  %160 = lshr i64 %1, 14
  %161 = lshr i64 %1, 25
  %162 = add i64 %31, %159
  %163 = add i64 %162, %160
  %164 = add i64 %163, %161
  %165 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %164, i64 %137), !nosanitize !44
  %166 = extractvalue { i64, i1 } %165, 1, !nosanitize !44
  br i1 %166, label %167, label %168, !prof !45, !nosanitize !44

167:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

168:                                              ; preds = %158
  %169 = extractvalue { i64, i1 } %165, 0, !nosanitize !44
  %170 = icmp ult i64 %169, %1
  %171 = select i1 %170, i64 -1, i64 %169
  br label %172

172:                                              ; preds = %168, %152, %56
  %173 = phi i64 [ %171, %168 ], [ %59, %56 ], [ %155, %152 ]
  ret i64 %173
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
  %29 = lshr i64 %1, 7
  %30 = lshr i64 %1, 11
  %31 = add i64 %1, 7
  %32 = add i64 %31, %28
  %33 = add i64 %32, %29
  %34 = add i64 %33, %30
  %35 = icmp ult i64 %34, %1
  %36 = select i1 %35, i64 -1, i64 %34
  %37 = icmp eq ptr %0, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %24
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %40 = load ptr, ptr %39, align 8, !tbaa !15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %44 = load ptr, ptr %43, align 8, !tbaa !17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %48 = load ptr, ptr %47, align 8, !tbaa !18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %48, align 8, !tbaa !19
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %55 = load i32, ptr %54, align 8, !tbaa !28
  switch i32 %55, label %56 [
    i32 42, label %62
    i32 57, label %62
    i32 69, label %62
    i32 73, label %62
    i32 91, label %62
    i32 103, label %62
    i32 113, label %62
    i32 666, label %62
  ]

56:                                               ; preds = %53, %50, %46, %42, %38, %24
  %57 = tail call i64 @llvm.umax.i64(i64 %27, i64 %36)
  %58 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %57, i64 18), !nosanitize !44
  %59 = extractvalue { i64, i1 } %58, 0, !nosanitize !44
  %60 = extractvalue { i64, i1 } %58, 1, !nosanitize !44
  br i1 %60, label %61, label %172, !prof !45, !nosanitize !44

61:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

62:                                               ; preds = %53, %53, %53, %53, %53, %53, %53, %53
  %63 = getelementptr inbounds nuw i8, ptr %48, i64 48
  %64 = load i32, ptr %63, align 8, !tbaa !29
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %64), !nosanitize !44
  %68 = extractvalue { i32, i1 } %67, 0, !nosanitize !44
  %69 = extractvalue { i32, i1 } %67, 1, !nosanitize !44
  br i1 %69, label %70, label %71, !prof !45, !nosanitize !44

70:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !44
  unreachable, !nosanitize !44

71:                                               ; preds = %66, %62
  %72 = phi i32 [ %68, %66 ], [ %64, %62 ]
  switch i32 %72, label %135 [
    i32 0, label %136
    i32 1, label %73
    i32 2, label %78
  ]

73:                                               ; preds = %71
  %74 = getelementptr inbounds nuw i8, ptr %48, i64 172
  %75 = load i32, ptr %74, align 4, !tbaa !71
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, i64 6, i64 10
  br label %136

78:                                               ; preds = %71
  %79 = getelementptr inbounds nuw i8, ptr %48, i64 56
  %80 = load ptr, ptr %79, align 8, !tbaa !102
  %81 = icmp eq ptr %80, null
  br i1 %81, label %136, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %80, i64 24
  %84 = load ptr, ptr %83, align 8, !tbaa !114
  %85 = icmp eq ptr %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %88 = load i32, ptr %87, align 8, !tbaa !119
  %89 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %88, i32 2), !nosanitize !44
  %90 = extractvalue { i32, i1 } %89, 1, !nosanitize !44
  br i1 %90, label %91, label %92, !prof !45, !nosanitize !44

91:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

92:                                               ; preds = %86
  %93 = extractvalue { i32, i1 } %89, 0, !nosanitize !44
  %94 = zext i32 %93 to i64
  %95 = add nuw nsw i64 %94, 18
  br label %96

96:                                               ; preds = %92, %82
  %97 = phi i64 [ %95, %92 ], [ 18, %82 ]
  %98 = getelementptr inbounds nuw i8, ptr %80, i64 40
  %99 = load ptr, ptr %98, align 8, !tbaa !113
  %100 = icmp eq ptr %99, null
  br i1 %100, label %.loopexit7, label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %96
  %101 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %97, i64 1), !nosanitize !44
  %102 = extractvalue { i64, i1 } %101, 1, !nosanitize !44
  br i1 %102, label %.preheader6._crit_edge, label %.lr.ph, !prof !131, !nosanitize !44

.preheader6:                                      ; preds = %.lr.ph
  %103 = getelementptr inbounds nuw i8, ptr %107, i64 1
  %104 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %108, i64 1), !nosanitize !44
  %105 = extractvalue { i64, i1 } %104, 1, !nosanitize !44
  br i1 %105, label %.preheader6._crit_edge, label %.lr.ph, !prof !132, !llvm.loop !133, !nosanitize !44

.preheader6._crit_edge:                           ; preds = %.preheader6, %.preheader6.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.lr.ph:                                           ; preds = %.preheader6.preheader, %.preheader6
  %106 = phi { i64, i1 } [ %104, %.preheader6 ], [ %101, %.preheader6.preheader ]
  %107 = phi ptr [ %103, %.preheader6 ], [ %99, %.preheader6.preheader ]
  %108 = extractvalue { i64, i1 } %106, 0, !nosanitize !44
  %109 = load i8, ptr %107, align 1, !tbaa !5
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %.loopexit7, label %.preheader6, !llvm.loop !133

.loopexit7:                                       ; preds = %.lr.ph, %96
  %111 = phi i64 [ %97, %96 ], [ %108, %.lr.ph ]
  %112 = getelementptr inbounds nuw i8, ptr %80, i64 56
  %113 = load ptr, ptr %112, align 8, !tbaa !111
  %114 = icmp eq ptr %113, null
  br i1 %114, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit7
  %115 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %111, i64 1), !nosanitize !44
  %116 = extractvalue { i64, i1 } %115, 1, !nosanitize !44
  br i1 %116, label %.preheader._crit_edge, label %.lr.ph17, !prof !131, !nosanitize !44

.preheader:                                       ; preds = %.lr.ph17
  %117 = getelementptr inbounds nuw i8, ptr %121, i64 1
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %122, i64 1), !nosanitize !44
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !44
  br i1 %119, label %.preheader._crit_edge, label %.lr.ph17, !prof !132, !llvm.loop !134, !nosanitize !44

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.lr.ph17:                                         ; preds = %.preheader.preheader, %.preheader
  %120 = phi { i64, i1 } [ %118, %.preheader ], [ %115, %.preheader.preheader ]
  %121 = phi ptr [ %117, %.preheader ], [ %113, %.preheader.preheader ]
  %122 = extractvalue { i64, i1 } %120, 0, !nosanitize !44
  %123 = load i8, ptr %121, align 1, !tbaa !5
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %.loopexit, label %.preheader, !llvm.loop !134

.loopexit:                                        ; preds = %.lr.ph17, %.loopexit7
  %125 = phi i64 [ %111, %.loopexit7 ], [ %122, %.lr.ph17 ]
  %126 = getelementptr inbounds nuw i8, ptr %80, i64 68
  %127 = load i32, ptr %126, align 4, !tbaa !116
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %.loopexit
  %130 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %125, i64 2), !nosanitize !44
  %131 = extractvalue { i64, i1 } %130, 1, !nosanitize !44
  br i1 %131, label %132, label %133, !prof !45, !nosanitize !44

132:                                              ; preds = %129
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

133:                                              ; preds = %129
  %134 = extractvalue { i64, i1 } %130, 0, !nosanitize !44
  br label %136

135:                                              ; preds = %71
  br label %136

136:                                              ; preds = %135, %133, %.loopexit, %78, %73, %71
  %137 = phi i64 [ 18, %135 ], [ %77, %73 ], [ 18, %78 ], [ 0, %71 ], [ %134, %133 ], [ %125, %.loopexit ]
  %138 = getelementptr inbounds nuw i8, ptr %48, i64 84
  %139 = load i32, ptr %138, align 4, !tbaa !30
  %140 = icmp eq i32 %139, 15
  %141 = getelementptr inbounds nuw i8, ptr %48, i64 136
  %142 = load i32, ptr %141, align 8, !tbaa !50
  %143 = icmp eq i32 %142, 15
  %144 = select i1 %140, i1 %143, i1 false
  br i1 %144, label %158, label %145

145:                                              ; preds = %136
  %146 = icmp ugt i32 %139, %142
  br i1 %146, label %151, label %147

147:                                              ; preds = %145
  %148 = getelementptr inbounds nuw i8, ptr %48, i64 196
  %149 = load i32, ptr %148, align 4, !tbaa !47
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147, %145
  br label %152

152:                                              ; preds = %151, %147
  %153 = phi i64 [ %36, %151 ], [ %27, %147 ]
  %154 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %153, i64 %137), !nosanitize !44
  %155 = extractvalue { i64, i1 } %154, 0, !nosanitize !44
  %156 = extractvalue { i64, i1 } %154, 1, !nosanitize !44
  br i1 %156, label %157, label %172, !prof !45, !nosanitize !44

157:                                              ; preds = %152
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

158:                                              ; preds = %136
  %159 = lshr i64 %1, 12
  %160 = lshr i64 %1, 14
  %161 = lshr i64 %1, 25
  %162 = add i64 %31, %159
  %163 = add i64 %162, %160
  %164 = add i64 %163, %161
  %165 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %164, i64 %137), !nosanitize !44
  %166 = extractvalue { i64, i1 } %165, 1, !nosanitize !44
  br i1 %166, label %167, label %168, !prof !45, !nosanitize !44

167:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

168:                                              ; preds = %158
  %169 = extractvalue { i64, i1 } %165, 0, !nosanitize !44
  %170 = icmp ult i64 %169, %1
  %171 = select i1 %170, i64 -1, i64 %169
  br label %172

172:                                              ; preds = %168, %152, %56
  %173 = phi i64 [ %171, %168 ], [ %59, %56 ], [ %155, %152 ]
  ret i64 %173
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef nonnull captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %3) #11
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i64, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 8, !tbaa !109
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = trunc nuw i64 %9 to i32
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !108
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %16, i64 %9, i1 false)
  %17 = load ptr, ptr %13, align 8, !tbaa !108
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %9
  store ptr %18, ptr %13, align 8, !tbaa !108
  %19 = load ptr, ptr %15, align 8, !tbaa !56
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  store ptr %20, ptr %15, align 8, !tbaa !56
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8, !tbaa !110
  %23 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %22, i64 %9), !nosanitize !44
  %24 = extractvalue { i64, i1 } %23, 1, !nosanitize !44
  br i1 %24, label %25, label %26, !prof !45, !nosanitize !44

25:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

26:                                               ; preds = %12
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !44
  store i64 %27, ptr %21, align 8, !tbaa !110
  %28 = load i32, ptr %6, align 8, !tbaa !109
  %29 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %28, i32 %10), !nosanitize !44
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !44
  br i1 %30, label %31, label %32, !prof !45, !nosanitize !44

31:                                               ; preds = %26
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

32:                                               ; preds = %26
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !44
  store i32 %33, ptr %6, align 8, !tbaa !109
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

27:                                               ; preds = %256, %8
  %28 = load i32, ptr %18, align 4, !tbaa !103
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
  %37 = load i32, ptr %36, align 8, !tbaa !109
  %38 = icmp ult i32 %37, %34
  br i1 %38, label %.loopexit, label %39

39:                                               ; preds = %32
  %40 = load i32, ptr %19, align 4, !tbaa !71
  %41 = zext i32 %40 to i64
  %42 = load i64, ptr %20, align 8, !tbaa !72
  %43 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %41, i64 %42), !nosanitize !44
  %44 = extractvalue { i64, i1 } %43, 1, !nosanitize !44
  br i1 %44, label %45, label %46, !prof !45, !nosanitize !44

45:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

46:                                               ; preds = %39
  %47 = sub nuw i32 %37, %34
  %48 = extractvalue { i64, i1 } %43, 0, !nosanitize !44
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %51 = load i32, ptr %50, align 8, !tbaa !79
  %52 = and i64 %48, 4294967295
  %53 = zext i32 %51 to i64
  %54 = add nuw nsw i64 %52, %53
  %55 = icmp samesign ult i64 %54, 65535
  %56 = add i32 %51, %49
  %spec.select = select i1 %55, i32 %56, i32 65535
  %57 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %47)
  %58 = icmp ult i32 %57, %14
  br i1 %58, label %59, label %69

59:                                               ; preds = %46
  %60 = icmp eq i32 %57, 0
  %61 = and i1 %21, %60
  %62 = or i1 %22, %61
  br i1 %62, label %.loopexit, label %63

63:                                               ; preds = %59
  %64 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !44
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !44
  br i1 %65, label %66, label %67, !prof !45, !nosanitize !44

66:                                               ; preds = %63
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

67:                                               ; preds = %63
  %68 = icmp eq i32 %57, %56
  br i1 %68, label %69, label %.loopexit

69:                                               ; preds = %67, %46
  br i1 %23, label %70, label %77

70:                                               ; preds = %69
  %71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !44
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !44
  br i1 %72, label %73, label %74, !prof !45, !nosanitize !44

73:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

74:                                               ; preds = %70
  %75 = icmp eq i32 %57, %56
  %76 = zext i1 %75 to i32
  br label %77

77:                                               ; preds = %74, %69
  %78 = phi i32 [ 0, %69 ], [ %76, %74 ]
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %78) #11
  %79 = load i64, ptr %25, align 8, !tbaa !55
  %80 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %79, i64 4), !nosanitize !44
  %81 = extractvalue { i64, i1 } %80, 1, !nosanitize !44
  br i1 %81, label %82, label %83, !prof !45, !nosanitize !44

82:                                               ; preds = %77
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

83:                                               ; preds = %77
  %84 = extractvalue { i64, i1 } %80, 0, !nosanitize !44
  %85 = load ptr, ptr %24, align 8, !tbaa !40
  %86 = trunc i32 %57 to i8
  %87 = getelementptr inbounds nuw i8, ptr %85, i64 %84
  store i8 %86, ptr %87, align 1, !tbaa !5
  %88 = load i64, ptr %25, align 8, !tbaa !55
  %89 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %88, i64 3), !nosanitize !44
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !44
  br i1 %90, label %91, label %92, !prof !45, !nosanitize !44

91:                                               ; preds = %83
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

92:                                               ; preds = %83
  %93 = extractvalue { i64, i1 } %89, 0, !nosanitize !44
  %94 = load ptr, ptr %24, align 8, !tbaa !40
  %95 = lshr i32 %57, 8
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds nuw i8, ptr %94, i64 %93
  store i8 %96, ptr %97, align 1, !tbaa !5
  %98 = load i64, ptr %25, align 8, !tbaa !55
  %99 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %98, i64 2), !nosanitize !44
  %100 = extractvalue { i64, i1 } %99, 1, !nosanitize !44
  br i1 %100, label %101, label %102, !prof !45, !nosanitize !44

101:                                              ; preds = %92
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

102:                                              ; preds = %92
  %103 = extractvalue { i64, i1 } %99, 0, !nosanitize !44
  %104 = load ptr, ptr %24, align 8, !tbaa !40
  %105 = xor i32 %57, -1
  %106 = trunc i32 %105 to i8
  %107 = getelementptr inbounds nuw i8, ptr %104, i64 %103
  store i8 %106, ptr %107, align 1, !tbaa !5
  %108 = load i64, ptr %25, align 8, !tbaa !55
  %109 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %108, i64 1), !nosanitize !44
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !44
  br i1 %110, label %111, label %112, !prof !45, !nosanitize !44

111:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

112:                                              ; preds = %102
  %113 = extractvalue { i64, i1 } %109, 0, !nosanitize !44
  %114 = load ptr, ptr %24, align 8, !tbaa !40
  %115 = lshr i32 %105, 8
  %116 = trunc i32 %115 to i8
  %117 = getelementptr inbounds nuw i8, ptr %114, i64 %113
  store i8 %116, ptr %117, align 1, !tbaa !5
  %118 = load ptr, ptr %0, align 8, !tbaa !19
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 56
  %120 = load ptr, ptr %119, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %120) #11
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 40
  %122 = load i64, ptr %121, align 8, !tbaa !55
  %123 = getelementptr inbounds nuw i8, ptr %118, i64 32
  %124 = load i32, ptr %123, align 8, !tbaa !109
  %125 = zext i32 %124 to i64
  %126 = tail call i64 @llvm.umin.i64(i64 %122, i64 %125)
  %127 = trunc nuw i64 %126 to i32
  %128 = icmp eq i64 %126, 0
  br i1 %128, label %161, label %129

129:                                              ; preds = %112
  %130 = getelementptr inbounds nuw i8, ptr %118, i64 24
  %131 = load ptr, ptr %130, align 8, !tbaa !108
  %132 = getelementptr inbounds nuw i8, ptr %120, i64 32
  %133 = load ptr, ptr %132, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %131, ptr align 1 %133, i64 %126, i1 false)
  %134 = load ptr, ptr %130, align 8, !tbaa !108
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 %126
  store ptr %135, ptr %130, align 8, !tbaa !108
  %136 = load ptr, ptr %132, align 8, !tbaa !56
  %137 = getelementptr inbounds nuw i8, ptr %136, i64 %126
  store ptr %137, ptr %132, align 8, !tbaa !56
  %138 = getelementptr inbounds nuw i8, ptr %118, i64 40
  %139 = load i64, ptr %138, align 8, !tbaa !110
  %140 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %139, i64 %126), !nosanitize !44
  %141 = extractvalue { i64, i1 } %140, 1, !nosanitize !44
  br i1 %141, label %142, label %143, !prof !45, !nosanitize !44

142:                                              ; preds = %129
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

143:                                              ; preds = %129
  %144 = extractvalue { i64, i1 } %140, 0, !nosanitize !44
  store i64 %144, ptr %138, align 8, !tbaa !110
  %145 = load i32, ptr %123, align 8, !tbaa !109
  %146 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %145, i32 %127), !nosanitize !44
  %147 = extractvalue { i32, i1 } %146, 1, !nosanitize !44
  br i1 %147, label %148, label %149, !prof !45, !nosanitize !44

148:                                              ; preds = %143
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

149:                                              ; preds = %143
  %150 = extractvalue { i32, i1 } %146, 0, !nosanitize !44
  store i32 %150, ptr %123, align 8, !tbaa !109
  %151 = load i64, ptr %121, align 8, !tbaa !55
  %152 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %151, i64 %126), !nosanitize !44
  %153 = extractvalue { i64, i1 } %152, 1, !nosanitize !44
  br i1 %153, label %154, label %155, !prof !45, !nosanitize !44

154:                                              ; preds = %149
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

155:                                              ; preds = %149
  %156 = extractvalue { i64, i1 } %152, 0, !nosanitize !44
  store i64 %156, ptr %121, align 8, !tbaa !55
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = getelementptr inbounds nuw i8, ptr %120, i64 16
  %160 = load ptr, ptr %159, align 8, !tbaa !40
  store ptr %160, ptr %132, align 8, !tbaa !56
  br label %161

161:                                              ; preds = %158, %155, %112
  %162 = icmp eq i32 %49, 0
  br i1 %162, label %196, label %163

163:                                              ; preds = %161
  %164 = tail call i32 @llvm.umin.i32(i32 %57, i32 %49)
  %165 = load ptr, ptr %0, align 8, !tbaa !19
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 24
  %167 = load ptr, ptr %166, align 8, !tbaa !108
  %168 = load ptr, ptr %26, align 8, !tbaa !34
  %169 = load i64, ptr %20, align 8, !tbaa !72
  %170 = getelementptr inbounds i8, ptr %168, i64 %169
  %171 = zext i32 %164 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %167, ptr align 1 %170, i64 %171, i1 false)
  %172 = load ptr, ptr %0, align 8, !tbaa !19
  %173 = getelementptr inbounds nuw i8, ptr %172, i64 24
  %174 = load ptr, ptr %173, align 8, !tbaa !108
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 %171
  store ptr %175, ptr %173, align 8, !tbaa !108
  %176 = getelementptr inbounds nuw i8, ptr %172, i64 32
  %177 = load i32, ptr %176, align 8, !tbaa !109
  %178 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %177, i32 %164), !nosanitize !44
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !44
  br i1 %179, label %180, label %181, !prof !45, !nosanitize !44

180:                                              ; preds = %163
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

181:                                              ; preds = %163
  %182 = extractvalue { i32, i1 } %178, 0, !nosanitize !44
  store i32 %182, ptr %176, align 8, !tbaa !109
  %183 = getelementptr inbounds nuw i8, ptr %172, i64 40
  %184 = load i64, ptr %183, align 8, !tbaa !110
  %185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 %171), !nosanitize !44
  %186 = extractvalue { i64, i1 } %185, 1, !nosanitize !44
  br i1 %186, label %187, label %188, !prof !45, !nosanitize !44

187:                                              ; preds = %188, %181
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

188:                                              ; preds = %181
  %189 = extractvalue { i64, i1 } %185, 0, !nosanitize !44
  store i64 %189, ptr %183, align 8, !tbaa !110
  %190 = load i64, ptr %20, align 8, !tbaa !72
  %191 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %190, i64 %171), !nosanitize !44
  %192 = extractvalue { i64, i1 } %191, 1, !nosanitize !44
  br i1 %192, label %187, label %193, !prof !45, !nosanitize !44

193:                                              ; preds = %188
  %194 = extractvalue { i64, i1 } %191, 0, !nosanitize !44
  store i64 %194, ptr %20, align 8, !tbaa !72
  %195 = sub i32 %57, %164
  br label %196

196:                                              ; preds = %193, %161
  %197 = phi i32 [ %195, %193 ], [ %57, %161 ]
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %256, label %199

199:                                              ; preds = %196
  %200 = load ptr, ptr %0, align 8, !tbaa !19
  %201 = getelementptr inbounds nuw i8, ptr %200, i64 24
  %202 = load ptr, ptr %201, align 8, !tbaa !108
  %203 = getelementptr inbounds nuw i8, ptr %200, i64 8
  %204 = load i32, ptr %203, align 8, !tbaa !79
  %205 = tail call i32 @llvm.umin.i32(i32 %204, i32 %197)
  %206 = icmp eq i32 %204, 0
  br i1 %206, label %236, label %207

207:                                              ; preds = %199
  %208 = sub i32 %204, %205
  store i32 %208, ptr %203, align 8, !tbaa !79
  %209 = load ptr, ptr %200, align 8, !tbaa !80
  %210 = zext i32 %205 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %202, ptr align 1 %209, i64 %210, i1 false)
  %211 = getelementptr inbounds nuw i8, ptr %200, i64 56
  %212 = load ptr, ptr %211, align 8, !tbaa !18
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 48
  %214 = load i32, ptr %213, align 8, !tbaa !29
  switch i32 %214, label %223 [
    i32 1, label %215
    i32 2, label %219
  ]

215:                                              ; preds = %207
  %216 = getelementptr inbounds nuw i8, ptr %200, i64 96
  %217 = load i64, ptr %216, align 8, !tbaa !57
  %218 = tail call i64 @adler32(i64 noundef %217, ptr noundef %202, i32 noundef %205) #11
  store i64 %218, ptr %216, align 8, !tbaa !57
  br label %223

219:                                              ; preds = %207
  %220 = getelementptr inbounds nuw i8, ptr %200, i64 96
  %221 = load i64, ptr %220, align 8, !tbaa !57
  %222 = tail call i64 @crc32(i64 noundef %221, ptr noundef %202, i32 noundef %205) #11
  store i64 %222, ptr %220, align 8, !tbaa !57
  br label %223

223:                                              ; preds = %219, %215, %207
  %224 = load ptr, ptr %200, align 8, !tbaa !80
  %225 = getelementptr inbounds nuw i8, ptr %224, i64 %210
  store ptr %225, ptr %200, align 8, !tbaa !80
  %226 = getelementptr inbounds nuw i8, ptr %200, i64 16
  %227 = load i64, ptr %226, align 8, !tbaa !53
  %228 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %227, i64 %210), !nosanitize !44
  %229 = extractvalue { i64, i1 } %228, 1, !nosanitize !44
  br i1 %229, label %230, label %231, !prof !45, !nosanitize !44

230:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

231:                                              ; preds = %223
  %232 = extractvalue { i64, i1 } %228, 0, !nosanitize !44
  store i64 %232, ptr %226, align 8, !tbaa !53
  %233 = load ptr, ptr %0, align 8, !tbaa !19
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 24
  %235 = load ptr, ptr %234, align 8, !tbaa !108
  br label %236

236:                                              ; preds = %231, %199
  %237 = phi ptr [ %202, %199 ], [ %235, %231 ]
  %238 = phi ptr [ %200, %199 ], [ %233, %231 ]
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 24
  %240 = zext i32 %197 to i64
  %241 = getelementptr inbounds nuw i8, ptr %237, i64 %240
  store ptr %241, ptr %239, align 8, !tbaa !108
  %242 = getelementptr inbounds nuw i8, ptr %238, i64 32
  %243 = load i32, ptr %242, align 8, !tbaa !109
  %244 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %243, i32 %197), !nosanitize !44
  %245 = extractvalue { i32, i1 } %244, 1, !nosanitize !44
  br i1 %245, label %246, label %247, !prof !45, !nosanitize !44

246:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

247:                                              ; preds = %236
  %248 = extractvalue { i32, i1 } %244, 0, !nosanitize !44
  store i32 %248, ptr %242, align 8, !tbaa !109
  %249 = getelementptr inbounds nuw i8, ptr %238, i64 40
  %250 = load i64, ptr %249, align 8, !tbaa !110
  %251 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %250, i64 %240), !nosanitize !44
  %252 = extractvalue { i64, i1 } %251, 1, !nosanitize !44
  br i1 %252, label %253, label %254, !prof !45, !nosanitize !44

253:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

254:                                              ; preds = %247
  %255 = extractvalue { i64, i1 } %251, 0, !nosanitize !44
  store i64 %255, ptr %249, align 8, !tbaa !110
  br label %256

256:                                              ; preds = %254, %196
  %257 = icmp eq i32 %78, 0
  br i1 %257, label %27, label %258, !llvm.loop !135

258:                                              ; preds = %256
  %259 = load ptr, ptr %0, align 8, !tbaa !19
  br label %.loopexit, !llvm.loop !135

.loopexit:                                        ; preds = %67, %59, %32, %258
  %260 = phi ptr [ %259, %258 ], [ %35, %32 ], [ %35, %59 ], [ %35, %67 ]
  %261 = phi i1 [ false, %258 ], [ true, %32 ], [ true, %59 ], [ true, %67 ]
  %262 = getelementptr inbounds nuw i8, ptr %260, i64 8
  %263 = load i32, ptr %262, align 8, !tbaa !79
  %264 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %263), !nosanitize !44
  %265 = extractvalue { i32, i1 } %264, 0, !nosanitize !44
  %266 = extractvalue { i32, i1 } %264, 1, !nosanitize !44
  br i1 %266, label %267, label %268, !prof !45, !nosanitize !44

267:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

268:                                              ; preds = %.loopexit
  %269 = icmp eq i32 %265, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %268
  %271 = load i32, ptr %19, align 4, !tbaa !71
  %272 = zext i32 %271 to i64
  br label %350

273:                                              ; preds = %268
  %274 = load i32, ptr %10, align 8, !tbaa !31
  %275 = icmp ult i32 %265, %274
  br i1 %275, label %285, label %276

276:                                              ; preds = %273
  %277 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %277, align 8, !tbaa !126
  %278 = load ptr, ptr %26, align 8, !tbaa !34
  %279 = load ptr, ptr %260, align 8, !tbaa !80
  %280 = zext i32 %274 to i64
  %281 = sub nsw i64 0, %280
  %282 = getelementptr inbounds i8, ptr %279, i64 %281
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %278, ptr align 1 %282, i64 %280, i1 false)
  %283 = load i32, ptr %10, align 8, !tbaa !31
  store i32 %283, ptr %19, align 4, !tbaa !71
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %283, ptr %284, align 4, !tbaa !74
  br label %347

285:                                              ; preds = %273
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %287 = load i64, ptr %286, align 8, !tbaa !59
  %288 = load i32, ptr %19, align 4, !tbaa !71
  %289 = zext i32 %288 to i64
  %290 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %287, i64 %289), !nosanitize !44
  %291 = extractvalue { i64, i1 } %290, 1, !nosanitize !44
  br i1 %291, label %292, label %293, !prof !45, !nosanitize !44

292:                                              ; preds = %285
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

293:                                              ; preds = %285
  %294 = extractvalue { i64, i1 } %290, 0, !nosanitize !44
  %295 = zext i32 %265 to i64
  %296 = icmp ugt i64 %294, %295
  br i1 %296, label %318, label %297

297:                                              ; preds = %293
  %298 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %288, i32 %274), !nosanitize !44
  %299 = extractvalue { i32, i1 } %298, 1, !nosanitize !44
  br i1 %299, label %300, label %301, !prof !45, !nosanitize !44

300:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

301:                                              ; preds = %297
  %302 = extractvalue { i32, i1 } %298, 0, !nosanitize !44
  store i32 %302, ptr %19, align 4, !tbaa !71
  %303 = load ptr, ptr %26, align 8, !tbaa !34
  %304 = zext i32 %274 to i64
  %305 = getelementptr inbounds nuw i8, ptr %303, i64 %304
  %306 = zext i32 %302 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %303, ptr nonnull align 1 %305, i64 %306, i1 false)
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %308 = load i32, ptr %307, align 8, !tbaa !126
  %309 = icmp ult i32 %308, 2
  br i1 %309, label %310, label %312

310:                                              ; preds = %301
  %311 = add nuw nsw i32 %308, 1
  store i32 %311, ptr %307, align 8, !tbaa !126
  br label %312

312:                                              ; preds = %310, %301
  %313 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %314 = load i32, ptr %313, align 4, !tbaa !74
  %315 = load i32, ptr %19, align 4, !tbaa !71
  %316 = icmp ugt i32 %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  store i32 %315, ptr %313, align 4, !tbaa !74
  br label %318

318:                                              ; preds = %317, %312, %293
  %319 = phi i32 [ %315, %312 ], [ %315, %317 ], [ %288, %293 ]
  %320 = load ptr, ptr %26, align 8, !tbaa !34
  %321 = zext i32 %319 to i64
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 %321
  %323 = load ptr, ptr %0, align 8, !tbaa !19
  %324 = load ptr, ptr %323, align 8, !tbaa !80
  %325 = sub nsw i64 0, %295
  %326 = getelementptr inbounds i8, ptr %324, i64 %325
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %322, ptr nonnull align 1 %326, i64 %295, i1 false)
  %327 = load i32, ptr %19, align 4, !tbaa !71
  %328 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %327, i32 %265), !nosanitize !44
  %329 = extractvalue { i32, i1 } %328, 1, !nosanitize !44
  br i1 %329, label %330, label %331, !prof !45, !nosanitize !44

330:                                              ; preds = %318
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

331:                                              ; preds = %318
  %332 = extractvalue { i32, i1 } %328, 0, !nosanitize !44
  store i32 %332, ptr %19, align 4, !tbaa !71
  %333 = load i32, ptr %10, align 8, !tbaa !31
  %334 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %335 = load i32, ptr %334, align 4, !tbaa !74
  %336 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %333, i32 %335), !nosanitize !44
  %337 = extractvalue { i32, i1 } %336, 1, !nosanitize !44
  br i1 %337, label %338, label %339, !prof !45, !nosanitize !44

338:                                              ; preds = %331
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

339:                                              ; preds = %331
  %340 = extractvalue { i32, i1 } %336, 0, !nosanitize !44
  %341 = tail call i32 @llvm.umin.i32(i32 %265, i32 %340)
  %342 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %335, i32 %341), !nosanitize !44
  %343 = extractvalue { i32, i1 } %342, 1, !nosanitize !44
  br i1 %343, label %344, label %345, !prof !45, !nosanitize !44

344:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

345:                                              ; preds = %339
  %346 = extractvalue { i32, i1 } %342, 0, !nosanitize !44
  store i32 %346, ptr %334, align 4, !tbaa !74
  br label %347

347:                                              ; preds = %345, %276
  %348 = phi i32 [ %332, %345 ], [ %283, %276 ]
  %349 = zext i32 %348 to i64
  store i64 %349, ptr %20, align 8, !tbaa !72
  br label %350

350:                                              ; preds = %347, %270
  %351 = phi i64 [ %272, %270 ], [ %349, %347 ]
  %352 = phi i32 [ %271, %270 ], [ %348, %347 ]
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %354 = load i64, ptr %353, align 8, !tbaa !38
  %355 = icmp ult i64 %354, %351
  br i1 %355, label %356, label %357

356:                                              ; preds = %350
  store i64 %351, ptr %353, align 8, !tbaa !38
  br label %357

357:                                              ; preds = %356, %350
  br i1 %261, label %358, label %577

358:                                              ; preds = %357
  %359 = icmp ne i32 %1, 0
  switch i32 %1, label %360 [
    i32 4, label %368
    i32 0, label %368
  ]

360:                                              ; preds = %358
  %361 = load ptr, ptr %0, align 8, !tbaa !19
  %362 = getelementptr inbounds nuw i8, ptr %361, i64 8
  %363 = load i32, ptr %362, align 8, !tbaa !79
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %360
  %366 = load i64, ptr %20, align 8, !tbaa !72
  %367 = icmp eq i64 %366, %351
  br i1 %367, label %580, label %368

368:                                              ; preds = %365, %360, %358, %358
  %369 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %370 = load i64, ptr %369, align 8, !tbaa !59
  %371 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %370, i64 %351), !nosanitize !44
  %372 = extractvalue { i64, i1 } %371, 1, !nosanitize !44
  br i1 %372, label %373, label %374, !prof !45, !nosanitize !44

373:                                              ; preds = %368
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

374:                                              ; preds = %368
  %375 = extractvalue { i64, i1 } %371, 0, !nosanitize !44
  %376 = trunc i64 %375 to i32
  %377 = load ptr, ptr %0, align 8, !tbaa !19
  %378 = getelementptr inbounds nuw i8, ptr %377, i64 8
  %379 = load i32, ptr %378, align 8, !tbaa !79
  %380 = icmp ugt i32 %379, %376
  br i1 %380, label %381, label %413

381:                                              ; preds = %374
  %382 = load i64, ptr %20, align 8, !tbaa !72
  %383 = load i32, ptr %10, align 8, !tbaa !31
  %384 = zext i32 %383 to i64
  %385 = icmp slt i64 %382, %384
  br i1 %385, label %413, label %386

386:                                              ; preds = %381
  %387 = sub nsw i64 %382, %384
  store i64 %387, ptr %20, align 8, !tbaa !72
  %388 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %352, i32 %383), !nosanitize !44
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !44
  br i1 %389, label %390, label %391, !prof !45, !nosanitize !44

390:                                              ; preds = %386
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

391:                                              ; preds = %386
  %392 = extractvalue { i32, i1 } %388, 0, !nosanitize !44
  store i32 %392, ptr %19, align 4, !tbaa !71
  %393 = load ptr, ptr %26, align 8, !tbaa !34
  %394 = getelementptr inbounds nuw i8, ptr %393, i64 %384
  %395 = zext i32 %392 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %393, ptr align 1 %394, i64 %395, i1 false)
  %396 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %397 = load i32, ptr %396, align 8, !tbaa !126
  %398 = icmp ult i32 %397, 2
  br i1 %398, label %399, label %401

399:                                              ; preds = %391
  %400 = add nuw nsw i32 %397, 1
  store i32 %400, ptr %396, align 8, !tbaa !126
  br label %401

401:                                              ; preds = %399, %391
  %402 = load i32, ptr %10, align 8, !tbaa !31
  %403 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %376, i32 %402), !nosanitize !44
  %404 = extractvalue { i32, i1 } %403, 0, !nosanitize !44
  %405 = extractvalue { i32, i1 } %403, 1, !nosanitize !44
  br i1 %405, label %406, label %407, !prof !45, !nosanitize !44

406:                                              ; preds = %401
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

407:                                              ; preds = %401
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %409 = load i32, ptr %408, align 4, !tbaa !74
  %410 = load i32, ptr %19, align 4, !tbaa !71
  %411 = icmp ugt i32 %409, %410
  br i1 %411, label %412, label %413

412:                                              ; preds = %407
  store i32 %410, ptr %408, align 4, !tbaa !74
  br label %413

413:                                              ; preds = %412, %407, %381, %374
  %414 = phi i32 [ %410, %412 ], [ %410, %407 ], [ %352, %381 ], [ %352, %374 ]
  %415 = phi i32 [ %404, %412 ], [ %404, %407 ], [ %376, %381 ], [ %376, %374 ]
  %416 = load ptr, ptr %0, align 8, !tbaa !19
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 8
  %418 = load i32, ptr %417, align 8, !tbaa !79
  %419 = tail call i32 @llvm.umin.i32(i32 %415, i32 %418)
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %470, label %421

421:                                              ; preds = %413
  %422 = load ptr, ptr %26, align 8, !tbaa !34
  %423 = zext i32 %414 to i64
  %424 = getelementptr inbounds nuw i8, ptr %422, i64 %423
  %425 = sub i32 %418, %419
  store i32 %425, ptr %417, align 8, !tbaa !79
  %426 = load ptr, ptr %416, align 8, !tbaa !80
  %427 = zext i32 %419 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %424, ptr align 1 %426, i64 %427, i1 false)
  %428 = getelementptr inbounds nuw i8, ptr %416, i64 56
  %429 = load ptr, ptr %428, align 8, !tbaa !18
  %430 = getelementptr inbounds nuw i8, ptr %429, i64 48
  %431 = load i32, ptr %430, align 8, !tbaa !29
  switch i32 %431, label %440 [
    i32 1, label %432
    i32 2, label %436
  ]

432:                                              ; preds = %421
  %433 = getelementptr inbounds nuw i8, ptr %416, i64 96
  %434 = load i64, ptr %433, align 8, !tbaa !57
  %435 = tail call i64 @adler32(i64 noundef %434, ptr noundef %424, i32 noundef %419) #11
  store i64 %435, ptr %433, align 8, !tbaa !57
  br label %440

436:                                              ; preds = %421
  %437 = getelementptr inbounds nuw i8, ptr %416, i64 96
  %438 = load i64, ptr %437, align 8, !tbaa !57
  %439 = tail call i64 @crc32(i64 noundef %438, ptr noundef %424, i32 noundef %419) #11
  store i64 %439, ptr %437, align 8, !tbaa !57
  br label %440

440:                                              ; preds = %436, %432, %421
  %441 = load ptr, ptr %416, align 8, !tbaa !80
  %442 = getelementptr inbounds nuw i8, ptr %441, i64 %427
  store ptr %442, ptr %416, align 8, !tbaa !80
  %443 = getelementptr inbounds nuw i8, ptr %416, i64 16
  %444 = load i64, ptr %443, align 8, !tbaa !53
  %445 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %444, i64 %427), !nosanitize !44
  %446 = extractvalue { i64, i1 } %445, 1, !nosanitize !44
  br i1 %446, label %447, label %448, !prof !45, !nosanitize !44

447:                                              ; preds = %440
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

448:                                              ; preds = %440
  %449 = extractvalue { i64, i1 } %445, 0, !nosanitize !44
  store i64 %449, ptr %443, align 8, !tbaa !53
  %450 = load i32, ptr %19, align 4, !tbaa !71
  %451 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %450, i32 %419), !nosanitize !44
  %452 = extractvalue { i32, i1 } %451, 1, !nosanitize !44
  br i1 %452, label %453, label %454, !prof !45, !nosanitize !44

453:                                              ; preds = %448
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

454:                                              ; preds = %448
  %455 = extractvalue { i32, i1 } %451, 0, !nosanitize !44
  store i32 %455, ptr %19, align 4, !tbaa !71
  %456 = load i32, ptr %10, align 8, !tbaa !31
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %458 = load i32, ptr %457, align 4, !tbaa !74
  %459 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %456, i32 %458), !nosanitize !44
  %460 = extractvalue { i32, i1 } %459, 1, !nosanitize !44
  br i1 %460, label %461, label %462, !prof !45, !nosanitize !44

461:                                              ; preds = %454
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

462:                                              ; preds = %454
  %463 = extractvalue { i32, i1 } %459, 0, !nosanitize !44
  %464 = tail call i32 @llvm.umin.i32(i32 %419, i32 %463)
  %465 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %458, i32 %464), !nosanitize !44
  %466 = extractvalue { i32, i1 } %465, 1, !nosanitize !44
  br i1 %466, label %467, label %468, !prof !45, !nosanitize !44

467:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

468:                                              ; preds = %462
  %469 = extractvalue { i32, i1 } %465, 0, !nosanitize !44
  store i32 %469, ptr %457, align 4, !tbaa !74
  br label %470

470:                                              ; preds = %468, %413
  %471 = phi i32 [ %455, %468 ], [ %414, %413 ]
  %472 = load i64, ptr %353, align 8, !tbaa !38
  %473 = zext i32 %471 to i64
  %474 = icmp ult i64 %472, %473
  br i1 %474, label %475, label %476

475:                                              ; preds = %470
  store i64 %473, ptr %353, align 8, !tbaa !38
  br label %476

476:                                              ; preds = %475, %470
  %477 = load i32, ptr %18, align 4, !tbaa !103
  %478 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %477, i32 42), !nosanitize !44
  %479 = extractvalue { i32, i1 } %478, 1, !nosanitize !44
  br i1 %479, label %480, label %481, !prof !45, !nosanitize !44

480:                                              ; preds = %522, %476
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

481:                                              ; preds = %476
  %482 = extractvalue { i32, i1 } %478, 0, !nosanitize !44
  %483 = lshr i32 %482, 3
  %484 = load i64, ptr %3, align 8, !tbaa !41
  %485 = zext nneg i32 %483 to i64
  %486 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %484, i64 %485), !nosanitize !44
  %487 = extractvalue { i64, i1 } %486, 1, !nosanitize !44
  br i1 %487, label %488, label %489, !prof !45, !nosanitize !44

488:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

489:                                              ; preds = %481
  %490 = extractvalue { i64, i1 } %486, 0, !nosanitize !44
  %491 = tail call i64 @llvm.umin.i64(i64 %490, i64 65535)
  %492 = trunc nuw nsw i64 %491 to i32
  %493 = load i64, ptr %20, align 8, !tbaa !72
  %494 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %473, i64 %493), !nosanitize !44
  %495 = extractvalue { i64, i1 } %494, 1, !nosanitize !44
  br i1 %495, label %496, label %497, !prof !45, !nosanitize !44

496:                                              ; preds = %489
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

497:                                              ; preds = %489
  %498 = load i32, ptr %10, align 8, !tbaa !31
  %499 = tail call i32 @llvm.umin.i32(i32 %498, i32 %492)
  %500 = extractvalue { i64, i1 } %494, 0, !nosanitize !44
  %501 = trunc i64 %500 to i32
  %502 = icmp ugt i32 %499, %501
  br i1 %502, label %503, label %512

503:                                              ; preds = %497
  %504 = icmp ne i32 %501, 0
  %505 = or i1 %23, %504
  %506 = and i1 %359, %505
  br i1 %506, label %507, label %580

507:                                              ; preds = %503
  %508 = load ptr, ptr %0, align 8, !tbaa !19
  %509 = getelementptr inbounds nuw i8, ptr %508, i64 8
  %510 = load i32, ptr %509, align 8, !tbaa !79
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %580

512:                                              ; preds = %507, %497
  %513 = tail call i32 @llvm.umin.i32(i32 %492, i32 %501)
  br i1 %23, label %514, label %522

514:                                              ; preds = %512
  %515 = load ptr, ptr %0, align 8, !tbaa !19
  %516 = getelementptr inbounds nuw i8, ptr %515, i64 8
  %517 = load i32, ptr %516, align 8, !tbaa !79
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %522

519:                                              ; preds = %514
  %520 = icmp uge i32 %492, %501
  %521 = zext i1 %520 to i32
  br label %522

522:                                              ; preds = %519, %514, %512
  %523 = phi i32 [ 0, %514 ], [ 0, %512 ], [ %521, %519 ]
  %524 = load ptr, ptr %26, align 8, !tbaa !34
  %525 = getelementptr inbounds i8, ptr %524, i64 %493
  %526 = zext nneg i32 %513 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %525, i64 noundef %526, i32 noundef %523) #11
  %527 = load i64, ptr %20, align 8, !tbaa !72
  %528 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %527, i64 %526), !nosanitize !44
  %529 = extractvalue { i64, i1 } %528, 1, !nosanitize !44
  br i1 %529, label %480, label %530, !prof !45, !nosanitize !44

530:                                              ; preds = %522
  %531 = extractvalue { i64, i1 } %528, 0, !nosanitize !44
  store i64 %531, ptr %20, align 8, !tbaa !72
  %532 = load ptr, ptr %0, align 8, !tbaa !19
  %533 = getelementptr inbounds nuw i8, ptr %532, i64 56
  %534 = load ptr, ptr %533, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %534) #11
  %535 = getelementptr inbounds nuw i8, ptr %534, i64 40
  %536 = load i64, ptr %535, align 8, !tbaa !55
  %537 = getelementptr inbounds nuw i8, ptr %532, i64 32
  %538 = load i32, ptr %537, align 8, !tbaa !109
  %539 = zext i32 %538 to i64
  %540 = tail call i64 @llvm.umin.i64(i64 %536, i64 %539)
  %541 = trunc nuw i64 %540 to i32
  %542 = icmp eq i64 %540, 0
  br i1 %542, label %575, label %543

543:                                              ; preds = %530
  %544 = getelementptr inbounds nuw i8, ptr %532, i64 24
  %545 = load ptr, ptr %544, align 8, !tbaa !108
  %546 = getelementptr inbounds nuw i8, ptr %534, i64 32
  %547 = load ptr, ptr %546, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %545, ptr align 1 %547, i64 %540, i1 false)
  %548 = load ptr, ptr %544, align 8, !tbaa !108
  %549 = getelementptr inbounds nuw i8, ptr %548, i64 %540
  store ptr %549, ptr %544, align 8, !tbaa !108
  %550 = load ptr, ptr %546, align 8, !tbaa !56
  %551 = getelementptr inbounds nuw i8, ptr %550, i64 %540
  store ptr %551, ptr %546, align 8, !tbaa !56
  %552 = getelementptr inbounds nuw i8, ptr %532, i64 40
  %553 = load i64, ptr %552, align 8, !tbaa !110
  %554 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %553, i64 %540), !nosanitize !44
  %555 = extractvalue { i64, i1 } %554, 1, !nosanitize !44
  br i1 %555, label %556, label %557, !prof !45, !nosanitize !44

556:                                              ; preds = %543
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

557:                                              ; preds = %543
  %558 = extractvalue { i64, i1 } %554, 0, !nosanitize !44
  store i64 %558, ptr %552, align 8, !tbaa !110
  %559 = load i32, ptr %537, align 8, !tbaa !109
  %560 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %559, i32 %541), !nosanitize !44
  %561 = extractvalue { i32, i1 } %560, 1, !nosanitize !44
  br i1 %561, label %562, label %563, !prof !45, !nosanitize !44

562:                                              ; preds = %557
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

563:                                              ; preds = %557
  %564 = extractvalue { i32, i1 } %560, 0, !nosanitize !44
  store i32 %564, ptr %537, align 8, !tbaa !109
  %565 = load i64, ptr %535, align 8, !tbaa !55
  %566 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %565, i64 %540), !nosanitize !44
  %567 = extractvalue { i64, i1 } %566, 1, !nosanitize !44
  br i1 %567, label %568, label %569, !prof !45, !nosanitize !44

568:                                              ; preds = %563
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

569:                                              ; preds = %563
  %570 = extractvalue { i64, i1 } %566, 0, !nosanitize !44
  store i64 %570, ptr %535, align 8, !tbaa !55
  %571 = icmp eq i64 %570, 0
  br i1 %571, label %572, label %575

572:                                              ; preds = %569
  %573 = getelementptr inbounds nuw i8, ptr %534, i64 16
  %574 = load ptr, ptr %573, align 8, !tbaa !40
  store ptr %574, ptr %546, align 8, !tbaa !56
  br label %575

575:                                              ; preds = %572, %569, %530
  %576 = icmp eq i32 %523, 0
  br i1 %576, label %580, label %577

577:                                              ; preds = %575, %357
  %578 = phi i32 [ 3, %357 ], [ 2, %575 ]
  %579 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %579, align 8, !tbaa !104
  br label %580

580:                                              ; preds = %577, %575, %507, %503, %365
  %581 = phi i32 [ 1, %365 ], [ 0, %575 ], [ 0, %503 ], [ 0, %507 ], [ %578, %577 ]
  ret i32 %581
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
  br i1 %27, label %28, label %587

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 8, !tbaa !31
  %.fr = freeze i32 %29
  %30 = zext i32 %.fr to i64
  %mv.h1 = icmp sgt i32 %.fr, -1
  br i1 %mv.h1, label %.mv.ph3.mv.fast, label %.mv.ph3

.mv.ph3.mv.fast:                                  ; preds = %28, %254
  %31 = phi i32 [ %191, %254 ], [ 0, %28 ]
  %32 = load i64, ptr %5, align 8, !tbaa !59
  %33 = zext nneg i32 %31 to i64
  %34 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %32, i64 %33), !nosanitize !44
  %35 = extractvalue { i64, i1 } %34, 1, !nosanitize !44
  br i1 %35, label %.loopexit39, label %36, !prof !45, !nosanitize !44

36:                                               ; preds = %.mv.ph3.mv.fast
  %37 = extractvalue { i64, i1 } %34, 0, !nosanitize !44
  %38 = load i32, ptr %6, align 4, !tbaa !71
  %39 = zext i32 %38 to i64
  %40 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %37, i64 %39), !nosanitize !44
  %41 = extractvalue { i64, i1 } %40, 1, !nosanitize !44
  br i1 %41, label %.loopexit40, label %42, !prof !45, !nosanitize !44

42:                                               ; preds = %36
  %43 = extractvalue { i64, i1 } %40, 0, !nosanitize !44
  %44 = trunc i64 %43 to i32
  %45 = load i32, ptr %4, align 8, !tbaa !31
  %46 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %45, i32 262), !nosanitize !44
  %47 = extractvalue { i32, i1 } %46, 1, !nosanitize !44
  br i1 %47, label %.loopexit41, label %48, !prof !45, !nosanitize !44

48:                                               ; preds = %42
  %49 = extractvalue { i32, i1 } %46, 0, !nosanitize !44
  %50 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.fr, i32 %49), !nosanitize !44
  %51 = extractvalue { i32, i1 } %50, 1, !nosanitize !44
  br i1 %51, label %.loopexit42, label %52, !prof !45, !nosanitize !44

52:                                               ; preds = %48
  %53 = extractvalue { i32, i1 } %50, 0, !nosanitize !44
  %54 = icmp ult i32 %38, %53
  br i1 %54, label %144, label %55

55:                                               ; preds = %52
  %56 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr, i32 %44), !nosanitize !44
  %57 = extractvalue { i32, i1 } %56, 1, !nosanitize !44
  br i1 %57, label %.loopexit43, label %58, !prof !45, !nosanitize !44

58:                                               ; preds = %55
  %59 = extractvalue { i32, i1 } %56, 0, !nosanitize !44
  %60 = load ptr, ptr %7, align 8, !tbaa !34
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 %30
  %62 = zext i32 %59 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 %61, i64 %62, i1 false)
  %63 = load i32, ptr %8, align 8, !tbaa !81
  %64 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %63, i32 %.fr), !nosanitize !44
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !44
  br i1 %65, label %.loopexit44, label %66, !prof !45, !nosanitize !44

66:                                               ; preds = %58
  %67 = extractvalue { i32, i1 } %64, 0, !nosanitize !44
  store i32 %67, ptr %8, align 8, !tbaa !81
  %68 = load i32, ptr %6, align 4, !tbaa !71
  %69 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %68, i32 %.fr), !nosanitize !44
  %70 = extractvalue { i32, i1 } %69, 1, !nosanitize !44
  br i1 %70, label %.loopexit45, label %71, !prof !45, !nosanitize !44

71:                                               ; preds = %66
  %72 = extractvalue { i32, i1 } %69, 0, !nosanitize !44
  store i32 %72, ptr %6, align 4, !tbaa !71
  %73 = load i64, ptr %9, align 8, !tbaa !72
  %74 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %73, i64 %30), !nosanitize !44
  %75 = extractvalue { i64, i1 } %74, 1, !nosanitize !44
  br i1 %75, label %.loopexit45, label %76, !prof !45, !nosanitize !44

76:                                               ; preds = %71
  %77 = extractvalue { i64, i1 } %74, 0, !nosanitize !44
  store i64 %77, ptr %9, align 8, !tbaa !72
  %78 = load i32, ptr %10, align 4, !tbaa !74
  %79 = icmp ugt i32 %78, %72
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 %72, ptr %10, align 4, !tbaa !74
  br label %81

81:                                               ; preds = %80, %76
  %82 = load i32, ptr %4, align 8, !tbaa !31
  %83 = load i32, ptr %11, align 4, !tbaa !36
  %84 = load ptr, ptr %12, align 8, !tbaa !37
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds nuw [2 x i8], ptr %84, i64 %85
  %87 = add i32 %83, -1
  %88 = tail call i32 @llvm.umin.i32(i32 %83, i32 %87)
  %min.iters.check161 = icmp ult i32 %88, 8
  br i1 %min.iters.check161, label %scalar.ph160.preheader, label %vector.ph162

vector.ph162:                                     ; preds = %81
  %umin159 = zext i32 %88 to i64
  %89 = add nuw nsw i64 %umin159, 1
  %n.mod.vf163 = and i64 %89, 7
  %90 = icmp eq i64 %n.mod.vf163, 0
  %91 = select i1 %90, i64 8, i64 %n.mod.vf163
  %n.vec164 = sub nsw i64 %89, %91
  %92 = mul nsw i64 %n.vec164, -2
  %93 = getelementptr i8, ptr %86, i64 %92
  %.cast165 = trunc i64 %n.vec164 to i32
  %94 = sub i32 %83, %.cast165
  %broadcast.splatinsert166 = insertelement <8 x i32> poison, i32 %82, i64 0
  %95 = shufflevector <8 x i32> %broadcast.splatinsert166, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph162
  %index169 = phi i64 [ 0, %vector.ph162 ], [ %index.next175, %vector.body168 ]
  %offset.idx170 = mul i64 %index169, -2
  %next.gep171 = getelementptr i8, ptr %86, i64 %offset.idx170
  %96 = getelementptr inbounds i8, ptr %next.gep171, i64 -16
  %wide.load172 = load <8 x i16>, ptr %96, align 2, !tbaa !60
  %97 = zext <8 x i16> %wide.load172 to <8 x i32>
  %98 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %97, <8 x i32> %95)
  %reverse174 = trunc nuw <8 x i32> %98 to <8 x i16>
  store <8 x i16> %reverse174, ptr %96, align 2, !tbaa !60
  %index.next175 = add nuw i64 %index169, 8
  %99 = icmp eq i64 %index.next175, %n.vec164
  br i1 %99, label %scalar.ph160.preheader, label %vector.body168, !llvm.loop !136

scalar.ph160.preheader:                           ; preds = %vector.body168, %81
  %.ph221 = phi ptr [ %86, %81 ], [ %93, %vector.body168 ]
  %.ph222 = phi i32 [ %83, %81 ], [ %94, %vector.body168 ]
  br label %scalar.ph160

scalar.ph160:                                     ; preds = %scalar.ph160.preheader, %109
  %100 = phi ptr [ %102, %109 ], [ %.ph221, %scalar.ph160.preheader ]
  %101 = phi i32 [ %110, %109 ], [ %.ph222, %scalar.ph160.preheader ]
  %102 = getelementptr inbounds i8, ptr %100, i64 -2
  %103 = load i16, ptr %102, align 2, !tbaa !60
  %104 = zext i16 %103 to i32
  %105 = tail call i32 @llvm.usub.sat.i32(i32 %104, i32 %82)
  %106 = trunc nuw i32 %105 to i16
  store i16 %106, ptr %102, align 2, !tbaa !60
  %107 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %101, i32 1), !nosanitize !44
  %108 = extractvalue { i32, i1 } %107, 1, !nosanitize !44
  br i1 %108, label %.loopexit34, label %109, !prof !45, !nosanitize !44

109:                                              ; preds = %scalar.ph160
  %110 = extractvalue { i32, i1 } %107, 0, !nosanitize !44
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %scalar.ph160, !llvm.loop !137

112:                                              ; preds = %109
  %113 = load ptr, ptr %13, align 8, !tbaa !35
  %114 = zext i32 %82 to i64
  %115 = getelementptr inbounds nuw [2 x i8], ptr %113, i64 %114
  %116 = add i32 %82, -1
  %117 = tail call i32 @llvm.umin.i32(i32 %82, i32 %116)
  %min.iters.check = icmp ult i32 %117, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %112
  %umin = zext i32 %117 to i64
  %118 = add nuw nsw i64 %umin, 1
  %n.mod.vf = and i64 %118, 7
  %119 = icmp eq i64 %n.mod.vf, 0
  %120 = select i1 %119, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %118, %120
  %121 = mul nsw i64 %n.vec, -2
  %122 = getelementptr i8, ptr %115, i64 %121
  %.cast = trunc i64 %n.vec to i32
  %123 = sub i32 %82, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %82, i64 0
  %124 = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %115, i64 %offset.idx
  %125 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.load = load <8 x i16>, ptr %125, align 2, !tbaa !60
  %126 = zext <8 x i16> %wide.load to <8 x i32>
  %127 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %126, <8 x i32> %124)
  %reverse157 = trunc nuw <8 x i32> %127 to <8 x i16>
  store <8 x i16> %reverse157, ptr %125, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %128 = icmp eq i64 %index.next, %n.vec
  br i1 %128, label %scalar.ph.preheader, label %vector.body, !llvm.loop !138

scalar.ph.preheader:                              ; preds = %vector.body, %112
  %.ph = phi ptr [ %115, %112 ], [ %122, %vector.body ]
  %.ph220 = phi i32 [ %82, %112 ], [ %123, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %138
  %129 = phi ptr [ %131, %138 ], [ %.ph, %scalar.ph.preheader ]
  %130 = phi i32 [ %139, %138 ], [ %.ph220, %scalar.ph.preheader ]
  %131 = getelementptr inbounds i8, ptr %129, i64 -2
  %132 = load i16, ptr %131, align 2, !tbaa !60
  %133 = zext i16 %132 to i32
  %134 = tail call i32 @llvm.usub.sat.i32(i32 %133, i32 %82)
  %135 = trunc nuw i32 %134 to i16
  store i16 %135, ptr %131, align 2, !tbaa !60
  %136 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %130, i32 1), !nosanitize !44
  %137 = extractvalue { i32, i1 } %136, 1, !nosanitize !44
  br i1 %137, label %.loopexit33, label %138, !prof !45, !nosanitize !44

138:                                              ; preds = %scalar.ph
  %139 = extractvalue { i32, i1 } %136, 0, !nosanitize !44
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %scalar.ph, !llvm.loop !139

141:                                              ; preds = %138
  store i32 1, ptr %14, align 8, !tbaa !61
  %142 = add i32 %.fr, %44
  %143 = load i32, ptr %3, align 4, !tbaa !73
  br label %144

144:                                              ; preds = %141, %52
  %145 = phi i32 [ %143, %141 ], [ %31, %52 ]
  %146 = phi i32 [ %72, %141 ], [ %38, %52 ]
  %147 = phi i32 [ %142, %141 ], [ %44, %52 ]
  %148 = load ptr, ptr %0, align 8, !tbaa !19
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 8
  %150 = load i32, ptr %149, align 8, !tbaa !79
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %.loopexit46, label %152

152:                                              ; preds = %144
  %153 = load ptr, ptr %7, align 8, !tbaa !34
  %154 = zext i32 %146 to i64
  %155 = getelementptr inbounds nuw i8, ptr %153, i64 %154
  %156 = zext i32 %145 to i64
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 %156
  %158 = tail call i32 @llvm.umin.i32(i32 %150, i32 %147)
  %159 = icmp eq i32 %147, 0
  br i1 %159, label %186, label %160

160:                                              ; preds = %152
  %161 = sub i32 %150, %158
  store i32 %161, ptr %149, align 8, !tbaa !79
  %162 = load ptr, ptr %148, align 8, !tbaa !80
  %163 = zext i32 %158 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %157, ptr align 1 %162, i64 %163, i1 false)
  %164 = getelementptr inbounds nuw i8, ptr %148, i64 56
  %165 = load ptr, ptr %164, align 8, !tbaa !18
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 48
  %167 = load i32, ptr %166, align 8, !tbaa !29
  switch i32 %167, label %176 [
    i32 1, label %172
    i32 2, label %168
  ]

168:                                              ; preds = %160
  %169 = getelementptr inbounds nuw i8, ptr %148, i64 96
  %170 = load i64, ptr %169, align 8, !tbaa !57
  %171 = tail call i64 @crc32(i64 noundef %170, ptr noundef %157, i32 noundef %158) #11
  store i64 %171, ptr %169, align 8, !tbaa !57
  br label %176

172:                                              ; preds = %160
  %173 = getelementptr inbounds nuw i8, ptr %148, i64 96
  %174 = load i64, ptr %173, align 8, !tbaa !57
  %175 = tail call i64 @adler32(i64 noundef %174, ptr noundef %157, i32 noundef %158) #11
  store i64 %175, ptr %173, align 8, !tbaa !57
  br label %176

176:                                              ; preds = %172, %168, %160
  %177 = load ptr, ptr %148, align 8, !tbaa !80
  %178 = getelementptr inbounds nuw i8, ptr %177, i64 %163
  store ptr %178, ptr %148, align 8, !tbaa !80
  %179 = getelementptr inbounds nuw i8, ptr %148, i64 16
  %180 = load i64, ptr %179, align 8, !tbaa !53
  %181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %180, i64 %163), !nosanitize !44
  %182 = extractvalue { i64, i1 } %181, 1, !nosanitize !44
  br i1 %182, label %.loopexit47, label %183, !prof !45, !nosanitize !44

183:                                              ; preds = %176
  %184 = extractvalue { i64, i1 } %181, 0, !nosanitize !44
  store i64 %184, ptr %179, align 8, !tbaa !53
  %185 = load i32, ptr %3, align 4, !tbaa !73
  br label %186

186:                                              ; preds = %183, %152
  %187 = phi i32 [ %145, %152 ], [ %185, %183 ]
  %188 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %187, i32 %158), !nosanitize !44
  %189 = extractvalue { i32, i1 } %188, 1, !nosanitize !44
  br i1 %189, label %.loopexit48, label %190, !prof !45, !nosanitize !44

190:                                              ; preds = %186
  %191 = extractvalue { i32, i1 } %188, 0, !nosanitize !44
  store i32 %191, ptr %3, align 4, !tbaa !73
  %192 = load i32, ptr %10, align 4, !tbaa !74
  %193 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %191, i32 %192), !nosanitize !44
  %194 = extractvalue { i32, i1 } %193, 1, !nosanitize !44
  br i1 %194, label %.loopexit49, label %195, !prof !45, !nosanitize !44

195:                                              ; preds = %190
  %196 = extractvalue { i32, i1 } %193, 0, !nosanitize !44
  %197 = icmp ugt i32 %196, 2
  br i1 %197, label %198, label %.loopexit.mv.fast

198:                                              ; preds = %195
  %199 = load i32, ptr %6, align 4, !tbaa !71
  %.fr30 = freeze i32 %199
  %200 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr30, i32 %192), !nosanitize !44
  %201 = extractvalue { i32, i1 } %200, 0, !nosanitize !44
  %202 = extractvalue { i32, i1 } %200, 1, !nosanitize !44
  br i1 %202, label %.loopexit50, label %203, !prof !45, !nosanitize !44

203:                                              ; preds = %198
  %204 = load ptr, ptr %7, align 8, !tbaa !34
  %205 = zext i32 %201 to i64
  %206 = getelementptr inbounds nuw i8, ptr %204, i64 %205
  %207 = load i8, ptr %206, align 1, !tbaa !5
  %208 = zext i8 %207 to i32
  store i32 %208, ptr %15, align 8, !tbaa !78
  %209 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %201, i32 1), !nosanitize !44
  %210 = extractvalue { i32, i1 } %209, 1, !nosanitize !44
  br i1 %210, label %.loopexit51, label %211, !prof !45, !nosanitize !44

211:                                              ; preds = %203
  %212 = extractvalue { i32, i1 } %209, 0, !nosanitize !44
  %213 = load i32, ptr %16, align 8, !tbaa !52
  %214 = shl i32 %208, %213
  %215 = zext i32 %212 to i64
  %216 = getelementptr inbounds nuw i8, ptr %204, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !5
  %218 = zext i8 %217 to i32
  %219 = xor i32 %214, %218
  %220 = load i32, ptr %17, align 4, !tbaa !51
  %221 = and i32 %219, %220
  store i32 %221, ptr %15, align 8, !tbaa !78
  %mv.h.mv.fast = icmp sgt i32 %.fr30, -1
  br i1 %mv.h.mv.fast, label %.mv.ph.mv.fast.mv.fast, label %.mv.ph.mv.fast4

.mv.ph.mv.fast4:                                  ; preds = %211, %229
  %222 = phi i32 [ %238, %229 ], [ %221, %211 ]
  %223 = phi i32 [ %249, %229 ], [ %192, %211 ]
  %224 = phi i32 [ %250, %229 ], [ %201, %211 ]
  %225 = icmp eq i32 %223, 0
  br i1 %225, label %.loopexit.mv.fast, label %226

226:                                              ; preds = %.mv.ph.mv.fast4
  %227 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %224, i32 3), !nosanitize !44
  %228 = extractvalue { i32, i1 } %227, 1, !nosanitize !44
  br i1 %228, label %.loopexit32, label %229, !prof !45, !nosanitize !44

229:                                              ; preds = %226
  %230 = shl i32 %222, %213
  %231 = extractvalue { i32, i1 } %227, 0, !nosanitize !44
  %232 = add i32 %231, -1
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds nuw i8, ptr %204, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !5
  %236 = zext i8 %235 to i32
  %237 = xor i32 %230, %236
  %238 = and i32 %237, %220
  store i32 %238, ptr %15, align 8, !tbaa !78
  %239 = load ptr, ptr %12, align 8, !tbaa !37
  %240 = zext i32 %238 to i64
  %241 = getelementptr inbounds nuw [2 x i8], ptr %239, i64 %240
  %242 = load i16, ptr %241, align 2, !tbaa !60
  %243 = load ptr, ptr %13, align 8, !tbaa !35
  %244 = load i32, ptr %18, align 8, !tbaa !32
  %245 = and i32 %244, %224
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds nuw [2 x i8], ptr %243, i64 %246
  store i16 %242, ptr %247, align 2, !tbaa !60
  %248 = trunc i32 %224 to i16
  store i16 %248, ptr %241, align 2, !tbaa !60
  %249 = add i32 %223, -1
  store i32 %249, ptr %10, align 4, !tbaa !74
  %250 = add nuw i32 %224, 1
  %251 = add i32 %249, %191
  %252 = icmp ult i32 %251, 3
  br i1 %252, label %.loopexit.mv.fast, label %.mv.ph.mv.fast4, !llvm.loop !89

.loopexit.mv.fast:                                ; preds = %.mv.ph.mv.fast4, %229, %.mv.ph.mv.fast.mv.fast, %262, %195
  %253 = icmp ult i32 %191, 262
  br i1 %253, label %254, label %.loopexit46

254:                                              ; preds = %.loopexit.mv.fast
  %255 = load ptr, ptr %0, align 8, !tbaa !19
  %256 = getelementptr inbounds nuw i8, ptr %255, i64 8
  %257 = load i32, ptr %256, align 8, !tbaa !79
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %.loopexit46, label %.mv.ph3.mv.fast, !llvm.loop !90

.mv.ph.mv.fast.mv.fast:                           ; preds = %211, %262
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %262 ], [ %205, %211 ]
  %259 = phi i32 [ %271, %262 ], [ %221, %211 ]
  %260 = phi i32 [ %282, %262 ], [ %192, %211 ]
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %.loopexit.mv.fast, label %262

262:                                              ; preds = %.mv.ph.mv.fast.mv.fast
  %263 = shl i32 %259, %213
  %264 = trunc nuw i64 %indvars.iv88 to i32
  %265 = add nuw i64 %indvars.iv88, 2
  %266 = and i64 %265, 4294967295
  %267 = getelementptr inbounds nuw i8, ptr %204, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !5
  %269 = zext i8 %268 to i32
  %270 = xor i32 %263, %269
  %271 = and i32 %270, %220
  store i32 %271, ptr %15, align 8, !tbaa !78
  %272 = load ptr, ptr %12, align 8, !tbaa !37
  %273 = zext i32 %271 to i64
  %274 = getelementptr inbounds nuw [2 x i8], ptr %272, i64 %273
  %275 = load i16, ptr %274, align 2, !tbaa !60
  %276 = load ptr, ptr %13, align 8, !tbaa !35
  %277 = load i32, ptr %18, align 8, !tbaa !32
  %278 = and i32 %277, %264
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds nuw [2 x i8], ptr %276, i64 %279
  store i16 %275, ptr %280, align 2, !tbaa !60
  %281 = trunc i64 %indvars.iv88 to i16
  store i16 %281, ptr %274, align 2, !tbaa !60
  %282 = add i32 %260, -1
  store i32 %282, ptr %10, align 4, !tbaa !74
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %283 = add i32 %282, %191
  %284 = icmp ult i32 %283, 3
  br i1 %284, label %.loopexit.mv.fast, label %.mv.ph.mv.fast.mv.fast, !llvm.loop !89

.mv.ph3:                                          ; preds = %28, %538
  %285 = phi i32 [ %449, %538 ], [ 0, %28 ]
  %286 = load i64, ptr %5, align 8, !tbaa !59
  %287 = zext nneg i32 %285 to i64
  %288 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %286, i64 %287), !nosanitize !44
  %289 = extractvalue { i64, i1 } %288, 1, !nosanitize !44
  br i1 %289, label %.loopexit39, label %290, !prof !45, !nosanitize !44

.loopexit39:                                      ; preds = %.mv.ph3, %.mv.ph3.mv.fast
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

290:                                              ; preds = %.mv.ph3
  %291 = extractvalue { i64, i1 } %288, 0, !nosanitize !44
  %292 = load i32, ptr %6, align 4, !tbaa !71
  %293 = zext i32 %292 to i64
  %294 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %291, i64 %293), !nosanitize !44
  %295 = extractvalue { i64, i1 } %294, 1, !nosanitize !44
  br i1 %295, label %.loopexit40, label %296, !prof !45, !nosanitize !44

.loopexit40:                                      ; preds = %290, %36
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

296:                                              ; preds = %290
  %297 = extractvalue { i64, i1 } %294, 0, !nosanitize !44
  %298 = trunc i64 %297 to i32
  %299 = load i32, ptr %4, align 8, !tbaa !31
  %300 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %299, i32 262), !nosanitize !44
  %301 = extractvalue { i32, i1 } %300, 1, !nosanitize !44
  br i1 %301, label %.loopexit41, label %302, !prof !45, !nosanitize !44

.loopexit41:                                      ; preds = %296, %42
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

302:                                              ; preds = %296
  %303 = extractvalue { i32, i1 } %300, 0, !nosanitize !44
  %304 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.fr, i32 %303), !nosanitize !44
  %305 = extractvalue { i32, i1 } %304, 1, !nosanitize !44
  br i1 %305, label %.loopexit42, label %306, !prof !45, !nosanitize !44

.loopexit42:                                      ; preds = %302, %48
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

306:                                              ; preds = %302
  %307 = extractvalue { i32, i1 } %304, 0, !nosanitize !44
  %308 = icmp ult i32 %292, %307
  br i1 %308, label %402, label %309

309:                                              ; preds = %306
  %310 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr, i32 %298), !nosanitize !44
  %311 = extractvalue { i32, i1 } %310, 1, !nosanitize !44
  br i1 %311, label %.loopexit43, label %312, !prof !45, !nosanitize !44

.loopexit43:                                      ; preds = %309, %55
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

312:                                              ; preds = %309
  %313 = extractvalue { i32, i1 } %310, 0, !nosanitize !44
  %314 = load ptr, ptr %7, align 8, !tbaa !34
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 %30
  %316 = zext i32 %313 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %314, ptr nonnull align 1 %315, i64 %316, i1 false)
  %317 = load i32, ptr %8, align 8, !tbaa !81
  %318 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %317, i32 %.fr), !nosanitize !44
  %319 = extractvalue { i32, i1 } %318, 1, !nosanitize !44
  br i1 %319, label %.loopexit44, label %320, !prof !45, !nosanitize !44

.loopexit44:                                      ; preds = %312, %58
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

320:                                              ; preds = %312
  %321 = extractvalue { i32, i1 } %318, 0, !nosanitize !44
  store i32 %321, ptr %8, align 8, !tbaa !81
  %322 = load i32, ptr %6, align 4, !tbaa !71
  %323 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %322, i32 %.fr), !nosanitize !44
  %324 = extractvalue { i32, i1 } %323, 1, !nosanitize !44
  br i1 %324, label %.loopexit45, label %325, !prof !45, !nosanitize !44

.loopexit45:                                      ; preds = %325, %320, %71, %66
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

325:                                              ; preds = %320
  %326 = extractvalue { i32, i1 } %323, 0, !nosanitize !44
  store i32 %326, ptr %6, align 4, !tbaa !71
  %327 = load i64, ptr %9, align 8, !tbaa !72
  %328 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %327, i64 %30), !nosanitize !44
  %329 = extractvalue { i64, i1 } %328, 1, !nosanitize !44
  br i1 %329, label %.loopexit45, label %330, !prof !45, !nosanitize !44

330:                                              ; preds = %325
  %331 = extractvalue { i64, i1 } %328, 0, !nosanitize !44
  store i64 %331, ptr %9, align 8, !tbaa !72
  %332 = load i32, ptr %10, align 4, !tbaa !74
  %333 = icmp ugt i32 %332, %326
  br i1 %333, label %334, label %335

334:                                              ; preds = %330
  store i32 %326, ptr %10, align 4, !tbaa !74
  br label %335

335:                                              ; preds = %334, %330
  %336 = load i32, ptr %4, align 8, !tbaa !31
  %337 = load i32, ptr %11, align 4, !tbaa !36
  %338 = load ptr, ptr %12, align 8, !tbaa !37
  %339 = zext i32 %337 to i64
  %340 = getelementptr inbounds nuw [2 x i8], ptr %338, i64 %339
  %341 = add i32 %337, -1
  %342 = tail call i32 @llvm.umin.i32(i32 %337, i32 %341)
  %min.iters.check201 = icmp ult i32 %342, 8
  br i1 %min.iters.check201, label %scalar.ph200.preheader, label %vector.ph202

vector.ph202:                                     ; preds = %335
  %umin199 = zext i32 %342 to i64
  %343 = add nuw nsw i64 %umin199, 1
  %n.mod.vf203 = and i64 %343, 7
  %344 = icmp eq i64 %n.mod.vf203, 0
  %345 = select i1 %344, i64 8, i64 %n.mod.vf203
  %n.vec204 = sub nsw i64 %343, %345
  %346 = mul nsw i64 %n.vec204, -2
  %347 = getelementptr i8, ptr %340, i64 %346
  %.cast205 = trunc i64 %n.vec204 to i32
  %348 = sub i32 %337, %.cast205
  %broadcast.splatinsert206 = insertelement <8 x i32> poison, i32 %336, i64 0
  %349 = shufflevector <8 x i32> %broadcast.splatinsert206, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph202
  %index209 = phi i64 [ 0, %vector.ph202 ], [ %index.next215, %vector.body208 ]
  %offset.idx210 = mul i64 %index209, -2
  %next.gep211 = getelementptr i8, ptr %340, i64 %offset.idx210
  %350 = getelementptr inbounds i8, ptr %next.gep211, i64 -16
  %wide.load212 = load <8 x i16>, ptr %350, align 2, !tbaa !60
  %351 = zext <8 x i16> %wide.load212 to <8 x i32>
  %352 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %351, <8 x i32> %349)
  %reverse214 = trunc nuw <8 x i32> %352 to <8 x i16>
  store <8 x i16> %reverse214, ptr %350, align 2, !tbaa !60
  %index.next215 = add nuw i64 %index209, 8
  %353 = icmp eq i64 %index.next215, %n.vec204
  br i1 %353, label %scalar.ph200.preheader, label %vector.body208, !llvm.loop !140

scalar.ph200.preheader:                           ; preds = %vector.body208, %335
  %.ph228 = phi ptr [ %340, %335 ], [ %347, %vector.body208 ]
  %.ph229 = phi i32 [ %337, %335 ], [ %348, %vector.body208 ]
  br label %scalar.ph200

scalar.ph200:                                     ; preds = %scalar.ph200.preheader, %363
  %354 = phi ptr [ %356, %363 ], [ %.ph228, %scalar.ph200.preheader ]
  %355 = phi i32 [ %364, %363 ], [ %.ph229, %scalar.ph200.preheader ]
  %356 = getelementptr inbounds i8, ptr %354, i64 -2
  %357 = load i16, ptr %356, align 2, !tbaa !60
  %358 = zext i16 %357 to i32
  %359 = tail call i32 @llvm.usub.sat.i32(i32 %358, i32 %336)
  %360 = trunc nuw i32 %359 to i16
  store i16 %360, ptr %356, align 2, !tbaa !60
  %361 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %355, i32 1), !nosanitize !44
  %362 = extractvalue { i32, i1 } %361, 1, !nosanitize !44
  br i1 %362, label %.loopexit34, label %363, !prof !45, !nosanitize !44

.loopexit34:                                      ; preds = %scalar.ph200, %scalar.ph160
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

363:                                              ; preds = %scalar.ph200
  %364 = extractvalue { i32, i1 } %361, 0, !nosanitize !44
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %scalar.ph200, !llvm.loop !141

366:                                              ; preds = %363
  %367 = load ptr, ptr %13, align 8, !tbaa !35
  %368 = zext i32 %336 to i64
  %369 = getelementptr inbounds nuw [2 x i8], ptr %367, i64 %368
  %370 = add i32 %336, -1
  %371 = tail call i32 @llvm.umin.i32(i32 %336, i32 %370)
  %min.iters.check181 = icmp ult i32 %371, 8
  br i1 %min.iters.check181, label %scalar.ph180.preheader, label %vector.ph182

vector.ph182:                                     ; preds = %366
  %umin179 = zext i32 %371 to i64
  %372 = add nuw nsw i64 %umin179, 1
  %n.mod.vf183 = and i64 %372, 7
  %373 = icmp eq i64 %n.mod.vf183, 0
  %374 = select i1 %373, i64 8, i64 %n.mod.vf183
  %n.vec184 = sub nsw i64 %372, %374
  %375 = mul nsw i64 %n.vec184, -2
  %376 = getelementptr i8, ptr %369, i64 %375
  %.cast185 = trunc i64 %n.vec184 to i32
  %377 = sub i32 %336, %.cast185
  %broadcast.splatinsert186 = insertelement <8 x i32> poison, i32 %336, i64 0
  %378 = shufflevector <8 x i32> %broadcast.splatinsert186, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph182
  %index189 = phi i64 [ 0, %vector.ph182 ], [ %index.next195, %vector.body188 ]
  %offset.idx190 = mul i64 %index189, -2
  %next.gep191 = getelementptr i8, ptr %369, i64 %offset.idx190
  %379 = getelementptr inbounds i8, ptr %next.gep191, i64 -16
  %wide.load192 = load <8 x i16>, ptr %379, align 2, !tbaa !60
  %380 = zext <8 x i16> %wide.load192 to <8 x i32>
  %381 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %380, <8 x i32> %378)
  %reverse194 = trunc nuw <8 x i32> %381 to <8 x i16>
  store <8 x i16> %reverse194, ptr %379, align 2, !tbaa !60
  %index.next195 = add nuw i64 %index189, 8
  %382 = icmp eq i64 %index.next195, %n.vec184
  br i1 %382, label %scalar.ph180.preheader, label %vector.body188, !llvm.loop !142

scalar.ph180.preheader:                           ; preds = %vector.body188, %366
  %.ph225 = phi ptr [ %369, %366 ], [ %376, %vector.body188 ]
  %.ph226 = phi i32 [ %336, %366 ], [ %377, %vector.body188 ]
  br label %scalar.ph180

scalar.ph180:                                     ; preds = %scalar.ph180.preheader, %392
  %383 = phi ptr [ %385, %392 ], [ %.ph225, %scalar.ph180.preheader ]
  %384 = phi i32 [ %393, %392 ], [ %.ph226, %scalar.ph180.preheader ]
  %385 = getelementptr inbounds i8, ptr %383, i64 -2
  %386 = load i16, ptr %385, align 2, !tbaa !60
  %387 = zext i16 %386 to i32
  %388 = tail call i32 @llvm.usub.sat.i32(i32 %387, i32 %336)
  %389 = trunc nuw i32 %388 to i16
  store i16 %389, ptr %385, align 2, !tbaa !60
  %390 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %384, i32 1), !nosanitize !44
  %391 = extractvalue { i32, i1 } %390, 1, !nosanitize !44
  br i1 %391, label %.loopexit33, label %392, !prof !45, !nosanitize !44

.loopexit33:                                      ; preds = %scalar.ph180, %scalar.ph
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

392:                                              ; preds = %scalar.ph180
  %393 = extractvalue { i32, i1 } %390, 0, !nosanitize !44
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %scalar.ph180, !llvm.loop !143

395:                                              ; preds = %392
  store i32 1, ptr %14, align 8, !tbaa !61
  %396 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %298, i32 %.fr), !nosanitize !44
  %397 = extractvalue { i32, i1 } %396, 1, !nosanitize !44
  br i1 %397, label %398, label %399, !prof !45, !nosanitize !44

398:                                              ; preds = %395
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

399:                                              ; preds = %395
  %400 = extractvalue { i32, i1 } %396, 0, !nosanitize !44
  %401 = load i32, ptr %3, align 4, !tbaa !73
  br label %402

402:                                              ; preds = %399, %306
  %403 = phi i32 [ %401, %399 ], [ %285, %306 ]
  %404 = phi i32 [ %326, %399 ], [ %292, %306 ]
  %405 = phi i32 [ %400, %399 ], [ %298, %306 ]
  %406 = load ptr, ptr %0, align 8, !tbaa !19
  %407 = getelementptr inbounds nuw i8, ptr %406, i64 8
  %408 = load i32, ptr %407, align 8, !tbaa !79
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %.loopexit46, label %410

410:                                              ; preds = %402
  %411 = load ptr, ptr %7, align 8, !tbaa !34
  %412 = zext i32 %404 to i64
  %413 = getelementptr inbounds nuw i8, ptr %411, i64 %412
  %414 = zext i32 %403 to i64
  %415 = getelementptr inbounds nuw i8, ptr %413, i64 %414
  %416 = tail call i32 @llvm.umin.i32(i32 %408, i32 %405)
  %417 = icmp eq i32 %405, 0
  br i1 %417, label %444, label %418

418:                                              ; preds = %410
  %419 = sub i32 %408, %416
  store i32 %419, ptr %407, align 8, !tbaa !79
  %420 = load ptr, ptr %406, align 8, !tbaa !80
  %421 = zext i32 %416 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %415, ptr align 1 %420, i64 %421, i1 false)
  %422 = getelementptr inbounds nuw i8, ptr %406, i64 56
  %423 = load ptr, ptr %422, align 8, !tbaa !18
  %424 = getelementptr inbounds nuw i8, ptr %423, i64 48
  %425 = load i32, ptr %424, align 8, !tbaa !29
  switch i32 %425, label %434 [
    i32 1, label %426
    i32 2, label %430
  ]

426:                                              ; preds = %418
  %427 = getelementptr inbounds nuw i8, ptr %406, i64 96
  %428 = load i64, ptr %427, align 8, !tbaa !57
  %429 = tail call i64 @adler32(i64 noundef %428, ptr noundef %415, i32 noundef %416) #11
  store i64 %429, ptr %427, align 8, !tbaa !57
  br label %434

430:                                              ; preds = %418
  %431 = getelementptr inbounds nuw i8, ptr %406, i64 96
  %432 = load i64, ptr %431, align 8, !tbaa !57
  %433 = tail call i64 @crc32(i64 noundef %432, ptr noundef %415, i32 noundef %416) #11
  store i64 %433, ptr %431, align 8, !tbaa !57
  br label %434

434:                                              ; preds = %430, %426, %418
  %435 = load ptr, ptr %406, align 8, !tbaa !80
  %436 = getelementptr inbounds nuw i8, ptr %435, i64 %421
  store ptr %436, ptr %406, align 8, !tbaa !80
  %437 = getelementptr inbounds nuw i8, ptr %406, i64 16
  %438 = load i64, ptr %437, align 8, !tbaa !53
  %439 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %438, i64 %421), !nosanitize !44
  %440 = extractvalue { i64, i1 } %439, 1, !nosanitize !44
  br i1 %440, label %.loopexit47, label %441, !prof !45, !nosanitize !44

.loopexit47:                                      ; preds = %434, %176
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

441:                                              ; preds = %434
  %442 = extractvalue { i64, i1 } %439, 0, !nosanitize !44
  store i64 %442, ptr %437, align 8, !tbaa !53
  %443 = load i32, ptr %3, align 4, !tbaa !73
  br label %444

444:                                              ; preds = %441, %410
  %445 = phi i32 [ %403, %410 ], [ %443, %441 ]
  %446 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %445, i32 %416), !nosanitize !44
  %447 = extractvalue { i32, i1 } %446, 1, !nosanitize !44
  br i1 %447, label %.loopexit48, label %448, !prof !45, !nosanitize !44

.loopexit48:                                      ; preds = %444, %186
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

448:                                              ; preds = %444
  %449 = extractvalue { i32, i1 } %446, 0, !nosanitize !44
  store i32 %449, ptr %3, align 4, !tbaa !73
  %450 = load i32, ptr %10, align 4, !tbaa !74
  %451 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %449, i32 %450), !nosanitize !44
  %452 = extractvalue { i32, i1 } %451, 1, !nosanitize !44
  br i1 %452, label %.loopexit49, label %453, !prof !45, !nosanitize !44

.loopexit49:                                      ; preds = %448, %190
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

453:                                              ; preds = %448
  %454 = extractvalue { i32, i1 } %451, 0, !nosanitize !44
  %455 = icmp ugt i32 %454, 2
  br i1 %455, label %456, label %.loopexit

456:                                              ; preds = %453
  %457 = load i32, ptr %6, align 4, !tbaa !71
  %.fr29 = freeze i32 %457
  %458 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr29, i32 %450), !nosanitize !44
  %459 = extractvalue { i32, i1 } %458, 0, !nosanitize !44
  %460 = extractvalue { i32, i1 } %458, 1, !nosanitize !44
  br i1 %460, label %.loopexit50, label %461, !prof !45, !nosanitize !44

.loopexit50:                                      ; preds = %456, %198
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

461:                                              ; preds = %456
  %462 = load ptr, ptr %7, align 8, !tbaa !34
  %463 = zext i32 %459 to i64
  %464 = getelementptr inbounds nuw i8, ptr %462, i64 %463
  %465 = load i8, ptr %464, align 1, !tbaa !5
  %466 = zext i8 %465 to i32
  store i32 %466, ptr %15, align 8, !tbaa !78
  %467 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %459, i32 1), !nosanitize !44
  %468 = extractvalue { i32, i1 } %467, 1, !nosanitize !44
  br i1 %468, label %.loopexit51, label %469, !prof !45, !nosanitize !44

.loopexit51:                                      ; preds = %461, %203
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

469:                                              ; preds = %461
  %470 = extractvalue { i32, i1 } %467, 0, !nosanitize !44
  %471 = load i32, ptr %16, align 8, !tbaa !52
  %472 = shl i32 %466, %471
  %473 = zext i32 %470 to i64
  %474 = getelementptr inbounds nuw i8, ptr %462, i64 %473
  %475 = load i8, ptr %474, align 1, !tbaa !5
  %476 = zext i8 %475 to i32
  %477 = xor i32 %472, %476
  %478 = load i32, ptr %17, align 4, !tbaa !51
  %479 = and i32 %477, %478
  store i32 %479, ptr %15, align 8, !tbaa !78
  %mv.h = icmp sgt i32 %.fr29, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %469, %483
  %indvars.iv = phi i64 [ %indvars.iv.next, %483 ], [ %463, %469 ]
  %480 = phi i32 [ %492, %483 ], [ %479, %469 ]
  %481 = phi i32 [ %503, %483 ], [ %450, %469 ]
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %.loopexit, label %483

483:                                              ; preds = %.mv.ph.mv.fast
  %484 = shl i32 %480, %471
  %485 = trunc nuw i64 %indvars.iv to i32
  %486 = add nuw i64 %indvars.iv, 2
  %487 = and i64 %486, 4294967295
  %488 = getelementptr inbounds nuw i8, ptr %462, i64 %487
  %489 = load i8, ptr %488, align 1, !tbaa !5
  %490 = zext i8 %489 to i32
  %491 = xor i32 %484, %490
  %492 = and i32 %491, %478
  store i32 %492, ptr %15, align 8, !tbaa !78
  %493 = load ptr, ptr %12, align 8, !tbaa !37
  %494 = zext i32 %492 to i64
  %495 = getelementptr inbounds nuw [2 x i8], ptr %493, i64 %494
  %496 = load i16, ptr %495, align 2, !tbaa !60
  %497 = load ptr, ptr %13, align 8, !tbaa !35
  %498 = load i32, ptr %18, align 8, !tbaa !32
  %499 = and i32 %498, %485
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds nuw [2 x i8], ptr %497, i64 %500
  store i16 %496, ptr %501, align 2, !tbaa !60
  %502 = trunc i64 %indvars.iv to i16
  store i16 %502, ptr %495, align 2, !tbaa !60
  %503 = add i32 %481, -1
  store i32 %503, ptr %10, align 4, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %504 = add i32 %503, %449
  %505 = icmp ult i32 %504, 3
  br i1 %505, label %.loopexit, label %.mv.ph.mv.fast, !llvm.loop !89

.mv.ph:                                           ; preds = %469, %513
  %506 = phi i32 [ %522, %513 ], [ %479, %469 ]
  %507 = phi i32 [ %533, %513 ], [ %450, %469 ]
  %508 = phi i32 [ %534, %513 ], [ %459, %469 ]
  %509 = icmp eq i32 %507, 0
  br i1 %509, label %.loopexit, label %510

510:                                              ; preds = %.mv.ph
  %511 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %508, i32 3), !nosanitize !44
  %512 = extractvalue { i32, i1 } %511, 1, !nosanitize !44
  br i1 %512, label %.loopexit32, label %513, !prof !45, !nosanitize !44

.loopexit32:                                      ; preds = %510, %226
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

513:                                              ; preds = %510
  %514 = shl i32 %506, %471
  %515 = extractvalue { i32, i1 } %511, 0, !nosanitize !44
  %516 = add i32 %515, -1
  %517 = zext i32 %516 to i64
  %518 = getelementptr inbounds nuw i8, ptr %462, i64 %517
  %519 = load i8, ptr %518, align 1, !tbaa !5
  %520 = zext i8 %519 to i32
  %521 = xor i32 %514, %520
  %522 = and i32 %521, %478
  store i32 %522, ptr %15, align 8, !tbaa !78
  %523 = load ptr, ptr %12, align 8, !tbaa !37
  %524 = zext i32 %522 to i64
  %525 = getelementptr inbounds nuw [2 x i8], ptr %523, i64 %524
  %526 = load i16, ptr %525, align 2, !tbaa !60
  %527 = load ptr, ptr %13, align 8, !tbaa !35
  %528 = load i32, ptr %18, align 8, !tbaa !32
  %529 = and i32 %528, %508
  %530 = zext i32 %529 to i64
  %531 = getelementptr inbounds nuw [2 x i8], ptr %527, i64 %530
  store i16 %526, ptr %531, align 2, !tbaa !60
  %532 = trunc i32 %508 to i16
  store i16 %532, ptr %525, align 2, !tbaa !60
  %533 = add i32 %507, -1
  store i32 %533, ptr %10, align 4, !tbaa !74
  %534 = add nuw i32 %508, 1
  %535 = add i32 %533, %449
  %536 = icmp ult i32 %535, 3
  br i1 %536, label %.loopexit, label %.mv.ph, !llvm.loop !89

.loopexit:                                        ; preds = %.mv.ph, %513, %.mv.ph.mv.fast, %483, %453
  %537 = icmp ult i32 %449, 262
  br i1 %537, label %538, label %.loopexit46

538:                                              ; preds = %.loopexit
  %539 = load ptr, ptr %0, align 8, !tbaa !19
  %540 = getelementptr inbounds nuw i8, ptr %539, i64 8
  %541 = load i32, ptr %540, align 8, !tbaa !79
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %.loopexit46, label %.mv.ph3, !llvm.loop !90

.loopexit46:                                      ; preds = %538, %.loopexit, %402, %254, %.loopexit.mv.fast, %144
  %543 = phi i32 [ %191, %254 ], [ %145, %144 ], [ %191, %.loopexit.mv.fast ], [ %403, %402 ], [ %449, %.loopexit ], [ %449, %538 ]
  %544 = load i64, ptr %19, align 8, !tbaa !38
  %545 = load i64, ptr %5, align 8, !tbaa !59
  %546 = icmp ult i64 %544, %545
  br i1 %546, label %547, label %582

547:                                              ; preds = %.loopexit46
  %548 = load i32, ptr %6, align 4, !tbaa !71
  %549 = zext i32 %548 to i64
  %550 = zext i32 %543 to i64
  %551 = add nuw nsw i64 %549, %550
  %552 = icmp ult i64 %544, %551
  br i1 %552, label %553, label %563

553:                                              ; preds = %547
  %554 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %545, i64 %551), !nosanitize !44
  %555 = extractvalue { i64, i1 } %554, 1, !nosanitize !44
  br i1 %555, label %556, label %557, !prof !45, !nosanitize !44

556:                                              ; preds = %553
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

557:                                              ; preds = %553
  %558 = extractvalue { i64, i1 } %554, 0, !nosanitize !44
  %559 = tail call i64 @llvm.umin.i64(i64 %558, i64 258)
  %560 = load ptr, ptr %7, align 8, !tbaa !34
  %561 = getelementptr inbounds nuw i8, ptr %560, i64 %551
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %561, i8 0, i64 %559, i1 false)
  %562 = add nuw nsw i64 %559, %551
  br label %579

563:                                              ; preds = %547
  %564 = add nuw nsw i64 %551, 258
  %565 = icmp ult i64 %544, %564
  br i1 %565, label %566, label %582

566:                                              ; preds = %563
  %567 = sub nuw nsw i64 %564, %544
  %568 = sub i64 %545, %544
  %569 = tail call i64 @llvm.umin.i64(i64 %567, i64 %568)
  %570 = load ptr, ptr %7, align 8, !tbaa !34
  %571 = getelementptr inbounds nuw i8, ptr %570, i64 %544
  %572 = and i64 %569, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %571, i8 0, i64 %572, i1 false)
  %573 = load i64, ptr %19, align 8, !tbaa !38
  %574 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %573, i64 %569), !nosanitize !44
  %575 = extractvalue { i64, i1 } %574, 1, !nosanitize !44
  br i1 %575, label %576, label %577, !prof !45, !nosanitize !44

576:                                              ; preds = %566
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

577:                                              ; preds = %566
  %578 = extractvalue { i64, i1 } %574, 0, !nosanitize !44
  br label %579

579:                                              ; preds = %577, %557
  %580 = phi i64 [ %562, %557 ], [ %578, %577 ]
  store i64 %580, ptr %19, align 8, !tbaa !38
  %581 = load i32, ptr %3, align 4, !tbaa !73
  br label %582

582:                                              ; preds = %579, %563, %.loopexit46
  %583 = phi i32 [ %543, %.loopexit46 ], [ %543, %563 ], [ %581, %579 ]
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %585, label %587

585:                                              ; preds = %582
  %586 = icmp eq i32 %1, 0
  br i1 %586, label %.loopexit67, label %702

587:                                              ; preds = %582, %25
  store i32 0, ptr %20, align 8, !tbaa !76
  %588 = load ptr, ptr %7, align 8, !tbaa !34
  %589 = load i32, ptr %6, align 4, !tbaa !71
  %590 = zext i32 %589 to i64
  %591 = getelementptr inbounds nuw i8, ptr %588, i64 %590
  %592 = load i8, ptr %591, align 1, !tbaa !5
  %593 = load i32, ptr %22, align 4, !tbaa !144
  %594 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %593, i32 1), !nosanitize !44
  %595 = extractvalue { i32, i1 } %594, 1, !nosanitize !44
  br i1 %595, label %596, label %597, !prof !45, !nosanitize !44

596:                                              ; preds = %587
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

597:                                              ; preds = %587
  %598 = extractvalue { i32, i1 } %594, 0, !nosanitize !44
  %599 = load ptr, ptr %21, align 8, !tbaa !43
  store i32 %598, ptr %22, align 4, !tbaa !144
  %600 = zext i32 %593 to i64
  %601 = getelementptr inbounds nuw i8, ptr %599, i64 %600
  store i8 0, ptr %601, align 1, !tbaa !5
  %602 = load i32, ptr %22, align 4, !tbaa !144
  %603 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %602, i32 1), !nosanitize !44
  %604 = extractvalue { i32, i1 } %603, 1, !nosanitize !44
  br i1 %604, label %605, label %606, !prof !45, !nosanitize !44

605:                                              ; preds = %597
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

606:                                              ; preds = %597
  %607 = extractvalue { i32, i1 } %603, 0, !nosanitize !44
  %608 = load ptr, ptr %21, align 8, !tbaa !43
  store i32 %607, ptr %22, align 4, !tbaa !144
  %609 = zext i32 %602 to i64
  %610 = getelementptr inbounds nuw i8, ptr %608, i64 %609
  store i8 0, ptr %610, align 1, !tbaa !5
  %611 = load i32, ptr %22, align 4, !tbaa !144
  %612 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %611, i32 1), !nosanitize !44
  %613 = extractvalue { i32, i1 } %612, 1, !nosanitize !44
  br i1 %613, label %614, label %615, !prof !45, !nosanitize !44

614:                                              ; preds = %606
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

615:                                              ; preds = %606
  %616 = extractvalue { i32, i1 } %612, 0, !nosanitize !44
  %617 = load ptr, ptr %21, align 8, !tbaa !43
  store i32 %616, ptr %22, align 4, !tbaa !144
  %618 = zext i32 %611 to i64
  %619 = getelementptr inbounds nuw i8, ptr %617, i64 %618
  store i8 %592, ptr %619, align 1, !tbaa !5
  %620 = zext i8 %592 to i64
  %621 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %620
  %622 = load i16, ptr %621, align 4, !tbaa !5
  %623 = add i16 %622, 1
  store i16 %623, ptr %621, align 4, !tbaa !5
  %624 = load i32, ptr %22, align 4, !tbaa !144
  %625 = load i32, ptr %24, align 8, !tbaa !46
  %626 = icmp eq i32 %624, %625
  %627 = load i32, ptr %3, align 4, !tbaa !73
  %628 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %627, i32 1), !nosanitize !44
  %629 = extractvalue { i32, i1 } %628, 1, !nosanitize !44
  br i1 %629, label %.loopexit66, label %630, !prof !45, !nosanitize !44

.loopexit66:                                      ; preds = %645, %615, %780, %711
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

630:                                              ; preds = %615
  %631 = extractvalue { i32, i1 } %628, 0, !nosanitize !44
  store i32 %631, ptr %3, align 4, !tbaa !73
  %632 = load i32, ptr %6, align 4, !tbaa !71
  %633 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %632, i32 1), !nosanitize !44
  %634 = extractvalue { i32, i1 } %633, 1, !nosanitize !44
  br i1 %634, label %635, label %636, !prof !45, !nosanitize !44

635:                                              ; preds = %630
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

636:                                              ; preds = %630
  %637 = extractvalue { i32, i1 } %633, 0, !nosanitize !44
  store i32 %637, ptr %6, align 4, !tbaa !71
  br i1 %626, label %638, label %.backedge

638:                                              ; preds = %636
  %639 = load i64, ptr %9, align 8, !tbaa !72
  %640 = icmp sgt i64 %639, -1
  br i1 %640, label %641, label %645

641:                                              ; preds = %638
  %642 = load ptr, ptr %7, align 8, !tbaa !34
  %643 = and i64 %639, 4294967295
  %644 = getelementptr inbounds nuw i8, ptr %642, i64 %643
  br label %645

645:                                              ; preds = %641, %638
  %646 = phi ptr [ %644, %641 ], [ null, %638 ]
  %647 = zext i32 %637 to i64
  %648 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %647, i64 %639), !nosanitize !44
  %649 = extractvalue { i64, i1 } %648, 1, !nosanitize !44
  br i1 %649, label %.loopexit66, label %650, !prof !45, !nosanitize !44

650:                                              ; preds = %645
  %651 = extractvalue { i64, i1 } %648, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %646, i64 noundef %651, i32 noundef 0) #11
  %652 = load i32, ptr %6, align 4, !tbaa !71
  %653 = zext i32 %652 to i64
  store i64 %653, ptr %9, align 8, !tbaa !72
  %654 = load ptr, ptr %0, align 8, !tbaa !19
  %655 = getelementptr inbounds nuw i8, ptr %654, i64 56
  %656 = load ptr, ptr %655, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %656) #11
  %657 = getelementptr inbounds nuw i8, ptr %656, i64 40
  %658 = load i64, ptr %657, align 8, !tbaa !55
  %659 = getelementptr inbounds nuw i8, ptr %654, i64 32
  %660 = load i32, ptr %659, align 8, !tbaa !109
  %661 = zext i32 %660 to i64
  %662 = tail call i64 @llvm.umin.i64(i64 %658, i64 %661)
  %663 = trunc nuw i64 %662 to i32
  %664 = icmp eq i64 %662, 0
  br i1 %664, label %697, label %665

665:                                              ; preds = %650
  %666 = getelementptr inbounds nuw i8, ptr %654, i64 24
  %667 = load ptr, ptr %666, align 8, !tbaa !108
  %668 = getelementptr inbounds nuw i8, ptr %656, i64 32
  %669 = load ptr, ptr %668, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %667, ptr align 1 %669, i64 %662, i1 false)
  %670 = load ptr, ptr %666, align 8, !tbaa !108
  %671 = getelementptr inbounds nuw i8, ptr %670, i64 %662
  store ptr %671, ptr %666, align 8, !tbaa !108
  %672 = load ptr, ptr %668, align 8, !tbaa !56
  %673 = getelementptr inbounds nuw i8, ptr %672, i64 %662
  store ptr %673, ptr %668, align 8, !tbaa !56
  %674 = getelementptr inbounds nuw i8, ptr %654, i64 40
  %675 = load i64, ptr %674, align 8, !tbaa !110
  %676 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %675, i64 %662), !nosanitize !44
  %677 = extractvalue { i64, i1 } %676, 1, !nosanitize !44
  br i1 %677, label %678, label %679, !prof !45, !nosanitize !44

678:                                              ; preds = %665
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

679:                                              ; preds = %665
  %680 = extractvalue { i64, i1 } %676, 0, !nosanitize !44
  store i64 %680, ptr %674, align 8, !tbaa !110
  %681 = load i32, ptr %659, align 8, !tbaa !109
  %682 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %681, i32 %663), !nosanitize !44
  %683 = extractvalue { i32, i1 } %682, 1, !nosanitize !44
  br i1 %683, label %684, label %685, !prof !45, !nosanitize !44

684:                                              ; preds = %679
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

685:                                              ; preds = %679
  %686 = extractvalue { i32, i1 } %682, 0, !nosanitize !44
  store i32 %686, ptr %659, align 8, !tbaa !109
  %687 = load i64, ptr %657, align 8, !tbaa !55
  %688 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %687, i64 %662), !nosanitize !44
  %689 = extractvalue { i64, i1 } %688, 1, !nosanitize !44
  br i1 %689, label %690, label %691, !prof !45, !nosanitize !44

690:                                              ; preds = %685
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

691:                                              ; preds = %685
  %692 = extractvalue { i64, i1 } %688, 0, !nosanitize !44
  store i64 %692, ptr %657, align 8, !tbaa !55
  %693 = icmp eq i64 %692, 0
  br i1 %693, label %694, label %697

694:                                              ; preds = %691
  %695 = getelementptr inbounds nuw i8, ptr %656, i64 16
  %696 = load ptr, ptr %695, align 8, !tbaa !40
  store ptr %696, ptr %668, align 8, !tbaa !56
  br label %697

697:                                              ; preds = %694, %691, %650
  %698 = load ptr, ptr %0, align 8, !tbaa !19
  %699 = getelementptr inbounds nuw i8, ptr %698, i64 32
  %700 = load i32, ptr %699, align 8, !tbaa !109
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %.loopexit67, label %.backedge

.backedge:                                        ; preds = %697, %636
  br label %25

702:                                              ; preds = %585
  store i32 0, ptr %10, align 4, !tbaa !74
  %703 = icmp eq i32 %1, 4
  br i1 %703, label %704, label %770

704:                                              ; preds = %702
  %705 = load i64, ptr %9, align 8, !tbaa !72
  %706 = icmp sgt i64 %705, -1
  br i1 %706, label %707, label %711

707:                                              ; preds = %704
  %708 = load ptr, ptr %7, align 8, !tbaa !34
  %709 = and i64 %705, 4294967295
  %710 = getelementptr inbounds nuw i8, ptr %708, i64 %709
  br label %711

711:                                              ; preds = %707, %704
  %712 = phi ptr [ %710, %707 ], [ null, %704 ]
  %713 = load i32, ptr %6, align 4, !tbaa !71
  %714 = zext i32 %713 to i64
  %715 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %714, i64 %705), !nosanitize !44
  %716 = extractvalue { i64, i1 } %715, 1, !nosanitize !44
  br i1 %716, label %.loopexit66, label %717, !prof !45, !nosanitize !44

717:                                              ; preds = %711
  %718 = extractvalue { i64, i1 } %715, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %712, i64 noundef %718, i32 noundef 1) #11
  %719 = load i32, ptr %6, align 4, !tbaa !71
  %720 = zext i32 %719 to i64
  store i64 %720, ptr %9, align 8, !tbaa !72
  %721 = load ptr, ptr %0, align 8, !tbaa !19
  %722 = getelementptr inbounds nuw i8, ptr %721, i64 56
  %723 = load ptr, ptr %722, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %723) #11
  %724 = getelementptr inbounds nuw i8, ptr %723, i64 40
  %725 = load i64, ptr %724, align 8, !tbaa !55
  %726 = getelementptr inbounds nuw i8, ptr %721, i64 32
  %727 = load i32, ptr %726, align 8, !tbaa !109
  %728 = zext i32 %727 to i64
  %729 = tail call i64 @llvm.umin.i64(i64 %725, i64 %728)
  %730 = trunc nuw i64 %729 to i32
  %731 = icmp eq i64 %729, 0
  br i1 %731, label %764, label %732

732:                                              ; preds = %717
  %733 = getelementptr inbounds nuw i8, ptr %721, i64 24
  %734 = load ptr, ptr %733, align 8, !tbaa !108
  %735 = getelementptr inbounds nuw i8, ptr %723, i64 32
  %736 = load ptr, ptr %735, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %734, ptr align 1 %736, i64 %729, i1 false)
  %737 = load ptr, ptr %733, align 8, !tbaa !108
  %738 = getelementptr inbounds nuw i8, ptr %737, i64 %729
  store ptr %738, ptr %733, align 8, !tbaa !108
  %739 = load ptr, ptr %735, align 8, !tbaa !56
  %740 = getelementptr inbounds nuw i8, ptr %739, i64 %729
  store ptr %740, ptr %735, align 8, !tbaa !56
  %741 = getelementptr inbounds nuw i8, ptr %721, i64 40
  %742 = load i64, ptr %741, align 8, !tbaa !110
  %743 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %742, i64 %729), !nosanitize !44
  %744 = extractvalue { i64, i1 } %743, 1, !nosanitize !44
  br i1 %744, label %745, label %746, !prof !45, !nosanitize !44

745:                                              ; preds = %732
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

746:                                              ; preds = %732
  %747 = extractvalue { i64, i1 } %743, 0, !nosanitize !44
  store i64 %747, ptr %741, align 8, !tbaa !110
  %748 = load i32, ptr %726, align 8, !tbaa !109
  %749 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %748, i32 %730), !nosanitize !44
  %750 = extractvalue { i32, i1 } %749, 1, !nosanitize !44
  br i1 %750, label %751, label %752, !prof !45, !nosanitize !44

751:                                              ; preds = %746
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

752:                                              ; preds = %746
  %753 = extractvalue { i32, i1 } %749, 0, !nosanitize !44
  store i32 %753, ptr %726, align 8, !tbaa !109
  %754 = load i64, ptr %724, align 8, !tbaa !55
  %755 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %754, i64 %729), !nosanitize !44
  %756 = extractvalue { i64, i1 } %755, 1, !nosanitize !44
  br i1 %756, label %757, label %758, !prof !45, !nosanitize !44

757:                                              ; preds = %752
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

758:                                              ; preds = %752
  %759 = extractvalue { i64, i1 } %755, 0, !nosanitize !44
  store i64 %759, ptr %724, align 8, !tbaa !55
  %760 = icmp eq i64 %759, 0
  br i1 %760, label %761, label %764

761:                                              ; preds = %758
  %762 = getelementptr inbounds nuw i8, ptr %723, i64 16
  %763 = load ptr, ptr %762, align 8, !tbaa !40
  store ptr %763, ptr %735, align 8, !tbaa !56
  br label %764

764:                                              ; preds = %761, %758, %717
  %765 = load ptr, ptr %0, align 8, !tbaa !19
  %766 = getelementptr inbounds nuw i8, ptr %765, i64 32
  %767 = load i32, ptr %766, align 8, !tbaa !109
  %768 = icmp eq i32 %767, 0
  %769 = select i1 %768, i32 2, i32 3
  br label %.loopexit67

770:                                              ; preds = %702
  %771 = load i32, ptr %22, align 4, !tbaa !144
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %838, label %773

773:                                              ; preds = %770
  %774 = load i64, ptr %9, align 8, !tbaa !72
  %775 = icmp sgt i64 %774, -1
  br i1 %775, label %776, label %780

776:                                              ; preds = %773
  %777 = load ptr, ptr %7, align 8, !tbaa !34
  %778 = and i64 %774, 4294967295
  %779 = getelementptr inbounds nuw i8, ptr %777, i64 %778
  br label %780

780:                                              ; preds = %776, %773
  %781 = phi ptr [ %779, %776 ], [ null, %773 ]
  %782 = load i32, ptr %6, align 4, !tbaa !71
  %783 = zext i32 %782 to i64
  %784 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %783, i64 %774), !nosanitize !44
  %785 = extractvalue { i64, i1 } %784, 1, !nosanitize !44
  br i1 %785, label %.loopexit66, label %786, !prof !45, !nosanitize !44

786:                                              ; preds = %780
  %787 = extractvalue { i64, i1 } %784, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %781, i64 noundef %787, i32 noundef 0) #11
  %788 = load i32, ptr %6, align 4, !tbaa !71
  %789 = zext i32 %788 to i64
  store i64 %789, ptr %9, align 8, !tbaa !72
  %790 = load ptr, ptr %0, align 8, !tbaa !19
  %791 = getelementptr inbounds nuw i8, ptr %790, i64 56
  %792 = load ptr, ptr %791, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %792) #11
  %793 = getelementptr inbounds nuw i8, ptr %792, i64 40
  %794 = load i64, ptr %793, align 8, !tbaa !55
  %795 = getelementptr inbounds nuw i8, ptr %790, i64 32
  %796 = load i32, ptr %795, align 8, !tbaa !109
  %797 = zext i32 %796 to i64
  %798 = tail call i64 @llvm.umin.i64(i64 %794, i64 %797)
  %799 = trunc nuw i64 %798 to i32
  %800 = icmp eq i64 %798, 0
  br i1 %800, label %833, label %801

801:                                              ; preds = %786
  %802 = getelementptr inbounds nuw i8, ptr %790, i64 24
  %803 = load ptr, ptr %802, align 8, !tbaa !108
  %804 = getelementptr inbounds nuw i8, ptr %792, i64 32
  %805 = load ptr, ptr %804, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %803, ptr align 1 %805, i64 %798, i1 false)
  %806 = load ptr, ptr %802, align 8, !tbaa !108
  %807 = getelementptr inbounds nuw i8, ptr %806, i64 %798
  store ptr %807, ptr %802, align 8, !tbaa !108
  %808 = load ptr, ptr %804, align 8, !tbaa !56
  %809 = getelementptr inbounds nuw i8, ptr %808, i64 %798
  store ptr %809, ptr %804, align 8, !tbaa !56
  %810 = getelementptr inbounds nuw i8, ptr %790, i64 40
  %811 = load i64, ptr %810, align 8, !tbaa !110
  %812 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %811, i64 %798), !nosanitize !44
  %813 = extractvalue { i64, i1 } %812, 1, !nosanitize !44
  br i1 %813, label %814, label %815, !prof !45, !nosanitize !44

814:                                              ; preds = %801
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

815:                                              ; preds = %801
  %816 = extractvalue { i64, i1 } %812, 0, !nosanitize !44
  store i64 %816, ptr %810, align 8, !tbaa !110
  %817 = load i32, ptr %795, align 8, !tbaa !109
  %818 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %817, i32 %799), !nosanitize !44
  %819 = extractvalue { i32, i1 } %818, 1, !nosanitize !44
  br i1 %819, label %820, label %821, !prof !45, !nosanitize !44

820:                                              ; preds = %815
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

821:                                              ; preds = %815
  %822 = extractvalue { i32, i1 } %818, 0, !nosanitize !44
  store i32 %822, ptr %795, align 8, !tbaa !109
  %823 = load i64, ptr %793, align 8, !tbaa !55
  %824 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %823, i64 %798), !nosanitize !44
  %825 = extractvalue { i64, i1 } %824, 1, !nosanitize !44
  br i1 %825, label %826, label %827, !prof !45, !nosanitize !44

826:                                              ; preds = %821
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

827:                                              ; preds = %821
  %828 = extractvalue { i64, i1 } %824, 0, !nosanitize !44
  store i64 %828, ptr %793, align 8, !tbaa !55
  %829 = icmp eq i64 %828, 0
  br i1 %829, label %830, label %833

830:                                              ; preds = %827
  %831 = getelementptr inbounds nuw i8, ptr %792, i64 16
  %832 = load ptr, ptr %831, align 8, !tbaa !40
  store ptr %832, ptr %804, align 8, !tbaa !56
  br label %833

833:                                              ; preds = %830, %827, %786
  %834 = load ptr, ptr %0, align 8, !tbaa !19
  %835 = getelementptr inbounds nuw i8, ptr %834, i64 32
  %836 = load i32, ptr %835, align 8, !tbaa !109
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %.loopexit67, label %838

838:                                              ; preds = %833, %770
  br label %.loopexit67

.loopexit67:                                      ; preds = %697, %838, %833, %764, %585
  %839 = phi i32 [ 1, %838 ], [ 0, %585 ], [ %769, %764 ], [ 0, %833 ], [ 0, %697 ]
  ret i32 %839
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
  %.pre.pre128.pre = load ptr, ptr %8, align 8, !tbaa !34
  br label %595

32:                                               ; preds = %27
  %33 = load i32, ptr %5, align 8, !tbaa !31
  %.fr = freeze i32 %33
  %34 = zext i32 %.fr to i64
  %mv.h1 = icmp sgt i32 %.fr, -1
  br i1 %mv.h1, label %.mv.ph3.mv.fast, label %.mv.ph3

.mv.ph3.mv.fast:                                  ; preds = %32, %258
  %35 = phi i32 [ %195, %258 ], [ %28, %32 ]
  %36 = load i64, ptr %6, align 8, !tbaa !59
  %37 = zext nneg i32 %35 to i64
  %38 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %36, i64 %37), !nosanitize !44
  %39 = extractvalue { i64, i1 } %38, 1, !nosanitize !44
  br i1 %39, label %.loopexit45, label %40, !prof !45, !nosanitize !44

40:                                               ; preds = %.mv.ph3.mv.fast
  %41 = extractvalue { i64, i1 } %38, 0, !nosanitize !44
  %42 = load i32, ptr %7, align 4, !tbaa !71
  %43 = zext i32 %42 to i64
  %44 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %41, i64 %43), !nosanitize !44
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !44
  br i1 %45, label %.loopexit46, label %46, !prof !45, !nosanitize !44

46:                                               ; preds = %40
  %47 = extractvalue { i64, i1 } %44, 0, !nosanitize !44
  %48 = trunc i64 %47 to i32
  %49 = load i32, ptr %5, align 8, !tbaa !31
  %50 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %49, i32 262), !nosanitize !44
  %51 = extractvalue { i32, i1 } %50, 1, !nosanitize !44
  br i1 %51, label %.loopexit47, label %52, !prof !45, !nosanitize !44

52:                                               ; preds = %46
  %53 = extractvalue { i32, i1 } %50, 0, !nosanitize !44
  %54 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.fr, i32 %53), !nosanitize !44
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !44
  br i1 %55, label %.loopexit48, label %56, !prof !45, !nosanitize !44

56:                                               ; preds = %52
  %57 = extractvalue { i32, i1 } %54, 0, !nosanitize !44
  %58 = icmp ult i32 %42, %57
  br i1 %58, label %148, label %59

59:                                               ; preds = %56
  %60 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr, i32 %48), !nosanitize !44
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !44
  br i1 %61, label %.loopexit49, label %62, !prof !45, !nosanitize !44

62:                                               ; preds = %59
  %63 = extractvalue { i32, i1 } %60, 0, !nosanitize !44
  %64 = load ptr, ptr %8, align 8, !tbaa !34
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 %34
  %66 = zext i32 %63 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %65, i64 %66, i1 false)
  %67 = load i32, ptr %9, align 8, !tbaa !81
  %68 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %67, i32 %.fr), !nosanitize !44
  %69 = extractvalue { i32, i1 } %68, 1, !nosanitize !44
  br i1 %69, label %.loopexit50, label %70, !prof !45, !nosanitize !44

70:                                               ; preds = %62
  %71 = extractvalue { i32, i1 } %68, 0, !nosanitize !44
  store i32 %71, ptr %9, align 8, !tbaa !81
  %72 = load i32, ptr %7, align 4, !tbaa !71
  %73 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %72, i32 %.fr), !nosanitize !44
  %74 = extractvalue { i32, i1 } %73, 1, !nosanitize !44
  br i1 %74, label %.loopexit51, label %75, !prof !45, !nosanitize !44

75:                                               ; preds = %70
  %76 = extractvalue { i32, i1 } %73, 0, !nosanitize !44
  store i32 %76, ptr %7, align 4, !tbaa !71
  %77 = load i64, ptr %10, align 8, !tbaa !72
  %78 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %77, i64 %34), !nosanitize !44
  %79 = extractvalue { i64, i1 } %78, 1, !nosanitize !44
  br i1 %79, label %.loopexit51, label %80, !prof !45, !nosanitize !44

80:                                               ; preds = %75
  %81 = extractvalue { i64, i1 } %78, 0, !nosanitize !44
  store i64 %81, ptr %10, align 8, !tbaa !72
  %82 = load i32, ptr %11, align 4, !tbaa !74
  %83 = icmp ugt i32 %82, %76
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 %76, ptr %11, align 4, !tbaa !74
  br label %85

85:                                               ; preds = %84, %80
  %86 = load i32, ptr %5, align 8, !tbaa !31
  %87 = load i32, ptr %12, align 4, !tbaa !36
  %88 = load ptr, ptr %13, align 8, !tbaa !37
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds nuw [2 x i8], ptr %88, i64 %89
  %91 = add i32 %87, -1
  %92 = tail call i32 @llvm.umin.i32(i32 %87, i32 %91)
  %min.iters.check237 = icmp ult i32 %92, 8
  br i1 %min.iters.check237, label %scalar.ph236.preheader, label %vector.ph238

vector.ph238:                                     ; preds = %85
  %umin235 = zext i32 %92 to i64
  %93 = add nuw nsw i64 %umin235, 1
  %n.mod.vf239 = and i64 %93, 7
  %94 = icmp eq i64 %n.mod.vf239, 0
  %95 = select i1 %94, i64 8, i64 %n.mod.vf239
  %n.vec240 = sub nsw i64 %93, %95
  %96 = mul nsw i64 %n.vec240, -2
  %97 = getelementptr i8, ptr %90, i64 %96
  %.cast241 = trunc i64 %n.vec240 to i32
  %98 = sub i32 %87, %.cast241
  %broadcast.splatinsert242 = insertelement <8 x i32> poison, i32 %86, i64 0
  %99 = shufflevector <8 x i32> %broadcast.splatinsert242, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph238
  %index245 = phi i64 [ 0, %vector.ph238 ], [ %index.next251, %vector.body244 ]
  %offset.idx246 = mul i64 %index245, -2
  %next.gep247 = getelementptr i8, ptr %90, i64 %offset.idx246
  %100 = getelementptr inbounds i8, ptr %next.gep247, i64 -16
  %wide.load248 = load <8 x i16>, ptr %100, align 2, !tbaa !60
  %101 = zext <8 x i16> %wide.load248 to <8 x i32>
  %102 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %101, <8 x i32> %99)
  %reverse250 = trunc nuw <8 x i32> %102 to <8 x i16>
  store <8 x i16> %reverse250, ptr %100, align 2, !tbaa !60
  %index.next251 = add nuw i64 %index245, 8
  %103 = icmp eq i64 %index.next251, %n.vec240
  br i1 %103, label %scalar.ph236.preheader, label %vector.body244, !llvm.loop !145

scalar.ph236.preheader:                           ; preds = %vector.body244, %85
  %.ph297 = phi ptr [ %90, %85 ], [ %97, %vector.body244 ]
  %.ph298 = phi i32 [ %87, %85 ], [ %98, %vector.body244 ]
  br label %scalar.ph236

scalar.ph236:                                     ; preds = %scalar.ph236.preheader, %113
  %104 = phi ptr [ %106, %113 ], [ %.ph297, %scalar.ph236.preheader ]
  %105 = phi i32 [ %114, %113 ], [ %.ph298, %scalar.ph236.preheader ]
  %106 = getelementptr inbounds i8, ptr %104, i64 -2
  %107 = load i16, ptr %106, align 2, !tbaa !60
  %108 = zext i16 %107 to i32
  %109 = tail call i32 @llvm.usub.sat.i32(i32 %108, i32 %86)
  %110 = trunc nuw i32 %109 to i16
  store i16 %110, ptr %106, align 2, !tbaa !60
  %111 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %105, i32 1), !nosanitize !44
  %112 = extractvalue { i32, i1 } %111, 1, !nosanitize !44
  br i1 %112, label %.loopexit40, label %113, !prof !45, !nosanitize !44

113:                                              ; preds = %scalar.ph236
  %114 = extractvalue { i32, i1 } %111, 0, !nosanitize !44
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %scalar.ph236, !llvm.loop !146

116:                                              ; preds = %113
  %117 = load ptr, ptr %14, align 8, !tbaa !35
  %118 = zext i32 %86 to i64
  %119 = getelementptr inbounds nuw [2 x i8], ptr %117, i64 %118
  %120 = add i32 %86, -1
  %121 = tail call i32 @llvm.umin.i32(i32 %86, i32 %120)
  %min.iters.check = icmp ult i32 %121, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %116
  %umin = zext i32 %121 to i64
  %122 = add nuw nsw i64 %umin, 1
  %n.mod.vf = and i64 %122, 7
  %123 = icmp eq i64 %n.mod.vf, 0
  %124 = select i1 %123, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %122, %124
  %125 = mul nsw i64 %n.vec, -2
  %126 = getelementptr i8, ptr %119, i64 %125
  %.cast = trunc i64 %n.vec to i32
  %127 = sub i32 %86, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %86, i64 0
  %128 = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %119, i64 %offset.idx
  %129 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.load = load <8 x i16>, ptr %129, align 2, !tbaa !60
  %130 = zext <8 x i16> %wide.load to <8 x i32>
  %131 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %130, <8 x i32> %128)
  %reverse233 = trunc nuw <8 x i32> %131 to <8 x i16>
  store <8 x i16> %reverse233, ptr %129, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %132 = icmp eq i64 %index.next, %n.vec
  br i1 %132, label %scalar.ph.preheader, label %vector.body, !llvm.loop !147

scalar.ph.preheader:                              ; preds = %vector.body, %116
  %.ph = phi ptr [ %119, %116 ], [ %126, %vector.body ]
  %.ph296 = phi i32 [ %86, %116 ], [ %127, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %142
  %133 = phi ptr [ %135, %142 ], [ %.ph, %scalar.ph.preheader ]
  %134 = phi i32 [ %143, %142 ], [ %.ph296, %scalar.ph.preheader ]
  %135 = getelementptr inbounds i8, ptr %133, i64 -2
  %136 = load i16, ptr %135, align 2, !tbaa !60
  %137 = zext i16 %136 to i32
  %138 = tail call i32 @llvm.usub.sat.i32(i32 %137, i32 %86)
  %139 = trunc nuw i32 %138 to i16
  store i16 %139, ptr %135, align 2, !tbaa !60
  %140 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %134, i32 1), !nosanitize !44
  %141 = extractvalue { i32, i1 } %140, 1, !nosanitize !44
  br i1 %141, label %.loopexit39, label %142, !prof !45, !nosanitize !44

142:                                              ; preds = %scalar.ph
  %143 = extractvalue { i32, i1 } %140, 0, !nosanitize !44
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %scalar.ph, !llvm.loop !148

145:                                              ; preds = %142
  store i32 1, ptr %15, align 8, !tbaa !61
  %146 = add i32 %.fr, %48
  %147 = load i32, ptr %3, align 4, !tbaa !73
  br label %148

148:                                              ; preds = %145, %56
  %149 = phi i32 [ %147, %145 ], [ %35, %56 ]
  %150 = phi i32 [ %76, %145 ], [ %42, %56 ]
  %151 = phi i32 [ %146, %145 ], [ %48, %56 ]
  %152 = load ptr, ptr %0, align 8, !tbaa !19
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %154 = load i32, ptr %153, align 8, !tbaa !79
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %.loopexit52, label %156

156:                                              ; preds = %148
  %157 = load ptr, ptr %8, align 8, !tbaa !34
  %158 = zext i32 %150 to i64
  %159 = getelementptr inbounds nuw i8, ptr %157, i64 %158
  %160 = zext i32 %149 to i64
  %161 = getelementptr inbounds nuw i8, ptr %159, i64 %160
  %162 = tail call i32 @llvm.umin.i32(i32 %154, i32 %151)
  %163 = icmp eq i32 %151, 0
  br i1 %163, label %190, label %164

164:                                              ; preds = %156
  %165 = sub i32 %154, %162
  store i32 %165, ptr %153, align 8, !tbaa !79
  %166 = load ptr, ptr %152, align 8, !tbaa !80
  %167 = zext i32 %162 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %161, ptr align 1 %166, i64 %167, i1 false)
  %168 = getelementptr inbounds nuw i8, ptr %152, i64 56
  %169 = load ptr, ptr %168, align 8, !tbaa !18
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 48
  %171 = load i32, ptr %170, align 8, !tbaa !29
  switch i32 %171, label %180 [
    i32 1, label %176
    i32 2, label %172
  ]

172:                                              ; preds = %164
  %173 = getelementptr inbounds nuw i8, ptr %152, i64 96
  %174 = load i64, ptr %173, align 8, !tbaa !57
  %175 = tail call i64 @crc32(i64 noundef %174, ptr noundef %161, i32 noundef %162) #11
  store i64 %175, ptr %173, align 8, !tbaa !57
  br label %180

176:                                              ; preds = %164
  %177 = getelementptr inbounds nuw i8, ptr %152, i64 96
  %178 = load i64, ptr %177, align 8, !tbaa !57
  %179 = tail call i64 @adler32(i64 noundef %178, ptr noundef %161, i32 noundef %162) #11
  store i64 %179, ptr %177, align 8, !tbaa !57
  br label %180

180:                                              ; preds = %176, %172, %164
  %181 = load ptr, ptr %152, align 8, !tbaa !80
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 %167
  store ptr %182, ptr %152, align 8, !tbaa !80
  %183 = getelementptr inbounds nuw i8, ptr %152, i64 16
  %184 = load i64, ptr %183, align 8, !tbaa !53
  %185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 %167), !nosanitize !44
  %186 = extractvalue { i64, i1 } %185, 1, !nosanitize !44
  br i1 %186, label %.loopexit53, label %187, !prof !45, !nosanitize !44

187:                                              ; preds = %180
  %188 = extractvalue { i64, i1 } %185, 0, !nosanitize !44
  store i64 %188, ptr %183, align 8, !tbaa !53
  %189 = load i32, ptr %3, align 4, !tbaa !73
  br label %190

190:                                              ; preds = %187, %156
  %191 = phi i32 [ %149, %156 ], [ %189, %187 ]
  %192 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %191, i32 %162), !nosanitize !44
  %193 = extractvalue { i32, i1 } %192, 1, !nosanitize !44
  br i1 %193, label %.loopexit54, label %194, !prof !45, !nosanitize !44

194:                                              ; preds = %190
  %195 = extractvalue { i32, i1 } %192, 0, !nosanitize !44
  store i32 %195, ptr %3, align 4, !tbaa !73
  %196 = load i32, ptr %11, align 4, !tbaa !74
  %197 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %195, i32 %196), !nosanitize !44
  %198 = extractvalue { i32, i1 } %197, 1, !nosanitize !44
  br i1 %198, label %.loopexit55, label %199, !prof !45, !nosanitize !44

199:                                              ; preds = %194
  %200 = extractvalue { i32, i1 } %197, 0, !nosanitize !44
  %201 = icmp ugt i32 %200, 2
  br i1 %201, label %202, label %.loopexit.mv.fast

202:                                              ; preds = %199
  %203 = load i32, ptr %7, align 4, !tbaa !71
  %.fr36 = freeze i32 %203
  %204 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr36, i32 %196), !nosanitize !44
  %205 = extractvalue { i32, i1 } %204, 0, !nosanitize !44
  %206 = extractvalue { i32, i1 } %204, 1, !nosanitize !44
  br i1 %206, label %.loopexit56, label %207, !prof !45, !nosanitize !44

207:                                              ; preds = %202
  %208 = load ptr, ptr %8, align 8, !tbaa !34
  %209 = zext i32 %205 to i64
  %210 = getelementptr inbounds nuw i8, ptr %208, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !5
  %212 = zext i8 %211 to i32
  store i32 %212, ptr %16, align 8, !tbaa !78
  %213 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %205, i32 1), !nosanitize !44
  %214 = extractvalue { i32, i1 } %213, 1, !nosanitize !44
  br i1 %214, label %.loopexit57, label %215, !prof !45, !nosanitize !44

215:                                              ; preds = %207
  %216 = extractvalue { i32, i1 } %213, 0, !nosanitize !44
  %217 = load i32, ptr %17, align 8, !tbaa !52
  %218 = shl i32 %212, %217
  %219 = zext i32 %216 to i64
  %220 = getelementptr inbounds nuw i8, ptr %208, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !5
  %222 = zext i8 %221 to i32
  %223 = xor i32 %218, %222
  %224 = load i32, ptr %18, align 4, !tbaa !51
  %225 = and i32 %223, %224
  store i32 %225, ptr %16, align 8, !tbaa !78
  %mv.h.mv.fast = icmp sgt i32 %.fr36, -1
  br i1 %mv.h.mv.fast, label %.mv.ph.mv.fast.mv.fast, label %.mv.ph.mv.fast4

.mv.ph.mv.fast4:                                  ; preds = %215, %233
  %226 = phi i32 [ %242, %233 ], [ %225, %215 ]
  %227 = phi i32 [ %253, %233 ], [ %196, %215 ]
  %228 = phi i32 [ %254, %233 ], [ %205, %215 ]
  %229 = icmp eq i32 %227, 0
  br i1 %229, label %.loopexit.mv.fast, label %230

230:                                              ; preds = %.mv.ph.mv.fast4
  %231 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %228, i32 3), !nosanitize !44
  %232 = extractvalue { i32, i1 } %231, 1, !nosanitize !44
  br i1 %232, label %.loopexit38, label %233, !prof !45, !nosanitize !44

233:                                              ; preds = %230
  %234 = shl i32 %226, %217
  %235 = extractvalue { i32, i1 } %231, 0, !nosanitize !44
  %236 = add i32 %235, -1
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds nuw i8, ptr %208, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !5
  %240 = zext i8 %239 to i32
  %241 = xor i32 %234, %240
  %242 = and i32 %241, %224
  store i32 %242, ptr %16, align 8, !tbaa !78
  %243 = load ptr, ptr %13, align 8, !tbaa !37
  %244 = zext i32 %242 to i64
  %245 = getelementptr inbounds nuw [2 x i8], ptr %243, i64 %244
  %246 = load i16, ptr %245, align 2, !tbaa !60
  %247 = load ptr, ptr %14, align 8, !tbaa !35
  %248 = load i32, ptr %19, align 8, !tbaa !32
  %249 = and i32 %248, %228
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds nuw [2 x i8], ptr %247, i64 %250
  store i16 %246, ptr %251, align 2, !tbaa !60
  %252 = trunc i32 %228 to i16
  store i16 %252, ptr %245, align 2, !tbaa !60
  %253 = add i32 %227, -1
  store i32 %253, ptr %11, align 4, !tbaa !74
  %254 = add nuw i32 %228, 1
  %255 = add i32 %253, %195
  %256 = icmp ult i32 %255, 3
  br i1 %256, label %.loopexit.mv.fast, label %.mv.ph.mv.fast4, !llvm.loop !89

.loopexit.mv.fast:                                ; preds = %.mv.ph.mv.fast4, %233, %.mv.ph.mv.fast.mv.fast, %266, %199
  %257 = icmp ult i32 %195, 262
  br i1 %257, label %258, label %.loopexit52

258:                                              ; preds = %.loopexit.mv.fast
  %259 = load ptr, ptr %0, align 8, !tbaa !19
  %260 = getelementptr inbounds nuw i8, ptr %259, i64 8
  %261 = load i32, ptr %260, align 8, !tbaa !79
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %.loopexit52, label %.mv.ph3.mv.fast, !llvm.loop !90

.mv.ph.mv.fast.mv.fast:                           ; preds = %215, %266
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %266 ], [ %209, %215 ]
  %263 = phi i32 [ %275, %266 ], [ %225, %215 ]
  %264 = phi i32 [ %286, %266 ], [ %196, %215 ]
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %.loopexit.mv.fast, label %266

266:                                              ; preds = %.mv.ph.mv.fast.mv.fast
  %267 = shl i32 %263, %217
  %268 = trunc nuw i64 %indvars.iv124 to i32
  %269 = add nuw i64 %indvars.iv124, 2
  %270 = and i64 %269, 4294967295
  %271 = getelementptr inbounds nuw i8, ptr %208, i64 %270
  %272 = load i8, ptr %271, align 1, !tbaa !5
  %273 = zext i8 %272 to i32
  %274 = xor i32 %267, %273
  %275 = and i32 %274, %224
  store i32 %275, ptr %16, align 8, !tbaa !78
  %276 = load ptr, ptr %13, align 8, !tbaa !37
  %277 = zext i32 %275 to i64
  %278 = getelementptr inbounds nuw [2 x i8], ptr %276, i64 %277
  %279 = load i16, ptr %278, align 2, !tbaa !60
  %280 = load ptr, ptr %14, align 8, !tbaa !35
  %281 = load i32, ptr %19, align 8, !tbaa !32
  %282 = and i32 %281, %268
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds nuw [2 x i8], ptr %280, i64 %283
  store i16 %279, ptr %284, align 2, !tbaa !60
  %285 = trunc i64 %indvars.iv124 to i16
  store i16 %285, ptr %278, align 2, !tbaa !60
  %286 = add i32 %264, -1
  store i32 %286, ptr %11, align 4, !tbaa !74
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  %287 = add i32 %286, %195
  %288 = icmp ult i32 %287, 3
  br i1 %288, label %.loopexit.mv.fast, label %.mv.ph.mv.fast.mv.fast, !llvm.loop !89

.mv.ph3:                                          ; preds = %32, %542
  %289 = phi i32 [ %453, %542 ], [ %28, %32 ]
  %290 = load i64, ptr %6, align 8, !tbaa !59
  %291 = zext nneg i32 %289 to i64
  %292 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %290, i64 %291), !nosanitize !44
  %293 = extractvalue { i64, i1 } %292, 1, !nosanitize !44
  br i1 %293, label %.loopexit45, label %294, !prof !45, !nosanitize !44

.loopexit45:                                      ; preds = %.mv.ph3, %.mv.ph3.mv.fast
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

294:                                              ; preds = %.mv.ph3
  %295 = extractvalue { i64, i1 } %292, 0, !nosanitize !44
  %296 = load i32, ptr %7, align 4, !tbaa !71
  %297 = zext i32 %296 to i64
  %298 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %295, i64 %297), !nosanitize !44
  %299 = extractvalue { i64, i1 } %298, 1, !nosanitize !44
  br i1 %299, label %.loopexit46, label %300, !prof !45, !nosanitize !44

.loopexit46:                                      ; preds = %294, %40
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

300:                                              ; preds = %294
  %301 = extractvalue { i64, i1 } %298, 0, !nosanitize !44
  %302 = trunc i64 %301 to i32
  %303 = load i32, ptr %5, align 8, !tbaa !31
  %304 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %303, i32 262), !nosanitize !44
  %305 = extractvalue { i32, i1 } %304, 1, !nosanitize !44
  br i1 %305, label %.loopexit47, label %306, !prof !45, !nosanitize !44

.loopexit47:                                      ; preds = %300, %46
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

306:                                              ; preds = %300
  %307 = extractvalue { i32, i1 } %304, 0, !nosanitize !44
  %308 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.fr, i32 %307), !nosanitize !44
  %309 = extractvalue { i32, i1 } %308, 1, !nosanitize !44
  br i1 %309, label %.loopexit48, label %310, !prof !45, !nosanitize !44

.loopexit48:                                      ; preds = %306, %52
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

310:                                              ; preds = %306
  %311 = extractvalue { i32, i1 } %308, 0, !nosanitize !44
  %312 = icmp ult i32 %296, %311
  br i1 %312, label %406, label %313

313:                                              ; preds = %310
  %314 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr, i32 %302), !nosanitize !44
  %315 = extractvalue { i32, i1 } %314, 1, !nosanitize !44
  br i1 %315, label %.loopexit49, label %316, !prof !45, !nosanitize !44

.loopexit49:                                      ; preds = %313, %59
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

316:                                              ; preds = %313
  %317 = extractvalue { i32, i1 } %314, 0, !nosanitize !44
  %318 = load ptr, ptr %8, align 8, !tbaa !34
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 %34
  %320 = zext i32 %317 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %318, ptr nonnull align 1 %319, i64 %320, i1 false)
  %321 = load i32, ptr %9, align 8, !tbaa !81
  %322 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %321, i32 %.fr), !nosanitize !44
  %323 = extractvalue { i32, i1 } %322, 1, !nosanitize !44
  br i1 %323, label %.loopexit50, label %324, !prof !45, !nosanitize !44

.loopexit50:                                      ; preds = %316, %62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

324:                                              ; preds = %316
  %325 = extractvalue { i32, i1 } %322, 0, !nosanitize !44
  store i32 %325, ptr %9, align 8, !tbaa !81
  %326 = load i32, ptr %7, align 4, !tbaa !71
  %327 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %326, i32 %.fr), !nosanitize !44
  %328 = extractvalue { i32, i1 } %327, 1, !nosanitize !44
  br i1 %328, label %.loopexit51, label %329, !prof !45, !nosanitize !44

.loopexit51:                                      ; preds = %329, %324, %75, %70
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

329:                                              ; preds = %324
  %330 = extractvalue { i32, i1 } %327, 0, !nosanitize !44
  store i32 %330, ptr %7, align 4, !tbaa !71
  %331 = load i64, ptr %10, align 8, !tbaa !72
  %332 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %331, i64 %34), !nosanitize !44
  %333 = extractvalue { i64, i1 } %332, 1, !nosanitize !44
  br i1 %333, label %.loopexit51, label %334, !prof !45, !nosanitize !44

334:                                              ; preds = %329
  %335 = extractvalue { i64, i1 } %332, 0, !nosanitize !44
  store i64 %335, ptr %10, align 8, !tbaa !72
  %336 = load i32, ptr %11, align 4, !tbaa !74
  %337 = icmp ugt i32 %336, %330
  br i1 %337, label %338, label %339

338:                                              ; preds = %334
  store i32 %330, ptr %11, align 4, !tbaa !74
  br label %339

339:                                              ; preds = %338, %334
  %340 = load i32, ptr %5, align 8, !tbaa !31
  %341 = load i32, ptr %12, align 4, !tbaa !36
  %342 = load ptr, ptr %13, align 8, !tbaa !37
  %343 = zext i32 %341 to i64
  %344 = getelementptr inbounds nuw [2 x i8], ptr %342, i64 %343
  %345 = add i32 %341, -1
  %346 = tail call i32 @llvm.umin.i32(i32 %341, i32 %345)
  %min.iters.check277 = icmp ult i32 %346, 8
  br i1 %min.iters.check277, label %scalar.ph276.preheader, label %vector.ph278

vector.ph278:                                     ; preds = %339
  %umin275 = zext i32 %346 to i64
  %347 = add nuw nsw i64 %umin275, 1
  %n.mod.vf279 = and i64 %347, 7
  %348 = icmp eq i64 %n.mod.vf279, 0
  %349 = select i1 %348, i64 8, i64 %n.mod.vf279
  %n.vec280 = sub nsw i64 %347, %349
  %350 = mul nsw i64 %n.vec280, -2
  %351 = getelementptr i8, ptr %344, i64 %350
  %.cast281 = trunc i64 %n.vec280 to i32
  %352 = sub i32 %341, %.cast281
  %broadcast.splatinsert282 = insertelement <8 x i32> poison, i32 %340, i64 0
  %353 = shufflevector <8 x i32> %broadcast.splatinsert282, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph278
  %index285 = phi i64 [ 0, %vector.ph278 ], [ %index.next291, %vector.body284 ]
  %offset.idx286 = mul i64 %index285, -2
  %next.gep287 = getelementptr i8, ptr %344, i64 %offset.idx286
  %354 = getelementptr inbounds i8, ptr %next.gep287, i64 -16
  %wide.load288 = load <8 x i16>, ptr %354, align 2, !tbaa !60
  %355 = zext <8 x i16> %wide.load288 to <8 x i32>
  %356 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %355, <8 x i32> %353)
  %reverse290 = trunc nuw <8 x i32> %356 to <8 x i16>
  store <8 x i16> %reverse290, ptr %354, align 2, !tbaa !60
  %index.next291 = add nuw i64 %index285, 8
  %357 = icmp eq i64 %index.next291, %n.vec280
  br i1 %357, label %scalar.ph276.preheader, label %vector.body284, !llvm.loop !149

scalar.ph276.preheader:                           ; preds = %vector.body284, %339
  %.ph304 = phi ptr [ %344, %339 ], [ %351, %vector.body284 ]
  %.ph305 = phi i32 [ %341, %339 ], [ %352, %vector.body284 ]
  br label %scalar.ph276

scalar.ph276:                                     ; preds = %scalar.ph276.preheader, %367
  %358 = phi ptr [ %360, %367 ], [ %.ph304, %scalar.ph276.preheader ]
  %359 = phi i32 [ %368, %367 ], [ %.ph305, %scalar.ph276.preheader ]
  %360 = getelementptr inbounds i8, ptr %358, i64 -2
  %361 = load i16, ptr %360, align 2, !tbaa !60
  %362 = zext i16 %361 to i32
  %363 = tail call i32 @llvm.usub.sat.i32(i32 %362, i32 %340)
  %364 = trunc nuw i32 %363 to i16
  store i16 %364, ptr %360, align 2, !tbaa !60
  %365 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %359, i32 1), !nosanitize !44
  %366 = extractvalue { i32, i1 } %365, 1, !nosanitize !44
  br i1 %366, label %.loopexit40, label %367, !prof !45, !nosanitize !44

.loopexit40:                                      ; preds = %scalar.ph276, %scalar.ph236
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

367:                                              ; preds = %scalar.ph276
  %368 = extractvalue { i32, i1 } %365, 0, !nosanitize !44
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %scalar.ph276, !llvm.loop !150

370:                                              ; preds = %367
  %371 = load ptr, ptr %14, align 8, !tbaa !35
  %372 = zext i32 %340 to i64
  %373 = getelementptr inbounds nuw [2 x i8], ptr %371, i64 %372
  %374 = add i32 %340, -1
  %375 = tail call i32 @llvm.umin.i32(i32 %340, i32 %374)
  %min.iters.check257 = icmp ult i32 %375, 8
  br i1 %min.iters.check257, label %scalar.ph256.preheader, label %vector.ph258

vector.ph258:                                     ; preds = %370
  %umin255 = zext i32 %375 to i64
  %376 = add nuw nsw i64 %umin255, 1
  %n.mod.vf259 = and i64 %376, 7
  %377 = icmp eq i64 %n.mod.vf259, 0
  %378 = select i1 %377, i64 8, i64 %n.mod.vf259
  %n.vec260 = sub nsw i64 %376, %378
  %379 = mul nsw i64 %n.vec260, -2
  %380 = getelementptr i8, ptr %373, i64 %379
  %.cast261 = trunc i64 %n.vec260 to i32
  %381 = sub i32 %340, %.cast261
  %broadcast.splatinsert262 = insertelement <8 x i32> poison, i32 %340, i64 0
  %382 = shufflevector <8 x i32> %broadcast.splatinsert262, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph258
  %index265 = phi i64 [ 0, %vector.ph258 ], [ %index.next271, %vector.body264 ]
  %offset.idx266 = mul i64 %index265, -2
  %next.gep267 = getelementptr i8, ptr %373, i64 %offset.idx266
  %383 = getelementptr inbounds i8, ptr %next.gep267, i64 -16
  %wide.load268 = load <8 x i16>, ptr %383, align 2, !tbaa !60
  %384 = zext <8 x i16> %wide.load268 to <8 x i32>
  %385 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %384, <8 x i32> %382)
  %reverse270 = trunc nuw <8 x i32> %385 to <8 x i16>
  store <8 x i16> %reverse270, ptr %383, align 2, !tbaa !60
  %index.next271 = add nuw i64 %index265, 8
  %386 = icmp eq i64 %index.next271, %n.vec260
  br i1 %386, label %scalar.ph256.preheader, label %vector.body264, !llvm.loop !151

scalar.ph256.preheader:                           ; preds = %vector.body264, %370
  %.ph301 = phi ptr [ %373, %370 ], [ %380, %vector.body264 ]
  %.ph302 = phi i32 [ %340, %370 ], [ %381, %vector.body264 ]
  br label %scalar.ph256

scalar.ph256:                                     ; preds = %scalar.ph256.preheader, %396
  %387 = phi ptr [ %389, %396 ], [ %.ph301, %scalar.ph256.preheader ]
  %388 = phi i32 [ %397, %396 ], [ %.ph302, %scalar.ph256.preheader ]
  %389 = getelementptr inbounds i8, ptr %387, i64 -2
  %390 = load i16, ptr %389, align 2, !tbaa !60
  %391 = zext i16 %390 to i32
  %392 = tail call i32 @llvm.usub.sat.i32(i32 %391, i32 %340)
  %393 = trunc nuw i32 %392 to i16
  store i16 %393, ptr %389, align 2, !tbaa !60
  %394 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %388, i32 1), !nosanitize !44
  %395 = extractvalue { i32, i1 } %394, 1, !nosanitize !44
  br i1 %395, label %.loopexit39, label %396, !prof !45, !nosanitize !44

.loopexit39:                                      ; preds = %scalar.ph256, %scalar.ph
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

396:                                              ; preds = %scalar.ph256
  %397 = extractvalue { i32, i1 } %394, 0, !nosanitize !44
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %scalar.ph256, !llvm.loop !152

399:                                              ; preds = %396
  store i32 1, ptr %15, align 8, !tbaa !61
  %400 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %302, i32 %.fr), !nosanitize !44
  %401 = extractvalue { i32, i1 } %400, 1, !nosanitize !44
  br i1 %401, label %402, label %403, !prof !45, !nosanitize !44

402:                                              ; preds = %399
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

403:                                              ; preds = %399
  %404 = extractvalue { i32, i1 } %400, 0, !nosanitize !44
  %405 = load i32, ptr %3, align 4, !tbaa !73
  br label %406

406:                                              ; preds = %403, %310
  %407 = phi i32 [ %405, %403 ], [ %289, %310 ]
  %408 = phi i32 [ %330, %403 ], [ %296, %310 ]
  %409 = phi i32 [ %404, %403 ], [ %302, %310 ]
  %410 = load ptr, ptr %0, align 8, !tbaa !19
  %411 = getelementptr inbounds nuw i8, ptr %410, i64 8
  %412 = load i32, ptr %411, align 8, !tbaa !79
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %.loopexit52, label %414

414:                                              ; preds = %406
  %415 = load ptr, ptr %8, align 8, !tbaa !34
  %416 = zext i32 %408 to i64
  %417 = getelementptr inbounds nuw i8, ptr %415, i64 %416
  %418 = zext i32 %407 to i64
  %419 = getelementptr inbounds nuw i8, ptr %417, i64 %418
  %420 = tail call i32 @llvm.umin.i32(i32 %412, i32 %409)
  %421 = icmp eq i32 %409, 0
  br i1 %421, label %448, label %422

422:                                              ; preds = %414
  %423 = sub i32 %412, %420
  store i32 %423, ptr %411, align 8, !tbaa !79
  %424 = load ptr, ptr %410, align 8, !tbaa !80
  %425 = zext i32 %420 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %419, ptr align 1 %424, i64 %425, i1 false)
  %426 = getelementptr inbounds nuw i8, ptr %410, i64 56
  %427 = load ptr, ptr %426, align 8, !tbaa !18
  %428 = getelementptr inbounds nuw i8, ptr %427, i64 48
  %429 = load i32, ptr %428, align 8, !tbaa !29
  switch i32 %429, label %438 [
    i32 1, label %430
    i32 2, label %434
  ]

430:                                              ; preds = %422
  %431 = getelementptr inbounds nuw i8, ptr %410, i64 96
  %432 = load i64, ptr %431, align 8, !tbaa !57
  %433 = tail call i64 @adler32(i64 noundef %432, ptr noundef %419, i32 noundef %420) #11
  store i64 %433, ptr %431, align 8, !tbaa !57
  br label %438

434:                                              ; preds = %422
  %435 = getelementptr inbounds nuw i8, ptr %410, i64 96
  %436 = load i64, ptr %435, align 8, !tbaa !57
  %437 = tail call i64 @crc32(i64 noundef %436, ptr noundef %419, i32 noundef %420) #11
  store i64 %437, ptr %435, align 8, !tbaa !57
  br label %438

438:                                              ; preds = %434, %430, %422
  %439 = load ptr, ptr %410, align 8, !tbaa !80
  %440 = getelementptr inbounds nuw i8, ptr %439, i64 %425
  store ptr %440, ptr %410, align 8, !tbaa !80
  %441 = getelementptr inbounds nuw i8, ptr %410, i64 16
  %442 = load i64, ptr %441, align 8, !tbaa !53
  %443 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %442, i64 %425), !nosanitize !44
  %444 = extractvalue { i64, i1 } %443, 1, !nosanitize !44
  br i1 %444, label %.loopexit53, label %445, !prof !45, !nosanitize !44

.loopexit53:                                      ; preds = %438, %180
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

445:                                              ; preds = %438
  %446 = extractvalue { i64, i1 } %443, 0, !nosanitize !44
  store i64 %446, ptr %441, align 8, !tbaa !53
  %447 = load i32, ptr %3, align 4, !tbaa !73
  br label %448

448:                                              ; preds = %445, %414
  %449 = phi i32 [ %407, %414 ], [ %447, %445 ]
  %450 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %449, i32 %420), !nosanitize !44
  %451 = extractvalue { i32, i1 } %450, 1, !nosanitize !44
  br i1 %451, label %.loopexit54, label %452, !prof !45, !nosanitize !44

.loopexit54:                                      ; preds = %448, %190
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

452:                                              ; preds = %448
  %453 = extractvalue { i32, i1 } %450, 0, !nosanitize !44
  store i32 %453, ptr %3, align 4, !tbaa !73
  %454 = load i32, ptr %11, align 4, !tbaa !74
  %455 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %453, i32 %454), !nosanitize !44
  %456 = extractvalue { i32, i1 } %455, 1, !nosanitize !44
  br i1 %456, label %.loopexit55, label %457, !prof !45, !nosanitize !44

.loopexit55:                                      ; preds = %452, %194
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

457:                                              ; preds = %452
  %458 = extractvalue { i32, i1 } %455, 0, !nosanitize !44
  %459 = icmp ugt i32 %458, 2
  br i1 %459, label %460, label %.loopexit

460:                                              ; preds = %457
  %461 = load i32, ptr %7, align 4, !tbaa !71
  %.fr35 = freeze i32 %461
  %462 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr35, i32 %454), !nosanitize !44
  %463 = extractvalue { i32, i1 } %462, 0, !nosanitize !44
  %464 = extractvalue { i32, i1 } %462, 1, !nosanitize !44
  br i1 %464, label %.loopexit56, label %465, !prof !45, !nosanitize !44

.loopexit56:                                      ; preds = %460, %202
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

465:                                              ; preds = %460
  %466 = load ptr, ptr %8, align 8, !tbaa !34
  %467 = zext i32 %463 to i64
  %468 = getelementptr inbounds nuw i8, ptr %466, i64 %467
  %469 = load i8, ptr %468, align 1, !tbaa !5
  %470 = zext i8 %469 to i32
  store i32 %470, ptr %16, align 8, !tbaa !78
  %471 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %463, i32 1), !nosanitize !44
  %472 = extractvalue { i32, i1 } %471, 1, !nosanitize !44
  br i1 %472, label %.loopexit57, label %473, !prof !45, !nosanitize !44

.loopexit57:                                      ; preds = %465, %207
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

473:                                              ; preds = %465
  %474 = extractvalue { i32, i1 } %471, 0, !nosanitize !44
  %475 = load i32, ptr %17, align 8, !tbaa !52
  %476 = shl i32 %470, %475
  %477 = zext i32 %474 to i64
  %478 = getelementptr inbounds nuw i8, ptr %466, i64 %477
  %479 = load i8, ptr %478, align 1, !tbaa !5
  %480 = zext i8 %479 to i32
  %481 = xor i32 %476, %480
  %482 = load i32, ptr %18, align 4, !tbaa !51
  %483 = and i32 %481, %482
  store i32 %483, ptr %16, align 8, !tbaa !78
  %mv.h = icmp sgt i32 %.fr35, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %473, %487
  %indvars.iv = phi i64 [ %indvars.iv.next, %487 ], [ %467, %473 ]
  %484 = phi i32 [ %496, %487 ], [ %483, %473 ]
  %485 = phi i32 [ %507, %487 ], [ %454, %473 ]
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %.loopexit, label %487

487:                                              ; preds = %.mv.ph.mv.fast
  %488 = shl i32 %484, %475
  %489 = trunc nuw i64 %indvars.iv to i32
  %490 = add nuw i64 %indvars.iv, 2
  %491 = and i64 %490, 4294967295
  %492 = getelementptr inbounds nuw i8, ptr %466, i64 %491
  %493 = load i8, ptr %492, align 1, !tbaa !5
  %494 = zext i8 %493 to i32
  %495 = xor i32 %488, %494
  %496 = and i32 %495, %482
  store i32 %496, ptr %16, align 8, !tbaa !78
  %497 = load ptr, ptr %13, align 8, !tbaa !37
  %498 = zext i32 %496 to i64
  %499 = getelementptr inbounds nuw [2 x i8], ptr %497, i64 %498
  %500 = load i16, ptr %499, align 2, !tbaa !60
  %501 = load ptr, ptr %14, align 8, !tbaa !35
  %502 = load i32, ptr %19, align 8, !tbaa !32
  %503 = and i32 %502, %489
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds nuw [2 x i8], ptr %501, i64 %504
  store i16 %500, ptr %505, align 2, !tbaa !60
  %506 = trunc i64 %indvars.iv to i16
  store i16 %506, ptr %499, align 2, !tbaa !60
  %507 = add i32 %485, -1
  store i32 %507, ptr %11, align 4, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %508 = add i32 %507, %453
  %509 = icmp ult i32 %508, 3
  br i1 %509, label %.loopexit, label %.mv.ph.mv.fast, !llvm.loop !89

.mv.ph:                                           ; preds = %473, %517
  %510 = phi i32 [ %526, %517 ], [ %483, %473 ]
  %511 = phi i32 [ %537, %517 ], [ %454, %473 ]
  %512 = phi i32 [ %538, %517 ], [ %463, %473 ]
  %513 = icmp eq i32 %511, 0
  br i1 %513, label %.loopexit, label %514

514:                                              ; preds = %.mv.ph
  %515 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %512, i32 3), !nosanitize !44
  %516 = extractvalue { i32, i1 } %515, 1, !nosanitize !44
  br i1 %516, label %.loopexit38, label %517, !prof !45, !nosanitize !44

.loopexit38:                                      ; preds = %514, %230
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

517:                                              ; preds = %514
  %518 = shl i32 %510, %475
  %519 = extractvalue { i32, i1 } %515, 0, !nosanitize !44
  %520 = add i32 %519, -1
  %521 = zext i32 %520 to i64
  %522 = getelementptr inbounds nuw i8, ptr %466, i64 %521
  %523 = load i8, ptr %522, align 1, !tbaa !5
  %524 = zext i8 %523 to i32
  %525 = xor i32 %518, %524
  %526 = and i32 %525, %482
  store i32 %526, ptr %16, align 8, !tbaa !78
  %527 = load ptr, ptr %13, align 8, !tbaa !37
  %528 = zext i32 %526 to i64
  %529 = getelementptr inbounds nuw [2 x i8], ptr %527, i64 %528
  %530 = load i16, ptr %529, align 2, !tbaa !60
  %531 = load ptr, ptr %14, align 8, !tbaa !35
  %532 = load i32, ptr %19, align 8, !tbaa !32
  %533 = and i32 %532, %512
  %534 = zext i32 %533 to i64
  %535 = getelementptr inbounds nuw [2 x i8], ptr %531, i64 %534
  store i16 %530, ptr %535, align 2, !tbaa !60
  %536 = trunc i32 %512 to i16
  store i16 %536, ptr %529, align 2, !tbaa !60
  %537 = add i32 %511, -1
  store i32 %537, ptr %11, align 4, !tbaa !74
  %538 = add nuw i32 %512, 1
  %539 = add i32 %537, %453
  %540 = icmp ult i32 %539, 3
  br i1 %540, label %.loopexit, label %.mv.ph, !llvm.loop !89

.loopexit:                                        ; preds = %.mv.ph, %517, %.mv.ph.mv.fast, %487, %457
  %541 = icmp ult i32 %453, 262
  br i1 %541, label %542, label %.loopexit52

542:                                              ; preds = %.loopexit
  %543 = load ptr, ptr %0, align 8, !tbaa !19
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 8
  %545 = load i32, ptr %544, align 8, !tbaa !79
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %.loopexit52, label %.mv.ph3, !llvm.loop !90

.loopexit52:                                      ; preds = %542, %.loopexit, %406, %258, %.loopexit.mv.fast, %148
  %547 = phi i32 [ %195, %258 ], [ %149, %148 ], [ %195, %.loopexit.mv.fast ], [ %407, %406 ], [ %453, %.loopexit ], [ %453, %542 ]
  %548 = load i64, ptr %20, align 8, !tbaa !38
  %549 = load i64, ptr %6, align 8, !tbaa !59
  %550 = icmp ult i64 %548, %549
  br i1 %550, label %551, label %586

551:                                              ; preds = %.loopexit52
  %552 = load i32, ptr %7, align 4, !tbaa !71
  %553 = zext i32 %552 to i64
  %554 = zext i32 %547 to i64
  %555 = add nuw nsw i64 %553, %554
  %556 = icmp ult i64 %548, %555
  br i1 %556, label %557, label %567

557:                                              ; preds = %551
  %558 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %549, i64 %555), !nosanitize !44
  %559 = extractvalue { i64, i1 } %558, 1, !nosanitize !44
  br i1 %559, label %560, label %561, !prof !45, !nosanitize !44

560:                                              ; preds = %557
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

561:                                              ; preds = %557
  %562 = extractvalue { i64, i1 } %558, 0, !nosanitize !44
  %563 = tail call i64 @llvm.umin.i64(i64 %562, i64 258)
  %564 = load ptr, ptr %8, align 8, !tbaa !34
  %565 = getelementptr inbounds nuw i8, ptr %564, i64 %555
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %565, i8 0, i64 %563, i1 false)
  %566 = add nuw nsw i64 %563, %555
  br label %583

567:                                              ; preds = %551
  %568 = add nuw nsw i64 %555, 258
  %569 = icmp ult i64 %548, %568
  br i1 %569, label %570, label %586

570:                                              ; preds = %567
  %571 = sub nuw nsw i64 %568, %548
  %572 = sub i64 %549, %548
  %573 = tail call i64 @llvm.umin.i64(i64 %571, i64 %572)
  %574 = load ptr, ptr %8, align 8, !tbaa !34
  %575 = getelementptr inbounds nuw i8, ptr %574, i64 %548
  %576 = and i64 %573, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %575, i8 0, i64 %576, i1 false)
  %577 = load i64, ptr %20, align 8, !tbaa !38
  %578 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %577, i64 %573), !nosanitize !44
  %579 = extractvalue { i64, i1 } %578, 1, !nosanitize !44
  br i1 %579, label %580, label %581, !prof !45, !nosanitize !44

580:                                              ; preds = %570
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

581:                                              ; preds = %570
  %582 = extractvalue { i64, i1 } %578, 0, !nosanitize !44
  br label %583

583:                                              ; preds = %581, %561
  %584 = phi i64 [ %566, %561 ], [ %582, %581 ]
  store i64 %584, ptr %20, align 8, !tbaa !38
  %585 = load i32, ptr %3, align 4, !tbaa !73
  br label %586

586:                                              ; preds = %583, %567, %.loopexit52
  %587 = phi i32 [ %547, %.loopexit52 ], [ %547, %567 ], [ %585, %583 ]
  %588 = icmp ult i32 %587, 259
  %589 = and i1 %21, %588
  br i1 %589, label %.loopexit72, label %590

590:                                              ; preds = %586
  %591 = icmp eq i32 %587, 0
  br i1 %591, label %848, label %592

592:                                              ; preds = %590
  store i32 0, ptr %4, align 8, !tbaa !76
  %593 = icmp ugt i32 %587, 2
  %594 = load i32, ptr %7, align 4, !tbaa !71
  %.pre.pre128.pre130 = load ptr, ptr %8, align 8, !tbaa !34
  br i1 %593, label %595, label %._crit_edge

595:                                              ; preds = %592, %30
  %.pre.pre128 = phi ptr [ %.pre.pre128.pre, %30 ], [ %.pre.pre128.pre130, %592 ]
  %596 = phi i32 [ %31, %30 ], [ %594, %592 ]
  %597 = phi i32 [ %28, %30 ], [ %587, %592 ]
  %598 = icmp eq i32 %596, 0
  br i1 %598, label %._crit_edge, label %599

599:                                              ; preds = %595
  %600 = zext i32 %596 to i64
  %601 = getelementptr inbounds nuw i8, ptr %.pre.pre128, i64 %600
  %602 = getelementptr inbounds i8, ptr %601, i64 -1
  %603 = load i8, ptr %602, align 1, !tbaa !5
  %604 = load i8, ptr %601, align 1, !tbaa !5
  %605 = icmp eq i8 %603, %604
  br i1 %605, label %606, label %._crit_edge

606:                                              ; preds = %599
  %607 = getelementptr inbounds nuw i8, ptr %601, i64 1
  %608 = load i8, ptr %607, align 1, !tbaa !5
  %609 = icmp eq i8 %603, %608
  br i1 %609, label %610, label %._crit_edge

610:                                              ; preds = %606
  %611 = getelementptr inbounds nuw i8, ptr %601, i64 2
  %612 = load i8, ptr %611, align 1, !tbaa !5
  %613 = icmp eq i8 %603, %612
  br i1 %613, label %614, label %._crit_edge

614:                                              ; preds = %610
  %615 = getelementptr inbounds nuw i8, ptr %601, i64 258
  br label %616

616:                                              ; preds = %646, %614
  %617 = phi i64 [ 2, %614 ], [ %647, %646 ]
  %618 = getelementptr inbounds nuw i8, ptr %601, i64 %617
  %619 = getelementptr inbounds nuw i8, ptr %618, i64 1
  %620 = load i8, ptr %619, align 1, !tbaa !5
  %621 = icmp eq i8 %603, %620
  br i1 %621, label %622, label %.split.loop.exit.split.loop.exit

622:                                              ; preds = %616
  %623 = getelementptr inbounds nuw i8, ptr %618, i64 2
  %624 = load i8, ptr %623, align 1, !tbaa !5
  %625 = icmp eq i8 %603, %624
  br i1 %625, label %626, label %.split.loop.exit.split.loop.exit185

626:                                              ; preds = %622
  %627 = getelementptr inbounds nuw i8, ptr %618, i64 3
  %628 = load i8, ptr %627, align 1, !tbaa !5
  %629 = icmp eq i8 %603, %628
  br i1 %629, label %630, label %.split.loop.exit.split.loop.exit187

630:                                              ; preds = %626
  %631 = getelementptr inbounds nuw i8, ptr %618, i64 4
  %632 = load i8, ptr %631, align 1, !tbaa !5
  %633 = icmp eq i8 %603, %632
  br i1 %633, label %634, label %.split.loop.exit.split.loop.exit189

634:                                              ; preds = %630
  %635 = getelementptr inbounds nuw i8, ptr %618, i64 5
  %636 = load i8, ptr %635, align 1, !tbaa !5
  %637 = icmp eq i8 %603, %636
  br i1 %637, label %638, label %.split.loop.exit.split.loop.exit191

638:                                              ; preds = %634
  %639 = getelementptr inbounds nuw i8, ptr %618, i64 6
  %640 = load i8, ptr %639, align 1, !tbaa !5
  %641 = icmp eq i8 %603, %640
  br i1 %641, label %642, label %.split.loop.exit.split.loop.exit193

642:                                              ; preds = %638
  %643 = getelementptr inbounds nuw i8, ptr %618, i64 7
  %644 = load i8, ptr %643, align 1, !tbaa !5
  %645 = icmp eq i8 %603, %644
  br i1 %645, label %646, label %.split.loop.exit.split.loop.exit195

646:                                              ; preds = %642
  %647 = add nuw nsw i64 %617, 8
  %648 = getelementptr inbounds nuw i8, ptr %601, i64 %647
  %649 = load i8, ptr %648, align 1, !tbaa !5
  %650 = icmp eq i8 %603, %649
  %651 = icmp samesign ult i64 %617, 250
  %652 = select i1 %650, i1 %651, i1 false
  br i1 %652, label %616, label %.split.loop.exit.split.loop.exit197, !llvm.loop !153

.split.loop.exit.split.loop.exit:                 ; preds = %616
  %653 = getelementptr inbounds nuw i8, ptr %618, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit185:              ; preds = %622
  %654 = getelementptr inbounds nuw i8, ptr %618, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit187:              ; preds = %626
  %655 = getelementptr inbounds nuw i8, ptr %618, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit189:              ; preds = %630
  %656 = getelementptr inbounds nuw i8, ptr %618, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit191:              ; preds = %634
  %657 = getelementptr inbounds nuw i8, ptr %618, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit193:              ; preds = %638
  %658 = getelementptr inbounds nuw i8, ptr %618, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit195:              ; preds = %642
  %659 = getelementptr inbounds nuw i8, ptr %618, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit197:              ; preds = %646
  %660 = getelementptr inbounds nuw i8, ptr %601, i64 %647
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit197, %.split.loop.exit.split.loop.exit195, %.split.loop.exit.split.loop.exit193, %.split.loop.exit.split.loop.exit191, %.split.loop.exit.split.loop.exit189, %.split.loop.exit.split.loop.exit187, %.split.loop.exit.split.loop.exit185, %.split.loop.exit.split.loop.exit
  %661 = phi ptr [ %653, %.split.loop.exit.split.loop.exit ], [ %654, %.split.loop.exit.split.loop.exit185 ], [ %655, %.split.loop.exit.split.loop.exit187 ], [ %656, %.split.loop.exit.split.loop.exit189 ], [ %657, %.split.loop.exit.split.loop.exit191 ], [ %658, %.split.loop.exit.split.loop.exit193 ], [ %659, %.split.loop.exit.split.loop.exit195 ], [ %660, %.split.loop.exit.split.loop.exit197 ]
  %662 = ptrtoint ptr %615 to i64
  %663 = ptrtoint ptr %661 to i64
  %664 = sub i64 %662, %663
  %665 = trunc i64 %664 to i32
  %666 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %665), !nosanitize !44
  %667 = extractvalue { i32, i1 } %666, 1, !nosanitize !44
  br i1 %667, label %668, label %669, !prof !45, !nosanitize !44

668:                                              ; preds = %.split.loop.exit
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

669:                                              ; preds = %.split.loop.exit
  %670 = extractvalue { i32, i1 } %666, 0, !nosanitize !44
  %671 = tail call i32 @llvm.umin.i32(i32 %670, i32 %597)
  store i32 %671, ptr %4, align 8
  %672 = icmp ugt i32 %671, 2
  %673 = load i32, ptr %23, align 4, !tbaa !144
  br i1 %672, label %674, label %734

674:                                              ; preds = %669
  %675 = trunc i32 %671 to i8
  %676 = add i8 %675, -3
  %677 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %673, i32 1), !nosanitize !44
  %678 = extractvalue { i32, i1 } %677, 1, !nosanitize !44
  br i1 %678, label %679, label %680, !prof !45, !nosanitize !44

679:                                              ; preds = %674
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

680:                                              ; preds = %674
  %681 = extractvalue { i32, i1 } %677, 0, !nosanitize !44
  %682 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %681, ptr %23, align 4, !tbaa !144
  %683 = zext i32 %673 to i64
  %684 = getelementptr inbounds nuw i8, ptr %682, i64 %683
  store i8 1, ptr %684, align 1, !tbaa !5
  %685 = load i32, ptr %23, align 4, !tbaa !144
  %686 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %685, i32 1), !nosanitize !44
  %687 = extractvalue { i32, i1 } %686, 1, !nosanitize !44
  br i1 %687, label %688, label %689, !prof !45, !nosanitize !44

688:                                              ; preds = %680
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

689:                                              ; preds = %680
  %690 = extractvalue { i32, i1 } %686, 0, !nosanitize !44
  %691 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %690, ptr %23, align 4, !tbaa !144
  %692 = zext i32 %685 to i64
  %693 = getelementptr inbounds nuw i8, ptr %691, i64 %692
  store i8 0, ptr %693, align 1, !tbaa !5
  %694 = load i32, ptr %23, align 4, !tbaa !144
  %695 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %694, i32 1), !nosanitize !44
  %696 = extractvalue { i32, i1 } %695, 1, !nosanitize !44
  br i1 %696, label %697, label %698, !prof !45, !nosanitize !44

697:                                              ; preds = %689
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

698:                                              ; preds = %689
  %699 = extractvalue { i32, i1 } %695, 0, !nosanitize !44
  %700 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %699, ptr %23, align 4, !tbaa !144
  %701 = zext i32 %694 to i64
  %702 = getelementptr inbounds nuw i8, ptr %700, i64 %701
  store i8 %676, ptr %702, align 1, !tbaa !5
  %703 = zext i8 %676 to i64
  %704 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %703
  %705 = load i8, ptr %704, align 1, !tbaa !5
  %706 = zext i8 %705 to i64
  %707 = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %706
  %708 = getelementptr inbounds nuw i8, ptr %707, i64 1028
  %709 = load i16, ptr %708, align 4, !tbaa !5
  %710 = add i16 %709, 1
  store i16 %710, ptr %708, align 4, !tbaa !5
  %711 = load i8, ptr @_dist_code, align 1, !tbaa !5
  %712 = zext i8 %711 to i64
  %713 = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %712
  %714 = load i16, ptr %713, align 4, !tbaa !5
  %715 = add i16 %714, 1
  store i16 %715, ptr %713, align 4, !tbaa !5
  %716 = load i32, ptr %23, align 4, !tbaa !144
  %717 = load i32, ptr %25, align 8, !tbaa !46
  %718 = icmp eq i32 %716, %717
  %719 = load i32, ptr %4, align 8, !tbaa !76
  %720 = load i32, ptr %3, align 4, !tbaa !73
  %721 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %720, i32 %719), !nosanitize !44
  %722 = extractvalue { i32, i1 } %721, 1, !nosanitize !44
  br i1 %722, label %723, label %724, !prof !45, !nosanitize !44

723:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

724:                                              ; preds = %698
  %725 = extractvalue { i32, i1 } %721, 0, !nosanitize !44
  store i32 %725, ptr %3, align 4, !tbaa !73
  %726 = load i32, ptr %7, align 4, !tbaa !71
  %727 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %726, i32 %719), !nosanitize !44
  %728 = extractvalue { i32, i1 } %727, 1, !nosanitize !44
  br i1 %728, label %729, label %730, !prof !45, !nosanitize !44

729:                                              ; preds = %724
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

730:                                              ; preds = %724
  %731 = extractvalue { i32, i1 } %727, 0, !nosanitize !44
  store i32 %731, ptr %7, align 4, !tbaa !71
  store i32 0, ptr %4, align 8, !tbaa !76
  br i1 %718, label %783, label %.backedge

._crit_edge:                                      ; preds = %592, %610, %606, %599, %595
  %.pre = phi ptr [ %.pre.pre128, %599 ], [ %.pre.pre128, %595 ], [ %.pre.pre128, %610 ], [ %.pre.pre128, %606 ], [ %.pre.pre128.pre130, %592 ]
  %732 = phi i32 [ %596, %599 ], [ 0, %595 ], [ %596, %610 ], [ %596, %606 ], [ %594, %592 ]
  %733 = load i32, ptr %23, align 4, !tbaa !144
  %.pre127 = zext i32 %732 to i64
  br label %734

734:                                              ; preds = %._crit_edge, %669
  %.pre-phi = phi i64 [ %.pre127, %._crit_edge ], [ %600, %669 ]
  %735 = phi ptr [ %.pre, %._crit_edge ], [ %.pre.pre128, %669 ]
  %736 = phi i32 [ %733, %._crit_edge ], [ %673, %669 ]
  %737 = getelementptr inbounds nuw i8, ptr %735, i64 %.pre-phi
  %738 = load i8, ptr %737, align 1, !tbaa !5
  %739 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %736, i32 1), !nosanitize !44
  %740 = extractvalue { i32, i1 } %739, 1, !nosanitize !44
  br i1 %740, label %741, label %742, !prof !45, !nosanitize !44

741:                                              ; preds = %734
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

742:                                              ; preds = %734
  %743 = extractvalue { i32, i1 } %739, 0, !nosanitize !44
  %744 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %743, ptr %23, align 4, !tbaa !144
  %745 = zext i32 %736 to i64
  %746 = getelementptr inbounds nuw i8, ptr %744, i64 %745
  store i8 0, ptr %746, align 1, !tbaa !5
  %747 = load i32, ptr %23, align 4, !tbaa !144
  %748 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %747, i32 1), !nosanitize !44
  %749 = extractvalue { i32, i1 } %748, 1, !nosanitize !44
  br i1 %749, label %750, label %751, !prof !45, !nosanitize !44

750:                                              ; preds = %742
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

751:                                              ; preds = %742
  %752 = extractvalue { i32, i1 } %748, 0, !nosanitize !44
  %753 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %752, ptr %23, align 4, !tbaa !144
  %754 = zext i32 %747 to i64
  %755 = getelementptr inbounds nuw i8, ptr %753, i64 %754
  store i8 0, ptr %755, align 1, !tbaa !5
  %756 = load i32, ptr %23, align 4, !tbaa !144
  %757 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %756, i32 1), !nosanitize !44
  %758 = extractvalue { i32, i1 } %757, 1, !nosanitize !44
  br i1 %758, label %759, label %760, !prof !45, !nosanitize !44

759:                                              ; preds = %751
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

760:                                              ; preds = %751
  %761 = extractvalue { i32, i1 } %757, 0, !nosanitize !44
  %762 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %761, ptr %23, align 4, !tbaa !144
  %763 = zext i32 %756 to i64
  %764 = getelementptr inbounds nuw i8, ptr %762, i64 %763
  store i8 %738, ptr %764, align 1, !tbaa !5
  %765 = zext i8 %738 to i64
  %766 = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %765
  %767 = load i16, ptr %766, align 4, !tbaa !5
  %768 = add i16 %767, 1
  store i16 %768, ptr %766, align 4, !tbaa !5
  %769 = load i32, ptr %23, align 4, !tbaa !144
  %770 = load i32, ptr %25, align 8, !tbaa !46
  %771 = icmp eq i32 %769, %770
  %772 = load i32, ptr %3, align 4, !tbaa !73
  %773 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %772, i32 1), !nosanitize !44
  %774 = extractvalue { i32, i1 } %773, 1, !nosanitize !44
  br i1 %774, label %.loopexit73, label %775, !prof !45, !nosanitize !44

.loopexit73:                                      ; preds = %791, %760, %926, %857
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

775:                                              ; preds = %760
  %776 = extractvalue { i32, i1 } %773, 0, !nosanitize !44
  store i32 %776, ptr %3, align 4, !tbaa !73
  %777 = load i32, ptr %7, align 4, !tbaa !71
  %778 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %777, i32 1), !nosanitize !44
  %779 = extractvalue { i32, i1 } %778, 1, !nosanitize !44
  br i1 %779, label %780, label %781, !prof !45, !nosanitize !44

780:                                              ; preds = %775
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

781:                                              ; preds = %775
  %782 = extractvalue { i32, i1 } %778, 0, !nosanitize !44
  store i32 %782, ptr %7, align 4, !tbaa !71
  br i1 %771, label %783, label %.backedge

783:                                              ; preds = %781, %730
  %784 = phi i32 [ %731, %730 ], [ %782, %781 ]
  %785 = load i64, ptr %10, align 8, !tbaa !72
  %786 = icmp sgt i64 %785, -1
  br i1 %786, label %787, label %791

787:                                              ; preds = %783
  %788 = load ptr, ptr %8, align 8, !tbaa !34
  %789 = and i64 %785, 4294967295
  %790 = getelementptr inbounds nuw i8, ptr %788, i64 %789
  br label %791

791:                                              ; preds = %787, %783
  %792 = phi ptr [ %790, %787 ], [ null, %783 ]
  %793 = zext i32 %784 to i64
  %794 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %793, i64 %785), !nosanitize !44
  %795 = extractvalue { i64, i1 } %794, 1, !nosanitize !44
  br i1 %795, label %.loopexit73, label %796, !prof !45, !nosanitize !44

796:                                              ; preds = %791
  %797 = extractvalue { i64, i1 } %794, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %792, i64 noundef %797, i32 noundef 0) #11
  %798 = load i32, ptr %7, align 4, !tbaa !71
  %799 = zext i32 %798 to i64
  store i64 %799, ptr %10, align 8, !tbaa !72
  %800 = load ptr, ptr %0, align 8, !tbaa !19
  %801 = getelementptr inbounds nuw i8, ptr %800, i64 56
  %802 = load ptr, ptr %801, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %802) #11
  %803 = getelementptr inbounds nuw i8, ptr %802, i64 40
  %804 = load i64, ptr %803, align 8, !tbaa !55
  %805 = getelementptr inbounds nuw i8, ptr %800, i64 32
  %806 = load i32, ptr %805, align 8, !tbaa !109
  %807 = zext i32 %806 to i64
  %808 = tail call i64 @llvm.umin.i64(i64 %804, i64 %807)
  %809 = trunc nuw i64 %808 to i32
  %810 = icmp eq i64 %808, 0
  br i1 %810, label %843, label %811

811:                                              ; preds = %796
  %812 = getelementptr inbounds nuw i8, ptr %800, i64 24
  %813 = load ptr, ptr %812, align 8, !tbaa !108
  %814 = getelementptr inbounds nuw i8, ptr %802, i64 32
  %815 = load ptr, ptr %814, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %813, ptr align 1 %815, i64 %808, i1 false)
  %816 = load ptr, ptr %812, align 8, !tbaa !108
  %817 = getelementptr inbounds nuw i8, ptr %816, i64 %808
  store ptr %817, ptr %812, align 8, !tbaa !108
  %818 = load ptr, ptr %814, align 8, !tbaa !56
  %819 = getelementptr inbounds nuw i8, ptr %818, i64 %808
  store ptr %819, ptr %814, align 8, !tbaa !56
  %820 = getelementptr inbounds nuw i8, ptr %800, i64 40
  %821 = load i64, ptr %820, align 8, !tbaa !110
  %822 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %821, i64 %808), !nosanitize !44
  %823 = extractvalue { i64, i1 } %822, 1, !nosanitize !44
  br i1 %823, label %824, label %825, !prof !45, !nosanitize !44

824:                                              ; preds = %811
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

825:                                              ; preds = %811
  %826 = extractvalue { i64, i1 } %822, 0, !nosanitize !44
  store i64 %826, ptr %820, align 8, !tbaa !110
  %827 = load i32, ptr %805, align 8, !tbaa !109
  %828 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %827, i32 %809), !nosanitize !44
  %829 = extractvalue { i32, i1 } %828, 1, !nosanitize !44
  br i1 %829, label %830, label %831, !prof !45, !nosanitize !44

830:                                              ; preds = %825
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

831:                                              ; preds = %825
  %832 = extractvalue { i32, i1 } %828, 0, !nosanitize !44
  store i32 %832, ptr %805, align 8, !tbaa !109
  %833 = load i64, ptr %803, align 8, !tbaa !55
  %834 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %833, i64 %808), !nosanitize !44
  %835 = extractvalue { i64, i1 } %834, 1, !nosanitize !44
  br i1 %835, label %836, label %837, !prof !45, !nosanitize !44

836:                                              ; preds = %831
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

837:                                              ; preds = %831
  %838 = extractvalue { i64, i1 } %834, 0, !nosanitize !44
  store i64 %838, ptr %803, align 8, !tbaa !55
  %839 = icmp eq i64 %838, 0
  br i1 %839, label %840, label %843

840:                                              ; preds = %837
  %841 = getelementptr inbounds nuw i8, ptr %802, i64 16
  %842 = load ptr, ptr %841, align 8, !tbaa !40
  store ptr %842, ptr %814, align 8, !tbaa !56
  br label %843

843:                                              ; preds = %840, %837, %796
  %844 = load ptr, ptr %0, align 8, !tbaa !19
  %845 = getelementptr inbounds nuw i8, ptr %844, i64 32
  %846 = load i32, ptr %845, align 8, !tbaa !109
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %.loopexit72, label %.backedge

.backedge:                                        ; preds = %843, %781, %730
  br label %27

848:                                              ; preds = %590
  store i32 0, ptr %11, align 4, !tbaa !74
  %849 = icmp eq i32 %1, 4
  br i1 %849, label %850, label %916

850:                                              ; preds = %848
  %851 = load i64, ptr %10, align 8, !tbaa !72
  %852 = icmp sgt i64 %851, -1
  br i1 %852, label %853, label %857

853:                                              ; preds = %850
  %854 = load ptr, ptr %8, align 8, !tbaa !34
  %855 = and i64 %851, 4294967295
  %856 = getelementptr inbounds nuw i8, ptr %854, i64 %855
  br label %857

857:                                              ; preds = %853, %850
  %858 = phi ptr [ %856, %853 ], [ null, %850 ]
  %859 = load i32, ptr %7, align 4, !tbaa !71
  %860 = zext i32 %859 to i64
  %861 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %860, i64 %851), !nosanitize !44
  %862 = extractvalue { i64, i1 } %861, 1, !nosanitize !44
  br i1 %862, label %.loopexit73, label %863, !prof !45, !nosanitize !44

863:                                              ; preds = %857
  %864 = extractvalue { i64, i1 } %861, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %858, i64 noundef %864, i32 noundef 1) #11
  %865 = load i32, ptr %7, align 4, !tbaa !71
  %866 = zext i32 %865 to i64
  store i64 %866, ptr %10, align 8, !tbaa !72
  %867 = load ptr, ptr %0, align 8, !tbaa !19
  %868 = getelementptr inbounds nuw i8, ptr %867, i64 56
  %869 = load ptr, ptr %868, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %869) #11
  %870 = getelementptr inbounds nuw i8, ptr %869, i64 40
  %871 = load i64, ptr %870, align 8, !tbaa !55
  %872 = getelementptr inbounds nuw i8, ptr %867, i64 32
  %873 = load i32, ptr %872, align 8, !tbaa !109
  %874 = zext i32 %873 to i64
  %875 = tail call i64 @llvm.umin.i64(i64 %871, i64 %874)
  %876 = trunc nuw i64 %875 to i32
  %877 = icmp eq i64 %875, 0
  br i1 %877, label %910, label %878

878:                                              ; preds = %863
  %879 = getelementptr inbounds nuw i8, ptr %867, i64 24
  %880 = load ptr, ptr %879, align 8, !tbaa !108
  %881 = getelementptr inbounds nuw i8, ptr %869, i64 32
  %882 = load ptr, ptr %881, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %880, ptr align 1 %882, i64 %875, i1 false)
  %883 = load ptr, ptr %879, align 8, !tbaa !108
  %884 = getelementptr inbounds nuw i8, ptr %883, i64 %875
  store ptr %884, ptr %879, align 8, !tbaa !108
  %885 = load ptr, ptr %881, align 8, !tbaa !56
  %886 = getelementptr inbounds nuw i8, ptr %885, i64 %875
  store ptr %886, ptr %881, align 8, !tbaa !56
  %887 = getelementptr inbounds nuw i8, ptr %867, i64 40
  %888 = load i64, ptr %887, align 8, !tbaa !110
  %889 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %888, i64 %875), !nosanitize !44
  %890 = extractvalue { i64, i1 } %889, 1, !nosanitize !44
  br i1 %890, label %891, label %892, !prof !45, !nosanitize !44

891:                                              ; preds = %878
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

892:                                              ; preds = %878
  %893 = extractvalue { i64, i1 } %889, 0, !nosanitize !44
  store i64 %893, ptr %887, align 8, !tbaa !110
  %894 = load i32, ptr %872, align 8, !tbaa !109
  %895 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %894, i32 %876), !nosanitize !44
  %896 = extractvalue { i32, i1 } %895, 1, !nosanitize !44
  br i1 %896, label %897, label %898, !prof !45, !nosanitize !44

897:                                              ; preds = %892
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

898:                                              ; preds = %892
  %899 = extractvalue { i32, i1 } %895, 0, !nosanitize !44
  store i32 %899, ptr %872, align 8, !tbaa !109
  %900 = load i64, ptr %870, align 8, !tbaa !55
  %901 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %900, i64 %875), !nosanitize !44
  %902 = extractvalue { i64, i1 } %901, 1, !nosanitize !44
  br i1 %902, label %903, label %904, !prof !45, !nosanitize !44

903:                                              ; preds = %898
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

904:                                              ; preds = %898
  %905 = extractvalue { i64, i1 } %901, 0, !nosanitize !44
  store i64 %905, ptr %870, align 8, !tbaa !55
  %906 = icmp eq i64 %905, 0
  br i1 %906, label %907, label %910

907:                                              ; preds = %904
  %908 = getelementptr inbounds nuw i8, ptr %869, i64 16
  %909 = load ptr, ptr %908, align 8, !tbaa !40
  store ptr %909, ptr %881, align 8, !tbaa !56
  br label %910

910:                                              ; preds = %907, %904, %863
  %911 = load ptr, ptr %0, align 8, !tbaa !19
  %912 = getelementptr inbounds nuw i8, ptr %911, i64 32
  %913 = load i32, ptr %912, align 8, !tbaa !109
  %914 = icmp eq i32 %913, 0
  %915 = select i1 %914, i32 2, i32 3
  br label %.loopexit72

916:                                              ; preds = %848
  %917 = load i32, ptr %23, align 4, !tbaa !144
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %984, label %919

919:                                              ; preds = %916
  %920 = load i64, ptr %10, align 8, !tbaa !72
  %921 = icmp sgt i64 %920, -1
  br i1 %921, label %922, label %926

922:                                              ; preds = %919
  %923 = load ptr, ptr %8, align 8, !tbaa !34
  %924 = and i64 %920, 4294967295
  %925 = getelementptr inbounds nuw i8, ptr %923, i64 %924
  br label %926

926:                                              ; preds = %922, %919
  %927 = phi ptr [ %925, %922 ], [ null, %919 ]
  %928 = load i32, ptr %7, align 4, !tbaa !71
  %929 = zext i32 %928 to i64
  %930 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %929, i64 %920), !nosanitize !44
  %931 = extractvalue { i64, i1 } %930, 1, !nosanitize !44
  br i1 %931, label %.loopexit73, label %932, !prof !45, !nosanitize !44

932:                                              ; preds = %926
  %933 = extractvalue { i64, i1 } %930, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %927, i64 noundef %933, i32 noundef 0) #11
  %934 = load i32, ptr %7, align 4, !tbaa !71
  %935 = zext i32 %934 to i64
  store i64 %935, ptr %10, align 8, !tbaa !72
  %936 = load ptr, ptr %0, align 8, !tbaa !19
  %937 = getelementptr inbounds nuw i8, ptr %936, i64 56
  %938 = load ptr, ptr %937, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %938) #11
  %939 = getelementptr inbounds nuw i8, ptr %938, i64 40
  %940 = load i64, ptr %939, align 8, !tbaa !55
  %941 = getelementptr inbounds nuw i8, ptr %936, i64 32
  %942 = load i32, ptr %941, align 8, !tbaa !109
  %943 = zext i32 %942 to i64
  %944 = tail call i64 @llvm.umin.i64(i64 %940, i64 %943)
  %945 = trunc nuw i64 %944 to i32
  %946 = icmp eq i64 %944, 0
  br i1 %946, label %979, label %947

947:                                              ; preds = %932
  %948 = getelementptr inbounds nuw i8, ptr %936, i64 24
  %949 = load ptr, ptr %948, align 8, !tbaa !108
  %950 = getelementptr inbounds nuw i8, ptr %938, i64 32
  %951 = load ptr, ptr %950, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %949, ptr align 1 %951, i64 %944, i1 false)
  %952 = load ptr, ptr %948, align 8, !tbaa !108
  %953 = getelementptr inbounds nuw i8, ptr %952, i64 %944
  store ptr %953, ptr %948, align 8, !tbaa !108
  %954 = load ptr, ptr %950, align 8, !tbaa !56
  %955 = getelementptr inbounds nuw i8, ptr %954, i64 %944
  store ptr %955, ptr %950, align 8, !tbaa !56
  %956 = getelementptr inbounds nuw i8, ptr %936, i64 40
  %957 = load i64, ptr %956, align 8, !tbaa !110
  %958 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %957, i64 %944), !nosanitize !44
  %959 = extractvalue { i64, i1 } %958, 1, !nosanitize !44
  br i1 %959, label %960, label %961, !prof !45, !nosanitize !44

960:                                              ; preds = %947
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

961:                                              ; preds = %947
  %962 = extractvalue { i64, i1 } %958, 0, !nosanitize !44
  store i64 %962, ptr %956, align 8, !tbaa !110
  %963 = load i32, ptr %941, align 8, !tbaa !109
  %964 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %963, i32 %945), !nosanitize !44
  %965 = extractvalue { i32, i1 } %964, 1, !nosanitize !44
  br i1 %965, label %966, label %967, !prof !45, !nosanitize !44

966:                                              ; preds = %961
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

967:                                              ; preds = %961
  %968 = extractvalue { i32, i1 } %964, 0, !nosanitize !44
  store i32 %968, ptr %941, align 8, !tbaa !109
  %969 = load i64, ptr %939, align 8, !tbaa !55
  %970 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %969, i64 %944), !nosanitize !44
  %971 = extractvalue { i64, i1 } %970, 1, !nosanitize !44
  br i1 %971, label %972, label %973, !prof !45, !nosanitize !44

972:                                              ; preds = %967
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

973:                                              ; preds = %967
  %974 = extractvalue { i64, i1 } %970, 0, !nosanitize !44
  store i64 %974, ptr %939, align 8, !tbaa !55
  %975 = icmp eq i64 %974, 0
  br i1 %975, label %976, label %979

976:                                              ; preds = %973
  %977 = getelementptr inbounds nuw i8, ptr %938, i64 16
  %978 = load ptr, ptr %977, align 8, !tbaa !40
  store ptr %978, ptr %950, align 8, !tbaa !56
  br label %979

979:                                              ; preds = %976, %973, %932
  %980 = load ptr, ptr %0, align 8, !tbaa !19
  %981 = getelementptr inbounds nuw i8, ptr %980, i64 32
  %982 = load i32, ptr %981, align 8, !tbaa !109
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %.loopexit72, label %984

984:                                              ; preds = %979, %916
  br label %.loopexit72

.loopexit72:                                      ; preds = %843, %586, %984, %979, %910
  %985 = phi i32 [ 1, %984 ], [ %915, %910 ], [ 0, %979 ], [ 0, %586 ], [ 0, %843 ]
  ret i32 %985
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
  %180 = load i32, ptr %179, align 4, !tbaa !144
  %181 = zext i32 %180 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %175, ptr align 1 %178, i64 %181, i1 false)
  %182 = getelementptr inbounds nuw i8, ptr %29, i64 212
  %183 = getelementptr inbounds nuw i8, ptr %29, i64 2904
  store ptr %182, ptr %183, align 8, !tbaa !154
  %184 = getelementptr inbounds nuw i8, ptr %29, i64 2504
  %185 = getelementptr inbounds nuw i8, ptr %29, i64 2928
  store ptr %184, ptr %185, align 8, !tbaa !155
  %186 = getelementptr inbounds nuw i8, ptr %29, i64 2748
  %187 = getelementptr inbounds nuw i8, ptr %29, i64 2952
  store ptr %186, ptr %187, align 8, !tbaa !156
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
  br i1 %34, label %35, label %597

35:                                               ; preds = %32
  %36 = load i32, ptr %4, align 8, !tbaa !31
  %.fr = freeze i32 %36
  %37 = zext i32 %.fr to i64
  %mv.h1 = icmp sgt i32 %.fr, -1
  br i1 %mv.h1, label %.mv.ph3.mv.fast, label %.mv.ph3

.mv.ph3.mv.fast:                                  ; preds = %35, %261
  %38 = phi i32 [ %198, %261 ], [ %33, %35 ]
  %39 = load i64, ptr %5, align 8, !tbaa !59
  %40 = zext nneg i32 %38 to i64
  %41 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %39, i64 %40), !nosanitize !44
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !44
  br i1 %42, label %.loopexit60, label %43, !prof !45, !nosanitize !44

43:                                               ; preds = %.mv.ph3.mv.fast
  %44 = extractvalue { i64, i1 } %41, 0, !nosanitize !44
  %45 = load i32, ptr %6, align 4, !tbaa !71
  %46 = zext i32 %45 to i64
  %47 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %44, i64 %46), !nosanitize !44
  %48 = extractvalue { i64, i1 } %47, 1, !nosanitize !44
  br i1 %48, label %.loopexit61, label %49, !prof !45, !nosanitize !44

49:                                               ; preds = %43
  %50 = extractvalue { i64, i1 } %47, 0, !nosanitize !44
  %51 = trunc i64 %50 to i32
  %52 = load i32, ptr %4, align 8, !tbaa !31
  %53 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %52, i32 262), !nosanitize !44
  %54 = extractvalue { i32, i1 } %53, 1, !nosanitize !44
  br i1 %54, label %.loopexit62, label %55, !prof !45, !nosanitize !44

55:                                               ; preds = %49
  %56 = extractvalue { i32, i1 } %53, 0, !nosanitize !44
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.fr, i32 %56), !nosanitize !44
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !44
  br i1 %58, label %.loopexit63, label %59, !prof !45, !nosanitize !44

59:                                               ; preds = %55
  %60 = extractvalue { i32, i1 } %57, 0, !nosanitize !44
  %61 = icmp ult i32 %45, %60
  br i1 %61, label %151, label %62

62:                                               ; preds = %59
  %63 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr, i32 %51), !nosanitize !44
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !44
  br i1 %64, label %.loopexit64, label %65, !prof !45, !nosanitize !44

65:                                               ; preds = %62
  %66 = extractvalue { i32, i1 } %63, 0, !nosanitize !44
  %67 = load ptr, ptr %7, align 8, !tbaa !34
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 %37
  %69 = zext i32 %66 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %67, ptr align 1 %68, i64 %69, i1 false)
  %70 = load i32, ptr %8, align 8, !tbaa !81
  %71 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %70, i32 %.fr), !nosanitize !44
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !44
  br i1 %72, label %.loopexit65, label %73, !prof !45, !nosanitize !44

73:                                               ; preds = %65
  %74 = extractvalue { i32, i1 } %71, 0, !nosanitize !44
  store i32 %74, ptr %8, align 8, !tbaa !81
  %75 = load i32, ptr %6, align 4, !tbaa !71
  %76 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %75, i32 %.fr), !nosanitize !44
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !44
  br i1 %77, label %.loopexit66, label %78, !prof !45, !nosanitize !44

78:                                               ; preds = %73
  %79 = extractvalue { i32, i1 } %76, 0, !nosanitize !44
  store i32 %79, ptr %6, align 4, !tbaa !71
  %80 = load i64, ptr %9, align 8, !tbaa !72
  %81 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %80, i64 %37), !nosanitize !44
  %82 = extractvalue { i64, i1 } %81, 1, !nosanitize !44
  br i1 %82, label %.loopexit66, label %83, !prof !45, !nosanitize !44

83:                                               ; preds = %78
  %84 = extractvalue { i64, i1 } %81, 0, !nosanitize !44
  store i64 %84, ptr %9, align 8, !tbaa !72
  %85 = load i32, ptr %10, align 4, !tbaa !74
  %86 = icmp ugt i32 %85, %79
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 %79, ptr %10, align 4, !tbaa !74
  br label %88

88:                                               ; preds = %87, %83
  %89 = load i32, ptr %4, align 8, !tbaa !31
  %90 = load i32, ptr %11, align 4, !tbaa !36
  %91 = load ptr, ptr %12, align 8, !tbaa !37
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds nuw [2 x i8], ptr %91, i64 %92
  %94 = add i32 %90, -1
  %95 = tail call i32 @llvm.umin.i32(i32 %90, i32 %94)
  %min.iters.check305 = icmp ult i32 %95, 8
  br i1 %min.iters.check305, label %scalar.ph304.preheader, label %vector.ph306

vector.ph306:                                     ; preds = %88
  %umin303 = zext i32 %95 to i64
  %96 = add nuw nsw i64 %umin303, 1
  %n.mod.vf307 = and i64 %96, 7
  %97 = icmp eq i64 %n.mod.vf307, 0
  %98 = select i1 %97, i64 8, i64 %n.mod.vf307
  %n.vec308 = sub nsw i64 %96, %98
  %99 = mul nsw i64 %n.vec308, -2
  %100 = getelementptr i8, ptr %93, i64 %99
  %.cast309 = trunc i64 %n.vec308 to i32
  %101 = sub i32 %90, %.cast309
  %broadcast.splatinsert310 = insertelement <8 x i32> poison, i32 %89, i64 0
  %102 = shufflevector <8 x i32> %broadcast.splatinsert310, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body312

vector.body312:                                   ; preds = %vector.body312, %vector.ph306
  %index313 = phi i64 [ 0, %vector.ph306 ], [ %index.next319, %vector.body312 ]
  %offset.idx314 = mul i64 %index313, -2
  %next.gep315 = getelementptr i8, ptr %93, i64 %offset.idx314
  %103 = getelementptr inbounds i8, ptr %next.gep315, i64 -16
  %wide.load316 = load <8 x i16>, ptr %103, align 2, !tbaa !60
  %104 = zext <8 x i16> %wide.load316 to <8 x i32>
  %105 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %104, <8 x i32> %102)
  %reverse318 = trunc nuw <8 x i32> %105 to <8 x i16>
  store <8 x i16> %reverse318, ptr %103, align 2, !tbaa !60
  %index.next319 = add nuw i64 %index313, 8
  %106 = icmp eq i64 %index.next319, %n.vec308
  br i1 %106, label %scalar.ph304.preheader, label %vector.body312, !llvm.loop !157

scalar.ph304.preheader:                           ; preds = %vector.body312, %88
  %.ph365 = phi ptr [ %93, %88 ], [ %100, %vector.body312 ]
  %.ph366 = phi i32 [ %90, %88 ], [ %101, %vector.body312 ]
  br label %scalar.ph304

scalar.ph304:                                     ; preds = %scalar.ph304.preheader, %116
  %107 = phi ptr [ %109, %116 ], [ %.ph365, %scalar.ph304.preheader ]
  %108 = phi i32 [ %117, %116 ], [ %.ph366, %scalar.ph304.preheader ]
  %109 = getelementptr inbounds i8, ptr %107, i64 -2
  %110 = load i16, ptr %109, align 2, !tbaa !60
  %111 = zext i16 %110 to i32
  %112 = tail call i32 @llvm.usub.sat.i32(i32 %111, i32 %89)
  %113 = trunc nuw i32 %112 to i16
  store i16 %113, ptr %109, align 2, !tbaa !60
  %114 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %108, i32 1), !nosanitize !44
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !44
  br i1 %115, label %.loopexit50, label %116, !prof !45, !nosanitize !44

116:                                              ; preds = %scalar.ph304
  %117 = extractvalue { i32, i1 } %114, 0, !nosanitize !44
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %scalar.ph304, !llvm.loop !158

119:                                              ; preds = %116
  %120 = load ptr, ptr %13, align 8, !tbaa !35
  %121 = zext i32 %89 to i64
  %122 = getelementptr inbounds nuw [2 x i8], ptr %120, i64 %121
  %123 = add i32 %89, -1
  %124 = tail call i32 @llvm.umin.i32(i32 %89, i32 %123)
  %min.iters.check = icmp ult i32 %124, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %119
  %umin300 = zext i32 %124 to i64
  %125 = add nuw nsw i64 %umin300, 1
  %n.mod.vf = and i64 %125, 7
  %126 = icmp eq i64 %n.mod.vf, 0
  %127 = select i1 %126, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %125, %127
  %128 = mul nsw i64 %n.vec, -2
  %129 = getelementptr i8, ptr %122, i64 %128
  %.cast = trunc i64 %n.vec to i32
  %130 = sub i32 %89, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %89, i64 0
  %131 = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %122, i64 %offset.idx
  %132 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.load = load <8 x i16>, ptr %132, align 2, !tbaa !60
  %133 = zext <8 x i16> %wide.load to <8 x i32>
  %134 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %133, <8 x i32> %131)
  %reverse301 = trunc nuw <8 x i32> %134 to <8 x i16>
  store <8 x i16> %reverse301, ptr %132, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %135 = icmp eq i64 %index.next, %n.vec
  br i1 %135, label %scalar.ph.preheader, label %vector.body, !llvm.loop !159

scalar.ph.preheader:                              ; preds = %vector.body, %119
  %.ph = phi ptr [ %122, %119 ], [ %129, %vector.body ]
  %.ph364 = phi i32 [ %89, %119 ], [ %130, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %145
  %136 = phi ptr [ %138, %145 ], [ %.ph, %scalar.ph.preheader ]
  %137 = phi i32 [ %146, %145 ], [ %.ph364, %scalar.ph.preheader ]
  %138 = getelementptr inbounds i8, ptr %136, i64 -2
  %139 = load i16, ptr %138, align 2, !tbaa !60
  %140 = zext i16 %139 to i32
  %141 = tail call i32 @llvm.usub.sat.i32(i32 %140, i32 %89)
  %142 = trunc nuw i32 %141 to i16
  store i16 %142, ptr %138, align 2, !tbaa !60
  %143 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %137, i32 1), !nosanitize !44
  %144 = extractvalue { i32, i1 } %143, 1, !nosanitize !44
  br i1 %144, label %.loopexit49, label %145, !prof !45, !nosanitize !44

145:                                              ; preds = %scalar.ph
  %146 = extractvalue { i32, i1 } %143, 0, !nosanitize !44
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %scalar.ph, !llvm.loop !160

148:                                              ; preds = %145
  store i32 1, ptr %14, align 8, !tbaa !61
  %149 = add i32 %.fr, %51
  %150 = load i32, ptr %3, align 4, !tbaa !73
  br label %151

151:                                              ; preds = %148, %59
  %152 = phi i32 [ %150, %148 ], [ %38, %59 ]
  %153 = phi i32 [ %79, %148 ], [ %45, %59 ]
  %154 = phi i32 [ %149, %148 ], [ %51, %59 ]
  %155 = load ptr, ptr %0, align 8, !tbaa !19
  %156 = getelementptr inbounds nuw i8, ptr %155, i64 8
  %157 = load i32, ptr %156, align 8, !tbaa !79
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %.loopexit67, label %159

159:                                              ; preds = %151
  %160 = load ptr, ptr %7, align 8, !tbaa !34
  %161 = zext i32 %153 to i64
  %162 = getelementptr inbounds nuw i8, ptr %160, i64 %161
  %163 = zext i32 %152 to i64
  %164 = getelementptr inbounds nuw i8, ptr %162, i64 %163
  %165 = tail call i32 @llvm.umin.i32(i32 %157, i32 %154)
  %166 = icmp eq i32 %154, 0
  br i1 %166, label %193, label %167

167:                                              ; preds = %159
  %168 = sub i32 %157, %165
  store i32 %168, ptr %156, align 8, !tbaa !79
  %169 = load ptr, ptr %155, align 8, !tbaa !80
  %170 = zext i32 %165 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %164, ptr align 1 %169, i64 %170, i1 false)
  %171 = getelementptr inbounds nuw i8, ptr %155, i64 56
  %172 = load ptr, ptr %171, align 8, !tbaa !18
  %173 = getelementptr inbounds nuw i8, ptr %172, i64 48
  %174 = load i32, ptr %173, align 8, !tbaa !29
  switch i32 %174, label %183 [
    i32 1, label %179
    i32 2, label %175
  ]

175:                                              ; preds = %167
  %176 = getelementptr inbounds nuw i8, ptr %155, i64 96
  %177 = load i64, ptr %176, align 8, !tbaa !57
  %178 = tail call i64 @crc32(i64 noundef %177, ptr noundef %164, i32 noundef %165) #11
  store i64 %178, ptr %176, align 8, !tbaa !57
  br label %183

179:                                              ; preds = %167
  %180 = getelementptr inbounds nuw i8, ptr %155, i64 96
  %181 = load i64, ptr %180, align 8, !tbaa !57
  %182 = tail call i64 @adler32(i64 noundef %181, ptr noundef %164, i32 noundef %165) #11
  store i64 %182, ptr %180, align 8, !tbaa !57
  br label %183

183:                                              ; preds = %179, %175, %167
  %184 = load ptr, ptr %155, align 8, !tbaa !80
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 %170
  store ptr %185, ptr %155, align 8, !tbaa !80
  %186 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %187 = load i64, ptr %186, align 8, !tbaa !53
  %188 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %187, i64 %170), !nosanitize !44
  %189 = extractvalue { i64, i1 } %188, 1, !nosanitize !44
  br i1 %189, label %.loopexit68, label %190, !prof !45, !nosanitize !44

190:                                              ; preds = %183
  %191 = extractvalue { i64, i1 } %188, 0, !nosanitize !44
  store i64 %191, ptr %186, align 8, !tbaa !53
  %192 = load i32, ptr %3, align 4, !tbaa !73
  br label %193

193:                                              ; preds = %190, %159
  %194 = phi i32 [ %152, %159 ], [ %192, %190 ]
  %195 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %194, i32 %165), !nosanitize !44
  %196 = extractvalue { i32, i1 } %195, 1, !nosanitize !44
  br i1 %196, label %.loopexit69, label %197, !prof !45, !nosanitize !44

197:                                              ; preds = %193
  %198 = extractvalue { i32, i1 } %195, 0, !nosanitize !44
  store i32 %198, ptr %3, align 4, !tbaa !73
  %199 = load i32, ptr %10, align 4, !tbaa !74
  %200 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %198, i32 %199), !nosanitize !44
  %201 = extractvalue { i32, i1 } %200, 1, !nosanitize !44
  br i1 %201, label %.loopexit70, label %202, !prof !45, !nosanitize !44

202:                                              ; preds = %197
  %203 = extractvalue { i32, i1 } %200, 0, !nosanitize !44
  %204 = icmp ugt i32 %203, 2
  br i1 %204, label %205, label %.loopexit.mv.fast

205:                                              ; preds = %202
  %206 = load i32, ptr %6, align 4, !tbaa !71
  %.fr45 = freeze i32 %206
  %207 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr45, i32 %199), !nosanitize !44
  %208 = extractvalue { i32, i1 } %207, 0, !nosanitize !44
  %209 = extractvalue { i32, i1 } %207, 1, !nosanitize !44
  br i1 %209, label %.loopexit71, label %210, !prof !45, !nosanitize !44

210:                                              ; preds = %205
  %211 = load ptr, ptr %7, align 8, !tbaa !34
  %212 = zext i32 %208 to i64
  %213 = getelementptr inbounds nuw i8, ptr %211, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !5
  %215 = zext i8 %214 to i32
  store i32 %215, ptr %15, align 8, !tbaa !78
  %216 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %208, i32 1), !nosanitize !44
  %217 = extractvalue { i32, i1 } %216, 1, !nosanitize !44
  br i1 %217, label %.loopexit72, label %218, !prof !45, !nosanitize !44

218:                                              ; preds = %210
  %219 = extractvalue { i32, i1 } %216, 0, !nosanitize !44
  %220 = load i32, ptr %16, align 8, !tbaa !52
  %221 = shl i32 %215, %220
  %222 = zext i32 %219 to i64
  %223 = getelementptr inbounds nuw i8, ptr %211, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !5
  %225 = zext i8 %224 to i32
  %226 = xor i32 %221, %225
  %227 = load i32, ptr %17, align 4, !tbaa !51
  %228 = and i32 %226, %227
  store i32 %228, ptr %15, align 8, !tbaa !78
  %mv.h.mv.fast = icmp sgt i32 %.fr45, -1
  br i1 %mv.h.mv.fast, label %.mv.ph.mv.fast.mv.fast, label %.mv.ph.mv.fast4

.mv.ph.mv.fast4:                                  ; preds = %218, %236
  %229 = phi i32 [ %245, %236 ], [ %228, %218 ]
  %230 = phi i32 [ %256, %236 ], [ %199, %218 ]
  %231 = phi i32 [ %257, %236 ], [ %208, %218 ]
  %232 = icmp eq i32 %230, 0
  br i1 %232, label %.loopexit.mv.fast, label %233

233:                                              ; preds = %.mv.ph.mv.fast4
  %234 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %231, i32 3), !nosanitize !44
  %235 = extractvalue { i32, i1 } %234, 1, !nosanitize !44
  br i1 %235, label %.loopexit48, label %236, !prof !45, !nosanitize !44

236:                                              ; preds = %233
  %237 = shl i32 %229, %220
  %238 = extractvalue { i32, i1 } %234, 0, !nosanitize !44
  %239 = add i32 %238, -1
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds nuw i8, ptr %211, i64 %240
  %242 = load i8, ptr %241, align 1, !tbaa !5
  %243 = zext i8 %242 to i32
  %244 = xor i32 %237, %243
  %245 = and i32 %244, %227
  store i32 %245, ptr %15, align 8, !tbaa !78
  %246 = load ptr, ptr %12, align 8, !tbaa !37
  %247 = zext i32 %245 to i64
  %248 = getelementptr inbounds nuw [2 x i8], ptr %246, i64 %247
  %249 = load i16, ptr %248, align 2, !tbaa !60
  %250 = load ptr, ptr %13, align 8, !tbaa !35
  %251 = load i32, ptr %18, align 8, !tbaa !32
  %252 = and i32 %251, %231
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds nuw [2 x i8], ptr %250, i64 %253
  store i16 %249, ptr %254, align 2, !tbaa !60
  %255 = trunc i32 %231 to i16
  store i16 %255, ptr %248, align 2, !tbaa !60
  %256 = add i32 %230, -1
  store i32 %256, ptr %10, align 4, !tbaa !74
  %257 = add nuw i32 %231, 1
  %258 = add i32 %256, %198
  %259 = icmp ult i32 %258, 3
  br i1 %259, label %.loopexit.mv.fast, label %.mv.ph.mv.fast4, !llvm.loop !89

.loopexit.mv.fast:                                ; preds = %.mv.ph.mv.fast4, %236, %.mv.ph.mv.fast.mv.fast, %269, %202
  %260 = icmp ult i32 %198, 262
  br i1 %260, label %261, label %.loopexit67

261:                                              ; preds = %.loopexit.mv.fast
  %262 = load ptr, ptr %0, align 8, !tbaa !19
  %263 = getelementptr inbounds nuw i8, ptr %262, i64 8
  %264 = load i32, ptr %263, align 8, !tbaa !79
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %.loopexit67, label %.mv.ph3.mv.fast, !llvm.loop !90

.mv.ph.mv.fast.mv.fast:                           ; preds = %218, %269
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %269 ], [ %212, %218 ]
  %266 = phi i32 [ %278, %269 ], [ %228, %218 ]
  %267 = phi i32 [ %289, %269 ], [ %199, %218 ]
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %.loopexit.mv.fast, label %269

269:                                              ; preds = %.mv.ph.mv.fast.mv.fast
  %270 = shl i32 %266, %220
  %271 = trunc nuw i64 %indvars.iv151 to i32
  %272 = add nuw i64 %indvars.iv151, 2
  %273 = and i64 %272, 4294967295
  %274 = getelementptr inbounds nuw i8, ptr %211, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !5
  %276 = zext i8 %275 to i32
  %277 = xor i32 %270, %276
  %278 = and i32 %277, %227
  store i32 %278, ptr %15, align 8, !tbaa !78
  %279 = load ptr, ptr %12, align 8, !tbaa !37
  %280 = zext i32 %278 to i64
  %281 = getelementptr inbounds nuw [2 x i8], ptr %279, i64 %280
  %282 = load i16, ptr %281, align 2, !tbaa !60
  %283 = load ptr, ptr %13, align 8, !tbaa !35
  %284 = load i32, ptr %18, align 8, !tbaa !32
  %285 = and i32 %284, %271
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds nuw [2 x i8], ptr %283, i64 %286
  store i16 %282, ptr %287, align 2, !tbaa !60
  %288 = trunc i64 %indvars.iv151 to i16
  store i16 %288, ptr %281, align 2, !tbaa !60
  %289 = add i32 %267, -1
  store i32 %289, ptr %10, align 4, !tbaa !74
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1
  %290 = add i32 %289, %198
  %291 = icmp ult i32 %290, 3
  br i1 %291, label %.loopexit.mv.fast, label %.mv.ph.mv.fast.mv.fast, !llvm.loop !89

.mv.ph3:                                          ; preds = %35, %545
  %292 = phi i32 [ %456, %545 ], [ %33, %35 ]
  %293 = load i64, ptr %5, align 8, !tbaa !59
  %294 = zext nneg i32 %292 to i64
  %295 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %293, i64 %294), !nosanitize !44
  %296 = extractvalue { i64, i1 } %295, 1, !nosanitize !44
  br i1 %296, label %.loopexit60, label %297, !prof !45, !nosanitize !44

.loopexit60:                                      ; preds = %.mv.ph3, %.mv.ph3.mv.fast
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

297:                                              ; preds = %.mv.ph3
  %298 = extractvalue { i64, i1 } %295, 0, !nosanitize !44
  %299 = load i32, ptr %6, align 4, !tbaa !71
  %300 = zext i32 %299 to i64
  %301 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %298, i64 %300), !nosanitize !44
  %302 = extractvalue { i64, i1 } %301, 1, !nosanitize !44
  br i1 %302, label %.loopexit61, label %303, !prof !45, !nosanitize !44

.loopexit61:                                      ; preds = %297, %43
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

303:                                              ; preds = %297
  %304 = extractvalue { i64, i1 } %301, 0, !nosanitize !44
  %305 = trunc i64 %304 to i32
  %306 = load i32, ptr %4, align 8, !tbaa !31
  %307 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %306, i32 262), !nosanitize !44
  %308 = extractvalue { i32, i1 } %307, 1, !nosanitize !44
  br i1 %308, label %.loopexit62, label %309, !prof !45, !nosanitize !44

.loopexit62:                                      ; preds = %303, %49
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

309:                                              ; preds = %303
  %310 = extractvalue { i32, i1 } %307, 0, !nosanitize !44
  %311 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.fr, i32 %310), !nosanitize !44
  %312 = extractvalue { i32, i1 } %311, 1, !nosanitize !44
  br i1 %312, label %.loopexit63, label %313, !prof !45, !nosanitize !44

.loopexit63:                                      ; preds = %309, %55
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

313:                                              ; preds = %309
  %314 = extractvalue { i32, i1 } %311, 0, !nosanitize !44
  %315 = icmp ult i32 %299, %314
  br i1 %315, label %409, label %316

316:                                              ; preds = %313
  %317 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr, i32 %305), !nosanitize !44
  %318 = extractvalue { i32, i1 } %317, 1, !nosanitize !44
  br i1 %318, label %.loopexit64, label %319, !prof !45, !nosanitize !44

.loopexit64:                                      ; preds = %316, %62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

319:                                              ; preds = %316
  %320 = extractvalue { i32, i1 } %317, 0, !nosanitize !44
  %321 = load ptr, ptr %7, align 8, !tbaa !34
  %322 = getelementptr inbounds nuw i8, ptr %321, i64 %37
  %323 = zext i32 %320 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %321, ptr nonnull align 1 %322, i64 %323, i1 false)
  %324 = load i32, ptr %8, align 8, !tbaa !81
  %325 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %324, i32 %.fr), !nosanitize !44
  %326 = extractvalue { i32, i1 } %325, 1, !nosanitize !44
  br i1 %326, label %.loopexit65, label %327, !prof !45, !nosanitize !44

.loopexit65:                                      ; preds = %319, %65
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

327:                                              ; preds = %319
  %328 = extractvalue { i32, i1 } %325, 0, !nosanitize !44
  store i32 %328, ptr %8, align 8, !tbaa !81
  %329 = load i32, ptr %6, align 4, !tbaa !71
  %330 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %329, i32 %.fr), !nosanitize !44
  %331 = extractvalue { i32, i1 } %330, 1, !nosanitize !44
  br i1 %331, label %.loopexit66, label %332, !prof !45, !nosanitize !44

.loopexit66:                                      ; preds = %332, %327, %78, %73
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

332:                                              ; preds = %327
  %333 = extractvalue { i32, i1 } %330, 0, !nosanitize !44
  store i32 %333, ptr %6, align 4, !tbaa !71
  %334 = load i64, ptr %9, align 8, !tbaa !72
  %335 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %334, i64 %37), !nosanitize !44
  %336 = extractvalue { i64, i1 } %335, 1, !nosanitize !44
  br i1 %336, label %.loopexit66, label %337, !prof !45, !nosanitize !44

337:                                              ; preds = %332
  %338 = extractvalue { i64, i1 } %335, 0, !nosanitize !44
  store i64 %338, ptr %9, align 8, !tbaa !72
  %339 = load i32, ptr %10, align 4, !tbaa !74
  %340 = icmp ugt i32 %339, %333
  br i1 %340, label %341, label %342

341:                                              ; preds = %337
  store i32 %333, ptr %10, align 4, !tbaa !74
  br label %342

342:                                              ; preds = %341, %337
  %343 = load i32, ptr %4, align 8, !tbaa !31
  %344 = load i32, ptr %11, align 4, !tbaa !36
  %345 = load ptr, ptr %12, align 8, !tbaa !37
  %346 = zext i32 %344 to i64
  %347 = getelementptr inbounds nuw [2 x i8], ptr %345, i64 %346
  %348 = add i32 %344, -1
  %349 = tail call i32 @llvm.umin.i32(i32 %344, i32 %348)
  %min.iters.check345 = icmp ult i32 %349, 8
  br i1 %min.iters.check345, label %scalar.ph344.preheader, label %vector.ph346

vector.ph346:                                     ; preds = %342
  %umin343 = zext i32 %349 to i64
  %350 = add nuw nsw i64 %umin343, 1
  %n.mod.vf347 = and i64 %350, 7
  %351 = icmp eq i64 %n.mod.vf347, 0
  %352 = select i1 %351, i64 8, i64 %n.mod.vf347
  %n.vec348 = sub nsw i64 %350, %352
  %353 = mul nsw i64 %n.vec348, -2
  %354 = getelementptr i8, ptr %347, i64 %353
  %.cast349 = trunc i64 %n.vec348 to i32
  %355 = sub i32 %344, %.cast349
  %broadcast.splatinsert350 = insertelement <8 x i32> poison, i32 %343, i64 0
  %356 = shufflevector <8 x i32> %broadcast.splatinsert350, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body352

vector.body352:                                   ; preds = %vector.body352, %vector.ph346
  %index353 = phi i64 [ 0, %vector.ph346 ], [ %index.next359, %vector.body352 ]
  %offset.idx354 = mul i64 %index353, -2
  %next.gep355 = getelementptr i8, ptr %347, i64 %offset.idx354
  %357 = getelementptr inbounds i8, ptr %next.gep355, i64 -16
  %wide.load356 = load <8 x i16>, ptr %357, align 2, !tbaa !60
  %358 = zext <8 x i16> %wide.load356 to <8 x i32>
  %359 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %358, <8 x i32> %356)
  %reverse358 = trunc nuw <8 x i32> %359 to <8 x i16>
  store <8 x i16> %reverse358, ptr %357, align 2, !tbaa !60
  %index.next359 = add nuw i64 %index353, 8
  %360 = icmp eq i64 %index.next359, %n.vec348
  br i1 %360, label %scalar.ph344.preheader, label %vector.body352, !llvm.loop !161

scalar.ph344.preheader:                           ; preds = %vector.body352, %342
  %.ph372 = phi ptr [ %347, %342 ], [ %354, %vector.body352 ]
  %.ph373 = phi i32 [ %344, %342 ], [ %355, %vector.body352 ]
  br label %scalar.ph344

scalar.ph344:                                     ; preds = %scalar.ph344.preheader, %370
  %361 = phi ptr [ %363, %370 ], [ %.ph372, %scalar.ph344.preheader ]
  %362 = phi i32 [ %371, %370 ], [ %.ph373, %scalar.ph344.preheader ]
  %363 = getelementptr inbounds i8, ptr %361, i64 -2
  %364 = load i16, ptr %363, align 2, !tbaa !60
  %365 = zext i16 %364 to i32
  %366 = tail call i32 @llvm.usub.sat.i32(i32 %365, i32 %343)
  %367 = trunc nuw i32 %366 to i16
  store i16 %367, ptr %363, align 2, !tbaa !60
  %368 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %362, i32 1), !nosanitize !44
  %369 = extractvalue { i32, i1 } %368, 1, !nosanitize !44
  br i1 %369, label %.loopexit50, label %370, !prof !45, !nosanitize !44

.loopexit50:                                      ; preds = %scalar.ph344, %scalar.ph304
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

370:                                              ; preds = %scalar.ph344
  %371 = extractvalue { i32, i1 } %368, 0, !nosanitize !44
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %scalar.ph344, !llvm.loop !162

373:                                              ; preds = %370
  %374 = load ptr, ptr %13, align 8, !tbaa !35
  %375 = zext i32 %343 to i64
  %376 = getelementptr inbounds nuw [2 x i8], ptr %374, i64 %375
  %377 = add i32 %343, -1
  %378 = tail call i32 @llvm.umin.i32(i32 %343, i32 %377)
  %min.iters.check325 = icmp ult i32 %378, 8
  br i1 %min.iters.check325, label %scalar.ph324.preheader, label %vector.ph326

vector.ph326:                                     ; preds = %373
  %umin323 = zext i32 %378 to i64
  %379 = add nuw nsw i64 %umin323, 1
  %n.mod.vf327 = and i64 %379, 7
  %380 = icmp eq i64 %n.mod.vf327, 0
  %381 = select i1 %380, i64 8, i64 %n.mod.vf327
  %n.vec328 = sub nsw i64 %379, %381
  %382 = mul nsw i64 %n.vec328, -2
  %383 = getelementptr i8, ptr %376, i64 %382
  %.cast329 = trunc i64 %n.vec328 to i32
  %384 = sub i32 %343, %.cast329
  %broadcast.splatinsert330 = insertelement <8 x i32> poison, i32 %343, i64 0
  %385 = shufflevector <8 x i32> %broadcast.splatinsert330, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph326
  %index333 = phi i64 [ 0, %vector.ph326 ], [ %index.next339, %vector.body332 ]
  %offset.idx334 = mul i64 %index333, -2
  %next.gep335 = getelementptr i8, ptr %376, i64 %offset.idx334
  %386 = getelementptr inbounds i8, ptr %next.gep335, i64 -16
  %wide.load336 = load <8 x i16>, ptr %386, align 2, !tbaa !60
  %387 = zext <8 x i16> %wide.load336 to <8 x i32>
  %388 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %387, <8 x i32> %385)
  %reverse338 = trunc nuw <8 x i32> %388 to <8 x i16>
  store <8 x i16> %reverse338, ptr %386, align 2, !tbaa !60
  %index.next339 = add nuw i64 %index333, 8
  %389 = icmp eq i64 %index.next339, %n.vec328
  br i1 %389, label %scalar.ph324.preheader, label %vector.body332, !llvm.loop !163

scalar.ph324.preheader:                           ; preds = %vector.body332, %373
  %.ph369 = phi ptr [ %376, %373 ], [ %383, %vector.body332 ]
  %.ph370 = phi i32 [ %343, %373 ], [ %384, %vector.body332 ]
  br label %scalar.ph324

scalar.ph324:                                     ; preds = %scalar.ph324.preheader, %399
  %390 = phi ptr [ %392, %399 ], [ %.ph369, %scalar.ph324.preheader ]
  %391 = phi i32 [ %400, %399 ], [ %.ph370, %scalar.ph324.preheader ]
  %392 = getelementptr inbounds i8, ptr %390, i64 -2
  %393 = load i16, ptr %392, align 2, !tbaa !60
  %394 = zext i16 %393 to i32
  %395 = tail call i32 @llvm.usub.sat.i32(i32 %394, i32 %343)
  %396 = trunc nuw i32 %395 to i16
  store i16 %396, ptr %392, align 2, !tbaa !60
  %397 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %391, i32 1), !nosanitize !44
  %398 = extractvalue { i32, i1 } %397, 1, !nosanitize !44
  br i1 %398, label %.loopexit49, label %399, !prof !45, !nosanitize !44

.loopexit49:                                      ; preds = %scalar.ph324, %scalar.ph
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

399:                                              ; preds = %scalar.ph324
  %400 = extractvalue { i32, i1 } %397, 0, !nosanitize !44
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %scalar.ph324, !llvm.loop !164

402:                                              ; preds = %399
  store i32 1, ptr %14, align 8, !tbaa !61
  %403 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %305, i32 %.fr), !nosanitize !44
  %404 = extractvalue { i32, i1 } %403, 1, !nosanitize !44
  br i1 %404, label %405, label %406, !prof !45, !nosanitize !44

405:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

406:                                              ; preds = %402
  %407 = extractvalue { i32, i1 } %403, 0, !nosanitize !44
  %408 = load i32, ptr %3, align 4, !tbaa !73
  br label %409

409:                                              ; preds = %406, %313
  %410 = phi i32 [ %408, %406 ], [ %292, %313 ]
  %411 = phi i32 [ %333, %406 ], [ %299, %313 ]
  %412 = phi i32 [ %407, %406 ], [ %305, %313 ]
  %413 = load ptr, ptr %0, align 8, !tbaa !19
  %414 = getelementptr inbounds nuw i8, ptr %413, i64 8
  %415 = load i32, ptr %414, align 8, !tbaa !79
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %.loopexit67, label %417

417:                                              ; preds = %409
  %418 = load ptr, ptr %7, align 8, !tbaa !34
  %419 = zext i32 %411 to i64
  %420 = getelementptr inbounds nuw i8, ptr %418, i64 %419
  %421 = zext i32 %410 to i64
  %422 = getelementptr inbounds nuw i8, ptr %420, i64 %421
  %423 = tail call i32 @llvm.umin.i32(i32 %415, i32 %412)
  %424 = icmp eq i32 %412, 0
  br i1 %424, label %451, label %425

425:                                              ; preds = %417
  %426 = sub i32 %415, %423
  store i32 %426, ptr %414, align 8, !tbaa !79
  %427 = load ptr, ptr %413, align 8, !tbaa !80
  %428 = zext i32 %423 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %422, ptr align 1 %427, i64 %428, i1 false)
  %429 = getelementptr inbounds nuw i8, ptr %413, i64 56
  %430 = load ptr, ptr %429, align 8, !tbaa !18
  %431 = getelementptr inbounds nuw i8, ptr %430, i64 48
  %432 = load i32, ptr %431, align 8, !tbaa !29
  switch i32 %432, label %441 [
    i32 1, label %433
    i32 2, label %437
  ]

433:                                              ; preds = %425
  %434 = getelementptr inbounds nuw i8, ptr %413, i64 96
  %435 = load i64, ptr %434, align 8, !tbaa !57
  %436 = tail call i64 @adler32(i64 noundef %435, ptr noundef %422, i32 noundef %423) #11
  store i64 %436, ptr %434, align 8, !tbaa !57
  br label %441

437:                                              ; preds = %425
  %438 = getelementptr inbounds nuw i8, ptr %413, i64 96
  %439 = load i64, ptr %438, align 8, !tbaa !57
  %440 = tail call i64 @crc32(i64 noundef %439, ptr noundef %422, i32 noundef %423) #11
  store i64 %440, ptr %438, align 8, !tbaa !57
  br label %441

441:                                              ; preds = %437, %433, %425
  %442 = load ptr, ptr %413, align 8, !tbaa !80
  %443 = getelementptr inbounds nuw i8, ptr %442, i64 %428
  store ptr %443, ptr %413, align 8, !tbaa !80
  %444 = getelementptr inbounds nuw i8, ptr %413, i64 16
  %445 = load i64, ptr %444, align 8, !tbaa !53
  %446 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %445, i64 %428), !nosanitize !44
  %447 = extractvalue { i64, i1 } %446, 1, !nosanitize !44
  br i1 %447, label %.loopexit68, label %448, !prof !45, !nosanitize !44

.loopexit68:                                      ; preds = %441, %183
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

448:                                              ; preds = %441
  %449 = extractvalue { i64, i1 } %446, 0, !nosanitize !44
  store i64 %449, ptr %444, align 8, !tbaa !53
  %450 = load i32, ptr %3, align 4, !tbaa !73
  br label %451

451:                                              ; preds = %448, %417
  %452 = phi i32 [ %410, %417 ], [ %450, %448 ]
  %453 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %452, i32 %423), !nosanitize !44
  %454 = extractvalue { i32, i1 } %453, 1, !nosanitize !44
  br i1 %454, label %.loopexit69, label %455, !prof !45, !nosanitize !44

.loopexit69:                                      ; preds = %451, %193
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

455:                                              ; preds = %451
  %456 = extractvalue { i32, i1 } %453, 0, !nosanitize !44
  store i32 %456, ptr %3, align 4, !tbaa !73
  %457 = load i32, ptr %10, align 4, !tbaa !74
  %458 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %456, i32 %457), !nosanitize !44
  %459 = extractvalue { i32, i1 } %458, 1, !nosanitize !44
  br i1 %459, label %.loopexit70, label %460, !prof !45, !nosanitize !44

.loopexit70:                                      ; preds = %455, %197
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

460:                                              ; preds = %455
  %461 = extractvalue { i32, i1 } %458, 0, !nosanitize !44
  %462 = icmp ugt i32 %461, 2
  br i1 %462, label %463, label %.loopexit

463:                                              ; preds = %460
  %464 = load i32, ptr %6, align 4, !tbaa !71
  %.fr44 = freeze i32 %464
  %465 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr44, i32 %457), !nosanitize !44
  %466 = extractvalue { i32, i1 } %465, 0, !nosanitize !44
  %467 = extractvalue { i32, i1 } %465, 1, !nosanitize !44
  br i1 %467, label %.loopexit71, label %468, !prof !45, !nosanitize !44

.loopexit71:                                      ; preds = %463, %205
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

468:                                              ; preds = %463
  %469 = load ptr, ptr %7, align 8, !tbaa !34
  %470 = zext i32 %466 to i64
  %471 = getelementptr inbounds nuw i8, ptr %469, i64 %470
  %472 = load i8, ptr %471, align 1, !tbaa !5
  %473 = zext i8 %472 to i32
  store i32 %473, ptr %15, align 8, !tbaa !78
  %474 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %466, i32 1), !nosanitize !44
  %475 = extractvalue { i32, i1 } %474, 1, !nosanitize !44
  br i1 %475, label %.loopexit72, label %476, !prof !45, !nosanitize !44

.loopexit72:                                      ; preds = %468, %210
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

476:                                              ; preds = %468
  %477 = extractvalue { i32, i1 } %474, 0, !nosanitize !44
  %478 = load i32, ptr %16, align 8, !tbaa !52
  %479 = shl i32 %473, %478
  %480 = zext i32 %477 to i64
  %481 = getelementptr inbounds nuw i8, ptr %469, i64 %480
  %482 = load i8, ptr %481, align 1, !tbaa !5
  %483 = zext i8 %482 to i32
  %484 = xor i32 %479, %483
  %485 = load i32, ptr %17, align 4, !tbaa !51
  %486 = and i32 %484, %485
  store i32 %486, ptr %15, align 8, !tbaa !78
  %mv.h = icmp sgt i32 %.fr44, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %476, %490
  %indvars.iv = phi i64 [ %indvars.iv.next, %490 ], [ %470, %476 ]
  %487 = phi i32 [ %499, %490 ], [ %486, %476 ]
  %488 = phi i32 [ %510, %490 ], [ %457, %476 ]
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %.loopexit, label %490

490:                                              ; preds = %.mv.ph.mv.fast
  %491 = shl i32 %487, %478
  %492 = trunc nuw i64 %indvars.iv to i32
  %493 = add nuw i64 %indvars.iv, 2
  %494 = and i64 %493, 4294967295
  %495 = getelementptr inbounds nuw i8, ptr %469, i64 %494
  %496 = load i8, ptr %495, align 1, !tbaa !5
  %497 = zext i8 %496 to i32
  %498 = xor i32 %491, %497
  %499 = and i32 %498, %485
  store i32 %499, ptr %15, align 8, !tbaa !78
  %500 = load ptr, ptr %12, align 8, !tbaa !37
  %501 = zext i32 %499 to i64
  %502 = getelementptr inbounds nuw [2 x i8], ptr %500, i64 %501
  %503 = load i16, ptr %502, align 2, !tbaa !60
  %504 = load ptr, ptr %13, align 8, !tbaa !35
  %505 = load i32, ptr %18, align 8, !tbaa !32
  %506 = and i32 %505, %492
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds nuw [2 x i8], ptr %504, i64 %507
  store i16 %503, ptr %508, align 2, !tbaa !60
  %509 = trunc i64 %indvars.iv to i16
  store i16 %509, ptr %502, align 2, !tbaa !60
  %510 = add i32 %488, -1
  store i32 %510, ptr %10, align 4, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %511 = add i32 %510, %456
  %512 = icmp ult i32 %511, 3
  br i1 %512, label %.loopexit, label %.mv.ph.mv.fast, !llvm.loop !89

.mv.ph:                                           ; preds = %476, %520
  %513 = phi i32 [ %529, %520 ], [ %486, %476 ]
  %514 = phi i32 [ %540, %520 ], [ %457, %476 ]
  %515 = phi i32 [ %541, %520 ], [ %466, %476 ]
  %516 = icmp eq i32 %514, 0
  br i1 %516, label %.loopexit, label %517

517:                                              ; preds = %.mv.ph
  %518 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %515, i32 3), !nosanitize !44
  %519 = extractvalue { i32, i1 } %518, 1, !nosanitize !44
  br i1 %519, label %.loopexit48, label %520, !prof !45, !nosanitize !44

.loopexit48:                                      ; preds = %517, %233
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

520:                                              ; preds = %517
  %521 = shl i32 %513, %478
  %522 = extractvalue { i32, i1 } %518, 0, !nosanitize !44
  %523 = add i32 %522, -1
  %524 = zext i32 %523 to i64
  %525 = getelementptr inbounds nuw i8, ptr %469, i64 %524
  %526 = load i8, ptr %525, align 1, !tbaa !5
  %527 = zext i8 %526 to i32
  %528 = xor i32 %521, %527
  %529 = and i32 %528, %485
  store i32 %529, ptr %15, align 8, !tbaa !78
  %530 = load ptr, ptr %12, align 8, !tbaa !37
  %531 = zext i32 %529 to i64
  %532 = getelementptr inbounds nuw [2 x i8], ptr %530, i64 %531
  %533 = load i16, ptr %532, align 2, !tbaa !60
  %534 = load ptr, ptr %13, align 8, !tbaa !35
  %535 = load i32, ptr %18, align 8, !tbaa !32
  %536 = and i32 %535, %515
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds nuw [2 x i8], ptr %534, i64 %537
  store i16 %533, ptr %538, align 2, !tbaa !60
  %539 = trunc i32 %515 to i16
  store i16 %539, ptr %532, align 2, !tbaa !60
  %540 = add i32 %514, -1
  store i32 %540, ptr %10, align 4, !tbaa !74
  %541 = add nuw i32 %515, 1
  %542 = add i32 %540, %456
  %543 = icmp ult i32 %542, 3
  br i1 %543, label %.loopexit, label %.mv.ph, !llvm.loop !89

.loopexit:                                        ; preds = %.mv.ph, %520, %.mv.ph.mv.fast, %490, %460
  %544 = icmp ult i32 %456, 262
  br i1 %544, label %545, label %.loopexit67

545:                                              ; preds = %.loopexit
  %546 = load ptr, ptr %0, align 8, !tbaa !19
  %547 = getelementptr inbounds nuw i8, ptr %546, i64 8
  %548 = load i32, ptr %547, align 8, !tbaa !79
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %.loopexit67, label %.mv.ph3, !llvm.loop !90

.loopexit67:                                      ; preds = %545, %.loopexit, %409, %261, %.loopexit.mv.fast, %151
  %550 = phi i32 [ %198, %261 ], [ %152, %151 ], [ %198, %.loopexit.mv.fast ], [ %410, %409 ], [ %456, %.loopexit ], [ %456, %545 ]
  %551 = load i64, ptr %19, align 8, !tbaa !38
  %552 = load i64, ptr %5, align 8, !tbaa !59
  %553 = icmp ult i64 %551, %552
  br i1 %553, label %554, label %589

554:                                              ; preds = %.loopexit67
  %555 = load i32, ptr %6, align 4, !tbaa !71
  %556 = zext i32 %555 to i64
  %557 = zext i32 %550 to i64
  %558 = add nuw nsw i64 %556, %557
  %559 = icmp ult i64 %551, %558
  br i1 %559, label %560, label %570

560:                                              ; preds = %554
  %561 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %552, i64 %558), !nosanitize !44
  %562 = extractvalue { i64, i1 } %561, 1, !nosanitize !44
  br i1 %562, label %563, label %564, !prof !45, !nosanitize !44

563:                                              ; preds = %560
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

564:                                              ; preds = %560
  %565 = extractvalue { i64, i1 } %561, 0, !nosanitize !44
  %566 = tail call i64 @llvm.umin.i64(i64 %565, i64 258)
  %567 = load ptr, ptr %7, align 8, !tbaa !34
  %568 = getelementptr inbounds nuw i8, ptr %567, i64 %558
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %568, i8 0, i64 %566, i1 false)
  %569 = add nuw nsw i64 %566, %558
  br label %586

570:                                              ; preds = %554
  %571 = add nuw nsw i64 %558, 258
  %572 = icmp ult i64 %551, %571
  br i1 %572, label %573, label %589

573:                                              ; preds = %570
  %574 = sub nuw nsw i64 %571, %551
  %575 = sub i64 %552, %551
  %576 = tail call i64 @llvm.umin.i64(i64 %574, i64 %575)
  %577 = load ptr, ptr %7, align 8, !tbaa !34
  %578 = getelementptr inbounds nuw i8, ptr %577, i64 %551
  %579 = and i64 %576, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %578, i8 0, i64 %579, i1 false)
  %580 = load i64, ptr %19, align 8, !tbaa !38
  %581 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %580, i64 %576), !nosanitize !44
  %582 = extractvalue { i64, i1 } %581, 1, !nosanitize !44
  br i1 %582, label %583, label %584, !prof !45, !nosanitize !44

583:                                              ; preds = %573
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

584:                                              ; preds = %573
  %585 = extractvalue { i64, i1 } %581, 0, !nosanitize !44
  br label %586

586:                                              ; preds = %584, %564
  %587 = phi i64 [ %569, %564 ], [ %585, %584 ]
  store i64 %587, ptr %19, align 8, !tbaa !38
  %588 = load i32, ptr %3, align 4, !tbaa !73
  br label %589

589:                                              ; preds = %586, %570, %.loopexit67
  %590 = phi i32 [ %550, %.loopexit67 ], [ %550, %570 ], [ %588, %586 ]
  %591 = icmp ult i32 %590, 262
  %592 = and i1 %20, %591
  br i1 %592, label %.loopexit87, label %593

593:                                              ; preds = %589
  %594 = icmp eq i32 %590, 0
  br i1 %594, label %1093, label %595

595:                                              ; preds = %593
  %596 = icmp ugt i32 %590, 2
  br i1 %596, label %597, label %798

597:                                              ; preds = %595, %32
  %598 = phi i32 [ %590, %595 ], [ %33, %32 ]
  %599 = load i32, ptr %6, align 4, !tbaa !71
  %600 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %599, i32 2), !nosanitize !44
  %601 = extractvalue { i32, i1 } %600, 1, !nosanitize !44
  br i1 %601, label %602, label %603, !prof !45, !nosanitize !44

602:                                              ; preds = %597
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

603:                                              ; preds = %597
  %604 = extractvalue { i32, i1 } %600, 0, !nosanitize !44
  %605 = load ptr, ptr %7, align 8, !tbaa !34
  %606 = load i32, ptr %15, align 8, !tbaa !78
  %607 = load i32, ptr %16, align 8, !tbaa !52
  %608 = shl i32 %606, %607
  %609 = zext i32 %604 to i64
  %610 = getelementptr inbounds nuw i8, ptr %605, i64 %609
  %611 = load i8, ptr %610, align 1, !tbaa !5
  %612 = zext i8 %611 to i32
  %613 = xor i32 %608, %612
  %614 = load i32, ptr %17, align 4, !tbaa !51
  %615 = and i32 %613, %614
  store i32 %615, ptr %15, align 8, !tbaa !78
  %616 = load ptr, ptr %12, align 8, !tbaa !37
  %617 = zext i32 %615 to i64
  %618 = getelementptr inbounds nuw [2 x i8], ptr %616, i64 %617
  %619 = load i16, ptr %618, align 2, !tbaa !60
  %620 = load ptr, ptr %13, align 8, !tbaa !35
  %621 = load i32, ptr %18, align 8, !tbaa !32
  %622 = and i32 %621, %599
  %623 = zext i32 %622 to i64
  %624 = getelementptr inbounds nuw [2 x i8], ptr %620, i64 %623
  store i16 %619, ptr %624, align 2, !tbaa !60
  %625 = zext i16 %619 to i32
  %626 = trunc i32 %599 to i16
  store i16 %626, ptr %618, align 2, !tbaa !60
  %627 = icmp eq i16 %619, 0
  br i1 %627, label %798, label %628

628:                                              ; preds = %603
  %629 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %599, i32 %625), !nosanitize !44
  %630 = extractvalue { i32, i1 } %629, 0, !nosanitize !44
  %631 = extractvalue { i32, i1 } %629, 1, !nosanitize !44
  br i1 %631, label %632, label %633, !prof !45, !nosanitize !44

632:                                              ; preds = %628
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

633:                                              ; preds = %628
  %634 = load i32, ptr %4, align 8, !tbaa !31
  %635 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %634, i32 262), !nosanitize !44
  %636 = extractvalue { i32, i1 } %635, 1, !nosanitize !44
  br i1 %636, label %637, label %638, !prof !45, !nosanitize !44

637:                                              ; preds = %633
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

638:                                              ; preds = %633
  %639 = extractvalue { i32, i1 } %635, 0, !nosanitize !44
  %640 = icmp ugt i32 %630, %639
  br i1 %640, label %798, label %641

641:                                              ; preds = %638
  %642 = zext i32 %599 to i64
  %643 = getelementptr inbounds nuw i8, ptr %605, i64 %642
  %644 = load i32, ptr %21, align 8, !tbaa !75
  %645 = tail call i32 @llvm.usub.sat.i32(i32 %599, i32 %639)
  %646 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %644, i32 -1)
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !44
  br i1 %647, label %.loopexit59, label %648, !prof !45, !nosanitize !44

.loopexit59:                                      ; preds = %641, %.split.loop.exit, %679
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

648:                                              ; preds = %641
  %649 = load i32, ptr %22, align 8, !tbaa !68
  %650 = load i32, ptr %23, align 4, !tbaa !70
  %651 = getelementptr inbounds nuw i8, ptr %643, i64 258
  %652 = extractvalue { i32, i1 } %646, 0, !nosanitize !44
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i8, ptr %643, i64 %653
  %655 = load i8, ptr %654, align 1, !tbaa !5
  %656 = sext i32 %644 to i64
  %657 = getelementptr inbounds i8, ptr %643, i64 %656
  %658 = load i8, ptr %657, align 1, !tbaa !5
  %659 = load i32, ptr %24, align 4, !tbaa !66
  %660 = icmp ult i32 %644, %659
  %661 = lshr i32 %650, 2
  %662 = select i1 %660, i32 %650, i32 %661
  %663 = tail call i32 @llvm.umin.i32(i32 %649, i32 %598)
  %664 = getelementptr i8, ptr %643, i64 -1
  %665 = getelementptr inbounds nuw i8, ptr %643, i64 1
  %666 = ptrtoint ptr %651 to i64
  br label %667

667:                                              ; preds = %792, %648
  %668 = phi i32 [ %644, %648 ], [ %779, %792 ]
  %669 = phi i32 [ %662, %648 ], [ %793, %792 ]
  %670 = phi i32 [ %625, %648 ], [ %786, %792 ]
  %671 = phi i8 [ %655, %648 ], [ %780, %792 ]
  %672 = phi i8 [ %658, %648 ], [ %781, %792 ]
  %673 = zext nneg i32 %670 to i64
  %674 = getelementptr inbounds nuw i8, ptr %605, i64 %673
  %675 = sext i32 %668 to i64
  %676 = getelementptr inbounds i8, ptr %674, i64 %675
  %677 = load i8, ptr %676, align 1, !tbaa !5
  %678 = icmp eq i8 %677, %672
  br i1 %678, label %679, label %778

679:                                              ; preds = %667
  %680 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %668, i32 -1)
  %681 = extractvalue { i32, i1 } %680, 1, !nosanitize !44
  br i1 %681, label %.loopexit59, label %682, !prof !45, !nosanitize !44

682:                                              ; preds = %679
  %683 = extractvalue { i32, i1 } %680, 0, !nosanitize !44
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds i8, ptr %674, i64 %684
  %686 = load i8, ptr %685, align 1, !tbaa !5
  %687 = icmp eq i8 %686, %671
  br i1 %687, label %688, label %778

688:                                              ; preds = %682
  %689 = load i8, ptr %674, align 1, !tbaa !5
  %690 = load i8, ptr %643, align 1, !tbaa !5
  %691 = icmp eq i8 %689, %690
  br i1 %691, label %692, label %778

692:                                              ; preds = %688
  %693 = getelementptr inbounds nuw i8, ptr %674, i64 1
  %694 = load i8, ptr %693, align 1, !tbaa !5
  %695 = load i8, ptr %665, align 1, !tbaa !5
  %696 = icmp eq i8 %694, %695
  br i1 %696, label %697, label %778

697:                                              ; preds = %692
  %698 = getelementptr inbounds nuw i8, ptr %674, i64 2
  br label %699

699:                                              ; preds = %744, %697
  %700 = phi ptr [ %698, %697 ], [ %748, %744 ]
  %701 = phi i64 [ 2, %697 ], [ %745, %744 ]
  %702 = getelementptr inbounds nuw i8, ptr %643, i64 %701
  %703 = getelementptr inbounds nuw i8, ptr %702, i64 1
  %704 = load i8, ptr %703, align 1, !tbaa !5
  %705 = getelementptr inbounds nuw i8, ptr %700, i64 1
  %706 = load i8, ptr %705, align 1, !tbaa !5
  %707 = icmp eq i8 %704, %706
  br i1 %707, label %708, label %.split.loop.exit.split.loop.exit

708:                                              ; preds = %699
  %709 = getelementptr inbounds nuw i8, ptr %702, i64 2
  %710 = load i8, ptr %709, align 1, !tbaa !5
  %711 = getelementptr inbounds nuw i8, ptr %700, i64 2
  %712 = load i8, ptr %711, align 1, !tbaa !5
  %713 = icmp eq i8 %710, %712
  br i1 %713, label %714, label %.split.loop.exit.split.loop.exit241

714:                                              ; preds = %708
  %715 = getelementptr inbounds nuw i8, ptr %702, i64 3
  %716 = load i8, ptr %715, align 1, !tbaa !5
  %717 = getelementptr inbounds nuw i8, ptr %700, i64 3
  %718 = load i8, ptr %717, align 1, !tbaa !5
  %719 = icmp eq i8 %716, %718
  br i1 %719, label %720, label %.split.loop.exit.split.loop.exit243

720:                                              ; preds = %714
  %721 = getelementptr inbounds nuw i8, ptr %702, i64 4
  %722 = load i8, ptr %721, align 1, !tbaa !5
  %723 = getelementptr inbounds nuw i8, ptr %700, i64 4
  %724 = load i8, ptr %723, align 1, !tbaa !5
  %725 = icmp eq i8 %722, %724
  br i1 %725, label %726, label %.split.loop.exit.split.loop.exit245

726:                                              ; preds = %720
  %727 = getelementptr inbounds nuw i8, ptr %702, i64 5
  %728 = load i8, ptr %727, align 1, !tbaa !5
  %729 = getelementptr inbounds nuw i8, ptr %700, i64 5
  %730 = load i8, ptr %729, align 1, !tbaa !5
  %731 = icmp eq i8 %728, %730
  br i1 %731, label %732, label %.split.loop.exit.split.loop.exit247

732:                                              ; preds = %726
  %733 = getelementptr inbounds nuw i8, ptr %702, i64 6
  %734 = load i8, ptr %733, align 1, !tbaa !5
  %735 = getelementptr inbounds nuw i8, ptr %700, i64 6
  %736 = load i8, ptr %735, align 1, !tbaa !5
  %737 = icmp eq i8 %734, %736
  br i1 %737, label %738, label %.split.loop.exit.split.loop.exit249

738:                                              ; preds = %732
  %739 = getelementptr inbounds nuw i8, ptr %702, i64 7
  %740 = load i8, ptr %739, align 1, !tbaa !5
  %741 = getelementptr inbounds nuw i8, ptr %700, i64 7
  %742 = load i8, ptr %741, align 1, !tbaa !5
  %743 = icmp eq i8 %740, %742
  br i1 %743, label %744, label %.split.loop.exit.split.loop.exit251

744:                                              ; preds = %738
  %745 = add nuw nsw i64 %701, 8
  %746 = getelementptr inbounds nuw i8, ptr %643, i64 %745
  %747 = load i8, ptr %746, align 1, !tbaa !5
  %748 = getelementptr inbounds nuw i8, ptr %700, i64 8
  %749 = load i8, ptr %748, align 1, !tbaa !5
  %750 = icmp eq i8 %747, %749
  %751 = icmp samesign ult i64 %701, 250
  %752 = select i1 %750, i1 %751, i1 false
  br i1 %752, label %699, label %.split.loop.exit.split.loop.exit253, !llvm.loop !165

.split.loop.exit.split.loop.exit:                 ; preds = %699
  %753 = getelementptr inbounds nuw i8, ptr %702, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit241:              ; preds = %708
  %754 = getelementptr inbounds nuw i8, ptr %702, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit243:              ; preds = %714
  %755 = getelementptr inbounds nuw i8, ptr %702, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit245:              ; preds = %720
  %756 = getelementptr inbounds nuw i8, ptr %702, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit247:              ; preds = %726
  %757 = getelementptr inbounds nuw i8, ptr %702, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit249:              ; preds = %732
  %758 = getelementptr inbounds nuw i8, ptr %702, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit251:              ; preds = %738
  %759 = getelementptr inbounds nuw i8, ptr %702, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit253:              ; preds = %744
  %760 = getelementptr inbounds nuw i8, ptr %643, i64 %745
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit253, %.split.loop.exit.split.loop.exit251, %.split.loop.exit.split.loop.exit249, %.split.loop.exit.split.loop.exit247, %.split.loop.exit.split.loop.exit245, %.split.loop.exit.split.loop.exit243, %.split.loop.exit.split.loop.exit241, %.split.loop.exit.split.loop.exit
  %761 = phi ptr [ %753, %.split.loop.exit.split.loop.exit ], [ %754, %.split.loop.exit.split.loop.exit241 ], [ %755, %.split.loop.exit.split.loop.exit243 ], [ %756, %.split.loop.exit.split.loop.exit245 ], [ %757, %.split.loop.exit.split.loop.exit247 ], [ %758, %.split.loop.exit.split.loop.exit249 ], [ %759, %.split.loop.exit.split.loop.exit251 ], [ %760, %.split.loop.exit.split.loop.exit253 ]
  %762 = ptrtoint ptr %761 to i64
  %763 = sub i64 %666, %762
  %764 = trunc i64 %763 to i32
  %765 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %764), !nosanitize !44
  %766 = extractvalue { i32, i1 } %765, 0, !nosanitize !44
  %767 = extractvalue { i32, i1 } %765, 1, !nosanitize !44
  br i1 %767, label %.loopexit59, label %768, !prof !45, !nosanitize !44

768:                                              ; preds = %.split.loop.exit
  %769 = icmp sgt i32 %766, %668
  br i1 %769, label %770, label %778

770:                                              ; preds = %768
  store i32 %670, ptr %8, align 8, !tbaa !81
  %771 = icmp slt i32 %766, %663
  br i1 %771, label %772, label %795

772:                                              ; preds = %770
  %773 = sext i32 %766 to i64
  %774 = getelementptr i8, ptr %664, i64 %773
  %775 = load i8, ptr %774, align 1, !tbaa !5
  %776 = getelementptr inbounds i8, ptr %643, i64 %773
  %777 = load i8, ptr %776, align 1, !tbaa !5
  br label %778

778:                                              ; preds = %772, %768, %692, %688, %682, %667
  %779 = phi i32 [ %668, %667 ], [ %668, %682 ], [ %668, %688 ], [ %668, %692 ], [ %766, %772 ], [ %668, %768 ]
  %780 = phi i8 [ %671, %667 ], [ %671, %682 ], [ %671, %688 ], [ %671, %692 ], [ %775, %772 ], [ %671, %768 ]
  %781 = phi i8 [ %672, %667 ], [ %672, %682 ], [ %672, %688 ], [ %672, %692 ], [ %777, %772 ], [ %672, %768 ]
  %782 = and i32 %670, %621
  %783 = zext nneg i32 %782 to i64
  %784 = getelementptr inbounds nuw [2 x i8], ptr %620, i64 %783
  %785 = load i16, ptr %784, align 2, !tbaa !60
  %786 = zext i16 %785 to i32
  %787 = icmp ult i32 %645, %786
  br i1 %787, label %788, label %795

788:                                              ; preds = %778
  %789 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %669, i32 1), !nosanitize !44
  %790 = extractvalue { i32, i1 } %789, 1, !nosanitize !44
  br i1 %790, label %791, label %792, !prof !45, !nosanitize !44

791:                                              ; preds = %788
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

792:                                              ; preds = %788
  %793 = extractvalue { i32, i1 } %789, 0, !nosanitize !44
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %795, label %667, !llvm.loop !166

795:                                              ; preds = %792, %778, %770
  %796 = phi i32 [ %779, %792 ], [ %779, %778 ], [ %766, %770 ]
  %797 = tail call i32 @llvm.umin.i32(i32 %796, i32 %598)
  store i32 %797, ptr %25, align 8, !tbaa !76
  br label %800

798:                                              ; preds = %638, %603, %595
  %799 = load i32, ptr %25, align 8, !tbaa !76
  br label %800

800:                                              ; preds = %798, %795
  %801 = phi i32 [ %799, %798 ], [ %797, %795 ]
  %802 = icmp ugt i32 %801, 2
  br i1 %802, label %803, label %977

803:                                              ; preds = %800
  %804 = trunc i32 %801 to i8
  %805 = add i8 %804, -3
  %806 = load i32, ptr %6, align 4, !tbaa !71
  %807 = load i32, ptr %8, align 8, !tbaa !81
  %808 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %806, i32 %807), !nosanitize !44
  %809 = extractvalue { i32, i1 } %808, 1, !nosanitize !44
  br i1 %809, label %810, label %811, !prof !45, !nosanitize !44

810:                                              ; preds = %803
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

811:                                              ; preds = %803
  %812 = extractvalue { i32, i1 } %808, 0, !nosanitize !44
  %813 = trunc i32 %812 to i16
  %814 = load i32, ptr %27, align 4, !tbaa !144
  %815 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %814, i32 1), !nosanitize !44
  %816 = extractvalue { i32, i1 } %815, 1, !nosanitize !44
  br i1 %816, label %817, label %818, !prof !45, !nosanitize !44

817:                                              ; preds = %811
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

818:                                              ; preds = %811
  %819 = extractvalue { i32, i1 } %815, 0, !nosanitize !44
  %820 = load ptr, ptr %26, align 8, !tbaa !43
  %821 = trunc i32 %812 to i8
  store i32 %819, ptr %27, align 4, !tbaa !144
  %822 = zext i32 %814 to i64
  %823 = getelementptr inbounds nuw i8, ptr %820, i64 %822
  store i8 %821, ptr %823, align 1, !tbaa !5
  %824 = load i32, ptr %27, align 4, !tbaa !144
  %825 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %824, i32 1), !nosanitize !44
  %826 = extractvalue { i32, i1 } %825, 1, !nosanitize !44
  br i1 %826, label %827, label %828, !prof !45, !nosanitize !44

827:                                              ; preds = %818
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

828:                                              ; preds = %818
  %829 = extractvalue { i32, i1 } %825, 0, !nosanitize !44
  %830 = load ptr, ptr %26, align 8, !tbaa !43
  %831 = lshr i32 %812, 8
  %832 = trunc i32 %831 to i8
  store i32 %829, ptr %27, align 4, !tbaa !144
  %833 = zext i32 %824 to i64
  %834 = getelementptr inbounds nuw i8, ptr %830, i64 %833
  store i8 %832, ptr %834, align 1, !tbaa !5
  %835 = load i32, ptr %27, align 4, !tbaa !144
  %836 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %835, i32 1), !nosanitize !44
  %837 = extractvalue { i32, i1 } %836, 1, !nosanitize !44
  br i1 %837, label %838, label %839, !prof !45, !nosanitize !44

838:                                              ; preds = %828
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

839:                                              ; preds = %828
  %840 = extractvalue { i32, i1 } %836, 0, !nosanitize !44
  %841 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %840, ptr %27, align 4, !tbaa !144
  %842 = zext i32 %835 to i64
  %843 = getelementptr inbounds nuw i8, ptr %841, i64 %842
  store i8 %805, ptr %843, align 1, !tbaa !5
  %844 = add i16 %813, -1
  %845 = zext i8 %805 to i64
  %846 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %845
  %847 = load i8, ptr %846, align 1, !tbaa !5
  %848 = zext i8 %847 to i64
  %849 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %848
  %850 = getelementptr inbounds nuw i8, ptr %849, i64 1028
  %851 = load i16, ptr %850, align 4, !tbaa !5
  %852 = add i16 %851, 1
  store i16 %852, ptr %850, align 4, !tbaa !5
  %853 = icmp ult i16 %844, 256
  %854 = lshr i16 %844, 7
  %855 = add nuw nsw i16 %854, 256
  %856 = select i1 %853, i16 %844, i16 %855
  %857 = zext i16 %856 to i64
  %858 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %857
  %859 = load i8, ptr %858, align 1, !tbaa !5
  %860 = zext i8 %859 to i64
  %861 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %860
  %862 = load i16, ptr %861, align 4, !tbaa !5
  %863 = add i16 %862, 1
  store i16 %863, ptr %861, align 4, !tbaa !5
  %864 = load i32, ptr %27, align 4, !tbaa !144
  %865 = load i32, ptr %29, align 8, !tbaa !46
  %866 = icmp eq i32 %864, %865
  %867 = load i32, ptr %25, align 8, !tbaa !76
  %868 = load i32, ptr %3, align 4, !tbaa !73
  %869 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %868, i32 %867), !nosanitize !44
  %870 = extractvalue { i32, i1 } %869, 1, !nosanitize !44
  br i1 %870, label %871, label %872, !prof !45, !nosanitize !44

871:                                              ; preds = %839
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

872:                                              ; preds = %839
  %873 = extractvalue { i32, i1 } %869, 0, !nosanitize !44
  store i32 %873, ptr %3, align 4, !tbaa !73
  %874 = load i32, ptr %31, align 8, !tbaa !64
  %875 = icmp ule i32 %867, %874
  %876 = icmp ugt i32 %873, 2
  %877 = select i1 %875, i1 %876, i1 false
  br i1 %877, label %878, label %951

878:                                              ; preds = %872
  %879 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %867, i32 1), !nosanitize !44
  %880 = extractvalue { i32, i1 } %879, 1, !nosanitize !44
  br i1 %880, label %881, label %882, !prof !45, !nosanitize !44

881:                                              ; preds = %878
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

882:                                              ; preds = %878
  %883 = extractvalue { i32, i1 } %879, 0, !nosanitize !44
  store i32 %883, ptr %25, align 8, !tbaa !76
  %884 = load i32, ptr %6, align 4, !tbaa !71
  %885 = or i32 %884, %867
  %.fr46 = freeze i32 %885
  %mv.h9 = icmp sgt i32 %.fr46, -1
  br i1 %mv.h9, label %.mv.ph11.mv.fast.preheader, label %.mv.ph11.preheader

.mv.ph11.preheader:                               ; preds = %882
  %886 = xor i32 %884, -1
  %887 = add i32 %867, -2
  %umin = tail call i32 @llvm.umin.i32(i32 %883, i32 %887)
  %888 = freeze i32 %umin
  %889 = add i32 %884, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %889, i32 -2)
  %890 = xor i32 %884, -1
  %891 = add i32 %umax, %890
  %umin154 = tail call i32 @llvm.umin.i32(i32 %891, i32 %886)
  %umin155 = tail call i32 @llvm.umin.i32(i32 %888, i32 %umin154)
  %892 = icmp eq i32 %umin155, %886
  br i1 %892, label %946, label %.mv.ph11.preheader.split, !prof !45, !nosanitize !44

.mv.ph11.preheader.split:                         ; preds = %.mv.ph11.preheader
  %893 = icmp eq i32 %891, %umin155
  br i1 %893, label %.mv.ph11.preheader.split.split.us, label %.mv.ph11.preheader.split.split, !prof !45, !nosanitize !44

.mv.ph11.preheader.split.split.us:                ; preds = %.mv.ph11.preheader.split
  %894 = add i32 %884, 1
  store i32 %894, ptr %6, align 4, !tbaa !71
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.mv.ph11.preheader.split.split:                   ; preds = %.mv.ph11.preheader.split
  %.pre = load ptr, ptr %7, align 8, !tbaa !34
  %.pre164 = load i32, ptr %15, align 8, !tbaa !78
  %.pre165 = load i32, ptr %16, align 8, !tbaa !52
  %.pre166 = load i32, ptr %17, align 4, !tbaa !51
  %.pre167 = load ptr, ptr %12, align 8, !tbaa !37
  %.pre168 = load ptr, ptr %13, align 8, !tbaa !35
  %.pre169 = load i32, ptr %18, align 8, !tbaa !32
  br label %.mv.ph11

.mv.ph11.mv.fast.preheader:                       ; preds = %882
  %895 = load ptr, ptr %7, align 8, !tbaa !34
  %896 = load i32, ptr %16, align 8, !tbaa !52
  %897 = load i32, ptr %17, align 4, !tbaa !51
  %898 = load ptr, ptr %12, align 8, !tbaa !37
  %899 = load ptr, ptr %13, align 8, !tbaa !35
  %900 = load i32, ptr %18, align 8, !tbaa !32
  %.promoted = load i32, ptr %15, align 8, !tbaa !78
  br label %.mv.ph11.mv.fast

.mv.ph11.mv.fast:                                 ; preds = %.mv.ph11.mv.fast.preheader, %922
  %901 = phi i32 [ %912, %922 ], [ %.promoted, %.mv.ph11.mv.fast.preheader ]
  %902 = phi i32 [ %923, %922 ], [ %883, %.mv.ph11.mv.fast.preheader ]
  %903 = phi i32 [ %904, %922 ], [ %884, %.mv.ph11.mv.fast.preheader ]
  %904 = add i32 %903, 1
  store i32 %904, ptr %6, align 4, !tbaa !71
  %905 = add i32 %903, 3
  %906 = shl i32 %901, %896
  %907 = zext i32 %905 to i64
  %908 = getelementptr inbounds nuw i8, ptr %895, i64 %907
  %909 = load i8, ptr %908, align 1, !tbaa !5
  %910 = zext i8 %909 to i32
  %911 = xor i32 %906, %910
  %912 = and i32 %911, %897
  store i32 %912, ptr %15, align 8, !tbaa !78
  %913 = zext i32 %912 to i64
  %914 = getelementptr inbounds nuw [2 x i8], ptr %898, i64 %913
  %915 = load i16, ptr %914, align 2, !tbaa !60
  %916 = and i32 %900, %904
  %917 = zext i32 %916 to i64
  %918 = getelementptr inbounds nuw [2 x i8], ptr %899, i64 %917
  store i16 %915, ptr %918, align 2, !tbaa !60
  %919 = trunc i32 %904 to i16
  store i16 %919, ptr %914, align 2, !tbaa !60
  %920 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %902, i32 1), !nosanitize !44
  %921 = extractvalue { i32, i1 } %920, 1, !nosanitize !44
  br i1 %921, label %.loopexit55, label %922, !prof !45, !nosanitize !44

922:                                              ; preds = %.mv.ph11.mv.fast
  %923 = extractvalue { i32, i1 } %920, 0, !nosanitize !44
  store i32 %923, ptr %25, align 8, !tbaa !76
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %.loopexit56, label %.mv.ph11.mv.fast, !llvm.loop !167

.mv.ph11:                                         ; preds = %.mv.ph11.preheader.split.split, %947
  %925 = phi i32 [ %936, %947 ], [ %.pre164, %.mv.ph11.preheader.split.split ]
  %926 = phi i32 [ %948, %947 ], [ %883, %.mv.ph11.preheader.split.split ]
  %927 = phi i32 [ %928, %947 ], [ %884, %.mv.ph11.preheader.split.split ]
  %928 = add i32 %927, 1
  store i32 %928, ptr %6, align 4, !tbaa !71
  %929 = add i32 %927, 3
  %930 = shl i32 %925, %.pre165
  %931 = zext i32 %929 to i64
  %932 = getelementptr inbounds nuw i8, ptr %.pre, i64 %931
  %933 = load i8, ptr %932, align 1, !tbaa !5
  %934 = zext i8 %933 to i32
  %935 = xor i32 %930, %934
  %936 = and i32 %935, %.pre166
  store i32 %936, ptr %15, align 8, !tbaa !78
  %937 = zext i32 %936 to i64
  %938 = getelementptr inbounds nuw [2 x i8], ptr %.pre167, i64 %937
  %939 = load i16, ptr %938, align 2, !tbaa !60
  %940 = and i32 %.pre169, %928
  %941 = zext i32 %940 to i64
  %942 = getelementptr inbounds nuw [2 x i8], ptr %.pre168, i64 %941
  store i16 %939, ptr %942, align 2, !tbaa !60
  %943 = trunc i32 %928 to i16
  store i16 %943, ptr %938, align 2, !tbaa !60
  %944 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %926, i32 1), !nosanitize !44
  %945 = extractvalue { i32, i1 } %944, 1, !nosanitize !44
  br i1 %945, label %.loopexit55, label %947, !prof !45, !nosanitize !44

946:                                              ; preds = %.mv.ph11.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.loopexit55:                                      ; preds = %.mv.ph11, %.mv.ph11.mv.fast
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

947:                                              ; preds = %.mv.ph11
  %948 = extractvalue { i32, i1 } %944, 0, !nosanitize !44
  store i32 %948, ptr %25, align 8, !tbaa !76
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %.loopexit56, label %.mv.ph11, !llvm.loop !167

.loopexit56:                                      ; preds = %947, %922
  %.lcssa6 = phi i32 [ %904, %922 ], [ %928, %947 ]
  %950 = add nuw i32 %.lcssa6, 1
  store i32 %950, ptr %6, align 4, !tbaa !71
  br i1 %866, label %1028, label %.backedge

951:                                              ; preds = %872
  %952 = load i32, ptr %6, align 4, !tbaa !71
  %953 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %952, i32 %867), !nosanitize !44
  %954 = extractvalue { i32, i1 } %953, 1, !nosanitize !44
  br i1 %954, label %955, label %956, !prof !45, !nosanitize !44

955:                                              ; preds = %951
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

956:                                              ; preds = %951
  %957 = extractvalue { i32, i1 } %953, 0, !nosanitize !44
  store i32 %957, ptr %6, align 4, !tbaa !71
  store i32 0, ptr %25, align 8, !tbaa !76
  %958 = load ptr, ptr %7, align 8, !tbaa !34
  %959 = zext i32 %957 to i64
  %960 = getelementptr inbounds nuw i8, ptr %958, i64 %959
  %961 = load i8, ptr %960, align 1, !tbaa !5
  %962 = zext i8 %961 to i32
  store i32 %962, ptr %15, align 8, !tbaa !78
  %963 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %957, i32 1), !nosanitize !44
  %964 = extractvalue { i32, i1 } %963, 1, !nosanitize !44
  br i1 %964, label %965, label %966, !prof !45, !nosanitize !44

965:                                              ; preds = %956
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

966:                                              ; preds = %956
  %967 = extractvalue { i32, i1 } %963, 0, !nosanitize !44
  %968 = load i32, ptr %16, align 8, !tbaa !52
  %969 = shl i32 %962, %968
  %970 = zext i32 %967 to i64
  %971 = getelementptr inbounds nuw i8, ptr %958, i64 %970
  %972 = load i8, ptr %971, align 1, !tbaa !5
  %973 = zext i8 %972 to i32
  %974 = xor i32 %969, %973
  %975 = load i32, ptr %17, align 4, !tbaa !51
  %976 = and i32 %974, %975
  store i32 %976, ptr %15, align 8, !tbaa !78
  br i1 %866, label %1028, label %.backedge

977:                                              ; preds = %800
  %978 = load ptr, ptr %7, align 8, !tbaa !34
  %979 = load i32, ptr %6, align 4, !tbaa !71
  %980 = zext i32 %979 to i64
  %981 = getelementptr inbounds nuw i8, ptr %978, i64 %980
  %982 = load i8, ptr %981, align 1, !tbaa !5
  %983 = load i32, ptr %27, align 4, !tbaa !144
  %984 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %983, i32 1), !nosanitize !44
  %985 = extractvalue { i32, i1 } %984, 1, !nosanitize !44
  br i1 %985, label %986, label %987, !prof !45, !nosanitize !44

986:                                              ; preds = %977
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

987:                                              ; preds = %977
  %988 = extractvalue { i32, i1 } %984, 0, !nosanitize !44
  %989 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %988, ptr %27, align 4, !tbaa !144
  %990 = zext i32 %983 to i64
  %991 = getelementptr inbounds nuw i8, ptr %989, i64 %990
  store i8 0, ptr %991, align 1, !tbaa !5
  %992 = load i32, ptr %27, align 4, !tbaa !144
  %993 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %992, i32 1), !nosanitize !44
  %994 = extractvalue { i32, i1 } %993, 1, !nosanitize !44
  br i1 %994, label %995, label %996, !prof !45, !nosanitize !44

995:                                              ; preds = %987
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

996:                                              ; preds = %987
  %997 = extractvalue { i32, i1 } %993, 0, !nosanitize !44
  %998 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %997, ptr %27, align 4, !tbaa !144
  %999 = zext i32 %992 to i64
  %1000 = getelementptr inbounds nuw i8, ptr %998, i64 %999
  store i8 0, ptr %1000, align 1, !tbaa !5
  %1001 = load i32, ptr %27, align 4, !tbaa !144
  %1002 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1001, i32 1), !nosanitize !44
  %1003 = extractvalue { i32, i1 } %1002, 1, !nosanitize !44
  br i1 %1003, label %1004, label %1005, !prof !45, !nosanitize !44

1004:                                             ; preds = %996
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1005:                                             ; preds = %996
  %1006 = extractvalue { i32, i1 } %1002, 0, !nosanitize !44
  %1007 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %1006, ptr %27, align 4, !tbaa !144
  %1008 = zext i32 %1001 to i64
  %1009 = getelementptr inbounds nuw i8, ptr %1007, i64 %1008
  store i8 %982, ptr %1009, align 1, !tbaa !5
  %1010 = zext i8 %982 to i64
  %1011 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %1010
  %1012 = load i16, ptr %1011, align 4, !tbaa !5
  %1013 = add i16 %1012, 1
  store i16 %1013, ptr %1011, align 4, !tbaa !5
  %1014 = load i32, ptr %27, align 4, !tbaa !144
  %1015 = load i32, ptr %29, align 8, !tbaa !46
  %1016 = icmp eq i32 %1014, %1015
  %1017 = load i32, ptr %3, align 4, !tbaa !73
  %1018 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1017, i32 1), !nosanitize !44
  %1019 = extractvalue { i32, i1 } %1018, 1, !nosanitize !44
  br i1 %1019, label %.loopexit89, label %1020, !prof !45, !nosanitize !44

.loopexit89:                                      ; preds = %1036, %1005, %1172, %1104
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1020:                                             ; preds = %1005
  %1021 = extractvalue { i32, i1 } %1018, 0, !nosanitize !44
  store i32 %1021, ptr %3, align 4, !tbaa !73
  %1022 = load i32, ptr %6, align 4, !tbaa !71
  %1023 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1022, i32 1), !nosanitize !44
  %1024 = extractvalue { i32, i1 } %1023, 1, !nosanitize !44
  br i1 %1024, label %1025, label %1026, !prof !45, !nosanitize !44

1025:                                             ; preds = %1020
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1026:                                             ; preds = %1020
  %1027 = extractvalue { i32, i1 } %1023, 0, !nosanitize !44
  store i32 %1027, ptr %6, align 4, !tbaa !71
  br i1 %1016, label %1028, label %.backedge

1028:                                             ; preds = %1026, %966, %.loopexit56
  %1029 = phi i32 [ %957, %966 ], [ %950, %.loopexit56 ], [ %1027, %1026 ]
  %1030 = load i64, ptr %9, align 8, !tbaa !72
  %1031 = icmp sgt i64 %1030, -1
  br i1 %1031, label %1032, label %1036

1032:                                             ; preds = %1028
  %1033 = load ptr, ptr %7, align 8, !tbaa !34
  %1034 = and i64 %1030, 4294967295
  %1035 = getelementptr inbounds nuw i8, ptr %1033, i64 %1034
  br label %1036

1036:                                             ; preds = %1032, %1028
  %1037 = phi ptr [ %1035, %1032 ], [ null, %1028 ]
  %1038 = zext i32 %1029 to i64
  %1039 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1038, i64 %1030), !nosanitize !44
  %1040 = extractvalue { i64, i1 } %1039, 1, !nosanitize !44
  br i1 %1040, label %.loopexit89, label %1041, !prof !45, !nosanitize !44

1041:                                             ; preds = %1036
  %1042 = extractvalue { i64, i1 } %1039, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1037, i64 noundef %1042, i32 noundef 0) #11
  %1043 = load i32, ptr %6, align 4, !tbaa !71
  %1044 = zext i32 %1043 to i64
  store i64 %1044, ptr %9, align 8, !tbaa !72
  %1045 = load ptr, ptr %0, align 8, !tbaa !19
  %1046 = getelementptr inbounds nuw i8, ptr %1045, i64 56
  %1047 = load ptr, ptr %1046, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1047) #11
  %1048 = getelementptr inbounds nuw i8, ptr %1047, i64 40
  %1049 = load i64, ptr %1048, align 8, !tbaa !55
  %1050 = getelementptr inbounds nuw i8, ptr %1045, i64 32
  %1051 = load i32, ptr %1050, align 8, !tbaa !109
  %1052 = zext i32 %1051 to i64
  %1053 = tail call i64 @llvm.umin.i64(i64 %1049, i64 %1052)
  %1054 = trunc nuw i64 %1053 to i32
  %1055 = icmp eq i64 %1053, 0
  br i1 %1055, label %1088, label %1056

1056:                                             ; preds = %1041
  %1057 = getelementptr inbounds nuw i8, ptr %1045, i64 24
  %1058 = load ptr, ptr %1057, align 8, !tbaa !108
  %1059 = getelementptr inbounds nuw i8, ptr %1047, i64 32
  %1060 = load ptr, ptr %1059, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1058, ptr align 1 %1060, i64 %1053, i1 false)
  %1061 = load ptr, ptr %1057, align 8, !tbaa !108
  %1062 = getelementptr inbounds nuw i8, ptr %1061, i64 %1053
  store ptr %1062, ptr %1057, align 8, !tbaa !108
  %1063 = load ptr, ptr %1059, align 8, !tbaa !56
  %1064 = getelementptr inbounds nuw i8, ptr %1063, i64 %1053
  store ptr %1064, ptr %1059, align 8, !tbaa !56
  %1065 = getelementptr inbounds nuw i8, ptr %1045, i64 40
  %1066 = load i64, ptr %1065, align 8, !tbaa !110
  %1067 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1066, i64 %1053), !nosanitize !44
  %1068 = extractvalue { i64, i1 } %1067, 1, !nosanitize !44
  br i1 %1068, label %1069, label %1070, !prof !45, !nosanitize !44

1069:                                             ; preds = %1056
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1070:                                             ; preds = %1056
  %1071 = extractvalue { i64, i1 } %1067, 0, !nosanitize !44
  store i64 %1071, ptr %1065, align 8, !tbaa !110
  %1072 = load i32, ptr %1050, align 8, !tbaa !109
  %1073 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1072, i32 %1054), !nosanitize !44
  %1074 = extractvalue { i32, i1 } %1073, 1, !nosanitize !44
  br i1 %1074, label %1075, label %1076, !prof !45, !nosanitize !44

1075:                                             ; preds = %1070
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1076:                                             ; preds = %1070
  %1077 = extractvalue { i32, i1 } %1073, 0, !nosanitize !44
  store i32 %1077, ptr %1050, align 8, !tbaa !109
  %1078 = load i64, ptr %1048, align 8, !tbaa !55
  %1079 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1078, i64 %1053), !nosanitize !44
  %1080 = extractvalue { i64, i1 } %1079, 1, !nosanitize !44
  br i1 %1080, label %1081, label %1082, !prof !45, !nosanitize !44

1081:                                             ; preds = %1076
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1082:                                             ; preds = %1076
  %1083 = extractvalue { i64, i1 } %1079, 0, !nosanitize !44
  store i64 %1083, ptr %1048, align 8, !tbaa !55
  %1084 = icmp eq i64 %1083, 0
  br i1 %1084, label %1085, label %1088

1085:                                             ; preds = %1082
  %1086 = getelementptr inbounds nuw i8, ptr %1047, i64 16
  %1087 = load ptr, ptr %1086, align 8, !tbaa !40
  store ptr %1087, ptr %1059, align 8, !tbaa !56
  br label %1088

1088:                                             ; preds = %1085, %1082, %1041
  %1089 = load ptr, ptr %0, align 8, !tbaa !19
  %1090 = getelementptr inbounds nuw i8, ptr %1089, i64 32
  %1091 = load i32, ptr %1090, align 8, !tbaa !109
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %.loopexit87, label %.backedge

.backedge:                                        ; preds = %1088, %1026, %966, %.loopexit56
  br label %32

1093:                                             ; preds = %593
  %1094 = load i32, ptr %6, align 4, !tbaa !71
  %1095 = tail call i32 @llvm.umin.i32(i32 %1094, i32 2)
  store i32 %1095, ptr %10, align 4, !tbaa !74
  %1096 = icmp eq i32 %1, 4
  br i1 %1096, label %1097, label %1162

1097:                                             ; preds = %1093
  %1098 = load i64, ptr %9, align 8, !tbaa !72
  %1099 = icmp sgt i64 %1098, -1
  br i1 %1099, label %1100, label %1104

1100:                                             ; preds = %1097
  %1101 = load ptr, ptr %7, align 8, !tbaa !34
  %1102 = and i64 %1098, 4294967295
  %1103 = getelementptr inbounds nuw i8, ptr %1101, i64 %1102
  br label %1104

1104:                                             ; preds = %1100, %1097
  %1105 = phi ptr [ %1103, %1100 ], [ null, %1097 ]
  %1106 = zext i32 %1094 to i64
  %1107 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1106, i64 %1098), !nosanitize !44
  %1108 = extractvalue { i64, i1 } %1107, 1, !nosanitize !44
  br i1 %1108, label %.loopexit89, label %1109, !prof !45, !nosanitize !44

1109:                                             ; preds = %1104
  %1110 = extractvalue { i64, i1 } %1107, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1105, i64 noundef %1110, i32 noundef 1) #11
  %1111 = load i32, ptr %6, align 4, !tbaa !71
  %1112 = zext i32 %1111 to i64
  store i64 %1112, ptr %9, align 8, !tbaa !72
  %1113 = load ptr, ptr %0, align 8, !tbaa !19
  %1114 = getelementptr inbounds nuw i8, ptr %1113, i64 56
  %1115 = load ptr, ptr %1114, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1115) #11
  %1116 = getelementptr inbounds nuw i8, ptr %1115, i64 40
  %1117 = load i64, ptr %1116, align 8, !tbaa !55
  %1118 = getelementptr inbounds nuw i8, ptr %1113, i64 32
  %1119 = load i32, ptr %1118, align 8, !tbaa !109
  %1120 = zext i32 %1119 to i64
  %1121 = tail call i64 @llvm.umin.i64(i64 %1117, i64 %1120)
  %1122 = trunc nuw i64 %1121 to i32
  %1123 = icmp eq i64 %1121, 0
  br i1 %1123, label %1156, label %1124

1124:                                             ; preds = %1109
  %1125 = getelementptr inbounds nuw i8, ptr %1113, i64 24
  %1126 = load ptr, ptr %1125, align 8, !tbaa !108
  %1127 = getelementptr inbounds nuw i8, ptr %1115, i64 32
  %1128 = load ptr, ptr %1127, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1126, ptr align 1 %1128, i64 %1121, i1 false)
  %1129 = load ptr, ptr %1125, align 8, !tbaa !108
  %1130 = getelementptr inbounds nuw i8, ptr %1129, i64 %1121
  store ptr %1130, ptr %1125, align 8, !tbaa !108
  %1131 = load ptr, ptr %1127, align 8, !tbaa !56
  %1132 = getelementptr inbounds nuw i8, ptr %1131, i64 %1121
  store ptr %1132, ptr %1127, align 8, !tbaa !56
  %1133 = getelementptr inbounds nuw i8, ptr %1113, i64 40
  %1134 = load i64, ptr %1133, align 8, !tbaa !110
  %1135 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1134, i64 %1121), !nosanitize !44
  %1136 = extractvalue { i64, i1 } %1135, 1, !nosanitize !44
  br i1 %1136, label %1137, label %1138, !prof !45, !nosanitize !44

1137:                                             ; preds = %1124
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1138:                                             ; preds = %1124
  %1139 = extractvalue { i64, i1 } %1135, 0, !nosanitize !44
  store i64 %1139, ptr %1133, align 8, !tbaa !110
  %1140 = load i32, ptr %1118, align 8, !tbaa !109
  %1141 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1140, i32 %1122), !nosanitize !44
  %1142 = extractvalue { i32, i1 } %1141, 1, !nosanitize !44
  br i1 %1142, label %1143, label %1144, !prof !45, !nosanitize !44

1143:                                             ; preds = %1138
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1144:                                             ; preds = %1138
  %1145 = extractvalue { i32, i1 } %1141, 0, !nosanitize !44
  store i32 %1145, ptr %1118, align 8, !tbaa !109
  %1146 = load i64, ptr %1116, align 8, !tbaa !55
  %1147 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1146, i64 %1121), !nosanitize !44
  %1148 = extractvalue { i64, i1 } %1147, 1, !nosanitize !44
  br i1 %1148, label %1149, label %1150, !prof !45, !nosanitize !44

1149:                                             ; preds = %1144
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1150:                                             ; preds = %1144
  %1151 = extractvalue { i64, i1 } %1147, 0, !nosanitize !44
  store i64 %1151, ptr %1116, align 8, !tbaa !55
  %1152 = icmp eq i64 %1151, 0
  br i1 %1152, label %1153, label %1156

1153:                                             ; preds = %1150
  %1154 = getelementptr inbounds nuw i8, ptr %1115, i64 16
  %1155 = load ptr, ptr %1154, align 8, !tbaa !40
  store ptr %1155, ptr %1127, align 8, !tbaa !56
  br label %1156

1156:                                             ; preds = %1153, %1150, %1109
  %1157 = load ptr, ptr %0, align 8, !tbaa !19
  %1158 = getelementptr inbounds nuw i8, ptr %1157, i64 32
  %1159 = load i32, ptr %1158, align 8, !tbaa !109
  %1160 = icmp eq i32 %1159, 0
  %1161 = select i1 %1160, i32 2, i32 3
  br label %.loopexit87

1162:                                             ; preds = %1093
  %1163 = load i32, ptr %27, align 4, !tbaa !144
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1229, label %1165

1165:                                             ; preds = %1162
  %1166 = load i64, ptr %9, align 8, !tbaa !72
  %1167 = icmp sgt i64 %1166, -1
  br i1 %1167, label %1168, label %1172

1168:                                             ; preds = %1165
  %1169 = load ptr, ptr %7, align 8, !tbaa !34
  %1170 = and i64 %1166, 4294967295
  %1171 = getelementptr inbounds nuw i8, ptr %1169, i64 %1170
  br label %1172

1172:                                             ; preds = %1168, %1165
  %1173 = phi ptr [ %1171, %1168 ], [ null, %1165 ]
  %1174 = zext i32 %1094 to i64
  %1175 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1174, i64 %1166), !nosanitize !44
  %1176 = extractvalue { i64, i1 } %1175, 1, !nosanitize !44
  br i1 %1176, label %.loopexit89, label %1177, !prof !45, !nosanitize !44

1177:                                             ; preds = %1172
  %1178 = extractvalue { i64, i1 } %1175, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1173, i64 noundef %1178, i32 noundef 0) #11
  %1179 = load i32, ptr %6, align 4, !tbaa !71
  %1180 = zext i32 %1179 to i64
  store i64 %1180, ptr %9, align 8, !tbaa !72
  %1181 = load ptr, ptr %0, align 8, !tbaa !19
  %1182 = getelementptr inbounds nuw i8, ptr %1181, i64 56
  %1183 = load ptr, ptr %1182, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1183) #11
  %1184 = getelementptr inbounds nuw i8, ptr %1183, i64 40
  %1185 = load i64, ptr %1184, align 8, !tbaa !55
  %1186 = getelementptr inbounds nuw i8, ptr %1181, i64 32
  %1187 = load i32, ptr %1186, align 8, !tbaa !109
  %1188 = zext i32 %1187 to i64
  %1189 = tail call i64 @llvm.umin.i64(i64 %1185, i64 %1188)
  %1190 = trunc nuw i64 %1189 to i32
  %1191 = icmp eq i64 %1189, 0
  br i1 %1191, label %1224, label %1192

1192:                                             ; preds = %1177
  %1193 = getelementptr inbounds nuw i8, ptr %1181, i64 24
  %1194 = load ptr, ptr %1193, align 8, !tbaa !108
  %1195 = getelementptr inbounds nuw i8, ptr %1183, i64 32
  %1196 = load ptr, ptr %1195, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1194, ptr align 1 %1196, i64 %1189, i1 false)
  %1197 = load ptr, ptr %1193, align 8, !tbaa !108
  %1198 = getelementptr inbounds nuw i8, ptr %1197, i64 %1189
  store ptr %1198, ptr %1193, align 8, !tbaa !108
  %1199 = load ptr, ptr %1195, align 8, !tbaa !56
  %1200 = getelementptr inbounds nuw i8, ptr %1199, i64 %1189
  store ptr %1200, ptr %1195, align 8, !tbaa !56
  %1201 = getelementptr inbounds nuw i8, ptr %1181, i64 40
  %1202 = load i64, ptr %1201, align 8, !tbaa !110
  %1203 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1202, i64 %1189), !nosanitize !44
  %1204 = extractvalue { i64, i1 } %1203, 1, !nosanitize !44
  br i1 %1204, label %1205, label %1206, !prof !45, !nosanitize !44

1205:                                             ; preds = %1192
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1206:                                             ; preds = %1192
  %1207 = extractvalue { i64, i1 } %1203, 0, !nosanitize !44
  store i64 %1207, ptr %1201, align 8, !tbaa !110
  %1208 = load i32, ptr %1186, align 8, !tbaa !109
  %1209 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1208, i32 %1190), !nosanitize !44
  %1210 = extractvalue { i32, i1 } %1209, 1, !nosanitize !44
  br i1 %1210, label %1211, label %1212, !prof !45, !nosanitize !44

1211:                                             ; preds = %1206
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1212:                                             ; preds = %1206
  %1213 = extractvalue { i32, i1 } %1209, 0, !nosanitize !44
  store i32 %1213, ptr %1186, align 8, !tbaa !109
  %1214 = load i64, ptr %1184, align 8, !tbaa !55
  %1215 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1214, i64 %1189), !nosanitize !44
  %1216 = extractvalue { i64, i1 } %1215, 1, !nosanitize !44
  br i1 %1216, label %1217, label %1218, !prof !45, !nosanitize !44

1217:                                             ; preds = %1212
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1218:                                             ; preds = %1212
  %1219 = extractvalue { i64, i1 } %1215, 0, !nosanitize !44
  store i64 %1219, ptr %1184, align 8, !tbaa !55
  %1220 = icmp eq i64 %1219, 0
  br i1 %1220, label %1221, label %1224

1221:                                             ; preds = %1218
  %1222 = getelementptr inbounds nuw i8, ptr %1183, i64 16
  %1223 = load ptr, ptr %1222, align 8, !tbaa !40
  store ptr %1223, ptr %1195, align 8, !tbaa !56
  br label %1224

1224:                                             ; preds = %1221, %1218, %1177
  %1225 = load ptr, ptr %0, align 8, !tbaa !19
  %1226 = getelementptr inbounds nuw i8, ptr %1225, i64 32
  %1227 = load i32, ptr %1226, align 8, !tbaa !109
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %.loopexit87, label %1229

1229:                                             ; preds = %1224, %1162
  br label %.loopexit87

.loopexit87:                                      ; preds = %1088, %589, %1229, %1224, %1156
  %1230 = phi i32 [ 1, %1229 ], [ %1161, %1156 ], [ 0, %1224 ], [ 0, %589 ], [ 0, %1088 ]
  ret i32 %1230
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
  br i1 %37, label %38, label %603

38:                                               ; preds = %35
  %39 = load i32, ptr %4, align 8, !tbaa !31
  %.fr = freeze i32 %39
  %40 = zext i32 %.fr to i64
  %mv.h1 = icmp sgt i32 %.fr, -1
  br i1 %mv.h1, label %.mv.ph3.mv.fast, label %.mv.ph3

.mv.ph3.mv.fast:                                  ; preds = %38, %264
  %41 = phi i32 [ %201, %264 ], [ %36, %38 ]
  %42 = load i64, ptr %5, align 8, !tbaa !59
  %43 = zext nneg i32 %41 to i64
  %44 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %42, i64 %43), !nosanitize !44
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !44
  br i1 %45, label %.loopexit66, label %46, !prof !45, !nosanitize !44

46:                                               ; preds = %.mv.ph3.mv.fast
  %47 = extractvalue { i64, i1 } %44, 0, !nosanitize !44
  %48 = load i32, ptr %6, align 4, !tbaa !71
  %49 = zext i32 %48 to i64
  %50 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %47, i64 %49), !nosanitize !44
  %51 = extractvalue { i64, i1 } %50, 1, !nosanitize !44
  br i1 %51, label %.loopexit67, label %52, !prof !45, !nosanitize !44

52:                                               ; preds = %46
  %53 = extractvalue { i64, i1 } %50, 0, !nosanitize !44
  %54 = trunc i64 %53 to i32
  %55 = load i32, ptr %4, align 8, !tbaa !31
  %56 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 262), !nosanitize !44
  %57 = extractvalue { i32, i1 } %56, 1, !nosanitize !44
  br i1 %57, label %.loopexit68, label %58, !prof !45, !nosanitize !44

58:                                               ; preds = %52
  %59 = extractvalue { i32, i1 } %56, 0, !nosanitize !44
  %60 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.fr, i32 %59), !nosanitize !44
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !44
  br i1 %61, label %.loopexit69, label %62, !prof !45, !nosanitize !44

62:                                               ; preds = %58
  %63 = extractvalue { i32, i1 } %60, 0, !nosanitize !44
  %64 = icmp ult i32 %48, %63
  br i1 %64, label %154, label %65

65:                                               ; preds = %62
  %66 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr, i32 %54), !nosanitize !44
  %67 = extractvalue { i32, i1 } %66, 1, !nosanitize !44
  br i1 %67, label %.loopexit70, label %68, !prof !45, !nosanitize !44

68:                                               ; preds = %65
  %69 = extractvalue { i32, i1 } %66, 0, !nosanitize !44
  %70 = load ptr, ptr %7, align 8, !tbaa !34
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 %40
  %72 = zext i32 %69 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %70, ptr align 1 %71, i64 %72, i1 false)
  %73 = load i32, ptr %8, align 8, !tbaa !81
  %74 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %73, i32 %.fr), !nosanitize !44
  %75 = extractvalue { i32, i1 } %74, 1, !nosanitize !44
  br i1 %75, label %.loopexit71, label %76, !prof !45, !nosanitize !44

76:                                               ; preds = %68
  %77 = extractvalue { i32, i1 } %74, 0, !nosanitize !44
  store i32 %77, ptr %8, align 8, !tbaa !81
  %78 = load i32, ptr %6, align 4, !tbaa !71
  %79 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %78, i32 %.fr), !nosanitize !44
  %80 = extractvalue { i32, i1 } %79, 1, !nosanitize !44
  br i1 %80, label %.loopexit72, label %81, !prof !45, !nosanitize !44

81:                                               ; preds = %76
  %82 = extractvalue { i32, i1 } %79, 0, !nosanitize !44
  store i32 %82, ptr %6, align 4, !tbaa !71
  %83 = load i64, ptr %9, align 8, !tbaa !72
  %84 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %83, i64 %40), !nosanitize !44
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !44
  br i1 %85, label %.loopexit72, label %86, !prof !45, !nosanitize !44

86:                                               ; preds = %81
  %87 = extractvalue { i64, i1 } %84, 0, !nosanitize !44
  store i64 %87, ptr %9, align 8, !tbaa !72
  %88 = load i32, ptr %10, align 4, !tbaa !74
  %89 = icmp ugt i32 %88, %82
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 %82, ptr %10, align 4, !tbaa !74
  br label %91

91:                                               ; preds = %90, %86
  %92 = load i32, ptr %4, align 8, !tbaa !31
  %93 = load i32, ptr %11, align 4, !tbaa !36
  %94 = load ptr, ptr %12, align 8, !tbaa !37
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds nuw [2 x i8], ptr %94, i64 %95
  %97 = add i32 %93, -1
  %98 = tail call i32 @llvm.umin.i32(i32 %93, i32 %97)
  %min.iters.check300 = icmp ult i32 %98, 8
  br i1 %min.iters.check300, label %scalar.ph299.preheader, label %vector.ph301

vector.ph301:                                     ; preds = %91
  %umin298 = zext i32 %98 to i64
  %99 = add nuw nsw i64 %umin298, 1
  %n.mod.vf302 = and i64 %99, 7
  %100 = icmp eq i64 %n.mod.vf302, 0
  %101 = select i1 %100, i64 8, i64 %n.mod.vf302
  %n.vec303 = sub nsw i64 %99, %101
  %102 = mul nsw i64 %n.vec303, -2
  %103 = getelementptr i8, ptr %96, i64 %102
  %.cast304 = trunc i64 %n.vec303 to i32
  %104 = sub i32 %93, %.cast304
  %broadcast.splatinsert305 = insertelement <8 x i32> poison, i32 %92, i64 0
  %105 = shufflevector <8 x i32> %broadcast.splatinsert305, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph301
  %index308 = phi i64 [ 0, %vector.ph301 ], [ %index.next314, %vector.body307 ]
  %offset.idx309 = mul i64 %index308, -2
  %next.gep310 = getelementptr i8, ptr %96, i64 %offset.idx309
  %106 = getelementptr inbounds i8, ptr %next.gep310, i64 -16
  %wide.load311 = load <8 x i16>, ptr %106, align 2, !tbaa !60
  %107 = zext <8 x i16> %wide.load311 to <8 x i32>
  %108 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %107, <8 x i32> %105)
  %reverse313 = trunc nuw <8 x i32> %108 to <8 x i16>
  store <8 x i16> %reverse313, ptr %106, align 2, !tbaa !60
  %index.next314 = add nuw i64 %index308, 8
  %109 = icmp eq i64 %index.next314, %n.vec303
  br i1 %109, label %scalar.ph299.preheader, label %vector.body307, !llvm.loop !168

scalar.ph299.preheader:                           ; preds = %vector.body307, %91
  %.ph360 = phi ptr [ %96, %91 ], [ %103, %vector.body307 ]
  %.ph361 = phi i32 [ %93, %91 ], [ %104, %vector.body307 ]
  br label %scalar.ph299

scalar.ph299:                                     ; preds = %scalar.ph299.preheader, %119
  %110 = phi ptr [ %112, %119 ], [ %.ph360, %scalar.ph299.preheader ]
  %111 = phi i32 [ %120, %119 ], [ %.ph361, %scalar.ph299.preheader ]
  %112 = getelementptr inbounds i8, ptr %110, i64 -2
  %113 = load i16, ptr %112, align 2, !tbaa !60
  %114 = zext i16 %113 to i32
  %115 = tail call i32 @llvm.usub.sat.i32(i32 %114, i32 %92)
  %116 = trunc nuw i32 %115 to i16
  store i16 %116, ptr %112, align 2, !tbaa !60
  %117 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %111, i32 1), !nosanitize !44
  %118 = extractvalue { i32, i1 } %117, 1, !nosanitize !44
  br i1 %118, label %.loopexit57, label %119, !prof !45, !nosanitize !44

119:                                              ; preds = %scalar.ph299
  %120 = extractvalue { i32, i1 } %117, 0, !nosanitize !44
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %scalar.ph299, !llvm.loop !169

122:                                              ; preds = %119
  %123 = load ptr, ptr %13, align 8, !tbaa !35
  %124 = zext i32 %92 to i64
  %125 = getelementptr inbounds nuw [2 x i8], ptr %123, i64 %124
  %126 = add i32 %92, -1
  %127 = tail call i32 @llvm.umin.i32(i32 %92, i32 %126)
  %min.iters.check = icmp ult i32 %127, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %122
  %umin295 = zext i32 %127 to i64
  %128 = add nuw nsw i64 %umin295, 1
  %n.mod.vf = and i64 %128, 7
  %129 = icmp eq i64 %n.mod.vf, 0
  %130 = select i1 %129, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %128, %130
  %131 = mul nsw i64 %n.vec, -2
  %132 = getelementptr i8, ptr %125, i64 %131
  %.cast = trunc i64 %n.vec to i32
  %133 = sub i32 %92, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %92, i64 0
  %134 = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %125, i64 %offset.idx
  %135 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.load = load <8 x i16>, ptr %135, align 2, !tbaa !60
  %136 = zext <8 x i16> %wide.load to <8 x i32>
  %137 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %136, <8 x i32> %134)
  %reverse296 = trunc nuw <8 x i32> %137 to <8 x i16>
  store <8 x i16> %reverse296, ptr %135, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %138 = icmp eq i64 %index.next, %n.vec
  br i1 %138, label %scalar.ph.preheader, label %vector.body, !llvm.loop !170

scalar.ph.preheader:                              ; preds = %vector.body, %122
  %.ph = phi ptr [ %125, %122 ], [ %132, %vector.body ]
  %.ph359 = phi i32 [ %92, %122 ], [ %133, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %148
  %139 = phi ptr [ %141, %148 ], [ %.ph, %scalar.ph.preheader ]
  %140 = phi i32 [ %149, %148 ], [ %.ph359, %scalar.ph.preheader ]
  %141 = getelementptr inbounds i8, ptr %139, i64 -2
  %142 = load i16, ptr %141, align 2, !tbaa !60
  %143 = zext i16 %142 to i32
  %144 = tail call i32 @llvm.usub.sat.i32(i32 %143, i32 %92)
  %145 = trunc nuw i32 %144 to i16
  store i16 %145, ptr %141, align 2, !tbaa !60
  %146 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %140, i32 1), !nosanitize !44
  %147 = extractvalue { i32, i1 } %146, 1, !nosanitize !44
  br i1 %147, label %.loopexit56, label %148, !prof !45, !nosanitize !44

148:                                              ; preds = %scalar.ph
  %149 = extractvalue { i32, i1 } %146, 0, !nosanitize !44
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %scalar.ph, !llvm.loop !171

151:                                              ; preds = %148
  store i32 1, ptr %14, align 8, !tbaa !61
  %152 = add i32 %.fr, %54
  %153 = load i32, ptr %3, align 4, !tbaa !73
  br label %154

154:                                              ; preds = %151, %62
  %155 = phi i32 [ %153, %151 ], [ %41, %62 ]
  %156 = phi i32 [ %82, %151 ], [ %48, %62 ]
  %157 = phi i32 [ %152, %151 ], [ %54, %62 ]
  %158 = load ptr, ptr %0, align 8, !tbaa !19
  %159 = getelementptr inbounds nuw i8, ptr %158, i64 8
  %160 = load i32, ptr %159, align 8, !tbaa !79
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %.loopexit73, label %162

162:                                              ; preds = %154
  %163 = load ptr, ptr %7, align 8, !tbaa !34
  %164 = zext i32 %156 to i64
  %165 = getelementptr inbounds nuw i8, ptr %163, i64 %164
  %166 = zext i32 %155 to i64
  %167 = getelementptr inbounds nuw i8, ptr %165, i64 %166
  %168 = tail call i32 @llvm.umin.i32(i32 %160, i32 %157)
  %169 = icmp eq i32 %157, 0
  br i1 %169, label %196, label %170

170:                                              ; preds = %162
  %171 = sub i32 %160, %168
  store i32 %171, ptr %159, align 8, !tbaa !79
  %172 = load ptr, ptr %158, align 8, !tbaa !80
  %173 = zext i32 %168 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %167, ptr align 1 %172, i64 %173, i1 false)
  %174 = getelementptr inbounds nuw i8, ptr %158, i64 56
  %175 = load ptr, ptr %174, align 8, !tbaa !18
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 48
  %177 = load i32, ptr %176, align 8, !tbaa !29
  switch i32 %177, label %186 [
    i32 1, label %182
    i32 2, label %178
  ]

178:                                              ; preds = %170
  %179 = getelementptr inbounds nuw i8, ptr %158, i64 96
  %180 = load i64, ptr %179, align 8, !tbaa !57
  %181 = tail call i64 @crc32(i64 noundef %180, ptr noundef %167, i32 noundef %168) #11
  store i64 %181, ptr %179, align 8, !tbaa !57
  br label %186

182:                                              ; preds = %170
  %183 = getelementptr inbounds nuw i8, ptr %158, i64 96
  %184 = load i64, ptr %183, align 8, !tbaa !57
  %185 = tail call i64 @adler32(i64 noundef %184, ptr noundef %167, i32 noundef %168) #11
  store i64 %185, ptr %183, align 8, !tbaa !57
  br label %186

186:                                              ; preds = %182, %178, %170
  %187 = load ptr, ptr %158, align 8, !tbaa !80
  %188 = getelementptr inbounds nuw i8, ptr %187, i64 %173
  store ptr %188, ptr %158, align 8, !tbaa !80
  %189 = getelementptr inbounds nuw i8, ptr %158, i64 16
  %190 = load i64, ptr %189, align 8, !tbaa !53
  %191 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %190, i64 %173), !nosanitize !44
  %192 = extractvalue { i64, i1 } %191, 1, !nosanitize !44
  br i1 %192, label %.loopexit74, label %193, !prof !45, !nosanitize !44

193:                                              ; preds = %186
  %194 = extractvalue { i64, i1 } %191, 0, !nosanitize !44
  store i64 %194, ptr %189, align 8, !tbaa !53
  %195 = load i32, ptr %3, align 4, !tbaa !73
  br label %196

196:                                              ; preds = %193, %162
  %197 = phi i32 [ %155, %162 ], [ %195, %193 ]
  %198 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %197, i32 %168), !nosanitize !44
  %199 = extractvalue { i32, i1 } %198, 1, !nosanitize !44
  br i1 %199, label %.loopexit75, label %200, !prof !45, !nosanitize !44

200:                                              ; preds = %196
  %201 = extractvalue { i32, i1 } %198, 0, !nosanitize !44
  store i32 %201, ptr %3, align 4, !tbaa !73
  %202 = load i32, ptr %10, align 4, !tbaa !74
  %203 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %201, i32 %202), !nosanitize !44
  %204 = extractvalue { i32, i1 } %203, 1, !nosanitize !44
  br i1 %204, label %.loopexit76, label %205, !prof !45, !nosanitize !44

205:                                              ; preds = %200
  %206 = extractvalue { i32, i1 } %203, 0, !nosanitize !44
  %207 = icmp ugt i32 %206, 2
  br i1 %207, label %208, label %.loopexit.mv.fast

208:                                              ; preds = %205
  %209 = load i32, ptr %6, align 4, !tbaa !71
  %.fr52 = freeze i32 %209
  %210 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr52, i32 %202), !nosanitize !44
  %211 = extractvalue { i32, i1 } %210, 0, !nosanitize !44
  %212 = extractvalue { i32, i1 } %210, 1, !nosanitize !44
  br i1 %212, label %.loopexit77, label %213, !prof !45, !nosanitize !44

213:                                              ; preds = %208
  %214 = load ptr, ptr %7, align 8, !tbaa !34
  %215 = zext i32 %211 to i64
  %216 = getelementptr inbounds nuw i8, ptr %214, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !5
  %218 = zext i8 %217 to i32
  store i32 %218, ptr %15, align 8, !tbaa !78
  %219 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %211, i32 1), !nosanitize !44
  %220 = extractvalue { i32, i1 } %219, 1, !nosanitize !44
  br i1 %220, label %.loopexit78, label %221, !prof !45, !nosanitize !44

221:                                              ; preds = %213
  %222 = extractvalue { i32, i1 } %219, 0, !nosanitize !44
  %223 = load i32, ptr %16, align 8, !tbaa !52
  %224 = shl i32 %218, %223
  %225 = zext i32 %222 to i64
  %226 = getelementptr inbounds nuw i8, ptr %214, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !5
  %228 = zext i8 %227 to i32
  %229 = xor i32 %224, %228
  %230 = load i32, ptr %17, align 4, !tbaa !51
  %231 = and i32 %229, %230
  store i32 %231, ptr %15, align 8, !tbaa !78
  %mv.h.mv.fast = icmp sgt i32 %.fr52, -1
  br i1 %mv.h.mv.fast, label %.mv.ph.mv.fast.mv.fast, label %.mv.ph.mv.fast4

.mv.ph.mv.fast4:                                  ; preds = %221, %239
  %232 = phi i32 [ %248, %239 ], [ %231, %221 ]
  %233 = phi i32 [ %259, %239 ], [ %202, %221 ]
  %234 = phi i32 [ %260, %239 ], [ %211, %221 ]
  %235 = icmp eq i32 %233, 0
  br i1 %235, label %.loopexit.mv.fast, label %236

236:                                              ; preds = %.mv.ph.mv.fast4
  %237 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 3), !nosanitize !44
  %238 = extractvalue { i32, i1 } %237, 1, !nosanitize !44
  br i1 %238, label %.loopexit55, label %239, !prof !45, !nosanitize !44

239:                                              ; preds = %236
  %240 = shl i32 %232, %223
  %241 = extractvalue { i32, i1 } %237, 0, !nosanitize !44
  %242 = add i32 %241, -1
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds nuw i8, ptr %214, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !5
  %246 = zext i8 %245 to i32
  %247 = xor i32 %240, %246
  %248 = and i32 %247, %230
  store i32 %248, ptr %15, align 8, !tbaa !78
  %249 = load ptr, ptr %12, align 8, !tbaa !37
  %250 = zext i32 %248 to i64
  %251 = getelementptr inbounds nuw [2 x i8], ptr %249, i64 %250
  %252 = load i16, ptr %251, align 2, !tbaa !60
  %253 = load ptr, ptr %13, align 8, !tbaa !35
  %254 = load i32, ptr %18, align 8, !tbaa !32
  %255 = and i32 %254, %234
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds nuw [2 x i8], ptr %253, i64 %256
  store i16 %252, ptr %257, align 2, !tbaa !60
  %258 = trunc i32 %234 to i16
  store i16 %258, ptr %251, align 2, !tbaa !60
  %259 = add i32 %233, -1
  store i32 %259, ptr %10, align 4, !tbaa !74
  %260 = add nuw i32 %234, 1
  %261 = add i32 %259, %201
  %262 = icmp ult i32 %261, 3
  br i1 %262, label %.loopexit.mv.fast, label %.mv.ph.mv.fast4, !llvm.loop !89

.loopexit.mv.fast:                                ; preds = %.mv.ph.mv.fast4, %239, %.mv.ph.mv.fast.mv.fast, %272, %205
  %263 = icmp ult i32 %201, 262
  br i1 %263, label %264, label %.loopexit73

264:                                              ; preds = %.loopexit.mv.fast
  %265 = load ptr, ptr %0, align 8, !tbaa !19
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 8
  %267 = load i32, ptr %266, align 8, !tbaa !79
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %.loopexit73, label %.mv.ph3.mv.fast, !llvm.loop !90

.mv.ph.mv.fast.mv.fast:                           ; preds = %221, %272
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %272 ], [ %215, %221 ]
  %269 = phi i32 [ %281, %272 ], [ %231, %221 ]
  %270 = phi i32 [ %292, %272 ], [ %202, %221 ]
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %.loopexit.mv.fast, label %272

272:                                              ; preds = %.mv.ph.mv.fast.mv.fast
  %273 = shl i32 %269, %223
  %274 = trunc nuw i64 %indvars.iv158 to i32
  %275 = add nuw i64 %indvars.iv158, 2
  %276 = and i64 %275, 4294967295
  %277 = getelementptr inbounds nuw i8, ptr %214, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !5
  %279 = zext i8 %278 to i32
  %280 = xor i32 %273, %279
  %281 = and i32 %280, %230
  store i32 %281, ptr %15, align 8, !tbaa !78
  %282 = load ptr, ptr %12, align 8, !tbaa !37
  %283 = zext i32 %281 to i64
  %284 = getelementptr inbounds nuw [2 x i8], ptr %282, i64 %283
  %285 = load i16, ptr %284, align 2, !tbaa !60
  %286 = load ptr, ptr %13, align 8, !tbaa !35
  %287 = load i32, ptr %18, align 8, !tbaa !32
  %288 = and i32 %287, %274
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds nuw [2 x i8], ptr %286, i64 %289
  store i16 %285, ptr %290, align 2, !tbaa !60
  %291 = trunc i64 %indvars.iv158 to i16
  store i16 %291, ptr %284, align 2, !tbaa !60
  %292 = add i32 %270, -1
  store i32 %292, ptr %10, align 4, !tbaa !74
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1
  %293 = add i32 %292, %201
  %294 = icmp ult i32 %293, 3
  br i1 %294, label %.loopexit.mv.fast, label %.mv.ph.mv.fast.mv.fast, !llvm.loop !89

.mv.ph3:                                          ; preds = %38, %548
  %295 = phi i32 [ %459, %548 ], [ %36, %38 ]
  %296 = load i64, ptr %5, align 8, !tbaa !59
  %297 = zext nneg i32 %295 to i64
  %298 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %296, i64 %297), !nosanitize !44
  %299 = extractvalue { i64, i1 } %298, 1, !nosanitize !44
  br i1 %299, label %.loopexit66, label %300, !prof !45, !nosanitize !44

.loopexit66:                                      ; preds = %.mv.ph3, %.mv.ph3.mv.fast
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

300:                                              ; preds = %.mv.ph3
  %301 = extractvalue { i64, i1 } %298, 0, !nosanitize !44
  %302 = load i32, ptr %6, align 4, !tbaa !71
  %303 = zext i32 %302 to i64
  %304 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %301, i64 %303), !nosanitize !44
  %305 = extractvalue { i64, i1 } %304, 1, !nosanitize !44
  br i1 %305, label %.loopexit67, label %306, !prof !45, !nosanitize !44

.loopexit67:                                      ; preds = %300, %46
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

306:                                              ; preds = %300
  %307 = extractvalue { i64, i1 } %304, 0, !nosanitize !44
  %308 = trunc i64 %307 to i32
  %309 = load i32, ptr %4, align 8, !tbaa !31
  %310 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %309, i32 262), !nosanitize !44
  %311 = extractvalue { i32, i1 } %310, 1, !nosanitize !44
  br i1 %311, label %.loopexit68, label %312, !prof !45, !nosanitize !44

.loopexit68:                                      ; preds = %306, %52
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

312:                                              ; preds = %306
  %313 = extractvalue { i32, i1 } %310, 0, !nosanitize !44
  %314 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.fr, i32 %313), !nosanitize !44
  %315 = extractvalue { i32, i1 } %314, 1, !nosanitize !44
  br i1 %315, label %.loopexit69, label %316, !prof !45, !nosanitize !44

.loopexit69:                                      ; preds = %312, %58
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

316:                                              ; preds = %312
  %317 = extractvalue { i32, i1 } %314, 0, !nosanitize !44
  %318 = icmp ult i32 %302, %317
  br i1 %318, label %412, label %319

319:                                              ; preds = %316
  %320 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr, i32 %308), !nosanitize !44
  %321 = extractvalue { i32, i1 } %320, 1, !nosanitize !44
  br i1 %321, label %.loopexit70, label %322, !prof !45, !nosanitize !44

.loopexit70:                                      ; preds = %319, %65
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

322:                                              ; preds = %319
  %323 = extractvalue { i32, i1 } %320, 0, !nosanitize !44
  %324 = load ptr, ptr %7, align 8, !tbaa !34
  %325 = getelementptr inbounds nuw i8, ptr %324, i64 %40
  %326 = zext i32 %323 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %324, ptr nonnull align 1 %325, i64 %326, i1 false)
  %327 = load i32, ptr %8, align 8, !tbaa !81
  %328 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %327, i32 %.fr), !nosanitize !44
  %329 = extractvalue { i32, i1 } %328, 1, !nosanitize !44
  br i1 %329, label %.loopexit71, label %330, !prof !45, !nosanitize !44

.loopexit71:                                      ; preds = %322, %68
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

330:                                              ; preds = %322
  %331 = extractvalue { i32, i1 } %328, 0, !nosanitize !44
  store i32 %331, ptr %8, align 8, !tbaa !81
  %332 = load i32, ptr %6, align 4, !tbaa !71
  %333 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %332, i32 %.fr), !nosanitize !44
  %334 = extractvalue { i32, i1 } %333, 1, !nosanitize !44
  br i1 %334, label %.loopexit72, label %335, !prof !45, !nosanitize !44

.loopexit72:                                      ; preds = %335, %330, %81, %76
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

335:                                              ; preds = %330
  %336 = extractvalue { i32, i1 } %333, 0, !nosanitize !44
  store i32 %336, ptr %6, align 4, !tbaa !71
  %337 = load i64, ptr %9, align 8, !tbaa !72
  %338 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %337, i64 %40), !nosanitize !44
  %339 = extractvalue { i64, i1 } %338, 1, !nosanitize !44
  br i1 %339, label %.loopexit72, label %340, !prof !45, !nosanitize !44

340:                                              ; preds = %335
  %341 = extractvalue { i64, i1 } %338, 0, !nosanitize !44
  store i64 %341, ptr %9, align 8, !tbaa !72
  %342 = load i32, ptr %10, align 4, !tbaa !74
  %343 = icmp ugt i32 %342, %336
  br i1 %343, label %344, label %345

344:                                              ; preds = %340
  store i32 %336, ptr %10, align 4, !tbaa !74
  br label %345

345:                                              ; preds = %344, %340
  %346 = load i32, ptr %4, align 8, !tbaa !31
  %347 = load i32, ptr %11, align 4, !tbaa !36
  %348 = load ptr, ptr %12, align 8, !tbaa !37
  %349 = zext i32 %347 to i64
  %350 = getelementptr inbounds nuw [2 x i8], ptr %348, i64 %349
  %351 = add i32 %347, -1
  %352 = tail call i32 @llvm.umin.i32(i32 %347, i32 %351)
  %min.iters.check340 = icmp ult i32 %352, 8
  br i1 %min.iters.check340, label %scalar.ph339.preheader, label %vector.ph341

vector.ph341:                                     ; preds = %345
  %umin338 = zext i32 %352 to i64
  %353 = add nuw nsw i64 %umin338, 1
  %n.mod.vf342 = and i64 %353, 7
  %354 = icmp eq i64 %n.mod.vf342, 0
  %355 = select i1 %354, i64 8, i64 %n.mod.vf342
  %n.vec343 = sub nsw i64 %353, %355
  %356 = mul nsw i64 %n.vec343, -2
  %357 = getelementptr i8, ptr %350, i64 %356
  %.cast344 = trunc i64 %n.vec343 to i32
  %358 = sub i32 %347, %.cast344
  %broadcast.splatinsert345 = insertelement <8 x i32> poison, i32 %346, i64 0
  %359 = shufflevector <8 x i32> %broadcast.splatinsert345, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph341
  %index348 = phi i64 [ 0, %vector.ph341 ], [ %index.next354, %vector.body347 ]
  %offset.idx349 = mul i64 %index348, -2
  %next.gep350 = getelementptr i8, ptr %350, i64 %offset.idx349
  %360 = getelementptr inbounds i8, ptr %next.gep350, i64 -16
  %wide.load351 = load <8 x i16>, ptr %360, align 2, !tbaa !60
  %361 = zext <8 x i16> %wide.load351 to <8 x i32>
  %362 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %361, <8 x i32> %359)
  %reverse353 = trunc nuw <8 x i32> %362 to <8 x i16>
  store <8 x i16> %reverse353, ptr %360, align 2, !tbaa !60
  %index.next354 = add nuw i64 %index348, 8
  %363 = icmp eq i64 %index.next354, %n.vec343
  br i1 %363, label %scalar.ph339.preheader, label %vector.body347, !llvm.loop !172

scalar.ph339.preheader:                           ; preds = %vector.body347, %345
  %.ph367 = phi ptr [ %350, %345 ], [ %357, %vector.body347 ]
  %.ph368 = phi i32 [ %347, %345 ], [ %358, %vector.body347 ]
  br label %scalar.ph339

scalar.ph339:                                     ; preds = %scalar.ph339.preheader, %373
  %364 = phi ptr [ %366, %373 ], [ %.ph367, %scalar.ph339.preheader ]
  %365 = phi i32 [ %374, %373 ], [ %.ph368, %scalar.ph339.preheader ]
  %366 = getelementptr inbounds i8, ptr %364, i64 -2
  %367 = load i16, ptr %366, align 2, !tbaa !60
  %368 = zext i16 %367 to i32
  %369 = tail call i32 @llvm.usub.sat.i32(i32 %368, i32 %346)
  %370 = trunc nuw i32 %369 to i16
  store i16 %370, ptr %366, align 2, !tbaa !60
  %371 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %365, i32 1), !nosanitize !44
  %372 = extractvalue { i32, i1 } %371, 1, !nosanitize !44
  br i1 %372, label %.loopexit57, label %373, !prof !45, !nosanitize !44

.loopexit57:                                      ; preds = %scalar.ph339, %scalar.ph299
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

373:                                              ; preds = %scalar.ph339
  %374 = extractvalue { i32, i1 } %371, 0, !nosanitize !44
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %scalar.ph339, !llvm.loop !173

376:                                              ; preds = %373
  %377 = load ptr, ptr %13, align 8, !tbaa !35
  %378 = zext i32 %346 to i64
  %379 = getelementptr inbounds nuw [2 x i8], ptr %377, i64 %378
  %380 = add i32 %346, -1
  %381 = tail call i32 @llvm.umin.i32(i32 %346, i32 %380)
  %min.iters.check320 = icmp ult i32 %381, 8
  br i1 %min.iters.check320, label %scalar.ph319.preheader, label %vector.ph321

vector.ph321:                                     ; preds = %376
  %umin318 = zext i32 %381 to i64
  %382 = add nuw nsw i64 %umin318, 1
  %n.mod.vf322 = and i64 %382, 7
  %383 = icmp eq i64 %n.mod.vf322, 0
  %384 = select i1 %383, i64 8, i64 %n.mod.vf322
  %n.vec323 = sub nsw i64 %382, %384
  %385 = mul nsw i64 %n.vec323, -2
  %386 = getelementptr i8, ptr %379, i64 %385
  %.cast324 = trunc i64 %n.vec323 to i32
  %387 = sub i32 %346, %.cast324
  %broadcast.splatinsert325 = insertelement <8 x i32> poison, i32 %346, i64 0
  %388 = shufflevector <8 x i32> %broadcast.splatinsert325, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph321
  %index328 = phi i64 [ 0, %vector.ph321 ], [ %index.next334, %vector.body327 ]
  %offset.idx329 = mul i64 %index328, -2
  %next.gep330 = getelementptr i8, ptr %379, i64 %offset.idx329
  %389 = getelementptr inbounds i8, ptr %next.gep330, i64 -16
  %wide.load331 = load <8 x i16>, ptr %389, align 2, !tbaa !60
  %390 = zext <8 x i16> %wide.load331 to <8 x i32>
  %391 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %390, <8 x i32> %388)
  %reverse333 = trunc nuw <8 x i32> %391 to <8 x i16>
  store <8 x i16> %reverse333, ptr %389, align 2, !tbaa !60
  %index.next334 = add nuw i64 %index328, 8
  %392 = icmp eq i64 %index.next334, %n.vec323
  br i1 %392, label %scalar.ph319.preheader, label %vector.body327, !llvm.loop !174

scalar.ph319.preheader:                           ; preds = %vector.body327, %376
  %.ph364 = phi ptr [ %379, %376 ], [ %386, %vector.body327 ]
  %.ph365 = phi i32 [ %346, %376 ], [ %387, %vector.body327 ]
  br label %scalar.ph319

scalar.ph319:                                     ; preds = %scalar.ph319.preheader, %402
  %393 = phi ptr [ %395, %402 ], [ %.ph364, %scalar.ph319.preheader ]
  %394 = phi i32 [ %403, %402 ], [ %.ph365, %scalar.ph319.preheader ]
  %395 = getelementptr inbounds i8, ptr %393, i64 -2
  %396 = load i16, ptr %395, align 2, !tbaa !60
  %397 = zext i16 %396 to i32
  %398 = tail call i32 @llvm.usub.sat.i32(i32 %397, i32 %346)
  %399 = trunc nuw i32 %398 to i16
  store i16 %399, ptr %395, align 2, !tbaa !60
  %400 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %394, i32 1), !nosanitize !44
  %401 = extractvalue { i32, i1 } %400, 1, !nosanitize !44
  br i1 %401, label %.loopexit56, label %402, !prof !45, !nosanitize !44

.loopexit56:                                      ; preds = %scalar.ph319, %scalar.ph
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

402:                                              ; preds = %scalar.ph319
  %403 = extractvalue { i32, i1 } %400, 0, !nosanitize !44
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %scalar.ph319, !llvm.loop !175

405:                                              ; preds = %402
  store i32 1, ptr %14, align 8, !tbaa !61
  %406 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %308, i32 %.fr), !nosanitize !44
  %407 = extractvalue { i32, i1 } %406, 1, !nosanitize !44
  br i1 %407, label %408, label %409, !prof !45, !nosanitize !44

408:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

409:                                              ; preds = %405
  %410 = extractvalue { i32, i1 } %406, 0, !nosanitize !44
  %411 = load i32, ptr %3, align 4, !tbaa !73
  br label %412

412:                                              ; preds = %409, %316
  %413 = phi i32 [ %411, %409 ], [ %295, %316 ]
  %414 = phi i32 [ %336, %409 ], [ %302, %316 ]
  %415 = phi i32 [ %410, %409 ], [ %308, %316 ]
  %416 = load ptr, ptr %0, align 8, !tbaa !19
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 8
  %418 = load i32, ptr %417, align 8, !tbaa !79
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %.loopexit73, label %420

420:                                              ; preds = %412
  %421 = load ptr, ptr %7, align 8, !tbaa !34
  %422 = zext i32 %414 to i64
  %423 = getelementptr inbounds nuw i8, ptr %421, i64 %422
  %424 = zext i32 %413 to i64
  %425 = getelementptr inbounds nuw i8, ptr %423, i64 %424
  %426 = tail call i32 @llvm.umin.i32(i32 %418, i32 %415)
  %427 = icmp eq i32 %415, 0
  br i1 %427, label %454, label %428

428:                                              ; preds = %420
  %429 = sub i32 %418, %426
  store i32 %429, ptr %417, align 8, !tbaa !79
  %430 = load ptr, ptr %416, align 8, !tbaa !80
  %431 = zext i32 %426 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %425, ptr align 1 %430, i64 %431, i1 false)
  %432 = getelementptr inbounds nuw i8, ptr %416, i64 56
  %433 = load ptr, ptr %432, align 8, !tbaa !18
  %434 = getelementptr inbounds nuw i8, ptr %433, i64 48
  %435 = load i32, ptr %434, align 8, !tbaa !29
  switch i32 %435, label %444 [
    i32 1, label %436
    i32 2, label %440
  ]

436:                                              ; preds = %428
  %437 = getelementptr inbounds nuw i8, ptr %416, i64 96
  %438 = load i64, ptr %437, align 8, !tbaa !57
  %439 = tail call i64 @adler32(i64 noundef %438, ptr noundef %425, i32 noundef %426) #11
  store i64 %439, ptr %437, align 8, !tbaa !57
  br label %444

440:                                              ; preds = %428
  %441 = getelementptr inbounds nuw i8, ptr %416, i64 96
  %442 = load i64, ptr %441, align 8, !tbaa !57
  %443 = tail call i64 @crc32(i64 noundef %442, ptr noundef %425, i32 noundef %426) #11
  store i64 %443, ptr %441, align 8, !tbaa !57
  br label %444

444:                                              ; preds = %440, %436, %428
  %445 = load ptr, ptr %416, align 8, !tbaa !80
  %446 = getelementptr inbounds nuw i8, ptr %445, i64 %431
  store ptr %446, ptr %416, align 8, !tbaa !80
  %447 = getelementptr inbounds nuw i8, ptr %416, i64 16
  %448 = load i64, ptr %447, align 8, !tbaa !53
  %449 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %448, i64 %431), !nosanitize !44
  %450 = extractvalue { i64, i1 } %449, 1, !nosanitize !44
  br i1 %450, label %.loopexit74, label %451, !prof !45, !nosanitize !44

.loopexit74:                                      ; preds = %444, %186
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

451:                                              ; preds = %444
  %452 = extractvalue { i64, i1 } %449, 0, !nosanitize !44
  store i64 %452, ptr %447, align 8, !tbaa !53
  %453 = load i32, ptr %3, align 4, !tbaa !73
  br label %454

454:                                              ; preds = %451, %420
  %455 = phi i32 [ %413, %420 ], [ %453, %451 ]
  %456 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %455, i32 %426), !nosanitize !44
  %457 = extractvalue { i32, i1 } %456, 1, !nosanitize !44
  br i1 %457, label %.loopexit75, label %458, !prof !45, !nosanitize !44

.loopexit75:                                      ; preds = %454, %196
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

458:                                              ; preds = %454
  %459 = extractvalue { i32, i1 } %456, 0, !nosanitize !44
  store i32 %459, ptr %3, align 4, !tbaa !73
  %460 = load i32, ptr %10, align 4, !tbaa !74
  %461 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %459, i32 %460), !nosanitize !44
  %462 = extractvalue { i32, i1 } %461, 1, !nosanitize !44
  br i1 %462, label %.loopexit76, label %463, !prof !45, !nosanitize !44

.loopexit76:                                      ; preds = %458, %200
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

463:                                              ; preds = %458
  %464 = extractvalue { i32, i1 } %461, 0, !nosanitize !44
  %465 = icmp ugt i32 %464, 2
  br i1 %465, label %466, label %.loopexit

466:                                              ; preds = %463
  %467 = load i32, ptr %6, align 4, !tbaa !71
  %.fr51 = freeze i32 %467
  %468 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr51, i32 %460), !nosanitize !44
  %469 = extractvalue { i32, i1 } %468, 0, !nosanitize !44
  %470 = extractvalue { i32, i1 } %468, 1, !nosanitize !44
  br i1 %470, label %.loopexit77, label %471, !prof !45, !nosanitize !44

.loopexit77:                                      ; preds = %466, %208
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

471:                                              ; preds = %466
  %472 = load ptr, ptr %7, align 8, !tbaa !34
  %473 = zext i32 %469 to i64
  %474 = getelementptr inbounds nuw i8, ptr %472, i64 %473
  %475 = load i8, ptr %474, align 1, !tbaa !5
  %476 = zext i8 %475 to i32
  store i32 %476, ptr %15, align 8, !tbaa !78
  %477 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %469, i32 1), !nosanitize !44
  %478 = extractvalue { i32, i1 } %477, 1, !nosanitize !44
  br i1 %478, label %.loopexit78, label %479, !prof !45, !nosanitize !44

.loopexit78:                                      ; preds = %471, %213
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

479:                                              ; preds = %471
  %480 = extractvalue { i32, i1 } %477, 0, !nosanitize !44
  %481 = load i32, ptr %16, align 8, !tbaa !52
  %482 = shl i32 %476, %481
  %483 = zext i32 %480 to i64
  %484 = getelementptr inbounds nuw i8, ptr %472, i64 %483
  %485 = load i8, ptr %484, align 1, !tbaa !5
  %486 = zext i8 %485 to i32
  %487 = xor i32 %482, %486
  %488 = load i32, ptr %17, align 4, !tbaa !51
  %489 = and i32 %487, %488
  store i32 %489, ptr %15, align 8, !tbaa !78
  %mv.h = icmp sgt i32 %.fr51, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %479, %493
  %indvars.iv = phi i64 [ %indvars.iv.next, %493 ], [ %473, %479 ]
  %490 = phi i32 [ %502, %493 ], [ %489, %479 ]
  %491 = phi i32 [ %513, %493 ], [ %460, %479 ]
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %.loopexit, label %493

493:                                              ; preds = %.mv.ph.mv.fast
  %494 = shl i32 %490, %481
  %495 = trunc nuw i64 %indvars.iv to i32
  %496 = add nuw i64 %indvars.iv, 2
  %497 = and i64 %496, 4294967295
  %498 = getelementptr inbounds nuw i8, ptr %472, i64 %497
  %499 = load i8, ptr %498, align 1, !tbaa !5
  %500 = zext i8 %499 to i32
  %501 = xor i32 %494, %500
  %502 = and i32 %501, %488
  store i32 %502, ptr %15, align 8, !tbaa !78
  %503 = load ptr, ptr %12, align 8, !tbaa !37
  %504 = zext i32 %502 to i64
  %505 = getelementptr inbounds nuw [2 x i8], ptr %503, i64 %504
  %506 = load i16, ptr %505, align 2, !tbaa !60
  %507 = load ptr, ptr %13, align 8, !tbaa !35
  %508 = load i32, ptr %18, align 8, !tbaa !32
  %509 = and i32 %508, %495
  %510 = zext i32 %509 to i64
  %511 = getelementptr inbounds nuw [2 x i8], ptr %507, i64 %510
  store i16 %506, ptr %511, align 2, !tbaa !60
  %512 = trunc i64 %indvars.iv to i16
  store i16 %512, ptr %505, align 2, !tbaa !60
  %513 = add i32 %491, -1
  store i32 %513, ptr %10, align 4, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %514 = add i32 %513, %459
  %515 = icmp ult i32 %514, 3
  br i1 %515, label %.loopexit, label %.mv.ph.mv.fast, !llvm.loop !89

.mv.ph:                                           ; preds = %479, %523
  %516 = phi i32 [ %532, %523 ], [ %489, %479 ]
  %517 = phi i32 [ %543, %523 ], [ %460, %479 ]
  %518 = phi i32 [ %544, %523 ], [ %469, %479 ]
  %519 = icmp eq i32 %517, 0
  br i1 %519, label %.loopexit, label %520

520:                                              ; preds = %.mv.ph
  %521 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %518, i32 3), !nosanitize !44
  %522 = extractvalue { i32, i1 } %521, 1, !nosanitize !44
  br i1 %522, label %.loopexit55, label %523, !prof !45, !nosanitize !44

.loopexit55:                                      ; preds = %520, %236
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

523:                                              ; preds = %520
  %524 = shl i32 %516, %481
  %525 = extractvalue { i32, i1 } %521, 0, !nosanitize !44
  %526 = add i32 %525, -1
  %527 = zext i32 %526 to i64
  %528 = getelementptr inbounds nuw i8, ptr %472, i64 %527
  %529 = load i8, ptr %528, align 1, !tbaa !5
  %530 = zext i8 %529 to i32
  %531 = xor i32 %524, %530
  %532 = and i32 %531, %488
  store i32 %532, ptr %15, align 8, !tbaa !78
  %533 = load ptr, ptr %12, align 8, !tbaa !37
  %534 = zext i32 %532 to i64
  %535 = getelementptr inbounds nuw [2 x i8], ptr %533, i64 %534
  %536 = load i16, ptr %535, align 2, !tbaa !60
  %537 = load ptr, ptr %13, align 8, !tbaa !35
  %538 = load i32, ptr %18, align 8, !tbaa !32
  %539 = and i32 %538, %518
  %540 = zext i32 %539 to i64
  %541 = getelementptr inbounds nuw [2 x i8], ptr %537, i64 %540
  store i16 %536, ptr %541, align 2, !tbaa !60
  %542 = trunc i32 %518 to i16
  store i16 %542, ptr %535, align 2, !tbaa !60
  %543 = add i32 %517, -1
  store i32 %543, ptr %10, align 4, !tbaa !74
  %544 = add nuw i32 %518, 1
  %545 = add i32 %543, %459
  %546 = icmp ult i32 %545, 3
  br i1 %546, label %.loopexit, label %.mv.ph, !llvm.loop !89

.loopexit:                                        ; preds = %.mv.ph, %523, %.mv.ph.mv.fast, %493, %463
  %547 = icmp ult i32 %459, 262
  br i1 %547, label %548, label %.loopexit73

548:                                              ; preds = %.loopexit
  %549 = load ptr, ptr %0, align 8, !tbaa !19
  %550 = getelementptr inbounds nuw i8, ptr %549, i64 8
  %551 = load i32, ptr %550, align 8, !tbaa !79
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %.loopexit73, label %.mv.ph3, !llvm.loop !90

.loopexit73:                                      ; preds = %548, %.loopexit, %412, %264, %.loopexit.mv.fast, %154
  %553 = phi i32 [ %201, %264 ], [ %155, %154 ], [ %201, %.loopexit.mv.fast ], [ %413, %412 ], [ %459, %.loopexit ], [ %459, %548 ]
  %554 = load i64, ptr %19, align 8, !tbaa !38
  %555 = load i64, ptr %5, align 8, !tbaa !59
  %556 = icmp ult i64 %554, %555
  br i1 %556, label %557, label %592

557:                                              ; preds = %.loopexit73
  %558 = load i32, ptr %6, align 4, !tbaa !71
  %559 = zext i32 %558 to i64
  %560 = zext i32 %553 to i64
  %561 = add nuw nsw i64 %559, %560
  %562 = icmp ult i64 %554, %561
  br i1 %562, label %563, label %573

563:                                              ; preds = %557
  %564 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %555, i64 %561), !nosanitize !44
  %565 = extractvalue { i64, i1 } %564, 1, !nosanitize !44
  br i1 %565, label %566, label %567, !prof !45, !nosanitize !44

566:                                              ; preds = %563
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

567:                                              ; preds = %563
  %568 = extractvalue { i64, i1 } %564, 0, !nosanitize !44
  %569 = tail call i64 @llvm.umin.i64(i64 %568, i64 258)
  %570 = load ptr, ptr %7, align 8, !tbaa !34
  %571 = getelementptr inbounds nuw i8, ptr %570, i64 %561
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %571, i8 0, i64 %569, i1 false)
  %572 = add nuw nsw i64 %569, %561
  br label %589

573:                                              ; preds = %557
  %574 = add nuw nsw i64 %561, 258
  %575 = icmp ult i64 %554, %574
  br i1 %575, label %576, label %592

576:                                              ; preds = %573
  %577 = sub nuw nsw i64 %574, %554
  %578 = sub i64 %555, %554
  %579 = tail call i64 @llvm.umin.i64(i64 %577, i64 %578)
  %580 = load ptr, ptr %7, align 8, !tbaa !34
  %581 = getelementptr inbounds nuw i8, ptr %580, i64 %554
  %582 = and i64 %579, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %581, i8 0, i64 %582, i1 false)
  %583 = load i64, ptr %19, align 8, !tbaa !38
  %584 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %583, i64 %579), !nosanitize !44
  %585 = extractvalue { i64, i1 } %584, 1, !nosanitize !44
  br i1 %585, label %586, label %587, !prof !45, !nosanitize !44

586:                                              ; preds = %576
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

587:                                              ; preds = %576
  %588 = extractvalue { i64, i1 } %584, 0, !nosanitize !44
  br label %589

589:                                              ; preds = %587, %567
  %590 = phi i64 [ %572, %567 ], [ %588, %587 ]
  store i64 %590, ptr %19, align 8, !tbaa !38
  %591 = load i32, ptr %3, align 4, !tbaa !73
  br label %592

592:                                              ; preds = %589, %573, %.loopexit73
  %593 = phi i32 [ %553, %.loopexit73 ], [ %553, %573 ], [ %591, %589 ]
  %594 = icmp ult i32 %593, 262
  %595 = and i1 %20, %594
  br i1 %595, label %.loopexit93, label %596

596:                                              ; preds = %592
  %597 = icmp eq i32 %593, 0
  br i1 %597, label %1209, label %598

598:                                              ; preds = %596
  %599 = icmp ugt i32 %593, 2
  br i1 %599, label %603, label %600

600:                                              ; preds = %598
  %601 = load i32, ptr %21, align 8, !tbaa !76
  store i32 %601, ptr %22, align 8, !tbaa !75
  %602 = load i32, ptr %8, align 8, !tbaa !81
  store i32 %602, ptr %23, align 4, !tbaa !176
  br label %824

603:                                              ; preds = %598, %35
  %604 = phi i32 [ %593, %598 ], [ %36, %35 ]
  %605 = load i32, ptr %6, align 4, !tbaa !71
  %606 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %605, i32 2), !nosanitize !44
  %607 = extractvalue { i32, i1 } %606, 1, !nosanitize !44
  br i1 %607, label %608, label %609, !prof !45, !nosanitize !44

608:                                              ; preds = %603
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

609:                                              ; preds = %603
  %610 = extractvalue { i32, i1 } %606, 0, !nosanitize !44
  %611 = load ptr, ptr %7, align 8, !tbaa !34
  %612 = load i32, ptr %15, align 8, !tbaa !78
  %613 = load i32, ptr %16, align 8, !tbaa !52
  %614 = shl i32 %612, %613
  %615 = zext i32 %610 to i64
  %616 = getelementptr inbounds nuw i8, ptr %611, i64 %615
  %617 = load i8, ptr %616, align 1, !tbaa !5
  %618 = zext i8 %617 to i32
  %619 = xor i32 %614, %618
  %620 = load i32, ptr %17, align 4, !tbaa !51
  %621 = and i32 %619, %620
  store i32 %621, ptr %15, align 8, !tbaa !78
  %622 = load ptr, ptr %12, align 8, !tbaa !37
  %623 = zext i32 %621 to i64
  %624 = getelementptr inbounds nuw [2 x i8], ptr %622, i64 %623
  %625 = load i16, ptr %624, align 2, !tbaa !60
  %626 = load ptr, ptr %13, align 8, !tbaa !35
  %627 = load i32, ptr %18, align 8, !tbaa !32
  %628 = and i32 %627, %605
  %629 = zext i32 %628 to i64
  %630 = getelementptr inbounds nuw [2 x i8], ptr %626, i64 %629
  store i16 %625, ptr %630, align 2, !tbaa !60
  %631 = zext i16 %625 to i32
  %632 = trunc i32 %605 to i16
  store i16 %632, ptr %624, align 2, !tbaa !60
  %633 = load i32, ptr %21, align 8, !tbaa !76
  store i32 %633, ptr %22, align 8, !tbaa !75
  %634 = load i32, ptr %8, align 8, !tbaa !81
  store i32 %634, ptr %23, align 4, !tbaa !176
  store i32 2, ptr %21, align 8, !tbaa !76
  %635 = icmp eq i16 %625, 0
  br i1 %635, label %828, label %636

636:                                              ; preds = %609
  %637 = load i32, ptr %24, align 8, !tbaa !64
  %638 = icmp ult i32 %633, %637
  br i1 %638, label %639, label %828

639:                                              ; preds = %636
  %640 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %605, i32 %631), !nosanitize !44
  %641 = extractvalue { i32, i1 } %640, 0, !nosanitize !44
  %642 = extractvalue { i32, i1 } %640, 1, !nosanitize !44
  br i1 %642, label %643, label %644, !prof !45, !nosanitize !44

643:                                              ; preds = %639
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

644:                                              ; preds = %639
  %645 = load i32, ptr %4, align 8, !tbaa !31
  %646 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %645, i32 262), !nosanitize !44
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !44
  br i1 %647, label %648, label %649, !prof !45, !nosanitize !44

648:                                              ; preds = %644
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

649:                                              ; preds = %644
  %650 = extractvalue { i32, i1 } %646, 0, !nosanitize !44
  %651 = icmp ugt i32 %641, %650
  br i1 %651, label %828, label %652

652:                                              ; preds = %649
  %653 = zext i32 %605 to i64
  %654 = getelementptr inbounds nuw i8, ptr %611, i64 %653
  %655 = tail call i32 @llvm.usub.sat.i32(i32 %605, i32 %650)
  %656 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %633, i32 -1)
  %657 = extractvalue { i32, i1 } %656, 1, !nosanitize !44
  br i1 %657, label %.loopexit65, label %658, !prof !45, !nosanitize !44

.loopexit65:                                      ; preds = %652, %.split.loop.exit, %690
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

658:                                              ; preds = %652
  %659 = load i32, ptr %25, align 8, !tbaa !68
  %660 = load i32, ptr %26, align 4, !tbaa !70
  %661 = getelementptr inbounds nuw i8, ptr %654, i64 258
  %662 = extractvalue { i32, i1 } %656, 0, !nosanitize !44
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i8, ptr %654, i64 %663
  %665 = load i8, ptr %664, align 1, !tbaa !5
  %666 = sext i32 %633 to i64
  %667 = getelementptr inbounds i8, ptr %654, i64 %666
  %668 = load i8, ptr %667, align 1, !tbaa !5
  %669 = load i32, ptr %27, align 4, !tbaa !66
  %670 = icmp ult i32 %633, %669
  %671 = lshr i32 %660, 2
  %672 = select i1 %670, i32 %660, i32 %671
  %673 = tail call i32 @llvm.umin.i32(i32 %659, i32 %604)
  %674 = getelementptr i8, ptr %654, i64 -1
  %675 = getelementptr inbounds nuw i8, ptr %654, i64 1
  %676 = ptrtoint ptr %661 to i64
  br label %677

677:                                              ; preds = %804, %658
  %678 = phi i32 [ %634, %658 ], [ %790, %804 ]
  %679 = phi i32 [ %633, %658 ], [ %791, %804 ]
  %680 = phi i32 [ %672, %658 ], [ %805, %804 ]
  %681 = phi i32 [ %631, %658 ], [ %798, %804 ]
  %682 = phi i8 [ %665, %658 ], [ %792, %804 ]
  %683 = phi i8 [ %668, %658 ], [ %793, %804 ]
  %684 = zext nneg i32 %681 to i64
  %685 = getelementptr inbounds nuw i8, ptr %611, i64 %684
  %686 = sext i32 %679 to i64
  %687 = getelementptr inbounds i8, ptr %685, i64 %686
  %688 = load i8, ptr %687, align 1, !tbaa !5
  %689 = icmp eq i8 %688, %683
  br i1 %689, label %690, label %789

690:                                              ; preds = %677
  %691 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %679, i32 -1)
  %692 = extractvalue { i32, i1 } %691, 1, !nosanitize !44
  br i1 %692, label %.loopexit65, label %693, !prof !45, !nosanitize !44

693:                                              ; preds = %690
  %694 = extractvalue { i32, i1 } %691, 0, !nosanitize !44
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds i8, ptr %685, i64 %695
  %697 = load i8, ptr %696, align 1, !tbaa !5
  %698 = icmp eq i8 %697, %682
  br i1 %698, label %699, label %789

699:                                              ; preds = %693
  %700 = load i8, ptr %685, align 1, !tbaa !5
  %701 = load i8, ptr %654, align 1, !tbaa !5
  %702 = icmp eq i8 %700, %701
  br i1 %702, label %703, label %789

703:                                              ; preds = %699
  %704 = getelementptr inbounds nuw i8, ptr %685, i64 1
  %705 = load i8, ptr %704, align 1, !tbaa !5
  %706 = load i8, ptr %675, align 1, !tbaa !5
  %707 = icmp eq i8 %705, %706
  br i1 %707, label %708, label %789

708:                                              ; preds = %703
  %709 = getelementptr inbounds nuw i8, ptr %685, i64 2
  br label %710

710:                                              ; preds = %755, %708
  %711 = phi ptr [ %709, %708 ], [ %759, %755 ]
  %712 = phi i64 [ 2, %708 ], [ %756, %755 ]
  %713 = getelementptr inbounds nuw i8, ptr %654, i64 %712
  %714 = getelementptr inbounds nuw i8, ptr %713, i64 1
  %715 = load i8, ptr %714, align 1, !tbaa !5
  %716 = getelementptr inbounds nuw i8, ptr %711, i64 1
  %717 = load i8, ptr %716, align 1, !tbaa !5
  %718 = icmp eq i8 %715, %717
  br i1 %718, label %719, label %.split.loop.exit.split.loop.exit

719:                                              ; preds = %710
  %720 = getelementptr inbounds nuw i8, ptr %713, i64 2
  %721 = load i8, ptr %720, align 1, !tbaa !5
  %722 = getelementptr inbounds nuw i8, ptr %711, i64 2
  %723 = load i8, ptr %722, align 1, !tbaa !5
  %724 = icmp eq i8 %721, %723
  br i1 %724, label %725, label %.split.loop.exit.split.loop.exit238

725:                                              ; preds = %719
  %726 = getelementptr inbounds nuw i8, ptr %713, i64 3
  %727 = load i8, ptr %726, align 1, !tbaa !5
  %728 = getelementptr inbounds nuw i8, ptr %711, i64 3
  %729 = load i8, ptr %728, align 1, !tbaa !5
  %730 = icmp eq i8 %727, %729
  br i1 %730, label %731, label %.split.loop.exit.split.loop.exit240

731:                                              ; preds = %725
  %732 = getelementptr inbounds nuw i8, ptr %713, i64 4
  %733 = load i8, ptr %732, align 1, !tbaa !5
  %734 = getelementptr inbounds nuw i8, ptr %711, i64 4
  %735 = load i8, ptr %734, align 1, !tbaa !5
  %736 = icmp eq i8 %733, %735
  br i1 %736, label %737, label %.split.loop.exit.split.loop.exit242

737:                                              ; preds = %731
  %738 = getelementptr inbounds nuw i8, ptr %713, i64 5
  %739 = load i8, ptr %738, align 1, !tbaa !5
  %740 = getelementptr inbounds nuw i8, ptr %711, i64 5
  %741 = load i8, ptr %740, align 1, !tbaa !5
  %742 = icmp eq i8 %739, %741
  br i1 %742, label %743, label %.split.loop.exit.split.loop.exit244

743:                                              ; preds = %737
  %744 = getelementptr inbounds nuw i8, ptr %713, i64 6
  %745 = load i8, ptr %744, align 1, !tbaa !5
  %746 = getelementptr inbounds nuw i8, ptr %711, i64 6
  %747 = load i8, ptr %746, align 1, !tbaa !5
  %748 = icmp eq i8 %745, %747
  br i1 %748, label %749, label %.split.loop.exit.split.loop.exit246

749:                                              ; preds = %743
  %750 = getelementptr inbounds nuw i8, ptr %713, i64 7
  %751 = load i8, ptr %750, align 1, !tbaa !5
  %752 = getelementptr inbounds nuw i8, ptr %711, i64 7
  %753 = load i8, ptr %752, align 1, !tbaa !5
  %754 = icmp eq i8 %751, %753
  br i1 %754, label %755, label %.split.loop.exit.split.loop.exit248

755:                                              ; preds = %749
  %756 = add nuw nsw i64 %712, 8
  %757 = getelementptr inbounds nuw i8, ptr %654, i64 %756
  %758 = load i8, ptr %757, align 1, !tbaa !5
  %759 = getelementptr inbounds nuw i8, ptr %711, i64 8
  %760 = load i8, ptr %759, align 1, !tbaa !5
  %761 = icmp eq i8 %758, %760
  %762 = icmp samesign ult i64 %712, 250
  %763 = select i1 %761, i1 %762, i1 false
  br i1 %763, label %710, label %.split.loop.exit.split.loop.exit250, !llvm.loop !165

.split.loop.exit.split.loop.exit:                 ; preds = %710
  %764 = getelementptr inbounds nuw i8, ptr %713, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit238:              ; preds = %719
  %765 = getelementptr inbounds nuw i8, ptr %713, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit240:              ; preds = %725
  %766 = getelementptr inbounds nuw i8, ptr %713, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit242:              ; preds = %731
  %767 = getelementptr inbounds nuw i8, ptr %713, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit244:              ; preds = %737
  %768 = getelementptr inbounds nuw i8, ptr %713, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit246:              ; preds = %743
  %769 = getelementptr inbounds nuw i8, ptr %713, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit248:              ; preds = %749
  %770 = getelementptr inbounds nuw i8, ptr %713, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit250:              ; preds = %755
  %771 = getelementptr inbounds nuw i8, ptr %654, i64 %756
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit250, %.split.loop.exit.split.loop.exit248, %.split.loop.exit.split.loop.exit246, %.split.loop.exit.split.loop.exit244, %.split.loop.exit.split.loop.exit242, %.split.loop.exit.split.loop.exit240, %.split.loop.exit.split.loop.exit238, %.split.loop.exit.split.loop.exit
  %772 = phi ptr [ %764, %.split.loop.exit.split.loop.exit ], [ %765, %.split.loop.exit.split.loop.exit238 ], [ %766, %.split.loop.exit.split.loop.exit240 ], [ %767, %.split.loop.exit.split.loop.exit242 ], [ %768, %.split.loop.exit.split.loop.exit244 ], [ %769, %.split.loop.exit.split.loop.exit246 ], [ %770, %.split.loop.exit.split.loop.exit248 ], [ %771, %.split.loop.exit.split.loop.exit250 ]
  %773 = ptrtoint ptr %772 to i64
  %774 = sub i64 %676, %773
  %775 = trunc i64 %774 to i32
  %776 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %775), !nosanitize !44
  %777 = extractvalue { i32, i1 } %776, 0, !nosanitize !44
  %778 = extractvalue { i32, i1 } %776, 1, !nosanitize !44
  br i1 %778, label %.loopexit65, label %779, !prof !45, !nosanitize !44

779:                                              ; preds = %.split.loop.exit
  %780 = icmp sgt i32 %777, %679
  br i1 %780, label %781, label %789

781:                                              ; preds = %779
  store i32 %681, ptr %8, align 8, !tbaa !81
  %782 = icmp slt i32 %777, %673
  br i1 %782, label %783, label %807

783:                                              ; preds = %781
  %784 = sext i32 %777 to i64
  %785 = getelementptr i8, ptr %674, i64 %784
  %786 = load i8, ptr %785, align 1, !tbaa !5
  %787 = getelementptr inbounds i8, ptr %654, i64 %784
  %788 = load i8, ptr %787, align 1, !tbaa !5
  br label %789

789:                                              ; preds = %783, %779, %703, %699, %693, %677
  %790 = phi i32 [ %678, %677 ], [ %678, %693 ], [ %678, %699 ], [ %678, %703 ], [ %681, %783 ], [ %678, %779 ]
  %791 = phi i32 [ %679, %677 ], [ %679, %693 ], [ %679, %699 ], [ %679, %703 ], [ %777, %783 ], [ %679, %779 ]
  %792 = phi i8 [ %682, %677 ], [ %682, %693 ], [ %682, %699 ], [ %682, %703 ], [ %786, %783 ], [ %682, %779 ]
  %793 = phi i8 [ %683, %677 ], [ %683, %693 ], [ %683, %699 ], [ %683, %703 ], [ %788, %783 ], [ %683, %779 ]
  %794 = and i32 %681, %627
  %795 = zext nneg i32 %794 to i64
  %796 = getelementptr inbounds nuw [2 x i8], ptr %626, i64 %795
  %797 = load i16, ptr %796, align 2, !tbaa !60
  %798 = zext i16 %797 to i32
  %799 = icmp ult i32 %655, %798
  br i1 %799, label %800, label %807

800:                                              ; preds = %789
  %801 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %680, i32 1), !nosanitize !44
  %802 = extractvalue { i32, i1 } %801, 1, !nosanitize !44
  br i1 %802, label %803, label %804, !prof !45, !nosanitize !44

803:                                              ; preds = %800
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

804:                                              ; preds = %800
  %805 = extractvalue { i32, i1 } %801, 0, !nosanitize !44
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %807, label %677, !llvm.loop !166

807:                                              ; preds = %804, %789, %781
  %808 = phi i32 [ %790, %804 ], [ %790, %789 ], [ %681, %781 ]
  %809 = phi i32 [ %791, %804 ], [ %791, %789 ], [ %777, %781 ]
  %810 = tail call i32 @llvm.umin.i32(i32 %809, i32 %604)
  store i32 %810, ptr %21, align 8, !tbaa !76
  %811 = icmp ult i32 %810, 6
  br i1 %811, label %812, label %828

812:                                              ; preds = %807
  %813 = load i32, ptr %28, align 8, !tbaa !48
  %814 = icmp eq i32 %813, 1
  br i1 %814, label %824, label %815

815:                                              ; preds = %812
  %816 = icmp eq i32 %810, 3
  br i1 %816, label %817, label %828

817:                                              ; preds = %815
  %818 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %605, i32 %808), !nosanitize !44
  %819 = extractvalue { i32, i1 } %818, 1, !nosanitize !44
  br i1 %819, label %820, label %821, !prof !45, !nosanitize !44

820:                                              ; preds = %817
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

821:                                              ; preds = %817
  %822 = extractvalue { i32, i1 } %818, 0, !nosanitize !44
  %823 = icmp ugt i32 %822, 4096
  br i1 %823, label %824, label %828

824:                                              ; preds = %821, %812, %600
  %825 = phi i32 [ %602, %600 ], [ %634, %821 ], [ %634, %812 ]
  %826 = phi i32 [ %601, %600 ], [ %633, %821 ], [ %633, %812 ]
  %827 = phi i32 [ %593, %600 ], [ %604, %821 ], [ %604, %812 ]
  store i32 2, ptr %21, align 8, !tbaa !76
  br label %828

828:                                              ; preds = %824, %821, %815, %807, %649, %636, %609
  %829 = phi i32 [ %810, %807 ], [ %810, %815 ], [ 3, %821 ], [ 2, %649 ], [ 2, %636 ], [ 2, %609 ], [ 2, %824 ]
  %830 = phi i32 [ %634, %807 ], [ %634, %815 ], [ %634, %821 ], [ %634, %649 ], [ %634, %636 ], [ %634, %609 ], [ %825, %824 ]
  %831 = phi i32 [ %633, %807 ], [ %633, %815 ], [ %633, %821 ], [ %633, %649 ], [ %633, %636 ], [ %633, %609 ], [ %826, %824 ]
  %832 = phi i32 [ %604, %807 ], [ %604, %815 ], [ %604, %821 ], [ %604, %649 ], [ %604, %636 ], [ %604, %609 ], [ %827, %824 ]
  %833 = icmp ult i32 %831, 3
  %834 = icmp ugt i32 %829, %831
  %835 = or i1 %833, %834
  br i1 %835, label %1072, label %836

836:                                              ; preds = %828
  %837 = load i32, ptr %6, align 4, !tbaa !71
  %838 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %837, i32 %832), !nosanitize !44
  %839 = extractvalue { i32, i1 } %838, 1, !nosanitize !44
  br i1 %839, label %840, label %841, !prof !45, !nosanitize !44

840:                                              ; preds = %836
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

841:                                              ; preds = %836
  %842 = extractvalue { i32, i1 } %838, 0, !nosanitize !44
  %843 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %842, i32 3), !nosanitize !44
  %844 = extractvalue { i32, i1 } %843, 0, !nosanitize !44
  %845 = extractvalue { i32, i1 } %843, 1, !nosanitize !44
  br i1 %845, label %846, label %847, !prof !45, !nosanitize !44

846:                                              ; preds = %841
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

847:                                              ; preds = %841
  %848 = trunc i32 %831 to i8
  %849 = add i8 %848, -3
  %850 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %837, i32 1), !nosanitize !44
  %851 = extractvalue { i32, i1 } %850, 1, !nosanitize !44
  br i1 %851, label %852, label %853, !prof !45, !nosanitize !44

852:                                              ; preds = %847
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

853:                                              ; preds = %847
  %854 = extractvalue { i32, i1 } %850, 0, !nosanitize !44
  %855 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %854, i32 %830), !nosanitize !44
  %856 = extractvalue { i32, i1 } %855, 1, !nosanitize !44
  br i1 %856, label %857, label %858, !prof !45, !nosanitize !44

857:                                              ; preds = %853
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

858:                                              ; preds = %853
  %859 = extractvalue { i32, i1 } %855, 0, !nosanitize !44
  %860 = trunc i32 %859 to i16
  %861 = load i32, ptr %30, align 4, !tbaa !144
  %862 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %861, i32 1), !nosanitize !44
  %863 = extractvalue { i32, i1 } %862, 1, !nosanitize !44
  br i1 %863, label %864, label %865, !prof !45, !nosanitize !44

864:                                              ; preds = %858
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

865:                                              ; preds = %858
  %866 = extractvalue { i32, i1 } %862, 0, !nosanitize !44
  %867 = load ptr, ptr %29, align 8, !tbaa !43
  %868 = trunc i32 %859 to i8
  store i32 %866, ptr %30, align 4, !tbaa !144
  %869 = zext i32 %861 to i64
  %870 = getelementptr inbounds nuw i8, ptr %867, i64 %869
  store i8 %868, ptr %870, align 1, !tbaa !5
  %871 = load i32, ptr %30, align 4, !tbaa !144
  %872 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %871, i32 1), !nosanitize !44
  %873 = extractvalue { i32, i1 } %872, 1, !nosanitize !44
  br i1 %873, label %874, label %875, !prof !45, !nosanitize !44

874:                                              ; preds = %865
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

875:                                              ; preds = %865
  %876 = extractvalue { i32, i1 } %872, 0, !nosanitize !44
  %877 = load ptr, ptr %29, align 8, !tbaa !43
  %878 = lshr i32 %859, 8
  %879 = trunc i32 %878 to i8
  store i32 %876, ptr %30, align 4, !tbaa !144
  %880 = zext i32 %871 to i64
  %881 = getelementptr inbounds nuw i8, ptr %877, i64 %880
  store i8 %879, ptr %881, align 1, !tbaa !5
  %882 = load i32, ptr %30, align 4, !tbaa !144
  %883 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %882, i32 1), !nosanitize !44
  %884 = extractvalue { i32, i1 } %883, 1, !nosanitize !44
  br i1 %884, label %885, label %886, !prof !45, !nosanitize !44

885:                                              ; preds = %875
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

886:                                              ; preds = %875
  %887 = extractvalue { i32, i1 } %883, 0, !nosanitize !44
  %888 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %887, ptr %30, align 4, !tbaa !144
  %889 = zext i32 %882 to i64
  %890 = getelementptr inbounds nuw i8, ptr %888, i64 %889
  store i8 %849, ptr %890, align 1, !tbaa !5
  %891 = add i16 %860, -1
  %892 = zext i8 %849 to i64
  %893 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %892
  %894 = load i8, ptr %893, align 1, !tbaa !5
  %895 = zext i8 %894 to i64
  %896 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %895
  %897 = getelementptr inbounds nuw i8, ptr %896, i64 1028
  %898 = load i16, ptr %897, align 4, !tbaa !5
  %899 = add i16 %898, 1
  store i16 %899, ptr %897, align 4, !tbaa !5
  %900 = icmp ult i16 %891, 256
  %901 = lshr i16 %891, 7
  %902 = add nuw nsw i16 %901, 256
  %903 = select i1 %900, i16 %891, i16 %902
  %904 = zext i16 %903 to i64
  %905 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %904
  %906 = load i8, ptr %905, align 1, !tbaa !5
  %907 = zext i8 %906 to i64
  %908 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %907
  %909 = load i16, ptr %908, align 4, !tbaa !5
  %910 = add i16 %909, 1
  store i16 %910, ptr %908, align 4, !tbaa !5
  %911 = load i32, ptr %30, align 4, !tbaa !144
  %912 = load i32, ptr %33, align 8, !tbaa !46
  %913 = icmp eq i32 %911, %912
  %914 = load i32, ptr %22, align 8, !tbaa !75
  %915 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %914, i32 1), !nosanitize !44
  %916 = extractvalue { i32, i1 } %915, 1, !nosanitize !44
  br i1 %916, label %917, label %918, !prof !45, !nosanitize !44

917:                                              ; preds = %886
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

918:                                              ; preds = %886
  %919 = extractvalue { i32, i1 } %915, 0, !nosanitize !44
  %920 = load i32, ptr %3, align 4, !tbaa !73
  %921 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %920, i32 %919), !nosanitize !44
  %922 = extractvalue { i32, i1 } %921, 1, !nosanitize !44
  br i1 %922, label %923, label %924, !prof !45, !nosanitize !44

923:                                              ; preds = %918
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

924:                                              ; preds = %918
  %925 = extractvalue { i32, i1 } %921, 0, !nosanitize !44
  store i32 %925, ptr %3, align 4, !tbaa !73
  %926 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %914, i32 2), !nosanitize !44
  %927 = extractvalue { i32, i1 } %926, 1, !nosanitize !44
  br i1 %927, label %928, label %929, !prof !45, !nosanitize !44

928:                                              ; preds = %924
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

929:                                              ; preds = %924
  %930 = extractvalue { i32, i1 } %926, 0, !nosanitize !44
  store i32 %930, ptr %22, align 8, !tbaa !75
  %931 = load i32, ptr %6, align 4, !tbaa !71
  %932 = or i32 %931, %914
  %.fr53 = freeze i32 %932
  %mv.h11 = icmp sgt i32 %.fr53, -1
  br i1 %mv.h11, label %.mv.ph13.mv.fast, label %.mv.ph13.preheader

.mv.ph13.preheader:                               ; preds = %929
  %933 = xor i32 %931, -1
  %934 = add i32 %914, -3
  %umin = tail call i32 @llvm.umin.i32(i32 %930, i32 %934)
  %935 = freeze i32 %umin
  %.not = icmp ult i32 %935, %933
  br i1 %.not, label %.mv.ph13, label %973, !prof !91, !nosanitize !44

.mv.ph13.mv.fast:                                 ; preds = %929, %966
  %936 = phi i32 [ %967, %966 ], [ %930, %929 ]
  %937 = phi i32 [ %938, %966 ], [ %931, %929 ]
  %938 = add i32 %937, 1
  store i32 %938, ptr %6, align 4, !tbaa !71
  %939 = icmp ugt i32 %938, %844
  br i1 %939, label %963, label %940

940:                                              ; preds = %.mv.ph13.mv.fast
  %941 = add i32 %937, 3
  %942 = load ptr, ptr %7, align 8, !tbaa !34
  %943 = load i32, ptr %15, align 8, !tbaa !78
  %944 = load i32, ptr %16, align 8, !tbaa !52
  %945 = shl i32 %943, %944
  %946 = zext i32 %941 to i64
  %947 = getelementptr inbounds nuw i8, ptr %942, i64 %946
  %948 = load i8, ptr %947, align 1, !tbaa !5
  %949 = zext i8 %948 to i32
  %950 = xor i32 %945, %949
  %951 = load i32, ptr %17, align 4, !tbaa !51
  %952 = and i32 %950, %951
  store i32 %952, ptr %15, align 8, !tbaa !78
  %953 = load ptr, ptr %12, align 8, !tbaa !37
  %954 = zext i32 %952 to i64
  %955 = getelementptr inbounds nuw [2 x i8], ptr %953, i64 %954
  %956 = load i16, ptr %955, align 2, !tbaa !60
  %957 = load ptr, ptr %13, align 8, !tbaa !35
  %958 = load i32, ptr %18, align 8, !tbaa !32
  %959 = and i32 %958, %938
  %960 = zext i32 %959 to i64
  %961 = getelementptr inbounds nuw [2 x i8], ptr %957, i64 %960
  store i16 %956, ptr %961, align 2, !tbaa !60
  %962 = trunc i32 %938 to i16
  store i16 %962, ptr %955, align 2, !tbaa !60
  br label %963

963:                                              ; preds = %940, %.mv.ph13.mv.fast
  %964 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %936, i32 1), !nosanitize !44
  %965 = extractvalue { i32, i1 } %964, 1, !nosanitize !44
  br i1 %965, label %.loopexit5, label %966, !prof !45, !nosanitize !44

966:                                              ; preds = %963
  %967 = extractvalue { i32, i1 } %964, 0, !nosanitize !44
  store i32 %967, ptr %22, align 8, !tbaa !75
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %.loopexit62, label %.mv.ph13.mv.fast, !llvm.loop !177

.mv.ph13:                                         ; preds = %.mv.ph13.preheader, %1000
  %969 = phi i32 [ %1001, %1000 ], [ %930, %.mv.ph13.preheader ]
  %970 = phi i32 [ %971, %1000 ], [ %931, %.mv.ph13.preheader ]
  %971 = add i32 %970, 1
  store i32 %971, ptr %6, align 4, !tbaa !71
  %972 = icmp ugt i32 %971, %844
  br i1 %972, label %997, label %974

973:                                              ; preds = %.mv.ph13.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

974:                                              ; preds = %.mv.ph13
  %975 = add i32 %970, 3
  %976 = load ptr, ptr %7, align 8, !tbaa !34
  %977 = load i32, ptr %15, align 8, !tbaa !78
  %978 = load i32, ptr %16, align 8, !tbaa !52
  %979 = shl i32 %977, %978
  %980 = zext i32 %975 to i64
  %981 = getelementptr inbounds nuw i8, ptr %976, i64 %980
  %982 = load i8, ptr %981, align 1, !tbaa !5
  %983 = zext i8 %982 to i32
  %984 = xor i32 %979, %983
  %985 = load i32, ptr %17, align 4, !tbaa !51
  %986 = and i32 %984, %985
  store i32 %986, ptr %15, align 8, !tbaa !78
  %987 = load ptr, ptr %12, align 8, !tbaa !37
  %988 = zext i32 %986 to i64
  %989 = getelementptr inbounds nuw [2 x i8], ptr %987, i64 %988
  %990 = load i16, ptr %989, align 2, !tbaa !60
  %991 = load ptr, ptr %13, align 8, !tbaa !35
  %992 = load i32, ptr %18, align 8, !tbaa !32
  %993 = and i32 %992, %971
  %994 = zext i32 %993 to i64
  %995 = getelementptr inbounds nuw [2 x i8], ptr %991, i64 %994
  store i16 %990, ptr %995, align 2, !tbaa !60
  %996 = trunc i32 %971 to i16
  store i16 %996, ptr %989, align 2, !tbaa !60
  br label %997

997:                                              ; preds = %974, %.mv.ph13
  %998 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %969, i32 1), !nosanitize !44
  %999 = extractvalue { i32, i1 } %998, 1, !nosanitize !44
  br i1 %999, label %.loopexit5, label %1000, !prof !45, !nosanitize !44

.loopexit5:                                       ; preds = %1015, %997, %963
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1000:                                             ; preds = %997
  %1001 = extractvalue { i32, i1 } %998, 0, !nosanitize !44
  store i32 %1001, ptr %22, align 8, !tbaa !75
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %.loopexit62, label %.mv.ph13, !llvm.loop !177

.loopexit62:                                      ; preds = %1000, %966
  %.lcssa8 = phi i32 [ %938, %966 ], [ %971, %1000 ]
  store i32 0, ptr %34, align 8, !tbaa !77
  store i32 2, ptr %21, align 8, !tbaa !76
  %1003 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.lcssa8, i32 1), !nosanitize !44
  %1004 = extractvalue { i32, i1 } %1003, 1, !nosanitize !44
  br i1 %1004, label %1005, label %1006, !prof !45, !nosanitize !44

1005:                                             ; preds = %.loopexit62
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1006:                                             ; preds = %.loopexit62
  %1007 = extractvalue { i32, i1 } %1003, 0, !nosanitize !44
  store i32 %1007, ptr %6, align 4, !tbaa !71
  br i1 %913, label %1008, label %.backedge

1008:                                             ; preds = %1006
  %1009 = load i64, ptr %9, align 8, !tbaa !72
  %1010 = icmp sgt i64 %1009, -1
  br i1 %1010, label %1011, label %1015

1011:                                             ; preds = %1008
  %1012 = load ptr, ptr %7, align 8, !tbaa !34
  %1013 = and i64 %1009, 4294967295
  %1014 = getelementptr inbounds nuw i8, ptr %1012, i64 %1013
  br label %1015

1015:                                             ; preds = %1011, %1008
  %1016 = phi ptr [ %1014, %1011 ], [ null, %1008 ]
  %1017 = zext i32 %1007 to i64
  %1018 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1017, i64 %1009), !nosanitize !44
  %1019 = extractvalue { i64, i1 } %1018, 1, !nosanitize !44
  br i1 %1019, label %.loopexit5, label %1020, !prof !45, !nosanitize !44

1020:                                             ; preds = %1015
  %1021 = extractvalue { i64, i1 } %1018, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1016, i64 noundef %1021, i32 noundef 0) #11
  %1022 = load i32, ptr %6, align 4, !tbaa !71
  %1023 = zext i32 %1022 to i64
  store i64 %1023, ptr %9, align 8, !tbaa !72
  %1024 = load ptr, ptr %0, align 8, !tbaa !19
  %1025 = getelementptr inbounds nuw i8, ptr %1024, i64 56
  %1026 = load ptr, ptr %1025, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1026) #11
  %1027 = getelementptr inbounds nuw i8, ptr %1026, i64 40
  %1028 = load i64, ptr %1027, align 8, !tbaa !55
  %1029 = getelementptr inbounds nuw i8, ptr %1024, i64 32
  %1030 = load i32, ptr %1029, align 8, !tbaa !109
  %1031 = zext i32 %1030 to i64
  %1032 = tail call i64 @llvm.umin.i64(i64 %1028, i64 %1031)
  %1033 = trunc nuw i64 %1032 to i32
  %1034 = icmp eq i64 %1032, 0
  br i1 %1034, label %1067, label %1035

1035:                                             ; preds = %1020
  %1036 = getelementptr inbounds nuw i8, ptr %1024, i64 24
  %1037 = load ptr, ptr %1036, align 8, !tbaa !108
  %1038 = getelementptr inbounds nuw i8, ptr %1026, i64 32
  %1039 = load ptr, ptr %1038, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1037, ptr align 1 %1039, i64 %1032, i1 false)
  %1040 = load ptr, ptr %1036, align 8, !tbaa !108
  %1041 = getelementptr inbounds nuw i8, ptr %1040, i64 %1032
  store ptr %1041, ptr %1036, align 8, !tbaa !108
  %1042 = load ptr, ptr %1038, align 8, !tbaa !56
  %1043 = getelementptr inbounds nuw i8, ptr %1042, i64 %1032
  store ptr %1043, ptr %1038, align 8, !tbaa !56
  %1044 = getelementptr inbounds nuw i8, ptr %1024, i64 40
  %1045 = load i64, ptr %1044, align 8, !tbaa !110
  %1046 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1045, i64 %1032), !nosanitize !44
  %1047 = extractvalue { i64, i1 } %1046, 1, !nosanitize !44
  br i1 %1047, label %1048, label %1049, !prof !45, !nosanitize !44

1048:                                             ; preds = %1035
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1049:                                             ; preds = %1035
  %1050 = extractvalue { i64, i1 } %1046, 0, !nosanitize !44
  store i64 %1050, ptr %1044, align 8, !tbaa !110
  %1051 = load i32, ptr %1029, align 8, !tbaa !109
  %1052 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1051, i32 %1033), !nosanitize !44
  %1053 = extractvalue { i32, i1 } %1052, 1, !nosanitize !44
  br i1 %1053, label %1054, label %1055, !prof !45, !nosanitize !44

1054:                                             ; preds = %1049
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1055:                                             ; preds = %1049
  %1056 = extractvalue { i32, i1 } %1052, 0, !nosanitize !44
  store i32 %1056, ptr %1029, align 8, !tbaa !109
  %1057 = load i64, ptr %1027, align 8, !tbaa !55
  %1058 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1057, i64 %1032), !nosanitize !44
  %1059 = extractvalue { i64, i1 } %1058, 1, !nosanitize !44
  br i1 %1059, label %1060, label %1061, !prof !45, !nosanitize !44

1060:                                             ; preds = %1055
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1061:                                             ; preds = %1055
  %1062 = extractvalue { i64, i1 } %1058, 0, !nosanitize !44
  store i64 %1062, ptr %1027, align 8, !tbaa !55
  %1063 = icmp eq i64 %1062, 0
  br i1 %1063, label %1064, label %1067

1064:                                             ; preds = %1061
  %1065 = getelementptr inbounds nuw i8, ptr %1026, i64 16
  %1066 = load ptr, ptr %1065, align 8, !tbaa !40
  store ptr %1066, ptr %1038, align 8, !tbaa !56
  br label %1067

1067:                                             ; preds = %1064, %1061, %1020
  %1068 = load ptr, ptr %0, align 8, !tbaa !19
  %1069 = getelementptr inbounds nuw i8, ptr %1068, i64 32
  %1070 = load i32, ptr %1069, align 8, !tbaa !109
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %.loopexit93, label %.backedge

1072:                                             ; preds = %828
  %1073 = load i32, ptr %34, align 8, !tbaa !77
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1197, label %1075

1075:                                             ; preds = %1072
  %1076 = load i32, ptr %6, align 4, !tbaa !71
  %1077 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1076, i32 1), !nosanitize !44
  %1078 = extractvalue { i32, i1 } %1077, 1, !nosanitize !44
  br i1 %1078, label %1079, label %1080, !prof !45, !nosanitize !44

1079:                                             ; preds = %1127, %1075
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1080:                                             ; preds = %1075
  %1081 = extractvalue { i32, i1 } %1077, 0, !nosanitize !44
  %1082 = load ptr, ptr %7, align 8, !tbaa !34
  %1083 = zext i32 %1081 to i64
  %1084 = getelementptr inbounds nuw i8, ptr %1082, i64 %1083
  %1085 = load i8, ptr %1084, align 1, !tbaa !5
  %1086 = load i32, ptr %30, align 4, !tbaa !144
  %1087 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1086, i32 1), !nosanitize !44
  %1088 = extractvalue { i32, i1 } %1087, 1, !nosanitize !44
  br i1 %1088, label %1089, label %1090, !prof !45, !nosanitize !44

1089:                                             ; preds = %1080
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1090:                                             ; preds = %1080
  %1091 = extractvalue { i32, i1 } %1087, 0, !nosanitize !44
  %1092 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %1091, ptr %30, align 4, !tbaa !144
  %1093 = zext i32 %1086 to i64
  %1094 = getelementptr inbounds nuw i8, ptr %1092, i64 %1093
  store i8 0, ptr %1094, align 1, !tbaa !5
  %1095 = load i32, ptr %30, align 4, !tbaa !144
  %1096 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1095, i32 1), !nosanitize !44
  %1097 = extractvalue { i32, i1 } %1096, 1, !nosanitize !44
  br i1 %1097, label %1098, label %1099, !prof !45, !nosanitize !44

1098:                                             ; preds = %1090
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1099:                                             ; preds = %1090
  %1100 = extractvalue { i32, i1 } %1096, 0, !nosanitize !44
  %1101 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %1100, ptr %30, align 4, !tbaa !144
  %1102 = zext i32 %1095 to i64
  %1103 = getelementptr inbounds nuw i8, ptr %1101, i64 %1102
  store i8 0, ptr %1103, align 1, !tbaa !5
  %1104 = load i32, ptr %30, align 4, !tbaa !144
  %1105 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1104, i32 1), !nosanitize !44
  %1106 = extractvalue { i32, i1 } %1105, 1, !nosanitize !44
  br i1 %1106, label %1107, label %1108, !prof !45, !nosanitize !44

1107:                                             ; preds = %1099
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1108:                                             ; preds = %1099
  %1109 = extractvalue { i32, i1 } %1105, 0, !nosanitize !44
  %1110 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %1109, ptr %30, align 4, !tbaa !144
  %1111 = zext i32 %1104 to i64
  %1112 = getelementptr inbounds nuw i8, ptr %1110, i64 %1111
  store i8 %1085, ptr %1112, align 1, !tbaa !5
  %1113 = zext i8 %1085 to i64
  %1114 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %1113
  %1115 = load i16, ptr %1114, align 4, !tbaa !5
  %1116 = add i16 %1115, 1
  store i16 %1116, ptr %1114, align 4, !tbaa !5
  %1117 = load i32, ptr %30, align 4, !tbaa !144
  %1118 = load i32, ptr %33, align 8, !tbaa !46
  %1119 = icmp eq i32 %1117, %1118
  br i1 %1119, label %1120, label %1180

1120:                                             ; preds = %1108
  %1121 = load i64, ptr %9, align 8, !tbaa !72
  %1122 = icmp sgt i64 %1121, -1
  br i1 %1122, label %1123, label %1127

1123:                                             ; preds = %1120
  %1124 = load ptr, ptr %7, align 8, !tbaa !34
  %1125 = and i64 %1121, 4294967295
  %1126 = getelementptr inbounds nuw i8, ptr %1124, i64 %1125
  br label %1127

1127:                                             ; preds = %1123, %1120
  %1128 = phi ptr [ %1126, %1123 ], [ null, %1120 ]
  %1129 = load i32, ptr %6, align 4, !tbaa !71
  %1130 = zext i32 %1129 to i64
  %1131 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1130, i64 %1121), !nosanitize !44
  %1132 = extractvalue { i64, i1 } %1131, 1, !nosanitize !44
  br i1 %1132, label %1079, label %1133, !prof !45, !nosanitize !44

1133:                                             ; preds = %1127
  %1134 = extractvalue { i64, i1 } %1131, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1128, i64 noundef %1134, i32 noundef 0) #11
  %1135 = load i32, ptr %6, align 4, !tbaa !71
  %1136 = zext i32 %1135 to i64
  store i64 %1136, ptr %9, align 8, !tbaa !72
  %1137 = load ptr, ptr %0, align 8, !tbaa !19
  %1138 = getelementptr inbounds nuw i8, ptr %1137, i64 56
  %1139 = load ptr, ptr %1138, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1139) #11
  %1140 = getelementptr inbounds nuw i8, ptr %1139, i64 40
  %1141 = load i64, ptr %1140, align 8, !tbaa !55
  %1142 = getelementptr inbounds nuw i8, ptr %1137, i64 32
  %1143 = load i32, ptr %1142, align 8, !tbaa !109
  %1144 = zext i32 %1143 to i64
  %1145 = tail call i64 @llvm.umin.i64(i64 %1141, i64 %1144)
  %1146 = trunc nuw i64 %1145 to i32
  %1147 = icmp eq i64 %1145, 0
  br i1 %1147, label %1180, label %1148

1148:                                             ; preds = %1133
  %1149 = getelementptr inbounds nuw i8, ptr %1137, i64 24
  %1150 = load ptr, ptr %1149, align 8, !tbaa !108
  %1151 = getelementptr inbounds nuw i8, ptr %1139, i64 32
  %1152 = load ptr, ptr %1151, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1150, ptr align 1 %1152, i64 %1145, i1 false)
  %1153 = load ptr, ptr %1149, align 8, !tbaa !108
  %1154 = getelementptr inbounds nuw i8, ptr %1153, i64 %1145
  store ptr %1154, ptr %1149, align 8, !tbaa !108
  %1155 = load ptr, ptr %1151, align 8, !tbaa !56
  %1156 = getelementptr inbounds nuw i8, ptr %1155, i64 %1145
  store ptr %1156, ptr %1151, align 8, !tbaa !56
  %1157 = getelementptr inbounds nuw i8, ptr %1137, i64 40
  %1158 = load i64, ptr %1157, align 8, !tbaa !110
  %1159 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1158, i64 %1145), !nosanitize !44
  %1160 = extractvalue { i64, i1 } %1159, 1, !nosanitize !44
  br i1 %1160, label %1161, label %1162, !prof !45, !nosanitize !44

1161:                                             ; preds = %1148
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1162:                                             ; preds = %1148
  %1163 = extractvalue { i64, i1 } %1159, 0, !nosanitize !44
  store i64 %1163, ptr %1157, align 8, !tbaa !110
  %1164 = load i32, ptr %1142, align 8, !tbaa !109
  %1165 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1164, i32 %1146), !nosanitize !44
  %1166 = extractvalue { i32, i1 } %1165, 1, !nosanitize !44
  br i1 %1166, label %1167, label %1168, !prof !45, !nosanitize !44

1167:                                             ; preds = %1162
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1168:                                             ; preds = %1162
  %1169 = extractvalue { i32, i1 } %1165, 0, !nosanitize !44
  store i32 %1169, ptr %1142, align 8, !tbaa !109
  %1170 = load i64, ptr %1140, align 8, !tbaa !55
  %1171 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1170, i64 %1145), !nosanitize !44
  %1172 = extractvalue { i64, i1 } %1171, 1, !nosanitize !44
  br i1 %1172, label %1173, label %1174, !prof !45, !nosanitize !44

1173:                                             ; preds = %1168
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1174:                                             ; preds = %1168
  %1175 = extractvalue { i64, i1 } %1171, 0, !nosanitize !44
  store i64 %1175, ptr %1140, align 8, !tbaa !55
  %1176 = icmp eq i64 %1175, 0
  br i1 %1176, label %1177, label %1180

1177:                                             ; preds = %1174
  %1178 = getelementptr inbounds nuw i8, ptr %1139, i64 16
  %1179 = load ptr, ptr %1178, align 8, !tbaa !40
  store ptr %1179, ptr %1151, align 8, !tbaa !56
  br label %1180

1180:                                             ; preds = %1177, %1174, %1133, %1108
  %1181 = load i32, ptr %6, align 4, !tbaa !71
  %1182 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1181, i32 1), !nosanitize !44
  %1183 = extractvalue { i32, i1 } %1182, 1, !nosanitize !44
  br i1 %1183, label %1184, label %1185, !prof !45, !nosanitize !44

1184:                                             ; preds = %1180
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1185:                                             ; preds = %1180
  %1186 = extractvalue { i32, i1 } %1182, 0, !nosanitize !44
  store i32 %1186, ptr %6, align 4, !tbaa !71
  %1187 = load i32, ptr %3, align 4, !tbaa !73
  %1188 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1187, i32 1), !nosanitize !44
  %1189 = extractvalue { i32, i1 } %1188, 1, !nosanitize !44
  br i1 %1189, label %1190, label %1191, !prof !45, !nosanitize !44

1190:                                             ; preds = %1185
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1191:                                             ; preds = %1185
  %1192 = extractvalue { i32, i1 } %1188, 0, !nosanitize !44
  store i32 %1192, ptr %3, align 4, !tbaa !73
  %1193 = load ptr, ptr %0, align 8, !tbaa !19
  %1194 = getelementptr inbounds nuw i8, ptr %1193, i64 32
  %1195 = load i32, ptr %1194, align 8, !tbaa !109
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %.loopexit93, label %.backedge

1197:                                             ; preds = %1072
  store i32 1, ptr %34, align 8, !tbaa !77
  %1198 = load i32, ptr %6, align 4, !tbaa !71
  %1199 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1198, i32 1), !nosanitize !44
  %1200 = extractvalue { i32, i1 } %1199, 1, !nosanitize !44
  br i1 %1200, label %1201, label %1202, !prof !45, !nosanitize !44

1201:                                             ; preds = %1197
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1202:                                             ; preds = %1197
  %1203 = extractvalue { i32, i1 } %1199, 0, !nosanitize !44
  store i32 %1203, ptr %6, align 4, !tbaa !71
  %1204 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %832, i32 1), !nosanitize !44
  %1205 = extractvalue { i32, i1 } %1204, 1, !nosanitize !44
  br i1 %1205, label %1206, label %1207, !prof !45, !nosanitize !44

1206:                                             ; preds = %1202
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1207:                                             ; preds = %1202
  %1208 = extractvalue { i32, i1 } %1204, 0, !nosanitize !44
  store i32 %1208, ptr %3, align 4, !tbaa !73
  br label %.backedge

.backedge:                                        ; preds = %1207, %1191, %1067, %1006
  br label %35

1209:                                             ; preds = %596
  %1210 = load i32, ptr %34, align 8, !tbaa !77
  %1211 = icmp eq i32 %1210, 0
  %1212 = load i32, ptr %6, align 4, !tbaa !71
  br i1 %1211, label %1255, label %1213

1213:                                             ; preds = %1209
  %1214 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1212, i32 1), !nosanitize !44
  %1215 = extractvalue { i32, i1 } %1214, 1, !nosanitize !44
  br i1 %1215, label %1216, label %1217, !prof !45, !nosanitize !44

1216:                                             ; preds = %1334, %1266, %1213
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1217:                                             ; preds = %1213
  %1218 = extractvalue { i32, i1 } %1214, 0, !nosanitize !44
  %1219 = load ptr, ptr %7, align 8, !tbaa !34
  %1220 = zext i32 %1218 to i64
  %1221 = getelementptr inbounds nuw i8, ptr %1219, i64 %1220
  %1222 = load i8, ptr %1221, align 1, !tbaa !5
  %1223 = load i32, ptr %30, align 4, !tbaa !144
  %1224 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1223, i32 1), !nosanitize !44
  %1225 = extractvalue { i32, i1 } %1224, 1, !nosanitize !44
  br i1 %1225, label %1226, label %1227, !prof !45, !nosanitize !44

1226:                                             ; preds = %1217
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1227:                                             ; preds = %1217
  %1228 = extractvalue { i32, i1 } %1224, 0, !nosanitize !44
  %1229 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %1228, ptr %30, align 4, !tbaa !144
  %1230 = zext i32 %1223 to i64
  %1231 = getelementptr inbounds nuw i8, ptr %1229, i64 %1230
  store i8 0, ptr %1231, align 1, !tbaa !5
  %1232 = load i32, ptr %30, align 4, !tbaa !144
  %1233 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1232, i32 1), !nosanitize !44
  %1234 = extractvalue { i32, i1 } %1233, 1, !nosanitize !44
  br i1 %1234, label %1235, label %1236, !prof !45, !nosanitize !44

1235:                                             ; preds = %1227
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1236:                                             ; preds = %1227
  %1237 = extractvalue { i32, i1 } %1233, 0, !nosanitize !44
  %1238 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %1237, ptr %30, align 4, !tbaa !144
  %1239 = zext i32 %1232 to i64
  %1240 = getelementptr inbounds nuw i8, ptr %1238, i64 %1239
  store i8 0, ptr %1240, align 1, !tbaa !5
  %1241 = load i32, ptr %30, align 4, !tbaa !144
  %1242 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1241, i32 1), !nosanitize !44
  %1243 = extractvalue { i32, i1 } %1242, 1, !nosanitize !44
  br i1 %1243, label %1244, label %1245, !prof !45, !nosanitize !44

1244:                                             ; preds = %1236
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1245:                                             ; preds = %1236
  %1246 = extractvalue { i32, i1 } %1242, 0, !nosanitize !44
  %1247 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %1246, ptr %30, align 4, !tbaa !144
  %1248 = zext i32 %1241 to i64
  %1249 = getelementptr inbounds nuw i8, ptr %1247, i64 %1248
  store i8 %1222, ptr %1249, align 1, !tbaa !5
  %1250 = zext i8 %1222 to i64
  %1251 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %1250
  %1252 = load i16, ptr %1251, align 4, !tbaa !5
  %1253 = add i16 %1252, 1
  store i16 %1253, ptr %1251, align 4, !tbaa !5
  store i32 0, ptr %34, align 8, !tbaa !77
  %1254 = load i32, ptr %6, align 4, !tbaa !71
  br label %1255

1255:                                             ; preds = %1245, %1209
  %1256 = phi i32 [ %1254, %1245 ], [ %1212, %1209 ]
  %1257 = tail call i32 @llvm.umin.i32(i32 %1256, i32 2)
  store i32 %1257, ptr %10, align 4, !tbaa !74
  %1258 = icmp eq i32 %1, 4
  br i1 %1258, label %1259, label %1324

1259:                                             ; preds = %1255
  %1260 = load i64, ptr %9, align 8, !tbaa !72
  %1261 = icmp sgt i64 %1260, -1
  br i1 %1261, label %1262, label %1266

1262:                                             ; preds = %1259
  %1263 = load ptr, ptr %7, align 8, !tbaa !34
  %1264 = and i64 %1260, 4294967295
  %1265 = getelementptr inbounds nuw i8, ptr %1263, i64 %1264
  br label %1266

1266:                                             ; preds = %1262, %1259
  %1267 = phi ptr [ %1265, %1262 ], [ null, %1259 ]
  %1268 = zext i32 %1256 to i64
  %1269 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1268, i64 %1260), !nosanitize !44
  %1270 = extractvalue { i64, i1 } %1269, 1, !nosanitize !44
  br i1 %1270, label %1216, label %1271, !prof !45, !nosanitize !44

1271:                                             ; preds = %1266
  %1272 = extractvalue { i64, i1 } %1269, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1267, i64 noundef %1272, i32 noundef 1) #11
  %1273 = load i32, ptr %6, align 4, !tbaa !71
  %1274 = zext i32 %1273 to i64
  store i64 %1274, ptr %9, align 8, !tbaa !72
  %1275 = load ptr, ptr %0, align 8, !tbaa !19
  %1276 = getelementptr inbounds nuw i8, ptr %1275, i64 56
  %1277 = load ptr, ptr %1276, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1277) #11
  %1278 = getelementptr inbounds nuw i8, ptr %1277, i64 40
  %1279 = load i64, ptr %1278, align 8, !tbaa !55
  %1280 = getelementptr inbounds nuw i8, ptr %1275, i64 32
  %1281 = load i32, ptr %1280, align 8, !tbaa !109
  %1282 = zext i32 %1281 to i64
  %1283 = tail call i64 @llvm.umin.i64(i64 %1279, i64 %1282)
  %1284 = trunc nuw i64 %1283 to i32
  %1285 = icmp eq i64 %1283, 0
  br i1 %1285, label %1318, label %1286

1286:                                             ; preds = %1271
  %1287 = getelementptr inbounds nuw i8, ptr %1275, i64 24
  %1288 = load ptr, ptr %1287, align 8, !tbaa !108
  %1289 = getelementptr inbounds nuw i8, ptr %1277, i64 32
  %1290 = load ptr, ptr %1289, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1288, ptr align 1 %1290, i64 %1283, i1 false)
  %1291 = load ptr, ptr %1287, align 8, !tbaa !108
  %1292 = getelementptr inbounds nuw i8, ptr %1291, i64 %1283
  store ptr %1292, ptr %1287, align 8, !tbaa !108
  %1293 = load ptr, ptr %1289, align 8, !tbaa !56
  %1294 = getelementptr inbounds nuw i8, ptr %1293, i64 %1283
  store ptr %1294, ptr %1289, align 8, !tbaa !56
  %1295 = getelementptr inbounds nuw i8, ptr %1275, i64 40
  %1296 = load i64, ptr %1295, align 8, !tbaa !110
  %1297 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1296, i64 %1283), !nosanitize !44
  %1298 = extractvalue { i64, i1 } %1297, 1, !nosanitize !44
  br i1 %1298, label %1299, label %1300, !prof !45, !nosanitize !44

1299:                                             ; preds = %1286
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1300:                                             ; preds = %1286
  %1301 = extractvalue { i64, i1 } %1297, 0, !nosanitize !44
  store i64 %1301, ptr %1295, align 8, !tbaa !110
  %1302 = load i32, ptr %1280, align 8, !tbaa !109
  %1303 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1302, i32 %1284), !nosanitize !44
  %1304 = extractvalue { i32, i1 } %1303, 1, !nosanitize !44
  br i1 %1304, label %1305, label %1306, !prof !45, !nosanitize !44

1305:                                             ; preds = %1300
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1306:                                             ; preds = %1300
  %1307 = extractvalue { i32, i1 } %1303, 0, !nosanitize !44
  store i32 %1307, ptr %1280, align 8, !tbaa !109
  %1308 = load i64, ptr %1278, align 8, !tbaa !55
  %1309 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1308, i64 %1283), !nosanitize !44
  %1310 = extractvalue { i64, i1 } %1309, 1, !nosanitize !44
  br i1 %1310, label %1311, label %1312, !prof !45, !nosanitize !44

1311:                                             ; preds = %1306
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1312:                                             ; preds = %1306
  %1313 = extractvalue { i64, i1 } %1309, 0, !nosanitize !44
  store i64 %1313, ptr %1278, align 8, !tbaa !55
  %1314 = icmp eq i64 %1313, 0
  br i1 %1314, label %1315, label %1318

1315:                                             ; preds = %1312
  %1316 = getelementptr inbounds nuw i8, ptr %1277, i64 16
  %1317 = load ptr, ptr %1316, align 8, !tbaa !40
  store ptr %1317, ptr %1289, align 8, !tbaa !56
  br label %1318

1318:                                             ; preds = %1315, %1312, %1271
  %1319 = load ptr, ptr %0, align 8, !tbaa !19
  %1320 = getelementptr inbounds nuw i8, ptr %1319, i64 32
  %1321 = load i32, ptr %1320, align 8, !tbaa !109
  %1322 = icmp eq i32 %1321, 0
  %1323 = select i1 %1322, i32 2, i32 3
  br label %.loopexit93

1324:                                             ; preds = %1255
  %1325 = load i32, ptr %30, align 4, !tbaa !144
  %1326 = icmp eq i32 %1325, 0
  br i1 %1326, label %1391, label %1327

1327:                                             ; preds = %1324
  %1328 = load i64, ptr %9, align 8, !tbaa !72
  %1329 = icmp sgt i64 %1328, -1
  br i1 %1329, label %1330, label %1334

1330:                                             ; preds = %1327
  %1331 = load ptr, ptr %7, align 8, !tbaa !34
  %1332 = and i64 %1328, 4294967295
  %1333 = getelementptr inbounds nuw i8, ptr %1331, i64 %1332
  br label %1334

1334:                                             ; preds = %1330, %1327
  %1335 = phi ptr [ %1333, %1330 ], [ null, %1327 ]
  %1336 = zext i32 %1256 to i64
  %1337 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1336, i64 %1328), !nosanitize !44
  %1338 = extractvalue { i64, i1 } %1337, 1, !nosanitize !44
  br i1 %1338, label %1216, label %1339, !prof !45, !nosanitize !44

1339:                                             ; preds = %1334
  %1340 = extractvalue { i64, i1 } %1337, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1335, i64 noundef %1340, i32 noundef 0) #11
  %1341 = load i32, ptr %6, align 4, !tbaa !71
  %1342 = zext i32 %1341 to i64
  store i64 %1342, ptr %9, align 8, !tbaa !72
  %1343 = load ptr, ptr %0, align 8, !tbaa !19
  %1344 = getelementptr inbounds nuw i8, ptr %1343, i64 56
  %1345 = load ptr, ptr %1344, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1345) #11
  %1346 = getelementptr inbounds nuw i8, ptr %1345, i64 40
  %1347 = load i64, ptr %1346, align 8, !tbaa !55
  %1348 = getelementptr inbounds nuw i8, ptr %1343, i64 32
  %1349 = load i32, ptr %1348, align 8, !tbaa !109
  %1350 = zext i32 %1349 to i64
  %1351 = tail call i64 @llvm.umin.i64(i64 %1347, i64 %1350)
  %1352 = trunc nuw i64 %1351 to i32
  %1353 = icmp eq i64 %1351, 0
  br i1 %1353, label %1386, label %1354

1354:                                             ; preds = %1339
  %1355 = getelementptr inbounds nuw i8, ptr %1343, i64 24
  %1356 = load ptr, ptr %1355, align 8, !tbaa !108
  %1357 = getelementptr inbounds nuw i8, ptr %1345, i64 32
  %1358 = load ptr, ptr %1357, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1356, ptr align 1 %1358, i64 %1351, i1 false)
  %1359 = load ptr, ptr %1355, align 8, !tbaa !108
  %1360 = getelementptr inbounds nuw i8, ptr %1359, i64 %1351
  store ptr %1360, ptr %1355, align 8, !tbaa !108
  %1361 = load ptr, ptr %1357, align 8, !tbaa !56
  %1362 = getelementptr inbounds nuw i8, ptr %1361, i64 %1351
  store ptr %1362, ptr %1357, align 8, !tbaa !56
  %1363 = getelementptr inbounds nuw i8, ptr %1343, i64 40
  %1364 = load i64, ptr %1363, align 8, !tbaa !110
  %1365 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1364, i64 %1351), !nosanitize !44
  %1366 = extractvalue { i64, i1 } %1365, 1, !nosanitize !44
  br i1 %1366, label %1367, label %1368, !prof !45, !nosanitize !44

1367:                                             ; preds = %1354
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1368:                                             ; preds = %1354
  %1369 = extractvalue { i64, i1 } %1365, 0, !nosanitize !44
  store i64 %1369, ptr %1363, align 8, !tbaa !110
  %1370 = load i32, ptr %1348, align 8, !tbaa !109
  %1371 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1370, i32 %1352), !nosanitize !44
  %1372 = extractvalue { i32, i1 } %1371, 1, !nosanitize !44
  br i1 %1372, label %1373, label %1374, !prof !45, !nosanitize !44

1373:                                             ; preds = %1368
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1374:                                             ; preds = %1368
  %1375 = extractvalue { i32, i1 } %1371, 0, !nosanitize !44
  store i32 %1375, ptr %1348, align 8, !tbaa !109
  %1376 = load i64, ptr %1346, align 8, !tbaa !55
  %1377 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1376, i64 %1351), !nosanitize !44
  %1378 = extractvalue { i64, i1 } %1377, 1, !nosanitize !44
  br i1 %1378, label %1379, label %1380, !prof !45, !nosanitize !44

1379:                                             ; preds = %1374
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1380:                                             ; preds = %1374
  %1381 = extractvalue { i64, i1 } %1377, 0, !nosanitize !44
  store i64 %1381, ptr %1346, align 8, !tbaa !55
  %1382 = icmp eq i64 %1381, 0
  br i1 %1382, label %1383, label %1386

1383:                                             ; preds = %1380
  %1384 = getelementptr inbounds nuw i8, ptr %1345, i64 16
  %1385 = load ptr, ptr %1384, align 8, !tbaa !40
  store ptr %1385, ptr %1357, align 8, !tbaa !56
  br label %1386

1386:                                             ; preds = %1383, %1380, %1339
  %1387 = load ptr, ptr %0, align 8, !tbaa !19
  %1388 = getelementptr inbounds nuw i8, ptr %1387, i64 32
  %1389 = load i32, ptr %1388, align 8, !tbaa !109
  %1390 = icmp eq i32 %1389, 0
  br i1 %1390, label %.loopexit93, label %1391

1391:                                             ; preds = %1386, %1324
  br label %.loopexit93

.loopexit93:                                      ; preds = %1191, %1067, %592, %1391, %1386, %1318
  %1392 = phi i32 [ 1, %1391 ], [ %1323, %1318 ], [ 0, %1386 ], [ 0, %592 ], [ 0, %1067 ], [ 0, %1191 ]
  ret i32 %1392
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
!97 = distinct !{!97, !83, !84, !85}
!98 = distinct !{!98, !83, !85, !84}
!99 = distinct !{!99, !83, !84, !85}
!100 = distinct !{!100, !83, !85, !84}
!101 = distinct !{!101, !83}
!102 = !{!20, !22, i64 56}
!103 = !{!20, !12, i64 5940}
!104 = !{!20, !12, i64 5944}
!105 = !{!20, !27, i64 5936}
!106 = distinct !{!106, !83}
!107 = !{!63, !11, i64 8}
!108 = !{!9, !10, i64 24}
!109 = !{!9, !12, i64 32}
!110 = !{!9, !13, i64 40}
!111 = !{!112, !10, i64 56}
!112 = !{!"gz_header_s", !12, i64 0, !13, i64 8, !12, i64 16, !12, i64 20, !10, i64 24, !12, i64 32, !12, i64 36, !10, i64 40, !12, i64 48, !10, i64 56, !12, i64 64, !12, i64 68, !12, i64 72}
!113 = !{!112, !10, i64 40}
!114 = !{!112, !10, i64 24}
!115 = !{!112, !12, i64 0}
!116 = !{!112, !12, i64 68}
!117 = !{!112, !13, i64 8}
!118 = !{!112, !12, i64 20}
!119 = !{!112, !12, i64 32}
!120 = !{!20, !13, i64 64}
!121 = !{!"branch_weights", i32 1, i32 1048574}
!122 = distinct !{!122, !83, !123}
!123 = !{!"llvm.loop.peeled.count", i32 1}
!124 = distinct !{!124, !83}
!125 = distinct !{!125, !83}
!126 = !{!20, !12, i64 5928}
!127 = distinct !{!127, !83, !84, !85}
!128 = distinct !{!128, !83, !85, !84}
!129 = distinct !{!129, !83, !84, !85}
!130 = distinct !{!130, !83, !85, !84}
!131 = !{!"branch_weights", i32 1, i32 127}
!132 = !{!"branch_weights", i32 127, i32 134217473}
!133 = distinct !{!133, !83}
!134 = distinct !{!134, !83}
!135 = distinct !{!135, !83}
!136 = distinct !{!136, !83, !84, !85}
!137 = distinct !{!137, !83, !85, !84}
!138 = distinct !{!138, !83, !84, !85}
!139 = distinct !{!139, !83, !85, !84}
!140 = distinct !{!140, !83, !84, !85}
!141 = distinct !{!141, !83, !85, !84}
!142 = distinct !{!142, !83, !84, !85}
!143 = distinct !{!143, !83, !85, !84}
!144 = !{!20, !12, i64 5900}
!145 = distinct !{!145, !83, !84, !85}
!146 = distinct !{!146, !83, !85, !84}
!147 = distinct !{!147, !83, !84, !85}
!148 = distinct !{!148, !83, !85, !84}
!149 = distinct !{!149, !83, !84, !85}
!150 = distinct !{!150, !83, !85, !84}
!151 = distinct !{!151, !83, !84, !85}
!152 = distinct !{!152, !83, !85, !84}
!153 = distinct !{!153, !83}
!154 = !{!20, !25, i64 2904}
!155 = !{!20, !25, i64 2928}
!156 = !{!20, !25, i64 2952}
!157 = distinct !{!157, !83, !84, !85}
!158 = distinct !{!158, !83, !85, !84}
!159 = distinct !{!159, !83, !84, !85}
!160 = distinct !{!160, !83, !85, !84}
!161 = distinct !{!161, !83, !84, !85}
!162 = distinct !{!162, !83, !85, !84}
!163 = distinct !{!163, !83, !84, !85}
!164 = distinct !{!164, !83, !85, !84}
!165 = distinct !{!165, !83}
!166 = distinct !{!166, !83}
!167 = distinct !{!167, !83}
!168 = distinct !{!168, !83, !84, !85}
!169 = distinct !{!169, !83, !85, !84}
!170 = distinct !{!170, !83, !84, !85}
!171 = distinct !{!171, !83, !85, !84}
!172 = distinct !{!172, !83, !84, !85}
!173 = distinct !{!173, !83, !85, !84}
!174 = distinct !{!174, !83, !84, !85}
!175 = distinct !{!175, !83, !85, !84}
!176 = !{!20, !12, i64 164}
!177 = distinct !{!177, !83}
