; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/signed.deflate.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/deflate.c"
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
  br i1 %5, label %145, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !8
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %145, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %145, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %14, align 8, !tbaa !9
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
  br i1 %29, label %145, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %32 = load ptr, ptr %31, align 8, !tbaa !16
  %33 = tail call ptr %21(ptr noundef %32, i32 noundef 1, i32 noundef 5968) #11, !inline_history !18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %145, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5960) %36, i8 0, i64 5960, i1 false)
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %33, ptr %37, align 8, !tbaa !19
  store ptr %0, ptr %33, align 8, !tbaa !20
  store i32 42, ptr %36, align 8, !tbaa !29
  %38 = getelementptr inbounds nuw i8, ptr %33, i64 48
  store i32 1, ptr %38, align 8, !tbaa !30
  %39 = getelementptr inbounds nuw i8, ptr %33, i64 84
  store i32 15, ptr %39, align 4, !tbaa !31
  %40 = getelementptr inbounds nuw i8, ptr %33, i64 80
  store i32 32768, ptr %40, align 8, !tbaa !32
  %41 = getelementptr inbounds nuw i8, ptr %33, i64 88
  store i32 32767, ptr %41, align 8, !tbaa !33
  %42 = getelementptr inbounds nuw i8, ptr %33, i64 132
  store <4 x i32> <i32 32768, i32 15, i32 32767, i32 5>, ptr %42, align 4, !tbaa !4
  %43 = load ptr, ptr %15, align 8, !tbaa !15
  %44 = load ptr, ptr %31, align 8, !tbaa !16
  %45 = tail call ptr %43(ptr noundef %44, i32 noundef 32768, i32 noundef 2) #11, !inline_history !18
  %46 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store ptr %45, ptr %46, align 8, !tbaa !34
  %47 = load ptr, ptr %15, align 8, !tbaa !15
  %48 = load ptr, ptr %31, align 8, !tbaa !16
  %49 = load i32, ptr %40, align 8, !tbaa !32
  %50 = tail call ptr %47(ptr noundef %48, i32 noundef %49, i32 noundef 2) #11, !inline_history !18
  %51 = getelementptr inbounds nuw i8, ptr %33, i64 112
  store ptr %50, ptr %51, align 8, !tbaa !35
  %52 = load ptr, ptr %15, align 8, !tbaa !15
  %53 = load ptr, ptr %31, align 8, !tbaa !16
  %54 = load i32, ptr %42, align 4, !tbaa !36
  %55 = tail call ptr %52(ptr noundef %53, i32 noundef %54, i32 noundef 2) #11, !inline_history !18
  %56 = getelementptr inbounds nuw i8, ptr %33, i64 120
  store ptr %55, ptr %56, align 8, !tbaa !37
  %57 = getelementptr inbounds nuw i8, ptr %33, i64 5952
  store i64 0, ptr %57, align 8, !tbaa !38
  %58 = getelementptr inbounds nuw i8, ptr %33, i64 5896
  store i32 16384, ptr %58, align 8, !tbaa !39
  %59 = load ptr, ptr %15, align 8, !tbaa !15
  %60 = load ptr, ptr %31, align 8, !tbaa !16
  %61 = tail call ptr %59(ptr noundef %60, i32 noundef 16384, i32 noundef 4) #11, !inline_history !18
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
  store i32 666, ptr %36, align 8, !tbaa !29
  %78 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !42
  store ptr %78, ptr %14, align 8, !tbaa !9
  %79 = load ptr, ptr %15, align 8, !tbaa !15
  %80 = icmp eq ptr %79, null
  br i1 %80, label %145, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %22, align 8, !tbaa !17
  %83 = icmp eq ptr %82, null
  br i1 %83, label %145, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %37, align 8, !tbaa !19
  %86 = icmp eq ptr %85, null
  br i1 %86, label %145, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %85, align 8, !tbaa !20
  %89 = icmp eq ptr %88, %0
  br i1 %89, label %90, label %145

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw i8, ptr %85, i64 8
  %92 = load i32, ptr %91, align 8, !tbaa !29
  switch i32 %92, label %145 [
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
  tail call void %82(ptr noundef %98, ptr noundef nonnull %95) #11, !inline_history !43
  %99 = load ptr, ptr %37, align 8, !tbaa !19
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
  tail call void %102(ptr noundef %108, ptr noundef nonnull %105) #11, !inline_history !43
  %109 = load ptr, ptr %37, align 8, !tbaa !19
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
  tail call void %112(ptr noundef %118, ptr noundef nonnull %115) #11, !inline_history !43
  %119 = load ptr, ptr %37, align 8, !tbaa !19
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
  tail call void %122(ptr noundef %128, ptr noundef nonnull %125) #11, !inline_history !43
  %129 = load ptr, ptr %22, align 8, !tbaa !17
  %130 = load ptr, ptr %37, align 8, !tbaa !19
  br label %131

131:                                              ; preds = %127, %121
  %132 = phi ptr [ %130, %127 ], [ %123, %121 ]
  %133 = phi ptr [ %129, %127 ], [ %122, %121 ]
  %134 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %133(ptr noundef %134, ptr noundef %132) #11, !inline_history !43
  store ptr null, ptr %37, align 8, !tbaa !19
  br label %145

135:                                              ; preds = %72
  %136 = getelementptr inbounds nuw i8, ptr %61, i64 %64
  %137 = getelementptr inbounds nuw i8, ptr %33, i64 5888
  store ptr %136, ptr %137, align 8, !tbaa !44
  %138 = mul i32 %63, 3
  %139 = add i32 %138, -3
  %140 = getelementptr inbounds nuw i8, ptr %33, i64 5904
  store i32 %139, ptr %140, align 8, !tbaa !45
  %141 = getelementptr inbounds nuw i8, ptr %33, i64 196
  store i32 %28, ptr %141, align 4, !tbaa !46
  %142 = getelementptr inbounds nuw i8, ptr %33, i64 200
  store i32 0, ptr %142, align 8, !tbaa !47
  %143 = getelementptr inbounds nuw i8, ptr %33, i64 72
  store i8 8, ptr %143, align 8, !tbaa !48
  %144 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %145

145:                                              ; preds = %135, %131, %90, %87, %84, %81, %77, %30, %26, %11, %6, %4
  %146 = phi i32 [ %144, %135 ], [ -6, %4 ], [ -2, %11 ], [ -4, %131 ], [ -2, %26 ], [ -4, %30 ], [ -6, %6 ], [ -4, %90 ], [ -4, %77 ], [ -4, %81 ], [ -4, %84 ], [ -4, %87 ]
  ret i32 %146
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  br i1 %9, label %189, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !8
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %189, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %189, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %18, align 8, !tbaa !9
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
  br i1 %35, label %189, label %36

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
  br i1 %56, label %189, label %57

57:                                               ; preds = %42
  %58 = icmp eq i32 %43, 8
  %59 = and i1 %58, %44
  br i1 %59, label %189, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %62 = load ptr, ptr %61, align 8, !tbaa !16
  %63 = tail call ptr %25(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %189, label %65

65:                                               ; preds = %60
  %66 = select i1 %58, i32 9, i32 %43
  %67 = getelementptr inbounds nuw i8, ptr %63, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5960) %67, i8 0, i64 5960, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %63, ptr %68, align 8, !tbaa !19
  store ptr %0, ptr %63, align 8, !tbaa !20
  store i32 42, ptr %67, align 8, !tbaa !29
  %69 = getelementptr inbounds nuw i8, ptr %63, i64 48
  store i32 %45, ptr %69, align 8, !tbaa !30
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 84
  store i32 %66, ptr %70, align 4, !tbaa !31
  %71 = shl nuw nsw i32 1, %66
  %72 = getelementptr inbounds nuw i8, ptr %63, i64 80
  store i32 %71, ptr %72, align 8, !tbaa !32
  %73 = add nsw i32 %71, -1
  %74 = getelementptr inbounds nuw i8, ptr %63, i64 88
  store i32 %73, ptr %74, align 8, !tbaa !33
  %75 = add nuw nsw i32 %4, 7
  %76 = getelementptr inbounds nuw i8, ptr %63, i64 136
  store i32 %75, ptr %76, align 8, !tbaa !49
  %77 = shl nuw nsw i32 128, %4
  %78 = getelementptr inbounds nuw i8, ptr %63, i64 132
  store i32 %77, ptr %78, align 4, !tbaa !36
  %79 = add nsw i32 %77, -1
  %80 = getelementptr inbounds nuw i8, ptr %63, i64 140
  store i32 %79, ptr %80, align 4, !tbaa !50
  %81 = trunc nuw nsw i32 %4 to i8
  %82 = add nuw nsw i8 %81, 9
  %83 = udiv i8 %82, 3
  %84 = zext nneg i8 %83 to i32
  %85 = getelementptr inbounds nuw i8, ptr %63, i64 144
  store i32 %84, ptr %85, align 8, !tbaa !51
  %86 = load ptr, ptr %19, align 8, !tbaa !15
  %87 = load ptr, ptr %61, align 8, !tbaa !16
  %88 = tail call ptr %86(ptr noundef %87, i32 noundef %71, i32 noundef 2) #11
  %89 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store ptr %88, ptr %89, align 8, !tbaa !34
  %90 = load ptr, ptr %19, align 8, !tbaa !15
  %91 = load ptr, ptr %61, align 8, !tbaa !16
  %92 = load i32, ptr %72, align 8, !tbaa !32
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
  store i32 666, ptr %67, align 8, !tbaa !29
  %122 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !42
  store ptr %122, ptr %18, align 8, !tbaa !9
  %123 = load ptr, ptr %19, align 8, !tbaa !15
  %124 = icmp eq ptr %123, null
  br i1 %124, label %189, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr %26, align 8, !tbaa !17
  %127 = icmp eq ptr %126, null
  br i1 %127, label %189, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr %68, align 8, !tbaa !19
  %130 = icmp eq ptr %129, null
  br i1 %130, label %189, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr %129, align 8, !tbaa !20
  %133 = icmp eq ptr %132, %0
  br i1 %133, label %134, label %189

134:                                              ; preds = %131
  %135 = getelementptr inbounds nuw i8, ptr %129, i64 8
  %136 = load i32, ptr %135, align 8, !tbaa !29
  switch i32 %136, label %189 [
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
  tail call void %126(ptr noundef %142, ptr noundef nonnull %139) #11, !inline_history !52
  %143 = load ptr, ptr %68, align 8, !tbaa !19
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
  tail call void %146(ptr noundef %152, ptr noundef nonnull %149) #11, !inline_history !52
  %153 = load ptr, ptr %68, align 8, !tbaa !19
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
  tail call void %156(ptr noundef %162, ptr noundef nonnull %159) #11, !inline_history !52
  %163 = load ptr, ptr %68, align 8, !tbaa !19
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
  tail call void %166(ptr noundef %172, ptr noundef nonnull %169) #11, !inline_history !52
  %173 = load ptr, ptr %26, align 8, !tbaa !17
  %174 = load ptr, ptr %68, align 8, !tbaa !19
  br label %175

175:                                              ; preds = %171, %165
  %176 = phi ptr [ %174, %171 ], [ %167, %165 ]
  %177 = phi ptr [ %173, %171 ], [ %166, %165 ]
  %178 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %177(ptr noundef %178, ptr noundef %176) #11, !inline_history !52
  store ptr null, ptr %68, align 8, !tbaa !19
  br label %189

179:                                              ; preds = %116
  %180 = getelementptr inbounds nuw i8, ptr %105, i64 %108
  %181 = getelementptr inbounds nuw i8, ptr %63, i64 5888
  store ptr %180, ptr %181, align 8, !tbaa !44
  %182 = mul i32 %107, 3
  %183 = add i32 %182, -3
  %184 = getelementptr inbounds nuw i8, ptr %63, i64 5904
  store i32 %183, ptr %184, align 8, !tbaa !45
  %185 = getelementptr inbounds nuw i8, ptr %63, i64 196
  store i32 %32, ptr %185, align 4, !tbaa !46
  %186 = getelementptr inbounds nuw i8, ptr %63, i64 200
  store i32 %5, ptr %186, align 8, !tbaa !47
  %187 = getelementptr inbounds nuw i8, ptr %63, i64 72
  store i8 8, ptr %187, align 8, !tbaa !48
  %188 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %189

189:                                              ; preds = %179, %175, %134, %131, %128, %125, %121, %60, %57, %42, %34, %15, %10, %8
  %190 = phi i32 [ %188, %179 ], [ -6, %8 ], [ -2, %15 ], [ -2, %34 ], [ -2, %42 ], [ -4, %60 ], [ -6, %10 ], [ -2, %57 ], [ -4, %121 ], [ -4, %125 ], [ -4, %128 ], [ -4, %131 ], [ -4, %134 ], [ -4, %175 ]
  ret i32 %190
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
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !20
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %70

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !29
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
  %28 = load ptr, ptr %12, align 8, !tbaa !19
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
  %39 = load ptr, ptr %12, align 8, !tbaa !19
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
  %50 = load ptr, ptr %12, align 8, !tbaa !19
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
  %62 = load ptr, ptr %12, align 8, !tbaa !19
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi ptr [ %62, %58 ], [ %54, %52 ]
  %65 = phi ptr [ %61, %58 ], [ %53, %52 ]
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %67 = load ptr, ptr %66, align 8, !tbaa !16
  tail call void %65(ptr noundef %67, ptr noundef %64) #11
  store ptr null, ptr %12, align 8, !tbaa !19
  %68 = icmp eq i32 %20, 113
  %69 = select i1 %68, i32 -3, i32 0
  br label %70

70:                                               ; preds = %63, %18, %15, %11, %7, %3, %1
  %71 = phi i32 [ %69, %63 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateReset(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %92, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %92, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %92, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %92, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !20
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %92

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !29
  switch i32 %20, label %92 [
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
  %30 = load i32, ptr %29, align 8, !tbaa !30
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %30), !nosanitize !57
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !57
  br i1 %34, label %35, label %36, !prof !58, !nosanitize !57

35:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !57
  unreachable, !nosanitize !57

36:                                               ; preds = %32
  %37 = extractvalue { i32, i1 } %33, 0, !nosanitize !57
  store i32 %37, ptr %29, align 8, !tbaa !30
  br label %38

38:                                               ; preds = %36, %21
  %39 = phi i32 [ %37, %36 ], [ %30, %21 ]
  %40 = icmp eq i32 %39, 2
  %41 = select i1 %40, i32 57, i32 42
  store i32 %41, ptr %19, align 8, !tbaa !29
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
  store i64 %47, ptr %48, align 8, !tbaa !59
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !60
  tail call void @_tr_init(ptr noundef nonnull %13) #11
  %50 = load ptr, ptr %12, align 8, !tbaa !19
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 80
  %52 = load i32, ptr %51, align 8, !tbaa !32
  %53 = zext i32 %52 to i64
  %54 = shl nuw nsw i64 %53, 1
  %55 = getelementptr inbounds nuw i8, ptr %50, i64 104
  store i64 %54, ptr %55, align 8, !tbaa !61
  %56 = getelementptr inbounds nuw i8, ptr %50, i64 120
  %57 = load ptr, ptr %56, align 8, !tbaa !37
  %58 = getelementptr inbounds nuw i8, ptr %50, i64 132
  %59 = load i32, ptr %58, align 4, !tbaa !36
  %60 = add i32 %59, -1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds nuw [2 x i8], ptr %57, i64 %61
  store i16 0, ptr %62, align 2, !tbaa !62
  %63 = shl nuw nsw i64 %61, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %57, i8 0, i64 %63, i1 false)
  %64 = getelementptr inbounds nuw i8, ptr %50, i64 5960
  store i32 0, ptr %64, align 8, !tbaa !63
  %65 = getelementptr inbounds nuw i8, ptr %50, i64 196
  %66 = load i32, ptr %65, align 4, !tbaa !46
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %67
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 2
  %70 = load i16, ptr %69, align 2, !tbaa !64
  %71 = zext i16 %70 to i32
  %72 = getelementptr inbounds nuw i8, ptr %50, i64 192
  store i32 %71, ptr %72, align 8, !tbaa !66
  %73 = load i16, ptr %68, align 16, !tbaa !67
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds nuw i8, ptr %50, i64 204
  store i32 %74, ptr %75, align 4, !tbaa !68
  %76 = getelementptr inbounds nuw i8, ptr %68, i64 4
  %77 = load i16, ptr %76, align 4, !tbaa !69
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds nuw i8, ptr %50, i64 208
  store i32 %78, ptr %79, align 8, !tbaa !70
  %80 = getelementptr inbounds nuw i8, ptr %68, i64 6
  %81 = load i16, ptr %80, align 2, !tbaa !71
  %82 = zext i16 %81 to i32
  %83 = getelementptr inbounds nuw i8, ptr %50, i64 188
  store i32 %82, ptr %83, align 4, !tbaa !72
  %84 = getelementptr inbounds nuw i8, ptr %50, i64 172
  store i32 0, ptr %84, align 4, !tbaa !73
  %85 = getelementptr inbounds nuw i8, ptr %50, i64 152
  store i64 0, ptr %85, align 8, !tbaa !74
  %86 = getelementptr inbounds nuw i8, ptr %50, i64 180
  store i32 0, ptr %86, align 4, !tbaa !75
  %87 = getelementptr inbounds nuw i8, ptr %50, i64 5932
  store i32 0, ptr %87, align 4, !tbaa !76
  %88 = getelementptr inbounds nuw i8, ptr %50, i64 184
  store i32 2, ptr %88, align 8, !tbaa !77
  %89 = getelementptr inbounds nuw i8, ptr %50, i64 160
  store i32 2, ptr %89, align 8, !tbaa !78
  %90 = getelementptr inbounds nuw i8, ptr %50, i64 168
  store i32 0, ptr %90, align 8, !tbaa !79
  %91 = getelementptr inbounds nuw i8, ptr %50, i64 128
  store i32 0, ptr %91, align 8, !tbaa !80
  br label %92

92:                                               ; preds = %46, %18, %15, %11, %7, %3, %1
  %93 = phi i32 [ 0, %46 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetDictionary(ptr noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %629, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %629, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %629, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %629, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %629

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %629 [
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
  br i1 %24, label %629, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !30
  switch i32 %27, label %34 [
    i32 2, label %629
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %629

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !75
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %629

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !75
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %629

38:                                               ; preds = %34
  store i32 0, ptr %26, align 8, !tbaa !30
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %40 = load i32, ptr %39, align 8, !tbaa !32
  %41 = icmp ult i32 %2, %40
  br i1 %41, label %72, label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %44 = load i64, ptr %43, align 8, !tbaa !59
  %45 = tail call i64 @adler32(i64 noundef %44, ptr noundef nonnull %1, i32 noundef %2) #11
  store i64 %45, ptr %43, align 8, !tbaa !59
  store i32 0, ptr %26, align 8, !tbaa !30
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %47 = load i32, ptr %46, align 8, !tbaa !32
  %48 = icmp ult i32 %2, %47
  br i1 %48, label %72, label %65

49:                                               ; preds = %38
  %50 = icmp eq i32 %27, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %53 = load ptr, ptr %52, align 8, !tbaa !37
  %54 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %55 = load i32, ptr %54, align 4, !tbaa !36
  %56 = add i32 %55, -1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds nuw [2 x i8], ptr %53, i64 %57
  store i16 0, ptr %58, align 2, !tbaa !62
  %59 = shl nuw nsw i64 %57, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %53, i8 0, i64 %59, i1 false)
  %60 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %60, align 8, !tbaa !63
  %61 = getelementptr inbounds nuw i8, ptr %15, i64 172
  store i32 0, ptr %61, align 4, !tbaa !73
  %62 = getelementptr inbounds nuw i8, ptr %15, i64 152
  store i64 0, ptr %62, align 8, !tbaa !74
  %63 = getelementptr inbounds nuw i8, ptr %15, i64 5932
  store i32 0, ptr %63, align 4, !tbaa !76
  %64 = load i32, ptr %39, align 8, !tbaa !32
  br label %65

65:                                               ; preds = %51, %49, %42
  %66 = phi ptr [ %35, %51 ], [ %35, %49 ], [ %31, %42 ]
  %67 = phi ptr [ %39, %51 ], [ %39, %49 ], [ %46, %42 ]
  %68 = phi i32 [ %64, %51 ], [ %40, %49 ], [ %47, %42 ]
  %69 = sub i32 %2, %68
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 %70
  br label %72

72:                                               ; preds = %65, %42, %38
  %73 = phi ptr [ %67, %65 ], [ %39, %38 ], [ %46, %42 ]
  %74 = phi ptr [ %66, %65 ], [ %35, %38 ], [ %31, %42 ]
  %75 = phi i32 [ %68, %65 ], [ %40, %38 ], [ %47, %42 ]
  %76 = phi i32 [ %68, %65 ], [ %2, %38 ], [ %2, %42 ]
  %77 = phi ptr [ %71, %65 ], [ %1, %38 ], [ %1, %42 ]
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %79 = load i32, ptr %78, align 8, !tbaa !81
  %80 = load ptr, ptr %0, align 8, !tbaa !82
  store i32 %76, ptr %78, align 8, !tbaa !81
  store ptr %77, ptr %0, align 8, !tbaa !82
  %81 = getelementptr inbounds nuw i8, ptr %15, i64 104
  %82 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %83 = add i32 %75, -262
  %84 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %85 = zext i32 %75 to i64
  %86 = getelementptr inbounds nuw i8, ptr %15, i64 176
  %87 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %88 = getelementptr inbounds nuw i8, ptr %15, i64 5932
  %89 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %90 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %91 = getelementptr inbounds nuw i8, ptr %15, i64 112
  %92 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  %93 = getelementptr inbounds nuw i8, ptr %15, i64 128
  %94 = getelementptr inbounds nuw i8, ptr %15, i64 144
  %95 = getelementptr inbounds nuw i8, ptr %15, i64 140
  %96 = getelementptr inbounds nuw i8, ptr %15, i64 88
  %97 = load i32, ptr %74, align 4, !tbaa !75
  br label %98

98:                                               ; preds = %301, %72
  %99 = phi i32 [ %250, %301 ], [ %97, %72 ]
  %100 = load i64, ptr %81, align 8, !tbaa !61
  %101 = zext i32 %99 to i64
  %102 = load i32, ptr %82, align 4, !tbaa !73
  %103 = zext i32 %102 to i64
  %104 = add nuw nsw i64 %101, %103
  %105 = sub i64 %100, %104
  %106 = trunc i64 %105 to i32
  %107 = load i32, ptr %73, align 8, !tbaa !32
  %108 = add i32 %83, %107
  %109 = icmp ult i32 %102, %108
  br i1 %109, label %209, label %110

110:                                              ; preds = %98
  %111 = load ptr, ptr %84, align 8, !tbaa !34
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 %85
  %113 = sub i32 %75, %106
  %114 = zext i32 %113 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %111, ptr align 1 %112, i64 %114, i1 false)
  %115 = load i32, ptr %86, align 8, !tbaa !83
  %116 = sub i32 %115, %75
  store i32 %116, ptr %86, align 8, !tbaa !83
  %117 = load i32, ptr %82, align 4, !tbaa !73
  %118 = sub i32 %117, %75
  store i32 %118, ptr %82, align 4, !tbaa !73
  %119 = load i64, ptr %87, align 8, !tbaa !74
  %120 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %119, i64 %85), !nosanitize !57
  %121 = extractvalue { i64, i1 } %120, 1, !nosanitize !57
  br i1 %121, label %122, label %123, !prof !58, !nosanitize !57

122:                                              ; preds = %110
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

123:                                              ; preds = %110
  %124 = extractvalue { i64, i1 } %120, 0, !nosanitize !57
  store i64 %124, ptr %87, align 8, !tbaa !74
  %125 = load i32, ptr %88, align 4, !tbaa !76
  %126 = icmp ugt i32 %125, %118
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 %118, ptr %88, align 4, !tbaa !76
  br label %128

128:                                              ; preds = %127, %123
  %129 = load i32, ptr %73, align 8, !tbaa !32
  %130 = load i32, ptr %89, align 4, !tbaa !36
  %131 = load ptr, ptr %90, align 8, !tbaa !37
  %132 = zext i32 %130 to i64
  %133 = getelementptr inbounds nuw [2 x i8], ptr %131, i64 %132
  %134 = add i32 %130, -1
  %135 = zext i32 %134 to i64
  %136 = add nuw nsw i64 %135, 1
  %137 = icmp ult i32 %134, 7
  br i1 %137, label %.preheader99, label %138

138:                                              ; preds = %128
  %139 = and i64 %136, 8589934584
  %140 = insertelement <8 x i32> poison, i32 %129, i64 0
  %141 = shufflevector <8 x i32> %140, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %142

142:                                              ; preds = %142, %138
  %143 = phi i64 [ 0, %138 ], [ %151, %142 ]
  %144 = mul i64 %143, -2
  %145 = getelementptr i8, ptr %133, i64 %144
  %146 = getelementptr inbounds i8, ptr %145, i64 -16
  %147 = load <8 x i16>, ptr %146, align 2, !tbaa !62
  %148 = zext <8 x i16> %147 to <8 x i32>
  %149 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %148, <8 x i32> %141)
  %150 = trunc nuw <8 x i32> %149 to <8 x i16>
  store <8 x i16> %150, ptr %146, align 2, !tbaa !62
  %151 = add nuw i64 %143, 8
  %152 = icmp eq i64 %151, %139
  br i1 %152, label %153, label %142, !llvm.loop !84

153:                                              ; preds = %142
  %154 = mul nsw i64 %139, -2
  %155 = getelementptr i8, ptr %133, i64 %154
  %156 = trunc i64 %139 to i32
  %157 = sub i32 %130, %156
  %158 = icmp eq i64 %136, %139
  br i1 %158, label %.loopexit48, label %.preheader99

.preheader99:                                     ; preds = %153, %128
  %.ph100 = phi ptr [ %155, %153 ], [ %133, %128 ]
  %.ph101 = phi i32 [ %157, %153 ], [ %130, %128 ]
  br label %159

159:                                              ; preds = %.preheader99, %159
  %160 = phi ptr [ %162, %159 ], [ %.ph100, %.preheader99 ]
  %161 = phi i32 [ %167, %159 ], [ %.ph101, %.preheader99 ]
  %162 = getelementptr inbounds i8, ptr %160, i64 -2
  %163 = load i16, ptr %162, align 2, !tbaa !62
  %164 = zext i16 %163 to i32
  %165 = tail call i32 @llvm.usub.sat.i32(i32 %164, i32 %129)
  %166 = trunc nuw i32 %165 to i16
  store i16 %166, ptr %162, align 2, !tbaa !62
  %167 = add i32 %161, -1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %.loopexit48, label %159, !llvm.loop !88

.loopexit48:                                      ; preds = %159, %153
  %169 = load ptr, ptr %91, align 8, !tbaa !35
  %170 = zext i32 %129 to i64
  %171 = getelementptr inbounds nuw [2 x i8], ptr %169, i64 %170
  %172 = add i32 %129, -1
  %173 = zext i32 %172 to i64
  %174 = add nuw nsw i64 %173, 1
  %175 = icmp ult i32 %172, 7
  br i1 %175, label %.preheader96, label %176

176:                                              ; preds = %.loopexit48
  %177 = and i64 %174, 8589934584
  %178 = insertelement <8 x i32> poison, i32 %129, i64 0
  %179 = shufflevector <8 x i32> %178, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %180

180:                                              ; preds = %180, %176
  %181 = phi i64 [ 0, %176 ], [ %189, %180 ]
  %182 = mul i64 %181, -2
  %183 = getelementptr i8, ptr %171, i64 %182
  %184 = getelementptr inbounds i8, ptr %183, i64 -16
  %185 = load <8 x i16>, ptr %184, align 2, !tbaa !62
  %186 = zext <8 x i16> %185 to <8 x i32>
  %187 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %186, <8 x i32> %179)
  %188 = trunc nuw <8 x i32> %187 to <8 x i16>
  store <8 x i16> %188, ptr %184, align 2, !tbaa !62
  %189 = add nuw i64 %181, 8
  %190 = icmp eq i64 %189, %177
  br i1 %190, label %191, label %180, !llvm.loop !89

191:                                              ; preds = %180
  %192 = mul nsw i64 %177, -2
  %193 = getelementptr i8, ptr %171, i64 %192
  %194 = trunc i64 %177 to i32
  %195 = sub i32 %129, %194
  %196 = icmp eq i64 %174, %177
  br i1 %196, label %.loopexit47, label %.preheader96

.preheader96:                                     ; preds = %191, %.loopexit48
  %.ph97 = phi ptr [ %193, %191 ], [ %171, %.loopexit48 ]
  %.ph98 = phi i32 [ %195, %191 ], [ %129, %.loopexit48 ]
  br label %197

197:                                              ; preds = %.preheader96, %197
  %198 = phi ptr [ %200, %197 ], [ %.ph97, %.preheader96 ]
  %199 = phi i32 [ %205, %197 ], [ %.ph98, %.preheader96 ]
  %200 = getelementptr inbounds i8, ptr %198, i64 -2
  %201 = load i16, ptr %200, align 2, !tbaa !62
  %202 = zext i16 %201 to i32
  %203 = tail call i32 @llvm.usub.sat.i32(i32 %202, i32 %129)
  %204 = trunc nuw i32 %203 to i16
  store i16 %204, ptr %200, align 2, !tbaa !62
  %205 = add i32 %199, -1
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %.loopexit47, label %197, !llvm.loop !90

.loopexit47:                                      ; preds = %197, %191
  store i32 1, ptr %92, align 8, !tbaa !63
  %207 = add i32 %75, %106
  %208 = load i32, ptr %74, align 4, !tbaa !75
  br label %209

209:                                              ; preds = %.loopexit47, %98
  %210 = phi i32 [ %208, %.loopexit47 ], [ %99, %98 ]
  %211 = phi i32 [ %118, %.loopexit47 ], [ %102, %98 ]
  %212 = phi i32 [ %207, %.loopexit47 ], [ %106, %98 ]
  %213 = load ptr, ptr %15, align 8, !tbaa !20
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 8
  %215 = load i32, ptr %214, align 8, !tbaa !81
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %306, label %217

217:                                              ; preds = %209
  %218 = load ptr, ptr %84, align 8, !tbaa !34
  %219 = zext i32 %211 to i64
  %220 = getelementptr inbounds nuw i8, ptr %218, i64 %219
  %221 = zext i32 %210 to i64
  %222 = getelementptr inbounds nuw i8, ptr %220, i64 %221
  %223 = tail call i32 @llvm.umin.i32(i32 %215, i32 %212)
  %224 = icmp eq i32 %212, 0
  br i1 %224, label %248, label %225

225:                                              ; preds = %217
  %226 = sub i32 %215, %223
  store i32 %226, ptr %214, align 8, !tbaa !81
  %227 = load ptr, ptr %213, align 8, !tbaa !82
  %228 = zext i32 %223 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %222, ptr align 1 %227, i64 %228, i1 false)
  %229 = getelementptr inbounds nuw i8, ptr %213, i64 56
  %230 = load ptr, ptr %229, align 8, !tbaa !19
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 48
  %232 = load i32, ptr %231, align 8, !tbaa !30
  switch i32 %232, label %241 [
    i32 1, label %233
    i32 2, label %237
  ]

233:                                              ; preds = %225
  %234 = getelementptr inbounds nuw i8, ptr %213, i64 96
  %235 = load i64, ptr %234, align 8, !tbaa !59
  %236 = tail call i64 @adler32(i64 noundef %235, ptr noundef %222, i32 noundef %223) #11
  store i64 %236, ptr %234, align 8, !tbaa !59
  br label %241

237:                                              ; preds = %225
  %238 = getelementptr inbounds nuw i8, ptr %213, i64 96
  %239 = load i64, ptr %238, align 8, !tbaa !59
  %240 = tail call i64 @crc32(i64 noundef %239, ptr noundef %222, i32 noundef %223) #11
  store i64 %240, ptr %238, align 8, !tbaa !59
  br label %241

241:                                              ; preds = %237, %233, %225
  %242 = load ptr, ptr %213, align 8, !tbaa !82
  %243 = getelementptr inbounds nuw i8, ptr %242, i64 %228
  store ptr %243, ptr %213, align 8, !tbaa !82
  %244 = getelementptr inbounds nuw i8, ptr %213, i64 16
  %245 = load i64, ptr %244, align 8, !tbaa !53
  %246 = add i64 %245, %228
  store i64 %246, ptr %244, align 8, !tbaa !53
  %247 = load i32, ptr %74, align 4, !tbaa !75
  br label %248

248:                                              ; preds = %241, %217
  %249 = phi i32 [ %210, %217 ], [ %247, %241 ]
  %250 = add i32 %249, %223
  store i32 %250, ptr %74, align 4, !tbaa !75
  %251 = load i32, ptr %88, align 4, !tbaa !76
  %252 = add i32 %251, %250
  %253 = icmp ugt i32 %252, 2
  br i1 %253, label %254, label %.loopexit46

254:                                              ; preds = %248
  %255 = load i32, ptr %82, align 4, !tbaa !73
  %256 = sub i32 %255, %251
  %257 = load ptr, ptr %84, align 8, !tbaa !34
  %258 = zext i32 %256 to i64
  %259 = getelementptr inbounds nuw i8, ptr %257, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !8
  %261 = zext i8 %260 to i32
  store i32 %261, ptr %93, align 8, !tbaa !80
  %262 = load i32, ptr %94, align 8, !tbaa !51
  %263 = shl i32 %261, %262
  %264 = add i32 %256, 1
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds nuw i8, ptr %257, i64 %265
  %267 = load i8, ptr %266, align 1, !tbaa !8
  %268 = zext i8 %267 to i32
  %269 = xor i32 %263, %268
  %270 = load i32, ptr %95, align 4, !tbaa !50
  %271 = and i32 %269, %270
  store i32 %271, ptr %93, align 8, !tbaa !80
  br label %272

272:                                              ; preds = %277, %254
  %273 = phi i32 [ %285, %277 ], [ %271, %254 ]
  %274 = phi i32 [ %297, %277 ], [ %251, %254 ]
  %275 = phi i32 [ %296, %277 ], [ %256, %254 ]
  %276 = icmp eq i32 %274, 0
  br i1 %276, label %.loopexit46, label %277

277:                                              ; preds = %272
  %278 = shl i32 %273, %262
  %279 = add i32 %275, 2
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds nuw i8, ptr %257, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !8
  %283 = zext i8 %282 to i32
  %284 = xor i32 %278, %283
  %285 = and i32 %284, %270
  store i32 %285, ptr %93, align 8, !tbaa !80
  %286 = load ptr, ptr %90, align 8, !tbaa !37
  %287 = zext i32 %285 to i64
  %288 = getelementptr inbounds nuw [2 x i8], ptr %286, i64 %287
  %289 = load i16, ptr %288, align 2, !tbaa !62
  %290 = load ptr, ptr %91, align 8, !tbaa !35
  %291 = load i32, ptr %96, align 8, !tbaa !33
  %292 = and i32 %291, %275
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds nuw [2 x i8], ptr %290, i64 %293
  store i16 %289, ptr %294, align 2, !tbaa !62
  %295 = trunc i32 %275 to i16
  store i16 %295, ptr %288, align 2, !tbaa !62
  %296 = add i32 %275, 1
  %297 = add i32 %274, -1
  store i32 %297, ptr %88, align 4, !tbaa !76
  %298 = add i32 %297, %250
  %299 = icmp ult i32 %298, 3
  br i1 %299, label %.loopexit46, label %272, !llvm.loop !91

.loopexit46:                                      ; preds = %277, %272, %248
  %300 = icmp ult i32 %250, 262
  br i1 %300, label %301, label %306

301:                                              ; preds = %.loopexit46
  %302 = load ptr, ptr %15, align 8, !tbaa !20
  %303 = getelementptr inbounds nuw i8, ptr %302, i64 8
  %304 = load i32, ptr %303, align 8, !tbaa !81
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %98, !llvm.loop !92

306:                                              ; preds = %301, %.loopexit46, %209
  %307 = phi i32 [ %250, %301 ], [ %250, %.loopexit46 ], [ %210, %209 ]
  %308 = getelementptr inbounds nuw i8, ptr %15, i64 5952
  %309 = load i64, ptr %308, align 8, !tbaa !38
  %310 = load i64, ptr %81, align 8, !tbaa !61
  %311 = icmp ult i64 %309, %310
  br i1 %311, label %312, label %339

312:                                              ; preds = %306
  %313 = load i32, ptr %82, align 4, !tbaa !73
  %314 = zext i32 %313 to i64
  %315 = zext i32 %307 to i64
  %316 = add nuw nsw i64 %314, %315
  %317 = icmp ult i64 %309, %316
  br i1 %317, label %318, label %324

318:                                              ; preds = %312
  %319 = sub i64 %310, %316
  %320 = tail call i64 @llvm.umin.i64(i64 %319, i64 258)
  %321 = load ptr, ptr %84, align 8, !tbaa !34
  %322 = getelementptr inbounds nuw i8, ptr %321, i64 %316
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %322, i8 0, i64 %320, i1 false)
  %323 = add nuw nsw i64 %320, %316
  br label %336

324:                                              ; preds = %312
  %325 = add nuw nsw i64 %316, 258
  %326 = icmp ult i64 %309, %325
  br i1 %326, label %327, label %339

327:                                              ; preds = %324
  %328 = sub nuw nsw i64 %325, %309
  %329 = sub i64 %310, %309
  %330 = tail call i64 @llvm.umin.i64(i64 %328, i64 %329)
  %331 = load ptr, ptr %84, align 8, !tbaa !34
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 %309
  %333 = and i64 %330, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %332, i8 0, i64 %333, i1 false)
  %334 = load i64, ptr %308, align 8, !tbaa !38
  %335 = add i64 %334, %330
  br label %336

336:                                              ; preds = %327, %318
  %337 = phi i64 [ %323, %318 ], [ %335, %327 ]
  store i64 %337, ptr %308, align 8, !tbaa !38
  %338 = load i32, ptr %74, align 4, !tbaa !75
  br label %339

339:                                              ; preds = %336, %324, %306
  %340 = phi i32 [ %307, %306 ], [ %307, %324 ], [ %338, %336 ]
  %341 = icmp ugt i32 %340, 2
  br i1 %341, label %.preheader, label %.loopexit45

.preheader:                                       ; preds = %339, %619
  %342 = phi i32 [ %620, %619 ], [ %340, %339 ]
  %343 = load i32, ptr %82, align 4, !tbaa !73
  %344 = add i32 %342, -2
  %345 = load i32, ptr %94, align 8, !tbaa !51
  %346 = load ptr, ptr %84, align 8, !tbaa !34
  %347 = load i32, ptr %95, align 4, !tbaa !50
  %348 = load ptr, ptr %90, align 8, !tbaa !37
  %349 = load ptr, ptr %91, align 8, !tbaa !35
  %350 = load i32, ptr %96, align 8, !tbaa !33
  %351 = load i32, ptr %93, align 8, !tbaa !80
  br label %352

352:                                              ; preds = %352, %.preheader
  %353 = phi i32 [ %351, %.preheader ], [ %363, %352 ]
  %354 = phi i32 [ %343, %.preheader ], [ %371, %352 ]
  %355 = phi i32 [ %344, %.preheader ], [ %372, %352 ]
  %356 = shl i32 %353, %345
  %357 = add i32 %354, 2
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds nuw i8, ptr %346, i64 %358
  %360 = load i8, ptr %359, align 1, !tbaa !8
  %361 = zext i8 %360 to i32
  %362 = xor i32 %356, %361
  %363 = and i32 %362, %347
  store i32 %363, ptr %93, align 8, !tbaa !80
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds nuw [2 x i8], ptr %348, i64 %364
  %366 = load i16, ptr %365, align 2, !tbaa !62
  %367 = and i32 %354, %350
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds nuw [2 x i8], ptr %349, i64 %368
  store i16 %366, ptr %369, align 2, !tbaa !62
  %370 = trunc i32 %354 to i16
  store i16 %370, ptr %365, align 2, !tbaa !62
  %371 = add i32 %354, 1
  %372 = add i32 %355, -1
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %352, !llvm.loop !93

374:                                              ; preds = %352
  store i32 %371, ptr %82, align 4, !tbaa !73
  store i32 2, ptr %74, align 4, !tbaa !75
  %375 = load i32, ptr %73, align 8, !tbaa !32
  %376 = add i32 %375, -262
  %377 = zext i32 %375 to i64
  %378 = insertelement <2 x i32> poison, i32 %375, i64 0
  %379 = shufflevector <2 x i32> %378, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %380

380:                                              ; preds = %582, %374
  %381 = phi i32 [ %531, %582 ], [ 2, %374 ]
  %382 = load i64, ptr %81, align 8, !tbaa !61
  %383 = zext nneg i32 %381 to i64
  %384 = load i32, ptr %82, align 4, !tbaa !73
  %385 = zext i32 %384 to i64
  %386 = add nuw nsw i64 %383, %385
  %387 = sub i64 %382, %386
  %388 = trunc i64 %387 to i32
  %389 = load i32, ptr %73, align 8, !tbaa !32
  %390 = add i32 %376, %389
  %391 = icmp ult i32 %384, %390
  br i1 %391, label %490, label %392

392:                                              ; preds = %380
  %393 = load ptr, ptr %84, align 8, !tbaa !34
  %394 = getelementptr inbounds nuw i8, ptr %393, i64 %377
  %395 = sub i32 %375, %388
  %396 = zext i32 %395 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %393, ptr align 1 %394, i64 %396, i1 false)
  %397 = load <2 x i32>, ptr %82, align 4, !tbaa !4
  %398 = sub <2 x i32> %397, %379
  store <2 x i32> %398, ptr %82, align 4, !tbaa !4
  %399 = load i64, ptr %87, align 8, !tbaa !74
  %400 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %399, i64 %377), !nosanitize !57
  %401 = extractvalue { i64, i1 } %400, 1, !nosanitize !57
  br i1 %401, label %402, label %403, !prof !58, !nosanitize !57

402:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

403:                                              ; preds = %392
  %404 = extractvalue { i64, i1 } %400, 0, !nosanitize !57
  store i64 %404, ptr %87, align 8, !tbaa !74
  %405 = load i32, ptr %88, align 4, !tbaa !76
  %406 = extractelement <2 x i32> %398, i64 0
  %407 = icmp ugt i32 %405, %406
  br i1 %407, label %408, label %409

408:                                              ; preds = %403
  store i32 %406, ptr %88, align 4, !tbaa !76
  br label %409

409:                                              ; preds = %408, %403
  %410 = load i32, ptr %73, align 8, !tbaa !32
  %411 = load i32, ptr %89, align 4, !tbaa !36
  %412 = load ptr, ptr %90, align 8, !tbaa !37
  %413 = zext i32 %411 to i64
  %414 = getelementptr inbounds nuw [2 x i8], ptr %412, i64 %413
  %415 = add i32 %411, -1
  %416 = zext i32 %415 to i64
  %417 = add nuw nsw i64 %416, 1
  %418 = icmp ult i32 %415, 7
  br i1 %418, label %.preheader92, label %419

419:                                              ; preds = %409
  %420 = and i64 %417, 8589934584
  %421 = insertelement <8 x i32> poison, i32 %410, i64 0
  %422 = shufflevector <8 x i32> %421, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %423

423:                                              ; preds = %423, %419
  %424 = phi i64 [ 0, %419 ], [ %432, %423 ]
  %425 = mul i64 %424, -2
  %426 = getelementptr i8, ptr %414, i64 %425
  %427 = getelementptr inbounds i8, ptr %426, i64 -16
  %428 = load <8 x i16>, ptr %427, align 2, !tbaa !62
  %429 = zext <8 x i16> %428 to <8 x i32>
  %430 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %429, <8 x i32> %422)
  %431 = trunc nuw <8 x i32> %430 to <8 x i16>
  store <8 x i16> %431, ptr %427, align 2, !tbaa !62
  %432 = add nuw i64 %424, 8
  %433 = icmp eq i64 %432, %420
  br i1 %433, label %434, label %423, !llvm.loop !94

434:                                              ; preds = %423
  %435 = mul nsw i64 %420, -2
  %436 = getelementptr i8, ptr %414, i64 %435
  %437 = trunc i64 %420 to i32
  %438 = sub i32 %411, %437
  %439 = icmp eq i64 %417, %420
  br i1 %439, label %.loopexit44, label %.preheader92

.preheader92:                                     ; preds = %434, %409
  %.ph93 = phi ptr [ %436, %434 ], [ %414, %409 ]
  %.ph94 = phi i32 [ %438, %434 ], [ %411, %409 ]
  br label %440

440:                                              ; preds = %.preheader92, %440
  %441 = phi ptr [ %443, %440 ], [ %.ph93, %.preheader92 ]
  %442 = phi i32 [ %448, %440 ], [ %.ph94, %.preheader92 ]
  %443 = getelementptr inbounds i8, ptr %441, i64 -2
  %444 = load i16, ptr %443, align 2, !tbaa !62
  %445 = zext i16 %444 to i32
  %446 = tail call i32 @llvm.usub.sat.i32(i32 %445, i32 %410)
  %447 = trunc nuw i32 %446 to i16
  store i16 %447, ptr %443, align 2, !tbaa !62
  %448 = add i32 %442, -1
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %.loopexit44, label %440, !llvm.loop !95

.loopexit44:                                      ; preds = %440, %434
  %450 = load ptr, ptr %91, align 8, !tbaa !35
  %451 = zext i32 %410 to i64
  %452 = getelementptr inbounds nuw [2 x i8], ptr %450, i64 %451
  %453 = add i32 %410, -1
  %454 = zext i32 %453 to i64
  %455 = add nuw nsw i64 %454, 1
  %456 = icmp ult i32 %453, 7
  br i1 %456, label %.preheader90, label %457

457:                                              ; preds = %.loopexit44
  %458 = and i64 %455, 8589934584
  %459 = insertelement <8 x i32> poison, i32 %410, i64 0
  %460 = shufflevector <8 x i32> %459, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %461

461:                                              ; preds = %461, %457
  %462 = phi i64 [ 0, %457 ], [ %470, %461 ]
  %463 = mul i64 %462, -2
  %464 = getelementptr i8, ptr %452, i64 %463
  %465 = getelementptr inbounds i8, ptr %464, i64 -16
  %466 = load <8 x i16>, ptr %465, align 2, !tbaa !62
  %467 = zext <8 x i16> %466 to <8 x i32>
  %468 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %467, <8 x i32> %460)
  %469 = trunc nuw <8 x i32> %468 to <8 x i16>
  store <8 x i16> %469, ptr %465, align 2, !tbaa !62
  %470 = add nuw i64 %462, 8
  %471 = icmp eq i64 %470, %458
  br i1 %471, label %472, label %461, !llvm.loop !96

472:                                              ; preds = %461
  %473 = mul nsw i64 %458, -2
  %474 = getelementptr i8, ptr %452, i64 %473
  %475 = trunc i64 %458 to i32
  %476 = sub i32 %410, %475
  %477 = icmp eq i64 %455, %458
  br i1 %477, label %.loopexit43, label %.preheader90

.preheader90:                                     ; preds = %472, %.loopexit44
  %.ph = phi ptr [ %474, %472 ], [ %452, %.loopexit44 ]
  %.ph91 = phi i32 [ %476, %472 ], [ %410, %.loopexit44 ]
  br label %478

478:                                              ; preds = %.preheader90, %478
  %479 = phi ptr [ %481, %478 ], [ %.ph, %.preheader90 ]
  %480 = phi i32 [ %486, %478 ], [ %.ph91, %.preheader90 ]
  %481 = getelementptr inbounds i8, ptr %479, i64 -2
  %482 = load i16, ptr %481, align 2, !tbaa !62
  %483 = zext i16 %482 to i32
  %484 = tail call i32 @llvm.usub.sat.i32(i32 %483, i32 %410)
  %485 = trunc nuw i32 %484 to i16
  store i16 %485, ptr %481, align 2, !tbaa !62
  %486 = add i32 %480, -1
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %.loopexit43, label %478, !llvm.loop !97

.loopexit43:                                      ; preds = %478, %472
  store i32 1, ptr %92, align 8, !tbaa !63
  %488 = add i32 %375, %388
  %489 = load i32, ptr %74, align 4, !tbaa !75
  br label %490

490:                                              ; preds = %.loopexit43, %380
  %491 = phi i32 [ %489, %.loopexit43 ], [ %381, %380 ]
  %492 = phi i32 [ %406, %.loopexit43 ], [ %384, %380 ]
  %493 = phi i32 [ %488, %.loopexit43 ], [ %388, %380 ]
  %494 = load ptr, ptr %15, align 8, !tbaa !20
  %495 = getelementptr inbounds nuw i8, ptr %494, i64 8
  %496 = load i32, ptr %495, align 8, !tbaa !81
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %587, label %498

498:                                              ; preds = %490
  %499 = load ptr, ptr %84, align 8, !tbaa !34
  %500 = zext i32 %492 to i64
  %501 = getelementptr inbounds nuw i8, ptr %499, i64 %500
  %502 = zext i32 %491 to i64
  %503 = getelementptr inbounds nuw i8, ptr %501, i64 %502
  %504 = tail call i32 @llvm.umin.i32(i32 %496, i32 %493)
  %505 = icmp eq i32 %493, 0
  br i1 %505, label %529, label %506

506:                                              ; preds = %498
  %507 = sub i32 %496, %504
  store i32 %507, ptr %495, align 8, !tbaa !81
  %508 = load ptr, ptr %494, align 8, !tbaa !82
  %509 = zext i32 %504 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %503, ptr align 1 %508, i64 %509, i1 false)
  %510 = getelementptr inbounds nuw i8, ptr %494, i64 56
  %511 = load ptr, ptr %510, align 8, !tbaa !19
  %512 = getelementptr inbounds nuw i8, ptr %511, i64 48
  %513 = load i32, ptr %512, align 8, !tbaa !30
  switch i32 %513, label %522 [
    i32 1, label %514
    i32 2, label %518
  ]

514:                                              ; preds = %506
  %515 = getelementptr inbounds nuw i8, ptr %494, i64 96
  %516 = load i64, ptr %515, align 8, !tbaa !59
  %517 = tail call i64 @adler32(i64 noundef %516, ptr noundef %503, i32 noundef %504) #11
  store i64 %517, ptr %515, align 8, !tbaa !59
  br label %522

518:                                              ; preds = %506
  %519 = getelementptr inbounds nuw i8, ptr %494, i64 96
  %520 = load i64, ptr %519, align 8, !tbaa !59
  %521 = tail call i64 @crc32(i64 noundef %520, ptr noundef %503, i32 noundef %504) #11
  store i64 %521, ptr %519, align 8, !tbaa !59
  br label %522

522:                                              ; preds = %518, %514, %506
  %523 = load ptr, ptr %494, align 8, !tbaa !82
  %524 = getelementptr inbounds nuw i8, ptr %523, i64 %509
  store ptr %524, ptr %494, align 8, !tbaa !82
  %525 = getelementptr inbounds nuw i8, ptr %494, i64 16
  %526 = load i64, ptr %525, align 8, !tbaa !53
  %527 = add i64 %526, %509
  store i64 %527, ptr %525, align 8, !tbaa !53
  %528 = load i32, ptr %74, align 4, !tbaa !75
  br label %529

529:                                              ; preds = %522, %498
  %530 = phi i32 [ %491, %498 ], [ %528, %522 ]
  %531 = add i32 %530, %504
  store i32 %531, ptr %74, align 4, !tbaa !75
  %532 = load i32, ptr %88, align 4, !tbaa !76
  %533 = add i32 %532, %531
  %534 = icmp ugt i32 %533, 2
  br i1 %534, label %535, label %.loopexit

535:                                              ; preds = %529
  %536 = load i32, ptr %82, align 4, !tbaa !73
  %537 = sub i32 %536, %532
  %538 = load ptr, ptr %84, align 8, !tbaa !34
  %539 = zext i32 %537 to i64
  %540 = getelementptr inbounds nuw i8, ptr %538, i64 %539
  %541 = load i8, ptr %540, align 1, !tbaa !8
  %542 = zext i8 %541 to i32
  store i32 %542, ptr %93, align 8, !tbaa !80
  %543 = load i32, ptr %94, align 8, !tbaa !51
  %544 = shl i32 %542, %543
  %545 = add i32 %537, 1
  %546 = zext i32 %545 to i64
  %547 = getelementptr inbounds nuw i8, ptr %538, i64 %546
  %548 = load i8, ptr %547, align 1, !tbaa !8
  %549 = zext i8 %548 to i32
  %550 = xor i32 %544, %549
  %551 = load i32, ptr %95, align 4, !tbaa !50
  %552 = and i32 %550, %551
  store i32 %552, ptr %93, align 8, !tbaa !80
  br label %553

553:                                              ; preds = %558, %535
  %554 = phi i32 [ %566, %558 ], [ %552, %535 ]
  %555 = phi i32 [ %578, %558 ], [ %532, %535 ]
  %556 = phi i32 [ %577, %558 ], [ %537, %535 ]
  %557 = icmp eq i32 %555, 0
  br i1 %557, label %.loopexit, label %558

558:                                              ; preds = %553
  %559 = shl i32 %554, %543
  %560 = add i32 %556, 2
  %561 = zext i32 %560 to i64
  %562 = getelementptr inbounds nuw i8, ptr %538, i64 %561
  %563 = load i8, ptr %562, align 1, !tbaa !8
  %564 = zext i8 %563 to i32
  %565 = xor i32 %559, %564
  %566 = and i32 %565, %551
  store i32 %566, ptr %93, align 8, !tbaa !80
  %567 = load ptr, ptr %90, align 8, !tbaa !37
  %568 = zext i32 %566 to i64
  %569 = getelementptr inbounds nuw [2 x i8], ptr %567, i64 %568
  %570 = load i16, ptr %569, align 2, !tbaa !62
  %571 = load ptr, ptr %91, align 8, !tbaa !35
  %572 = load i32, ptr %96, align 8, !tbaa !33
  %573 = and i32 %572, %556
  %574 = zext i32 %573 to i64
  %575 = getelementptr inbounds nuw [2 x i8], ptr %571, i64 %574
  store i16 %570, ptr %575, align 2, !tbaa !62
  %576 = trunc i32 %556 to i16
  store i16 %576, ptr %569, align 2, !tbaa !62
  %577 = add i32 %556, 1
  %578 = add i32 %555, -1
  store i32 %578, ptr %88, align 4, !tbaa !76
  %579 = add i32 %578, %531
  %580 = icmp ult i32 %579, 3
  br i1 %580, label %.loopexit, label %553, !llvm.loop !91

.loopexit:                                        ; preds = %558, %553, %529
  %581 = icmp ult i32 %531, 262
  br i1 %581, label %582, label %587

582:                                              ; preds = %.loopexit
  %583 = load ptr, ptr %15, align 8, !tbaa !20
  %584 = getelementptr inbounds nuw i8, ptr %583, i64 8
  %585 = load i32, ptr %584, align 8, !tbaa !81
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %587, label %380, !llvm.loop !92

587:                                              ; preds = %582, %.loopexit, %490
  %588 = phi i32 [ %531, %582 ], [ %531, %.loopexit ], [ %491, %490 ]
  %589 = load i64, ptr %308, align 8, !tbaa !38
  %590 = load i64, ptr %81, align 8, !tbaa !61
  %591 = icmp ult i64 %589, %590
  br i1 %591, label %592, label %619

592:                                              ; preds = %587
  %593 = load i32, ptr %82, align 4, !tbaa !73
  %594 = zext i32 %593 to i64
  %595 = zext i32 %588 to i64
  %596 = add nuw nsw i64 %594, %595
  %597 = icmp ult i64 %589, %596
  br i1 %597, label %598, label %604

598:                                              ; preds = %592
  %599 = sub i64 %590, %596
  %600 = tail call i64 @llvm.umin.i64(i64 %599, i64 258)
  %601 = load ptr, ptr %84, align 8, !tbaa !34
  %602 = getelementptr inbounds nuw i8, ptr %601, i64 %596
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %602, i8 0, i64 %600, i1 false)
  %603 = add nuw nsw i64 %600, %596
  br label %616

604:                                              ; preds = %592
  %605 = add nuw nsw i64 %596, 258
  %606 = icmp ult i64 %589, %605
  br i1 %606, label %607, label %619

607:                                              ; preds = %604
  %608 = sub nuw nsw i64 %605, %589
  %609 = sub i64 %590, %589
  %610 = tail call i64 @llvm.umin.i64(i64 %608, i64 %609)
  %611 = load ptr, ptr %84, align 8, !tbaa !34
  %612 = getelementptr inbounds nuw i8, ptr %611, i64 %589
  %613 = and i64 %610, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %612, i8 0, i64 %613, i1 false)
  %614 = load i64, ptr %308, align 8, !tbaa !38
  %615 = add i64 %614, %610
  br label %616

616:                                              ; preds = %607, %598
  %617 = phi i64 [ %603, %598 ], [ %615, %607 ]
  store i64 %617, ptr %308, align 8, !tbaa !38
  %618 = load i32, ptr %74, align 4, !tbaa !75
  br label %619

619:                                              ; preds = %616, %604, %587
  %620 = phi i32 [ %588, %587 ], [ %588, %604 ], [ %618, %616 ]
  %621 = icmp ugt i32 %620, 2
  br i1 %621, label %.preheader, label %.loopexit45, !llvm.loop !98

.loopexit45:                                      ; preds = %619, %339
  %622 = phi i32 [ %340, %339 ], [ %620, %619 ]
  %623 = load i32, ptr %82, align 4, !tbaa !73
  %624 = add i32 %623, %622
  store i32 %624, ptr %82, align 4, !tbaa !73
  %625 = zext i32 %624 to i64
  store i64 %625, ptr %87, align 8, !tbaa !74
  store i32 %622, ptr %88, align 4, !tbaa !76
  store i32 0, ptr %74, align 4, !tbaa !75
  %626 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %626, align 8, !tbaa !77
  %627 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %627, align 8, !tbaa !78
  %628 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %628, align 8, !tbaa !79
  store ptr %80, ptr %0, align 8, !tbaa !82
  store i32 %79, ptr %78, align 8, !tbaa !81
  store i32 %27, ptr %26, align 8, !tbaa !30
  br label %629

629:                                              ; preds = %.loopexit45, %34, %30, %28, %25, %23, %20, %17, %13, %9, %5, %3
  %630 = phi i32 [ 0, %.loopexit45 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %630
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %48, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %48 [
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
  %25 = load i32, ptr %24, align 4, !tbaa !73
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %27 = load i32, ptr %26, align 4, !tbaa !75
  %28 = add i32 %27, %25
  %29 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %30 = load i32, ptr %29, align 8, !tbaa !32
  %31 = tail call i32 @llvm.umin.i32(i32 %28, i32 %30)
  %32 = icmp ne ptr %1, null
  %33 = icmp ne i32 %31, 0
  %34 = and i1 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = zext i32 %25 to i64
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 %38
  %40 = zext i32 %27 to i64
  %41 = getelementptr inbounds nuw i8, ptr %39, i64 %40
  %42 = zext i32 %31 to i64
  %43 = sub nsw i64 0, %42
  %44 = getelementptr inbounds i8, ptr %41, i64 %43
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %44, i64 %42, i1 false)
  br label %45

45:                                               ; preds = %35, %23
  %46 = icmp eq ptr %2, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  store i32 %31, ptr %2, align 4, !tbaa !4
  br label %48

48:                                               ; preds = %47, %45, %20, %17, %13, %9, %5, %3
  %49 = phi i32 [ 0, %45 ], [ 0, %47 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %49
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
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !20
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !29
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
  %30 = load i32, ptr %29, align 8, !tbaa !30
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %30), !nosanitize !57
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !57
  br i1 %34, label %35, label %36, !prof !58, !nosanitize !57

35:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !57
  unreachable, !nosanitize !57

36:                                               ; preds = %32
  %37 = extractvalue { i32, i1 } %33, 0, !nosanitize !57
  store i32 %37, ptr %29, align 8, !tbaa !30
  br label %38

38:                                               ; preds = %36, %21
  %39 = phi i32 [ %37, %36 ], [ %30, %21 ]
  %40 = icmp eq i32 %39, 2
  %41 = select i1 %40, i32 57, i32 42
  store i32 %41, ptr %19, align 8, !tbaa !29
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
  store i64 %47, ptr %48, align 8, !tbaa !59
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !60
  tail call void @_tr_init(ptr noundef nonnull %13) #11
  br label %50

50:                                               ; preds = %46, %18, %15, %11, %7, %3, %1
  %51 = phi i32 [ 0, %46 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %51
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetHeader(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #5 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
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
  %24 = load i32, ptr %23, align 8, !tbaa !30
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store ptr %1, ptr %27, align 8, !tbaa !99
  br label %28

28:                                               ; preds = %26, %22, %19, %16, %12, %8, %4, %2
  %29 = phi i32 [ 0, %26 ], [ -2, %22 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @deflatePending(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #7 {
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
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
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
  %27 = load i32, ptr %26, align 4, !tbaa !100
  store i32 %27, ptr %2, align 4, !tbaa !4
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
  %38 = phi i32 [ %36, %30 ], [ 0, %28 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateUsed(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
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
  %26 = load i32, ptr %25, align 8, !tbaa !101
  store i32 %26, ptr %1, align 4, !tbaa !4
  br label %27

27:                                               ; preds = %24, %22, %19, %16, %12, %8, %4, %2
  %28 = phi i32 [ 0, %22 ], [ 0, %24 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
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
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %.loopexit, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %.loopexit

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
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
  %27 = load ptr, ptr %26, align 8, !tbaa !44
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
  %38 = load i32, ptr %33, align 4, !tbaa !100
  %39 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %38), !nosanitize !57
  %40 = extractvalue { i32, i1 } %39, 1, !nosanitize !57
  br i1 %40, label %41, label %42, !prof !58, !nosanitize !57

41:                                               ; preds = %58, %42, %35
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

42:                                               ; preds = %35
  %43 = extractvalue { i32, i1 } %39, 0, !nosanitize !57
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 %36)
  %45 = shl nuw i32 1, %44
  %46 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %45, i32 -1)
  %47 = extractvalue { i32, i1 } %46, 1, !nosanitize !57
  br i1 %47, label %41, label %48, !prof !58, !nosanitize !57

48:                                               ; preds = %42
  %49 = extractvalue { i32, i1 } %46, 0, !nosanitize !57
  %50 = and i32 %49, %37
  %51 = shl i32 %50, %38
  %52 = load i16, ptr %34, align 8, !tbaa !102
  %53 = trunc i32 %51 to i16
  %54 = or i16 %52, %53
  store i16 %54, ptr %34, align 8, !tbaa !102
  %55 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 %44), !nosanitize !57
  %56 = extractvalue { i32, i1 } %55, 1, !nosanitize !57
  br i1 %56, label %57, label %58, !prof !58, !nosanitize !57

57:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !57
  unreachable, !nosanitize !57

58:                                               ; preds = %48
  %59 = extractvalue { i32, i1 } %55, 0, !nosanitize !57
  store i32 %59, ptr %33, align 4, !tbaa !100
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #11
  %60 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %36, i32 %44), !nosanitize !57
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !57
  br i1 %61, label %41, label %62, !prof !58, !nosanitize !57

62:                                               ; preds = %58
  %63 = extractvalue { i32, i1 } %60, 0, !nosanitize !57
  %64 = ashr i32 %37, %44
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %.loopexit, label %35, !llvm.loop !103

.loopexit:                                        ; preds = %62, %25, %23, %20, %17, %13, %9, %5, %3
  %66 = phi i32 [ -5, %23 ], [ -2, %13 ], [ -5, %25 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ 0, %62 ]
  ret i32 %66
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %898, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %898, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %898, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %898, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %898

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %898 [
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
  br i1 %28, label %898, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds nuw i8, ptr %15, i64 196
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 200
  %32 = load i32, ptr %31, align 8, !tbaa !47
  %33 = icmp eq i32 %2, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i32, ptr %30, align 4, !tbaa !46
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %39 = load ptr, ptr %38, align 8, !tbaa !104
  %40 = zext nneg i32 %25 to i64
  %41 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %43 = load ptr, ptr %42, align 8, !tbaa !104
  %44 = icmp eq ptr %39, %43
  br i1 %44, label %859, label %45

45:                                               ; preds = %34, %29
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %47 = load i32, ptr %46, align 4, !tbaa !60
  %48 = icmp eq i32 %47, -2
  br i1 %48, label %859, label %49

49:                                               ; preds = %45
  switch i32 %22, label %898 [
    i32 42, label %50
    i32 57, label %50
    i32 69, label %50
    i32 73, label %50
    i32 91, label %50
    i32 103, label %50
    i32 113, label %50
    i32 666, label %50
  ]

50:                                               ; preds = %49, %49, %49, %49, %49, %49, %49, %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %52 = load ptr, ptr %51, align 8, !tbaa !105
  %53 = icmp eq ptr %52, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %56 = load i32, ptr %55, align 8, !tbaa !81
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %0, align 8, !tbaa !82
  %60 = icmp eq ptr %59, null
  %61 = icmp eq i32 %22, 666
  %62 = or i1 %61, %60
  br i1 %62, label %65, label %68

63:                                               ; preds = %54
  %64 = icmp eq i32 %22, 666
  br i1 %64, label %65, label %68

65:                                               ; preds = %63, %58, %50
  %66 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 32), align 16, !tbaa !42
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %66, ptr %67, align 8, !tbaa !9
  br label %898

68:                                               ; preds = %63, %58
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %70 = load i32, ptr %69, align 8, !tbaa !106
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %73, ptr %74, align 8, !tbaa !9
  br label %836

75:                                               ; preds = %68
  store i32 5, ptr %46, align 4, !tbaa !60
  %76 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %77 = load i64, ptr %76, align 8, !tbaa !55
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %112, label %79

79:                                               ; preds = %75
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #11
  %80 = load i64, ptr %76, align 8, !tbaa !55
  %81 = load i32, ptr %69, align 8, !tbaa !106
  %82 = zext i32 %81 to i64
  %83 = tail call i64 @llvm.umin.i64(i64 %80, i64 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %79
  %86 = trunc nuw i64 %83 to i32
  %87 = load ptr, ptr %51, align 8, !tbaa !105
  %88 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %89 = load ptr, ptr %88, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %87, ptr align 1 %89, i64 %83, i1 false)
  %90 = load ptr, ptr %51, align 8, !tbaa !105
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 %83
  store ptr %91, ptr %51, align 8, !tbaa !105
  %92 = load ptr, ptr %88, align 8, !tbaa !56
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 %83
  store ptr %93, ptr %88, align 8, !tbaa !56
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %95 = load i64, ptr %94, align 8, !tbaa !107
  %96 = add i64 %95, %83
  store i64 %96, ptr %94, align 8, !tbaa !107
  %97 = load i32, ptr %69, align 8, !tbaa !106
  %98 = sub i32 %97, %86
  store i32 %98, ptr %69, align 8, !tbaa !106
  %99 = load i64, ptr %76, align 8, !tbaa !55
  %100 = sub i64 %99, %83
  store i64 %100, ptr %76, align 8, !tbaa !55
  %101 = icmp eq i64 %99, %83
  br i1 %101, label %102, label %105

102:                                              ; preds = %85
  %103 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %104 = load ptr, ptr %103, align 8, !tbaa !40
  store ptr %104, ptr %88, align 8, !tbaa !56
  br label %105

105:                                              ; preds = %102, %85, %79
  %106 = phi i64 [ %80, %79 ], [ %100, %85 ], [ 0, %102 ]
  %107 = phi i32 [ %81, %79 ], [ %98, %85 ], [ %98, %102 ]
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = load i32, ptr %21, align 8, !tbaa !29
  br label %130

111:                                              ; preds = %105
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %836

112:                                              ; preds = %75
  br i1 %57, label %114, label %130

113:                                              ; preds = %114
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !57
  unreachable, !nosanitize !57

114:                                              ; preds = %112
  %115 = add i32 %47, 1073741824
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %118, label %113, !prof !108, !nosanitize !57

117:                                              ; preds = %118
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

118:                                              ; preds = %114
  %119 = shl nsw i32 %47, 1
  %120 = icmp sgt i32 %47, 4
  %121 = select i1 %120, i32 9, i32 0
  %122 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %119, i32 %121), !nosanitize !57
  %123 = extractvalue { i32, i1 } %122, 1, !nosanitize !57
  br i1 %123, label %117, label %124, !prof !58, !nosanitize !57

124:                                              ; preds = %118
  %125 = extractvalue { i32, i1 } %122, 0, !nosanitize !57
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %128, ptr %129, align 8, !tbaa !9
  br label %836

130:                                              ; preds = %124, %112, %109
  %131 = phi i64 [ %106, %109 ], [ 0, %112 ], [ 0, %124 ]
  %132 = phi i32 [ %110, %109 ], [ %22, %112 ], [ %22, %124 ]
  switch i32 %132, label %218 [
    i32 666, label %133
    i32 42, label %139
  ]

133:                                              ; preds = %130
  %134 = load i32, ptr %55, align 8, !tbaa !81
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %794, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %137, ptr %138, align 8, !tbaa !9
  br label %836

139:                                              ; preds = %130
  %140 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %141 = load i32, ptr %140, align 8, !tbaa !30
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 113, ptr %21, align 8, !tbaa !29
  br label %791

144:                                              ; preds = %139
  %145 = getelementptr inbounds nuw i8, ptr %15, i64 84
  %146 = load i32, ptr %145, align 4, !tbaa !31
  %147 = shl i32 %146, 12
  %148 = add i32 %147, -30720
  %149 = load i32, ptr %31, align 8, !tbaa !47
  %150 = icmp sgt i32 %149, 1
  br i1 %150, label %159, label %151

151:                                              ; preds = %144
  %152 = load i32, ptr %30, align 4, !tbaa !46
  %153 = icmp slt i32 %152, 2
  br i1 %153, label %159, label %154

154:                                              ; preds = %151
  %155 = icmp samesign ult i32 %152, 6
  br i1 %155, label %159, label %156

156:                                              ; preds = %154
  %157 = icmp eq i32 %152, 6
  %158 = select i1 %157, i32 128, i32 192
  br label %159

159:                                              ; preds = %156, %154, %151, %144
  %160 = phi i32 [ 64, %154 ], [ 0, %144 ], [ %158, %156 ], [ 0, %151 ]
  %161 = or disjoint i32 %160, %148
  %162 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %163 = load i32, ptr %162, align 4, !tbaa !73
  %164 = icmp eq i32 %163, 0
  %165 = or disjoint i32 %161, 32
  %166 = select i1 %164, i32 %161, i32 %165
  %167 = urem i32 %166, 31
  %168 = or disjoint i32 %167, %166
  %169 = lshr i32 %166, 8
  %170 = trunc i32 %169 to i8
  %171 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %172 = load ptr, ptr %171, align 8, !tbaa !40
  %173 = add i64 %131, 1
  store i64 %173, ptr %76, align 8, !tbaa !55
  %174 = getelementptr inbounds nuw i8, ptr %172, i64 %131
  store i8 %170, ptr %174, align 1, !tbaa !8
  %175 = trunc i32 %168 to i8
  %176 = xor i8 %175, 31
  %177 = load ptr, ptr %171, align 8, !tbaa !40
  %178 = load i64, ptr %76, align 8, !tbaa !55
  %179 = add i64 %178, 1
  store i64 %179, ptr %76, align 8, !tbaa !55
  %180 = getelementptr inbounds nuw i8, ptr %177, i64 %178
  store i8 %176, ptr %180, align 1, !tbaa !8
  %181 = load i32, ptr %162, align 4, !tbaa !73
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %210, label %183

183:                                              ; preds = %159
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %185 = load i64, ptr %184, align 8, !tbaa !59
  %186 = lshr i64 %185, 16
  %187 = lshr i64 %185, 24
  %188 = trunc i64 %187 to i8
  %189 = load ptr, ptr %171, align 8, !tbaa !40
  %190 = load i64, ptr %76, align 8, !tbaa !55
  %191 = add i64 %190, 1
  store i64 %191, ptr %76, align 8, !tbaa !55
  %192 = getelementptr inbounds nuw i8, ptr %189, i64 %190
  store i8 %188, ptr %192, align 1, !tbaa !8
  %193 = trunc i64 %186 to i8
  %194 = load ptr, ptr %171, align 8, !tbaa !40
  %195 = load i64, ptr %76, align 8, !tbaa !55
  %196 = add i64 %195, 1
  store i64 %196, ptr %76, align 8, !tbaa !55
  %197 = getelementptr inbounds nuw i8, ptr %194, i64 %195
  store i8 %193, ptr %197, align 1, !tbaa !8
  %198 = load i64, ptr %184, align 8, !tbaa !59
  %199 = trunc i64 %198 to i8
  %200 = lshr i64 %198, 8
  %201 = trunc i64 %200 to i8
  %202 = load ptr, ptr %171, align 8, !tbaa !40
  %203 = load i64, ptr %76, align 8, !tbaa !55
  %204 = add i64 %203, 1
  store i64 %204, ptr %76, align 8, !tbaa !55
  %205 = getelementptr inbounds nuw i8, ptr %202, i64 %203
  store i8 %201, ptr %205, align 1, !tbaa !8
  %206 = load ptr, ptr %171, align 8, !tbaa !40
  %207 = load i64, ptr %76, align 8, !tbaa !55
  %208 = add i64 %207, 1
  store i64 %208, ptr %76, align 8, !tbaa !55
  %209 = getelementptr inbounds nuw i8, ptr %206, i64 %207
  store i8 %199, ptr %209, align 1, !tbaa !8
  br label %210

210:                                              ; preds = %183, %159
  %211 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %211, ptr %212, align 8, !tbaa !59
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %213 = load i64, ptr %76, align 8, !tbaa !55
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = load i32, ptr %21, align 8, !tbaa !29
  br label %218

217:                                              ; preds = %210
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %836

218:                                              ; preds = %215, %130
  %219 = phi i32 [ %216, %215 ], [ %132, %130 ]
  %220 = icmp eq i32 %219, 57
  br i1 %220, label %221, label %403

221:                                              ; preds = %218
  %222 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %222, ptr %223, align 8, !tbaa !59
  %224 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %225 = load ptr, ptr %224, align 8, !tbaa !40
  %226 = load i64, ptr %76, align 8, !tbaa !55
  %227 = add i64 %226, 1
  store i64 %227, ptr %76, align 8, !tbaa !55
  %228 = getelementptr inbounds nuw i8, ptr %225, i64 %226
  store i8 31, ptr %228, align 1, !tbaa !8
  %229 = load ptr, ptr %224, align 8, !tbaa !40
  %230 = load i64, ptr %76, align 8, !tbaa !55
  %231 = add i64 %230, 1
  store i64 %231, ptr %76, align 8, !tbaa !55
  %232 = getelementptr inbounds nuw i8, ptr %229, i64 %230
  store i8 -117, ptr %232, align 1, !tbaa !8
  %233 = load ptr, ptr %224, align 8, !tbaa !40
  %234 = load i64, ptr %76, align 8, !tbaa !55
  %235 = add i64 %234, 1
  store i64 %235, ptr %76, align 8, !tbaa !55
  %236 = getelementptr inbounds nuw i8, ptr %233, i64 %234
  store i8 8, ptr %236, align 1, !tbaa !8
  %237 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %238 = load ptr, ptr %237, align 8, !tbaa !99
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %282

240:                                              ; preds = %221
  %241 = load ptr, ptr %224, align 8, !tbaa !40
  %242 = load i64, ptr %76, align 8, !tbaa !55
  %243 = add i64 %242, 1
  store i64 %243, ptr %76, align 8, !tbaa !55
  %244 = getelementptr inbounds nuw i8, ptr %241, i64 %242
  store i8 0, ptr %244, align 1, !tbaa !8
  %245 = load ptr, ptr %224, align 8, !tbaa !40
  %246 = load i64, ptr %76, align 8, !tbaa !55
  %247 = add i64 %246, 1
  store i64 %247, ptr %76, align 8, !tbaa !55
  %248 = getelementptr inbounds nuw i8, ptr %245, i64 %246
  store i8 0, ptr %248, align 1, !tbaa !8
  %249 = load ptr, ptr %224, align 8, !tbaa !40
  %250 = load i64, ptr %76, align 8, !tbaa !55
  %251 = add i64 %250, 1
  store i64 %251, ptr %76, align 8, !tbaa !55
  %252 = getelementptr inbounds nuw i8, ptr %249, i64 %250
  store i8 0, ptr %252, align 1, !tbaa !8
  %253 = load ptr, ptr %224, align 8, !tbaa !40
  %254 = load i64, ptr %76, align 8, !tbaa !55
  %255 = add i64 %254, 1
  store i64 %255, ptr %76, align 8, !tbaa !55
  %256 = getelementptr inbounds nuw i8, ptr %253, i64 %254
  store i8 0, ptr %256, align 1, !tbaa !8
  %257 = load ptr, ptr %224, align 8, !tbaa !40
  %258 = load i64, ptr %76, align 8, !tbaa !55
  %259 = add i64 %258, 1
  store i64 %259, ptr %76, align 8, !tbaa !55
  %260 = getelementptr inbounds nuw i8, ptr %257, i64 %258
  store i8 0, ptr %260, align 1, !tbaa !8
  %261 = load i32, ptr %30, align 4, !tbaa !46
  %262 = icmp eq i32 %261, 9
  br i1 %262, label %269, label %263

263:                                              ; preds = %240
  %264 = load i32, ptr %31, align 8, !tbaa !47
  %265 = icmp sgt i32 %264, 1
  %266 = icmp slt i32 %261, 2
  %267 = or i1 %266, %265
  %268 = select i1 %267, i8 4, i8 0
  br label %269

269:                                              ; preds = %263, %240
  %270 = phi i8 [ %268, %263 ], [ 2, %240 ]
  %271 = load ptr, ptr %224, align 8, !tbaa !40
  %272 = load i64, ptr %76, align 8, !tbaa !55
  %273 = add i64 %272, 1
  store i64 %273, ptr %76, align 8, !tbaa !55
  %274 = getelementptr inbounds nuw i8, ptr %271, i64 %272
  store i8 %270, ptr %274, align 1, !tbaa !8
  %275 = load ptr, ptr %224, align 8, !tbaa !40
  %276 = load i64, ptr %76, align 8, !tbaa !55
  %277 = add i64 %276, 1
  store i64 %277, ptr %76, align 8, !tbaa !55
  %278 = getelementptr inbounds nuw i8, ptr %275, i64 %276
  store i8 3, ptr %278, align 1, !tbaa !8
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %279 = load i64, ptr %76, align 8, !tbaa !55
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %401, label %281

281:                                              ; preds = %269
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %836

282:                                              ; preds = %221
  %283 = getelementptr inbounds nuw i8, ptr %238, i64 68
  %284 = load i32, ptr %283, align 4, !tbaa !109
  %285 = icmp eq i32 %284, 0
  %286 = select i1 %285, i8 0, i8 2
  %287 = load i32, ptr %238, align 8, !tbaa !111
  %288 = icmp ne i32 %287, 0
  %289 = zext i1 %288 to i8
  %290 = or disjoint i8 %286, %289
  %291 = getelementptr inbounds nuw i8, ptr %238, i64 24
  %292 = load ptr, ptr %291, align 8, !tbaa !112
  %293 = icmp eq ptr %292, null
  %294 = select i1 %293, i8 0, i8 4
  %295 = or disjoint i8 %290, %294
  %296 = getelementptr inbounds nuw i8, ptr %238, i64 40
  %297 = load ptr, ptr %296, align 8, !tbaa !113
  %298 = icmp eq ptr %297, null
  %299 = select i1 %298, i8 0, i8 8
  %300 = or disjoint i8 %295, %299
  %301 = getelementptr inbounds nuw i8, ptr %238, i64 56
  %302 = load ptr, ptr %301, align 8, !tbaa !114
  %303 = icmp eq ptr %302, null
  %304 = select i1 %303, i8 0, i8 16
  %305 = or disjoint i8 %300, %304
  %306 = load ptr, ptr %224, align 8, !tbaa !40
  %307 = load i64, ptr %76, align 8, !tbaa !55
  %308 = add i64 %307, 1
  store i64 %308, ptr %76, align 8, !tbaa !55
  %309 = getelementptr inbounds nuw i8, ptr %306, i64 %307
  store i8 %305, ptr %309, align 1, !tbaa !8
  %310 = load ptr, ptr %237, align 8, !tbaa !99
  %311 = getelementptr inbounds nuw i8, ptr %310, i64 8
  %312 = load i64, ptr %311, align 8, !tbaa !115
  %313 = trunc i64 %312 to i8
  %314 = load ptr, ptr %224, align 8, !tbaa !40
  %315 = load i64, ptr %76, align 8, !tbaa !55
  %316 = add i64 %315, 1
  store i64 %316, ptr %76, align 8, !tbaa !55
  %317 = getelementptr inbounds nuw i8, ptr %314, i64 %315
  store i8 %313, ptr %317, align 1, !tbaa !8
  %318 = load ptr, ptr %237, align 8, !tbaa !99
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 8
  %320 = load i64, ptr %319, align 8, !tbaa !115
  %321 = lshr i64 %320, 8
  %322 = trunc i64 %321 to i8
  %323 = load ptr, ptr %224, align 8, !tbaa !40
  %324 = load i64, ptr %76, align 8, !tbaa !55
  %325 = add i64 %324, 1
  store i64 %325, ptr %76, align 8, !tbaa !55
  %326 = getelementptr inbounds nuw i8, ptr %323, i64 %324
  store i8 %322, ptr %326, align 1, !tbaa !8
  %327 = load ptr, ptr %237, align 8, !tbaa !99
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 8
  %329 = load i64, ptr %328, align 8, !tbaa !115
  %330 = lshr i64 %329, 16
  %331 = trunc i64 %330 to i8
  %332 = load ptr, ptr %224, align 8, !tbaa !40
  %333 = load i64, ptr %76, align 8, !tbaa !55
  %334 = add i64 %333, 1
  store i64 %334, ptr %76, align 8, !tbaa !55
  %335 = getelementptr inbounds nuw i8, ptr %332, i64 %333
  store i8 %331, ptr %335, align 1, !tbaa !8
  %336 = load ptr, ptr %237, align 8, !tbaa !99
  %337 = getelementptr inbounds nuw i8, ptr %336, i64 8
  %338 = load i64, ptr %337, align 8, !tbaa !115
  %339 = lshr i64 %338, 24
  %340 = trunc i64 %339 to i8
  %341 = load ptr, ptr %224, align 8, !tbaa !40
  %342 = load i64, ptr %76, align 8, !tbaa !55
  %343 = add i64 %342, 1
  store i64 %343, ptr %76, align 8, !tbaa !55
  %344 = getelementptr inbounds nuw i8, ptr %341, i64 %342
  store i8 %340, ptr %344, align 1, !tbaa !8
  %345 = load i32, ptr %30, align 4, !tbaa !46
  %346 = icmp eq i32 %345, 9
  br i1 %346, label %353, label %347

347:                                              ; preds = %282
  %348 = load i32, ptr %31, align 8, !tbaa !47
  %349 = icmp sgt i32 %348, 1
  %350 = icmp slt i32 %345, 2
  %351 = or i1 %350, %349
  %352 = select i1 %351, i8 4, i8 0
  br label %353

353:                                              ; preds = %347, %282
  %354 = phi i8 [ %352, %347 ], [ 2, %282 ]
  %355 = load ptr, ptr %224, align 8, !tbaa !40
  %356 = load i64, ptr %76, align 8, !tbaa !55
  %357 = add i64 %356, 1
  store i64 %357, ptr %76, align 8, !tbaa !55
  %358 = getelementptr inbounds nuw i8, ptr %355, i64 %356
  store i8 %354, ptr %358, align 1, !tbaa !8
  %359 = load ptr, ptr %237, align 8, !tbaa !99
  %360 = getelementptr inbounds nuw i8, ptr %359, i64 20
  %361 = load i32, ptr %360, align 4, !tbaa !116
  %362 = trunc i32 %361 to i8
  %363 = load ptr, ptr %224, align 8, !tbaa !40
  %364 = load i64, ptr %76, align 8, !tbaa !55
  %365 = add i64 %364, 1
  store i64 %365, ptr %76, align 8, !tbaa !55
  %366 = getelementptr inbounds nuw i8, ptr %363, i64 %364
  store i8 %362, ptr %366, align 1, !tbaa !8
  %367 = load ptr, ptr %237, align 8, !tbaa !99
  %368 = getelementptr inbounds nuw i8, ptr %367, i64 24
  %369 = load ptr, ptr %368, align 8, !tbaa !112
  %370 = icmp eq ptr %369, null
  br i1 %370, label %389, label %371

371:                                              ; preds = %353
  %372 = getelementptr inbounds nuw i8, ptr %367, i64 32
  %373 = load i32, ptr %372, align 8, !tbaa !117
  %374 = trunc i32 %373 to i8
  %375 = load ptr, ptr %224, align 8, !tbaa !40
  %376 = load i64, ptr %76, align 8, !tbaa !55
  %377 = add i64 %376, 1
  store i64 %377, ptr %76, align 8, !tbaa !55
  %378 = getelementptr inbounds nuw i8, ptr %375, i64 %376
  store i8 %374, ptr %378, align 1, !tbaa !8
  %379 = load ptr, ptr %237, align 8, !tbaa !99
  %380 = getelementptr inbounds nuw i8, ptr %379, i64 32
  %381 = load i32, ptr %380, align 8, !tbaa !117
  %382 = lshr i32 %381, 8
  %383 = trunc i32 %382 to i8
  %384 = load ptr, ptr %224, align 8, !tbaa !40
  %385 = load i64, ptr %76, align 8, !tbaa !55
  %386 = add i64 %385, 1
  store i64 %386, ptr %76, align 8, !tbaa !55
  %387 = getelementptr inbounds nuw i8, ptr %384, i64 %385
  store i8 %383, ptr %387, align 1, !tbaa !8
  %388 = load ptr, ptr %237, align 8, !tbaa !99
  br label %389

389:                                              ; preds = %371, %353
  %390 = phi ptr [ %388, %371 ], [ %367, %353 ]
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 68
  %392 = load i32, ptr %391, align 4, !tbaa !109
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %399, label %394

394:                                              ; preds = %389
  %395 = load i64, ptr %223, align 8, !tbaa !59
  %396 = load ptr, ptr %224, align 8, !tbaa !40
  %397 = load i64, ptr %76, align 8, !tbaa !55
  %398 = tail call i64 @crc32_z(i64 noundef %395, ptr noundef %396, i64 noundef %397) #11
  store i64 %398, ptr %223, align 8, !tbaa !59
  br label %399

399:                                              ; preds = %394, %389
  %400 = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i64 0, ptr %400, align 8, !tbaa !118
  store i32 69, ptr %21, align 8, !tbaa !29
  br label %405

401:                                              ; preds = %269
  %402 = load i32, ptr %21, align 8, !tbaa !29
  br label %403

403:                                              ; preds = %401, %218
  %404 = phi i32 [ %402, %401 ], [ %219, %218 ]
  switch i32 %404, label %791 [
    i32 69, label %405
    i32 73, label %567
    i32 91, label %661
    i32 103, label %754
  ]

405:                                              ; preds = %403, %399
  %406 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %407 = load ptr, ptr %406, align 8, !tbaa !99
  %408 = getelementptr inbounds nuw i8, ptr %407, i64 24
  %409 = load ptr, ptr %408, align 8, !tbaa !112
  %410 = icmp eq ptr %409, null
  br i1 %410, label %566, label %411

411:                                              ; preds = %405
  %412 = load i64, ptr %76, align 8, !tbaa !55
  %413 = getelementptr inbounds nuw i8, ptr %407, i64 32
  %414 = load i32, ptr %413, align 8, !tbaa !117
  %415 = and i32 %414, 65535
  %416 = zext nneg i32 %415 to i64
  %417 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %418 = load i64, ptr %417, align 8, !tbaa !118
  %419 = sub i64 %416, %418
  %420 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %421 = add i64 %419, %412
  %422 = load i64, ptr %420, align 8, !tbaa !41
  %423 = icmp ugt i64 %421, %422
  br i1 %423, label %424, label %541

424:                                              ; preds = %411
  %425 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %428 = sub i64 %422, %412
  %429 = load ptr, ptr %425, align 8, !tbaa !40
  %430 = getelementptr inbounds nuw i8, ptr %429, i64 %412
  %431 = getelementptr inbounds nuw i8, ptr %409, i64 %418
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %430, ptr nonnull align 1 %431, i64 %428, i1 false)
  %432 = load i64, ptr %420, align 8, !tbaa !41
  store i64 %432, ptr %76, align 8, !tbaa !55
  %433 = load ptr, ptr %406, align 8, !tbaa !99
  %434 = getelementptr inbounds nuw i8, ptr %433, i64 68
  %435 = load i32, ptr %434, align 4, !tbaa !109
  %436 = icmp ne i32 %435, 0
  %437 = icmp ugt i64 %432, %412
  %438 = select i1 %436, i1 %437, i1 false
  br i1 %438, label %439, label %445

439:                                              ; preds = %424
  %440 = load i64, ptr %426, align 8, !tbaa !59
  %441 = load ptr, ptr %425, align 8, !tbaa !40
  %442 = getelementptr inbounds nuw i8, ptr %441, i64 %412
  %443 = sub nuw i64 %432, %412
  %444 = tail call i64 @crc32_z(i64 noundef %440, ptr noundef %442, i64 noundef %443) #11
  store i64 %444, ptr %426, align 8, !tbaa !59
  br label %445

445:                                              ; preds = %439, %424
  %446 = load i64, ptr %417, align 8, !tbaa !118
  %447 = add i64 %446, %428
  store i64 %447, ptr %417, align 8, !tbaa !118
  %448 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %448) #11
  %449 = getelementptr inbounds nuw i8, ptr %448, i64 40
  %450 = load i64, ptr %449, align 8, !tbaa !55
  %451 = load i32, ptr %69, align 8, !tbaa !106
  %452 = zext i32 %451 to i64
  %453 = tail call i64 @llvm.umin.i64(i64 %450, i64 %452)
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %474, label %455

455:                                              ; preds = %445
  %456 = trunc nuw i64 %453 to i32
  %457 = load ptr, ptr %51, align 8, !tbaa !105
  %458 = getelementptr inbounds nuw i8, ptr %448, i64 32
  %459 = load ptr, ptr %458, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %457, ptr align 1 %459, i64 %453, i1 false)
  %460 = load ptr, ptr %51, align 8, !tbaa !105
  %461 = getelementptr inbounds nuw i8, ptr %460, i64 %453
  store ptr %461, ptr %51, align 8, !tbaa !105
  %462 = load ptr, ptr %458, align 8, !tbaa !56
  %463 = getelementptr inbounds nuw i8, ptr %462, i64 %453
  store ptr %463, ptr %458, align 8, !tbaa !56
  %464 = load i64, ptr %427, align 8, !tbaa !107
  %465 = add i64 %464, %453
  store i64 %465, ptr %427, align 8, !tbaa !107
  %466 = load i32, ptr %69, align 8, !tbaa !106
  %467 = sub i32 %466, %456
  store i32 %467, ptr %69, align 8, !tbaa !106
  %468 = load i64, ptr %449, align 8, !tbaa !55
  %469 = sub i64 %468, %453
  store i64 %469, ptr %449, align 8, !tbaa !55
  %470 = icmp eq i64 %468, %453
  br i1 %470, label %471, label %474

471:                                              ; preds = %455
  %472 = getelementptr inbounds nuw i8, ptr %448, i64 16
  %473 = load ptr, ptr %472, align 8, !tbaa !40
  store ptr %473, ptr %458, align 8, !tbaa !56
  br label %474

474:                                              ; preds = %471, %455, %445
  %475 = load i64, ptr %76, align 8, !tbaa !55
  %476 = icmp eq i64 %475, 0
  br i1 %476, label %477, label %.loopexit

477:                                              ; preds = %474
  %478 = sub i64 %419, %428
  %479 = load i64, ptr %420, align 8, !tbaa !41
  %480 = icmp ugt i64 %478, %479
  br i1 %480, label %.preheader, label %.loopexit39

.preheader:                                       ; preds = %477, %532
  %481 = phi i64 [ %534, %532 ], [ %479, %477 ]
  %482 = phi i64 [ %533, %532 ], [ %478, %477 ]
  %483 = load ptr, ptr %425, align 8, !tbaa !40
  %484 = load ptr, ptr %406, align 8, !tbaa !99
  %485 = getelementptr inbounds nuw i8, ptr %484, i64 24
  %486 = load ptr, ptr %485, align 8, !tbaa !112
  %487 = load i64, ptr %417, align 8, !tbaa !118
  %488 = getelementptr inbounds nuw i8, ptr %486, i64 %487
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %483, ptr align 1 %488, i64 %481, i1 false)
  %489 = load i64, ptr %420, align 8, !tbaa !41
  store i64 %489, ptr %76, align 8, !tbaa !55
  %490 = load ptr, ptr %406, align 8, !tbaa !99
  %491 = getelementptr inbounds nuw i8, ptr %490, i64 68
  %492 = load i32, ptr %491, align 4, !tbaa !109
  %493 = icmp ne i32 %492, 0
  %494 = icmp ne i64 %489, 0
  %495 = select i1 %493, i1 %494, i1 false
  br i1 %495, label %496, label %500

496:                                              ; preds = %.preheader
  %497 = load i64, ptr %426, align 8, !tbaa !59
  %498 = load ptr, ptr %425, align 8, !tbaa !40
  %499 = tail call i64 @crc32_z(i64 noundef %497, ptr noundef %498, i64 noundef %489) #11
  store i64 %499, ptr %426, align 8, !tbaa !59
  br label %500

500:                                              ; preds = %496, %.preheader
  %501 = load i64, ptr %417, align 8, !tbaa !118
  %502 = add i64 %501, %481
  store i64 %502, ptr %417, align 8, !tbaa !118
  %503 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %503) #11
  %504 = getelementptr inbounds nuw i8, ptr %503, i64 40
  %505 = load i64, ptr %504, align 8, !tbaa !55
  %506 = load i32, ptr %69, align 8, !tbaa !106
  %507 = zext i32 %506 to i64
  %508 = tail call i64 @llvm.umin.i64(i64 %505, i64 %507)
  %509 = icmp eq i64 %508, 0
  br i1 %509, label %529, label %510

510:                                              ; preds = %500
  %511 = trunc nuw i64 %508 to i32
  %512 = load ptr, ptr %51, align 8, !tbaa !105
  %513 = getelementptr inbounds nuw i8, ptr %503, i64 32
  %514 = load ptr, ptr %513, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %512, ptr align 1 %514, i64 %508, i1 false)
  %515 = load ptr, ptr %51, align 8, !tbaa !105
  %516 = getelementptr inbounds nuw i8, ptr %515, i64 %508
  store ptr %516, ptr %51, align 8, !tbaa !105
  %517 = load ptr, ptr %513, align 8, !tbaa !56
  %518 = getelementptr inbounds nuw i8, ptr %517, i64 %508
  store ptr %518, ptr %513, align 8, !tbaa !56
  %519 = load i64, ptr %427, align 8, !tbaa !107
  %520 = add i64 %519, %508
  store i64 %520, ptr %427, align 8, !tbaa !107
  %521 = load i32, ptr %69, align 8, !tbaa !106
  %522 = sub i32 %521, %511
  store i32 %522, ptr %69, align 8, !tbaa !106
  %523 = load i64, ptr %504, align 8, !tbaa !55
  %524 = sub i64 %523, %508
  store i64 %524, ptr %504, align 8, !tbaa !55
  %525 = icmp eq i64 %523, %508
  br i1 %525, label %526, label %529

526:                                              ; preds = %510
  %527 = getelementptr inbounds nuw i8, ptr %503, i64 16
  %528 = load ptr, ptr %527, align 8, !tbaa !40
  store ptr %528, ptr %513, align 8, !tbaa !56
  br label %529

529:                                              ; preds = %526, %510, %500
  %530 = load i64, ptr %76, align 8, !tbaa !55
  %531 = icmp eq i64 %530, 0
  br i1 %531, label %532, label %.loopexit

.loopexit:                                        ; preds = %529, %474
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %836

532:                                              ; preds = %529
  %533 = sub i64 %482, %481
  %534 = load i64, ptr %420, align 8, !tbaa !41
  %535 = icmp ugt i64 %533, %534
  br i1 %535, label %.preheader, label %.loopexit39, !llvm.loop !119

.loopexit39:                                      ; preds = %532, %477
  %536 = phi i64 [ %478, %477 ], [ %533, %532 ]
  %537 = load ptr, ptr %406, align 8, !tbaa !99
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 24
  %539 = load ptr, ptr %538, align 8, !tbaa !112
  %540 = load i64, ptr %417, align 8, !tbaa !118
  br label %541

541:                                              ; preds = %.loopexit39, %411
  %542 = phi i64 [ %418, %411 ], [ %540, %.loopexit39 ]
  %543 = phi ptr [ %409, %411 ], [ %539, %.loopexit39 ]
  %544 = phi i64 [ %412, %411 ], [ 0, %.loopexit39 ]
  %545 = phi i64 [ %419, %411 ], [ %536, %.loopexit39 ]
  %546 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %547 = load ptr, ptr %546, align 8, !tbaa !40
  %548 = getelementptr inbounds nuw i8, ptr %547, i64 %544
  %549 = getelementptr inbounds nuw i8, ptr %543, i64 %542
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %548, ptr align 1 %549, i64 %545, i1 false)
  %550 = load i64, ptr %76, align 8, !tbaa !55
  %551 = add i64 %550, %545
  store i64 %551, ptr %76, align 8, !tbaa !55
  %552 = load ptr, ptr %406, align 8, !tbaa !99
  %553 = getelementptr inbounds nuw i8, ptr %552, i64 68
  %554 = load i32, ptr %553, align 4, !tbaa !109
  %555 = icmp ne i32 %554, 0
  %556 = icmp ugt i64 %551, %544
  %557 = select i1 %555, i1 %556, i1 false
  br i1 %557, label %558, label %565

558:                                              ; preds = %541
  %559 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %560 = load i64, ptr %559, align 8, !tbaa !59
  %561 = load ptr, ptr %546, align 8, !tbaa !40
  %562 = getelementptr inbounds nuw i8, ptr %561, i64 %544
  %563 = sub nuw i64 %551, %544
  %564 = tail call i64 @crc32_z(i64 noundef %560, ptr noundef %562, i64 noundef %563) #11
  store i64 %564, ptr %559, align 8, !tbaa !59
  br label %565

565:                                              ; preds = %558, %541
  store i64 0, ptr %417, align 8, !tbaa !118
  br label %566

566:                                              ; preds = %565, %405
  store i32 73, ptr %21, align 8, !tbaa !29
  br label %567

567:                                              ; preds = %566, %403
  %568 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %569 = load ptr, ptr %568, align 8, !tbaa !99
  %570 = getelementptr inbounds nuw i8, ptr %569, i64 40
  %571 = load ptr, ptr %570, align 8, !tbaa !113
  %572 = icmp eq ptr %571, null
  br i1 %572, label %660, label %573

573:                                              ; preds = %567
  %574 = load i64, ptr %76, align 8, !tbaa !55
  %575 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %576 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %577 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %578 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %579 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %580

580:                                              ; preds = %631, %573
  %581 = phi i64 [ %574, %573 ], [ %634, %631 ]
  %582 = load i64, ptr %76, align 8, !tbaa !55
  %583 = load i64, ptr %575, align 8, !tbaa !41
  %584 = icmp eq i64 %582, %583
  %585 = load ptr, ptr %568, align 8, !tbaa !99
  br i1 %584, label %586, label %631

586:                                              ; preds = %580
  %587 = getelementptr inbounds nuw i8, ptr %585, i64 68
  %588 = load i32, ptr %587, align 4, !tbaa !109
  %589 = icmp ne i32 %588, 0
  %590 = icmp ugt i64 %582, %581
  %591 = select i1 %589, i1 %590, i1 false
  br i1 %591, label %592, label %598

592:                                              ; preds = %586
  %593 = load i64, ptr %576, align 8, !tbaa !59
  %594 = load ptr, ptr %577, align 8, !tbaa !40
  %595 = getelementptr inbounds nuw i8, ptr %594, i64 %581
  %596 = sub nuw i64 %582, %581
  %597 = tail call i64 @crc32_z(i64 noundef %593, ptr noundef %595, i64 noundef %596) #11
  store i64 %597, ptr %576, align 8, !tbaa !59
  br label %598

598:                                              ; preds = %592, %586
  %599 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %599) #11
  %600 = getelementptr inbounds nuw i8, ptr %599, i64 40
  %601 = load i64, ptr %600, align 8, !tbaa !55
  %602 = load i32, ptr %69, align 8, !tbaa !106
  %603 = zext i32 %602 to i64
  %604 = tail call i64 @llvm.umin.i64(i64 %601, i64 %603)
  %605 = icmp eq i64 %604, 0
  br i1 %605, label %625, label %606

606:                                              ; preds = %598
  %607 = trunc nuw i64 %604 to i32
  %608 = load ptr, ptr %51, align 8, !tbaa !105
  %609 = getelementptr inbounds nuw i8, ptr %599, i64 32
  %610 = load ptr, ptr %609, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %608, ptr align 1 %610, i64 %604, i1 false)
  %611 = load ptr, ptr %51, align 8, !tbaa !105
  %612 = getelementptr inbounds nuw i8, ptr %611, i64 %604
  store ptr %612, ptr %51, align 8, !tbaa !105
  %613 = load ptr, ptr %609, align 8, !tbaa !56
  %614 = getelementptr inbounds nuw i8, ptr %613, i64 %604
  store ptr %614, ptr %609, align 8, !tbaa !56
  %615 = load i64, ptr %578, align 8, !tbaa !107
  %616 = add i64 %615, %604
  store i64 %616, ptr %578, align 8, !tbaa !107
  %617 = load i32, ptr %69, align 8, !tbaa !106
  %618 = sub i32 %617, %607
  store i32 %618, ptr %69, align 8, !tbaa !106
  %619 = load i64, ptr %600, align 8, !tbaa !55
  %620 = sub i64 %619, %604
  store i64 %620, ptr %600, align 8, !tbaa !55
  %621 = icmp eq i64 %619, %604
  br i1 %621, label %622, label %625

622:                                              ; preds = %606
  %623 = getelementptr inbounds nuw i8, ptr %599, i64 16
  %624 = load ptr, ptr %623, align 8, !tbaa !40
  store ptr %624, ptr %609, align 8, !tbaa !56
  br label %625

625:                                              ; preds = %622, %606, %598
  %626 = load i64, ptr %76, align 8, !tbaa !55
  %627 = icmp eq i64 %626, 0
  br i1 %627, label %628, label %630

628:                                              ; preds = %625
  %629 = load ptr, ptr %568, align 8, !tbaa !99
  br label %631

630:                                              ; preds = %625
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %836

631:                                              ; preds = %628, %580
  %632 = phi i64 [ %582, %580 ], [ 0, %628 ]
  %633 = phi ptr [ %585, %580 ], [ %629, %628 ]
  %634 = phi i64 [ %581, %580 ], [ 0, %628 ]
  %635 = getelementptr inbounds nuw i8, ptr %633, i64 40
  %636 = load ptr, ptr %635, align 8, !tbaa !113
  %637 = load i64, ptr %579, align 8, !tbaa !118
  %638 = add i64 %637, 1
  store i64 %638, ptr %579, align 8, !tbaa !118
  %639 = getelementptr inbounds nuw i8, ptr %636, i64 %637
  %640 = load i8, ptr %639, align 1, !tbaa !8
  %641 = load ptr, ptr %577, align 8, !tbaa !40
  %642 = add i64 %632, 1
  store i64 %642, ptr %76, align 8, !tbaa !55
  %643 = getelementptr inbounds nuw i8, ptr %641, i64 %632
  store i8 %640, ptr %643, align 1, !tbaa !8
  %644 = icmp eq i8 %640, 0
  br i1 %644, label %645, label %580, !llvm.loop !121

645:                                              ; preds = %631
  %646 = load ptr, ptr %568, align 8, !tbaa !99
  %647 = getelementptr inbounds nuw i8, ptr %646, i64 68
  %648 = load i32, ptr %647, align 4, !tbaa !109
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %659, label %650

650:                                              ; preds = %645
  %651 = load i64, ptr %76, align 8, !tbaa !55
  %652 = icmp ugt i64 %651, %634
  br i1 %652, label %653, label %659

653:                                              ; preds = %650
  %654 = load i64, ptr %576, align 8, !tbaa !59
  %655 = load ptr, ptr %577, align 8, !tbaa !40
  %656 = getelementptr inbounds nuw i8, ptr %655, i64 %634
  %657 = sub nuw i64 %651, %634
  %658 = tail call i64 @crc32_z(i64 noundef %654, ptr noundef %656, i64 noundef %657) #11
  store i64 %658, ptr %576, align 8, !tbaa !59
  br label %659

659:                                              ; preds = %653, %650, %645
  store i64 0, ptr %579, align 8, !tbaa !118
  br label %660

660:                                              ; preds = %659, %567
  store i32 91, ptr %21, align 8, !tbaa !29
  br label %661

661:                                              ; preds = %660, %403
  %662 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %663 = load ptr, ptr %662, align 8, !tbaa !99
  %664 = getelementptr inbounds nuw i8, ptr %663, i64 56
  %665 = load ptr, ptr %664, align 8, !tbaa !114
  %666 = icmp eq ptr %665, null
  br i1 %666, label %753, label %667

667:                                              ; preds = %661
  %668 = load i64, ptr %76, align 8, !tbaa !55
  %669 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %670 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %671 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %672 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %673 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %674

674:                                              ; preds = %725, %667
  %675 = phi i64 [ %668, %667 ], [ %728, %725 ]
  %676 = load i64, ptr %76, align 8, !tbaa !55
  %677 = load i64, ptr %669, align 8, !tbaa !41
  %678 = icmp eq i64 %676, %677
  %679 = load ptr, ptr %662, align 8, !tbaa !99
  br i1 %678, label %680, label %725

680:                                              ; preds = %674
  %681 = getelementptr inbounds nuw i8, ptr %679, i64 68
  %682 = load i32, ptr %681, align 4, !tbaa !109
  %683 = icmp ne i32 %682, 0
  %684 = icmp ugt i64 %676, %675
  %685 = select i1 %683, i1 %684, i1 false
  br i1 %685, label %686, label %692

686:                                              ; preds = %680
  %687 = load i64, ptr %670, align 8, !tbaa !59
  %688 = load ptr, ptr %671, align 8, !tbaa !40
  %689 = getelementptr inbounds nuw i8, ptr %688, i64 %675
  %690 = sub nuw i64 %676, %675
  %691 = tail call i64 @crc32_z(i64 noundef %687, ptr noundef %689, i64 noundef %690) #11
  store i64 %691, ptr %670, align 8, !tbaa !59
  br label %692

692:                                              ; preds = %686, %680
  %693 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %693) #11
  %694 = getelementptr inbounds nuw i8, ptr %693, i64 40
  %695 = load i64, ptr %694, align 8, !tbaa !55
  %696 = load i32, ptr %69, align 8, !tbaa !106
  %697 = zext i32 %696 to i64
  %698 = tail call i64 @llvm.umin.i64(i64 %695, i64 %697)
  %699 = icmp eq i64 %698, 0
  br i1 %699, label %719, label %700

700:                                              ; preds = %692
  %701 = trunc nuw i64 %698 to i32
  %702 = load ptr, ptr %51, align 8, !tbaa !105
  %703 = getelementptr inbounds nuw i8, ptr %693, i64 32
  %704 = load ptr, ptr %703, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %702, ptr align 1 %704, i64 %698, i1 false)
  %705 = load ptr, ptr %51, align 8, !tbaa !105
  %706 = getelementptr inbounds nuw i8, ptr %705, i64 %698
  store ptr %706, ptr %51, align 8, !tbaa !105
  %707 = load ptr, ptr %703, align 8, !tbaa !56
  %708 = getelementptr inbounds nuw i8, ptr %707, i64 %698
  store ptr %708, ptr %703, align 8, !tbaa !56
  %709 = load i64, ptr %672, align 8, !tbaa !107
  %710 = add i64 %709, %698
  store i64 %710, ptr %672, align 8, !tbaa !107
  %711 = load i32, ptr %69, align 8, !tbaa !106
  %712 = sub i32 %711, %701
  store i32 %712, ptr %69, align 8, !tbaa !106
  %713 = load i64, ptr %694, align 8, !tbaa !55
  %714 = sub i64 %713, %698
  store i64 %714, ptr %694, align 8, !tbaa !55
  %715 = icmp eq i64 %713, %698
  br i1 %715, label %716, label %719

716:                                              ; preds = %700
  %717 = getelementptr inbounds nuw i8, ptr %693, i64 16
  %718 = load ptr, ptr %717, align 8, !tbaa !40
  store ptr %718, ptr %703, align 8, !tbaa !56
  br label %719

719:                                              ; preds = %716, %700, %692
  %720 = load i64, ptr %76, align 8, !tbaa !55
  %721 = icmp eq i64 %720, 0
  br i1 %721, label %722, label %724

722:                                              ; preds = %719
  %723 = load ptr, ptr %662, align 8, !tbaa !99
  br label %725

724:                                              ; preds = %719
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %836

725:                                              ; preds = %722, %674
  %726 = phi i64 [ %676, %674 ], [ 0, %722 ]
  %727 = phi ptr [ %679, %674 ], [ %723, %722 ]
  %728 = phi i64 [ %675, %674 ], [ 0, %722 ]
  %729 = getelementptr inbounds nuw i8, ptr %727, i64 56
  %730 = load ptr, ptr %729, align 8, !tbaa !114
  %731 = load i64, ptr %673, align 8, !tbaa !118
  %732 = add i64 %731, 1
  store i64 %732, ptr %673, align 8, !tbaa !118
  %733 = getelementptr inbounds nuw i8, ptr %730, i64 %731
  %734 = load i8, ptr %733, align 1, !tbaa !8
  %735 = load ptr, ptr %671, align 8, !tbaa !40
  %736 = add i64 %726, 1
  store i64 %736, ptr %76, align 8, !tbaa !55
  %737 = getelementptr inbounds nuw i8, ptr %735, i64 %726
  store i8 %734, ptr %737, align 1, !tbaa !8
  %738 = icmp eq i8 %734, 0
  br i1 %738, label %739, label %674, !llvm.loop !122

739:                                              ; preds = %725
  %740 = load ptr, ptr %662, align 8, !tbaa !99
  %741 = getelementptr inbounds nuw i8, ptr %740, i64 68
  %742 = load i32, ptr %741, align 4, !tbaa !109
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %753, label %744

744:                                              ; preds = %739
  %745 = load i64, ptr %76, align 8, !tbaa !55
  %746 = icmp ugt i64 %745, %728
  br i1 %746, label %747, label %753

747:                                              ; preds = %744
  %748 = load i64, ptr %670, align 8, !tbaa !59
  %749 = load ptr, ptr %671, align 8, !tbaa !40
  %750 = getelementptr inbounds nuw i8, ptr %749, i64 %728
  %751 = sub nuw i64 %745, %728
  %752 = tail call i64 @crc32_z(i64 noundef %748, ptr noundef %750, i64 noundef %751) #11
  store i64 %752, ptr %670, align 8, !tbaa !59
  br label %753

753:                                              ; preds = %747, %744, %739, %661
  store i32 103, ptr %21, align 8, !tbaa !29
  br label %754

754:                                              ; preds = %753, %403
  %755 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %756 = load ptr, ptr %755, align 8, !tbaa !99
  %757 = getelementptr inbounds nuw i8, ptr %756, i64 68
  %758 = load i32, ptr %757, align 4, !tbaa !109
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %787, label %760

760:                                              ; preds = %754
  %761 = load i64, ptr %76, align 8, !tbaa !55
  %762 = add i64 %761, 2
  %763 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %764 = load i64, ptr %763, align 8, !tbaa !41
  %765 = icmp ugt i64 %762, %764
  br i1 %765, label %766, label %770

766:                                              ; preds = %760
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %767 = load i64, ptr %76, align 8, !tbaa !55
  %768 = icmp eq i64 %767, 0
  br i1 %768, label %770, label %769

769:                                              ; preds = %766
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %836

770:                                              ; preds = %766, %760
  %771 = phi i64 [ 0, %766 ], [ %761, %760 ]
  %772 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %773 = load i64, ptr %772, align 8, !tbaa !59
  %774 = trunc i64 %773 to i8
  %775 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %776 = load ptr, ptr %775, align 8, !tbaa !40
  %777 = add i64 %771, 1
  store i64 %777, ptr %76, align 8, !tbaa !55
  %778 = getelementptr inbounds nuw i8, ptr %776, i64 %771
  store i8 %774, ptr %778, align 1, !tbaa !8
  %779 = load i64, ptr %772, align 8, !tbaa !59
  %780 = lshr i64 %779, 8
  %781 = trunc i64 %780 to i8
  %782 = load ptr, ptr %775, align 8, !tbaa !40
  %783 = load i64, ptr %76, align 8, !tbaa !55
  %784 = add i64 %783, 1
  store i64 %784, ptr %76, align 8, !tbaa !55
  %785 = getelementptr inbounds nuw i8, ptr %782, i64 %783
  store i8 %781, ptr %785, align 1, !tbaa !8
  %786 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %786, ptr %772, align 8, !tbaa !59
  br label %787

787:                                              ; preds = %770, %754
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %788 = load i64, ptr %76, align 8, !tbaa !55
  %789 = icmp eq i64 %788, 0
  br i1 %789, label %791, label %790

790:                                              ; preds = %787
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %836

791:                                              ; preds = %787, %403, %143
  %792 = load i32, ptr %55, align 8, !tbaa !81
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %794, label %801

794:                                              ; preds = %791, %133
  %795 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %796 = load i32, ptr %795, align 4, !tbaa !75
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %798, label %801

798:                                              ; preds = %794
  %799 = load i32, ptr %21, align 8, !tbaa !29
  %800 = icmp eq i32 %799, 666
  br i1 %800, label %836, label %801

801:                                              ; preds = %798, %794, %791
  %802 = load i32, ptr %30, align 4, !tbaa !46
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %806

804:                                              ; preds = %801
  %805 = tail call i32 @deflate_stored(ptr noundef nonnull %15, i32 noundef 5)
  br label %818

806:                                              ; preds = %801
  %807 = load i32, ptr %31, align 8, !tbaa !47
  switch i32 %807, label %812 [
    i32 2, label %808
    i32 3, label %810
  ]

808:                                              ; preds = %806
  %809 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %15, i32 noundef 5)
  br label %818

810:                                              ; preds = %806
  %811 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %15, i32 noundef 5)
  br label %818

812:                                              ; preds = %806
  %813 = sext i32 %802 to i64
  %814 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %813
  %815 = getelementptr inbounds nuw i8, ptr %814, i64 8
  %816 = load ptr, ptr %815, align 8, !tbaa !104
  %817 = tail call i32 %816(ptr noundef nonnull %15, i32 noundef 5) #11, !inline_history !123
  br label %818

818:                                              ; preds = %812, %810, %808, %804
  %819 = phi i32 [ %805, %804 ], [ %809, %808 ], [ %811, %810 ], [ %817, %812 ]
  %820 = and i32 %819, -2
  %821 = icmp eq i32 %820, 2
  br i1 %821, label %822, label %823

822:                                              ; preds = %818
  store i32 666, ptr %21, align 8, !tbaa !29
  br label %823

823:                                              ; preds = %822, %818
  %824 = and i32 %819, -3
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %826, label %830

826:                                              ; preds = %823
  %827 = load i32, ptr %69, align 8, !tbaa !106
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %836

829:                                              ; preds = %826
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %836

830:                                              ; preds = %823
  %831 = icmp eq i32 %819, 1
  br i1 %831, label %832, label %836

832:                                              ; preds = %830
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %833 = load i32, ptr %69, align 8, !tbaa !106
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %835, label %836

835:                                              ; preds = %832
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %836

836:                                              ; preds = %835, %832, %830, %829, %826, %798, %790, %769, %724, %630, %.loopexit, %281, %217, %136, %127, %111, %72
  %837 = load i32, ptr %55, align 8, !tbaa !81
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %839, label %898

839:                                              ; preds = %836
  %840 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %841 = load i32, ptr %840, align 4, !tbaa !73
  %842 = zext i32 %841 to i64
  %843 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %844 = load i64, ptr %843, align 8, !tbaa !74
  %845 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %842, i64 %844), !nosanitize !57
  %846 = extractvalue { i64, i1 } %845, 1, !nosanitize !57
  br i1 %846, label %847, label %848, !prof !58, !nosanitize !57

847:                                              ; preds = %839
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

848:                                              ; preds = %839
  %849 = extractvalue { i64, i1 } %845, 0, !nosanitize !57
  %850 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %851 = load i32, ptr %850, align 4, !tbaa !75
  %852 = zext i32 %851 to i64
  %853 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %849, i64 %852), !nosanitize !57
  %854 = extractvalue { i64, i1 } %853, 1, !nosanitize !57
  br i1 %854, label %855, label %856, !prof !58, !nosanitize !57

855:                                              ; preds = %848
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !57
  unreachable, !nosanitize !57

856:                                              ; preds = %848
  %857 = extractvalue { i64, i1 } %853, 0, !nosanitize !57
  %858 = icmp eq i64 %857, 0
  br i1 %858, label %859, label %898

859:                                              ; preds = %856, %45, %34
  %860 = load i32, ptr %30, align 4, !tbaa !46
  %861 = icmp eq i32 %860, %25
  br i1 %861, label %897, label %862

862:                                              ; preds = %859
  %863 = icmp eq i32 %860, 0
  br i1 %863, label %864, label %879

864:                                              ; preds = %862
  %865 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %866 = load i32, ptr %865, align 8, !tbaa !124
  switch i32 %866, label %868 [
    i32 0, label %879
    i32 1, label %867
  ]

867:                                              ; preds = %864
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %878

868:                                              ; preds = %864
  %869 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %870 = load ptr, ptr %869, align 8, !tbaa !37
  %871 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %872 = load i32, ptr %871, align 4, !tbaa !36
  %873 = add i32 %872, -1
  %874 = zext i32 %873 to i64
  %875 = getelementptr inbounds nuw [2 x i8], ptr %870, i64 %874
  store i16 0, ptr %875, align 2, !tbaa !62
  %876 = shl nuw nsw i64 %874, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %870, i8 0, i64 %876, i1 false)
  %877 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %877, align 8, !tbaa !63
  br label %878

878:                                              ; preds = %868, %867
  store i32 0, ptr %865, align 8, !tbaa !124
  br label %879

879:                                              ; preds = %878, %864, %862
  store i32 %25, ptr %30, align 4, !tbaa !46
  %880 = zext nneg i32 %25 to i64
  %881 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %880
  %882 = getelementptr inbounds nuw i8, ptr %881, i64 2
  %883 = load i16, ptr %882, align 2, !tbaa !64
  %884 = zext i16 %883 to i32
  %885 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %884, ptr %885, align 8, !tbaa !66
  %886 = load i16, ptr %881, align 16, !tbaa !67
  %887 = zext i16 %886 to i32
  %888 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %887, ptr %888, align 4, !tbaa !68
  %889 = getelementptr inbounds nuw i8, ptr %881, i64 4
  %890 = load i16, ptr %889, align 4, !tbaa !69
  %891 = zext i16 %890 to i32
  %892 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %891, ptr %892, align 8, !tbaa !70
  %893 = getelementptr inbounds nuw i8, ptr %881, i64 6
  %894 = load i16, ptr %893, align 2, !tbaa !71
  %895 = zext i16 %894 to i32
  %896 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %895, ptr %896, align 4, !tbaa !72
  br label %897

897:                                              ; preds = %879, %859
  store i32 %2, ptr %31, align 8, !tbaa !47
  br label %898

898:                                              ; preds = %897, %856, %836, %65, %49, %23, %20, %17, %13, %9, %5, %3
  %899 = phi i32 [ -5, %856 ], [ -2, %13 ], [ 0, %897 ], [ -2, %23 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %65 ], [ -2, %49 ], [ -5, %836 ]
  ret i32 %899
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %945, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %945, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %945, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %945, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %945

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %945 [
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
  br i1 %23, label %945, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load ptr, ptr %25, align 8, !tbaa !105
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %30 = load i32, ptr %29, align 8, !tbaa !81
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8, !tbaa !82
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
  store ptr %40, ptr %41, align 8, !tbaa !9
  br label %945

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !106
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !9
  br label %945

49:                                               ; preds = %42
  %50 = getelementptr inbounds nuw i8, ptr %14, i64 76
  %51 = load i32, ptr %50, align 4, !tbaa !60
  store i32 %1, ptr %50, align 4, !tbaa !60
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !55
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %88, label %55

55:                                               ; preds = %49
  tail call void @_tr_flush_bits(ptr noundef nonnull %14) #11
  %56 = load i64, ptr %52, align 8, !tbaa !55
  %57 = load i32, ptr %43, align 8, !tbaa !106
  %58 = zext i32 %57 to i64
  %59 = tail call i64 @llvm.umin.i64(i64 %56, i64 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %81, label %61

61:                                               ; preds = %55
  %62 = trunc nuw i64 %59 to i32
  %63 = load ptr, ptr %25, align 8, !tbaa !105
  %64 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %65 = load ptr, ptr %64, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %65, i64 %59, i1 false)
  %66 = load ptr, ptr %25, align 8, !tbaa !105
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %59
  store ptr %67, ptr %25, align 8, !tbaa !105
  %68 = load ptr, ptr %64, align 8, !tbaa !56
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 %59
  store ptr %69, ptr %64, align 8, !tbaa !56
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %71 = load i64, ptr %70, align 8, !tbaa !107
  %72 = add i64 %71, %59
  store i64 %72, ptr %70, align 8, !tbaa !107
  %73 = load i32, ptr %43, align 8, !tbaa !106
  %74 = sub i32 %73, %62
  store i32 %74, ptr %43, align 8, !tbaa !106
  %75 = load i64, ptr %52, align 8, !tbaa !55
  %76 = sub i64 %75, %59
  store i64 %76, ptr %52, align 8, !tbaa !55
  %77 = icmp eq i64 %75, %59
  br i1 %77, label %78, label %81

78:                                               ; preds = %61
  %79 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %80 = load ptr, ptr %79, align 8, !tbaa !40
  store ptr %80, ptr %64, align 8, !tbaa !56
  br label %81

81:                                               ; preds = %78, %61, %55
  %82 = phi i64 [ %56, %55 ], [ %76, %61 ], [ 0, %78 ]
  %83 = phi i32 [ %57, %55 ], [ %74, %61 ], [ %74, %78 ]
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load i32, ptr %20, align 8, !tbaa !29
  br label %111

87:                                               ; preds = %81
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %945

88:                                               ; preds = %49
  br i1 %31, label %90, label %111

89:                                               ; preds = %90
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !57
  unreachable, !nosanitize !57

90:                                               ; preds = %88
  %91 = shl nuw nsw i32 %1, 1
  %92 = icmp eq i32 %1, 5
  %93 = select i1 %92, i32 -9, i32 0
  %94 = add nsw i32 %93, %91
  %95 = add i32 %51, 1073741824
  %96 = icmp sgt i32 %95, -1
  br i1 %96, label %98, label %89, !prof !108, !nosanitize !57

97:                                               ; preds = %98
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

98:                                               ; preds = %90
  %99 = shl nsw i32 %51, 1
  %100 = icmp sgt i32 %51, 4
  %101 = select i1 %100, i32 9, i32 0
  %102 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %99, i32 %101), !nosanitize !57
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !57
  br i1 %103, label %97, label %104, !prof !58, !nosanitize !57

104:                                              ; preds = %98
  %105 = extractvalue { i32, i1 } %102, 0, !nosanitize !57
  %106 = icmp sle i32 %94, %105
  %107 = and i1 %37, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %109, ptr %110, align 8, !tbaa !9
  br label %945

111:                                              ; preds = %104, %88, %85
  %112 = phi i64 [ %82, %85 ], [ 0, %88 ], [ 0, %104 ]
  %113 = phi i32 [ %86, %85 ], [ %21, %88 ], [ %21, %104 ]
  switch i32 %113, label %201 [
    i32 666, label %114
    i32 42, label %120
  ]

114:                                              ; preds = %111
  %115 = load i32, ptr %29, align 8, !tbaa !81
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %781, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %118, ptr %119, align 8, !tbaa !9
  br label %945

120:                                              ; preds = %111
  %121 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %122 = load i32, ptr %121, align 8, !tbaa !30
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 113, ptr %20, align 8, !tbaa !29
  br label %778

125:                                              ; preds = %120
  %126 = getelementptr inbounds nuw i8, ptr %14, i64 84
  %127 = load i32, ptr %126, align 4, !tbaa !31
  %128 = shl i32 %127, 12
  %129 = add i32 %128, -30720
  %130 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %131 = load i32, ptr %130, align 8, !tbaa !47
  %132 = icmp sgt i32 %131, 1
  br i1 %132, label %142, label %133

133:                                              ; preds = %125
  %134 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %135 = load i32, ptr %134, align 4, !tbaa !46
  %136 = icmp slt i32 %135, 2
  br i1 %136, label %142, label %137

137:                                              ; preds = %133
  %138 = icmp samesign ult i32 %135, 6
  br i1 %138, label %142, label %139

139:                                              ; preds = %137
  %140 = icmp eq i32 %135, 6
  %141 = select i1 %140, i32 128, i32 192
  br label %142

142:                                              ; preds = %139, %137, %133, %125
  %143 = phi i32 [ 64, %137 ], [ 0, %125 ], [ %141, %139 ], [ 0, %133 ]
  %144 = or disjoint i32 %143, %129
  %145 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %146 = load i32, ptr %145, align 4, !tbaa !73
  %147 = icmp eq i32 %146, 0
  %148 = or disjoint i32 %144, 32
  %149 = select i1 %147, i32 %144, i32 %148
  %150 = urem i32 %149, 31
  %151 = or disjoint i32 %150, %149
  %152 = lshr i32 %149, 8
  %153 = trunc i32 %152 to i8
  %154 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %155 = load ptr, ptr %154, align 8, !tbaa !40
  %156 = add i64 %112, 1
  store i64 %156, ptr %52, align 8, !tbaa !55
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 %112
  store i8 %153, ptr %157, align 1, !tbaa !8
  %158 = trunc i32 %151 to i8
  %159 = xor i8 %158, 31
  %160 = load ptr, ptr %154, align 8, !tbaa !40
  %161 = load i64, ptr %52, align 8, !tbaa !55
  %162 = add i64 %161, 1
  store i64 %162, ptr %52, align 8, !tbaa !55
  %163 = getelementptr inbounds nuw i8, ptr %160, i64 %161
  store i8 %159, ptr %163, align 1, !tbaa !8
  %164 = load i32, ptr %145, align 4, !tbaa !73
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %193, label %166

166:                                              ; preds = %142
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %168 = load i64, ptr %167, align 8, !tbaa !59
  %169 = lshr i64 %168, 16
  %170 = lshr i64 %168, 24
  %171 = trunc i64 %170 to i8
  %172 = load ptr, ptr %154, align 8, !tbaa !40
  %173 = load i64, ptr %52, align 8, !tbaa !55
  %174 = add i64 %173, 1
  store i64 %174, ptr %52, align 8, !tbaa !55
  %175 = getelementptr inbounds nuw i8, ptr %172, i64 %173
  store i8 %171, ptr %175, align 1, !tbaa !8
  %176 = trunc i64 %169 to i8
  %177 = load ptr, ptr %154, align 8, !tbaa !40
  %178 = load i64, ptr %52, align 8, !tbaa !55
  %179 = add i64 %178, 1
  store i64 %179, ptr %52, align 8, !tbaa !55
  %180 = getelementptr inbounds nuw i8, ptr %177, i64 %178
  store i8 %176, ptr %180, align 1, !tbaa !8
  %181 = load i64, ptr %167, align 8, !tbaa !59
  %182 = trunc i64 %181 to i8
  %183 = lshr i64 %181, 8
  %184 = trunc i64 %183 to i8
  %185 = load ptr, ptr %154, align 8, !tbaa !40
  %186 = load i64, ptr %52, align 8, !tbaa !55
  %187 = add i64 %186, 1
  store i64 %187, ptr %52, align 8, !tbaa !55
  %188 = getelementptr inbounds nuw i8, ptr %185, i64 %186
  store i8 %184, ptr %188, align 1, !tbaa !8
  %189 = load ptr, ptr %154, align 8, !tbaa !40
  %190 = load i64, ptr %52, align 8, !tbaa !55
  %191 = add i64 %190, 1
  store i64 %191, ptr %52, align 8, !tbaa !55
  %192 = getelementptr inbounds nuw i8, ptr %189, i64 %190
  store i8 %182, ptr %192, align 1, !tbaa !8
  br label %193

193:                                              ; preds = %166, %142
  %194 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %194, ptr %195, align 8, !tbaa !59
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %196 = load i64, ptr %52, align 8, !tbaa !55
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load i32, ptr %20, align 8, !tbaa !29
  br label %201

200:                                              ; preds = %193
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %945

201:                                              ; preds = %198, %111
  %202 = phi i32 [ %199, %198 ], [ %113, %111 ]
  %203 = icmp eq i32 %202, 57
  br i1 %203, label %204, label %390

204:                                              ; preds = %201
  %205 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %205, ptr %206, align 8, !tbaa !59
  %207 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %208 = load ptr, ptr %207, align 8, !tbaa !40
  %209 = load i64, ptr %52, align 8, !tbaa !55
  %210 = add i64 %209, 1
  store i64 %210, ptr %52, align 8, !tbaa !55
  %211 = getelementptr inbounds nuw i8, ptr %208, i64 %209
  store i8 31, ptr %211, align 1, !tbaa !8
  %212 = load ptr, ptr %207, align 8, !tbaa !40
  %213 = load i64, ptr %52, align 8, !tbaa !55
  %214 = add i64 %213, 1
  store i64 %214, ptr %52, align 8, !tbaa !55
  %215 = getelementptr inbounds nuw i8, ptr %212, i64 %213
  store i8 -117, ptr %215, align 1, !tbaa !8
  %216 = load ptr, ptr %207, align 8, !tbaa !40
  %217 = load i64, ptr %52, align 8, !tbaa !55
  %218 = add i64 %217, 1
  store i64 %218, ptr %52, align 8, !tbaa !55
  %219 = getelementptr inbounds nuw i8, ptr %216, i64 %217
  store i8 8, ptr %219, align 1, !tbaa !8
  %220 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %221 = load ptr, ptr %220, align 8, !tbaa !99
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %267

223:                                              ; preds = %204
  %224 = load ptr, ptr %207, align 8, !tbaa !40
  %225 = load i64, ptr %52, align 8, !tbaa !55
  %226 = add i64 %225, 1
  store i64 %226, ptr %52, align 8, !tbaa !55
  %227 = getelementptr inbounds nuw i8, ptr %224, i64 %225
  store i8 0, ptr %227, align 1, !tbaa !8
  %228 = load ptr, ptr %207, align 8, !tbaa !40
  %229 = load i64, ptr %52, align 8, !tbaa !55
  %230 = add i64 %229, 1
  store i64 %230, ptr %52, align 8, !tbaa !55
  %231 = getelementptr inbounds nuw i8, ptr %228, i64 %229
  store i8 0, ptr %231, align 1, !tbaa !8
  %232 = load ptr, ptr %207, align 8, !tbaa !40
  %233 = load i64, ptr %52, align 8, !tbaa !55
  %234 = add i64 %233, 1
  store i64 %234, ptr %52, align 8, !tbaa !55
  %235 = getelementptr inbounds nuw i8, ptr %232, i64 %233
  store i8 0, ptr %235, align 1, !tbaa !8
  %236 = load ptr, ptr %207, align 8, !tbaa !40
  %237 = load i64, ptr %52, align 8, !tbaa !55
  %238 = add i64 %237, 1
  store i64 %238, ptr %52, align 8, !tbaa !55
  %239 = getelementptr inbounds nuw i8, ptr %236, i64 %237
  store i8 0, ptr %239, align 1, !tbaa !8
  %240 = load ptr, ptr %207, align 8, !tbaa !40
  %241 = load i64, ptr %52, align 8, !tbaa !55
  %242 = add i64 %241, 1
  store i64 %242, ptr %52, align 8, !tbaa !55
  %243 = getelementptr inbounds nuw i8, ptr %240, i64 %241
  store i8 0, ptr %243, align 1, !tbaa !8
  %244 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %245 = load i32, ptr %244, align 4, !tbaa !46
  %246 = icmp eq i32 %245, 9
  br i1 %246, label %254, label %247

247:                                              ; preds = %223
  %248 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %249 = load i32, ptr %248, align 8, !tbaa !47
  %250 = icmp sgt i32 %249, 1
  %251 = icmp slt i32 %245, 2
  %252 = or i1 %251, %250
  %253 = select i1 %252, i8 4, i8 0
  br label %254

254:                                              ; preds = %247, %223
  %255 = phi i8 [ %253, %247 ], [ 2, %223 ]
  %256 = load ptr, ptr %207, align 8, !tbaa !40
  %257 = load i64, ptr %52, align 8, !tbaa !55
  %258 = add i64 %257, 1
  store i64 %258, ptr %52, align 8, !tbaa !55
  %259 = getelementptr inbounds nuw i8, ptr %256, i64 %257
  store i8 %255, ptr %259, align 1, !tbaa !8
  %260 = load ptr, ptr %207, align 8, !tbaa !40
  %261 = load i64, ptr %52, align 8, !tbaa !55
  %262 = add i64 %261, 1
  store i64 %262, ptr %52, align 8, !tbaa !55
  %263 = getelementptr inbounds nuw i8, ptr %260, i64 %261
  store i8 3, ptr %263, align 1, !tbaa !8
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %264 = load i64, ptr %52, align 8, !tbaa !55
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %388, label %266

266:                                              ; preds = %254
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %945

267:                                              ; preds = %204
  %268 = getelementptr inbounds nuw i8, ptr %221, i64 68
  %269 = load i32, ptr %268, align 4, !tbaa !109
  %270 = icmp eq i32 %269, 0
  %271 = select i1 %270, i8 0, i8 2
  %272 = load i32, ptr %221, align 8, !tbaa !111
  %273 = icmp ne i32 %272, 0
  %274 = zext i1 %273 to i8
  %275 = or disjoint i8 %271, %274
  %276 = getelementptr inbounds nuw i8, ptr %221, i64 24
  %277 = load ptr, ptr %276, align 8, !tbaa !112
  %278 = icmp eq ptr %277, null
  %279 = select i1 %278, i8 0, i8 4
  %280 = or disjoint i8 %275, %279
  %281 = getelementptr inbounds nuw i8, ptr %221, i64 40
  %282 = load ptr, ptr %281, align 8, !tbaa !113
  %283 = icmp eq ptr %282, null
  %284 = select i1 %283, i8 0, i8 8
  %285 = or disjoint i8 %280, %284
  %286 = getelementptr inbounds nuw i8, ptr %221, i64 56
  %287 = load ptr, ptr %286, align 8, !tbaa !114
  %288 = icmp eq ptr %287, null
  %289 = select i1 %288, i8 0, i8 16
  %290 = or disjoint i8 %285, %289
  %291 = load ptr, ptr %207, align 8, !tbaa !40
  %292 = load i64, ptr %52, align 8, !tbaa !55
  %293 = add i64 %292, 1
  store i64 %293, ptr %52, align 8, !tbaa !55
  %294 = getelementptr inbounds nuw i8, ptr %291, i64 %292
  store i8 %290, ptr %294, align 1, !tbaa !8
  %295 = load ptr, ptr %220, align 8, !tbaa !99
  %296 = getelementptr inbounds nuw i8, ptr %295, i64 8
  %297 = load i64, ptr %296, align 8, !tbaa !115
  %298 = trunc i64 %297 to i8
  %299 = load ptr, ptr %207, align 8, !tbaa !40
  %300 = load i64, ptr %52, align 8, !tbaa !55
  %301 = add i64 %300, 1
  store i64 %301, ptr %52, align 8, !tbaa !55
  %302 = getelementptr inbounds nuw i8, ptr %299, i64 %300
  store i8 %298, ptr %302, align 1, !tbaa !8
  %303 = load ptr, ptr %220, align 8, !tbaa !99
  %304 = getelementptr inbounds nuw i8, ptr %303, i64 8
  %305 = load i64, ptr %304, align 8, !tbaa !115
  %306 = lshr i64 %305, 8
  %307 = trunc i64 %306 to i8
  %308 = load ptr, ptr %207, align 8, !tbaa !40
  %309 = load i64, ptr %52, align 8, !tbaa !55
  %310 = add i64 %309, 1
  store i64 %310, ptr %52, align 8, !tbaa !55
  %311 = getelementptr inbounds nuw i8, ptr %308, i64 %309
  store i8 %307, ptr %311, align 1, !tbaa !8
  %312 = load ptr, ptr %220, align 8, !tbaa !99
  %313 = getelementptr inbounds nuw i8, ptr %312, i64 8
  %314 = load i64, ptr %313, align 8, !tbaa !115
  %315 = lshr i64 %314, 16
  %316 = trunc i64 %315 to i8
  %317 = load ptr, ptr %207, align 8, !tbaa !40
  %318 = load i64, ptr %52, align 8, !tbaa !55
  %319 = add i64 %318, 1
  store i64 %319, ptr %52, align 8, !tbaa !55
  %320 = getelementptr inbounds nuw i8, ptr %317, i64 %318
  store i8 %316, ptr %320, align 1, !tbaa !8
  %321 = load ptr, ptr %220, align 8, !tbaa !99
  %322 = getelementptr inbounds nuw i8, ptr %321, i64 8
  %323 = load i64, ptr %322, align 8, !tbaa !115
  %324 = lshr i64 %323, 24
  %325 = trunc i64 %324 to i8
  %326 = load ptr, ptr %207, align 8, !tbaa !40
  %327 = load i64, ptr %52, align 8, !tbaa !55
  %328 = add i64 %327, 1
  store i64 %328, ptr %52, align 8, !tbaa !55
  %329 = getelementptr inbounds nuw i8, ptr %326, i64 %327
  store i8 %325, ptr %329, align 1, !tbaa !8
  %330 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %331 = load i32, ptr %330, align 4, !tbaa !46
  %332 = icmp eq i32 %331, 9
  br i1 %332, label %340, label %333

333:                                              ; preds = %267
  %334 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %335 = load i32, ptr %334, align 8, !tbaa !47
  %336 = icmp sgt i32 %335, 1
  %337 = icmp slt i32 %331, 2
  %338 = or i1 %337, %336
  %339 = select i1 %338, i8 4, i8 0
  br label %340

340:                                              ; preds = %333, %267
  %341 = phi i8 [ %339, %333 ], [ 2, %267 ]
  %342 = load ptr, ptr %207, align 8, !tbaa !40
  %343 = load i64, ptr %52, align 8, !tbaa !55
  %344 = add i64 %343, 1
  store i64 %344, ptr %52, align 8, !tbaa !55
  %345 = getelementptr inbounds nuw i8, ptr %342, i64 %343
  store i8 %341, ptr %345, align 1, !tbaa !8
  %346 = load ptr, ptr %220, align 8, !tbaa !99
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 20
  %348 = load i32, ptr %347, align 4, !tbaa !116
  %349 = trunc i32 %348 to i8
  %350 = load ptr, ptr %207, align 8, !tbaa !40
  %351 = load i64, ptr %52, align 8, !tbaa !55
  %352 = add i64 %351, 1
  store i64 %352, ptr %52, align 8, !tbaa !55
  %353 = getelementptr inbounds nuw i8, ptr %350, i64 %351
  store i8 %349, ptr %353, align 1, !tbaa !8
  %354 = load ptr, ptr %220, align 8, !tbaa !99
  %355 = getelementptr inbounds nuw i8, ptr %354, i64 24
  %356 = load ptr, ptr %355, align 8, !tbaa !112
  %357 = icmp eq ptr %356, null
  br i1 %357, label %376, label %358

358:                                              ; preds = %340
  %359 = getelementptr inbounds nuw i8, ptr %354, i64 32
  %360 = load i32, ptr %359, align 8, !tbaa !117
  %361 = trunc i32 %360 to i8
  %362 = load ptr, ptr %207, align 8, !tbaa !40
  %363 = load i64, ptr %52, align 8, !tbaa !55
  %364 = add i64 %363, 1
  store i64 %364, ptr %52, align 8, !tbaa !55
  %365 = getelementptr inbounds nuw i8, ptr %362, i64 %363
  store i8 %361, ptr %365, align 1, !tbaa !8
  %366 = load ptr, ptr %220, align 8, !tbaa !99
  %367 = getelementptr inbounds nuw i8, ptr %366, i64 32
  %368 = load i32, ptr %367, align 8, !tbaa !117
  %369 = lshr i32 %368, 8
  %370 = trunc i32 %369 to i8
  %371 = load ptr, ptr %207, align 8, !tbaa !40
  %372 = load i64, ptr %52, align 8, !tbaa !55
  %373 = add i64 %372, 1
  store i64 %373, ptr %52, align 8, !tbaa !55
  %374 = getelementptr inbounds nuw i8, ptr %371, i64 %372
  store i8 %370, ptr %374, align 1, !tbaa !8
  %375 = load ptr, ptr %220, align 8, !tbaa !99
  br label %376

376:                                              ; preds = %358, %340
  %377 = phi ptr [ %375, %358 ], [ %354, %340 ]
  %378 = getelementptr inbounds nuw i8, ptr %377, i64 68
  %379 = load i32, ptr %378, align 4, !tbaa !109
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %386, label %381

381:                                              ; preds = %376
  %382 = load i64, ptr %206, align 8, !tbaa !59
  %383 = load ptr, ptr %207, align 8, !tbaa !40
  %384 = load i64, ptr %52, align 8, !tbaa !55
  %385 = tail call i64 @crc32_z(i64 noundef %382, ptr noundef %383, i64 noundef %384) #11
  store i64 %385, ptr %206, align 8, !tbaa !59
  br label %386

386:                                              ; preds = %381, %376
  %387 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %387, align 8, !tbaa !118
  store i32 69, ptr %20, align 8, !tbaa !29
  br label %392

388:                                              ; preds = %254
  %389 = load i32, ptr %20, align 8, !tbaa !29
  br label %390

390:                                              ; preds = %388, %201
  %391 = phi i32 [ %389, %388 ], [ %202, %201 ]
  switch i32 %391, label %778 [
    i32 69, label %392
    i32 73, label %554
    i32 91, label %648
    i32 103, label %741
  ]

392:                                              ; preds = %390, %386
  %393 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %394 = load ptr, ptr %393, align 8, !tbaa !99
  %395 = getelementptr inbounds nuw i8, ptr %394, i64 24
  %396 = load ptr, ptr %395, align 8, !tbaa !112
  %397 = icmp eq ptr %396, null
  br i1 %397, label %553, label %398

398:                                              ; preds = %392
  %399 = load i64, ptr %52, align 8, !tbaa !55
  %400 = getelementptr inbounds nuw i8, ptr %394, i64 32
  %401 = load i32, ptr %400, align 8, !tbaa !117
  %402 = and i32 %401, 65535
  %403 = zext nneg i32 %402 to i64
  %404 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %405 = load i64, ptr %404, align 8, !tbaa !118
  %406 = sub i64 %403, %405
  %407 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %408 = add i64 %406, %399
  %409 = load i64, ptr %407, align 8, !tbaa !41
  %410 = icmp ugt i64 %408, %409
  br i1 %410, label %411, label %528

411:                                              ; preds = %398
  %412 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %413 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %415 = sub i64 %409, %399
  %416 = load ptr, ptr %412, align 8, !tbaa !40
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 %399
  %418 = getelementptr inbounds nuw i8, ptr %396, i64 %405
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %417, ptr nonnull align 1 %418, i64 %415, i1 false)
  %419 = load i64, ptr %407, align 8, !tbaa !41
  store i64 %419, ptr %52, align 8, !tbaa !55
  %420 = load ptr, ptr %393, align 8, !tbaa !99
  %421 = getelementptr inbounds nuw i8, ptr %420, i64 68
  %422 = load i32, ptr %421, align 4, !tbaa !109
  %423 = icmp ne i32 %422, 0
  %424 = icmp ugt i64 %419, %399
  %425 = select i1 %423, i1 %424, i1 false
  br i1 %425, label %426, label %432

426:                                              ; preds = %411
  %427 = load i64, ptr %413, align 8, !tbaa !59
  %428 = load ptr, ptr %412, align 8, !tbaa !40
  %429 = getelementptr inbounds nuw i8, ptr %428, i64 %399
  %430 = sub nuw i64 %419, %399
  %431 = tail call i64 @crc32_z(i64 noundef %427, ptr noundef %429, i64 noundef %430) #11
  store i64 %431, ptr %413, align 8, !tbaa !59
  br label %432

432:                                              ; preds = %426, %411
  %433 = load i64, ptr %404, align 8, !tbaa !118
  %434 = add i64 %433, %415
  store i64 %434, ptr %404, align 8, !tbaa !118
  %435 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %435) #11
  %436 = getelementptr inbounds nuw i8, ptr %435, i64 40
  %437 = load i64, ptr %436, align 8, !tbaa !55
  %438 = load i32, ptr %43, align 8, !tbaa !106
  %439 = zext i32 %438 to i64
  %440 = tail call i64 @llvm.umin.i64(i64 %437, i64 %439)
  %441 = icmp eq i64 %440, 0
  br i1 %441, label %461, label %442

442:                                              ; preds = %432
  %443 = trunc nuw i64 %440 to i32
  %444 = load ptr, ptr %25, align 8, !tbaa !105
  %445 = getelementptr inbounds nuw i8, ptr %435, i64 32
  %446 = load ptr, ptr %445, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %444, ptr align 1 %446, i64 %440, i1 false)
  %447 = load ptr, ptr %25, align 8, !tbaa !105
  %448 = getelementptr inbounds nuw i8, ptr %447, i64 %440
  store ptr %448, ptr %25, align 8, !tbaa !105
  %449 = load ptr, ptr %445, align 8, !tbaa !56
  %450 = getelementptr inbounds nuw i8, ptr %449, i64 %440
  store ptr %450, ptr %445, align 8, !tbaa !56
  %451 = load i64, ptr %414, align 8, !tbaa !107
  %452 = add i64 %451, %440
  store i64 %452, ptr %414, align 8, !tbaa !107
  %453 = load i32, ptr %43, align 8, !tbaa !106
  %454 = sub i32 %453, %443
  store i32 %454, ptr %43, align 8, !tbaa !106
  %455 = load i64, ptr %436, align 8, !tbaa !55
  %456 = sub i64 %455, %440
  store i64 %456, ptr %436, align 8, !tbaa !55
  %457 = icmp eq i64 %455, %440
  br i1 %457, label %458, label %461

458:                                              ; preds = %442
  %459 = getelementptr inbounds nuw i8, ptr %435, i64 16
  %460 = load ptr, ptr %459, align 8, !tbaa !40
  store ptr %460, ptr %445, align 8, !tbaa !56
  br label %461

461:                                              ; preds = %458, %442, %432
  %462 = load i64, ptr %52, align 8, !tbaa !55
  %463 = icmp eq i64 %462, 0
  br i1 %463, label %464, label %.loopexit

464:                                              ; preds = %461
  %465 = sub i64 %406, %415
  %466 = load i64, ptr %407, align 8, !tbaa !41
  %467 = icmp ugt i64 %465, %466
  br i1 %467, label %.preheader, label %.loopexit38

.preheader:                                       ; preds = %464, %519
  %468 = phi i64 [ %521, %519 ], [ %466, %464 ]
  %469 = phi i64 [ %520, %519 ], [ %465, %464 ]
  %470 = load ptr, ptr %412, align 8, !tbaa !40
  %471 = load ptr, ptr %393, align 8, !tbaa !99
  %472 = getelementptr inbounds nuw i8, ptr %471, i64 24
  %473 = load ptr, ptr %472, align 8, !tbaa !112
  %474 = load i64, ptr %404, align 8, !tbaa !118
  %475 = getelementptr inbounds nuw i8, ptr %473, i64 %474
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %470, ptr align 1 %475, i64 %468, i1 false)
  %476 = load i64, ptr %407, align 8, !tbaa !41
  store i64 %476, ptr %52, align 8, !tbaa !55
  %477 = load ptr, ptr %393, align 8, !tbaa !99
  %478 = getelementptr inbounds nuw i8, ptr %477, i64 68
  %479 = load i32, ptr %478, align 4, !tbaa !109
  %480 = icmp ne i32 %479, 0
  %481 = icmp ne i64 %476, 0
  %482 = select i1 %480, i1 %481, i1 false
  br i1 %482, label %483, label %487

483:                                              ; preds = %.preheader
  %484 = load i64, ptr %413, align 8, !tbaa !59
  %485 = load ptr, ptr %412, align 8, !tbaa !40
  %486 = tail call i64 @crc32_z(i64 noundef %484, ptr noundef %485, i64 noundef %476) #11
  store i64 %486, ptr %413, align 8, !tbaa !59
  br label %487

487:                                              ; preds = %483, %.preheader
  %488 = load i64, ptr %404, align 8, !tbaa !118
  %489 = add i64 %488, %468
  store i64 %489, ptr %404, align 8, !tbaa !118
  %490 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %490) #11
  %491 = getelementptr inbounds nuw i8, ptr %490, i64 40
  %492 = load i64, ptr %491, align 8, !tbaa !55
  %493 = load i32, ptr %43, align 8, !tbaa !106
  %494 = zext i32 %493 to i64
  %495 = tail call i64 @llvm.umin.i64(i64 %492, i64 %494)
  %496 = icmp eq i64 %495, 0
  br i1 %496, label %516, label %497

497:                                              ; preds = %487
  %498 = trunc nuw i64 %495 to i32
  %499 = load ptr, ptr %25, align 8, !tbaa !105
  %500 = getelementptr inbounds nuw i8, ptr %490, i64 32
  %501 = load ptr, ptr %500, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %499, ptr align 1 %501, i64 %495, i1 false)
  %502 = load ptr, ptr %25, align 8, !tbaa !105
  %503 = getelementptr inbounds nuw i8, ptr %502, i64 %495
  store ptr %503, ptr %25, align 8, !tbaa !105
  %504 = load ptr, ptr %500, align 8, !tbaa !56
  %505 = getelementptr inbounds nuw i8, ptr %504, i64 %495
  store ptr %505, ptr %500, align 8, !tbaa !56
  %506 = load i64, ptr %414, align 8, !tbaa !107
  %507 = add i64 %506, %495
  store i64 %507, ptr %414, align 8, !tbaa !107
  %508 = load i32, ptr %43, align 8, !tbaa !106
  %509 = sub i32 %508, %498
  store i32 %509, ptr %43, align 8, !tbaa !106
  %510 = load i64, ptr %491, align 8, !tbaa !55
  %511 = sub i64 %510, %495
  store i64 %511, ptr %491, align 8, !tbaa !55
  %512 = icmp eq i64 %510, %495
  br i1 %512, label %513, label %516

513:                                              ; preds = %497
  %514 = getelementptr inbounds nuw i8, ptr %490, i64 16
  %515 = load ptr, ptr %514, align 8, !tbaa !40
  store ptr %515, ptr %500, align 8, !tbaa !56
  br label %516

516:                                              ; preds = %513, %497, %487
  %517 = load i64, ptr %52, align 8, !tbaa !55
  %518 = icmp eq i64 %517, 0
  br i1 %518, label %519, label %.loopexit

.loopexit:                                        ; preds = %516, %461
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %945

519:                                              ; preds = %516
  %520 = sub i64 %469, %468
  %521 = load i64, ptr %407, align 8, !tbaa !41
  %522 = icmp ugt i64 %520, %521
  br i1 %522, label %.preheader, label %.loopexit38, !llvm.loop !119

.loopexit38:                                      ; preds = %519, %464
  %523 = phi i64 [ %465, %464 ], [ %520, %519 ]
  %524 = load ptr, ptr %393, align 8, !tbaa !99
  %525 = getelementptr inbounds nuw i8, ptr %524, i64 24
  %526 = load ptr, ptr %525, align 8, !tbaa !112
  %527 = load i64, ptr %404, align 8, !tbaa !118
  br label %528

528:                                              ; preds = %.loopexit38, %398
  %529 = phi i64 [ %405, %398 ], [ %527, %.loopexit38 ]
  %530 = phi ptr [ %396, %398 ], [ %526, %.loopexit38 ]
  %531 = phi i64 [ %399, %398 ], [ 0, %.loopexit38 ]
  %532 = phi i64 [ %406, %398 ], [ %523, %.loopexit38 ]
  %533 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %534 = load ptr, ptr %533, align 8, !tbaa !40
  %535 = getelementptr inbounds nuw i8, ptr %534, i64 %531
  %536 = getelementptr inbounds nuw i8, ptr %530, i64 %529
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %535, ptr align 1 %536, i64 %532, i1 false)
  %537 = load i64, ptr %52, align 8, !tbaa !55
  %538 = add i64 %537, %532
  store i64 %538, ptr %52, align 8, !tbaa !55
  %539 = load ptr, ptr %393, align 8, !tbaa !99
  %540 = getelementptr inbounds nuw i8, ptr %539, i64 68
  %541 = load i32, ptr %540, align 4, !tbaa !109
  %542 = icmp ne i32 %541, 0
  %543 = icmp ugt i64 %538, %531
  %544 = select i1 %542, i1 %543, i1 false
  br i1 %544, label %545, label %552

545:                                              ; preds = %528
  %546 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %547 = load i64, ptr %546, align 8, !tbaa !59
  %548 = load ptr, ptr %533, align 8, !tbaa !40
  %549 = getelementptr inbounds nuw i8, ptr %548, i64 %531
  %550 = sub nuw i64 %538, %531
  %551 = tail call i64 @crc32_z(i64 noundef %547, ptr noundef %549, i64 noundef %550) #11
  store i64 %551, ptr %546, align 8, !tbaa !59
  br label %552

552:                                              ; preds = %545, %528
  store i64 0, ptr %404, align 8, !tbaa !118
  br label %553

553:                                              ; preds = %552, %392
  store i32 73, ptr %20, align 8, !tbaa !29
  br label %554

554:                                              ; preds = %553, %390
  %555 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %556 = load ptr, ptr %555, align 8, !tbaa !99
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 40
  %558 = load ptr, ptr %557, align 8, !tbaa !113
  %559 = icmp eq ptr %558, null
  br i1 %559, label %647, label %560

560:                                              ; preds = %554
  %561 = load i64, ptr %52, align 8, !tbaa !55
  %562 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %563 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %564 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %565 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %566 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %567

567:                                              ; preds = %618, %560
  %568 = phi i64 [ %561, %560 ], [ %621, %618 ]
  %569 = load i64, ptr %52, align 8, !tbaa !55
  %570 = load i64, ptr %562, align 8, !tbaa !41
  %571 = icmp eq i64 %569, %570
  %572 = load ptr, ptr %555, align 8, !tbaa !99
  br i1 %571, label %573, label %618

573:                                              ; preds = %567
  %574 = getelementptr inbounds nuw i8, ptr %572, i64 68
  %575 = load i32, ptr %574, align 4, !tbaa !109
  %576 = icmp ne i32 %575, 0
  %577 = icmp ugt i64 %569, %568
  %578 = select i1 %576, i1 %577, i1 false
  br i1 %578, label %579, label %585

579:                                              ; preds = %573
  %580 = load i64, ptr %563, align 8, !tbaa !59
  %581 = load ptr, ptr %564, align 8, !tbaa !40
  %582 = getelementptr inbounds nuw i8, ptr %581, i64 %568
  %583 = sub nuw i64 %569, %568
  %584 = tail call i64 @crc32_z(i64 noundef %580, ptr noundef %582, i64 noundef %583) #11
  store i64 %584, ptr %563, align 8, !tbaa !59
  br label %585

585:                                              ; preds = %579, %573
  %586 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %586) #11
  %587 = getelementptr inbounds nuw i8, ptr %586, i64 40
  %588 = load i64, ptr %587, align 8, !tbaa !55
  %589 = load i32, ptr %43, align 8, !tbaa !106
  %590 = zext i32 %589 to i64
  %591 = tail call i64 @llvm.umin.i64(i64 %588, i64 %590)
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %612, label %593

593:                                              ; preds = %585
  %594 = trunc nuw i64 %591 to i32
  %595 = load ptr, ptr %25, align 8, !tbaa !105
  %596 = getelementptr inbounds nuw i8, ptr %586, i64 32
  %597 = load ptr, ptr %596, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %595, ptr align 1 %597, i64 %591, i1 false)
  %598 = load ptr, ptr %25, align 8, !tbaa !105
  %599 = getelementptr inbounds nuw i8, ptr %598, i64 %591
  store ptr %599, ptr %25, align 8, !tbaa !105
  %600 = load ptr, ptr %596, align 8, !tbaa !56
  %601 = getelementptr inbounds nuw i8, ptr %600, i64 %591
  store ptr %601, ptr %596, align 8, !tbaa !56
  %602 = load i64, ptr %565, align 8, !tbaa !107
  %603 = add i64 %602, %591
  store i64 %603, ptr %565, align 8, !tbaa !107
  %604 = load i32, ptr %43, align 8, !tbaa !106
  %605 = sub i32 %604, %594
  store i32 %605, ptr %43, align 8, !tbaa !106
  %606 = load i64, ptr %587, align 8, !tbaa !55
  %607 = sub i64 %606, %591
  store i64 %607, ptr %587, align 8, !tbaa !55
  %608 = icmp eq i64 %606, %591
  br i1 %608, label %609, label %612

609:                                              ; preds = %593
  %610 = getelementptr inbounds nuw i8, ptr %586, i64 16
  %611 = load ptr, ptr %610, align 8, !tbaa !40
  store ptr %611, ptr %596, align 8, !tbaa !56
  br label %612

612:                                              ; preds = %609, %593, %585
  %613 = load i64, ptr %52, align 8, !tbaa !55
  %614 = icmp eq i64 %613, 0
  br i1 %614, label %615, label %617

615:                                              ; preds = %612
  %616 = load ptr, ptr %555, align 8, !tbaa !99
  br label %618

617:                                              ; preds = %612
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %945

618:                                              ; preds = %615, %567
  %619 = phi i64 [ %569, %567 ], [ 0, %615 ]
  %620 = phi ptr [ %572, %567 ], [ %616, %615 ]
  %621 = phi i64 [ %568, %567 ], [ 0, %615 ]
  %622 = getelementptr inbounds nuw i8, ptr %620, i64 40
  %623 = load ptr, ptr %622, align 8, !tbaa !113
  %624 = load i64, ptr %566, align 8, !tbaa !118
  %625 = add i64 %624, 1
  store i64 %625, ptr %566, align 8, !tbaa !118
  %626 = getelementptr inbounds nuw i8, ptr %623, i64 %624
  %627 = load i8, ptr %626, align 1, !tbaa !8
  %628 = load ptr, ptr %564, align 8, !tbaa !40
  %629 = add i64 %619, 1
  store i64 %629, ptr %52, align 8, !tbaa !55
  %630 = getelementptr inbounds nuw i8, ptr %628, i64 %619
  store i8 %627, ptr %630, align 1, !tbaa !8
  %631 = icmp eq i8 %627, 0
  br i1 %631, label %632, label %567, !llvm.loop !121

632:                                              ; preds = %618
  %633 = load ptr, ptr %555, align 8, !tbaa !99
  %634 = getelementptr inbounds nuw i8, ptr %633, i64 68
  %635 = load i32, ptr %634, align 4, !tbaa !109
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %646, label %637

637:                                              ; preds = %632
  %638 = load i64, ptr %52, align 8, !tbaa !55
  %639 = icmp ugt i64 %638, %621
  br i1 %639, label %640, label %646

640:                                              ; preds = %637
  %641 = load i64, ptr %563, align 8, !tbaa !59
  %642 = load ptr, ptr %564, align 8, !tbaa !40
  %643 = getelementptr inbounds nuw i8, ptr %642, i64 %621
  %644 = sub nuw i64 %638, %621
  %645 = tail call i64 @crc32_z(i64 noundef %641, ptr noundef %643, i64 noundef %644) #11
  store i64 %645, ptr %563, align 8, !tbaa !59
  br label %646

646:                                              ; preds = %640, %637, %632
  store i64 0, ptr %566, align 8, !tbaa !118
  br label %647

647:                                              ; preds = %646, %554
  store i32 91, ptr %20, align 8, !tbaa !29
  br label %648

648:                                              ; preds = %647, %390
  %649 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %650 = load ptr, ptr %649, align 8, !tbaa !99
  %651 = getelementptr inbounds nuw i8, ptr %650, i64 56
  %652 = load ptr, ptr %651, align 8, !tbaa !114
  %653 = icmp eq ptr %652, null
  br i1 %653, label %740, label %654

654:                                              ; preds = %648
  %655 = load i64, ptr %52, align 8, !tbaa !55
  %656 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %657 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %658 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %659 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %660 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %661

661:                                              ; preds = %712, %654
  %662 = phi i64 [ %655, %654 ], [ %715, %712 ]
  %663 = load i64, ptr %52, align 8, !tbaa !55
  %664 = load i64, ptr %656, align 8, !tbaa !41
  %665 = icmp eq i64 %663, %664
  %666 = load ptr, ptr %649, align 8, !tbaa !99
  br i1 %665, label %667, label %712

667:                                              ; preds = %661
  %668 = getelementptr inbounds nuw i8, ptr %666, i64 68
  %669 = load i32, ptr %668, align 4, !tbaa !109
  %670 = icmp ne i32 %669, 0
  %671 = icmp ugt i64 %663, %662
  %672 = select i1 %670, i1 %671, i1 false
  br i1 %672, label %673, label %679

673:                                              ; preds = %667
  %674 = load i64, ptr %657, align 8, !tbaa !59
  %675 = load ptr, ptr %658, align 8, !tbaa !40
  %676 = getelementptr inbounds nuw i8, ptr %675, i64 %662
  %677 = sub nuw i64 %663, %662
  %678 = tail call i64 @crc32_z(i64 noundef %674, ptr noundef %676, i64 noundef %677) #11
  store i64 %678, ptr %657, align 8, !tbaa !59
  br label %679

679:                                              ; preds = %673, %667
  %680 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %680) #11
  %681 = getelementptr inbounds nuw i8, ptr %680, i64 40
  %682 = load i64, ptr %681, align 8, !tbaa !55
  %683 = load i32, ptr %43, align 8, !tbaa !106
  %684 = zext i32 %683 to i64
  %685 = tail call i64 @llvm.umin.i64(i64 %682, i64 %684)
  %686 = icmp eq i64 %685, 0
  br i1 %686, label %706, label %687

687:                                              ; preds = %679
  %688 = trunc nuw i64 %685 to i32
  %689 = load ptr, ptr %25, align 8, !tbaa !105
  %690 = getelementptr inbounds nuw i8, ptr %680, i64 32
  %691 = load ptr, ptr %690, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %689, ptr align 1 %691, i64 %685, i1 false)
  %692 = load ptr, ptr %25, align 8, !tbaa !105
  %693 = getelementptr inbounds nuw i8, ptr %692, i64 %685
  store ptr %693, ptr %25, align 8, !tbaa !105
  %694 = load ptr, ptr %690, align 8, !tbaa !56
  %695 = getelementptr inbounds nuw i8, ptr %694, i64 %685
  store ptr %695, ptr %690, align 8, !tbaa !56
  %696 = load i64, ptr %659, align 8, !tbaa !107
  %697 = add i64 %696, %685
  store i64 %697, ptr %659, align 8, !tbaa !107
  %698 = load i32, ptr %43, align 8, !tbaa !106
  %699 = sub i32 %698, %688
  store i32 %699, ptr %43, align 8, !tbaa !106
  %700 = load i64, ptr %681, align 8, !tbaa !55
  %701 = sub i64 %700, %685
  store i64 %701, ptr %681, align 8, !tbaa !55
  %702 = icmp eq i64 %700, %685
  br i1 %702, label %703, label %706

703:                                              ; preds = %687
  %704 = getelementptr inbounds nuw i8, ptr %680, i64 16
  %705 = load ptr, ptr %704, align 8, !tbaa !40
  store ptr %705, ptr %690, align 8, !tbaa !56
  br label %706

706:                                              ; preds = %703, %687, %679
  %707 = load i64, ptr %52, align 8, !tbaa !55
  %708 = icmp eq i64 %707, 0
  br i1 %708, label %709, label %711

709:                                              ; preds = %706
  %710 = load ptr, ptr %649, align 8, !tbaa !99
  br label %712

711:                                              ; preds = %706
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %945

712:                                              ; preds = %709, %661
  %713 = phi i64 [ %663, %661 ], [ 0, %709 ]
  %714 = phi ptr [ %666, %661 ], [ %710, %709 ]
  %715 = phi i64 [ %662, %661 ], [ 0, %709 ]
  %716 = getelementptr inbounds nuw i8, ptr %714, i64 56
  %717 = load ptr, ptr %716, align 8, !tbaa !114
  %718 = load i64, ptr %660, align 8, !tbaa !118
  %719 = add i64 %718, 1
  store i64 %719, ptr %660, align 8, !tbaa !118
  %720 = getelementptr inbounds nuw i8, ptr %717, i64 %718
  %721 = load i8, ptr %720, align 1, !tbaa !8
  %722 = load ptr, ptr %658, align 8, !tbaa !40
  %723 = add i64 %713, 1
  store i64 %723, ptr %52, align 8, !tbaa !55
  %724 = getelementptr inbounds nuw i8, ptr %722, i64 %713
  store i8 %721, ptr %724, align 1, !tbaa !8
  %725 = icmp eq i8 %721, 0
  br i1 %725, label %726, label %661, !llvm.loop !122

726:                                              ; preds = %712
  %727 = load ptr, ptr %649, align 8, !tbaa !99
  %728 = getelementptr inbounds nuw i8, ptr %727, i64 68
  %729 = load i32, ptr %728, align 4, !tbaa !109
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %740, label %731

731:                                              ; preds = %726
  %732 = load i64, ptr %52, align 8, !tbaa !55
  %733 = icmp ugt i64 %732, %715
  br i1 %733, label %734, label %740

734:                                              ; preds = %731
  %735 = load i64, ptr %657, align 8, !tbaa !59
  %736 = load ptr, ptr %658, align 8, !tbaa !40
  %737 = getelementptr inbounds nuw i8, ptr %736, i64 %715
  %738 = sub nuw i64 %732, %715
  %739 = tail call i64 @crc32_z(i64 noundef %735, ptr noundef %737, i64 noundef %738) #11
  store i64 %739, ptr %657, align 8, !tbaa !59
  br label %740

740:                                              ; preds = %734, %731, %726, %648
  store i32 103, ptr %20, align 8, !tbaa !29
  br label %741

741:                                              ; preds = %740, %390
  %742 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %743 = load ptr, ptr %742, align 8, !tbaa !99
  %744 = getelementptr inbounds nuw i8, ptr %743, i64 68
  %745 = load i32, ptr %744, align 4, !tbaa !109
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %774, label %747

747:                                              ; preds = %741
  %748 = load i64, ptr %52, align 8, !tbaa !55
  %749 = add i64 %748, 2
  %750 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %751 = load i64, ptr %750, align 8, !tbaa !41
  %752 = icmp ugt i64 %749, %751
  br i1 %752, label %753, label %757

753:                                              ; preds = %747
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %754 = load i64, ptr %52, align 8, !tbaa !55
  %755 = icmp eq i64 %754, 0
  br i1 %755, label %757, label %756

756:                                              ; preds = %753
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %945

757:                                              ; preds = %753, %747
  %758 = phi i64 [ 0, %753 ], [ %748, %747 ]
  %759 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %760 = load i64, ptr %759, align 8, !tbaa !59
  %761 = trunc i64 %760 to i8
  %762 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %763 = load ptr, ptr %762, align 8, !tbaa !40
  %764 = add i64 %758, 1
  store i64 %764, ptr %52, align 8, !tbaa !55
  %765 = getelementptr inbounds nuw i8, ptr %763, i64 %758
  store i8 %761, ptr %765, align 1, !tbaa !8
  %766 = load i64, ptr %759, align 8, !tbaa !59
  %767 = lshr i64 %766, 8
  %768 = trunc i64 %767 to i8
  %769 = load ptr, ptr %762, align 8, !tbaa !40
  %770 = load i64, ptr %52, align 8, !tbaa !55
  %771 = add i64 %770, 1
  store i64 %771, ptr %52, align 8, !tbaa !55
  %772 = getelementptr inbounds nuw i8, ptr %769, i64 %770
  store i8 %768, ptr %772, align 1, !tbaa !8
  %773 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %773, ptr %759, align 8, !tbaa !59
  br label %774

774:                                              ; preds = %757, %741
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %775 = load i64, ptr %52, align 8, !tbaa !55
  %776 = icmp eq i64 %775, 0
  br i1 %776, label %778, label %777

777:                                              ; preds = %774
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %945

778:                                              ; preds = %774, %390, %124
  %779 = load i32, ptr %29, align 8, !tbaa !81
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %790

781:                                              ; preds = %778, %114
  %782 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %783 = load i32, ptr %782, align 4, !tbaa !75
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %785, label %790

785:                                              ; preds = %781
  %786 = icmp eq i32 %1, 0
  br i1 %786, label %945, label %787

787:                                              ; preds = %785
  %788 = load i32, ptr %20, align 8, !tbaa !29
  %789 = icmp eq i32 %788, 666
  br i1 %789, label %848, label %790

790:                                              ; preds = %787, %781, %778
  %791 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %792 = load i32, ptr %791, align 4, !tbaa !46
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %794, label %796

794:                                              ; preds = %790
  %795 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %809

796:                                              ; preds = %790
  %797 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %798 = load i32, ptr %797, align 8, !tbaa !47
  switch i32 %798, label %803 [
    i32 2, label %799
    i32 3, label %801
  ]

799:                                              ; preds = %796
  %800 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %809

801:                                              ; preds = %796
  %802 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %809

803:                                              ; preds = %796
  %804 = sext i32 %792 to i64
  %805 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %804
  %806 = getelementptr inbounds nuw i8, ptr %805, i64 8
  %807 = load ptr, ptr %806, align 8, !tbaa !104
  %808 = tail call i32 %807(ptr noundef nonnull %14, i32 noundef %1) #11
  br label %809

809:                                              ; preds = %803, %801, %799, %794
  %810 = phi i32 [ %795, %794 ], [ %800, %799 ], [ %802, %801 ], [ %808, %803 ]
  %811 = and i32 %810, -2
  %812 = icmp eq i32 %811, 2
  br i1 %812, label %813, label %814

813:                                              ; preds = %809
  store i32 666, ptr %20, align 8, !tbaa !29
  br label %814

814:                                              ; preds = %813, %809
  %815 = and i32 %810, -3
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %817, label %821

817:                                              ; preds = %814
  %818 = load i32, ptr %43, align 8, !tbaa !106
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %945

820:                                              ; preds = %817
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %945

821:                                              ; preds = %814
  %822 = icmp eq i32 %810, 1
  br i1 %822, label %823, label %848

823:                                              ; preds = %821
  switch i32 %1, label %825 [
    i32 1, label %824
    i32 5, label %844
  ]

824:                                              ; preds = %823
  tail call void @_tr_align(ptr noundef nonnull %14) #11
  br label %844

825:                                              ; preds = %823
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %826 = icmp eq i32 %1, 3
  br i1 %826, label %827, label %844

827:                                              ; preds = %825
  %828 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %829 = load ptr, ptr %828, align 8, !tbaa !37
  %830 = getelementptr inbounds nuw i8, ptr %14, i64 132
  %831 = load i32, ptr %830, align 4, !tbaa !36
  %832 = add i32 %831, -1
  %833 = zext i32 %832 to i64
  %834 = getelementptr inbounds nuw [2 x i8], ptr %829, i64 %833
  store i16 0, ptr %834, align 2, !tbaa !62
  %835 = shl nuw nsw i64 %833, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %829, i8 0, i64 %835, i1 false)
  %836 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %836, align 8, !tbaa !63
  %837 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %838 = load i32, ptr %837, align 4, !tbaa !75
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %840, label %844

840:                                              ; preds = %827
  %841 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %841, align 4, !tbaa !73
  %842 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %842, align 8, !tbaa !74
  %843 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %843, align 4, !tbaa !76
  br label %844

844:                                              ; preds = %840, %827, %825, %824, %823
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %845 = load i32, ptr %43, align 8, !tbaa !106
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %847, label %848

847:                                              ; preds = %844
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %945

848:                                              ; preds = %844, %821, %787
  br i1 %37, label %945, label %849

849:                                              ; preds = %848
  %850 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %851 = load i32, ptr %850, align 8, !tbaa !30
  %852 = icmp slt i32 %851, 1
  br i1 %852, label %945, label %853

853:                                              ; preds = %849
  %854 = icmp eq i32 %851, 2
  %855 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %856 = load i64, ptr %855, align 8, !tbaa !59
  br i1 %854, label %857, label %908

857:                                              ; preds = %853
  %858 = trunc i64 %856 to i8
  %859 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %860 = load ptr, ptr %859, align 8, !tbaa !40
  %861 = load i64, ptr %52, align 8, !tbaa !55
  %862 = add i64 %861, 1
  store i64 %862, ptr %52, align 8, !tbaa !55
  %863 = getelementptr inbounds nuw i8, ptr %860, i64 %861
  store i8 %858, ptr %863, align 1, !tbaa !8
  %864 = load i64, ptr %855, align 8, !tbaa !59
  %865 = lshr i64 %864, 8
  %866 = trunc i64 %865 to i8
  %867 = load ptr, ptr %859, align 8, !tbaa !40
  %868 = load i64, ptr %52, align 8, !tbaa !55
  %869 = add i64 %868, 1
  store i64 %869, ptr %52, align 8, !tbaa !55
  %870 = getelementptr inbounds nuw i8, ptr %867, i64 %868
  store i8 %866, ptr %870, align 1, !tbaa !8
  %871 = load i64, ptr %855, align 8, !tbaa !59
  %872 = lshr i64 %871, 16
  %873 = trunc i64 %872 to i8
  %874 = load ptr, ptr %859, align 8, !tbaa !40
  %875 = load i64, ptr %52, align 8, !tbaa !55
  %876 = add i64 %875, 1
  store i64 %876, ptr %52, align 8, !tbaa !55
  %877 = getelementptr inbounds nuw i8, ptr %874, i64 %875
  store i8 %873, ptr %877, align 1, !tbaa !8
  %878 = load i64, ptr %855, align 8, !tbaa !59
  %879 = lshr i64 %878, 24
  %880 = trunc i64 %879 to i8
  %881 = load ptr, ptr %859, align 8, !tbaa !40
  %882 = load i64, ptr %52, align 8, !tbaa !55
  %883 = add i64 %882, 1
  store i64 %883, ptr %52, align 8, !tbaa !55
  %884 = getelementptr inbounds nuw i8, ptr %881, i64 %882
  store i8 %880, ptr %884, align 1, !tbaa !8
  %885 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %886 = load i64, ptr %885, align 8, !tbaa !53
  %887 = trunc i64 %886 to i8
  %888 = load ptr, ptr %859, align 8, !tbaa !40
  %889 = load i64, ptr %52, align 8, !tbaa !55
  %890 = add i64 %889, 1
  store i64 %890, ptr %52, align 8, !tbaa !55
  %891 = getelementptr inbounds nuw i8, ptr %888, i64 %889
  store i8 %887, ptr %891, align 1, !tbaa !8
  %892 = load i64, ptr %885, align 8, !tbaa !53
  %893 = lshr i64 %892, 8
  %894 = trunc i64 %893 to i8
  %895 = load ptr, ptr %859, align 8, !tbaa !40
  %896 = load i64, ptr %52, align 8, !tbaa !55
  %897 = add i64 %896, 1
  store i64 %897, ptr %52, align 8, !tbaa !55
  %898 = getelementptr inbounds nuw i8, ptr %895, i64 %896
  store i8 %894, ptr %898, align 1, !tbaa !8
  %899 = load i64, ptr %885, align 8, !tbaa !53
  %900 = lshr i64 %899, 16
  %901 = trunc i64 %900 to i8
  %902 = load ptr, ptr %859, align 8, !tbaa !40
  %903 = load i64, ptr %52, align 8, !tbaa !55
  %904 = add i64 %903, 1
  store i64 %904, ptr %52, align 8, !tbaa !55
  %905 = getelementptr inbounds nuw i8, ptr %902, i64 %903
  store i8 %901, ptr %905, align 1, !tbaa !8
  %906 = load i64, ptr %885, align 8, !tbaa !53
  %907 = lshr i64 %906, 24
  br label %929

908:                                              ; preds = %853
  %909 = lshr i64 %856, 16
  %910 = lshr i64 %856, 24
  %911 = trunc i64 %910 to i8
  %912 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %913 = load ptr, ptr %912, align 8, !tbaa !40
  %914 = load i64, ptr %52, align 8, !tbaa !55
  %915 = add i64 %914, 1
  store i64 %915, ptr %52, align 8, !tbaa !55
  %916 = getelementptr inbounds nuw i8, ptr %913, i64 %914
  store i8 %911, ptr %916, align 1, !tbaa !8
  %917 = trunc i64 %909 to i8
  %918 = load ptr, ptr %912, align 8, !tbaa !40
  %919 = load i64, ptr %52, align 8, !tbaa !55
  %920 = add i64 %919, 1
  store i64 %920, ptr %52, align 8, !tbaa !55
  %921 = getelementptr inbounds nuw i8, ptr %918, i64 %919
  store i8 %917, ptr %921, align 1, !tbaa !8
  %922 = load i64, ptr %855, align 8, !tbaa !59
  %923 = lshr i64 %922, 8
  %924 = trunc i64 %923 to i8
  %925 = load ptr, ptr %912, align 8, !tbaa !40
  %926 = load i64, ptr %52, align 8, !tbaa !55
  %927 = add i64 %926, 1
  store i64 %927, ptr %52, align 8, !tbaa !55
  %928 = getelementptr inbounds nuw i8, ptr %925, i64 %926
  store i8 %924, ptr %928, align 1, !tbaa !8
  br label %929

929:                                              ; preds = %908, %857
  %930 = phi ptr [ %912, %908 ], [ %859, %857 ]
  %931 = phi i64 [ %922, %908 ], [ %907, %857 ]
  %932 = trunc i64 %931 to i8
  %933 = load ptr, ptr %930, align 8, !tbaa !40
  %934 = load i64, ptr %52, align 8, !tbaa !55
  %935 = add i64 %934, 1
  store i64 %935, ptr %52, align 8, !tbaa !55
  %936 = getelementptr inbounds nuw i8, ptr %933, i64 %934
  store i8 %932, ptr %936, align 1, !tbaa !8
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %937 = load i32, ptr %850, align 8, !tbaa !30
  %938 = icmp sgt i32 %937, 0
  br i1 %938, label %939, label %941

939:                                              ; preds = %929
  %940 = sub nsw i32 0, %937
  store i32 %940, ptr %850, align 8, !tbaa !30
  br label %941

941:                                              ; preds = %939, %929
  %942 = load i64, ptr %52, align 8, !tbaa !55
  %943 = icmp eq i64 %942, 0
  %944 = zext i1 %943 to i32
  br label %945

945:                                              ; preds = %941, %849, %848, %847, %820, %817, %785, %777, %756, %711, %617, %.loopexit, %266, %200, %117, %108, %87, %46, %39, %22, %19, %16, %12, %8, %4, %2
  %946 = phi i32 [ -5, %108 ], [ -2, %39 ], [ -5, %46 ], [ 0, %87 ], [ -5, %117 ], [ 0, %266 ], [ 0, %756 ], [ 0, %777 ], [ -2, %22 ], [ 0, %848 ], [ %944, %941 ], [ 1, %849 ], [ 0, %711 ], [ 0, %617 ], [ 0, %.loopexit ], [ 0, %200 ], [ 0, %820 ], [ 0, %847 ], [ 0, %817 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ 0, %785 ]
  ret i32 %946
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @slide_hash(ptr noundef nonnull captures(none) %0) unnamed_addr #8 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !32
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %8
  %10 = add i32 %5, -1
  %11 = zext i32 %10 to i64
  %12 = add nuw nsw i64 %11, 1
  %13 = icmp ult i32 %10, 7
  br i1 %13, label %.preheader5, label %14

14:                                               ; preds = %1
  %15 = and i64 %12, 8589934584
  %16 = insertelement <8 x i32> poison, i32 %3, i64 0
  %17 = shufflevector <8 x i32> %16, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %18

18:                                               ; preds = %18, %14
  %19 = phi i64 [ 0, %14 ], [ %27, %18 ]
  %20 = mul i64 %19, -2
  %21 = getelementptr i8, ptr %9, i64 %20
  %22 = getelementptr inbounds i8, ptr %21, i64 -16
  %23 = load <8 x i16>, ptr %22, align 2, !tbaa !62
  %24 = zext <8 x i16> %23 to <8 x i32>
  %25 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %24, <8 x i32> %17)
  %26 = trunc nuw <8 x i32> %25 to <8 x i16>
  store <8 x i16> %26, ptr %22, align 2, !tbaa !62
  %27 = add nuw i64 %19, 8
  %28 = icmp eq i64 %27, %15
  br i1 %28, label %29, label %18, !llvm.loop !125

29:                                               ; preds = %18
  %30 = mul nsw i64 %15, -2
  %31 = getelementptr i8, ptr %9, i64 %30
  %32 = trunc i64 %15 to i32
  %33 = sub i32 %5, %32
  %34 = icmp eq i64 %12, %15
  br i1 %34, label %.loopexit2, label %.preheader5

.preheader5:                                      ; preds = %29, %1
  %.ph6 = phi ptr [ %31, %29 ], [ %9, %1 ]
  %.ph7 = phi i32 [ %33, %29 ], [ %5, %1 ]
  br label %35

35:                                               ; preds = %.preheader5, %35
  %36 = phi ptr [ %38, %35 ], [ %.ph6, %.preheader5 ]
  %37 = phi i32 [ %43, %35 ], [ %.ph7, %.preheader5 ]
  %38 = getelementptr inbounds i8, ptr %36, i64 -2
  %39 = load i16, ptr %38, align 2, !tbaa !62
  %40 = zext i16 %39 to i32
  %41 = tail call i32 @llvm.usub.sat.i32(i32 %40, i32 %3)
  %42 = trunc nuw i32 %41 to i16
  store i16 %42, ptr %38, align 2, !tbaa !62
  %43 = add i32 %37, -1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %.loopexit2, label %35, !llvm.loop !126

.loopexit2:                                       ; preds = %35, %29
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = zext i32 %3 to i64
  %48 = getelementptr inbounds nuw [2 x i8], ptr %46, i64 %47
  %49 = add i32 %3, -1
  %50 = zext i32 %49 to i64
  %51 = add nuw nsw i64 %50, 1
  %52 = icmp ult i32 %49, 7
  br i1 %52, label %.preheader, label %53

53:                                               ; preds = %.loopexit2
  %54 = and i64 %51, 8589934584
  %55 = insertelement <8 x i32> poison, i32 %3, i64 0
  %56 = shufflevector <8 x i32> %55, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %57

57:                                               ; preds = %57, %53
  %58 = phi i64 [ 0, %53 ], [ %66, %57 ]
  %59 = mul i64 %58, -2
  %60 = getelementptr i8, ptr %48, i64 %59
  %61 = getelementptr inbounds i8, ptr %60, i64 -16
  %62 = load <8 x i16>, ptr %61, align 2, !tbaa !62
  %63 = zext <8 x i16> %62 to <8 x i32>
  %64 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %63, <8 x i32> %56)
  %65 = trunc nuw <8 x i32> %64 to <8 x i16>
  store <8 x i16> %65, ptr %61, align 2, !tbaa !62
  %66 = add nuw i64 %58, 8
  %67 = icmp eq i64 %66, %54
  br i1 %67, label %68, label %57, !llvm.loop !127

68:                                               ; preds = %57
  %69 = mul nsw i64 %54, -2
  %70 = getelementptr i8, ptr %48, i64 %69
  %71 = trunc i64 %54 to i32
  %72 = sub i32 %3, %71
  %73 = icmp eq i64 %51, %54
  br i1 %73, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %68, %.loopexit2
  %.ph = phi ptr [ %70, %68 ], [ %48, %.loopexit2 ]
  %.ph4 = phi i32 [ %72, %68 ], [ %3, %.loopexit2 ]
  br label %74

74:                                               ; preds = %.preheader, %74
  %75 = phi ptr [ %77, %74 ], [ %.ph, %.preheader ]
  %76 = phi i32 [ %82, %74 ], [ %.ph4, %.preheader ]
  %77 = getelementptr inbounds i8, ptr %75, i64 -2
  %78 = load i16, ptr %77, align 2, !tbaa !62
  %79 = zext i16 %78 to i32
  %80 = tail call i32 @llvm.usub.sat.i32(i32 %79, i32 %3)
  %81 = trunc nuw i32 %80 to i16
  store i16 %81, ptr %77, align 2, !tbaa !62
  %82 = add i32 %76, -1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %.loopexit, label %74, !llvm.loop !128

.loopexit:                                        ; preds = %74, %68
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i32 1, ptr %84, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateTune(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
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
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !20
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %24 = load i32, ptr %23, align 8, !tbaa !29
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
  store i32 %1, ptr %26, align 4, !tbaa !68
  %27 = getelementptr inbounds nuw i8, ptr %17, i64 192
  store i32 %2, ptr %27, align 8, !tbaa !66
  %28 = getelementptr inbounds nuw i8, ptr %17, i64 208
  store i32 %3, ptr %28, align 8, !tbaa !70
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 188
  store i32 %4, ptr %29, align 4, !tbaa !72
  br label %30

30:                                               ; preds = %25, %22, %19, %15, %11, %7, %5
  %31 = phi i32 [ 0, %25 ], [ -2, %5 ], [ -2, %11 ], [ -2, %7 ], [ -2, %22 ], [ -2, %19 ], [ -2, %15 ]
  ret i32 %31
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound_z(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = lshr i64 %1, 8
  %5 = lshr i64 %1, 9
  %6 = add i64 %1, 4
  %7 = add i64 %6, %3
  %8 = add i64 %7, %4
  %9 = add i64 %8, %5
  %10 = icmp ult i64 %9, %1
  %11 = select i1 %10, i64 -1, i64 %9
  %12 = lshr i64 %1, 5
  %13 = lshr i64 %1, 7
  %14 = lshr i64 %1, 11
  %15 = add i64 %1, 7
  %16 = add i64 %15, %12
  %17 = add i64 %16, %13
  %18 = add i64 %17, %14
  %19 = icmp ult i64 %18, %1
  %20 = select i1 %19, i64 -1, i64 %18
  %21 = icmp eq ptr %0, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %28 = load ptr, ptr %27, align 8, !tbaa !17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !20
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %39 = load i32, ptr %38, align 8, !tbaa !29
  switch i32 %39, label %40 [
    i32 42, label %43
    i32 57, label %43
    i32 69, label %43
    i32 73, label %43
    i32 91, label %43
    i32 103, label %43
    i32 113, label %43
    i32 666, label %43
  ]

40:                                               ; preds = %37, %34, %30, %26, %22, %2
  %41 = tail call i64 @llvm.umax.i64(i64 %11, i64 %20)
  %42 = tail call i64 @llvm.uadd.sat.i64(i64 %41, i64 18)
  br label %128

43:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37
  %44 = getelementptr inbounds nuw i8, ptr %32, i64 48
  %45 = load i32, ptr %44, align 8, !tbaa !30
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %45), !nosanitize !57
  %49 = extractvalue { i32, i1 } %48, 0, !nosanitize !57
  %50 = extractvalue { i32, i1 } %48, 1, !nosanitize !57
  br i1 %50, label %51, label %52, !prof !58, !nosanitize !57

51:                                               ; preds = %47
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !57
  unreachable, !nosanitize !57

52:                                               ; preds = %47, %43
  %53 = phi i32 [ %49, %47 ], [ %45, %43 ]
  switch i32 %53, label %98 [
    i32 0, label %99
    i32 1, label %54
    i32 2, label %59
  ]

54:                                               ; preds = %52
  %55 = getelementptr inbounds nuw i8, ptr %32, i64 172
  %56 = load i32, ptr %55, align 4, !tbaa !73
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i64 6, i64 10
  br label %99

59:                                               ; preds = %52
  %60 = getelementptr inbounds nuw i8, ptr %32, i64 56
  %61 = load ptr, ptr %60, align 8, !tbaa !99
  %62 = icmp eq ptr %61, null
  br i1 %62, label %99, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 24
  %65 = load ptr, ptr %64, align 8, !tbaa !112
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %69 = load i32, ptr %68, align 8, !tbaa !117
  %70 = add i32 %69, 2
  %71 = zext i32 %70 to i64
  %72 = add nuw nsw i64 %71, 18
  br label %73

73:                                               ; preds = %67, %63
  %74 = phi i64 [ %72, %67 ], [ 18, %63 ]
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %76 = load ptr, ptr %75, align 8, !tbaa !113
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %76)
  %80 = add nuw nsw i64 %74, 1
  %81 = add i64 %80, %79
  br label %82

82:                                               ; preds = %78, %73
  %83 = phi i64 [ %74, %73 ], [ %81, %78 ]
  %84 = getelementptr inbounds nuw i8, ptr %61, i64 56
  %85 = load ptr, ptr %84, align 8, !tbaa !114
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %85)
  %89 = add i64 %83, 1
  %90 = add i64 %89, %88
  br label %91

91:                                               ; preds = %87, %82
  %92 = phi i64 [ %83, %82 ], [ %90, %87 ]
  %93 = getelementptr inbounds nuw i8, ptr %61, i64 68
  %94 = load i32, ptr %93, align 4, !tbaa !109
  %95 = icmp eq i32 %94, 0
  %96 = add i64 %92, 2
  %97 = select i1 %95, i64 %92, i64 %96
  br label %99

98:                                               ; preds = %52
  br label %99

99:                                               ; preds = %98, %91, %59, %54, %52
  %100 = phi i64 [ 18, %98 ], [ 18, %59 ], [ %58, %54 ], [ %97, %91 ], [ 0, %52 ]
  %101 = getelementptr inbounds nuw i8, ptr %32, i64 84
  %102 = load i32, ptr %101, align 4, !tbaa !31
  %103 = icmp eq i32 %102, 15
  %104 = getelementptr inbounds nuw i8, ptr %32, i64 136
  %105 = load i32, ptr %104, align 8, !tbaa !49
  %106 = icmp eq i32 %105, 15
  %107 = select i1 %103, i1 %106, i1 false
  br i1 %107, label %118, label %108

108:                                              ; preds = %99
  %109 = icmp ugt i32 %102, %105
  br i1 %109, label %114, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds nuw i8, ptr %32, i64 196
  %112 = load i32, ptr %111, align 4, !tbaa !46
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110, %108
  br label %115

115:                                              ; preds = %114, %110
  %116 = phi i64 [ %20, %114 ], [ %11, %110 ]
  %117 = tail call i64 @llvm.uadd.sat.i64(i64 %116, i64 %100)
  br label %128

118:                                              ; preds = %99
  %119 = lshr i64 %1, 12
  %120 = lshr i64 %1, 14
  %121 = lshr i64 %1, 25
  %122 = add i64 %15, %119
  %123 = add i64 %122, %120
  %124 = add i64 %123, %121
  %125 = add i64 %124, %100
  %126 = icmp ult i64 %125, %1
  %127 = select i1 %126, i64 -1, i64 %125
  br label %128

128:                                              ; preds = %118, %115, %40
  %129 = phi i64 [ %42, %40 ], [ %117, %115 ], [ %127, %118 ]
  ret i64 %129
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = lshr i64 %1, 8
  %5 = lshr i64 %1, 9
  %6 = add i64 %1, 4
  %7 = add i64 %6, %3
  %8 = add i64 %7, %4
  %9 = add i64 %8, %5
  %10 = icmp ult i64 %9, %1
  %11 = select i1 %10, i64 -1, i64 %9
  %12 = lshr i64 %1, 5
  %13 = lshr i64 %1, 7
  %14 = lshr i64 %1, 11
  %15 = add i64 %1, 7
  %16 = add i64 %15, %12
  %17 = add i64 %16, %13
  %18 = add i64 %17, %14
  %19 = icmp ult i64 %18, %1
  %20 = select i1 %19, i64 -1, i64 %18
  %21 = icmp eq ptr %0, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %28 = load ptr, ptr %27, align 8, !tbaa !17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !20
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %39 = load i32, ptr %38, align 8, !tbaa !29
  switch i32 %39, label %40 [
    i32 42, label %43
    i32 57, label %43
    i32 69, label %43
    i32 73, label %43
    i32 91, label %43
    i32 103, label %43
    i32 113, label %43
    i32 666, label %43
  ]

40:                                               ; preds = %37, %34, %30, %26, %22, %2
  %41 = tail call i64 @llvm.umax.i64(i64 %11, i64 %20)
  %42 = tail call i64 @llvm.uadd.sat.i64(i64 %41, i64 18)
  br label %128

43:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37
  %44 = getelementptr inbounds nuw i8, ptr %32, i64 48
  %45 = load i32, ptr %44, align 8, !tbaa !30
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %45), !nosanitize !57
  %49 = extractvalue { i32, i1 } %48, 0, !nosanitize !57
  %50 = extractvalue { i32, i1 } %48, 1, !nosanitize !57
  br i1 %50, label %51, label %52, !prof !58, !nosanitize !57

51:                                               ; preds = %47
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !57
  unreachable, !nosanitize !57

52:                                               ; preds = %47, %43
  %53 = phi i32 [ %49, %47 ], [ %45, %43 ]
  switch i32 %53, label %98 [
    i32 0, label %99
    i32 1, label %54
    i32 2, label %59
  ]

54:                                               ; preds = %52
  %55 = getelementptr inbounds nuw i8, ptr %32, i64 172
  %56 = load i32, ptr %55, align 4, !tbaa !73
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i64 6, i64 10
  br label %99

59:                                               ; preds = %52
  %60 = getelementptr inbounds nuw i8, ptr %32, i64 56
  %61 = load ptr, ptr %60, align 8, !tbaa !99
  %62 = icmp eq ptr %61, null
  br i1 %62, label %99, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 24
  %65 = load ptr, ptr %64, align 8, !tbaa !112
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %69 = load i32, ptr %68, align 8, !tbaa !117
  %70 = add i32 %69, 2
  %71 = zext i32 %70 to i64
  %72 = add nuw nsw i64 %71, 18
  br label %73

73:                                               ; preds = %67, %63
  %74 = phi i64 [ %72, %67 ], [ 18, %63 ]
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %76 = load ptr, ptr %75, align 8, !tbaa !113
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %76)
  %80 = add nuw nsw i64 %74, 1
  %81 = add i64 %80, %79
  br label %82

82:                                               ; preds = %78, %73
  %83 = phi i64 [ %74, %73 ], [ %81, %78 ]
  %84 = getelementptr inbounds nuw i8, ptr %61, i64 56
  %85 = load ptr, ptr %84, align 8, !tbaa !114
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %85)
  %89 = add i64 %83, 1
  %90 = add i64 %89, %88
  br label %91

91:                                               ; preds = %87, %82
  %92 = phi i64 [ %83, %82 ], [ %90, %87 ]
  %93 = getelementptr inbounds nuw i8, ptr %61, i64 68
  %94 = load i32, ptr %93, align 4, !tbaa !109
  %95 = icmp eq i32 %94, 0
  %96 = add i64 %92, 2
  %97 = select i1 %95, i64 %92, i64 %96
  br label %99

98:                                               ; preds = %52
  br label %99

99:                                               ; preds = %98, %91, %59, %54, %52
  %100 = phi i64 [ 18, %98 ], [ 18, %59 ], [ %58, %54 ], [ %97, %91 ], [ 0, %52 ]
  %101 = getelementptr inbounds nuw i8, ptr %32, i64 84
  %102 = load i32, ptr %101, align 4, !tbaa !31
  %103 = icmp eq i32 %102, 15
  %104 = getelementptr inbounds nuw i8, ptr %32, i64 136
  %105 = load i32, ptr %104, align 8, !tbaa !49
  %106 = icmp eq i32 %105, 15
  %107 = select i1 %103, i1 %106, i1 false
  br i1 %107, label %118, label %108

108:                                              ; preds = %99
  %109 = icmp ugt i32 %102, %105
  br i1 %109, label %114, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds nuw i8, ptr %32, i64 196
  %112 = load i32, ptr %111, align 4, !tbaa !46
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110, %108
  br label %115

115:                                              ; preds = %114, %110
  %116 = phi i64 [ %20, %114 ], [ %11, %110 ]
  %117 = tail call i64 @llvm.uadd.sat.i64(i64 %116, i64 %100)
  br label %128

118:                                              ; preds = %99
  %119 = lshr i64 %1, 12
  %120 = lshr i64 %1, 14
  %121 = lshr i64 %1, 25
  %122 = add i64 %15, %119
  %123 = add i64 %122, %120
  %124 = add i64 %123, %121
  %125 = add i64 %124, %100
  %126 = icmp ult i64 %125, %1
  %127 = select i1 %126, i64 -1, i64 %125
  br label %128

128:                                              ; preds = %118, %115, %40
  %129 = phi i64 [ %42, %40 ], [ %117, %115 ], [ %127, %118 ]
  ret i64 %129
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef nonnull captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %3) #11
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i64, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 8, !tbaa !106
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %1
  %12 = trunc nuw i64 %9 to i32
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %16, i64 %9, i1 false)
  %17 = load ptr, ptr %13, align 8, !tbaa !105
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %9
  store ptr %18, ptr %13, align 8, !tbaa !105
  %19 = load ptr, ptr %15, align 8, !tbaa !56
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  store ptr %20, ptr %15, align 8, !tbaa !56
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8, !tbaa !107
  %23 = add i64 %22, %9
  store i64 %23, ptr %21, align 8, !tbaa !107
  %24 = load i32, ptr %6, align 8, !tbaa !106
  %25 = sub i32 %24, %12
  store i32 %25, ptr %6, align 8, !tbaa !106
  %26 = load i64, ptr %4, align 8, !tbaa !55
  %27 = sub i64 %26, %9
  store i64 %27, ptr %4, align 8, !tbaa !55
  %28 = icmp eq i64 %26, %9
  br i1 %28, label %29, label %32

29:                                               ; preds = %11
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %31 = load ptr, ptr %30, align 8, !tbaa !40
  store ptr %31, ptr %15, align 8, !tbaa !56
  br label %32

32:                                               ; preds = %29, %11, %1
  ret void
}

declare i64 @crc32_z(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = load i64, ptr %3, align 8, !tbaa !41
  %5 = add i64 %4, -5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %7 = load i32, ptr %6, align 8, !tbaa !32
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = trunc nuw i64 %9 to i32
  %11 = load ptr, ptr %0, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load i32, ptr %12, align 8, !tbaa !81
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %17 = icmp eq i32 %1, 4
  %18 = icmp ne i32 %1, 0
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %22

22:                                               ; preds = %189, %2
  %23 = load i32, ptr %14, align 4, !tbaa !100
  %24 = add i32 %23, 42
  %25 = lshr i32 %24, 3
  %26 = load ptr, ptr %0, align 8, !tbaa !20
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %28 = load i32, ptr %27, align 8, !tbaa !106
  %29 = icmp ult i32 %28, %25
  br i1 %29, label %.loopexit, label %30

30:                                               ; preds = %22
  %31 = load i32, ptr %15, align 4, !tbaa !73
  %32 = zext i32 %31 to i64
  %33 = load i64, ptr %16, align 8, !tbaa !74
  %34 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %32, i64 %33), !nosanitize !57
  %35 = extractvalue { i64, i1 } %34, 1, !nosanitize !57
  br i1 %35, label %.loopexit24, label %36, !prof !58, !nosanitize !57

.loopexit24:                                      ; preds = %30, %355
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

36:                                               ; preds = %30
  %37 = sub nuw i32 %28, %25
  %38 = extractvalue { i64, i1 } %34, 0, !nosanitize !57
  %39 = trunc i64 %38 to i32
  %40 = and i64 %38, 4294967295
  %41 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %42 = load i32, ptr %41, align 8, !tbaa !81
  %43 = zext i32 %42 to i64
  %44 = add nuw nsw i64 %40, %43
  %45 = icmp samesign ult i64 %44, 65535
  %46 = add i32 %42, %39
  %47 = select i1 %45, i32 %46, i32 65535
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 %37)
  %49 = icmp ult i32 %48, %10
  br i1 %49, label %50, label %56

50:                                               ; preds = %36
  %51 = icmp ne i32 %48, 0
  %52 = or i1 %17, %51
  %53 = icmp eq i32 %48, %46
  %54 = and i1 %53, %52
  %55 = and i1 %18, %54
  br i1 %55, label %56, label %.loopexit

56:                                               ; preds = %50, %36
  %57 = icmp eq i32 %48, %46
  %58 = and i1 %17, %57
  %59 = zext i1 %58 to i32
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %59) #11
  %60 = trunc i32 %48 to i8
  %61 = load ptr, ptr %19, align 8, !tbaa !40
  %62 = load i64, ptr %20, align 8, !tbaa !55
  %63 = getelementptr i8, ptr %61, i64 %62
  %64 = getelementptr i8, ptr %63, i64 -4
  store i8 %60, ptr %64, align 1, !tbaa !8
  %65 = lshr i32 %48, 8
  %66 = trunc i32 %65 to i8
  %67 = load ptr, ptr %19, align 8, !tbaa !40
  %68 = load i64, ptr %20, align 8, !tbaa !55
  %69 = getelementptr i8, ptr %67, i64 %68
  %70 = getelementptr i8, ptr %69, i64 -3
  store i8 %66, ptr %70, align 1, !tbaa !8
  %71 = xor i32 %48, -1
  %72 = trunc i32 %71 to i8
  %73 = load ptr, ptr %19, align 8, !tbaa !40
  %74 = load i64, ptr %20, align 8, !tbaa !55
  %75 = getelementptr i8, ptr %73, i64 %74
  %76 = getelementptr i8, ptr %75, i64 -2
  store i8 %72, ptr %76, align 1, !tbaa !8
  %77 = lshr i32 %71, 8
  %78 = trunc i32 %77 to i8
  %79 = load ptr, ptr %19, align 8, !tbaa !40
  %80 = load i64, ptr %20, align 8, !tbaa !55
  %81 = getelementptr i8, ptr %79, i64 %80
  %82 = getelementptr i8, ptr %81, i64 -1
  store i8 %78, ptr %82, align 1, !tbaa !8
  %83 = load ptr, ptr %0, align 8, !tbaa !20
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 56
  %85 = load ptr, ptr %84, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %85) #11
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 40
  %87 = load i64, ptr %86, align 8, !tbaa !55
  %88 = getelementptr inbounds nuw i8, ptr %83, i64 32
  %89 = load i32, ptr %88, align 8, !tbaa !106
  %90 = zext i32 %89 to i64
  %91 = tail call i64 @llvm.umin.i64(i64 %87, i64 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %114, label %93

93:                                               ; preds = %56
  %94 = trunc nuw i64 %91 to i32
  %95 = getelementptr inbounds nuw i8, ptr %83, i64 24
  %96 = load ptr, ptr %95, align 8, !tbaa !105
  %97 = getelementptr inbounds nuw i8, ptr %85, i64 32
  %98 = load ptr, ptr %97, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %96, ptr align 1 %98, i64 %91, i1 false)
  %99 = load ptr, ptr %95, align 8, !tbaa !105
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 %91
  store ptr %100, ptr %95, align 8, !tbaa !105
  %101 = load ptr, ptr %97, align 8, !tbaa !56
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 %91
  store ptr %102, ptr %97, align 8, !tbaa !56
  %103 = getelementptr inbounds nuw i8, ptr %83, i64 40
  %104 = load i64, ptr %103, align 8, !tbaa !107
  %105 = add i64 %104, %91
  store i64 %105, ptr %103, align 8, !tbaa !107
  %106 = load i32, ptr %88, align 8, !tbaa !106
  %107 = sub i32 %106, %94
  store i32 %107, ptr %88, align 8, !tbaa !106
  %108 = load i64, ptr %86, align 8, !tbaa !55
  %109 = sub i64 %108, %91
  store i64 %109, ptr %86, align 8, !tbaa !55
  %110 = icmp eq i64 %108, %91
  br i1 %110, label %111, label %114

111:                                              ; preds = %93
  %112 = getelementptr inbounds nuw i8, ptr %85, i64 16
  %113 = load ptr, ptr %112, align 8, !tbaa !40
  store ptr %113, ptr %97, align 8, !tbaa !56
  br label %114

114:                                              ; preds = %111, %93, %56
  %115 = icmp eq i32 %39, 0
  br i1 %115, label %141, label %116

116:                                              ; preds = %114
  %117 = tail call i32 @llvm.umin.i32(i32 %48, i32 %39)
  %118 = load ptr, ptr %0, align 8, !tbaa !20
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 24
  %120 = load ptr, ptr %119, align 8, !tbaa !105
  %121 = load ptr, ptr %21, align 8, !tbaa !34
  %122 = load i64, ptr %16, align 8, !tbaa !74
  %123 = getelementptr inbounds i8, ptr %121, i64 %122
  %124 = zext i32 %117 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %120, ptr align 1 %123, i64 %124, i1 false)
  %125 = load ptr, ptr %0, align 8, !tbaa !20
  %126 = getelementptr inbounds nuw i8, ptr %125, i64 24
  %127 = load ptr, ptr %126, align 8, !tbaa !105
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 %124
  store ptr %128, ptr %126, align 8, !tbaa !105
  %129 = getelementptr inbounds nuw i8, ptr %125, i64 32
  %130 = load i32, ptr %129, align 8, !tbaa !106
  %131 = sub i32 %130, %117
  store i32 %131, ptr %129, align 8, !tbaa !106
  %132 = getelementptr inbounds nuw i8, ptr %125, i64 40
  %133 = load i64, ptr %132, align 8, !tbaa !107
  %134 = add i64 %133, %124
  store i64 %134, ptr %132, align 8, !tbaa !107
  %135 = load i64, ptr %16, align 8, !tbaa !74
  %136 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %135, i64 %124), !nosanitize !57
  %137 = extractvalue { i64, i1 } %136, 1, !nosanitize !57
  br i1 %137, label %.loopexit25, label %138, !prof !58, !nosanitize !57

.loopexit25:                                      ; preds = %116, %392
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !57
  unreachable, !nosanitize !57

138:                                              ; preds = %116
  %139 = extractvalue { i64, i1 } %136, 0, !nosanitize !57
  store i64 %139, ptr %16, align 8, !tbaa !74
  %140 = sub i32 %48, %117
  br label %141

141:                                              ; preds = %138, %114
  %142 = phi i32 [ %140, %138 ], [ %48, %114 ]
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %189, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %0, align 8, !tbaa !20
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 24
  %147 = load ptr, ptr %146, align 8, !tbaa !105
  %148 = getelementptr inbounds nuw i8, ptr %145, i64 8
  %149 = load i32, ptr %148, align 8, !tbaa !81
  %150 = tail call i32 @llvm.umin.i32(i32 %149, i32 %142)
  %151 = icmp eq i32 %149, 0
  br i1 %151, label %177, label %152

152:                                              ; preds = %144
  %153 = sub i32 %149, %150
  store i32 %153, ptr %148, align 8, !tbaa !81
  %154 = load ptr, ptr %145, align 8, !tbaa !82
  %155 = zext i32 %150 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %147, ptr align 1 %154, i64 %155, i1 false)
  %156 = getelementptr inbounds nuw i8, ptr %145, i64 56
  %157 = load ptr, ptr %156, align 8, !tbaa !19
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 48
  %159 = load i32, ptr %158, align 8, !tbaa !30
  switch i32 %159, label %168 [
    i32 1, label %160
    i32 2, label %164
  ]

160:                                              ; preds = %152
  %161 = getelementptr inbounds nuw i8, ptr %145, i64 96
  %162 = load i64, ptr %161, align 8, !tbaa !59
  %163 = tail call i64 @adler32(i64 noundef %162, ptr noundef %147, i32 noundef %150) #11
  store i64 %163, ptr %161, align 8, !tbaa !59
  br label %168

164:                                              ; preds = %152
  %165 = getelementptr inbounds nuw i8, ptr %145, i64 96
  %166 = load i64, ptr %165, align 8, !tbaa !59
  %167 = tail call i64 @crc32(i64 noundef %166, ptr noundef %147, i32 noundef %150) #11
  store i64 %167, ptr %165, align 8, !tbaa !59
  br label %168

168:                                              ; preds = %164, %160, %152
  %169 = load ptr, ptr %145, align 8, !tbaa !82
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 %155
  store ptr %170, ptr %145, align 8, !tbaa !82
  %171 = getelementptr inbounds nuw i8, ptr %145, i64 16
  %172 = load i64, ptr %171, align 8, !tbaa !53
  %173 = add i64 %172, %155
  store i64 %173, ptr %171, align 8, !tbaa !53
  %174 = load ptr, ptr %0, align 8, !tbaa !20
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 24
  %176 = load ptr, ptr %175, align 8, !tbaa !105
  br label %177

177:                                              ; preds = %168, %144
  %178 = phi ptr [ %147, %144 ], [ %176, %168 ]
  %179 = phi ptr [ %145, %144 ], [ %174, %168 ]
  %180 = getelementptr inbounds nuw i8, ptr %179, i64 24
  %181 = zext i32 %142 to i64
  %182 = getelementptr inbounds nuw i8, ptr %178, i64 %181
  store ptr %182, ptr %180, align 8, !tbaa !105
  %183 = getelementptr inbounds nuw i8, ptr %179, i64 32
  %184 = load i32, ptr %183, align 8, !tbaa !106
  %185 = sub i32 %184, %142
  store i32 %185, ptr %183, align 8, !tbaa !106
  %186 = getelementptr inbounds nuw i8, ptr %179, i64 40
  %187 = load i64, ptr %186, align 8, !tbaa !107
  %188 = add i64 %187, %181
  store i64 %188, ptr %186, align 8, !tbaa !107
  br label %189

189:                                              ; preds = %177, %141
  br i1 %58, label %190, label %22, !llvm.loop !129

190:                                              ; preds = %189
  %191 = load ptr, ptr %0, align 8, !tbaa !20
  br label %.loopexit, !llvm.loop !129

.loopexit:                                        ; preds = %50, %22, %190
  %192 = phi ptr [ %191, %190 ], [ %26, %22 ], [ %26, %50 ]
  %193 = phi i1 [ false, %190 ], [ true, %22 ], [ true, %50 ]
  %194 = getelementptr inbounds nuw i8, ptr %192, i64 8
  %195 = load i32, ptr %194, align 8, !tbaa !81
  %196 = sub i32 %13, %195
  %197 = icmp eq i32 %13, %195
  br i1 %197, label %198, label %201

198:                                              ; preds = %.loopexit
  %199 = load i32, ptr %15, align 4, !tbaa !73
  %200 = zext i32 %199 to i64
  br label %258

201:                                              ; preds = %.loopexit
  %202 = load i32, ptr %6, align 8, !tbaa !32
  %203 = icmp ult i32 %196, %202
  br i1 %203, label %213, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %205, align 8, !tbaa !124
  %206 = load ptr, ptr %21, align 8, !tbaa !34
  %207 = load ptr, ptr %192, align 8, !tbaa !82
  %208 = zext i32 %202 to i64
  %209 = sub nsw i64 0, %208
  %210 = getelementptr inbounds i8, ptr %207, i64 %209
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %206, ptr align 1 %210, i64 %208, i1 false)
  %211 = load i32, ptr %6, align 8, !tbaa !32
  store i32 %211, ptr %15, align 4, !tbaa !73
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %211, ptr %212, align 4, !tbaa !76
  br label %255

213:                                              ; preds = %201
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %215 = load i64, ptr %214, align 8, !tbaa !61
  %216 = load i32, ptr %15, align 4, !tbaa !73
  %217 = zext i32 %216 to i64
  %218 = sub i64 %215, %217
  %219 = zext i32 %196 to i64
  %220 = icmp ugt i64 %218, %219
  br i1 %220, label %238, label %221

221:                                              ; preds = %213
  %222 = sub i32 %216, %202
  store i32 %222, ptr %15, align 4, !tbaa !73
  %223 = load ptr, ptr %21, align 8, !tbaa !34
  %224 = zext i32 %202 to i64
  %225 = getelementptr inbounds nuw i8, ptr %223, i64 %224
  %226 = zext i32 %222 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %223, ptr nonnull align 1 %225, i64 %226, i1 false)
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %228 = load i32, ptr %227, align 8, !tbaa !124
  %229 = icmp ult i32 %228, 2
  br i1 %229, label %230, label %232

230:                                              ; preds = %221
  %231 = add nuw nsw i32 %228, 1
  store i32 %231, ptr %227, align 8, !tbaa !124
  br label %232

232:                                              ; preds = %230, %221
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %234 = load i32, ptr %233, align 4, !tbaa !76
  %235 = load i32, ptr %15, align 4, !tbaa !73
  %236 = icmp ugt i32 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  store i32 %235, ptr %233, align 4, !tbaa !76
  br label %238

238:                                              ; preds = %237, %232, %213
  %239 = phi i32 [ %235, %232 ], [ %235, %237 ], [ %216, %213 ]
  %240 = load ptr, ptr %21, align 8, !tbaa !34
  %241 = zext i32 %239 to i64
  %242 = getelementptr inbounds nuw i8, ptr %240, i64 %241
  %243 = load ptr, ptr %0, align 8, !tbaa !20
  %244 = load ptr, ptr %243, align 8, !tbaa !82
  %245 = sub nsw i64 0, %219
  %246 = getelementptr inbounds i8, ptr %244, i64 %245
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %242, ptr nonnull align 1 %246, i64 %219, i1 false)
  %247 = load i32, ptr %15, align 4, !tbaa !73
  %248 = add i32 %247, %196
  store i32 %248, ptr %15, align 4, !tbaa !73
  %249 = load i32, ptr %6, align 8, !tbaa !32
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %251 = load i32, ptr %250, align 4, !tbaa !76
  %252 = sub i32 %249, %251
  %253 = tail call i32 @llvm.umin.i32(i32 %196, i32 %252)
  %254 = add i32 %253, %251
  store i32 %254, ptr %250, align 4, !tbaa !76
  br label %255

255:                                              ; preds = %238, %204
  %256 = phi i32 [ %248, %238 ], [ %211, %204 ]
  %257 = zext i32 %256 to i64
  store i64 %257, ptr %16, align 8, !tbaa !74
  br label %258

258:                                              ; preds = %255, %198
  %259 = phi i64 [ %200, %198 ], [ %257, %255 ]
  %260 = phi i32 [ %199, %198 ], [ %256, %255 ]
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %262 = load i64, ptr %261, align 8, !tbaa !38
  %263 = icmp ult i64 %262, %259
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  store i64 %259, ptr %261, align 8, !tbaa !38
  br label %265

265:                                              ; preds = %264, %258
  br i1 %193, label %266, label %435

266:                                              ; preds = %265
  switch i32 %1, label %267 [
    i32 4, label %275
    i32 0, label %275
  ]

267:                                              ; preds = %266
  %268 = load ptr, ptr %0, align 8, !tbaa !20
  %269 = getelementptr inbounds nuw i8, ptr %268, i64 8
  %270 = load i32, ptr %269, align 8, !tbaa !81
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = load i64, ptr %16, align 8, !tbaa !74
  %274 = icmp eq i64 %273, %259
  br i1 %274, label %438, label %275

275:                                              ; preds = %272, %267, %266, %266
  %276 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %277 = load i64, ptr %276, align 8, !tbaa !61
  %278 = trunc i64 %277 to i32
  %279 = sub i32 %278, %260
  %280 = load ptr, ptr %0, align 8, !tbaa !20
  %281 = getelementptr inbounds nuw i8, ptr %280, i64 8
  %282 = load i32, ptr %281, align 8, !tbaa !81
  %283 = icmp ugt i32 %282, %279
  br i1 %283, label %284, label %308

284:                                              ; preds = %275
  %285 = load i64, ptr %16, align 8, !tbaa !74
  %286 = load i32, ptr %6, align 8, !tbaa !32
  %287 = zext i32 %286 to i64
  %288 = icmp slt i64 %285, %287
  br i1 %288, label %308, label %289

289:                                              ; preds = %284
  %290 = sub nsw i64 %285, %287
  store i64 %290, ptr %16, align 8, !tbaa !74
  %291 = sub i32 %260, %286
  store i32 %291, ptr %15, align 4, !tbaa !73
  %292 = load ptr, ptr %21, align 8, !tbaa !34
  %293 = getelementptr inbounds nuw i8, ptr %292, i64 %287
  %294 = zext i32 %291 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %292, ptr align 1 %293, i64 %294, i1 false)
  %295 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %296 = load i32, ptr %295, align 8, !tbaa !124
  %297 = icmp ult i32 %296, 2
  br i1 %297, label %298, label %300

298:                                              ; preds = %289
  %299 = add nuw nsw i32 %296, 1
  store i32 %299, ptr %295, align 8, !tbaa !124
  br label %300

300:                                              ; preds = %298, %289
  %301 = load i32, ptr %6, align 8, !tbaa !32
  %302 = add i32 %301, %279
  %303 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %304 = load i32, ptr %303, align 4, !tbaa !76
  %305 = load i32, ptr %15, align 4, !tbaa !73
  %306 = icmp ugt i32 %304, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %300
  store i32 %305, ptr %303, align 4, !tbaa !76
  br label %308

308:                                              ; preds = %307, %300, %284, %275
  %309 = phi i32 [ %305, %307 ], [ %305, %300 ], [ %260, %284 ], [ %260, %275 ]
  %310 = phi i32 [ %302, %307 ], [ %302, %300 ], [ %279, %284 ], [ %279, %275 ]
  %311 = load ptr, ptr %0, align 8, !tbaa !20
  %312 = getelementptr inbounds nuw i8, ptr %311, i64 8
  %313 = load i32, ptr %312, align 8, !tbaa !81
  %314 = tail call i32 @llvm.umin.i32(i32 %310, i32 %313)
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %349, label %316

316:                                              ; preds = %308
  %317 = load ptr, ptr %21, align 8, !tbaa !34
  %318 = zext i32 %309 to i64
  %319 = getelementptr inbounds nuw i8, ptr %317, i64 %318
  %320 = sub i32 %313, %314
  store i32 %320, ptr %312, align 8, !tbaa !81
  %321 = load ptr, ptr %311, align 8, !tbaa !82
  %322 = zext i32 %314 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %319, ptr align 1 %321, i64 %322, i1 false)
  %323 = getelementptr inbounds nuw i8, ptr %311, i64 56
  %324 = load ptr, ptr %323, align 8, !tbaa !19
  %325 = getelementptr inbounds nuw i8, ptr %324, i64 48
  %326 = load i32, ptr %325, align 8, !tbaa !30
  switch i32 %326, label %335 [
    i32 1, label %327
    i32 2, label %331
  ]

327:                                              ; preds = %316
  %328 = getelementptr inbounds nuw i8, ptr %311, i64 96
  %329 = load i64, ptr %328, align 8, !tbaa !59
  %330 = tail call i64 @adler32(i64 noundef %329, ptr noundef %319, i32 noundef %314) #11
  store i64 %330, ptr %328, align 8, !tbaa !59
  br label %335

331:                                              ; preds = %316
  %332 = getelementptr inbounds nuw i8, ptr %311, i64 96
  %333 = load i64, ptr %332, align 8, !tbaa !59
  %334 = tail call i64 @crc32(i64 noundef %333, ptr noundef %319, i32 noundef %314) #11
  store i64 %334, ptr %332, align 8, !tbaa !59
  br label %335

335:                                              ; preds = %331, %327, %316
  %336 = load ptr, ptr %311, align 8, !tbaa !82
  %337 = getelementptr inbounds nuw i8, ptr %336, i64 %322
  store ptr %337, ptr %311, align 8, !tbaa !82
  %338 = getelementptr inbounds nuw i8, ptr %311, i64 16
  %339 = load i64, ptr %338, align 8, !tbaa !53
  %340 = add i64 %339, %322
  store i64 %340, ptr %338, align 8, !tbaa !53
  %341 = load i32, ptr %15, align 4, !tbaa !73
  %342 = add i32 %341, %314
  store i32 %342, ptr %15, align 4, !tbaa !73
  %343 = load i32, ptr %6, align 8, !tbaa !32
  %344 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %345 = load i32, ptr %344, align 4, !tbaa !76
  %346 = sub i32 %343, %345
  %347 = tail call i32 @llvm.umin.i32(i32 %314, i32 %346)
  %348 = add i32 %347, %345
  store i32 %348, ptr %344, align 4, !tbaa !76
  br label %349

349:                                              ; preds = %335, %308
  %350 = phi i32 [ %342, %335 ], [ %309, %308 ]
  %351 = load i64, ptr %261, align 8, !tbaa !38
  %352 = zext i32 %350 to i64
  %353 = icmp ult i64 %351, %352
  br i1 %353, label %354, label %355

354:                                              ; preds = %349
  store i64 %352, ptr %261, align 8, !tbaa !38
  br label %355

355:                                              ; preds = %354, %349
  %356 = load i32, ptr %14, align 4, !tbaa !100
  %357 = add i32 %356, 42
  %358 = lshr i32 %357, 3
  %359 = load i64, ptr %3, align 8, !tbaa !41
  %360 = zext nneg i32 %358 to i64
  %361 = sub i64 %359, %360
  %362 = tail call i64 @llvm.umin.i64(i64 %361, i64 65535)
  %363 = trunc nuw nsw i64 %362 to i32
  %364 = load i64, ptr %16, align 8, !tbaa !74
  %365 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %352, i64 %364), !nosanitize !57
  %366 = extractvalue { i64, i1 } %365, 1, !nosanitize !57
  br i1 %366, label %.loopexit24, label %367, !prof !58, !nosanitize !57

367:                                              ; preds = %355
  %368 = load i32, ptr %6, align 8, !tbaa !32
  %369 = tail call i32 @llvm.umin.i32(i32 %368, i32 %363)
  %370 = extractvalue { i64, i1 } %365, 0, !nosanitize !57
  %371 = trunc i64 %370 to i32
  %372 = icmp ugt i32 %369, %371
  br i1 %372, label %373, label %382

373:                                              ; preds = %367
  %374 = icmp ne i32 %371, 0
  %375 = or i1 %17, %374
  %376 = and i1 %18, %375
  br i1 %376, label %377, label %438

377:                                              ; preds = %373
  %378 = load ptr, ptr %0, align 8, !tbaa !20
  %379 = getelementptr inbounds nuw i8, ptr %378, i64 8
  %380 = load i32, ptr %379, align 8, !tbaa !81
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %438

382:                                              ; preds = %377, %367
  %383 = tail call i32 @llvm.umin.i32(i32 %363, i32 %371)
  br i1 %17, label %384, label %392

384:                                              ; preds = %382
  %385 = load ptr, ptr %0, align 8, !tbaa !20
  %386 = getelementptr inbounds nuw i8, ptr %385, i64 8
  %387 = load i32, ptr %386, align 8, !tbaa !81
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %384
  %390 = icmp uge i32 %363, %371
  %391 = zext i1 %390 to i32
  br label %392

392:                                              ; preds = %389, %384, %382
  %393 = phi i32 [ 0, %384 ], [ 0, %382 ], [ %391, %389 ]
  %394 = load ptr, ptr %21, align 8, !tbaa !34
  %395 = getelementptr inbounds i8, ptr %394, i64 %364
  %396 = zext nneg i32 %383 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %395, i64 noundef %396, i32 noundef %393) #11
  %397 = load i64, ptr %16, align 8, !tbaa !74
  %398 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %397, i64 %396), !nosanitize !57
  %399 = extractvalue { i64, i1 } %398, 1, !nosanitize !57
  br i1 %399, label %.loopexit25, label %400, !prof !58, !nosanitize !57

400:                                              ; preds = %392
  %401 = extractvalue { i64, i1 } %398, 0, !nosanitize !57
  store i64 %401, ptr %16, align 8, !tbaa !74
  %402 = load ptr, ptr %0, align 8, !tbaa !20
  %403 = getelementptr inbounds nuw i8, ptr %402, i64 56
  %404 = load ptr, ptr %403, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %404) #11
  %405 = getelementptr inbounds nuw i8, ptr %404, i64 40
  %406 = load i64, ptr %405, align 8, !tbaa !55
  %407 = getelementptr inbounds nuw i8, ptr %402, i64 32
  %408 = load i32, ptr %407, align 8, !tbaa !106
  %409 = zext i32 %408 to i64
  %410 = tail call i64 @llvm.umin.i64(i64 %406, i64 %409)
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %433, label %412

412:                                              ; preds = %400
  %413 = trunc nuw i64 %410 to i32
  %414 = getelementptr inbounds nuw i8, ptr %402, i64 24
  %415 = load ptr, ptr %414, align 8, !tbaa !105
  %416 = getelementptr inbounds nuw i8, ptr %404, i64 32
  %417 = load ptr, ptr %416, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %415, ptr align 1 %417, i64 %410, i1 false)
  %418 = load ptr, ptr %414, align 8, !tbaa !105
  %419 = getelementptr inbounds nuw i8, ptr %418, i64 %410
  store ptr %419, ptr %414, align 8, !tbaa !105
  %420 = load ptr, ptr %416, align 8, !tbaa !56
  %421 = getelementptr inbounds nuw i8, ptr %420, i64 %410
  store ptr %421, ptr %416, align 8, !tbaa !56
  %422 = getelementptr inbounds nuw i8, ptr %402, i64 40
  %423 = load i64, ptr %422, align 8, !tbaa !107
  %424 = add i64 %423, %410
  store i64 %424, ptr %422, align 8, !tbaa !107
  %425 = load i32, ptr %407, align 8, !tbaa !106
  %426 = sub i32 %425, %413
  store i32 %426, ptr %407, align 8, !tbaa !106
  %427 = load i64, ptr %405, align 8, !tbaa !55
  %428 = sub i64 %427, %410
  store i64 %428, ptr %405, align 8, !tbaa !55
  %429 = icmp eq i64 %427, %410
  br i1 %429, label %430, label %433

430:                                              ; preds = %412
  %431 = getelementptr inbounds nuw i8, ptr %404, i64 16
  %432 = load ptr, ptr %431, align 8, !tbaa !40
  store ptr %432, ptr %416, align 8, !tbaa !56
  br label %433

433:                                              ; preds = %430, %412, %400
  %434 = icmp eq i32 %393, 0
  br i1 %434, label %438, label %435

435:                                              ; preds = %433, %265
  %436 = phi i32 [ 3, %265 ], [ 2, %433 ]
  %437 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %437, align 8, !tbaa !101
  br label %438

438:                                              ; preds = %435, %433, %377, %373, %272
  %439 = phi i32 [ 0, %377 ], [ 1, %272 ], [ 0, %373 ], [ 0, %433 ], [ %436, %435 ]
  ret i32 %439
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_huff(ptr noundef nonnull %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  br label %24

24:                                               ; preds = %.backedge, %2
  %25 = load i32, ptr %3, align 4, !tbaa !75
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %277

27:                                               ; preds = %24
  %28 = load i32, ptr %4, align 8, !tbaa !32
  %29 = add i32 %28, -262
  %30 = zext i32 %28 to i64
  %31 = insertelement <2 x i32> poison, i32 %28, i64 0
  %32 = shufflevector <2 x i32> %31, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %33

33:                                               ; preds = %235, %27
  %34 = phi i32 [ %184, %235 ], [ 0, %27 ]
  %35 = load i64, ptr %5, align 8, !tbaa !61
  %36 = zext nneg i32 %34 to i64
  %37 = load i32, ptr %6, align 4, !tbaa !73
  %38 = zext i32 %37 to i64
  %39 = add nuw nsw i64 %36, %38
  %40 = sub i64 %35, %39
  %41 = trunc i64 %40 to i32
  %42 = load i32, ptr %4, align 8, !tbaa !32
  %43 = add i32 %29, %42
  %44 = icmp ult i32 %37, %43
  br i1 %44, label %143, label %45

45:                                               ; preds = %33
  %46 = load ptr, ptr %7, align 8, !tbaa !34
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 %30
  %48 = sub i32 %28, %41
  %49 = zext i32 %48 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 %47, i64 %49, i1 false)
  %50 = load <2 x i32>, ptr %6, align 4, !tbaa !4
  %51 = sub <2 x i32> %50, %32
  store <2 x i32> %51, ptr %6, align 4, !tbaa !4
  %52 = load i64, ptr %8, align 8, !tbaa !74
  %53 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %52, i64 %30), !nosanitize !57
  %54 = extractvalue { i64, i1 } %53, 1, !nosanitize !57
  br i1 %54, label %55, label %56, !prof !58, !nosanitize !57

55:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

56:                                               ; preds = %45
  %57 = extractvalue { i64, i1 } %53, 0, !nosanitize !57
  store i64 %57, ptr %8, align 8, !tbaa !74
  %58 = load i32, ptr %9, align 4, !tbaa !76
  %59 = extractelement <2 x i32> %51, i64 0
  %60 = icmp ugt i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 %59, ptr %9, align 4, !tbaa !76
  br label %62

62:                                               ; preds = %61, %56
  %63 = load i32, ptr %4, align 8, !tbaa !32
  %64 = load i32, ptr %10, align 4, !tbaa !36
  %65 = load ptr, ptr %11, align 8, !tbaa !37
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds nuw [2 x i8], ptr %65, i64 %66
  %68 = add i32 %64, -1
  %69 = zext i32 %68 to i64
  %70 = add nuw nsw i64 %69, 1
  %71 = icmp ult i32 %68, 7
  br i1 %71, label %.preheader44, label %72

72:                                               ; preds = %62
  %73 = and i64 %70, 8589934584
  %74 = insertelement <8 x i32> poison, i32 %63, i64 0
  %75 = shufflevector <8 x i32> %74, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %76

76:                                               ; preds = %76, %72
  %77 = phi i64 [ 0, %72 ], [ %85, %76 ]
  %78 = mul i64 %77, -2
  %79 = getelementptr i8, ptr %67, i64 %78
  %80 = getelementptr inbounds i8, ptr %79, i64 -16
  %81 = load <8 x i16>, ptr %80, align 2, !tbaa !62
  %82 = zext <8 x i16> %81 to <8 x i32>
  %83 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %82, <8 x i32> %75)
  %84 = trunc nuw <8 x i32> %83 to <8 x i16>
  store <8 x i16> %84, ptr %80, align 2, !tbaa !62
  %85 = add nuw i64 %77, 8
  %86 = icmp eq i64 %85, %73
  br i1 %86, label %87, label %76, !llvm.loop !130

87:                                               ; preds = %76
  %88 = mul nsw i64 %73, -2
  %89 = getelementptr i8, ptr %67, i64 %88
  %90 = trunc i64 %73 to i32
  %91 = sub i32 %64, %90
  %92 = icmp eq i64 %70, %73
  br i1 %92, label %.loopexit22, label %.preheader44

.preheader44:                                     ; preds = %87, %62
  %.ph45 = phi ptr [ %89, %87 ], [ %67, %62 ]
  %.ph46 = phi i32 [ %91, %87 ], [ %64, %62 ]
  br label %93

93:                                               ; preds = %.preheader44, %93
  %94 = phi ptr [ %96, %93 ], [ %.ph45, %.preheader44 ]
  %95 = phi i32 [ %101, %93 ], [ %.ph46, %.preheader44 ]
  %96 = getelementptr inbounds i8, ptr %94, i64 -2
  %97 = load i16, ptr %96, align 2, !tbaa !62
  %98 = zext i16 %97 to i32
  %99 = tail call i32 @llvm.usub.sat.i32(i32 %98, i32 %63)
  %100 = trunc nuw i32 %99 to i16
  store i16 %100, ptr %96, align 2, !tbaa !62
  %101 = add i32 %95, -1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %.loopexit22, label %93, !llvm.loop !131

.loopexit22:                                      ; preds = %93, %87
  %103 = load ptr, ptr %12, align 8, !tbaa !35
  %104 = zext i32 %63 to i64
  %105 = getelementptr inbounds nuw [2 x i8], ptr %103, i64 %104
  %106 = add i32 %63, -1
  %107 = zext i32 %106 to i64
  %108 = add nuw nsw i64 %107, 1
  %109 = icmp ult i32 %106, 7
  br i1 %109, label %.preheader, label %110

110:                                              ; preds = %.loopexit22
  %111 = and i64 %108, 8589934584
  %112 = insertelement <8 x i32> poison, i32 %63, i64 0
  %113 = shufflevector <8 x i32> %112, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %114

114:                                              ; preds = %114, %110
  %115 = phi i64 [ 0, %110 ], [ %123, %114 ]
  %116 = mul i64 %115, -2
  %117 = getelementptr i8, ptr %105, i64 %116
  %118 = getelementptr inbounds i8, ptr %117, i64 -16
  %119 = load <8 x i16>, ptr %118, align 2, !tbaa !62
  %120 = zext <8 x i16> %119 to <8 x i32>
  %121 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %120, <8 x i32> %113)
  %122 = trunc nuw <8 x i32> %121 to <8 x i16>
  store <8 x i16> %122, ptr %118, align 2, !tbaa !62
  %123 = add nuw i64 %115, 8
  %124 = icmp eq i64 %123, %111
  br i1 %124, label %125, label %114, !llvm.loop !132

125:                                              ; preds = %114
  %126 = mul nsw i64 %111, -2
  %127 = getelementptr i8, ptr %105, i64 %126
  %128 = trunc i64 %111 to i32
  %129 = sub i32 %63, %128
  %130 = icmp eq i64 %108, %111
  br i1 %130, label %.loopexit21, label %.preheader

.preheader:                                       ; preds = %125, %.loopexit22
  %.ph = phi ptr [ %127, %125 ], [ %105, %.loopexit22 ]
  %.ph43 = phi i32 [ %129, %125 ], [ %63, %.loopexit22 ]
  br label %131

131:                                              ; preds = %.preheader, %131
  %132 = phi ptr [ %134, %131 ], [ %.ph, %.preheader ]
  %133 = phi i32 [ %139, %131 ], [ %.ph43, %.preheader ]
  %134 = getelementptr inbounds i8, ptr %132, i64 -2
  %135 = load i16, ptr %134, align 2, !tbaa !62
  %136 = zext i16 %135 to i32
  %137 = tail call i32 @llvm.usub.sat.i32(i32 %136, i32 %63)
  %138 = trunc nuw i32 %137 to i16
  store i16 %138, ptr %134, align 2, !tbaa !62
  %139 = add i32 %133, -1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %.loopexit21, label %131, !llvm.loop !133

.loopexit21:                                      ; preds = %131, %125
  store i32 1, ptr %13, align 8, !tbaa !63
  %141 = add i32 %28, %41
  %142 = load i32, ptr %3, align 4, !tbaa !75
  br label %143

143:                                              ; preds = %.loopexit21, %33
  %144 = phi i32 [ %142, %.loopexit21 ], [ %34, %33 ]
  %145 = phi i32 [ %59, %.loopexit21 ], [ %37, %33 ]
  %146 = phi i32 [ %141, %.loopexit21 ], [ %41, %33 ]
  %147 = load ptr, ptr %0, align 8, !tbaa !20
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 8
  %149 = load i32, ptr %148, align 8, !tbaa !81
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %240, label %151

151:                                              ; preds = %143
  %152 = load ptr, ptr %7, align 8, !tbaa !34
  %153 = zext i32 %145 to i64
  %154 = getelementptr inbounds nuw i8, ptr %152, i64 %153
  %155 = zext i32 %144 to i64
  %156 = getelementptr inbounds nuw i8, ptr %154, i64 %155
  %157 = tail call i32 @llvm.umin.i32(i32 %149, i32 %146)
  %158 = icmp eq i32 %146, 0
  br i1 %158, label %182, label %159

159:                                              ; preds = %151
  %160 = sub i32 %149, %157
  store i32 %160, ptr %148, align 8, !tbaa !81
  %161 = load ptr, ptr %147, align 8, !tbaa !82
  %162 = zext i32 %157 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %156, ptr align 1 %161, i64 %162, i1 false)
  %163 = getelementptr inbounds nuw i8, ptr %147, i64 56
  %164 = load ptr, ptr %163, align 8, !tbaa !19
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 48
  %166 = load i32, ptr %165, align 8, !tbaa !30
  switch i32 %166, label %175 [
    i32 1, label %167
    i32 2, label %171
  ]

167:                                              ; preds = %159
  %168 = getelementptr inbounds nuw i8, ptr %147, i64 96
  %169 = load i64, ptr %168, align 8, !tbaa !59
  %170 = tail call i64 @adler32(i64 noundef %169, ptr noundef %156, i32 noundef %157) #11
  store i64 %170, ptr %168, align 8, !tbaa !59
  br label %175

171:                                              ; preds = %159
  %172 = getelementptr inbounds nuw i8, ptr %147, i64 96
  %173 = load i64, ptr %172, align 8, !tbaa !59
  %174 = tail call i64 @crc32(i64 noundef %173, ptr noundef %156, i32 noundef %157) #11
  store i64 %174, ptr %172, align 8, !tbaa !59
  br label %175

175:                                              ; preds = %171, %167, %159
  %176 = load ptr, ptr %147, align 8, !tbaa !82
  %177 = getelementptr inbounds nuw i8, ptr %176, i64 %162
  store ptr %177, ptr %147, align 8, !tbaa !82
  %178 = getelementptr inbounds nuw i8, ptr %147, i64 16
  %179 = load i64, ptr %178, align 8, !tbaa !53
  %180 = add i64 %179, %162
  store i64 %180, ptr %178, align 8, !tbaa !53
  %181 = load i32, ptr %3, align 4, !tbaa !75
  br label %182

182:                                              ; preds = %175, %151
  %183 = phi i32 [ %144, %151 ], [ %181, %175 ]
  %184 = add i32 %183, %157
  store i32 %184, ptr %3, align 4, !tbaa !75
  %185 = load i32, ptr %9, align 4, !tbaa !76
  %186 = add i32 %185, %184
  %187 = icmp ugt i32 %186, 2
  br i1 %187, label %188, label %.loopexit

188:                                              ; preds = %182
  %189 = load i32, ptr %6, align 4, !tbaa !73
  %190 = sub i32 %189, %185
  %191 = load ptr, ptr %7, align 8, !tbaa !34
  %192 = zext i32 %190 to i64
  %193 = getelementptr inbounds nuw i8, ptr %191, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !8
  %195 = zext i8 %194 to i32
  store i32 %195, ptr %14, align 8, !tbaa !80
  %196 = load i32, ptr %15, align 8, !tbaa !51
  %197 = shl i32 %195, %196
  %198 = add i32 %190, 1
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds nuw i8, ptr %191, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !8
  %202 = zext i8 %201 to i32
  %203 = xor i32 %197, %202
  %204 = load i32, ptr %16, align 4, !tbaa !50
  %205 = and i32 %203, %204
  store i32 %205, ptr %14, align 8, !tbaa !80
  br label %206

206:                                              ; preds = %211, %188
  %207 = phi i32 [ %219, %211 ], [ %205, %188 ]
  %208 = phi i32 [ %231, %211 ], [ %185, %188 ]
  %209 = phi i32 [ %230, %211 ], [ %190, %188 ]
  %210 = icmp eq i32 %208, 0
  br i1 %210, label %.loopexit, label %211

211:                                              ; preds = %206
  %212 = shl i32 %207, %196
  %213 = add i32 %209, 2
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds nuw i8, ptr %191, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !8
  %217 = zext i8 %216 to i32
  %218 = xor i32 %212, %217
  %219 = and i32 %218, %204
  store i32 %219, ptr %14, align 8, !tbaa !80
  %220 = load ptr, ptr %11, align 8, !tbaa !37
  %221 = zext i32 %219 to i64
  %222 = getelementptr inbounds nuw [2 x i8], ptr %220, i64 %221
  %223 = load i16, ptr %222, align 2, !tbaa !62
  %224 = load ptr, ptr %12, align 8, !tbaa !35
  %225 = load i32, ptr %17, align 8, !tbaa !33
  %226 = and i32 %225, %209
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds nuw [2 x i8], ptr %224, i64 %227
  store i16 %223, ptr %228, align 2, !tbaa !62
  %229 = trunc i32 %209 to i16
  store i16 %229, ptr %222, align 2, !tbaa !62
  %230 = add i32 %209, 1
  %231 = add i32 %208, -1
  store i32 %231, ptr %9, align 4, !tbaa !76
  %232 = add i32 %231, %184
  %233 = icmp ult i32 %232, 3
  br i1 %233, label %.loopexit, label %206, !llvm.loop !91

.loopexit:                                        ; preds = %211, %206, %182
  %234 = icmp ult i32 %184, 262
  br i1 %234, label %235, label %240

235:                                              ; preds = %.loopexit
  %236 = load ptr, ptr %0, align 8, !tbaa !20
  %237 = getelementptr inbounds nuw i8, ptr %236, i64 8
  %238 = load i32, ptr %237, align 8, !tbaa !81
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %33, !llvm.loop !92

240:                                              ; preds = %235, %.loopexit, %143
  %241 = phi i32 [ %184, %235 ], [ %184, %.loopexit ], [ %144, %143 ]
  %242 = load i64, ptr %18, align 8, !tbaa !38
  %243 = load i64, ptr %5, align 8, !tbaa !61
  %244 = icmp ult i64 %242, %243
  br i1 %244, label %245, label %272

245:                                              ; preds = %240
  %246 = load i32, ptr %6, align 4, !tbaa !73
  %247 = zext i32 %246 to i64
  %248 = zext i32 %241 to i64
  %249 = add nuw nsw i64 %247, %248
  %250 = icmp ult i64 %242, %249
  br i1 %250, label %251, label %257

251:                                              ; preds = %245
  %252 = sub i64 %243, %249
  %253 = tail call i64 @llvm.umin.i64(i64 %252, i64 258)
  %254 = load ptr, ptr %7, align 8, !tbaa !34
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 %249
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %255, i8 0, i64 %253, i1 false)
  %256 = add nuw nsw i64 %253, %249
  br label %269

257:                                              ; preds = %245
  %258 = add nuw nsw i64 %249, 258
  %259 = icmp ult i64 %242, %258
  br i1 %259, label %260, label %272

260:                                              ; preds = %257
  %261 = sub nuw nsw i64 %258, %242
  %262 = sub i64 %243, %242
  %263 = tail call i64 @llvm.umin.i64(i64 %261, i64 %262)
  %264 = load ptr, ptr %7, align 8, !tbaa !34
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 %242
  %266 = and i64 %263, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %265, i8 0, i64 %266, i1 false)
  %267 = load i64, ptr %18, align 8, !tbaa !38
  %268 = add i64 %267, %263
  br label %269

269:                                              ; preds = %260, %251
  %270 = phi i64 [ %256, %251 ], [ %268, %260 ]
  store i64 %270, ptr %18, align 8, !tbaa !38
  %271 = load i32, ptr %3, align 4, !tbaa !75
  br label %272

272:                                              ; preds = %269, %257, %240
  %273 = phi i32 [ %241, %240 ], [ %241, %257 ], [ %271, %269 ]
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = icmp eq i32 %1, 0
  br i1 %276, label %.loopexit24, label %361

277:                                              ; preds = %272, %24
  store i32 0, ptr %19, align 8, !tbaa !78
  %278 = load ptr, ptr %7, align 8, !tbaa !34
  %279 = load i32, ptr %6, align 4, !tbaa !73
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds nuw i8, ptr %278, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !8
  %283 = load ptr, ptr %20, align 8, !tbaa !44
  %284 = load i32, ptr %21, align 4, !tbaa !134
  %285 = add i32 %284, 1
  store i32 %285, ptr %21, align 4, !tbaa !134
  %286 = zext i32 %284 to i64
  %287 = getelementptr inbounds nuw i8, ptr %283, i64 %286
  store i8 0, ptr %287, align 1, !tbaa !8
  %288 = load ptr, ptr %20, align 8, !tbaa !44
  %289 = load i32, ptr %21, align 4, !tbaa !134
  %290 = add i32 %289, 1
  store i32 %290, ptr %21, align 4, !tbaa !134
  %291 = zext i32 %289 to i64
  %292 = getelementptr inbounds nuw i8, ptr %288, i64 %291
  store i8 0, ptr %292, align 1, !tbaa !8
  %293 = load ptr, ptr %20, align 8, !tbaa !44
  %294 = load i32, ptr %21, align 4, !tbaa !134
  %295 = add i32 %294, 1
  store i32 %295, ptr %21, align 4, !tbaa !134
  %296 = zext i32 %294 to i64
  %297 = getelementptr inbounds nuw i8, ptr %293, i64 %296
  store i8 %282, ptr %297, align 1, !tbaa !8
  %298 = zext i8 %282 to i64
  %299 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %298
  %300 = load i16, ptr %299, align 4, !tbaa !8
  %301 = add i16 %300, 1
  store i16 %301, ptr %299, align 4, !tbaa !8
  %302 = load i32, ptr %21, align 4, !tbaa !134
  %303 = load i32, ptr %23, align 8, !tbaa !45
  %304 = icmp eq i32 %302, %303
  %305 = load i32, ptr %3, align 4, !tbaa !75
  %306 = add i32 %305, -1
  store i32 %306, ptr %3, align 4, !tbaa !75
  %307 = load i32, ptr %6, align 4, !tbaa !73
  %308 = add i32 %307, 1
  store i32 %308, ptr %6, align 4, !tbaa !73
  br i1 %304, label %309, label %.backedge

309:                                              ; preds = %277
  %310 = load i64, ptr %8, align 8, !tbaa !74
  %311 = icmp sgt i64 %310, -1
  br i1 %311, label %312, label %316

312:                                              ; preds = %309
  %313 = load ptr, ptr %7, align 8, !tbaa !34
  %314 = and i64 %310, 4294967295
  %315 = getelementptr inbounds nuw i8, ptr %313, i64 %314
  br label %316

316:                                              ; preds = %312, %309
  %317 = phi ptr [ %315, %312 ], [ null, %309 ]
  %318 = zext i32 %308 to i64
  %319 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %318, i64 %310), !nosanitize !57
  %320 = extractvalue { i64, i1 } %319, 1, !nosanitize !57
  br i1 %320, label %.loopexit23, label %321, !prof !58, !nosanitize !57

.loopexit23:                                      ; preds = %316, %427, %370
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

321:                                              ; preds = %316
  %322 = extractvalue { i64, i1 } %319, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %317, i64 noundef %322, i32 noundef 0) #11
  %323 = load i32, ptr %6, align 4, !tbaa !73
  %324 = zext i32 %323 to i64
  store i64 %324, ptr %8, align 8, !tbaa !74
  %325 = load ptr, ptr %0, align 8, !tbaa !20
  %326 = getelementptr inbounds nuw i8, ptr %325, i64 56
  %327 = load ptr, ptr %326, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %327) #11
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 40
  %329 = load i64, ptr %328, align 8, !tbaa !55
  %330 = getelementptr inbounds nuw i8, ptr %325, i64 32
  %331 = load i32, ptr %330, align 8, !tbaa !106
  %332 = zext i32 %331 to i64
  %333 = tail call i64 @llvm.umin.i64(i64 %329, i64 %332)
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %356, label %335

335:                                              ; preds = %321
  %336 = trunc nuw i64 %333 to i32
  %337 = getelementptr inbounds nuw i8, ptr %325, i64 24
  %338 = load ptr, ptr %337, align 8, !tbaa !105
  %339 = getelementptr inbounds nuw i8, ptr %327, i64 32
  %340 = load ptr, ptr %339, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %338, ptr align 1 %340, i64 %333, i1 false)
  %341 = load ptr, ptr %337, align 8, !tbaa !105
  %342 = getelementptr inbounds nuw i8, ptr %341, i64 %333
  store ptr %342, ptr %337, align 8, !tbaa !105
  %343 = load ptr, ptr %339, align 8, !tbaa !56
  %344 = getelementptr inbounds nuw i8, ptr %343, i64 %333
  store ptr %344, ptr %339, align 8, !tbaa !56
  %345 = getelementptr inbounds nuw i8, ptr %325, i64 40
  %346 = load i64, ptr %345, align 8, !tbaa !107
  %347 = add i64 %346, %333
  store i64 %347, ptr %345, align 8, !tbaa !107
  %348 = load i32, ptr %330, align 8, !tbaa !106
  %349 = sub i32 %348, %336
  store i32 %349, ptr %330, align 8, !tbaa !106
  %350 = load i64, ptr %328, align 8, !tbaa !55
  %351 = sub i64 %350, %333
  store i64 %351, ptr %328, align 8, !tbaa !55
  %352 = icmp eq i64 %350, %333
  br i1 %352, label %353, label %356

353:                                              ; preds = %335
  %354 = getelementptr inbounds nuw i8, ptr %327, i64 16
  %355 = load ptr, ptr %354, align 8, !tbaa !40
  store ptr %355, ptr %339, align 8, !tbaa !56
  br label %356

356:                                              ; preds = %353, %335, %321
  %357 = load ptr, ptr %0, align 8, !tbaa !20
  %358 = getelementptr inbounds nuw i8, ptr %357, i64 32
  %359 = load i32, ptr %358, align 8, !tbaa !106
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %.loopexit24, label %.backedge

.backedge:                                        ; preds = %356, %277
  br label %24

361:                                              ; preds = %275
  store i32 0, ptr %9, align 4, !tbaa !76
  %362 = icmp eq i32 %1, 4
  br i1 %362, label %363, label %417

363:                                              ; preds = %361
  %364 = load i64, ptr %8, align 8, !tbaa !74
  %365 = icmp sgt i64 %364, -1
  br i1 %365, label %366, label %370

366:                                              ; preds = %363
  %367 = load ptr, ptr %7, align 8, !tbaa !34
  %368 = and i64 %364, 4294967295
  %369 = getelementptr inbounds nuw i8, ptr %367, i64 %368
  br label %370

370:                                              ; preds = %366, %363
  %371 = phi ptr [ %369, %366 ], [ null, %363 ]
  %372 = load i32, ptr %6, align 4, !tbaa !73
  %373 = zext i32 %372 to i64
  %374 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %373, i64 %364), !nosanitize !57
  %375 = extractvalue { i64, i1 } %374, 1, !nosanitize !57
  br i1 %375, label %.loopexit23, label %376, !prof !58, !nosanitize !57

376:                                              ; preds = %370
  %377 = extractvalue { i64, i1 } %374, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %371, i64 noundef %377, i32 noundef 1) #11
  %378 = load i32, ptr %6, align 4, !tbaa !73
  %379 = zext i32 %378 to i64
  store i64 %379, ptr %8, align 8, !tbaa !74
  %380 = load ptr, ptr %0, align 8, !tbaa !20
  %381 = getelementptr inbounds nuw i8, ptr %380, i64 56
  %382 = load ptr, ptr %381, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %382) #11
  %383 = getelementptr inbounds nuw i8, ptr %382, i64 40
  %384 = load i64, ptr %383, align 8, !tbaa !55
  %385 = getelementptr inbounds nuw i8, ptr %380, i64 32
  %386 = load i32, ptr %385, align 8, !tbaa !106
  %387 = zext i32 %386 to i64
  %388 = tail call i64 @llvm.umin.i64(i64 %384, i64 %387)
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %411, label %390

390:                                              ; preds = %376
  %391 = trunc nuw i64 %388 to i32
  %392 = getelementptr inbounds nuw i8, ptr %380, i64 24
  %393 = load ptr, ptr %392, align 8, !tbaa !105
  %394 = getelementptr inbounds nuw i8, ptr %382, i64 32
  %395 = load ptr, ptr %394, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %393, ptr align 1 %395, i64 %388, i1 false)
  %396 = load ptr, ptr %392, align 8, !tbaa !105
  %397 = getelementptr inbounds nuw i8, ptr %396, i64 %388
  store ptr %397, ptr %392, align 8, !tbaa !105
  %398 = load ptr, ptr %394, align 8, !tbaa !56
  %399 = getelementptr inbounds nuw i8, ptr %398, i64 %388
  store ptr %399, ptr %394, align 8, !tbaa !56
  %400 = getelementptr inbounds nuw i8, ptr %380, i64 40
  %401 = load i64, ptr %400, align 8, !tbaa !107
  %402 = add i64 %401, %388
  store i64 %402, ptr %400, align 8, !tbaa !107
  %403 = load i32, ptr %385, align 8, !tbaa !106
  %404 = sub i32 %403, %391
  store i32 %404, ptr %385, align 8, !tbaa !106
  %405 = load i64, ptr %383, align 8, !tbaa !55
  %406 = sub i64 %405, %388
  store i64 %406, ptr %383, align 8, !tbaa !55
  %407 = icmp eq i64 %405, %388
  br i1 %407, label %408, label %411

408:                                              ; preds = %390
  %409 = getelementptr inbounds nuw i8, ptr %382, i64 16
  %410 = load ptr, ptr %409, align 8, !tbaa !40
  store ptr %410, ptr %394, align 8, !tbaa !56
  br label %411

411:                                              ; preds = %408, %390, %376
  %412 = load ptr, ptr %0, align 8, !tbaa !20
  %413 = getelementptr inbounds nuw i8, ptr %412, i64 32
  %414 = load i32, ptr %413, align 8, !tbaa !106
  %415 = icmp eq i32 %414, 0
  %416 = select i1 %415, i32 2, i32 3
  br label %.loopexit24

417:                                              ; preds = %361
  %418 = load i32, ptr %21, align 4, !tbaa !134
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %473, label %420

420:                                              ; preds = %417
  %421 = load i64, ptr %8, align 8, !tbaa !74
  %422 = icmp sgt i64 %421, -1
  br i1 %422, label %423, label %427

423:                                              ; preds = %420
  %424 = load ptr, ptr %7, align 8, !tbaa !34
  %425 = and i64 %421, 4294967295
  %426 = getelementptr inbounds nuw i8, ptr %424, i64 %425
  br label %427

427:                                              ; preds = %423, %420
  %428 = phi ptr [ %426, %423 ], [ null, %420 ]
  %429 = load i32, ptr %6, align 4, !tbaa !73
  %430 = zext i32 %429 to i64
  %431 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %430, i64 %421), !nosanitize !57
  %432 = extractvalue { i64, i1 } %431, 1, !nosanitize !57
  br i1 %432, label %.loopexit23, label %433, !prof !58, !nosanitize !57

433:                                              ; preds = %427
  %434 = extractvalue { i64, i1 } %431, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %428, i64 noundef %434, i32 noundef 0) #11
  %435 = load i32, ptr %6, align 4, !tbaa !73
  %436 = zext i32 %435 to i64
  store i64 %436, ptr %8, align 8, !tbaa !74
  %437 = load ptr, ptr %0, align 8, !tbaa !20
  %438 = getelementptr inbounds nuw i8, ptr %437, i64 56
  %439 = load ptr, ptr %438, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %439) #11
  %440 = getelementptr inbounds nuw i8, ptr %439, i64 40
  %441 = load i64, ptr %440, align 8, !tbaa !55
  %442 = getelementptr inbounds nuw i8, ptr %437, i64 32
  %443 = load i32, ptr %442, align 8, !tbaa !106
  %444 = zext i32 %443 to i64
  %445 = tail call i64 @llvm.umin.i64(i64 %441, i64 %444)
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %468, label %447

447:                                              ; preds = %433
  %448 = trunc nuw i64 %445 to i32
  %449 = getelementptr inbounds nuw i8, ptr %437, i64 24
  %450 = load ptr, ptr %449, align 8, !tbaa !105
  %451 = getelementptr inbounds nuw i8, ptr %439, i64 32
  %452 = load ptr, ptr %451, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %450, ptr align 1 %452, i64 %445, i1 false)
  %453 = load ptr, ptr %449, align 8, !tbaa !105
  %454 = getelementptr inbounds nuw i8, ptr %453, i64 %445
  store ptr %454, ptr %449, align 8, !tbaa !105
  %455 = load ptr, ptr %451, align 8, !tbaa !56
  %456 = getelementptr inbounds nuw i8, ptr %455, i64 %445
  store ptr %456, ptr %451, align 8, !tbaa !56
  %457 = getelementptr inbounds nuw i8, ptr %437, i64 40
  %458 = load i64, ptr %457, align 8, !tbaa !107
  %459 = add i64 %458, %445
  store i64 %459, ptr %457, align 8, !tbaa !107
  %460 = load i32, ptr %442, align 8, !tbaa !106
  %461 = sub i32 %460, %448
  store i32 %461, ptr %442, align 8, !tbaa !106
  %462 = load i64, ptr %440, align 8, !tbaa !55
  %463 = sub i64 %462, %445
  store i64 %463, ptr %440, align 8, !tbaa !55
  %464 = icmp eq i64 %462, %445
  br i1 %464, label %465, label %468

465:                                              ; preds = %447
  %466 = getelementptr inbounds nuw i8, ptr %439, i64 16
  %467 = load ptr, ptr %466, align 8, !tbaa !40
  store ptr %467, ptr %451, align 8, !tbaa !56
  br label %468

468:                                              ; preds = %465, %447, %433
  %469 = load ptr, ptr %0, align 8, !tbaa !20
  %470 = getelementptr inbounds nuw i8, ptr %469, i64 32
  %471 = load i32, ptr %470, align 8, !tbaa !106
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %.loopexit24, label %473

473:                                              ; preds = %468, %417
  br label %.loopexit24

.loopexit24:                                      ; preds = %356, %473, %468, %411, %275
  %474 = phi i32 [ 0, %275 ], [ %416, %411 ], [ 0, %468 ], [ 1, %473 ], [ 0, %356 ]
  ret i32 %474
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_rle(ptr noundef nonnull %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 96
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
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %25 = getelementptr i8, ptr %0, i64 1240
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  br label %27

27:                                               ; preds = %.backedge, %2
  %28 = load i32, ptr %3, align 4, !tbaa !75
  %29 = icmp ult i32 %28, 259
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  store i32 0, ptr %4, align 8, !tbaa !78
  %31 = load i32, ptr %7, align 4, !tbaa !73
  %.pre.pre61.pre = load ptr, ptr %8, align 8, !tbaa !34
  br label %286

32:                                               ; preds = %27
  %33 = load i32, ptr %5, align 8, !tbaa !32
  %34 = add i32 %33, -262
  %35 = zext i32 %33 to i64
  %36 = insertelement <2 x i32> poison, i32 %33, i64 0
  %37 = shufflevector <2 x i32> %36, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %38

38:                                               ; preds = %240, %32
  %39 = phi i32 [ %189, %240 ], [ %28, %32 ]
  %40 = load i64, ptr %6, align 8, !tbaa !61
  %41 = zext nneg i32 %39 to i64
  %42 = load i32, ptr %7, align 4, !tbaa !73
  %43 = zext i32 %42 to i64
  %44 = add nuw nsw i64 %41, %43
  %45 = sub i64 %40, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32, ptr %5, align 8, !tbaa !32
  %48 = add i32 %34, %47
  %49 = icmp ult i32 %42, %48
  br i1 %49, label %148, label %50

50:                                               ; preds = %38
  %51 = load ptr, ptr %8, align 8, !tbaa !34
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 %35
  %53 = sub i32 %33, %46
  %54 = zext i32 %53 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr align 1 %52, i64 %54, i1 false)
  %55 = load <2 x i32>, ptr %7, align 4, !tbaa !4
  %56 = sub <2 x i32> %55, %37
  store <2 x i32> %56, ptr %7, align 4, !tbaa !4
  %57 = load i64, ptr %9, align 8, !tbaa !74
  %58 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %57, i64 %35), !nosanitize !57
  %59 = extractvalue { i64, i1 } %58, 1, !nosanitize !57
  br i1 %59, label %60, label %61, !prof !58, !nosanitize !57

60:                                               ; preds = %50
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

61:                                               ; preds = %50
  %62 = extractvalue { i64, i1 } %58, 0, !nosanitize !57
  store i64 %62, ptr %9, align 8, !tbaa !74
  %63 = load i32, ptr %10, align 4, !tbaa !76
  %64 = extractelement <2 x i32> %56, i64 0
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 %64, ptr %10, align 4, !tbaa !76
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, ptr %5, align 8, !tbaa !32
  %69 = load i32, ptr %11, align 4, !tbaa !36
  %70 = load ptr, ptr %12, align 8, !tbaa !37
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds nuw [2 x i8], ptr %70, i64 %71
  %73 = add i32 %69, -1
  %74 = zext i32 %73 to i64
  %75 = add nuw nsw i64 %74, 1
  %76 = icmp ult i32 %73, 7
  br i1 %76, label %.preheader118, label %77

77:                                               ; preds = %67
  %78 = and i64 %75, 8589934584
  %79 = insertelement <8 x i32> poison, i32 %68, i64 0
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %81

81:                                               ; preds = %81, %77
  %82 = phi i64 [ 0, %77 ], [ %90, %81 ]
  %83 = mul i64 %82, -2
  %84 = getelementptr i8, ptr %72, i64 %83
  %85 = getelementptr inbounds i8, ptr %84, i64 -16
  %86 = load <8 x i16>, ptr %85, align 2, !tbaa !62
  %87 = zext <8 x i16> %86 to <8 x i32>
  %88 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %87, <8 x i32> %80)
  %89 = trunc nuw <8 x i32> %88 to <8 x i16>
  store <8 x i16> %89, ptr %85, align 2, !tbaa !62
  %90 = add nuw i64 %82, 8
  %91 = icmp eq i64 %90, %78
  br i1 %91, label %92, label %81, !llvm.loop !135

92:                                               ; preds = %81
  %93 = mul nsw i64 %78, -2
  %94 = getelementptr i8, ptr %72, i64 %93
  %95 = trunc i64 %78 to i32
  %96 = sub i32 %69, %95
  %97 = icmp eq i64 %75, %78
  br i1 %97, label %.loopexit28, label %.preheader118

.preheader118:                                    ; preds = %92, %67
  %.ph119 = phi ptr [ %94, %92 ], [ %72, %67 ]
  %.ph120 = phi i32 [ %96, %92 ], [ %69, %67 ]
  br label %98

98:                                               ; preds = %.preheader118, %98
  %99 = phi ptr [ %101, %98 ], [ %.ph119, %.preheader118 ]
  %100 = phi i32 [ %106, %98 ], [ %.ph120, %.preheader118 ]
  %101 = getelementptr inbounds i8, ptr %99, i64 -2
  %102 = load i16, ptr %101, align 2, !tbaa !62
  %103 = zext i16 %102 to i32
  %104 = tail call i32 @llvm.usub.sat.i32(i32 %103, i32 %68)
  %105 = trunc nuw i32 %104 to i16
  store i16 %105, ptr %101, align 2, !tbaa !62
  %106 = add i32 %100, -1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %.loopexit28, label %98, !llvm.loop !136

.loopexit28:                                      ; preds = %98, %92
  %108 = load ptr, ptr %13, align 8, !tbaa !35
  %109 = zext i32 %68 to i64
  %110 = getelementptr inbounds nuw [2 x i8], ptr %108, i64 %109
  %111 = add i32 %68, -1
  %112 = zext i32 %111 to i64
  %113 = add nuw nsw i64 %112, 1
  %114 = icmp ult i32 %111, 7
  br i1 %114, label %.preheader, label %115

115:                                              ; preds = %.loopexit28
  %116 = and i64 %113, 8589934584
  %117 = insertelement <8 x i32> poison, i32 %68, i64 0
  %118 = shufflevector <8 x i32> %117, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %119

119:                                              ; preds = %119, %115
  %120 = phi i64 [ 0, %115 ], [ %128, %119 ]
  %121 = mul i64 %120, -2
  %122 = getelementptr i8, ptr %110, i64 %121
  %123 = getelementptr inbounds i8, ptr %122, i64 -16
  %124 = load <8 x i16>, ptr %123, align 2, !tbaa !62
  %125 = zext <8 x i16> %124 to <8 x i32>
  %126 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %125, <8 x i32> %118)
  %127 = trunc nuw <8 x i32> %126 to <8 x i16>
  store <8 x i16> %127, ptr %123, align 2, !tbaa !62
  %128 = add nuw i64 %120, 8
  %129 = icmp eq i64 %128, %116
  br i1 %129, label %130, label %119, !llvm.loop !137

130:                                              ; preds = %119
  %131 = mul nsw i64 %116, -2
  %132 = getelementptr i8, ptr %110, i64 %131
  %133 = trunc i64 %116 to i32
  %134 = sub i32 %68, %133
  %135 = icmp eq i64 %113, %116
  br i1 %135, label %.loopexit27, label %.preheader

.preheader:                                       ; preds = %130, %.loopexit28
  %.ph = phi ptr [ %132, %130 ], [ %110, %.loopexit28 ]
  %.ph117 = phi i32 [ %134, %130 ], [ %68, %.loopexit28 ]
  br label %136

136:                                              ; preds = %.preheader, %136
  %137 = phi ptr [ %139, %136 ], [ %.ph, %.preheader ]
  %138 = phi i32 [ %144, %136 ], [ %.ph117, %.preheader ]
  %139 = getelementptr inbounds i8, ptr %137, i64 -2
  %140 = load i16, ptr %139, align 2, !tbaa !62
  %141 = zext i16 %140 to i32
  %142 = tail call i32 @llvm.usub.sat.i32(i32 %141, i32 %68)
  %143 = trunc nuw i32 %142 to i16
  store i16 %143, ptr %139, align 2, !tbaa !62
  %144 = add i32 %138, -1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %.loopexit27, label %136, !llvm.loop !138

.loopexit27:                                      ; preds = %136, %130
  store i32 1, ptr %14, align 8, !tbaa !63
  %146 = add i32 %33, %46
  %147 = load i32, ptr %3, align 4, !tbaa !75
  br label %148

148:                                              ; preds = %.loopexit27, %38
  %149 = phi i32 [ %147, %.loopexit27 ], [ %39, %38 ]
  %150 = phi i32 [ %64, %.loopexit27 ], [ %42, %38 ]
  %151 = phi i32 [ %146, %.loopexit27 ], [ %46, %38 ]
  %152 = load ptr, ptr %0, align 8, !tbaa !20
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %154 = load i32, ptr %153, align 8, !tbaa !81
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %245, label %156

156:                                              ; preds = %148
  %157 = load ptr, ptr %8, align 8, !tbaa !34
  %158 = zext i32 %150 to i64
  %159 = getelementptr inbounds nuw i8, ptr %157, i64 %158
  %160 = zext i32 %149 to i64
  %161 = getelementptr inbounds nuw i8, ptr %159, i64 %160
  %162 = tail call i32 @llvm.umin.i32(i32 %154, i32 %151)
  %163 = icmp eq i32 %151, 0
  br i1 %163, label %187, label %164

164:                                              ; preds = %156
  %165 = sub i32 %154, %162
  store i32 %165, ptr %153, align 8, !tbaa !81
  %166 = load ptr, ptr %152, align 8, !tbaa !82
  %167 = zext i32 %162 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %161, ptr align 1 %166, i64 %167, i1 false)
  %168 = getelementptr inbounds nuw i8, ptr %152, i64 56
  %169 = load ptr, ptr %168, align 8, !tbaa !19
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 48
  %171 = load i32, ptr %170, align 8, !tbaa !30
  switch i32 %171, label %180 [
    i32 1, label %172
    i32 2, label %176
  ]

172:                                              ; preds = %164
  %173 = getelementptr inbounds nuw i8, ptr %152, i64 96
  %174 = load i64, ptr %173, align 8, !tbaa !59
  %175 = tail call i64 @adler32(i64 noundef %174, ptr noundef %161, i32 noundef %162) #11
  store i64 %175, ptr %173, align 8, !tbaa !59
  br label %180

176:                                              ; preds = %164
  %177 = getelementptr inbounds nuw i8, ptr %152, i64 96
  %178 = load i64, ptr %177, align 8, !tbaa !59
  %179 = tail call i64 @crc32(i64 noundef %178, ptr noundef %161, i32 noundef %162) #11
  store i64 %179, ptr %177, align 8, !tbaa !59
  br label %180

180:                                              ; preds = %176, %172, %164
  %181 = load ptr, ptr %152, align 8, !tbaa !82
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 %167
  store ptr %182, ptr %152, align 8, !tbaa !82
  %183 = getelementptr inbounds nuw i8, ptr %152, i64 16
  %184 = load i64, ptr %183, align 8, !tbaa !53
  %185 = add i64 %184, %167
  store i64 %185, ptr %183, align 8, !tbaa !53
  %186 = load i32, ptr %3, align 4, !tbaa !75
  br label %187

187:                                              ; preds = %180, %156
  %188 = phi i32 [ %149, %156 ], [ %186, %180 ]
  %189 = add i32 %188, %162
  store i32 %189, ptr %3, align 4, !tbaa !75
  %190 = load i32, ptr %10, align 4, !tbaa !76
  %191 = add i32 %190, %189
  %192 = icmp ugt i32 %191, 2
  br i1 %192, label %193, label %.loopexit

193:                                              ; preds = %187
  %194 = load i32, ptr %7, align 4, !tbaa !73
  %195 = sub i32 %194, %190
  %196 = load ptr, ptr %8, align 8, !tbaa !34
  %197 = zext i32 %195 to i64
  %198 = getelementptr inbounds nuw i8, ptr %196, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !8
  %200 = zext i8 %199 to i32
  store i32 %200, ptr %15, align 8, !tbaa !80
  %201 = load i32, ptr %16, align 8, !tbaa !51
  %202 = shl i32 %200, %201
  %203 = add i32 %195, 1
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds nuw i8, ptr %196, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !8
  %207 = zext i8 %206 to i32
  %208 = xor i32 %202, %207
  %209 = load i32, ptr %17, align 4, !tbaa !50
  %210 = and i32 %208, %209
  store i32 %210, ptr %15, align 8, !tbaa !80
  br label %211

211:                                              ; preds = %216, %193
  %212 = phi i32 [ %224, %216 ], [ %210, %193 ]
  %213 = phi i32 [ %236, %216 ], [ %190, %193 ]
  %214 = phi i32 [ %235, %216 ], [ %195, %193 ]
  %215 = icmp eq i32 %213, 0
  br i1 %215, label %.loopexit, label %216

216:                                              ; preds = %211
  %217 = shl i32 %212, %201
  %218 = add i32 %214, 2
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds nuw i8, ptr %196, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !8
  %222 = zext i8 %221 to i32
  %223 = xor i32 %217, %222
  %224 = and i32 %223, %209
  store i32 %224, ptr %15, align 8, !tbaa !80
  %225 = load ptr, ptr %12, align 8, !tbaa !37
  %226 = zext i32 %224 to i64
  %227 = getelementptr inbounds nuw [2 x i8], ptr %225, i64 %226
  %228 = load i16, ptr %227, align 2, !tbaa !62
  %229 = load ptr, ptr %13, align 8, !tbaa !35
  %230 = load i32, ptr %18, align 8, !tbaa !33
  %231 = and i32 %230, %214
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds nuw [2 x i8], ptr %229, i64 %232
  store i16 %228, ptr %233, align 2, !tbaa !62
  %234 = trunc i32 %214 to i16
  store i16 %234, ptr %227, align 2, !tbaa !62
  %235 = add i32 %214, 1
  %236 = add i32 %213, -1
  store i32 %236, ptr %10, align 4, !tbaa !76
  %237 = add i32 %236, %189
  %238 = icmp ult i32 %237, 3
  br i1 %238, label %.loopexit, label %211, !llvm.loop !91

.loopexit:                                        ; preds = %216, %211, %187
  %239 = icmp ult i32 %189, 262
  br i1 %239, label %240, label %245

240:                                              ; preds = %.loopexit
  %241 = load ptr, ptr %0, align 8, !tbaa !20
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 8
  %243 = load i32, ptr %242, align 8, !tbaa !81
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %38, !llvm.loop !92

245:                                              ; preds = %240, %.loopexit, %148
  %246 = phi i32 [ %189, %240 ], [ %189, %.loopexit ], [ %149, %148 ]
  %247 = load i64, ptr %19, align 8, !tbaa !38
  %248 = load i64, ptr %6, align 8, !tbaa !61
  %249 = icmp ult i64 %247, %248
  br i1 %249, label %250, label %277

250:                                              ; preds = %245
  %251 = load i32, ptr %7, align 4, !tbaa !73
  %252 = zext i32 %251 to i64
  %253 = zext i32 %246 to i64
  %254 = add nuw nsw i64 %252, %253
  %255 = icmp ult i64 %247, %254
  br i1 %255, label %256, label %262

256:                                              ; preds = %250
  %257 = sub i64 %248, %254
  %258 = tail call i64 @llvm.umin.i64(i64 %257, i64 258)
  %259 = load ptr, ptr %8, align 8, !tbaa !34
  %260 = getelementptr inbounds nuw i8, ptr %259, i64 %254
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %260, i8 0, i64 %258, i1 false)
  %261 = add nuw nsw i64 %258, %254
  br label %274

262:                                              ; preds = %250
  %263 = add nuw nsw i64 %254, 258
  %264 = icmp ult i64 %247, %263
  br i1 %264, label %265, label %277

265:                                              ; preds = %262
  %266 = sub nuw nsw i64 %263, %247
  %267 = sub i64 %248, %247
  %268 = tail call i64 @llvm.umin.i64(i64 %266, i64 %267)
  %269 = load ptr, ptr %8, align 8, !tbaa !34
  %270 = getelementptr inbounds nuw i8, ptr %269, i64 %247
  %271 = and i64 %268, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %270, i8 0, i64 %271, i1 false)
  %272 = load i64, ptr %19, align 8, !tbaa !38
  %273 = add i64 %272, %268
  br label %274

274:                                              ; preds = %265, %256
  %275 = phi i64 [ %261, %256 ], [ %273, %265 ]
  store i64 %275, ptr %19, align 8, !tbaa !38
  %276 = load i32, ptr %3, align 4, !tbaa !75
  br label %277

277:                                              ; preds = %274, %262, %245
  %278 = phi i32 [ %246, %245 ], [ %246, %262 ], [ %276, %274 ]
  %279 = icmp ult i32 %278, 259
  %280 = and i1 %20, %279
  br i1 %280, label %.loopexit29, label %281

281:                                              ; preds = %277
  %282 = icmp eq i32 %278, 0
  br i1 %282, label %483, label %283

283:                                              ; preds = %281
  store i32 0, ptr %4, align 8, !tbaa !78
  %284 = icmp ugt i32 %278, 2
  %285 = load i32, ptr %7, align 4, !tbaa !73
  %.pre.pre61.pre63 = load ptr, ptr %8, align 8, !tbaa !34
  br i1 %284, label %286, label %._crit_edge

286:                                              ; preds = %283, %30
  %.pre.pre61 = phi ptr [ %.pre.pre61.pre, %30 ], [ %.pre.pre61.pre63, %283 ]
  %287 = phi i32 [ %31, %30 ], [ %285, %283 ]
  %288 = phi i32 [ %28, %30 ], [ %278, %283 ]
  %289 = icmp eq i32 %287, 0
  br i1 %289, label %._crit_edge, label %290

290:                                              ; preds = %286
  %291 = zext i32 %287 to i64
  %292 = getelementptr inbounds nuw i8, ptr %.pre.pre61, i64 %291
  %293 = getelementptr inbounds i8, ptr %292, i64 -1
  %294 = load i8, ptr %293, align 1, !tbaa !8
  %295 = load i8, ptr %292, align 1, !tbaa !8
  %296 = icmp eq i8 %294, %295
  br i1 %296, label %297, label %._crit_edge

297:                                              ; preds = %290
  %298 = getelementptr inbounds nuw i8, ptr %292, i64 1
  %299 = load i8, ptr %298, align 1, !tbaa !8
  %300 = icmp eq i8 %294, %299
  br i1 %300, label %301, label %._crit_edge

301:                                              ; preds = %297
  %302 = getelementptr inbounds nuw i8, ptr %292, i64 2
  %303 = load i8, ptr %302, align 1, !tbaa !8
  %304 = icmp eq i8 %294, %303
  br i1 %304, label %305, label %._crit_edge

305:                                              ; preds = %301
  %306 = getelementptr inbounds nuw i8, ptr %292, i64 258
  br label %307

307:                                              ; preds = %337, %305
  %308 = phi i64 [ 2, %305 ], [ %338, %337 ]
  %309 = getelementptr inbounds nuw i8, ptr %292, i64 %308
  %310 = getelementptr inbounds nuw i8, ptr %309, i64 1
  %311 = load i8, ptr %310, align 1, !tbaa !8
  %312 = icmp eq i8 %294, %311
  br i1 %312, label %313, label %.split.loop.exit.split.loop.exit100

313:                                              ; preds = %307
  %314 = getelementptr inbounds nuw i8, ptr %309, i64 2
  %315 = load i8, ptr %314, align 1, !tbaa !8
  %316 = icmp eq i8 %294, %315
  br i1 %316, label %317, label %.split.loop.exit.split.loop.exit98

317:                                              ; preds = %313
  %318 = getelementptr inbounds nuw i8, ptr %309, i64 3
  %319 = load i8, ptr %318, align 1, !tbaa !8
  %320 = icmp eq i8 %294, %319
  br i1 %320, label %321, label %.split.loop.exit.split.loop.exit96

321:                                              ; preds = %317
  %322 = getelementptr inbounds nuw i8, ptr %309, i64 4
  %323 = load i8, ptr %322, align 1, !tbaa !8
  %324 = icmp eq i8 %294, %323
  br i1 %324, label %325, label %.split.loop.exit.split.loop.exit94

325:                                              ; preds = %321
  %326 = getelementptr inbounds nuw i8, ptr %309, i64 5
  %327 = load i8, ptr %326, align 1, !tbaa !8
  %328 = icmp eq i8 %294, %327
  br i1 %328, label %329, label %.split.loop.exit.split.loop.exit92

329:                                              ; preds = %325
  %330 = getelementptr inbounds nuw i8, ptr %309, i64 6
  %331 = load i8, ptr %330, align 1, !tbaa !8
  %332 = icmp eq i8 %294, %331
  br i1 %332, label %333, label %.split.loop.exit.split.loop.exit90

333:                                              ; preds = %329
  %334 = getelementptr inbounds nuw i8, ptr %309, i64 7
  %335 = load i8, ptr %334, align 1, !tbaa !8
  %336 = icmp eq i8 %294, %335
  br i1 %336, label %337, label %.split.loop.exit.split.loop.exit88

337:                                              ; preds = %333
  %338 = add nuw nsw i64 %308, 8
  %339 = getelementptr inbounds nuw i8, ptr %292, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !8
  %341 = icmp eq i8 %294, %340
  %342 = icmp samesign ult i64 %308, 250
  %343 = select i1 %341, i1 %342, i1 false
  br i1 %343, label %307, label %.split.loop.exit.split.loop.exit, !llvm.loop !139

.split.loop.exit.split.loop.exit:                 ; preds = %337
  %344 = getelementptr inbounds nuw i8, ptr %292, i64 %338
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit88:               ; preds = %333
  %345 = getelementptr inbounds nuw i8, ptr %309, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit90:               ; preds = %329
  %346 = getelementptr inbounds nuw i8, ptr %309, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit92:               ; preds = %325
  %347 = getelementptr inbounds nuw i8, ptr %309, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit94:               ; preds = %321
  %348 = getelementptr inbounds nuw i8, ptr %309, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit96:               ; preds = %317
  %349 = getelementptr inbounds nuw i8, ptr %309, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit98:               ; preds = %313
  %350 = getelementptr inbounds nuw i8, ptr %309, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit100:              ; preds = %307
  %351 = getelementptr inbounds nuw i8, ptr %309, i64 1
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit100, %.split.loop.exit.split.loop.exit98, %.split.loop.exit.split.loop.exit96, %.split.loop.exit.split.loop.exit94, %.split.loop.exit.split.loop.exit92, %.split.loop.exit.split.loop.exit90, %.split.loop.exit.split.loop.exit88, %.split.loop.exit.split.loop.exit
  %352 = phi ptr [ %348, %.split.loop.exit.split.loop.exit94 ], [ %347, %.split.loop.exit.split.loop.exit92 ], [ %349, %.split.loop.exit.split.loop.exit96 ], [ %350, %.split.loop.exit.split.loop.exit98 ], [ %344, %.split.loop.exit.split.loop.exit ], [ %345, %.split.loop.exit.split.loop.exit88 ], [ %346, %.split.loop.exit.split.loop.exit90 ], [ %351, %.split.loop.exit.split.loop.exit100 ]
  %353 = ptrtoint ptr %306 to i64
  %354 = ptrtoint ptr %352 to i64
  %355 = sub i64 %354, %353
  %356 = trunc i64 %355 to i32
  %357 = add i32 %356, 258
  %358 = tail call i32 @llvm.umin.i32(i32 %357, i32 %288)
  store i32 %358, ptr %4, align 8
  %359 = icmp ugt i32 %358, 2
  %360 = load i32, ptr %22, align 4, !tbaa !134
  br i1 %359, label %361, label %400

361:                                              ; preds = %.split.loop.exit
  %362 = trunc i32 %358 to i8
  %363 = add i8 %362, -3
  %364 = load ptr, ptr %21, align 8, !tbaa !44
  %365 = add i32 %360, 1
  store i32 %365, ptr %22, align 4, !tbaa !134
  %366 = zext i32 %360 to i64
  %367 = getelementptr inbounds nuw i8, ptr %364, i64 %366
  store i8 1, ptr %367, align 1, !tbaa !8
  %368 = load ptr, ptr %21, align 8, !tbaa !44
  %369 = load i32, ptr %22, align 4, !tbaa !134
  %370 = add i32 %369, 1
  store i32 %370, ptr %22, align 4, !tbaa !134
  %371 = zext i32 %369 to i64
  %372 = getelementptr inbounds nuw i8, ptr %368, i64 %371
  store i8 0, ptr %372, align 1, !tbaa !8
  %373 = load ptr, ptr %21, align 8, !tbaa !44
  %374 = load i32, ptr %22, align 4, !tbaa !134
  %375 = add i32 %374, 1
  store i32 %375, ptr %22, align 4, !tbaa !134
  %376 = zext i32 %374 to i64
  %377 = getelementptr inbounds nuw i8, ptr %373, i64 %376
  store i8 %363, ptr %377, align 1, !tbaa !8
  %378 = zext i8 %363 to i64
  %379 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !8
  %381 = zext i8 %380 to i64
  %382 = getelementptr [4 x i8], ptr %25, i64 %381
  %383 = load i16, ptr %382, align 4, !tbaa !8
  %384 = add i16 %383, 1
  store i16 %384, ptr %382, align 4, !tbaa !8
  %385 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %386 = zext i8 %385 to i64
  %387 = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %386
  %388 = load i16, ptr %387, align 4, !tbaa !8
  %389 = add i16 %388, 1
  store i16 %389, ptr %387, align 4, !tbaa !8
  %390 = load i32, ptr %22, align 4, !tbaa !134
  %391 = load i32, ptr %24, align 8, !tbaa !45
  %392 = icmp eq i32 %390, %391
  %393 = load i32, ptr %4, align 8, !tbaa !78
  %394 = load i32, ptr %3, align 4, !tbaa !75
  %395 = sub i32 %394, %393
  store i32 %395, ptr %3, align 4, !tbaa !75
  %396 = load i32, ptr %7, align 4, !tbaa !73
  %397 = add i32 %396, %393
  store i32 %397, ptr %7, align 4, !tbaa !73
  store i32 0, ptr %4, align 8, !tbaa !78
  br i1 %392, label %430, label %.backedge

._crit_edge:                                      ; preds = %283, %301, %297, %290, %286
  %.pre = phi ptr [ %.pre.pre61, %290 ], [ %.pre.pre61, %286 ], [ %.pre.pre61, %301 ], [ %.pre.pre61, %297 ], [ %.pre.pre61.pre63, %283 ]
  %398 = phi i32 [ %287, %290 ], [ 0, %286 ], [ %287, %301 ], [ %287, %297 ], [ %285, %283 ]
  %399 = load i32, ptr %22, align 4, !tbaa !134
  %.pre60 = zext i32 %398 to i64
  br label %400

400:                                              ; preds = %._crit_edge, %.split.loop.exit
  %.pre-phi = phi i64 [ %.pre60, %._crit_edge ], [ %291, %.split.loop.exit ]
  %401 = phi ptr [ %.pre, %._crit_edge ], [ %.pre.pre61, %.split.loop.exit ]
  %402 = phi i32 [ %399, %._crit_edge ], [ %360, %.split.loop.exit ]
  %403 = getelementptr inbounds nuw i8, ptr %401, i64 %.pre-phi
  %404 = load i8, ptr %403, align 1, !tbaa !8
  %405 = load ptr, ptr %21, align 8, !tbaa !44
  %406 = add i32 %402, 1
  store i32 %406, ptr %22, align 4, !tbaa !134
  %407 = zext i32 %402 to i64
  %408 = getelementptr inbounds nuw i8, ptr %405, i64 %407
  store i8 0, ptr %408, align 1, !tbaa !8
  %409 = load ptr, ptr %21, align 8, !tbaa !44
  %410 = load i32, ptr %22, align 4, !tbaa !134
  %411 = add i32 %410, 1
  store i32 %411, ptr %22, align 4, !tbaa !134
  %412 = zext i32 %410 to i64
  %413 = getelementptr inbounds nuw i8, ptr %409, i64 %412
  store i8 0, ptr %413, align 1, !tbaa !8
  %414 = load ptr, ptr %21, align 8, !tbaa !44
  %415 = load i32, ptr %22, align 4, !tbaa !134
  %416 = add i32 %415, 1
  store i32 %416, ptr %22, align 4, !tbaa !134
  %417 = zext i32 %415 to i64
  %418 = getelementptr inbounds nuw i8, ptr %414, i64 %417
  store i8 %404, ptr %418, align 1, !tbaa !8
  %419 = zext i8 %404 to i64
  %420 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %419
  %421 = load i16, ptr %420, align 4, !tbaa !8
  %422 = add i16 %421, 1
  store i16 %422, ptr %420, align 4, !tbaa !8
  %423 = load i32, ptr %22, align 4, !tbaa !134
  %424 = load i32, ptr %24, align 8, !tbaa !45
  %425 = icmp eq i32 %423, %424
  %426 = load i32, ptr %3, align 4, !tbaa !75
  %427 = add i32 %426, -1
  store i32 %427, ptr %3, align 4, !tbaa !75
  %428 = load i32, ptr %7, align 4, !tbaa !73
  %429 = add i32 %428, 1
  store i32 %429, ptr %7, align 4, !tbaa !73
  br i1 %425, label %430, label %.backedge

430:                                              ; preds = %400, %361
  %431 = phi i32 [ %397, %361 ], [ %429, %400 ]
  %432 = load i64, ptr %9, align 8, !tbaa !74
  %433 = icmp sgt i64 %432, -1
  br i1 %433, label %434, label %438

434:                                              ; preds = %430
  %435 = load ptr, ptr %8, align 8, !tbaa !34
  %436 = and i64 %432, 4294967295
  %437 = getelementptr inbounds nuw i8, ptr %435, i64 %436
  br label %438

438:                                              ; preds = %434, %430
  %439 = phi ptr [ %437, %434 ], [ null, %430 ]
  %440 = zext i32 %431 to i64
  %441 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %440, i64 %432), !nosanitize !57
  %442 = extractvalue { i64, i1 } %441, 1, !nosanitize !57
  br i1 %442, label %.loopexit30, label %443, !prof !58, !nosanitize !57

.loopexit30:                                      ; preds = %438, %549, %492
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

443:                                              ; preds = %438
  %444 = extractvalue { i64, i1 } %441, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %439, i64 noundef %444, i32 noundef 0) #11
  %445 = load i32, ptr %7, align 4, !tbaa !73
  %446 = zext i32 %445 to i64
  store i64 %446, ptr %9, align 8, !tbaa !74
  %447 = load ptr, ptr %0, align 8, !tbaa !20
  %448 = getelementptr inbounds nuw i8, ptr %447, i64 56
  %449 = load ptr, ptr %448, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %449) #11
  %450 = getelementptr inbounds nuw i8, ptr %449, i64 40
  %451 = load i64, ptr %450, align 8, !tbaa !55
  %452 = getelementptr inbounds nuw i8, ptr %447, i64 32
  %453 = load i32, ptr %452, align 8, !tbaa !106
  %454 = zext i32 %453 to i64
  %455 = tail call i64 @llvm.umin.i64(i64 %451, i64 %454)
  %456 = icmp eq i64 %455, 0
  br i1 %456, label %478, label %457

457:                                              ; preds = %443
  %458 = trunc nuw i64 %455 to i32
  %459 = getelementptr inbounds nuw i8, ptr %447, i64 24
  %460 = load ptr, ptr %459, align 8, !tbaa !105
  %461 = getelementptr inbounds nuw i8, ptr %449, i64 32
  %462 = load ptr, ptr %461, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %460, ptr align 1 %462, i64 %455, i1 false)
  %463 = load ptr, ptr %459, align 8, !tbaa !105
  %464 = getelementptr inbounds nuw i8, ptr %463, i64 %455
  store ptr %464, ptr %459, align 8, !tbaa !105
  %465 = load ptr, ptr %461, align 8, !tbaa !56
  %466 = getelementptr inbounds nuw i8, ptr %465, i64 %455
  store ptr %466, ptr %461, align 8, !tbaa !56
  %467 = getelementptr inbounds nuw i8, ptr %447, i64 40
  %468 = load i64, ptr %467, align 8, !tbaa !107
  %469 = add i64 %468, %455
  store i64 %469, ptr %467, align 8, !tbaa !107
  %470 = load i32, ptr %452, align 8, !tbaa !106
  %471 = sub i32 %470, %458
  store i32 %471, ptr %452, align 8, !tbaa !106
  %472 = load i64, ptr %450, align 8, !tbaa !55
  %473 = sub i64 %472, %455
  store i64 %473, ptr %450, align 8, !tbaa !55
  %474 = icmp eq i64 %472, %455
  br i1 %474, label %475, label %478

475:                                              ; preds = %457
  %476 = getelementptr inbounds nuw i8, ptr %449, i64 16
  %477 = load ptr, ptr %476, align 8, !tbaa !40
  store ptr %477, ptr %461, align 8, !tbaa !56
  br label %478

478:                                              ; preds = %475, %457, %443
  %479 = load ptr, ptr %0, align 8, !tbaa !20
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 32
  %481 = load i32, ptr %480, align 8, !tbaa !106
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %.loopexit29, label %.backedge

.backedge:                                        ; preds = %478, %400, %361
  br label %27

483:                                              ; preds = %281
  store i32 0, ptr %10, align 4, !tbaa !76
  %484 = icmp eq i32 %1, 4
  br i1 %484, label %485, label %539

485:                                              ; preds = %483
  %486 = load i64, ptr %9, align 8, !tbaa !74
  %487 = icmp sgt i64 %486, -1
  br i1 %487, label %488, label %492

488:                                              ; preds = %485
  %489 = load ptr, ptr %8, align 8, !tbaa !34
  %490 = and i64 %486, 4294967295
  %491 = getelementptr inbounds nuw i8, ptr %489, i64 %490
  br label %492

492:                                              ; preds = %488, %485
  %493 = phi ptr [ %491, %488 ], [ null, %485 ]
  %494 = load i32, ptr %7, align 4, !tbaa !73
  %495 = zext i32 %494 to i64
  %496 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %495, i64 %486), !nosanitize !57
  %497 = extractvalue { i64, i1 } %496, 1, !nosanitize !57
  br i1 %497, label %.loopexit30, label %498, !prof !58, !nosanitize !57

498:                                              ; preds = %492
  %499 = extractvalue { i64, i1 } %496, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %493, i64 noundef %499, i32 noundef 1) #11
  %500 = load i32, ptr %7, align 4, !tbaa !73
  %501 = zext i32 %500 to i64
  store i64 %501, ptr %9, align 8, !tbaa !74
  %502 = load ptr, ptr %0, align 8, !tbaa !20
  %503 = getelementptr inbounds nuw i8, ptr %502, i64 56
  %504 = load ptr, ptr %503, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %504) #11
  %505 = getelementptr inbounds nuw i8, ptr %504, i64 40
  %506 = load i64, ptr %505, align 8, !tbaa !55
  %507 = getelementptr inbounds nuw i8, ptr %502, i64 32
  %508 = load i32, ptr %507, align 8, !tbaa !106
  %509 = zext i32 %508 to i64
  %510 = tail call i64 @llvm.umin.i64(i64 %506, i64 %509)
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %533, label %512

512:                                              ; preds = %498
  %513 = trunc nuw i64 %510 to i32
  %514 = getelementptr inbounds nuw i8, ptr %502, i64 24
  %515 = load ptr, ptr %514, align 8, !tbaa !105
  %516 = getelementptr inbounds nuw i8, ptr %504, i64 32
  %517 = load ptr, ptr %516, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %515, ptr align 1 %517, i64 %510, i1 false)
  %518 = load ptr, ptr %514, align 8, !tbaa !105
  %519 = getelementptr inbounds nuw i8, ptr %518, i64 %510
  store ptr %519, ptr %514, align 8, !tbaa !105
  %520 = load ptr, ptr %516, align 8, !tbaa !56
  %521 = getelementptr inbounds nuw i8, ptr %520, i64 %510
  store ptr %521, ptr %516, align 8, !tbaa !56
  %522 = getelementptr inbounds nuw i8, ptr %502, i64 40
  %523 = load i64, ptr %522, align 8, !tbaa !107
  %524 = add i64 %523, %510
  store i64 %524, ptr %522, align 8, !tbaa !107
  %525 = load i32, ptr %507, align 8, !tbaa !106
  %526 = sub i32 %525, %513
  store i32 %526, ptr %507, align 8, !tbaa !106
  %527 = load i64, ptr %505, align 8, !tbaa !55
  %528 = sub i64 %527, %510
  store i64 %528, ptr %505, align 8, !tbaa !55
  %529 = icmp eq i64 %527, %510
  br i1 %529, label %530, label %533

530:                                              ; preds = %512
  %531 = getelementptr inbounds nuw i8, ptr %504, i64 16
  %532 = load ptr, ptr %531, align 8, !tbaa !40
  store ptr %532, ptr %516, align 8, !tbaa !56
  br label %533

533:                                              ; preds = %530, %512, %498
  %534 = load ptr, ptr %0, align 8, !tbaa !20
  %535 = getelementptr inbounds nuw i8, ptr %534, i64 32
  %536 = load i32, ptr %535, align 8, !tbaa !106
  %537 = icmp eq i32 %536, 0
  %538 = select i1 %537, i32 2, i32 3
  br label %.loopexit29

539:                                              ; preds = %483
  %540 = load i32, ptr %22, align 4, !tbaa !134
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %595, label %542

542:                                              ; preds = %539
  %543 = load i64, ptr %9, align 8, !tbaa !74
  %544 = icmp sgt i64 %543, -1
  br i1 %544, label %545, label %549

545:                                              ; preds = %542
  %546 = load ptr, ptr %8, align 8, !tbaa !34
  %547 = and i64 %543, 4294967295
  %548 = getelementptr inbounds nuw i8, ptr %546, i64 %547
  br label %549

549:                                              ; preds = %545, %542
  %550 = phi ptr [ %548, %545 ], [ null, %542 ]
  %551 = load i32, ptr %7, align 4, !tbaa !73
  %552 = zext i32 %551 to i64
  %553 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %552, i64 %543), !nosanitize !57
  %554 = extractvalue { i64, i1 } %553, 1, !nosanitize !57
  br i1 %554, label %.loopexit30, label %555, !prof !58, !nosanitize !57

555:                                              ; preds = %549
  %556 = extractvalue { i64, i1 } %553, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %550, i64 noundef %556, i32 noundef 0) #11
  %557 = load i32, ptr %7, align 4, !tbaa !73
  %558 = zext i32 %557 to i64
  store i64 %558, ptr %9, align 8, !tbaa !74
  %559 = load ptr, ptr %0, align 8, !tbaa !20
  %560 = getelementptr inbounds nuw i8, ptr %559, i64 56
  %561 = load ptr, ptr %560, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %561) #11
  %562 = getelementptr inbounds nuw i8, ptr %561, i64 40
  %563 = load i64, ptr %562, align 8, !tbaa !55
  %564 = getelementptr inbounds nuw i8, ptr %559, i64 32
  %565 = load i32, ptr %564, align 8, !tbaa !106
  %566 = zext i32 %565 to i64
  %567 = tail call i64 @llvm.umin.i64(i64 %563, i64 %566)
  %568 = icmp eq i64 %567, 0
  br i1 %568, label %590, label %569

569:                                              ; preds = %555
  %570 = trunc nuw i64 %567 to i32
  %571 = getelementptr inbounds nuw i8, ptr %559, i64 24
  %572 = load ptr, ptr %571, align 8, !tbaa !105
  %573 = getelementptr inbounds nuw i8, ptr %561, i64 32
  %574 = load ptr, ptr %573, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %572, ptr align 1 %574, i64 %567, i1 false)
  %575 = load ptr, ptr %571, align 8, !tbaa !105
  %576 = getelementptr inbounds nuw i8, ptr %575, i64 %567
  store ptr %576, ptr %571, align 8, !tbaa !105
  %577 = load ptr, ptr %573, align 8, !tbaa !56
  %578 = getelementptr inbounds nuw i8, ptr %577, i64 %567
  store ptr %578, ptr %573, align 8, !tbaa !56
  %579 = getelementptr inbounds nuw i8, ptr %559, i64 40
  %580 = load i64, ptr %579, align 8, !tbaa !107
  %581 = add i64 %580, %567
  store i64 %581, ptr %579, align 8, !tbaa !107
  %582 = load i32, ptr %564, align 8, !tbaa !106
  %583 = sub i32 %582, %570
  store i32 %583, ptr %564, align 8, !tbaa !106
  %584 = load i64, ptr %562, align 8, !tbaa !55
  %585 = sub i64 %584, %567
  store i64 %585, ptr %562, align 8, !tbaa !55
  %586 = icmp eq i64 %584, %567
  br i1 %586, label %587, label %590

587:                                              ; preds = %569
  %588 = getelementptr inbounds nuw i8, ptr %561, i64 16
  %589 = load ptr, ptr %588, align 8, !tbaa !40
  store ptr %589, ptr %573, align 8, !tbaa !56
  br label %590

590:                                              ; preds = %587, %569, %555
  %591 = load ptr, ptr %0, align 8, !tbaa !20
  %592 = getelementptr inbounds nuw i8, ptr %591, i64 32
  %593 = load i32, ptr %592, align 8, !tbaa !106
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %.loopexit29, label %595

595:                                              ; preds = %590, %539
  br label %.loopexit29

.loopexit29:                                      ; preds = %478, %277, %595, %590, %533
  %596 = phi i32 [ 1, %595 ], [ %538, %533 ], [ 0, %590 ], [ 0, %277 ], [ 0, %478 ]
  ret i32 %596
}

declare void @_tr_align(ptr noundef) local_unnamed_addr #1

declare void @_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @deflateCopy(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %183, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %183, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %183, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %183, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %183

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %183 [
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
  br i1 %23, label %183, label %24

24:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  %29 = tail call ptr %26(ptr noundef %28, i32 noundef 1, i32 noundef 5968) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %183, label %31

31:                                               ; preds = %24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %29, i8 0, i64 5968, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %29, ptr %32, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %29, ptr noundef nonnull align 8 dereferenceable(5968) %14, i64 5968, i1 false)
  store ptr %0, ptr %29, align 8, !tbaa !20
  %33 = load ptr, ptr %25, align 8, !tbaa !15
  %34 = load ptr, ptr %27, align 8, !tbaa !16
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 80
  %36 = load i32, ptr %35, align 8, !tbaa !32
  %37 = tail call ptr %33(ptr noundef %34, i32 noundef %36, i32 noundef 2) #11
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 96
  store ptr %37, ptr %38, align 8, !tbaa !34
  %39 = load ptr, ptr %25, align 8, !tbaa !15
  %40 = load ptr, ptr %27, align 8, !tbaa !16
  %41 = load i32, ptr %35, align 8, !tbaa !32
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
  br i1 %68, label %183, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %71 = load ptr, ptr %70, align 8, !tbaa !17
  %72 = icmp eq ptr %71, null
  br i1 %72, label %183, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %32, align 8, !tbaa !19
  %75 = icmp eq ptr %74, null
  br i1 %75, label %183, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %74, align 8, !tbaa !20
  %78 = icmp eq ptr %77, %0
  br i1 %78, label %79, label %183

79:                                               ; preds = %76
  %80 = getelementptr inbounds nuw i8, ptr %74, i64 8
  %81 = load i32, ptr %80, align 8, !tbaa !29
  switch i32 %81, label %183 [
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
  tail call void %71(ptr noundef %87, ptr noundef nonnull %84) #11, !inline_history !52
  %88 = load ptr, ptr %32, align 8, !tbaa !19
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
  tail call void %91(ptr noundef %97, ptr noundef nonnull %94) #11, !inline_history !52
  %98 = load ptr, ptr %32, align 8, !tbaa !19
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
  tail call void %101(ptr noundef %107, ptr noundef nonnull %104) #11, !inline_history !52
  %108 = load ptr, ptr %32, align 8, !tbaa !19
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
  tail call void %111(ptr noundef %117, ptr noundef nonnull %114) #11, !inline_history !52
  %118 = load ptr, ptr %70, align 8, !tbaa !17
  %119 = load ptr, ptr %32, align 8, !tbaa !19
  br label %120

120:                                              ; preds = %116, %110
  %121 = phi ptr [ %119, %116 ], [ %112, %110 ]
  %122 = phi ptr [ %118, %116 ], [ %111, %110 ]
  %123 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %122(ptr noundef %123, ptr noundef %121) #11, !inline_history !52
  store ptr null, ptr %32, align 8, !tbaa !19
  br label %183

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
  %133 = load i32, ptr %132, align 8, !tbaa !63
  %134 = icmp eq i32 %133, 0
  %135 = load i32, ptr %35, align 8, !tbaa !32
  br i1 %134, label %136, label %143

136:                                              ; preds = %124
  %137 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %138 = load i32, ptr %137, align 4, !tbaa !73
  %139 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  %140 = load i32, ptr %139, align 4, !tbaa !76
  %141 = sub i32 %138, %140
  %142 = icmp ugt i32 %141, %135
  br i1 %142, label %143, label %144

143:                                              ; preds = %136, %124
  br label %144

144:                                              ; preds = %143, %136
  %145 = phi i32 [ %135, %143 ], [ %141, %136 ]
  %146 = zext i32 %145 to i64
  %147 = shl nuw nsw i64 %146, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %129, ptr align 2 %131, i64 %147, i1 false)
  %148 = load ptr, ptr %49, align 8, !tbaa !37
  %149 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %150 = load ptr, ptr %149, align 8, !tbaa !37
  %151 = load i32, ptr %46, align 4, !tbaa !36
  %152 = zext i32 %151 to i64
  %153 = shl nuw nsw i64 %152, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %148, ptr align 2 %150, i64 %153, i1 false)
  %154 = load ptr, ptr %55, align 8, !tbaa !40
  %155 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %156 = load ptr, ptr %155, align 8, !tbaa !56
  %157 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %158 = load ptr, ptr %157, align 8, !tbaa !40
  %159 = ptrtoint ptr %156 to i64
  %160 = ptrtoint ptr %158 to i64
  %161 = sub i64 %159, %160
  %162 = getelementptr inbounds i8, ptr %154, i64 %161
  %163 = getelementptr inbounds nuw i8, ptr %29, i64 32
  store ptr %162, ptr %163, align 8, !tbaa !56
  %164 = load ptr, ptr %155, align 8, !tbaa !56
  %165 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %166 = load i64, ptr %165, align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %162, ptr align 1 %164, i64 %166, i1 false)
  %167 = load ptr, ptr %55, align 8, !tbaa !40
  %168 = load i32, ptr %52, align 8, !tbaa !39
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds nuw i8, ptr %167, i64 %169
  %171 = getelementptr inbounds nuw i8, ptr %29, i64 5888
  store ptr %170, ptr %171, align 8, !tbaa !44
  %172 = getelementptr inbounds nuw i8, ptr %14, i64 5888
  %173 = load ptr, ptr %172, align 8, !tbaa !44
  %174 = getelementptr inbounds nuw i8, ptr %14, i64 5900
  %175 = load i32, ptr %174, align 4, !tbaa !134
  %176 = zext i32 %175 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %170, ptr align 1 %173, i64 %176, i1 false)
  %177 = getelementptr inbounds nuw i8, ptr %29, i64 212
  %178 = getelementptr inbounds nuw i8, ptr %29, i64 2904
  store ptr %177, ptr %178, align 8, !tbaa !140
  %179 = getelementptr inbounds nuw i8, ptr %29, i64 2504
  %180 = getelementptr inbounds nuw i8, ptr %29, i64 2928
  store ptr %179, ptr %180, align 8, !tbaa !141
  %181 = getelementptr inbounds nuw i8, ptr %29, i64 2748
  %182 = getelementptr inbounds nuw i8, ptr %29, i64 2952
  store ptr %181, ptr %182, align 8, !tbaa !142
  br label %183

183:                                              ; preds = %144, %120, %79, %76, %73, %69, %66, %24, %22, %19, %16, %12, %8, %4, %2
  %184 = phi i32 [ 0, %144 ], [ -2, %22 ], [ -4, %120 ], [ -4, %24 ], [ -4, %66 ], [ -4, %69 ], [ -4, %73 ], [ -4, %76 ], [ -4, %79 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %184
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
  %30 = getelementptr i8, ptr %0, i64 1240
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %33

33:                                               ; preds = %.backedge, %2
  %34 = load i32, ptr %3, align 4, !tbaa !75
  %35 = icmp ult i32 %34, 262
  br i1 %35, label %36, label %289

36:                                               ; preds = %33
  %37 = load i32, ptr %4, align 8, !tbaa !32
  %38 = add i32 %37, -262
  %39 = zext i32 %37 to i64
  %40 = insertelement <2 x i32> poison, i32 %37, i64 0
  %41 = shufflevector <2 x i32> %40, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %42

42:                                               ; preds = %244, %36
  %43 = phi i32 [ %193, %244 ], [ %34, %36 ]
  %44 = load i64, ptr %5, align 8, !tbaa !61
  %45 = zext nneg i32 %43 to i64
  %46 = load i32, ptr %6, align 4, !tbaa !73
  %47 = zext i32 %46 to i64
  %48 = add nuw nsw i64 %45, %47
  %49 = sub i64 %44, %48
  %50 = trunc i64 %49 to i32
  %51 = load i32, ptr %4, align 8, !tbaa !32
  %52 = add i32 %38, %51
  %53 = icmp ult i32 %46, %52
  br i1 %53, label %152, label %54

54:                                               ; preds = %42
  %55 = load ptr, ptr %7, align 8, !tbaa !34
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 %39
  %57 = sub i32 %37, %50
  %58 = zext i32 %57 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 1 %56, i64 %58, i1 false)
  %59 = load <2 x i32>, ptr %6, align 4, !tbaa !4
  %60 = sub <2 x i32> %59, %41
  store <2 x i32> %60, ptr %6, align 4, !tbaa !4
  %61 = load i64, ptr %9, align 8, !tbaa !74
  %62 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %61, i64 %39), !nosanitize !57
  %63 = extractvalue { i64, i1 } %62, 1, !nosanitize !57
  br i1 %63, label %64, label %65, !prof !58, !nosanitize !57

64:                                               ; preds = %54
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

65:                                               ; preds = %54
  %66 = extractvalue { i64, i1 } %62, 0, !nosanitize !57
  store i64 %66, ptr %9, align 8, !tbaa !74
  %67 = load i32, ptr %10, align 4, !tbaa !76
  %68 = extractelement <2 x i32> %60, i64 0
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 %68, ptr %10, align 4, !tbaa !76
  br label %71

71:                                               ; preds = %70, %65
  %72 = load i32, ptr %4, align 8, !tbaa !32
  %73 = load i32, ptr %11, align 4, !tbaa !36
  %74 = load ptr, ptr %12, align 8, !tbaa !37
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds nuw [2 x i8], ptr %74, i64 %75
  %77 = add i32 %73, -1
  %78 = zext i32 %77 to i64
  %79 = add nuw nsw i64 %78, 1
  %80 = icmp ult i32 %77, 7
  br i1 %80, label %.preheader141, label %81

81:                                               ; preds = %71
  %82 = and i64 %79, 8589934584
  %83 = insertelement <8 x i32> poison, i32 %72, i64 0
  %84 = shufflevector <8 x i32> %83, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %85

85:                                               ; preds = %85, %81
  %86 = phi i64 [ 0, %81 ], [ %94, %85 ]
  %87 = mul i64 %86, -2
  %88 = getelementptr i8, ptr %76, i64 %87
  %89 = getelementptr inbounds i8, ptr %88, i64 -16
  %90 = load <8 x i16>, ptr %89, align 2, !tbaa !62
  %91 = zext <8 x i16> %90 to <8 x i32>
  %92 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %91, <8 x i32> %84)
  %93 = trunc nuw <8 x i32> %92 to <8 x i16>
  store <8 x i16> %93, ptr %89, align 2, !tbaa !62
  %94 = add nuw i64 %86, 8
  %95 = icmp eq i64 %94, %82
  br i1 %95, label %96, label %85, !llvm.loop !143

96:                                               ; preds = %85
  %97 = mul nsw i64 %82, -2
  %98 = getelementptr i8, ptr %76, i64 %97
  %99 = trunc i64 %82 to i32
  %100 = sub i32 %73, %99
  %101 = icmp eq i64 %79, %82
  br i1 %101, label %.loopexit37, label %.preheader141

.preheader141:                                    ; preds = %96, %71
  %.ph142 = phi ptr [ %98, %96 ], [ %76, %71 ]
  %.ph143 = phi i32 [ %100, %96 ], [ %73, %71 ]
  br label %102

102:                                              ; preds = %.preheader141, %102
  %103 = phi ptr [ %105, %102 ], [ %.ph142, %.preheader141 ]
  %104 = phi i32 [ %110, %102 ], [ %.ph143, %.preheader141 ]
  %105 = getelementptr inbounds i8, ptr %103, i64 -2
  %106 = load i16, ptr %105, align 2, !tbaa !62
  %107 = zext i16 %106 to i32
  %108 = tail call i32 @llvm.usub.sat.i32(i32 %107, i32 %72)
  %109 = trunc nuw i32 %108 to i16
  store i16 %109, ptr %105, align 2, !tbaa !62
  %110 = add i32 %104, -1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %.loopexit37, label %102, !llvm.loop !144

.loopexit37:                                      ; preds = %102, %96
  %112 = load ptr, ptr %13, align 8, !tbaa !35
  %113 = zext i32 %72 to i64
  %114 = getelementptr inbounds nuw [2 x i8], ptr %112, i64 %113
  %115 = add i32 %72, -1
  %116 = zext i32 %115 to i64
  %117 = add nuw nsw i64 %116, 1
  %118 = icmp ult i32 %115, 7
  br i1 %118, label %.preheader, label %119

119:                                              ; preds = %.loopexit37
  %120 = and i64 %117, 8589934584
  %121 = insertelement <8 x i32> poison, i32 %72, i64 0
  %122 = shufflevector <8 x i32> %121, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %123

123:                                              ; preds = %123, %119
  %124 = phi i64 [ 0, %119 ], [ %132, %123 ]
  %125 = mul i64 %124, -2
  %126 = getelementptr i8, ptr %114, i64 %125
  %127 = getelementptr inbounds i8, ptr %126, i64 -16
  %128 = load <8 x i16>, ptr %127, align 2, !tbaa !62
  %129 = zext <8 x i16> %128 to <8 x i32>
  %130 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %129, <8 x i32> %122)
  %131 = trunc nuw <8 x i32> %130 to <8 x i16>
  store <8 x i16> %131, ptr %127, align 2, !tbaa !62
  %132 = add nuw i64 %124, 8
  %133 = icmp eq i64 %132, %120
  br i1 %133, label %134, label %123, !llvm.loop !145

134:                                              ; preds = %123
  %135 = mul nsw i64 %120, -2
  %136 = getelementptr i8, ptr %114, i64 %135
  %137 = trunc i64 %120 to i32
  %138 = sub i32 %72, %137
  %139 = icmp eq i64 %117, %120
  br i1 %139, label %.loopexit36, label %.preheader

.preheader:                                       ; preds = %134, %.loopexit37
  %.ph = phi ptr [ %136, %134 ], [ %114, %.loopexit37 ]
  %.ph140 = phi i32 [ %138, %134 ], [ %72, %.loopexit37 ]
  br label %140

140:                                              ; preds = %.preheader, %140
  %141 = phi ptr [ %143, %140 ], [ %.ph, %.preheader ]
  %142 = phi i32 [ %148, %140 ], [ %.ph140, %.preheader ]
  %143 = getelementptr inbounds i8, ptr %141, i64 -2
  %144 = load i16, ptr %143, align 2, !tbaa !62
  %145 = zext i16 %144 to i32
  %146 = tail call i32 @llvm.usub.sat.i32(i32 %145, i32 %72)
  %147 = trunc nuw i32 %146 to i16
  store i16 %147, ptr %143, align 2, !tbaa !62
  %148 = add i32 %142, -1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %.loopexit36, label %140, !llvm.loop !146

.loopexit36:                                      ; preds = %140, %134
  store i32 1, ptr %14, align 8, !tbaa !63
  %150 = add i32 %37, %50
  %151 = load i32, ptr %3, align 4, !tbaa !75
  br label %152

152:                                              ; preds = %.loopexit36, %42
  %153 = phi i32 [ %151, %.loopexit36 ], [ %43, %42 ]
  %154 = phi i32 [ %68, %.loopexit36 ], [ %46, %42 ]
  %155 = phi i32 [ %150, %.loopexit36 ], [ %50, %42 ]
  %156 = load ptr, ptr %0, align 8, !tbaa !20
  %157 = getelementptr inbounds nuw i8, ptr %156, i64 8
  %158 = load i32, ptr %157, align 8, !tbaa !81
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %249, label %160

160:                                              ; preds = %152
  %161 = load ptr, ptr %7, align 8, !tbaa !34
  %162 = zext i32 %154 to i64
  %163 = getelementptr inbounds nuw i8, ptr %161, i64 %162
  %164 = zext i32 %153 to i64
  %165 = getelementptr inbounds nuw i8, ptr %163, i64 %164
  %166 = tail call i32 @llvm.umin.i32(i32 %158, i32 %155)
  %167 = icmp eq i32 %155, 0
  br i1 %167, label %191, label %168

168:                                              ; preds = %160
  %169 = sub i32 %158, %166
  store i32 %169, ptr %157, align 8, !tbaa !81
  %170 = load ptr, ptr %156, align 8, !tbaa !82
  %171 = zext i32 %166 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %165, ptr align 1 %170, i64 %171, i1 false)
  %172 = getelementptr inbounds nuw i8, ptr %156, i64 56
  %173 = load ptr, ptr %172, align 8, !tbaa !19
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 48
  %175 = load i32, ptr %174, align 8, !tbaa !30
  switch i32 %175, label %184 [
    i32 1, label %176
    i32 2, label %180
  ]

176:                                              ; preds = %168
  %177 = getelementptr inbounds nuw i8, ptr %156, i64 96
  %178 = load i64, ptr %177, align 8, !tbaa !59
  %179 = tail call i64 @adler32(i64 noundef %178, ptr noundef %165, i32 noundef %166) #11
  store i64 %179, ptr %177, align 8, !tbaa !59
  br label %184

180:                                              ; preds = %168
  %181 = getelementptr inbounds nuw i8, ptr %156, i64 96
  %182 = load i64, ptr %181, align 8, !tbaa !59
  %183 = tail call i64 @crc32(i64 noundef %182, ptr noundef %165, i32 noundef %166) #11
  store i64 %183, ptr %181, align 8, !tbaa !59
  br label %184

184:                                              ; preds = %180, %176, %168
  %185 = load ptr, ptr %156, align 8, !tbaa !82
  %186 = getelementptr inbounds nuw i8, ptr %185, i64 %171
  store ptr %186, ptr %156, align 8, !tbaa !82
  %187 = getelementptr inbounds nuw i8, ptr %156, i64 16
  %188 = load i64, ptr %187, align 8, !tbaa !53
  %189 = add i64 %188, %171
  store i64 %189, ptr %187, align 8, !tbaa !53
  %190 = load i32, ptr %3, align 4, !tbaa !75
  br label %191

191:                                              ; preds = %184, %160
  %192 = phi i32 [ %153, %160 ], [ %190, %184 ]
  %193 = add i32 %192, %166
  store i32 %193, ptr %3, align 4, !tbaa !75
  %194 = load i32, ptr %10, align 4, !tbaa !76
  %195 = add i32 %194, %193
  %196 = icmp ugt i32 %195, 2
  br i1 %196, label %197, label %.loopexit

197:                                              ; preds = %191
  %198 = load i32, ptr %6, align 4, !tbaa !73
  %199 = sub i32 %198, %194
  %200 = load ptr, ptr %7, align 8, !tbaa !34
  %201 = zext i32 %199 to i64
  %202 = getelementptr inbounds nuw i8, ptr %200, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !8
  %204 = zext i8 %203 to i32
  store i32 %204, ptr %15, align 8, !tbaa !80
  %205 = load i32, ptr %16, align 8, !tbaa !51
  %206 = shl i32 %204, %205
  %207 = add i32 %199, 1
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds nuw i8, ptr %200, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !8
  %211 = zext i8 %210 to i32
  %212 = xor i32 %206, %211
  %213 = load i32, ptr %17, align 4, !tbaa !50
  %214 = and i32 %212, %213
  store i32 %214, ptr %15, align 8, !tbaa !80
  br label %215

215:                                              ; preds = %220, %197
  %216 = phi i32 [ %228, %220 ], [ %214, %197 ]
  %217 = phi i32 [ %240, %220 ], [ %194, %197 ]
  %218 = phi i32 [ %239, %220 ], [ %199, %197 ]
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %.loopexit, label %220

220:                                              ; preds = %215
  %221 = shl i32 %216, %205
  %222 = add i32 %218, 2
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds nuw i8, ptr %200, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !8
  %226 = zext i8 %225 to i32
  %227 = xor i32 %221, %226
  %228 = and i32 %227, %213
  store i32 %228, ptr %15, align 8, !tbaa !80
  %229 = load ptr, ptr %12, align 8, !tbaa !37
  %230 = zext i32 %228 to i64
  %231 = getelementptr inbounds nuw [2 x i8], ptr %229, i64 %230
  %232 = load i16, ptr %231, align 2, !tbaa !62
  %233 = load ptr, ptr %13, align 8, !tbaa !35
  %234 = load i32, ptr %18, align 8, !tbaa !33
  %235 = and i32 %234, %218
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds nuw [2 x i8], ptr %233, i64 %236
  store i16 %232, ptr %237, align 2, !tbaa !62
  %238 = trunc i32 %218 to i16
  store i16 %238, ptr %231, align 2, !tbaa !62
  %239 = add i32 %218, 1
  %240 = add i32 %217, -1
  store i32 %240, ptr %10, align 4, !tbaa !76
  %241 = add i32 %240, %193
  %242 = icmp ult i32 %241, 3
  br i1 %242, label %.loopexit, label %215, !llvm.loop !91

.loopexit:                                        ; preds = %220, %215, %191
  %243 = icmp ult i32 %193, 262
  br i1 %243, label %244, label %249

244:                                              ; preds = %.loopexit
  %245 = load ptr, ptr %0, align 8, !tbaa !20
  %246 = getelementptr inbounds nuw i8, ptr %245, i64 8
  %247 = load i32, ptr %246, align 8, !tbaa !81
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %42, !llvm.loop !92

249:                                              ; preds = %244, %.loopexit, %152
  %250 = phi i32 [ %193, %244 ], [ %193, %.loopexit ], [ %153, %152 ]
  %251 = load i64, ptr %19, align 8, !tbaa !38
  %252 = load i64, ptr %5, align 8, !tbaa !61
  %253 = icmp ult i64 %251, %252
  br i1 %253, label %254, label %281

254:                                              ; preds = %249
  %255 = load i32, ptr %6, align 4, !tbaa !73
  %256 = zext i32 %255 to i64
  %257 = zext i32 %250 to i64
  %258 = add nuw nsw i64 %256, %257
  %259 = icmp ult i64 %251, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %254
  %261 = sub i64 %252, %258
  %262 = tail call i64 @llvm.umin.i64(i64 %261, i64 258)
  %263 = load ptr, ptr %7, align 8, !tbaa !34
  %264 = getelementptr inbounds nuw i8, ptr %263, i64 %258
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %264, i8 0, i64 %262, i1 false)
  %265 = add nuw nsw i64 %262, %258
  br label %278

266:                                              ; preds = %254
  %267 = add nuw nsw i64 %258, 258
  %268 = icmp ult i64 %251, %267
  br i1 %268, label %269, label %281

269:                                              ; preds = %266
  %270 = sub nuw nsw i64 %267, %251
  %271 = sub i64 %252, %251
  %272 = tail call i64 @llvm.umin.i64(i64 %270, i64 %271)
  %273 = load ptr, ptr %7, align 8, !tbaa !34
  %274 = getelementptr inbounds nuw i8, ptr %273, i64 %251
  %275 = and i64 %272, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %274, i8 0, i64 %275, i1 false)
  %276 = load i64, ptr %19, align 8, !tbaa !38
  %277 = add i64 %276, %272
  br label %278

278:                                              ; preds = %269, %260
  %279 = phi i64 [ %265, %260 ], [ %277, %269 ]
  store i64 %279, ptr %19, align 8, !tbaa !38
  %280 = load i32, ptr %3, align 4, !tbaa !75
  br label %281

281:                                              ; preds = %278, %266, %249
  %282 = phi i32 [ %250, %249 ], [ %250, %266 ], [ %280, %278 ]
  %283 = icmp ult i32 %282, 262
  %284 = and i1 %20, %283
  br i1 %284, label %.loopexit39, label %285

285:                                              ; preds = %281
  %286 = icmp eq i32 %282, 0
  br i1 %286, label %674, label %287

287:                                              ; preds = %285
  %288 = icmp ugt i32 %282, 2
  br i1 %288, label %289, label %473

289:                                              ; preds = %287, %33
  %290 = phi i32 [ %282, %287 ], [ %34, %33 ]
  %291 = load i32, ptr %15, align 8, !tbaa !80
  %292 = load i32, ptr %16, align 8, !tbaa !51
  %293 = shl i32 %291, %292
  %294 = load ptr, ptr %7, align 8, !tbaa !34
  %295 = load i32, ptr %6, align 4, !tbaa !73
  %296 = add i32 %295, 2
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds nuw i8, ptr %294, i64 %297
  %299 = load i8, ptr %298, align 1, !tbaa !8
  %300 = zext i8 %299 to i32
  %301 = xor i32 %293, %300
  %302 = load i32, ptr %17, align 4, !tbaa !50
  %303 = and i32 %301, %302
  store i32 %303, ptr %15, align 8, !tbaa !80
  %304 = load ptr, ptr %12, align 8, !tbaa !37
  %305 = zext i32 %303 to i64
  %306 = getelementptr inbounds nuw [2 x i8], ptr %304, i64 %305
  %307 = load i16, ptr %306, align 2, !tbaa !62
  %308 = load ptr, ptr %13, align 8, !tbaa !35
  %309 = load i32, ptr %18, align 8, !tbaa !33
  %310 = and i32 %309, %295
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds nuw [2 x i8], ptr %308, i64 %311
  store i16 %307, ptr %312, align 2, !tbaa !62
  %313 = zext i16 %307 to i32
  %314 = trunc i32 %295 to i16
  store i16 %314, ptr %306, align 2, !tbaa !62
  %315 = icmp eq i16 %307, 0
  br i1 %315, label %473, label %316

316:                                              ; preds = %289
  %317 = sub i32 %295, %313
  %318 = load i32, ptr %4, align 8, !tbaa !32
  %319 = add i32 %318, -262
  %320 = icmp ugt i32 %317, %319
  br i1 %320, label %473, label %321

321:                                              ; preds = %316
  %322 = zext i32 %295 to i64
  %323 = getelementptr inbounds nuw i8, ptr %294, i64 %322
  %324 = load i32, ptr %21, align 8, !tbaa !77
  %325 = tail call i32 @llvm.usub.sat.i32(i32 %295, i32 %319)
  %326 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %324, i32 -1)
  %327 = extractvalue { i32, i1 } %326, 1, !nosanitize !57
  br i1 %327, label %.loopexit38, label %328, !prof !58, !nosanitize !57

.loopexit38:                                      ; preds = %321, %.split.loop.exit, %358
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

328:                                              ; preds = %321
  %329 = getelementptr inbounds nuw i8, ptr %323, i64 258
  %330 = load i32, ptr %22, align 8, !tbaa !70
  %331 = load i32, ptr %23, align 4, !tbaa !72
  %332 = extractvalue { i32, i1 } %326, 0, !nosanitize !57
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8, ptr %323, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !8
  %336 = sext i32 %324 to i64
  %337 = getelementptr inbounds i8, ptr %323, i64 %336
  %338 = load i8, ptr %337, align 1, !tbaa !8
  %339 = load i32, ptr %24, align 4, !tbaa !68
  %340 = icmp ult i32 %324, %339
  %341 = lshr i32 %331, 2
  %342 = select i1 %340, i32 %331, i32 %341
  %343 = tail call i32 @llvm.umin.i32(i32 %330, i32 %290)
  %344 = getelementptr inbounds nuw i8, ptr %323, i64 1
  %345 = ptrtoint ptr %329 to i64
  br label %346

346:                                              ; preds = %457, %328
  %347 = phi i32 [ %324, %328 ], [ %458, %457 ]
  %348 = phi i32 [ %342, %328 ], [ %467, %457 ]
  %349 = phi i32 [ %313, %328 ], [ %465, %457 ]
  %350 = phi i8 [ %335, %328 ], [ %459, %457 ]
  %351 = phi i8 [ %338, %328 ], [ %460, %457 ]
  %352 = zext nneg i32 %349 to i64
  %353 = getelementptr inbounds nuw i8, ptr %294, i64 %352
  %354 = sext i32 %347 to i64
  %355 = getelementptr inbounds i8, ptr %353, i64 %354
  %356 = load i8, ptr %355, align 1, !tbaa !8
  %357 = icmp eq i8 %356, %351
  br i1 %357, label %358, label %457

358:                                              ; preds = %346
  %359 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %347, i32 -1)
  %360 = extractvalue { i32, i1 } %359, 1, !nosanitize !57
  br i1 %360, label %.loopexit38, label %361, !prof !58, !nosanitize !57

361:                                              ; preds = %358
  %362 = extractvalue { i32, i1 } %359, 0, !nosanitize !57
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8, ptr %353, i64 %363
  %365 = load i8, ptr %364, align 1, !tbaa !8
  %366 = icmp eq i8 %365, %350
  br i1 %366, label %367, label %457

367:                                              ; preds = %361
  %368 = load i8, ptr %353, align 1, !tbaa !8
  %369 = load i8, ptr %323, align 1, !tbaa !8
  %370 = icmp eq i8 %368, %369
  br i1 %370, label %371, label %457

371:                                              ; preds = %367
  %372 = getelementptr inbounds nuw i8, ptr %353, i64 1
  %373 = load i8, ptr %372, align 1, !tbaa !8
  %374 = load i8, ptr %344, align 1, !tbaa !8
  %375 = icmp eq i8 %373, %374
  br i1 %375, label %376, label %457

376:                                              ; preds = %371
  %377 = getelementptr inbounds nuw i8, ptr %353, i64 2
  br label %378

378:                                              ; preds = %423, %376
  %379 = phi ptr [ %377, %376 ], [ %427, %423 ]
  %380 = phi i64 [ 2, %376 ], [ %424, %423 ]
  %381 = getelementptr inbounds nuw i8, ptr %323, i64 %380
  %382 = getelementptr inbounds nuw i8, ptr %381, i64 1
  %383 = load i8, ptr %382, align 1, !tbaa !8
  %384 = getelementptr inbounds nuw i8, ptr %379, i64 1
  %385 = load i8, ptr %384, align 1, !tbaa !8
  %386 = icmp eq i8 %383, %385
  br i1 %386, label %387, label %.split.loop.exit.split.loop.exit

387:                                              ; preds = %378
  %388 = getelementptr inbounds nuw i8, ptr %381, i64 2
  %389 = load i8, ptr %388, align 1, !tbaa !8
  %390 = getelementptr inbounds nuw i8, ptr %379, i64 2
  %391 = load i8, ptr %390, align 1, !tbaa !8
  %392 = icmp eq i8 %389, %391
  br i1 %392, label %393, label %.split.loop.exit.split.loop.exit108

393:                                              ; preds = %387
  %394 = getelementptr inbounds nuw i8, ptr %381, i64 3
  %395 = load i8, ptr %394, align 1, !tbaa !8
  %396 = getelementptr inbounds nuw i8, ptr %379, i64 3
  %397 = load i8, ptr %396, align 1, !tbaa !8
  %398 = icmp eq i8 %395, %397
  br i1 %398, label %399, label %.split.loop.exit.split.loop.exit110

399:                                              ; preds = %393
  %400 = getelementptr inbounds nuw i8, ptr %381, i64 4
  %401 = load i8, ptr %400, align 1, !tbaa !8
  %402 = getelementptr inbounds nuw i8, ptr %379, i64 4
  %403 = load i8, ptr %402, align 1, !tbaa !8
  %404 = icmp eq i8 %401, %403
  br i1 %404, label %405, label %.split.loop.exit.split.loop.exit112

405:                                              ; preds = %399
  %406 = getelementptr inbounds nuw i8, ptr %381, i64 5
  %407 = load i8, ptr %406, align 1, !tbaa !8
  %408 = getelementptr inbounds nuw i8, ptr %379, i64 5
  %409 = load i8, ptr %408, align 1, !tbaa !8
  %410 = icmp eq i8 %407, %409
  br i1 %410, label %411, label %.split.loop.exit.split.loop.exit114

411:                                              ; preds = %405
  %412 = getelementptr inbounds nuw i8, ptr %381, i64 6
  %413 = load i8, ptr %412, align 1, !tbaa !8
  %414 = getelementptr inbounds nuw i8, ptr %379, i64 6
  %415 = load i8, ptr %414, align 1, !tbaa !8
  %416 = icmp eq i8 %413, %415
  br i1 %416, label %417, label %.split.loop.exit.split.loop.exit116

417:                                              ; preds = %411
  %418 = getelementptr inbounds nuw i8, ptr %381, i64 7
  %419 = load i8, ptr %418, align 1, !tbaa !8
  %420 = getelementptr inbounds nuw i8, ptr %379, i64 7
  %421 = load i8, ptr %420, align 1, !tbaa !8
  %422 = icmp eq i8 %419, %421
  br i1 %422, label %423, label %.split.loop.exit.split.loop.exit118

423:                                              ; preds = %417
  %424 = add nuw nsw i64 %380, 8
  %425 = getelementptr inbounds nuw i8, ptr %323, i64 %424
  %426 = load i8, ptr %425, align 1, !tbaa !8
  %427 = getelementptr inbounds nuw i8, ptr %379, i64 8
  %428 = load i8, ptr %427, align 1, !tbaa !8
  %429 = icmp eq i8 %426, %428
  %430 = icmp samesign ult i64 %380, 250
  %431 = select i1 %429, i1 %430, i1 false
  br i1 %431, label %378, label %.split.loop.exit.split.loop.exit120, !llvm.loop !147

.split.loop.exit.split.loop.exit:                 ; preds = %378
  %432 = getelementptr inbounds nuw i8, ptr %381, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit108:              ; preds = %387
  %433 = getelementptr inbounds nuw i8, ptr %381, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit110:              ; preds = %393
  %434 = getelementptr inbounds nuw i8, ptr %381, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit112:              ; preds = %399
  %435 = getelementptr inbounds nuw i8, ptr %381, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit114:              ; preds = %405
  %436 = getelementptr inbounds nuw i8, ptr %381, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit116:              ; preds = %411
  %437 = getelementptr inbounds nuw i8, ptr %381, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit118:              ; preds = %417
  %438 = getelementptr inbounds nuw i8, ptr %381, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit120:              ; preds = %423
  %439 = getelementptr inbounds nuw i8, ptr %323, i64 %424
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit120, %.split.loop.exit.split.loop.exit118, %.split.loop.exit.split.loop.exit116, %.split.loop.exit.split.loop.exit114, %.split.loop.exit.split.loop.exit112, %.split.loop.exit.split.loop.exit110, %.split.loop.exit.split.loop.exit108, %.split.loop.exit.split.loop.exit
  %440 = phi ptr [ %433, %.split.loop.exit.split.loop.exit108 ], [ %434, %.split.loop.exit.split.loop.exit110 ], [ %432, %.split.loop.exit.split.loop.exit ], [ %438, %.split.loop.exit.split.loop.exit118 ], [ %437, %.split.loop.exit.split.loop.exit116 ], [ %436, %.split.loop.exit.split.loop.exit114 ], [ %435, %.split.loop.exit.split.loop.exit112 ], [ %439, %.split.loop.exit.split.loop.exit120 ]
  %441 = ptrtoint ptr %440 to i64
  %442 = sub i64 %345, %441
  %443 = trunc i64 %442 to i32
  %444 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %443), !nosanitize !57
  %445 = extractvalue { i32, i1 } %444, 0, !nosanitize !57
  %446 = extractvalue { i32, i1 } %444, 1, !nosanitize !57
  br i1 %446, label %.loopexit38, label %447, !prof !58, !nosanitize !57

447:                                              ; preds = %.split.loop.exit
  %448 = icmp sgt i32 %445, %347
  br i1 %448, label %449, label %457

449:                                              ; preds = %447
  store i32 %349, ptr %8, align 8, !tbaa !83
  %450 = icmp slt i32 %445, %343
  br i1 %450, label %451, label %470

451:                                              ; preds = %449
  %452 = sext i32 %445 to i64
  %453 = getelementptr i8, ptr %323, i64 %452
  %454 = getelementptr i8, ptr %453, i64 -1
  %455 = load i8, ptr %454, align 1, !tbaa !8
  %456 = load i8, ptr %453, align 1, !tbaa !8
  br label %457

457:                                              ; preds = %451, %447, %371, %367, %361, %346
  %458 = phi i32 [ %347, %346 ], [ %347, %361 ], [ %347, %367 ], [ %347, %371 ], [ %445, %451 ], [ %347, %447 ]
  %459 = phi i8 [ %350, %346 ], [ %350, %361 ], [ %350, %367 ], [ %350, %371 ], [ %455, %451 ], [ %350, %447 ]
  %460 = phi i8 [ %351, %346 ], [ %351, %361 ], [ %351, %367 ], [ %351, %371 ], [ %456, %451 ], [ %351, %447 ]
  %461 = and i32 %349, %309
  %462 = zext nneg i32 %461 to i64
  %463 = getelementptr inbounds nuw [2 x i8], ptr %308, i64 %462
  %464 = load i16, ptr %463, align 2, !tbaa !62
  %465 = zext i16 %464 to i32
  %466 = icmp uge i32 %325, %465
  %467 = add i32 %348, -1
  %468 = icmp eq i32 %467, 0
  %469 = select i1 %466, i1 true, i1 %468
  br i1 %469, label %470, label %346, !llvm.loop !148

470:                                              ; preds = %457, %449
  %471 = phi i32 [ %445, %449 ], [ %458, %457 ]
  %472 = tail call i32 @llvm.umin.i32(i32 %471, i32 %290)
  store i32 %472, ptr %25, align 8, !tbaa !78
  br label %475

473:                                              ; preds = %316, %289, %287
  %474 = load i32, ptr %25, align 8, !tbaa !78
  br label %475

475:                                              ; preds = %473, %470
  %476 = phi i32 [ %474, %473 ], [ %472, %470 ]
  %477 = icmp ugt i32 %476, 2
  br i1 %477, label %478, label %571

478:                                              ; preds = %475
  %479 = trunc i32 %476 to i8
  %480 = add i8 %479, -3
  %481 = load i32, ptr %6, align 4, !tbaa !73
  %482 = load i32, ptr %8, align 8, !tbaa !83
  %483 = sub i32 %481, %482
  %484 = trunc i32 %483 to i16
  %485 = trunc i32 %483 to i8
  %486 = load ptr, ptr %26, align 8, !tbaa !44
  %487 = load i32, ptr %27, align 4, !tbaa !134
  %488 = add i32 %487, 1
  store i32 %488, ptr %27, align 4, !tbaa !134
  %489 = zext i32 %487 to i64
  %490 = getelementptr inbounds nuw i8, ptr %486, i64 %489
  store i8 %485, ptr %490, align 1, !tbaa !8
  %491 = lshr i32 %483, 8
  %492 = trunc i32 %491 to i8
  %493 = load ptr, ptr %26, align 8, !tbaa !44
  %494 = load i32, ptr %27, align 4, !tbaa !134
  %495 = add i32 %494, 1
  store i32 %495, ptr %27, align 4, !tbaa !134
  %496 = zext i32 %494 to i64
  %497 = getelementptr inbounds nuw i8, ptr %493, i64 %496
  store i8 %492, ptr %497, align 1, !tbaa !8
  %498 = load ptr, ptr %26, align 8, !tbaa !44
  %499 = load i32, ptr %27, align 4, !tbaa !134
  %500 = add i32 %499, 1
  store i32 %500, ptr %27, align 4, !tbaa !134
  %501 = zext i32 %499 to i64
  %502 = getelementptr inbounds nuw i8, ptr %498, i64 %501
  store i8 %480, ptr %502, align 1, !tbaa !8
  %503 = add i16 %484, -1
  %504 = zext i8 %480 to i64
  %505 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %504
  %506 = load i8, ptr %505, align 1, !tbaa !8
  %507 = zext i8 %506 to i64
  %508 = getelementptr [4 x i8], ptr %30, i64 %507
  %509 = load i16, ptr %508, align 4, !tbaa !8
  %510 = add i16 %509, 1
  store i16 %510, ptr %508, align 4, !tbaa !8
  %511 = icmp ult i16 %503, 256
  br i1 %511, label %512, label %515

512:                                              ; preds = %478
  %513 = zext nneg i16 %503 to i64
  %514 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %513
  br label %520

515:                                              ; preds = %478
  %516 = lshr i16 %503, 7
  %517 = zext nneg i16 %516 to i64
  %518 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %517
  %519 = getelementptr inbounds nuw i8, ptr %518, i64 256
  br label %520

520:                                              ; preds = %515, %512
  %521 = phi ptr [ %514, %512 ], [ %519, %515 ]
  %522 = load i8, ptr %521, align 1, !tbaa !8
  %523 = zext i8 %522 to i64
  %524 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %523
  %525 = load i16, ptr %524, align 4, !tbaa !8
  %526 = add i16 %525, 1
  store i16 %526, ptr %524, align 4, !tbaa !8
  %527 = load i32, ptr %27, align 4, !tbaa !134
  %528 = load i32, ptr %29, align 8, !tbaa !45
  %529 = icmp eq i32 %527, %528
  %530 = load i32, ptr %25, align 8, !tbaa !78
  %531 = load i32, ptr %3, align 4, !tbaa !75
  %532 = sub i32 %531, %530
  store i32 %532, ptr %3, align 4, !tbaa !75
  %533 = load i32, ptr %32, align 8, !tbaa !66
  %534 = icmp ule i32 %530, %533
  %535 = icmp ugt i32 %532, 2
  %536 = select i1 %534, i1 %535, i1 false
  br i1 %536, label %537, label %603

537:                                              ; preds = %520
  %538 = add i32 %530, -1
  store i32 %538, ptr %25, align 8, !tbaa !78
  %539 = load i32, ptr %16, align 8, !tbaa !51
  %540 = load ptr, ptr %7, align 8, !tbaa !34
  %541 = load i32, ptr %17, align 4, !tbaa !50
  %542 = load ptr, ptr %12, align 8, !tbaa !37
  %543 = load ptr, ptr %13, align 8, !tbaa !35
  %544 = load i32, ptr %18, align 8, !tbaa !33
  %545 = load i32, ptr %6, align 4, !tbaa !73
  %546 = load i32, ptr %15, align 8, !tbaa !80
  br label %547

547:                                              ; preds = %547, %537
  %548 = phi i32 [ %567, %547 ], [ %538, %537 ]
  %549 = phi i32 [ %559, %547 ], [ %546, %537 ]
  %550 = phi i32 [ %551, %547 ], [ %545, %537 ]
  %551 = add i32 %550, 1
  store i32 %551, ptr %6, align 4, !tbaa !73
  %552 = shl i32 %549, %539
  %553 = add i32 %550, 3
  %554 = zext i32 %553 to i64
  %555 = getelementptr inbounds nuw i8, ptr %540, i64 %554
  %556 = load i8, ptr %555, align 1, !tbaa !8
  %557 = zext i8 %556 to i32
  %558 = xor i32 %552, %557
  %559 = and i32 %558, %541
  store i32 %559, ptr %15, align 8, !tbaa !80
  %560 = zext i32 %559 to i64
  %561 = getelementptr inbounds nuw [2 x i8], ptr %542, i64 %560
  %562 = load i16, ptr %561, align 2, !tbaa !62
  %563 = and i32 %551, %544
  %564 = zext i32 %563 to i64
  %565 = getelementptr inbounds nuw [2 x i8], ptr %543, i64 %564
  store i16 %562, ptr %565, align 2, !tbaa !62
  %566 = trunc i32 %551 to i16
  store i16 %566, ptr %561, align 2, !tbaa !62
  %567 = add i32 %548, -1
  store i32 %567, ptr %25, align 8, !tbaa !78
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %547, !llvm.loop !149

569:                                              ; preds = %547
  %570 = add i32 %550, 2
  store i32 %570, ptr %6, align 4, !tbaa !73
  br i1 %529, label %621, label %.backedge

571:                                              ; preds = %475
  %572 = load ptr, ptr %7, align 8, !tbaa !34
  %573 = load i32, ptr %6, align 4, !tbaa !73
  %574 = zext i32 %573 to i64
  %575 = getelementptr inbounds nuw i8, ptr %572, i64 %574
  %576 = load i8, ptr %575, align 1, !tbaa !8
  %577 = load ptr, ptr %26, align 8, !tbaa !44
  %578 = load i32, ptr %27, align 4, !tbaa !134
  %579 = add i32 %578, 1
  store i32 %579, ptr %27, align 4, !tbaa !134
  %580 = zext i32 %578 to i64
  %581 = getelementptr inbounds nuw i8, ptr %577, i64 %580
  store i8 0, ptr %581, align 1, !tbaa !8
  %582 = load ptr, ptr %26, align 8, !tbaa !44
  %583 = load i32, ptr %27, align 4, !tbaa !134
  %584 = add i32 %583, 1
  store i32 %584, ptr %27, align 4, !tbaa !134
  %585 = zext i32 %583 to i64
  %586 = getelementptr inbounds nuw i8, ptr %582, i64 %585
  store i8 0, ptr %586, align 1, !tbaa !8
  %587 = load ptr, ptr %26, align 8, !tbaa !44
  %588 = load i32, ptr %27, align 4, !tbaa !134
  %589 = add i32 %588, 1
  store i32 %589, ptr %27, align 4, !tbaa !134
  %590 = zext i32 %588 to i64
  %591 = getelementptr inbounds nuw i8, ptr %587, i64 %590
  store i8 %576, ptr %591, align 1, !tbaa !8
  %592 = zext i8 %576 to i64
  %593 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %592
  %594 = load i16, ptr %593, align 4, !tbaa !8
  %595 = add i16 %594, 1
  store i16 %595, ptr %593, align 4, !tbaa !8
  %596 = load i32, ptr %27, align 4, !tbaa !134
  %597 = load i32, ptr %29, align 8, !tbaa !45
  %598 = icmp eq i32 %596, %597
  %599 = load i32, ptr %3, align 4, !tbaa !75
  %600 = add i32 %599, -1
  store i32 %600, ptr %3, align 4, !tbaa !75
  %601 = load i32, ptr %6, align 4, !tbaa !73
  %602 = add i32 %601, 1
  store i32 %602, ptr %6, align 4, !tbaa !73
  br i1 %598, label %621, label %.backedge

603:                                              ; preds = %520
  %604 = load i32, ptr %6, align 4, !tbaa !73
  %605 = add i32 %604, %530
  store i32 %605, ptr %6, align 4, !tbaa !73
  store i32 0, ptr %25, align 8, !tbaa !78
  %606 = load ptr, ptr %7, align 8, !tbaa !34
  %607 = zext i32 %605 to i64
  %608 = getelementptr inbounds nuw i8, ptr %606, i64 %607
  %609 = load i8, ptr %608, align 1, !tbaa !8
  %610 = zext i8 %609 to i32
  store i32 %610, ptr %15, align 8, !tbaa !80
  %611 = load i32, ptr %16, align 8, !tbaa !51
  %612 = shl i32 %610, %611
  %613 = add i32 %605, 1
  %614 = zext i32 %613 to i64
  %615 = getelementptr inbounds nuw i8, ptr %606, i64 %614
  %616 = load i8, ptr %615, align 1, !tbaa !8
  %617 = zext i8 %616 to i32
  %618 = xor i32 %612, %617
  %619 = load i32, ptr %17, align 4, !tbaa !50
  %620 = and i32 %618, %619
  store i32 %620, ptr %15, align 8, !tbaa !80
  br i1 %529, label %621, label %.backedge

621:                                              ; preds = %603, %571, %569
  %622 = phi i32 [ %602, %571 ], [ %570, %569 ], [ %605, %603 ]
  %623 = load i64, ptr %9, align 8, !tbaa !74
  %624 = icmp sgt i64 %623, -1
  br i1 %624, label %625, label %629

625:                                              ; preds = %621
  %626 = load ptr, ptr %7, align 8, !tbaa !34
  %627 = and i64 %623, 4294967295
  %628 = getelementptr inbounds nuw i8, ptr %626, i64 %627
  br label %629

629:                                              ; preds = %625, %621
  %630 = phi ptr [ %628, %625 ], [ null, %621 ]
  %631 = zext i32 %622 to i64
  %632 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %631, i64 %623), !nosanitize !57
  %633 = extractvalue { i64, i1 } %632, 1, !nosanitize !57
  br i1 %633, label %.loopexit41, label %634, !prof !58, !nosanitize !57

.loopexit41:                                      ; preds = %629, %741, %685
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

634:                                              ; preds = %629
  %635 = extractvalue { i64, i1 } %632, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %630, i64 noundef %635, i32 noundef 0) #11
  %636 = load i32, ptr %6, align 4, !tbaa !73
  %637 = zext i32 %636 to i64
  store i64 %637, ptr %9, align 8, !tbaa !74
  %638 = load ptr, ptr %0, align 8, !tbaa !20
  %639 = getelementptr inbounds nuw i8, ptr %638, i64 56
  %640 = load ptr, ptr %639, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %640) #11
  %641 = getelementptr inbounds nuw i8, ptr %640, i64 40
  %642 = load i64, ptr %641, align 8, !tbaa !55
  %643 = getelementptr inbounds nuw i8, ptr %638, i64 32
  %644 = load i32, ptr %643, align 8, !tbaa !106
  %645 = zext i32 %644 to i64
  %646 = tail call i64 @llvm.umin.i64(i64 %642, i64 %645)
  %647 = icmp eq i64 %646, 0
  br i1 %647, label %669, label %648

648:                                              ; preds = %634
  %649 = trunc nuw i64 %646 to i32
  %650 = getelementptr inbounds nuw i8, ptr %638, i64 24
  %651 = load ptr, ptr %650, align 8, !tbaa !105
  %652 = getelementptr inbounds nuw i8, ptr %640, i64 32
  %653 = load ptr, ptr %652, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %651, ptr align 1 %653, i64 %646, i1 false)
  %654 = load ptr, ptr %650, align 8, !tbaa !105
  %655 = getelementptr inbounds nuw i8, ptr %654, i64 %646
  store ptr %655, ptr %650, align 8, !tbaa !105
  %656 = load ptr, ptr %652, align 8, !tbaa !56
  %657 = getelementptr inbounds nuw i8, ptr %656, i64 %646
  store ptr %657, ptr %652, align 8, !tbaa !56
  %658 = getelementptr inbounds nuw i8, ptr %638, i64 40
  %659 = load i64, ptr %658, align 8, !tbaa !107
  %660 = add i64 %659, %646
  store i64 %660, ptr %658, align 8, !tbaa !107
  %661 = load i32, ptr %643, align 8, !tbaa !106
  %662 = sub i32 %661, %649
  store i32 %662, ptr %643, align 8, !tbaa !106
  %663 = load i64, ptr %641, align 8, !tbaa !55
  %664 = sub i64 %663, %646
  store i64 %664, ptr %641, align 8, !tbaa !55
  %665 = icmp eq i64 %663, %646
  br i1 %665, label %666, label %669

666:                                              ; preds = %648
  %667 = getelementptr inbounds nuw i8, ptr %640, i64 16
  %668 = load ptr, ptr %667, align 8, !tbaa !40
  store ptr %668, ptr %652, align 8, !tbaa !56
  br label %669

669:                                              ; preds = %666, %648, %634
  %670 = load ptr, ptr %0, align 8, !tbaa !20
  %671 = getelementptr inbounds nuw i8, ptr %670, i64 32
  %672 = load i32, ptr %671, align 8, !tbaa !106
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %.loopexit39, label %.backedge

.backedge:                                        ; preds = %669, %603, %571, %569
  br label %33

674:                                              ; preds = %285
  %675 = load i32, ptr %6, align 4, !tbaa !73
  %676 = tail call i32 @llvm.umin.i32(i32 %675, i32 2)
  store i32 %676, ptr %10, align 4, !tbaa !76
  %677 = icmp eq i32 %1, 4
  br i1 %677, label %678, label %731

678:                                              ; preds = %674
  %679 = load i64, ptr %9, align 8, !tbaa !74
  %680 = icmp sgt i64 %679, -1
  br i1 %680, label %681, label %685

681:                                              ; preds = %678
  %682 = load ptr, ptr %7, align 8, !tbaa !34
  %683 = and i64 %679, 4294967295
  %684 = getelementptr inbounds nuw i8, ptr %682, i64 %683
  br label %685

685:                                              ; preds = %681, %678
  %686 = phi ptr [ %684, %681 ], [ null, %678 ]
  %687 = zext i32 %675 to i64
  %688 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %687, i64 %679), !nosanitize !57
  %689 = extractvalue { i64, i1 } %688, 1, !nosanitize !57
  br i1 %689, label %.loopexit41, label %690, !prof !58, !nosanitize !57

690:                                              ; preds = %685
  %691 = extractvalue { i64, i1 } %688, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %686, i64 noundef %691, i32 noundef 1) #11
  %692 = load i32, ptr %6, align 4, !tbaa !73
  %693 = zext i32 %692 to i64
  store i64 %693, ptr %9, align 8, !tbaa !74
  %694 = load ptr, ptr %0, align 8, !tbaa !20
  %695 = getelementptr inbounds nuw i8, ptr %694, i64 56
  %696 = load ptr, ptr %695, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %696) #11
  %697 = getelementptr inbounds nuw i8, ptr %696, i64 40
  %698 = load i64, ptr %697, align 8, !tbaa !55
  %699 = getelementptr inbounds nuw i8, ptr %694, i64 32
  %700 = load i32, ptr %699, align 8, !tbaa !106
  %701 = zext i32 %700 to i64
  %702 = tail call i64 @llvm.umin.i64(i64 %698, i64 %701)
  %703 = icmp eq i64 %702, 0
  br i1 %703, label %725, label %704

704:                                              ; preds = %690
  %705 = trunc nuw i64 %702 to i32
  %706 = getelementptr inbounds nuw i8, ptr %694, i64 24
  %707 = load ptr, ptr %706, align 8, !tbaa !105
  %708 = getelementptr inbounds nuw i8, ptr %696, i64 32
  %709 = load ptr, ptr %708, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %707, ptr align 1 %709, i64 %702, i1 false)
  %710 = load ptr, ptr %706, align 8, !tbaa !105
  %711 = getelementptr inbounds nuw i8, ptr %710, i64 %702
  store ptr %711, ptr %706, align 8, !tbaa !105
  %712 = load ptr, ptr %708, align 8, !tbaa !56
  %713 = getelementptr inbounds nuw i8, ptr %712, i64 %702
  store ptr %713, ptr %708, align 8, !tbaa !56
  %714 = getelementptr inbounds nuw i8, ptr %694, i64 40
  %715 = load i64, ptr %714, align 8, !tbaa !107
  %716 = add i64 %715, %702
  store i64 %716, ptr %714, align 8, !tbaa !107
  %717 = load i32, ptr %699, align 8, !tbaa !106
  %718 = sub i32 %717, %705
  store i32 %718, ptr %699, align 8, !tbaa !106
  %719 = load i64, ptr %697, align 8, !tbaa !55
  %720 = sub i64 %719, %702
  store i64 %720, ptr %697, align 8, !tbaa !55
  %721 = icmp eq i64 %719, %702
  br i1 %721, label %722, label %725

722:                                              ; preds = %704
  %723 = getelementptr inbounds nuw i8, ptr %696, i64 16
  %724 = load ptr, ptr %723, align 8, !tbaa !40
  store ptr %724, ptr %708, align 8, !tbaa !56
  br label %725

725:                                              ; preds = %722, %704, %690
  %726 = load ptr, ptr %0, align 8, !tbaa !20
  %727 = getelementptr inbounds nuw i8, ptr %726, i64 32
  %728 = load i32, ptr %727, align 8, !tbaa !106
  %729 = icmp eq i32 %728, 0
  %730 = select i1 %729, i32 2, i32 3
  br label %.loopexit39

731:                                              ; preds = %674
  %732 = load i32, ptr %27, align 4, !tbaa !134
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %786, label %734

734:                                              ; preds = %731
  %735 = load i64, ptr %9, align 8, !tbaa !74
  %736 = icmp sgt i64 %735, -1
  br i1 %736, label %737, label %741

737:                                              ; preds = %734
  %738 = load ptr, ptr %7, align 8, !tbaa !34
  %739 = and i64 %735, 4294967295
  %740 = getelementptr inbounds nuw i8, ptr %738, i64 %739
  br label %741

741:                                              ; preds = %737, %734
  %742 = phi ptr [ %740, %737 ], [ null, %734 ]
  %743 = zext i32 %675 to i64
  %744 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %743, i64 %735), !nosanitize !57
  %745 = extractvalue { i64, i1 } %744, 1, !nosanitize !57
  br i1 %745, label %.loopexit41, label %746, !prof !58, !nosanitize !57

746:                                              ; preds = %741
  %747 = extractvalue { i64, i1 } %744, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %742, i64 noundef %747, i32 noundef 0) #11
  %748 = load i32, ptr %6, align 4, !tbaa !73
  %749 = zext i32 %748 to i64
  store i64 %749, ptr %9, align 8, !tbaa !74
  %750 = load ptr, ptr %0, align 8, !tbaa !20
  %751 = getelementptr inbounds nuw i8, ptr %750, i64 56
  %752 = load ptr, ptr %751, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %752) #11
  %753 = getelementptr inbounds nuw i8, ptr %752, i64 40
  %754 = load i64, ptr %753, align 8, !tbaa !55
  %755 = getelementptr inbounds nuw i8, ptr %750, i64 32
  %756 = load i32, ptr %755, align 8, !tbaa !106
  %757 = zext i32 %756 to i64
  %758 = tail call i64 @llvm.umin.i64(i64 %754, i64 %757)
  %759 = icmp eq i64 %758, 0
  br i1 %759, label %781, label %760

760:                                              ; preds = %746
  %761 = trunc nuw i64 %758 to i32
  %762 = getelementptr inbounds nuw i8, ptr %750, i64 24
  %763 = load ptr, ptr %762, align 8, !tbaa !105
  %764 = getelementptr inbounds nuw i8, ptr %752, i64 32
  %765 = load ptr, ptr %764, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %763, ptr align 1 %765, i64 %758, i1 false)
  %766 = load ptr, ptr %762, align 8, !tbaa !105
  %767 = getelementptr inbounds nuw i8, ptr %766, i64 %758
  store ptr %767, ptr %762, align 8, !tbaa !105
  %768 = load ptr, ptr %764, align 8, !tbaa !56
  %769 = getelementptr inbounds nuw i8, ptr %768, i64 %758
  store ptr %769, ptr %764, align 8, !tbaa !56
  %770 = getelementptr inbounds nuw i8, ptr %750, i64 40
  %771 = load i64, ptr %770, align 8, !tbaa !107
  %772 = add i64 %771, %758
  store i64 %772, ptr %770, align 8, !tbaa !107
  %773 = load i32, ptr %755, align 8, !tbaa !106
  %774 = sub i32 %773, %761
  store i32 %774, ptr %755, align 8, !tbaa !106
  %775 = load i64, ptr %753, align 8, !tbaa !55
  %776 = sub i64 %775, %758
  store i64 %776, ptr %753, align 8, !tbaa !55
  %777 = icmp eq i64 %775, %758
  br i1 %777, label %778, label %781

778:                                              ; preds = %760
  %779 = getelementptr inbounds nuw i8, ptr %752, i64 16
  %780 = load ptr, ptr %779, align 8, !tbaa !40
  store ptr %780, ptr %764, align 8, !tbaa !56
  br label %781

781:                                              ; preds = %778, %760, %746
  %782 = load ptr, ptr %0, align 8, !tbaa !20
  %783 = getelementptr inbounds nuw i8, ptr %782, i64 32
  %784 = load i32, ptr %783, align 8, !tbaa !106
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %.loopexit39, label %786

786:                                              ; preds = %781, %731
  br label %.loopexit39

.loopexit39:                                      ; preds = %669, %281, %786, %781, %725
  %787 = phi i32 [ 1, %786 ], [ %730, %725 ], [ 0, %781 ], [ 0, %281 ], [ 0, %669 ]
  ret i32 %787
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
  %31 = getelementptr i8, ptr %0, i64 1240
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %36

36:                                               ; preds = %.backedge, %2
  %37 = load i32, ptr %3, align 4, !tbaa !75
  %38 = icmp ult i32 %37, 262
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %21, align 8, !tbaa !78
  %41 = load i32, ptr %8, align 8, !tbaa !83
  br label %298

42:                                               ; preds = %36
  %43 = load i32, ptr %4, align 8, !tbaa !32
  %44 = add i32 %43, -262
  %45 = zext i32 %43 to i64
  %46 = insertelement <2 x i32> poison, i32 %43, i64 0
  %47 = shufflevector <2 x i32> %46, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %48

48:                                               ; preds = %250, %42
  %49 = phi i32 [ %199, %250 ], [ %37, %42 ]
  %50 = load i64, ptr %5, align 8, !tbaa !61
  %51 = zext nneg i32 %49 to i64
  %52 = load i32, ptr %6, align 4, !tbaa !73
  %53 = zext i32 %52 to i64
  %54 = add nuw nsw i64 %51, %53
  %55 = sub i64 %50, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, ptr %4, align 8, !tbaa !32
  %58 = add i32 %44, %57
  %59 = icmp ult i32 %52, %58
  br i1 %59, label %158, label %60

60:                                               ; preds = %48
  %61 = load ptr, ptr %7, align 8, !tbaa !34
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 %45
  %63 = sub i32 %43, %56
  %64 = zext i32 %63 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 1 %62, i64 %64, i1 false)
  %65 = load <2 x i32>, ptr %6, align 4, !tbaa !4
  %66 = sub <2 x i32> %65, %47
  store <2 x i32> %66, ptr %6, align 4, !tbaa !4
  %67 = load i64, ptr %9, align 8, !tbaa !74
  %68 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %67, i64 %45), !nosanitize !57
  %69 = extractvalue { i64, i1 } %68, 1, !nosanitize !57
  br i1 %69, label %70, label %71, !prof !58, !nosanitize !57

70:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

71:                                               ; preds = %60
  %72 = extractvalue { i64, i1 } %68, 0, !nosanitize !57
  store i64 %72, ptr %9, align 8, !tbaa !74
  %73 = load i32, ptr %10, align 4, !tbaa !76
  %74 = extractelement <2 x i32> %66, i64 0
  %75 = icmp ugt i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 %74, ptr %10, align 4, !tbaa !76
  br label %77

77:                                               ; preds = %76, %71
  %78 = load i32, ptr %4, align 8, !tbaa !32
  %79 = load i32, ptr %11, align 4, !tbaa !36
  %80 = load ptr, ptr %12, align 8, !tbaa !37
  %81 = zext i32 %79 to i64
  %82 = getelementptr inbounds nuw [2 x i8], ptr %80, i64 %81
  %83 = add i32 %79, -1
  %84 = zext i32 %83 to i64
  %85 = add nuw nsw i64 %84, 1
  %86 = icmp ult i32 %83, 7
  br i1 %86, label %.preheader156, label %87

87:                                               ; preds = %77
  %88 = and i64 %85, 8589934584
  %89 = insertelement <8 x i32> poison, i32 %78, i64 0
  %90 = shufflevector <8 x i32> %89, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %91

91:                                               ; preds = %91, %87
  %92 = phi i64 [ 0, %87 ], [ %100, %91 ]
  %93 = mul i64 %92, -2
  %94 = getelementptr i8, ptr %82, i64 %93
  %95 = getelementptr inbounds i8, ptr %94, i64 -16
  %96 = load <8 x i16>, ptr %95, align 2, !tbaa !62
  %97 = zext <8 x i16> %96 to <8 x i32>
  %98 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %97, <8 x i32> %90)
  %99 = trunc nuw <8 x i32> %98 to <8 x i16>
  store <8 x i16> %99, ptr %95, align 2, !tbaa !62
  %100 = add nuw i64 %92, 8
  %101 = icmp eq i64 %100, %88
  br i1 %101, label %102, label %91, !llvm.loop !150

102:                                              ; preds = %91
  %103 = mul nsw i64 %88, -2
  %104 = getelementptr i8, ptr %82, i64 %103
  %105 = trunc i64 %88 to i32
  %106 = sub i32 %79, %105
  %107 = icmp eq i64 %85, %88
  br i1 %107, label %.loopexit45, label %.preheader156

.preheader156:                                    ; preds = %102, %77
  %.ph157 = phi ptr [ %104, %102 ], [ %82, %77 ]
  %.ph158 = phi i32 [ %106, %102 ], [ %79, %77 ]
  br label %108

108:                                              ; preds = %.preheader156, %108
  %109 = phi ptr [ %111, %108 ], [ %.ph157, %.preheader156 ]
  %110 = phi i32 [ %116, %108 ], [ %.ph158, %.preheader156 ]
  %111 = getelementptr inbounds i8, ptr %109, i64 -2
  %112 = load i16, ptr %111, align 2, !tbaa !62
  %113 = zext i16 %112 to i32
  %114 = tail call i32 @llvm.usub.sat.i32(i32 %113, i32 %78)
  %115 = trunc nuw i32 %114 to i16
  store i16 %115, ptr %111, align 2, !tbaa !62
  %116 = add i32 %110, -1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %.loopexit45, label %108, !llvm.loop !151

.loopexit45:                                      ; preds = %108, %102
  %118 = load ptr, ptr %13, align 8, !tbaa !35
  %119 = zext i32 %78 to i64
  %120 = getelementptr inbounds nuw [2 x i8], ptr %118, i64 %119
  %121 = add i32 %78, -1
  %122 = zext i32 %121 to i64
  %123 = add nuw nsw i64 %122, 1
  %124 = icmp ult i32 %121, 7
  br i1 %124, label %.preheader, label %125

125:                                              ; preds = %.loopexit45
  %126 = and i64 %123, 8589934584
  %127 = insertelement <8 x i32> poison, i32 %78, i64 0
  %128 = shufflevector <8 x i32> %127, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %129

129:                                              ; preds = %129, %125
  %130 = phi i64 [ 0, %125 ], [ %138, %129 ]
  %131 = mul i64 %130, -2
  %132 = getelementptr i8, ptr %120, i64 %131
  %133 = getelementptr inbounds i8, ptr %132, i64 -16
  %134 = load <8 x i16>, ptr %133, align 2, !tbaa !62
  %135 = zext <8 x i16> %134 to <8 x i32>
  %136 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %135, <8 x i32> %128)
  %137 = trunc nuw <8 x i32> %136 to <8 x i16>
  store <8 x i16> %137, ptr %133, align 2, !tbaa !62
  %138 = add nuw i64 %130, 8
  %139 = icmp eq i64 %138, %126
  br i1 %139, label %140, label %129, !llvm.loop !152

140:                                              ; preds = %129
  %141 = mul nsw i64 %126, -2
  %142 = getelementptr i8, ptr %120, i64 %141
  %143 = trunc i64 %126 to i32
  %144 = sub i32 %78, %143
  %145 = icmp eq i64 %123, %126
  br i1 %145, label %.loopexit44, label %.preheader

.preheader:                                       ; preds = %140, %.loopexit45
  %.ph = phi ptr [ %142, %140 ], [ %120, %.loopexit45 ]
  %.ph155 = phi i32 [ %144, %140 ], [ %78, %.loopexit45 ]
  br label %146

146:                                              ; preds = %.preheader, %146
  %147 = phi ptr [ %149, %146 ], [ %.ph, %.preheader ]
  %148 = phi i32 [ %154, %146 ], [ %.ph155, %.preheader ]
  %149 = getelementptr inbounds i8, ptr %147, i64 -2
  %150 = load i16, ptr %149, align 2, !tbaa !62
  %151 = zext i16 %150 to i32
  %152 = tail call i32 @llvm.usub.sat.i32(i32 %151, i32 %78)
  %153 = trunc nuw i32 %152 to i16
  store i16 %153, ptr %149, align 2, !tbaa !62
  %154 = add i32 %148, -1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %.loopexit44, label %146, !llvm.loop !153

.loopexit44:                                      ; preds = %146, %140
  store i32 1, ptr %14, align 8, !tbaa !63
  %156 = add i32 %43, %56
  %157 = load i32, ptr %3, align 4, !tbaa !75
  br label %158

158:                                              ; preds = %.loopexit44, %48
  %159 = phi i32 [ %157, %.loopexit44 ], [ %49, %48 ]
  %160 = phi i32 [ %74, %.loopexit44 ], [ %52, %48 ]
  %161 = phi i32 [ %156, %.loopexit44 ], [ %56, %48 ]
  %162 = load ptr, ptr %0, align 8, !tbaa !20
  %163 = getelementptr inbounds nuw i8, ptr %162, i64 8
  %164 = load i32, ptr %163, align 8, !tbaa !81
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %255, label %166

166:                                              ; preds = %158
  %167 = load ptr, ptr %7, align 8, !tbaa !34
  %168 = zext i32 %160 to i64
  %169 = getelementptr inbounds nuw i8, ptr %167, i64 %168
  %170 = zext i32 %159 to i64
  %171 = getelementptr inbounds nuw i8, ptr %169, i64 %170
  %172 = tail call i32 @llvm.umin.i32(i32 %164, i32 %161)
  %173 = icmp eq i32 %161, 0
  br i1 %173, label %197, label %174

174:                                              ; preds = %166
  %175 = sub i32 %164, %172
  store i32 %175, ptr %163, align 8, !tbaa !81
  %176 = load ptr, ptr %162, align 8, !tbaa !82
  %177 = zext i32 %172 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %171, ptr align 1 %176, i64 %177, i1 false)
  %178 = getelementptr inbounds nuw i8, ptr %162, i64 56
  %179 = load ptr, ptr %178, align 8, !tbaa !19
  %180 = getelementptr inbounds nuw i8, ptr %179, i64 48
  %181 = load i32, ptr %180, align 8, !tbaa !30
  switch i32 %181, label %190 [
    i32 1, label %182
    i32 2, label %186
  ]

182:                                              ; preds = %174
  %183 = getelementptr inbounds nuw i8, ptr %162, i64 96
  %184 = load i64, ptr %183, align 8, !tbaa !59
  %185 = tail call i64 @adler32(i64 noundef %184, ptr noundef %171, i32 noundef %172) #11
  store i64 %185, ptr %183, align 8, !tbaa !59
  br label %190

186:                                              ; preds = %174
  %187 = getelementptr inbounds nuw i8, ptr %162, i64 96
  %188 = load i64, ptr %187, align 8, !tbaa !59
  %189 = tail call i64 @crc32(i64 noundef %188, ptr noundef %171, i32 noundef %172) #11
  store i64 %189, ptr %187, align 8, !tbaa !59
  br label %190

190:                                              ; preds = %186, %182, %174
  %191 = load ptr, ptr %162, align 8, !tbaa !82
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 %177
  store ptr %192, ptr %162, align 8, !tbaa !82
  %193 = getelementptr inbounds nuw i8, ptr %162, i64 16
  %194 = load i64, ptr %193, align 8, !tbaa !53
  %195 = add i64 %194, %177
  store i64 %195, ptr %193, align 8, !tbaa !53
  %196 = load i32, ptr %3, align 4, !tbaa !75
  br label %197

197:                                              ; preds = %190, %166
  %198 = phi i32 [ %159, %166 ], [ %196, %190 ]
  %199 = add i32 %198, %172
  store i32 %199, ptr %3, align 4, !tbaa !75
  %200 = load i32, ptr %10, align 4, !tbaa !76
  %201 = add i32 %200, %199
  %202 = icmp ugt i32 %201, 2
  br i1 %202, label %203, label %.loopexit

203:                                              ; preds = %197
  %204 = load i32, ptr %6, align 4, !tbaa !73
  %205 = sub i32 %204, %200
  %206 = load ptr, ptr %7, align 8, !tbaa !34
  %207 = zext i32 %205 to i64
  %208 = getelementptr inbounds nuw i8, ptr %206, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !8
  %210 = zext i8 %209 to i32
  store i32 %210, ptr %15, align 8, !tbaa !80
  %211 = load i32, ptr %16, align 8, !tbaa !51
  %212 = shl i32 %210, %211
  %213 = add i32 %205, 1
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds nuw i8, ptr %206, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !8
  %217 = zext i8 %216 to i32
  %218 = xor i32 %212, %217
  %219 = load i32, ptr %17, align 4, !tbaa !50
  %220 = and i32 %218, %219
  store i32 %220, ptr %15, align 8, !tbaa !80
  br label %221

221:                                              ; preds = %226, %203
  %222 = phi i32 [ %234, %226 ], [ %220, %203 ]
  %223 = phi i32 [ %246, %226 ], [ %200, %203 ]
  %224 = phi i32 [ %245, %226 ], [ %205, %203 ]
  %225 = icmp eq i32 %223, 0
  br i1 %225, label %.loopexit, label %226

226:                                              ; preds = %221
  %227 = shl i32 %222, %211
  %228 = add i32 %224, 2
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds nuw i8, ptr %206, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !8
  %232 = zext i8 %231 to i32
  %233 = xor i32 %227, %232
  %234 = and i32 %233, %219
  store i32 %234, ptr %15, align 8, !tbaa !80
  %235 = load ptr, ptr %12, align 8, !tbaa !37
  %236 = zext i32 %234 to i64
  %237 = getelementptr inbounds nuw [2 x i8], ptr %235, i64 %236
  %238 = load i16, ptr %237, align 2, !tbaa !62
  %239 = load ptr, ptr %13, align 8, !tbaa !35
  %240 = load i32, ptr %18, align 8, !tbaa !33
  %241 = and i32 %240, %224
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds nuw [2 x i8], ptr %239, i64 %242
  store i16 %238, ptr %243, align 2, !tbaa !62
  %244 = trunc i32 %224 to i16
  store i16 %244, ptr %237, align 2, !tbaa !62
  %245 = add i32 %224, 1
  %246 = add i32 %223, -1
  store i32 %246, ptr %10, align 4, !tbaa !76
  %247 = add i32 %246, %199
  %248 = icmp ult i32 %247, 3
  br i1 %248, label %.loopexit, label %221, !llvm.loop !91

.loopexit:                                        ; preds = %226, %221, %197
  %249 = icmp ult i32 %199, 262
  br i1 %249, label %250, label %255

250:                                              ; preds = %.loopexit
  %251 = load ptr, ptr %0, align 8, !tbaa !20
  %252 = getelementptr inbounds nuw i8, ptr %251, i64 8
  %253 = load i32, ptr %252, align 8, !tbaa !81
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %48, !llvm.loop !92

255:                                              ; preds = %250, %.loopexit, %158
  %256 = phi i32 [ %199, %250 ], [ %199, %.loopexit ], [ %159, %158 ]
  %257 = load i64, ptr %19, align 8, !tbaa !38
  %258 = load i64, ptr %5, align 8, !tbaa !61
  %259 = icmp ult i64 %257, %258
  br i1 %259, label %260, label %287

260:                                              ; preds = %255
  %261 = load i32, ptr %6, align 4, !tbaa !73
  %262 = zext i32 %261 to i64
  %263 = zext i32 %256 to i64
  %264 = add nuw nsw i64 %262, %263
  %265 = icmp ult i64 %257, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %260
  %267 = sub i64 %258, %264
  %268 = tail call i64 @llvm.umin.i64(i64 %267, i64 258)
  %269 = load ptr, ptr %7, align 8, !tbaa !34
  %270 = getelementptr inbounds nuw i8, ptr %269, i64 %264
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %270, i8 0, i64 %268, i1 false)
  %271 = add nuw nsw i64 %268, %264
  br label %284

272:                                              ; preds = %260
  %273 = add nuw nsw i64 %264, 258
  %274 = icmp ult i64 %257, %273
  br i1 %274, label %275, label %287

275:                                              ; preds = %272
  %276 = sub nuw nsw i64 %273, %257
  %277 = sub i64 %258, %257
  %278 = tail call i64 @llvm.umin.i64(i64 %276, i64 %277)
  %279 = load ptr, ptr %7, align 8, !tbaa !34
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 %257
  %281 = and i64 %278, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %280, i8 0, i64 %281, i1 false)
  %282 = load i64, ptr %19, align 8, !tbaa !38
  %283 = add i64 %282, %278
  br label %284

284:                                              ; preds = %275, %266
  %285 = phi i64 [ %271, %266 ], [ %283, %275 ]
  store i64 %285, ptr %19, align 8, !tbaa !38
  %286 = load i32, ptr %3, align 4, !tbaa !75
  br label %287

287:                                              ; preds = %284, %272, %255
  %288 = phi i32 [ %256, %255 ], [ %256, %272 ], [ %286, %284 ]
  %289 = icmp ult i32 %288, 262
  %290 = and i1 %20, %289
  br i1 %290, label %.loopexit47, label %291

291:                                              ; preds = %287
  %292 = icmp eq i32 %288, 0
  br i1 %292, label %747, label %293

293:                                              ; preds = %291
  %294 = icmp ugt i32 %288, 2
  %295 = load i32, ptr %21, align 8, !tbaa !78
  %296 = load i32, ptr %8, align 8, !tbaa !83
  br i1 %294, label %298, label %297

297:                                              ; preds = %293
  store i32 %295, ptr %22, align 8, !tbaa !77
  store i32 %296, ptr %23, align 4, !tbaa !154
  br label %498

298:                                              ; preds = %293, %39
  %299 = phi i32 [ %296, %293 ], [ %41, %39 ]
  %300 = phi i32 [ %295, %293 ], [ %40, %39 ]
  %301 = phi i32 [ %288, %293 ], [ %37, %39 ]
  %302 = load i32, ptr %15, align 8, !tbaa !80
  %303 = load i32, ptr %16, align 8, !tbaa !51
  %304 = shl i32 %302, %303
  %305 = load ptr, ptr %7, align 8, !tbaa !34
  %306 = load i32, ptr %6, align 4, !tbaa !73
  %307 = add i32 %306, 2
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds nuw i8, ptr %305, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !8
  %311 = zext i8 %310 to i32
  %312 = xor i32 %304, %311
  %313 = load i32, ptr %17, align 4, !tbaa !50
  %314 = and i32 %312, %313
  store i32 %314, ptr %15, align 8, !tbaa !80
  %315 = load ptr, ptr %12, align 8, !tbaa !37
  %316 = zext i32 %314 to i64
  %317 = getelementptr inbounds nuw [2 x i8], ptr %315, i64 %316
  %318 = load i16, ptr %317, align 2, !tbaa !62
  %319 = load ptr, ptr %13, align 8, !tbaa !35
  %320 = load i32, ptr %18, align 8, !tbaa !33
  %321 = and i32 %320, %306
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds nuw [2 x i8], ptr %319, i64 %322
  store i16 %318, ptr %323, align 2, !tbaa !62
  %324 = zext i16 %318 to i32
  %325 = trunc i32 %306 to i16
  store i16 %325, ptr %317, align 2, !tbaa !62
  store i32 %300, ptr %22, align 8, !tbaa !77
  store i32 %299, ptr %23, align 4, !tbaa !154
  store i32 2, ptr %21, align 8, !tbaa !78
  %326 = icmp eq i16 %318, 0
  br i1 %326, label %502, label %327

327:                                              ; preds = %298
  %328 = load i32, ptr %24, align 8, !tbaa !66
  %329 = icmp ult i32 %300, %328
  br i1 %329, label %330, label %502

330:                                              ; preds = %327
  %331 = sub i32 %306, %324
  %332 = load i32, ptr %4, align 8, !tbaa !32
  %333 = add i32 %332, -262
  %334 = icmp ugt i32 %331, %333
  br i1 %334, label %502, label %335

335:                                              ; preds = %330
  %336 = zext i32 %306 to i64
  %337 = getelementptr inbounds nuw i8, ptr %305, i64 %336
  %338 = tail call i32 @llvm.usub.sat.i32(i32 %306, i32 %333)
  %339 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %300, i32 -1)
  %340 = extractvalue { i32, i1 } %339, 1, !nosanitize !57
  br i1 %340, label %.loopexit46, label %341, !prof !58, !nosanitize !57

.loopexit46:                                      ; preds = %335, %.split.loop.exit, %372
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

341:                                              ; preds = %335
  %342 = getelementptr inbounds nuw i8, ptr %337, i64 258
  %343 = load i32, ptr %25, align 8, !tbaa !70
  %344 = load i32, ptr %26, align 4, !tbaa !72
  %345 = extractvalue { i32, i1 } %339, 0, !nosanitize !57
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8, ptr %337, i64 %346
  %348 = load i8, ptr %347, align 1, !tbaa !8
  %349 = sext i32 %300 to i64
  %350 = getelementptr inbounds i8, ptr %337, i64 %349
  %351 = load i8, ptr %350, align 1, !tbaa !8
  %352 = load i32, ptr %27, align 4, !tbaa !68
  %353 = icmp ult i32 %300, %352
  %354 = lshr i32 %344, 2
  %355 = select i1 %353, i32 %344, i32 %354
  %356 = tail call i32 @llvm.umin.i32(i32 %343, i32 %301)
  %357 = getelementptr inbounds nuw i8, ptr %337, i64 1
  %358 = ptrtoint ptr %342 to i64
  br label %359

359:                                              ; preds = %471, %341
  %360 = phi i32 [ %299, %341 ], [ %472, %471 ]
  %361 = phi i32 [ %300, %341 ], [ %473, %471 ]
  %362 = phi i32 [ %355, %341 ], [ %482, %471 ]
  %363 = phi i32 [ %324, %341 ], [ %480, %471 ]
  %364 = phi i8 [ %348, %341 ], [ %474, %471 ]
  %365 = phi i8 [ %351, %341 ], [ %475, %471 ]
  %366 = zext nneg i32 %363 to i64
  %367 = getelementptr inbounds nuw i8, ptr %305, i64 %366
  %368 = sext i32 %361 to i64
  %369 = getelementptr inbounds i8, ptr %367, i64 %368
  %370 = load i8, ptr %369, align 1, !tbaa !8
  %371 = icmp eq i8 %370, %365
  br i1 %371, label %372, label %471

372:                                              ; preds = %359
  %373 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %361, i32 -1)
  %374 = extractvalue { i32, i1 } %373, 1, !nosanitize !57
  br i1 %374, label %.loopexit46, label %375, !prof !58, !nosanitize !57

375:                                              ; preds = %372
  %376 = extractvalue { i32, i1 } %373, 0, !nosanitize !57
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8, ptr %367, i64 %377
  %379 = load i8, ptr %378, align 1, !tbaa !8
  %380 = icmp eq i8 %379, %364
  br i1 %380, label %381, label %471

381:                                              ; preds = %375
  %382 = load i8, ptr %367, align 1, !tbaa !8
  %383 = load i8, ptr %337, align 1, !tbaa !8
  %384 = icmp eq i8 %382, %383
  br i1 %384, label %385, label %471

385:                                              ; preds = %381
  %386 = getelementptr inbounds nuw i8, ptr %367, i64 1
  %387 = load i8, ptr %386, align 1, !tbaa !8
  %388 = load i8, ptr %357, align 1, !tbaa !8
  %389 = icmp eq i8 %387, %388
  br i1 %389, label %390, label %471

390:                                              ; preds = %385
  %391 = getelementptr inbounds nuw i8, ptr %367, i64 2
  br label %392

392:                                              ; preds = %437, %390
  %393 = phi ptr [ %391, %390 ], [ %441, %437 ]
  %394 = phi i64 [ 2, %390 ], [ %438, %437 ]
  %395 = getelementptr inbounds nuw i8, ptr %337, i64 %394
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 1
  %397 = load i8, ptr %396, align 1, !tbaa !8
  %398 = getelementptr inbounds nuw i8, ptr %393, i64 1
  %399 = load i8, ptr %398, align 1, !tbaa !8
  %400 = icmp eq i8 %397, %399
  br i1 %400, label %401, label %.split.loop.exit.split.loop.exit

401:                                              ; preds = %392
  %402 = getelementptr inbounds nuw i8, ptr %395, i64 2
  %403 = load i8, ptr %402, align 1, !tbaa !8
  %404 = getelementptr inbounds nuw i8, ptr %393, i64 2
  %405 = load i8, ptr %404, align 1, !tbaa !8
  %406 = icmp eq i8 %403, %405
  br i1 %406, label %407, label %.split.loop.exit.split.loop.exit123

407:                                              ; preds = %401
  %408 = getelementptr inbounds nuw i8, ptr %395, i64 3
  %409 = load i8, ptr %408, align 1, !tbaa !8
  %410 = getelementptr inbounds nuw i8, ptr %393, i64 3
  %411 = load i8, ptr %410, align 1, !tbaa !8
  %412 = icmp eq i8 %409, %411
  br i1 %412, label %413, label %.split.loop.exit.split.loop.exit125

413:                                              ; preds = %407
  %414 = getelementptr inbounds nuw i8, ptr %395, i64 4
  %415 = load i8, ptr %414, align 1, !tbaa !8
  %416 = getelementptr inbounds nuw i8, ptr %393, i64 4
  %417 = load i8, ptr %416, align 1, !tbaa !8
  %418 = icmp eq i8 %415, %417
  br i1 %418, label %419, label %.split.loop.exit.split.loop.exit127

419:                                              ; preds = %413
  %420 = getelementptr inbounds nuw i8, ptr %395, i64 5
  %421 = load i8, ptr %420, align 1, !tbaa !8
  %422 = getelementptr inbounds nuw i8, ptr %393, i64 5
  %423 = load i8, ptr %422, align 1, !tbaa !8
  %424 = icmp eq i8 %421, %423
  br i1 %424, label %425, label %.split.loop.exit.split.loop.exit129

425:                                              ; preds = %419
  %426 = getelementptr inbounds nuw i8, ptr %395, i64 6
  %427 = load i8, ptr %426, align 1, !tbaa !8
  %428 = getelementptr inbounds nuw i8, ptr %393, i64 6
  %429 = load i8, ptr %428, align 1, !tbaa !8
  %430 = icmp eq i8 %427, %429
  br i1 %430, label %431, label %.split.loop.exit.split.loop.exit131

431:                                              ; preds = %425
  %432 = getelementptr inbounds nuw i8, ptr %395, i64 7
  %433 = load i8, ptr %432, align 1, !tbaa !8
  %434 = getelementptr inbounds nuw i8, ptr %393, i64 7
  %435 = load i8, ptr %434, align 1, !tbaa !8
  %436 = icmp eq i8 %433, %435
  br i1 %436, label %437, label %.split.loop.exit.split.loop.exit133

437:                                              ; preds = %431
  %438 = add nuw nsw i64 %394, 8
  %439 = getelementptr inbounds nuw i8, ptr %337, i64 %438
  %440 = load i8, ptr %439, align 1, !tbaa !8
  %441 = getelementptr inbounds nuw i8, ptr %393, i64 8
  %442 = load i8, ptr %441, align 1, !tbaa !8
  %443 = icmp eq i8 %440, %442
  %444 = icmp samesign ult i64 %394, 250
  %445 = select i1 %443, i1 %444, i1 false
  br i1 %445, label %392, label %.split.loop.exit.split.loop.exit135, !llvm.loop !147

.split.loop.exit.split.loop.exit:                 ; preds = %392
  %446 = getelementptr inbounds nuw i8, ptr %395, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit123:              ; preds = %401
  %447 = getelementptr inbounds nuw i8, ptr %395, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit125:              ; preds = %407
  %448 = getelementptr inbounds nuw i8, ptr %395, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit127:              ; preds = %413
  %449 = getelementptr inbounds nuw i8, ptr %395, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit129:              ; preds = %419
  %450 = getelementptr inbounds nuw i8, ptr %395, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit131:              ; preds = %425
  %451 = getelementptr inbounds nuw i8, ptr %395, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit133:              ; preds = %431
  %452 = getelementptr inbounds nuw i8, ptr %395, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit135:              ; preds = %437
  %453 = getelementptr inbounds nuw i8, ptr %337, i64 %438
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit135, %.split.loop.exit.split.loop.exit133, %.split.loop.exit.split.loop.exit131, %.split.loop.exit.split.loop.exit129, %.split.loop.exit.split.loop.exit127, %.split.loop.exit.split.loop.exit125, %.split.loop.exit.split.loop.exit123, %.split.loop.exit.split.loop.exit
  %454 = phi ptr [ %447, %.split.loop.exit.split.loop.exit123 ], [ %448, %.split.loop.exit.split.loop.exit125 ], [ %446, %.split.loop.exit.split.loop.exit ], [ %452, %.split.loop.exit.split.loop.exit133 ], [ %451, %.split.loop.exit.split.loop.exit131 ], [ %450, %.split.loop.exit.split.loop.exit129 ], [ %449, %.split.loop.exit.split.loop.exit127 ], [ %453, %.split.loop.exit.split.loop.exit135 ]
  %455 = ptrtoint ptr %454 to i64
  %456 = sub i64 %358, %455
  %457 = trunc i64 %456 to i32
  %458 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %457), !nosanitize !57
  %459 = extractvalue { i32, i1 } %458, 0, !nosanitize !57
  %460 = extractvalue { i32, i1 } %458, 1, !nosanitize !57
  br i1 %460, label %.loopexit46, label %461, !prof !58, !nosanitize !57

461:                                              ; preds = %.split.loop.exit
  %462 = icmp sgt i32 %459, %361
  br i1 %462, label %463, label %471

463:                                              ; preds = %461
  store i32 %363, ptr %8, align 8, !tbaa !83
  %464 = icmp slt i32 %459, %356
  br i1 %464, label %465, label %485

465:                                              ; preds = %463
  %466 = sext i32 %459 to i64
  %467 = getelementptr i8, ptr %337, i64 %466
  %468 = getelementptr i8, ptr %467, i64 -1
  %469 = load i8, ptr %468, align 1, !tbaa !8
  %470 = load i8, ptr %467, align 1, !tbaa !8
  br label %471

471:                                              ; preds = %465, %461, %385, %381, %375, %359
  %472 = phi i32 [ %360, %359 ], [ %360, %375 ], [ %360, %381 ], [ %360, %385 ], [ %363, %465 ], [ %360, %461 ]
  %473 = phi i32 [ %361, %359 ], [ %361, %375 ], [ %361, %381 ], [ %361, %385 ], [ %459, %465 ], [ %361, %461 ]
  %474 = phi i8 [ %364, %359 ], [ %364, %375 ], [ %364, %381 ], [ %364, %385 ], [ %469, %465 ], [ %364, %461 ]
  %475 = phi i8 [ %365, %359 ], [ %365, %375 ], [ %365, %381 ], [ %365, %385 ], [ %470, %465 ], [ %365, %461 ]
  %476 = and i32 %363, %320
  %477 = zext nneg i32 %476 to i64
  %478 = getelementptr inbounds nuw [2 x i8], ptr %319, i64 %477
  %479 = load i16, ptr %478, align 2, !tbaa !62
  %480 = zext i16 %479 to i32
  %481 = icmp uge i32 %338, %480
  %482 = add i32 %362, -1
  %483 = icmp eq i32 %482, 0
  %484 = select i1 %481, i1 true, i1 %483
  br i1 %484, label %485, label %359, !llvm.loop !148

485:                                              ; preds = %471, %463
  %486 = phi i32 [ %363, %463 ], [ %472, %471 ]
  %487 = phi i32 [ %459, %463 ], [ %473, %471 ]
  %488 = tail call i32 @llvm.umin.i32(i32 %487, i32 %301)
  store i32 %488, ptr %21, align 8, !tbaa !78
  %489 = icmp ult i32 %488, 6
  br i1 %489, label %490, label %502

490:                                              ; preds = %485
  %491 = load i32, ptr %28, align 8, !tbaa !47
  %492 = icmp eq i32 %491, 1
  br i1 %492, label %498, label %493

493:                                              ; preds = %490
  %494 = icmp eq i32 %488, 3
  br i1 %494, label %495, label %502

495:                                              ; preds = %493
  %496 = sub i32 %306, %486
  %497 = icmp ugt i32 %496, 4096
  br i1 %497, label %498, label %502

498:                                              ; preds = %495, %490, %297
  %499 = phi i32 [ %296, %297 ], [ %299, %495 ], [ %299, %490 ]
  %500 = phi i32 [ %295, %297 ], [ %300, %495 ], [ %300, %490 ]
  %501 = phi i32 [ %288, %297 ], [ %301, %495 ], [ %301, %490 ]
  store i32 2, ptr %21, align 8, !tbaa !78
  br label %502

502:                                              ; preds = %498, %495, %493, %485, %330, %327, %298
  %503 = phi i32 [ 2, %327 ], [ %488, %485 ], [ %488, %493 ], [ 3, %495 ], [ 2, %298 ], [ 2, %330 ], [ 2, %498 ]
  %504 = phi i32 [ %299, %327 ], [ %299, %485 ], [ %299, %493 ], [ %299, %495 ], [ %299, %298 ], [ %299, %330 ], [ %499, %498 ]
  %505 = phi i32 [ %300, %327 ], [ %300, %485 ], [ %300, %493 ], [ %300, %495 ], [ %300, %298 ], [ %300, %330 ], [ %500, %498 ]
  %506 = phi i32 [ %301, %327 ], [ %301, %485 ], [ %301, %493 ], [ %301, %495 ], [ %301, %298 ], [ %301, %330 ], [ %501, %498 ]
  %507 = icmp ult i32 %505, 3
  %508 = icmp ugt i32 %503, %505
  %509 = or i1 %507, %508
  br i1 %509, label %654, label %510

510:                                              ; preds = %502
  %511 = load i32, ptr %6, align 4, !tbaa !73
  %512 = add i32 %506, -3
  %513 = add i32 %512, %511
  %514 = trunc i32 %505 to i8
  %515 = add i8 %514, -3
  %516 = xor i32 %504, -1
  %517 = add i32 %511, %516
  %518 = trunc i32 %517 to i16
  %519 = trunc i32 %517 to i8
  %520 = load ptr, ptr %29, align 8, !tbaa !44
  %521 = load i32, ptr %30, align 4, !tbaa !134
  %522 = add i32 %521, 1
  store i32 %522, ptr %30, align 4, !tbaa !134
  %523 = zext i32 %521 to i64
  %524 = getelementptr inbounds nuw i8, ptr %520, i64 %523
  store i8 %519, ptr %524, align 1, !tbaa !8
  %525 = lshr i32 %517, 8
  %526 = trunc i32 %525 to i8
  %527 = load ptr, ptr %29, align 8, !tbaa !44
  %528 = load i32, ptr %30, align 4, !tbaa !134
  %529 = add i32 %528, 1
  store i32 %529, ptr %30, align 4, !tbaa !134
  %530 = zext i32 %528 to i64
  %531 = getelementptr inbounds nuw i8, ptr %527, i64 %530
  store i8 %526, ptr %531, align 1, !tbaa !8
  %532 = load ptr, ptr %29, align 8, !tbaa !44
  %533 = load i32, ptr %30, align 4, !tbaa !134
  %534 = add i32 %533, 1
  store i32 %534, ptr %30, align 4, !tbaa !134
  %535 = zext i32 %533 to i64
  %536 = getelementptr inbounds nuw i8, ptr %532, i64 %535
  store i8 %515, ptr %536, align 1, !tbaa !8
  %537 = add i16 %518, -1
  %538 = zext i8 %515 to i64
  %539 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %538
  %540 = load i8, ptr %539, align 1, !tbaa !8
  %541 = zext i8 %540 to i64
  %542 = getelementptr [4 x i8], ptr %31, i64 %541
  %543 = load i16, ptr %542, align 4, !tbaa !8
  %544 = add i16 %543, 1
  store i16 %544, ptr %542, align 4, !tbaa !8
  %545 = icmp ult i16 %537, 256
  br i1 %545, label %546, label %549

546:                                              ; preds = %510
  %547 = zext nneg i16 %537 to i64
  %548 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %547
  br label %554

549:                                              ; preds = %510
  %550 = lshr i16 %537, 7
  %551 = zext nneg i16 %550 to i64
  %552 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %551
  %553 = getelementptr inbounds nuw i8, ptr %552, i64 256
  br label %554

554:                                              ; preds = %549, %546
  %555 = phi ptr [ %548, %546 ], [ %553, %549 ]
  %556 = load i8, ptr %555, align 1, !tbaa !8
  %557 = zext i8 %556 to i64
  %558 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %557
  %559 = load i16, ptr %558, align 4, !tbaa !8
  %560 = add i16 %559, 1
  store i16 %560, ptr %558, align 4, !tbaa !8
  %561 = load i32, ptr %30, align 4, !tbaa !134
  %562 = load i32, ptr %33, align 8, !tbaa !45
  %563 = load i32, ptr %22, align 8, !tbaa !77
  %564 = load i32, ptr %3, align 4, !tbaa !75
  %reass.sub = sub i32 %564, %563
  %565 = add i32 %reass.sub, 1
  store i32 %565, ptr %3, align 4, !tbaa !75
  %566 = add i32 %563, -2
  store i32 %566, ptr %22, align 8, !tbaa !77
  %567 = load i32, ptr %6, align 4, !tbaa !73
  br label %568

568:                                              ; preds = %596, %554
  %569 = phi i32 [ %597, %596 ], [ %566, %554 ]
  %570 = phi i32 [ %571, %596 ], [ %567, %554 ]
  %571 = add i32 %570, 1
  store i32 %571, ptr %6, align 4, !tbaa !73
  %572 = icmp ugt i32 %571, %513
  br i1 %572, label %596, label %573

573:                                              ; preds = %568
  %574 = load i32, ptr %15, align 8, !tbaa !80
  %575 = load i32, ptr %16, align 8, !tbaa !51
  %576 = shl i32 %574, %575
  %577 = load ptr, ptr %7, align 8, !tbaa !34
  %578 = add i32 %570, 3
  %579 = zext i32 %578 to i64
  %580 = getelementptr inbounds nuw i8, ptr %577, i64 %579
  %581 = load i8, ptr %580, align 1, !tbaa !8
  %582 = zext i8 %581 to i32
  %583 = xor i32 %576, %582
  %584 = load i32, ptr %17, align 4, !tbaa !50
  %585 = and i32 %583, %584
  store i32 %585, ptr %15, align 8, !tbaa !80
  %586 = load ptr, ptr %12, align 8, !tbaa !37
  %587 = zext i32 %585 to i64
  %588 = getelementptr inbounds nuw [2 x i8], ptr %586, i64 %587
  %589 = load i16, ptr %588, align 2, !tbaa !62
  %590 = load ptr, ptr %13, align 8, !tbaa !35
  %591 = load i32, ptr %18, align 8, !tbaa !33
  %592 = and i32 %591, %571
  %593 = zext i32 %592 to i64
  %594 = getelementptr inbounds nuw [2 x i8], ptr %590, i64 %593
  store i16 %589, ptr %594, align 2, !tbaa !62
  %595 = trunc i32 %571 to i16
  store i16 %595, ptr %588, align 2, !tbaa !62
  br label %596

596:                                              ; preds = %573, %568
  %597 = add i32 %569, -1
  store i32 %597, ptr %22, align 8, !tbaa !77
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %568, !llvm.loop !155

599:                                              ; preds = %596
  %600 = icmp eq i32 %561, %562
  store i32 0, ptr %34, align 8, !tbaa !79
  store i32 2, ptr %21, align 8, !tbaa !78
  %601 = add i32 %570, 2
  store i32 %601, ptr %6, align 4, !tbaa !73
  br i1 %600, label %602, label %.backedge

602:                                              ; preds = %599
  %603 = load i64, ptr %9, align 8, !tbaa !74
  %604 = icmp sgt i64 %603, -1
  br i1 %604, label %605, label %609

605:                                              ; preds = %602
  %606 = load ptr, ptr %7, align 8, !tbaa !34
  %607 = and i64 %603, 4294967295
  %608 = getelementptr inbounds nuw i8, ptr %606, i64 %607
  br label %609

609:                                              ; preds = %605, %602
  %610 = phi ptr [ %608, %605 ], [ null, %602 ]
  %611 = zext i32 %601 to i64
  %612 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %611, i64 %603), !nosanitize !57
  %613 = extractvalue { i64, i1 } %612, 1, !nosanitize !57
  br i1 %613, label %.loopexit49, label %614, !prof !58, !nosanitize !57

.loopexit49:                                      ; preds = %693, %609, %844, %788
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !57
  unreachable, !nosanitize !57

614:                                              ; preds = %609
  %615 = extractvalue { i64, i1 } %612, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %610, i64 noundef %615, i32 noundef 0) #11
  %616 = load i32, ptr %6, align 4, !tbaa !73
  %617 = zext i32 %616 to i64
  store i64 %617, ptr %9, align 8, !tbaa !74
  %618 = load ptr, ptr %0, align 8, !tbaa !20
  %619 = getelementptr inbounds nuw i8, ptr %618, i64 56
  %620 = load ptr, ptr %619, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %620) #11
  %621 = getelementptr inbounds nuw i8, ptr %620, i64 40
  %622 = load i64, ptr %621, align 8, !tbaa !55
  %623 = getelementptr inbounds nuw i8, ptr %618, i64 32
  %624 = load i32, ptr %623, align 8, !tbaa !106
  %625 = zext i32 %624 to i64
  %626 = tail call i64 @llvm.umin.i64(i64 %622, i64 %625)
  %627 = icmp eq i64 %626, 0
  br i1 %627, label %649, label %628

628:                                              ; preds = %614
  %629 = trunc nuw i64 %626 to i32
  %630 = getelementptr inbounds nuw i8, ptr %618, i64 24
  %631 = load ptr, ptr %630, align 8, !tbaa !105
  %632 = getelementptr inbounds nuw i8, ptr %620, i64 32
  %633 = load ptr, ptr %632, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %631, ptr align 1 %633, i64 %626, i1 false)
  %634 = load ptr, ptr %630, align 8, !tbaa !105
  %635 = getelementptr inbounds nuw i8, ptr %634, i64 %626
  store ptr %635, ptr %630, align 8, !tbaa !105
  %636 = load ptr, ptr %632, align 8, !tbaa !56
  %637 = getelementptr inbounds nuw i8, ptr %636, i64 %626
  store ptr %637, ptr %632, align 8, !tbaa !56
  %638 = getelementptr inbounds nuw i8, ptr %618, i64 40
  %639 = load i64, ptr %638, align 8, !tbaa !107
  %640 = add i64 %639, %626
  store i64 %640, ptr %638, align 8, !tbaa !107
  %641 = load i32, ptr %623, align 8, !tbaa !106
  %642 = sub i32 %641, %629
  store i32 %642, ptr %623, align 8, !tbaa !106
  %643 = load i64, ptr %621, align 8, !tbaa !55
  %644 = sub i64 %643, %626
  store i64 %644, ptr %621, align 8, !tbaa !55
  %645 = icmp eq i64 %643, %626
  br i1 %645, label %646, label %649

646:                                              ; preds = %628
  %647 = getelementptr inbounds nuw i8, ptr %620, i64 16
  %648 = load ptr, ptr %647, align 8, !tbaa !40
  store ptr %648, ptr %632, align 8, !tbaa !56
  br label %649

649:                                              ; preds = %646, %628, %614
  %650 = load ptr, ptr %0, align 8, !tbaa !20
  %651 = getelementptr inbounds nuw i8, ptr %650, i64 32
  %652 = load i32, ptr %651, align 8, !tbaa !106
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %.loopexit47, label %.backedge

654:                                              ; preds = %502
  %655 = load i32, ptr %34, align 8, !tbaa !79
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %743, label %657

657:                                              ; preds = %654
  %658 = load ptr, ptr %7, align 8, !tbaa !34
  %659 = load i32, ptr %6, align 4, !tbaa !73
  %660 = add i32 %659, -1
  %661 = zext i32 %660 to i64
  %662 = getelementptr inbounds nuw i8, ptr %658, i64 %661
  %663 = load i8, ptr %662, align 1, !tbaa !8
  %664 = load ptr, ptr %29, align 8, !tbaa !44
  %665 = load i32, ptr %30, align 4, !tbaa !134
  %666 = add i32 %665, 1
  store i32 %666, ptr %30, align 4, !tbaa !134
  %667 = zext i32 %665 to i64
  %668 = getelementptr inbounds nuw i8, ptr %664, i64 %667
  store i8 0, ptr %668, align 1, !tbaa !8
  %669 = load ptr, ptr %29, align 8, !tbaa !44
  %670 = load i32, ptr %30, align 4, !tbaa !134
  %671 = add i32 %670, 1
  store i32 %671, ptr %30, align 4, !tbaa !134
  %672 = zext i32 %670 to i64
  %673 = getelementptr inbounds nuw i8, ptr %669, i64 %672
  store i8 0, ptr %673, align 1, !tbaa !8
  %674 = load ptr, ptr %29, align 8, !tbaa !44
  %675 = load i32, ptr %30, align 4, !tbaa !134
  %676 = add i32 %675, 1
  store i32 %676, ptr %30, align 4, !tbaa !134
  %677 = zext i32 %675 to i64
  %678 = getelementptr inbounds nuw i8, ptr %674, i64 %677
  store i8 %663, ptr %678, align 1, !tbaa !8
  %679 = zext i8 %663 to i64
  %680 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %679
  %681 = load i16, ptr %680, align 4, !tbaa !8
  %682 = add i16 %681, 1
  store i16 %682, ptr %680, align 4, !tbaa !8
  %683 = load i32, ptr %30, align 4, !tbaa !134
  %684 = load i32, ptr %33, align 8, !tbaa !45
  %685 = icmp eq i32 %683, %684
  br i1 %685, label %686, label %734

686:                                              ; preds = %657
  %687 = load i64, ptr %9, align 8, !tbaa !74
  %688 = icmp sgt i64 %687, -1
  br i1 %688, label %689, label %693

689:                                              ; preds = %686
  %690 = load ptr, ptr %7, align 8, !tbaa !34
  %691 = and i64 %687, 4294967295
  %692 = getelementptr inbounds nuw i8, ptr %690, i64 %691
  br label %693

693:                                              ; preds = %689, %686
  %694 = phi ptr [ %692, %689 ], [ null, %686 ]
  %695 = load i32, ptr %6, align 4, !tbaa !73
  %696 = zext i32 %695 to i64
  %697 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %696, i64 %687), !nosanitize !57
  %698 = extractvalue { i64, i1 } %697, 1, !nosanitize !57
  br i1 %698, label %.loopexit49, label %699, !prof !58, !nosanitize !57

699:                                              ; preds = %693
  %700 = extractvalue { i64, i1 } %697, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %694, i64 noundef %700, i32 noundef 0) #11
  %701 = load i32, ptr %6, align 4, !tbaa !73
  %702 = zext i32 %701 to i64
  store i64 %702, ptr %9, align 8, !tbaa !74
  %703 = load ptr, ptr %0, align 8, !tbaa !20
  %704 = getelementptr inbounds nuw i8, ptr %703, i64 56
  %705 = load ptr, ptr %704, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %705) #11
  %706 = getelementptr inbounds nuw i8, ptr %705, i64 40
  %707 = load i64, ptr %706, align 8, !tbaa !55
  %708 = getelementptr inbounds nuw i8, ptr %703, i64 32
  %709 = load i32, ptr %708, align 8, !tbaa !106
  %710 = zext i32 %709 to i64
  %711 = tail call i64 @llvm.umin.i64(i64 %707, i64 %710)
  %712 = icmp eq i64 %711, 0
  br i1 %712, label %734, label %713

713:                                              ; preds = %699
  %714 = trunc nuw i64 %711 to i32
  %715 = getelementptr inbounds nuw i8, ptr %703, i64 24
  %716 = load ptr, ptr %715, align 8, !tbaa !105
  %717 = getelementptr inbounds nuw i8, ptr %705, i64 32
  %718 = load ptr, ptr %717, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %716, ptr align 1 %718, i64 %711, i1 false)
  %719 = load ptr, ptr %715, align 8, !tbaa !105
  %720 = getelementptr inbounds nuw i8, ptr %719, i64 %711
  store ptr %720, ptr %715, align 8, !tbaa !105
  %721 = load ptr, ptr %717, align 8, !tbaa !56
  %722 = getelementptr inbounds nuw i8, ptr %721, i64 %711
  store ptr %722, ptr %717, align 8, !tbaa !56
  %723 = getelementptr inbounds nuw i8, ptr %703, i64 40
  %724 = load i64, ptr %723, align 8, !tbaa !107
  %725 = add i64 %724, %711
  store i64 %725, ptr %723, align 8, !tbaa !107
  %726 = load i32, ptr %708, align 8, !tbaa !106
  %727 = sub i32 %726, %714
  store i32 %727, ptr %708, align 8, !tbaa !106
  %728 = load i64, ptr %706, align 8, !tbaa !55
  %729 = sub i64 %728, %711
  store i64 %729, ptr %706, align 8, !tbaa !55
  %730 = icmp eq i64 %728, %711
  br i1 %730, label %731, label %734

731:                                              ; preds = %713
  %732 = getelementptr inbounds nuw i8, ptr %705, i64 16
  %733 = load ptr, ptr %732, align 8, !tbaa !40
  store ptr %733, ptr %717, align 8, !tbaa !56
  br label %734

734:                                              ; preds = %731, %713, %699, %657
  %735 = load i32, ptr %6, align 4, !tbaa !73
  %736 = add i32 %735, 1
  store i32 %736, ptr %6, align 4, !tbaa !73
  %737 = load i32, ptr %3, align 4, !tbaa !75
  %738 = add i32 %737, -1
  store i32 %738, ptr %3, align 4, !tbaa !75
  %739 = load ptr, ptr %0, align 8, !tbaa !20
  %740 = getelementptr inbounds nuw i8, ptr %739, i64 32
  %741 = load i32, ptr %740, align 8, !tbaa !106
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %.loopexit47, label %.backedge

743:                                              ; preds = %654
  store i32 1, ptr %34, align 8, !tbaa !79
  %744 = load i32, ptr %6, align 4, !tbaa !73
  %745 = add i32 %744, 1
  store i32 %745, ptr %6, align 4, !tbaa !73
  %746 = add i32 %506, -1
  store i32 %746, ptr %3, align 4, !tbaa !75
  br label %.backedge

.backedge:                                        ; preds = %743, %734, %649, %599
  br label %36

747:                                              ; preds = %291
  %748 = load i32, ptr %34, align 8, !tbaa !79
  %749 = icmp eq i32 %748, 0
  %750 = load i32, ptr %6, align 4, !tbaa !73
  br i1 %749, label %777, label %751

751:                                              ; preds = %747
  %752 = load ptr, ptr %7, align 8, !tbaa !34
  %753 = add i32 %750, -1
  %754 = zext i32 %753 to i64
  %755 = getelementptr inbounds nuw i8, ptr %752, i64 %754
  %756 = load i8, ptr %755, align 1, !tbaa !8
  %757 = load ptr, ptr %29, align 8, !tbaa !44
  %758 = load i32, ptr %30, align 4, !tbaa !134
  %759 = add i32 %758, 1
  store i32 %759, ptr %30, align 4, !tbaa !134
  %760 = zext i32 %758 to i64
  %761 = getelementptr inbounds nuw i8, ptr %757, i64 %760
  store i8 0, ptr %761, align 1, !tbaa !8
  %762 = load ptr, ptr %29, align 8, !tbaa !44
  %763 = load i32, ptr %30, align 4, !tbaa !134
  %764 = add i32 %763, 1
  store i32 %764, ptr %30, align 4, !tbaa !134
  %765 = zext i32 %763 to i64
  %766 = getelementptr inbounds nuw i8, ptr %762, i64 %765
  store i8 0, ptr %766, align 1, !tbaa !8
  %767 = load ptr, ptr %29, align 8, !tbaa !44
  %768 = load i32, ptr %30, align 4, !tbaa !134
  %769 = add i32 %768, 1
  store i32 %769, ptr %30, align 4, !tbaa !134
  %770 = zext i32 %768 to i64
  %771 = getelementptr inbounds nuw i8, ptr %767, i64 %770
  store i8 %756, ptr %771, align 1, !tbaa !8
  %772 = zext i8 %756 to i64
  %773 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %772
  %774 = load i16, ptr %773, align 4, !tbaa !8
  %775 = add i16 %774, 1
  store i16 %775, ptr %773, align 4, !tbaa !8
  store i32 0, ptr %34, align 8, !tbaa !79
  %776 = load i32, ptr %6, align 4, !tbaa !73
  br label %777

777:                                              ; preds = %751, %747
  %778 = phi i32 [ %776, %751 ], [ %750, %747 ]
  %779 = tail call i32 @llvm.umin.i32(i32 %778, i32 2)
  store i32 %779, ptr %10, align 4, !tbaa !76
  %780 = icmp eq i32 %1, 4
  br i1 %780, label %781, label %834

781:                                              ; preds = %777
  %782 = load i64, ptr %9, align 8, !tbaa !74
  %783 = icmp sgt i64 %782, -1
  br i1 %783, label %784, label %788

784:                                              ; preds = %781
  %785 = load ptr, ptr %7, align 8, !tbaa !34
  %786 = and i64 %782, 4294967295
  %787 = getelementptr inbounds nuw i8, ptr %785, i64 %786
  br label %788

788:                                              ; preds = %784, %781
  %789 = phi ptr [ %787, %784 ], [ null, %781 ]
  %790 = zext i32 %778 to i64
  %791 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %790, i64 %782), !nosanitize !57
  %792 = extractvalue { i64, i1 } %791, 1, !nosanitize !57
  br i1 %792, label %.loopexit49, label %793, !prof !58, !nosanitize !57

793:                                              ; preds = %788
  %794 = extractvalue { i64, i1 } %791, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %789, i64 noundef %794, i32 noundef 1) #11
  %795 = load i32, ptr %6, align 4, !tbaa !73
  %796 = zext i32 %795 to i64
  store i64 %796, ptr %9, align 8, !tbaa !74
  %797 = load ptr, ptr %0, align 8, !tbaa !20
  %798 = getelementptr inbounds nuw i8, ptr %797, i64 56
  %799 = load ptr, ptr %798, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %799) #11
  %800 = getelementptr inbounds nuw i8, ptr %799, i64 40
  %801 = load i64, ptr %800, align 8, !tbaa !55
  %802 = getelementptr inbounds nuw i8, ptr %797, i64 32
  %803 = load i32, ptr %802, align 8, !tbaa !106
  %804 = zext i32 %803 to i64
  %805 = tail call i64 @llvm.umin.i64(i64 %801, i64 %804)
  %806 = icmp eq i64 %805, 0
  br i1 %806, label %828, label %807

807:                                              ; preds = %793
  %808 = trunc nuw i64 %805 to i32
  %809 = getelementptr inbounds nuw i8, ptr %797, i64 24
  %810 = load ptr, ptr %809, align 8, !tbaa !105
  %811 = getelementptr inbounds nuw i8, ptr %799, i64 32
  %812 = load ptr, ptr %811, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %810, ptr align 1 %812, i64 %805, i1 false)
  %813 = load ptr, ptr %809, align 8, !tbaa !105
  %814 = getelementptr inbounds nuw i8, ptr %813, i64 %805
  store ptr %814, ptr %809, align 8, !tbaa !105
  %815 = load ptr, ptr %811, align 8, !tbaa !56
  %816 = getelementptr inbounds nuw i8, ptr %815, i64 %805
  store ptr %816, ptr %811, align 8, !tbaa !56
  %817 = getelementptr inbounds nuw i8, ptr %797, i64 40
  %818 = load i64, ptr %817, align 8, !tbaa !107
  %819 = add i64 %818, %805
  store i64 %819, ptr %817, align 8, !tbaa !107
  %820 = load i32, ptr %802, align 8, !tbaa !106
  %821 = sub i32 %820, %808
  store i32 %821, ptr %802, align 8, !tbaa !106
  %822 = load i64, ptr %800, align 8, !tbaa !55
  %823 = sub i64 %822, %805
  store i64 %823, ptr %800, align 8, !tbaa !55
  %824 = icmp eq i64 %822, %805
  br i1 %824, label %825, label %828

825:                                              ; preds = %807
  %826 = getelementptr inbounds nuw i8, ptr %799, i64 16
  %827 = load ptr, ptr %826, align 8, !tbaa !40
  store ptr %827, ptr %811, align 8, !tbaa !56
  br label %828

828:                                              ; preds = %825, %807, %793
  %829 = load ptr, ptr %0, align 8, !tbaa !20
  %830 = getelementptr inbounds nuw i8, ptr %829, i64 32
  %831 = load i32, ptr %830, align 8, !tbaa !106
  %832 = icmp eq i32 %831, 0
  %833 = select i1 %832, i32 2, i32 3
  br label %.loopexit47

834:                                              ; preds = %777
  %835 = load i32, ptr %30, align 4, !tbaa !134
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %889, label %837

837:                                              ; preds = %834
  %838 = load i64, ptr %9, align 8, !tbaa !74
  %839 = icmp sgt i64 %838, -1
  br i1 %839, label %840, label %844

840:                                              ; preds = %837
  %841 = load ptr, ptr %7, align 8, !tbaa !34
  %842 = and i64 %838, 4294967295
  %843 = getelementptr inbounds nuw i8, ptr %841, i64 %842
  br label %844

844:                                              ; preds = %840, %837
  %845 = phi ptr [ %843, %840 ], [ null, %837 ]
  %846 = zext i32 %778 to i64
  %847 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %846, i64 %838), !nosanitize !57
  %848 = extractvalue { i64, i1 } %847, 1, !nosanitize !57
  br i1 %848, label %.loopexit49, label %849, !prof !58, !nosanitize !57

849:                                              ; preds = %844
  %850 = extractvalue { i64, i1 } %847, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %845, i64 noundef %850, i32 noundef 0) #11
  %851 = load i32, ptr %6, align 4, !tbaa !73
  %852 = zext i32 %851 to i64
  store i64 %852, ptr %9, align 8, !tbaa !74
  %853 = load ptr, ptr %0, align 8, !tbaa !20
  %854 = getelementptr inbounds nuw i8, ptr %853, i64 56
  %855 = load ptr, ptr %854, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %855) #11
  %856 = getelementptr inbounds nuw i8, ptr %855, i64 40
  %857 = load i64, ptr %856, align 8, !tbaa !55
  %858 = getelementptr inbounds nuw i8, ptr %853, i64 32
  %859 = load i32, ptr %858, align 8, !tbaa !106
  %860 = zext i32 %859 to i64
  %861 = tail call i64 @llvm.umin.i64(i64 %857, i64 %860)
  %862 = icmp eq i64 %861, 0
  br i1 %862, label %884, label %863

863:                                              ; preds = %849
  %864 = trunc nuw i64 %861 to i32
  %865 = getelementptr inbounds nuw i8, ptr %853, i64 24
  %866 = load ptr, ptr %865, align 8, !tbaa !105
  %867 = getelementptr inbounds nuw i8, ptr %855, i64 32
  %868 = load ptr, ptr %867, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %866, ptr align 1 %868, i64 %861, i1 false)
  %869 = load ptr, ptr %865, align 8, !tbaa !105
  %870 = getelementptr inbounds nuw i8, ptr %869, i64 %861
  store ptr %870, ptr %865, align 8, !tbaa !105
  %871 = load ptr, ptr %867, align 8, !tbaa !56
  %872 = getelementptr inbounds nuw i8, ptr %871, i64 %861
  store ptr %872, ptr %867, align 8, !tbaa !56
  %873 = getelementptr inbounds nuw i8, ptr %853, i64 40
  %874 = load i64, ptr %873, align 8, !tbaa !107
  %875 = add i64 %874, %861
  store i64 %875, ptr %873, align 8, !tbaa !107
  %876 = load i32, ptr %858, align 8, !tbaa !106
  %877 = sub i32 %876, %864
  store i32 %877, ptr %858, align 8, !tbaa !106
  %878 = load i64, ptr %856, align 8, !tbaa !55
  %879 = sub i64 %878, %861
  store i64 %879, ptr %856, align 8, !tbaa !55
  %880 = icmp eq i64 %878, %861
  br i1 %880, label %881, label %884

881:                                              ; preds = %863
  %882 = getelementptr inbounds nuw i8, ptr %855, i64 16
  %883 = load ptr, ptr %882, align 8, !tbaa !40
  store ptr %883, ptr %867, align 8, !tbaa !56
  br label %884

884:                                              ; preds = %881, %863, %849
  %885 = load ptr, ptr %0, align 8, !tbaa !20
  %886 = getelementptr inbounds nuw i8, ptr %885, i64 32
  %887 = load i32, ptr %886, align 8, !tbaa !106
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %.loopexit47, label %889

889:                                              ; preds = %884, %834
  br label %.loopexit47

.loopexit47:                                      ; preds = %734, %649, %287, %889, %884, %828
  %890 = phi i32 [ 0, %884 ], [ %833, %828 ], [ 1, %889 ], [ 0, %287 ], [ 0, %649 ], [ 0, %734 ]
  ret i32 %890
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

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
!9 = !{!10, !11, i64 48}
!10 = !{!"z_stream_s", !11, i64 0, !5, i64 8, !13, i64 16, !11, i64 24, !5, i64 32, !13, i64 40, !11, i64 48, !14, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !5, i64 88, !13, i64 96, !13, i64 104}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS14internal_state", !12, i64 0}
!15 = !{!10, !12, i64 64}
!16 = !{!10, !12, i64 80}
!17 = !{!10, !12, i64 72}
!18 = !{ptr @deflateInit2_}
!19 = !{!10, !14, i64 56}
!20 = !{!21, !22, i64 0}
!21 = !{!"internal_state", !22, i64 0, !5, i64 8, !11, i64 16, !13, i64 24, !11, i64 32, !13, i64 40, !5, i64 48, !23, i64 56, !13, i64 64, !6, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !11, i64 96, !13, i64 104, !24, i64 112, !24, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !13, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !6, i64 212, !6, i64 2504, !6, i64 2748, !25, i64 2904, !25, i64 2928, !25, i64 2952, !6, i64 2976, !6, i64 3008, !5, i64 5300, !5, i64 5304, !6, i64 5308, !11, i64 5888, !5, i64 5896, !5, i64 5900, !5, i64 5904, !13, i64 5912, !13, i64 5920, !5, i64 5928, !5, i64 5932, !28, i64 5936, !5, i64 5940, !5, i64 5944, !13, i64 5952, !5, i64 5960}
!22 = !{!"p1 _ZTS10z_stream_s", !12, i64 0}
!23 = !{!"p1 _ZTS11gz_header_s", !12, i64 0}
!24 = !{!"p1 short", !12, i64 0}
!25 = !{!"tree_desc_s", !26, i64 0, !5, i64 8, !27, i64 16}
!26 = !{!"p1 _ZTS9ct_data_s", !12, i64 0}
!27 = !{!"p1 _ZTS18static_tree_desc_s", !12, i64 0}
!28 = !{!"short", !6, i64 0}
!29 = !{!21, !5, i64 8}
!30 = !{!21, !5, i64 48}
!31 = !{!21, !5, i64 84}
!32 = !{!21, !5, i64 80}
!33 = !{!21, !5, i64 88}
!34 = !{!21, !11, i64 96}
!35 = !{!21, !24, i64 112}
!36 = !{!21, !5, i64 132}
!37 = !{!21, !24, i64 120}
!38 = !{!21, !13, i64 5952}
!39 = !{!21, !5, i64 5896}
!40 = !{!21, !11, i64 16}
!41 = !{!21, !13, i64 24}
!42 = !{!11, !11, i64 0}
!43 = !{ptr @deflateInit2_, ptr @deflateEnd}
!44 = !{!21, !11, i64 5888}
!45 = !{!21, !5, i64 5904}
!46 = !{!21, !5, i64 196}
!47 = !{!21, !5, i64 200}
!48 = !{!21, !6, i64 72}
!49 = !{!21, !5, i64 136}
!50 = !{!21, !5, i64 140}
!51 = !{!21, !5, i64 144}
!52 = !{ptr @deflateEnd}
!53 = !{!10, !13, i64 16}
!54 = !{!10, !5, i64 88}
!55 = !{!21, !13, i64 40}
!56 = !{!21, !11, i64 32}
!57 = !{}
!58 = !{!"branch_weights", i32 1, i32 1048575}
!59 = !{!10, !13, i64 96}
!60 = !{!21, !5, i64 76}
!61 = !{!21, !13, i64 104}
!62 = !{!28, !28, i64 0}
!63 = !{!21, !5, i64 5960}
!64 = !{!65, !28, i64 2}
!65 = !{!"config_s", !28, i64 0, !28, i64 2, !28, i64 4, !28, i64 6, !12, i64 8}
!66 = !{!21, !5, i64 192}
!67 = !{!65, !28, i64 0}
!68 = !{!21, !5, i64 204}
!69 = !{!65, !28, i64 4}
!70 = !{!21, !5, i64 208}
!71 = !{!65, !28, i64 6}
!72 = !{!21, !5, i64 188}
!73 = !{!21, !5, i64 172}
!74 = !{!21, !13, i64 152}
!75 = !{!21, !5, i64 180}
!76 = !{!21, !5, i64 5932}
!77 = !{!21, !5, i64 184}
!78 = !{!21, !5, i64 160}
!79 = !{!21, !5, i64 168}
!80 = !{!21, !5, i64 128}
!81 = !{!10, !5, i64 8}
!82 = !{!10, !11, i64 0}
!83 = !{!21, !5, i64 176}
!84 = distinct !{!84, !85, !86, !87}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"llvm.loop.isvectorized", i32 1}
!87 = !{!"llvm.loop.unroll.runtime.disable"}
!88 = distinct !{!88, !85, !87, !86}
!89 = distinct !{!89, !85, !86, !87}
!90 = distinct !{!90, !85, !87, !86}
!91 = distinct !{!91, !85}
!92 = distinct !{!92, !85}
!93 = distinct !{!93, !85}
!94 = distinct !{!94, !85, !86, !87}
!95 = distinct !{!95, !85, !87, !86}
!96 = distinct !{!96, !85, !86, !87}
!97 = distinct !{!97, !85, !87, !86}
!98 = distinct !{!98, !85}
!99 = !{!21, !23, i64 56}
!100 = !{!21, !5, i64 5940}
!101 = !{!21, !5, i64 5944}
!102 = !{!21, !28, i64 5936}
!103 = distinct !{!103, !85}
!104 = !{!65, !12, i64 8}
!105 = !{!10, !11, i64 24}
!106 = !{!10, !5, i64 32}
!107 = !{!10, !13, i64 40}
!108 = !{!"branch_weights", i32 1048575, i32 1}
!109 = !{!110, !5, i64 68}
!110 = !{!"gz_header_s", !5, i64 0, !13, i64 8, !5, i64 16, !5, i64 20, !11, i64 24, !5, i64 32, !5, i64 36, !11, i64 40, !5, i64 48, !11, i64 56, !5, i64 64, !5, i64 68, !5, i64 72}
!111 = !{!110, !5, i64 0}
!112 = !{!110, !11, i64 24}
!113 = !{!110, !11, i64 40}
!114 = !{!110, !11, i64 56}
!115 = !{!110, !13, i64 8}
!116 = !{!110, !5, i64 20}
!117 = !{!110, !5, i64 32}
!118 = !{!21, !13, i64 64}
!119 = distinct !{!119, !85, !120}
!120 = !{!"llvm.loop.peeled.count", i32 1}
!121 = distinct !{!121, !85}
!122 = distinct !{!122, !85}
!123 = !{ptr @deflate}
!124 = !{!21, !5, i64 5928}
!125 = distinct !{!125, !85, !86, !87}
!126 = distinct !{!126, !85, !87, !86}
!127 = distinct !{!127, !85, !86, !87}
!128 = distinct !{!128, !85, !87, !86}
!129 = distinct !{!129, !85}
!130 = distinct !{!130, !85, !86, !87}
!131 = distinct !{!131, !85, !87, !86}
!132 = distinct !{!132, !85, !86, !87}
!133 = distinct !{!133, !85, !87, !86}
!134 = !{!21, !5, i64 5900}
!135 = distinct !{!135, !85, !86, !87}
!136 = distinct !{!136, !85, !87, !86}
!137 = distinct !{!137, !85, !86, !87}
!138 = distinct !{!138, !85, !87, !86}
!139 = distinct !{!139, !85}
!140 = !{!21, !26, i64 2904}
!141 = !{!21, !26, i64 2928}
!142 = !{!21, !26, i64 2952}
!143 = distinct !{!143, !85, !86, !87}
!144 = distinct !{!144, !85, !87, !86}
!145 = distinct !{!145, !85, !86, !87}
!146 = distinct !{!146, !85, !87, !86}
!147 = distinct !{!147, !85}
!148 = distinct !{!148, !85}
!149 = distinct !{!149, !85}
!150 = distinct !{!150, !85, !86, !87}
!151 = distinct !{!151, !85, !87, !86}
!152 = distinct !{!152, !85, !86, !87}
!153 = distinct !{!153, !85, !87, !86}
!154 = !{!21, !5, i64 164}
!155 = distinct !{!155, !85}
