; ModuleID = '/home/amiralie1380/michigan/pl/zlib/deflate.c'
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
  %33 = tail call ptr %21(ptr noundef %32, i32 noundef 1, i32 noundef 5968) #12, !inline_history !18
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
  %45 = tail call ptr %43(ptr noundef %44, i32 noundef 32768, i32 noundef 2) #12, !inline_history !18
  %46 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store ptr %45, ptr %46, align 8, !tbaa !34
  %47 = load ptr, ptr %15, align 8, !tbaa !15
  %48 = load ptr, ptr %31, align 8, !tbaa !16
  %49 = load i32, ptr %40, align 8, !tbaa !32
  %50 = tail call ptr %47(ptr noundef %48, i32 noundef %49, i32 noundef 2) #12, !inline_history !18
  %51 = getelementptr inbounds nuw i8, ptr %33, i64 112
  store ptr %50, ptr %51, align 8, !tbaa !35
  %52 = load ptr, ptr %15, align 8, !tbaa !15
  %53 = load ptr, ptr %31, align 8, !tbaa !16
  %54 = load i32, ptr %42, align 4, !tbaa !36
  %55 = tail call ptr %52(ptr noundef %53, i32 noundef %54, i32 noundef 2) #12, !inline_history !18
  %56 = getelementptr inbounds nuw i8, ptr %33, i64 120
  store ptr %55, ptr %56, align 8, !tbaa !37
  %57 = getelementptr inbounds nuw i8, ptr %33, i64 5952
  store i64 0, ptr %57, align 8, !tbaa !38
  %58 = getelementptr inbounds nuw i8, ptr %33, i64 5896
  store i32 16384, ptr %58, align 8, !tbaa !39
  %59 = load ptr, ptr %15, align 8, !tbaa !15
  %60 = load ptr, ptr %31, align 8, !tbaa !16
  %61 = tail call ptr %59(ptr noundef %60, i32 noundef 16384, i32 noundef 4) #12, !inline_history !18
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
  tail call void %82(ptr noundef %98, ptr noundef nonnull %95) #12, !inline_history !43
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
  tail call void %102(ptr noundef %108, ptr noundef nonnull %105) #12, !inline_history !43
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
  tail call void %112(ptr noundef %118, ptr noundef nonnull %115) #12, !inline_history !43
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
  tail call void %122(ptr noundef %128, ptr noundef nonnull %125) #12, !inline_history !43
  %129 = load ptr, ptr %22, align 8, !tbaa !17
  %130 = load ptr, ptr %37, align 8, !tbaa !19
  br label %131

131:                                              ; preds = %127, %121
  %132 = phi ptr [ %130, %127 ], [ %123, %121 ]
  %133 = phi ptr [ %129, %127 ], [ %122, %121 ]
  %134 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %133(ptr noundef %134, ptr noundef %132) #12, !inline_history !43
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

145:                                              ; preds = %4, %6, %11, %26, %30, %77, %81, %84, %87, %90, %131, %135
  %146 = phi i32 [ %144, %135 ], [ -6, %4 ], [ -2, %11 ], [ -4, %131 ], [ -2, %26 ], [ -4, %30 ], [ -6, %6 ], [ -4, %90 ], [ -4, %77 ], [ -4, %81 ], [ -4, %84 ], [ -4, %87 ]
  ret i32 %146
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  br i1 %9, label %190, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !8
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %190, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %190, label %17

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
  br i1 %35, label %190, label %36

36:                                               ; preds = %34
  %37 = sub nsw i32 0, %3
  br label %42

38:                                               ; preds = %30
  %39 = icmp samesign ugt i32 %3, 15
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = add nsw i32 %3, -16
  br label %42

42:                                               ; preds = %38, %40, %36
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
  br i1 %56, label %190, label %57

57:                                               ; preds = %42
  %58 = icmp eq i32 %43, 8
  %59 = and i1 %58, %44
  br i1 %59, label %190, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %62 = load ptr, ptr %61, align 8, !tbaa !16
  %63 = tail call ptr %25(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #12
  %64 = icmp eq ptr %63, null
  br i1 %64, label %190, label %65

65:                                               ; preds = %60
  %66 = select i1 %58, i32 9, i32 %43
  %67 = getelementptr inbounds nuw i8, ptr %63, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5960) %67, i8 0, i64 5960, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %63, ptr %68, align 8, !tbaa !19
  store ptr %0, ptr %63, align 8, !tbaa !20
  %69 = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i32 42, ptr %69, align 8, !tbaa !29
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 48
  store i32 %45, ptr %70, align 8, !tbaa !30
  %71 = getelementptr inbounds nuw i8, ptr %63, i64 84
  store i32 %66, ptr %71, align 4, !tbaa !31
  %72 = shl nuw nsw i32 1, %66
  %73 = getelementptr inbounds nuw i8, ptr %63, i64 80
  store i32 %72, ptr %73, align 8, !tbaa !32
  %74 = add nsw i32 %72, -1
  %75 = getelementptr inbounds nuw i8, ptr %63, i64 88
  store i32 %74, ptr %75, align 8, !tbaa !33
  %76 = add nuw nsw i32 %4, 7
  %77 = getelementptr inbounds nuw i8, ptr %63, i64 136
  store i32 %76, ptr %77, align 8, !tbaa !49
  %78 = shl nuw nsw i32 128, %4
  %79 = getelementptr inbounds nuw i8, ptr %63, i64 132
  store i32 %78, ptr %79, align 4, !tbaa !36
  %80 = add nsw i32 %78, -1
  %81 = getelementptr inbounds nuw i8, ptr %63, i64 140
  store i32 %80, ptr %81, align 4, !tbaa !50
  %82 = trunc nuw nsw i32 %4 to i8
  %83 = add nuw nsw i8 %82, 9
  %84 = udiv i8 %83, 3
  %85 = zext nneg i8 %84 to i32
  %86 = getelementptr inbounds nuw i8, ptr %63, i64 144
  store i32 %85, ptr %86, align 8, !tbaa !51
  %87 = load ptr, ptr %19, align 8, !tbaa !15
  %88 = load ptr, ptr %61, align 8, !tbaa !16
  %89 = tail call ptr %87(ptr noundef %88, i32 noundef %72, i32 noundef 2) #12
  %90 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store ptr %89, ptr %90, align 8, !tbaa !34
  %91 = load ptr, ptr %19, align 8, !tbaa !15
  %92 = load ptr, ptr %61, align 8, !tbaa !16
  %93 = load i32, ptr %73, align 8, !tbaa !32
  %94 = tail call ptr %91(ptr noundef %92, i32 noundef %93, i32 noundef 2) #12
  %95 = getelementptr inbounds nuw i8, ptr %63, i64 112
  store ptr %94, ptr %95, align 8, !tbaa !35
  %96 = load ptr, ptr %19, align 8, !tbaa !15
  %97 = load ptr, ptr %61, align 8, !tbaa !16
  %98 = load i32, ptr %79, align 4, !tbaa !36
  %99 = tail call ptr %96(ptr noundef %97, i32 noundef %98, i32 noundef 2) #12
  %100 = getelementptr inbounds nuw i8, ptr %63, i64 120
  store ptr %99, ptr %100, align 8, !tbaa !37
  %101 = getelementptr inbounds nuw i8, ptr %63, i64 5952
  store i64 0, ptr %101, align 8, !tbaa !38
  %102 = shl nuw nsw i32 64, %4
  %103 = getelementptr inbounds nuw i8, ptr %63, i64 5896
  store i32 %102, ptr %103, align 8, !tbaa !39
  %104 = load ptr, ptr %19, align 8, !tbaa !15
  %105 = load ptr, ptr %61, align 8, !tbaa !16
  %106 = tail call ptr %104(ptr noundef %105, i32 noundef %102, i32 noundef 4) #12
  %107 = getelementptr inbounds nuw i8, ptr %63, i64 16
  store ptr %106, ptr %107, align 8, !tbaa !40
  %108 = load i32, ptr %103, align 8, !tbaa !39
  %109 = zext i32 %108 to i64
  %110 = shl nuw nsw i64 %109, 2
  %111 = getelementptr inbounds nuw i8, ptr %63, i64 24
  store i64 %110, ptr %111, align 8, !tbaa !41
  %112 = load ptr, ptr %90, align 8, !tbaa !34
  %113 = icmp eq ptr %112, null
  br i1 %113, label %122, label %114

114:                                              ; preds = %65
  %115 = load ptr, ptr %95, align 8, !tbaa !35
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %100, align 8, !tbaa !37
  %119 = icmp eq ptr %118, null
  %120 = icmp eq ptr %106, null
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %122, label %180

122:                                              ; preds = %65, %114, %117
  store i32 666, ptr %69, align 8, !tbaa !29
  %123 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !42
  store ptr %123, ptr %18, align 8, !tbaa !9
  %124 = load ptr, ptr %19, align 8, !tbaa !15
  %125 = icmp eq ptr %124, null
  br i1 %125, label %190, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %26, align 8, !tbaa !17
  %128 = icmp eq ptr %127, null
  br i1 %128, label %190, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %68, align 8, !tbaa !19
  %131 = icmp eq ptr %130, null
  br i1 %131, label %190, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %130, align 8, !tbaa !20
  %134 = icmp eq ptr %133, %0
  br i1 %134, label %135, label %190

135:                                              ; preds = %132
  %136 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %137 = load i32, ptr %136, align 8, !tbaa !29
  switch i32 %137, label %190 [
    i32 42, label %138
    i32 57, label %138
    i32 69, label %138
    i32 73, label %138
    i32 91, label %138
    i32 103, label %138
    i32 113, label %138
    i32 666, label %138
  ]

138:                                              ; preds = %135, %135, %135, %135, %135, %135, %135, %135
  %139 = getelementptr inbounds nuw i8, ptr %130, i64 16
  %140 = load ptr, ptr %139, align 8, !tbaa !40
  %141 = icmp eq ptr %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %127(ptr noundef %143, ptr noundef nonnull %140) #12, !inline_history !52
  %144 = load ptr, ptr %68, align 8, !tbaa !19
  %145 = load ptr, ptr %26, align 8, !tbaa !17
  br label %146

146:                                              ; preds = %142, %138
  %147 = phi ptr [ %145, %142 ], [ %127, %138 ]
  %148 = phi ptr [ %144, %142 ], [ %130, %138 ]
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 120
  %150 = load ptr, ptr %149, align 8, !tbaa !37
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %146
  %153 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %147(ptr noundef %153, ptr noundef nonnull %150) #12, !inline_history !52
  %154 = load ptr, ptr %68, align 8, !tbaa !19
  %155 = load ptr, ptr %26, align 8, !tbaa !17
  br label %156

156:                                              ; preds = %152, %146
  %157 = phi ptr [ %155, %152 ], [ %147, %146 ]
  %158 = phi ptr [ %154, %152 ], [ %148, %146 ]
  %159 = getelementptr inbounds nuw i8, ptr %158, i64 112
  %160 = load ptr, ptr %159, align 8, !tbaa !35
  %161 = icmp eq ptr %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %156
  %163 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %157(ptr noundef %163, ptr noundef nonnull %160) #12, !inline_history !52
  %164 = load ptr, ptr %68, align 8, !tbaa !19
  %165 = load ptr, ptr %26, align 8, !tbaa !17
  br label %166

166:                                              ; preds = %162, %156
  %167 = phi ptr [ %165, %162 ], [ %157, %156 ]
  %168 = phi ptr [ %164, %162 ], [ %158, %156 ]
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 96
  %170 = load ptr, ptr %169, align 8, !tbaa !34
  %171 = icmp eq ptr %170, null
  br i1 %171, label %176, label %172

172:                                              ; preds = %166
  %173 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %167(ptr noundef %173, ptr noundef nonnull %170) #12, !inline_history !52
  %174 = load ptr, ptr %26, align 8, !tbaa !17
  %175 = load ptr, ptr %68, align 8, !tbaa !19
  br label %176

176:                                              ; preds = %172, %166
  %177 = phi ptr [ %175, %172 ], [ %168, %166 ]
  %178 = phi ptr [ %174, %172 ], [ %167, %166 ]
  %179 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %178(ptr noundef %179, ptr noundef %177) #12, !inline_history !52
  store ptr null, ptr %68, align 8, !tbaa !19
  br label %190

180:                                              ; preds = %117
  %181 = getelementptr inbounds nuw i8, ptr %106, i64 %109
  %182 = getelementptr inbounds nuw i8, ptr %63, i64 5888
  store ptr %181, ptr %182, align 8, !tbaa !44
  %183 = mul i32 %108, 3
  %184 = add i32 %183, -3
  %185 = getelementptr inbounds nuw i8, ptr %63, i64 5904
  store i32 %184, ptr %185, align 8, !tbaa !45
  %186 = getelementptr inbounds nuw i8, ptr %63, i64 196
  store i32 %32, ptr %186, align 4, !tbaa !46
  %187 = getelementptr inbounds nuw i8, ptr %63, i64 200
  store i32 %5, ptr %187, align 8, !tbaa !47
  %188 = getelementptr inbounds nuw i8, ptr %63, i64 72
  store i8 8, ptr %188, align 8, !tbaa !48
  %189 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %190

190:                                              ; preds = %176, %135, %132, %129, %126, %122, %60, %42, %57, %34, %15, %8, %10, %180
  %191 = phi i32 [ %189, %180 ], [ -6, %8 ], [ -2, %15 ], [ -2, %34 ], [ -2, %42 ], [ -4, %60 ], [ -6, %10 ], [ -2, %57 ], [ -4, %122 ], [ -4, %126 ], [ -4, %129 ], [ -4, %132 ], [ -4, %135 ], [ -4, %176 ]
  ret i32 %191
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
  tail call void %9(ptr noundef %27, ptr noundef nonnull %23) #12
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
  tail call void %31(ptr noundef %38, ptr noundef nonnull %34) #12
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
  tail call void %42(ptr noundef %49, ptr noundef nonnull %45) #12
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
  tail call void %53(ptr noundef %60, ptr noundef nonnull %56) #12
  %61 = load ptr, ptr %8, align 8, !tbaa !17
  %62 = load ptr, ptr %12, align 8, !tbaa !19
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi ptr [ %62, %58 ], [ %54, %52 ]
  %65 = phi ptr [ %61, %58 ], [ %53, %52 ]
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %67 = load ptr, ptr %66, align 8, !tbaa !16
  tail call void %65(ptr noundef %67, ptr noundef %64) #12
  store ptr null, ptr %12, align 8, !tbaa !19
  %68 = icmp eq i32 %20, 113
  %69 = select i1 %68, i32 -3, i32 0
  br label %70

70:                                               ; preds = %11, %15, %18, %3, %7, %1, %63
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
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !57
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
  %43 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %46

44:                                               ; preds = %38
  %45 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %47, ptr %48, align 8, !tbaa !59
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !60
  tail call void @_tr_init(ptr noundef nonnull %13) #12
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

92:                                               ; preds = %11, %15, %18, %3, %7, %1, %46
  %93 = phi i32 [ 0, %46 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetDictionary(ptr noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %649, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %649, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %649, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %649, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %649

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %649 [
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
  br i1 %24, label %649, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !30
  switch i32 %27, label %34 [
    i32 2, label %649
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %649

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !75
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %649

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !75
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %649

38:                                               ; preds = %34
  store i32 0, ptr %26, align 8, !tbaa !30
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %40 = load i32, ptr %39, align 8, !tbaa !32
  %41 = icmp ult i32 %2, %40
  br i1 %41, label %72, label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %44 = load i64, ptr %43, align 8, !tbaa !59
  %45 = tail call i64 @adler32(i64 noundef %44, ptr noundef nonnull %1, i32 noundef %2) #12
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

65:                                               ; preds = %42, %51, %49
  %66 = phi ptr [ %35, %51 ], [ %35, %49 ], [ %31, %42 ]
  %67 = phi ptr [ %39, %51 ], [ %39, %49 ], [ %46, %42 ]
  %68 = phi i32 [ %64, %51 ], [ %40, %49 ], [ %47, %42 ]
  %69 = sub i32 %2, %68
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 %70
  br label %72

72:                                               ; preds = %42, %65, %38
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

98:                                               ; preds = %310, %72
  %99 = phi i32 [ %258, %310 ], [ %97, %72 ]
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
  br i1 %109, label %217, label %110

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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
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
  br i1 %137, label %159, label %138

138:                                              ; preds = %128
  %139 = and i64 %136, 8589934584
  %140 = mul nsw i64 %139, -2
  %141 = getelementptr i8, ptr %133, i64 %140
  %142 = trunc i64 %139 to i32
  %143 = sub i32 %130, %142
  %144 = insertelement <8 x i32> poison, i32 %129, i64 0
  %145 = shufflevector <8 x i32> %144, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %146

146:                                              ; preds = %146, %138
  %147 = phi i64 [ 0, %138 ], [ %155, %146 ]
  %148 = mul i64 %147, -2
  %149 = getelementptr i8, ptr %133, i64 %148
  %150 = getelementptr inbounds i8, ptr %149, i64 -16
  %151 = load <8 x i16>, ptr %150, align 2, !tbaa !62
  %152 = zext <8 x i16> %151 to <8 x i32>
  %153 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %152, <8 x i32> %145)
  %154 = trunc nuw <8 x i32> %153 to <8 x i16>
  store <8 x i16> %154, ptr %150, align 2, !tbaa !62
  %155 = add nuw i64 %147, 8
  %156 = icmp eq i64 %155, %139
  br i1 %156, label %157, label %146, !llvm.loop !84

157:                                              ; preds = %146
  %158 = icmp eq i64 %136, %139
  br i1 %158, label %172, label %159

159:                                              ; preds = %128, %157
  %160 = phi ptr [ %133, %128 ], [ %141, %157 ]
  %161 = phi i32 [ %130, %128 ], [ %143, %157 ]
  br label %162

162:                                              ; preds = %159, %162
  %163 = phi ptr [ %165, %162 ], [ %160, %159 ]
  %164 = phi i32 [ %170, %162 ], [ %161, %159 ]
  %165 = getelementptr inbounds i8, ptr %163, i64 -2
  %166 = load i16, ptr %165, align 2, !tbaa !62
  %167 = zext i16 %166 to i32
  %168 = tail call i32 @llvm.usub.sat.i32(i32 %167, i32 %129)
  %169 = trunc nuw i32 %168 to i16
  store i16 %169, ptr %165, align 2, !tbaa !62
  %170 = add i32 %164, -1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %162, !llvm.loop !88

172:                                              ; preds = %162, %157
  %173 = load ptr, ptr %91, align 8, !tbaa !35
  %174 = zext i32 %129 to i64
  %175 = getelementptr inbounds nuw [2 x i8], ptr %173, i64 %174
  %176 = add i32 %129, -1
  %177 = zext i32 %176 to i64
  %178 = add nuw nsw i64 %177, 1
  %179 = icmp ult i32 %176, 7
  br i1 %179, label %201, label %180

180:                                              ; preds = %172
  %181 = and i64 %178, 8589934584
  %182 = mul nsw i64 %181, -2
  %183 = getelementptr i8, ptr %175, i64 %182
  %184 = trunc i64 %181 to i32
  %185 = sub i32 %129, %184
  %186 = insertelement <8 x i32> poison, i32 %129, i64 0
  %187 = shufflevector <8 x i32> %186, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %188

188:                                              ; preds = %188, %180
  %189 = phi i64 [ 0, %180 ], [ %197, %188 ]
  %190 = mul i64 %189, -2
  %191 = getelementptr i8, ptr %175, i64 %190
  %192 = getelementptr inbounds i8, ptr %191, i64 -16
  %193 = load <8 x i16>, ptr %192, align 2, !tbaa !62
  %194 = zext <8 x i16> %193 to <8 x i32>
  %195 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %194, <8 x i32> %187)
  %196 = trunc nuw <8 x i32> %195 to <8 x i16>
  store <8 x i16> %196, ptr %192, align 2, !tbaa !62
  %197 = add nuw i64 %189, 8
  %198 = icmp eq i64 %197, %181
  br i1 %198, label %199, label %188, !llvm.loop !89

199:                                              ; preds = %188
  %200 = icmp eq i64 %178, %181
  br i1 %200, label %214, label %201

201:                                              ; preds = %172, %199
  %202 = phi ptr [ %175, %172 ], [ %183, %199 ]
  %203 = phi i32 [ %129, %172 ], [ %185, %199 ]
  br label %204

204:                                              ; preds = %201, %204
  %205 = phi ptr [ %207, %204 ], [ %202, %201 ]
  %206 = phi i32 [ %212, %204 ], [ %203, %201 ]
  %207 = getelementptr inbounds i8, ptr %205, i64 -2
  %208 = load i16, ptr %207, align 2, !tbaa !62
  %209 = zext i16 %208 to i32
  %210 = tail call i32 @llvm.usub.sat.i32(i32 %209, i32 %129)
  %211 = trunc nuw i32 %210 to i16
  store i16 %211, ptr %207, align 2, !tbaa !62
  %212 = add i32 %206, -1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %204, !llvm.loop !90

214:                                              ; preds = %204, %199
  store i32 1, ptr %92, align 8, !tbaa !63
  %215 = add i32 %75, %106
  %216 = load i32, ptr %74, align 4, !tbaa !75
  br label %217

217:                                              ; preds = %214, %98
  %218 = phi i32 [ %216, %214 ], [ %99, %98 ]
  %219 = phi i32 [ %118, %214 ], [ %102, %98 ]
  %220 = phi i32 [ %215, %214 ], [ %106, %98 ]
  %221 = load ptr, ptr %15, align 8, !tbaa !20
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 8
  %223 = load i32, ptr %222, align 8, !tbaa !81
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %315, label %225

225:                                              ; preds = %217
  %226 = load ptr, ptr %84, align 8, !tbaa !34
  %227 = zext i32 %219 to i64
  %228 = getelementptr inbounds nuw i8, ptr %226, i64 %227
  %229 = zext i32 %218 to i64
  %230 = getelementptr inbounds nuw i8, ptr %228, i64 %229
  %231 = tail call i32 @llvm.umin.i32(i32 %223, i32 %220)
  %232 = icmp eq i32 %220, 0
  br i1 %232, label %256, label %233

233:                                              ; preds = %225
  %234 = sub i32 %223, %231
  store i32 %234, ptr %222, align 8, !tbaa !81
  %235 = load ptr, ptr %221, align 8, !tbaa !82
  %236 = zext i32 %231 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %230, ptr align 1 %235, i64 %236, i1 false)
  %237 = getelementptr inbounds nuw i8, ptr %221, i64 56
  %238 = load ptr, ptr %237, align 8, !tbaa !19
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 48
  %240 = load i32, ptr %239, align 8, !tbaa !30
  switch i32 %240, label %249 [
    i32 1, label %241
    i32 2, label %245
  ]

241:                                              ; preds = %233
  %242 = getelementptr inbounds nuw i8, ptr %221, i64 96
  %243 = load i64, ptr %242, align 8, !tbaa !59
  %244 = tail call i64 @adler32(i64 noundef %243, ptr noundef %230, i32 noundef %231) #12
  store i64 %244, ptr %242, align 8, !tbaa !59
  br label %249

245:                                              ; preds = %233
  %246 = getelementptr inbounds nuw i8, ptr %221, i64 96
  %247 = load i64, ptr %246, align 8, !tbaa !59
  %248 = tail call i64 @crc32(i64 noundef %247, ptr noundef %230, i32 noundef %231) #12
  store i64 %248, ptr %246, align 8, !tbaa !59
  br label %249

249:                                              ; preds = %245, %241, %233
  %250 = load ptr, ptr %221, align 8, !tbaa !82
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 %236
  store ptr %251, ptr %221, align 8, !tbaa !82
  %252 = getelementptr inbounds nuw i8, ptr %221, i64 16
  %253 = load i64, ptr %252, align 8, !tbaa !53
  %254 = add i64 %253, %236
  store i64 %254, ptr %252, align 8, !tbaa !53
  %255 = load i32, ptr %74, align 4, !tbaa !75
  br label %256

256:                                              ; preds = %249, %225
  %257 = phi i32 [ %218, %225 ], [ %255, %249 ]
  %258 = add i32 %257, %231
  store i32 %258, ptr %74, align 4, !tbaa !75
  %259 = load i32, ptr %88, align 4, !tbaa !76
  %260 = add i32 %259, %258
  %261 = icmp ugt i32 %260, 2
  br i1 %261, label %262, label %308

262:                                              ; preds = %256
  %263 = load i32, ptr %82, align 4, !tbaa !73
  %264 = sub i32 %263, %259
  %265 = load ptr, ptr %84, align 8, !tbaa !34
  %266 = zext i32 %264 to i64
  %267 = getelementptr inbounds nuw i8, ptr %265, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !8
  %269 = zext i8 %268 to i32
  store i32 %269, ptr %93, align 8, !tbaa !80
  %270 = load i32, ptr %94, align 8, !tbaa !51
  %271 = shl i32 %269, %270
  %272 = add i32 %264, 1
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds nuw i8, ptr %265, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !8
  %276 = zext i8 %275 to i32
  %277 = xor i32 %271, %276
  %278 = load i32, ptr %95, align 4, !tbaa !50
  %279 = and i32 %277, %278
  store i32 %279, ptr %93, align 8, !tbaa !80
  br label %280

280:                                              ; preds = %285, %262
  %281 = phi i32 [ %293, %285 ], [ %279, %262 ]
  %282 = phi i32 [ %305, %285 ], [ %259, %262 ]
  %283 = phi i32 [ %304, %285 ], [ %264, %262 ]
  %284 = icmp eq i32 %282, 0
  br i1 %284, label %308, label %285

285:                                              ; preds = %280
  %286 = shl i32 %281, %270
  %287 = add i32 %283, 2
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds nuw i8, ptr %265, i64 %288
  %290 = load i8, ptr %289, align 1, !tbaa !8
  %291 = zext i8 %290 to i32
  %292 = xor i32 %286, %291
  %293 = and i32 %292, %278
  store i32 %293, ptr %93, align 8, !tbaa !80
  %294 = load ptr, ptr %90, align 8, !tbaa !37
  %295 = zext i32 %293 to i64
  %296 = getelementptr inbounds nuw [2 x i8], ptr %294, i64 %295
  %297 = load i16, ptr %296, align 2, !tbaa !62
  %298 = load ptr, ptr %91, align 8, !tbaa !35
  %299 = load i32, ptr %96, align 8, !tbaa !33
  %300 = and i32 %299, %283
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds nuw [2 x i8], ptr %298, i64 %301
  store i16 %297, ptr %302, align 2, !tbaa !62
  %303 = trunc i32 %283 to i16
  store i16 %303, ptr %296, align 2, !tbaa !62
  %304 = add i32 %283, 1
  %305 = add i32 %282, -1
  store i32 %305, ptr %88, align 4, !tbaa !76
  %306 = add i32 %305, %258
  %307 = icmp ult i32 %306, 3
  br i1 %307, label %308, label %280, !llvm.loop !91

308:                                              ; preds = %285, %280, %256
  %309 = icmp ult i32 %258, 262
  br i1 %309, label %310, label %315

310:                                              ; preds = %308
  %311 = load ptr, ptr %15, align 8, !tbaa !20
  %312 = getelementptr inbounds nuw i8, ptr %311, i64 8
  %313 = load i32, ptr %312, align 8, !tbaa !81
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %98, !llvm.loop !92

315:                                              ; preds = %310, %308, %217
  %316 = phi i32 [ %258, %310 ], [ %258, %308 ], [ %218, %217 ]
  %317 = getelementptr inbounds nuw i8, ptr %15, i64 5952
  %318 = load i64, ptr %317, align 8, !tbaa !38
  %319 = load i64, ptr %81, align 8, !tbaa !61
  %320 = icmp ult i64 %318, %319
  br i1 %320, label %321, label %348

321:                                              ; preds = %315
  %322 = load i32, ptr %82, align 4, !tbaa !73
  %323 = zext i32 %322 to i64
  %324 = zext i32 %316 to i64
  %325 = add nuw nsw i64 %324, %323
  %326 = icmp ult i64 %318, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %321
  %328 = sub i64 %319, %325
  %329 = tail call i64 @llvm.umin.i64(i64 %328, i64 258)
  %330 = load ptr, ptr %84, align 8, !tbaa !34
  %331 = getelementptr inbounds nuw i8, ptr %330, i64 %325
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %331, i8 0, i64 %329, i1 false)
  %332 = add nuw nsw i64 %329, %325
  br label %345

333:                                              ; preds = %321
  %334 = add nuw nsw i64 %325, 258
  %335 = icmp ult i64 %318, %334
  br i1 %335, label %336, label %348

336:                                              ; preds = %333
  %337 = sub nuw nsw i64 %334, %318
  %338 = sub i64 %319, %318
  %339 = tail call i64 @llvm.umin.i64(i64 %337, i64 %338)
  %340 = load ptr, ptr %84, align 8, !tbaa !34
  %341 = getelementptr inbounds nuw i8, ptr %340, i64 %318
  %342 = and i64 %339, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %341, i8 0, i64 %342, i1 false)
  %343 = load i64, ptr %317, align 8, !tbaa !38
  %344 = add i64 %343, %339
  br label %345

345:                                              ; preds = %336, %327
  %346 = phi i64 [ %332, %327 ], [ %344, %336 ]
  store i64 %346, ptr %317, align 8, !tbaa !38
  %347 = load i32, ptr %74, align 4, !tbaa !75
  br label %348

348:                                              ; preds = %315, %333, %345
  %349 = phi i32 [ %316, %315 ], [ %316, %333 ], [ %347, %345 ]
  %350 = icmp ugt i32 %349, 2
  br i1 %350, label %351, label %641

351:                                              ; preds = %348, %638
  %352 = phi i32 [ %639, %638 ], [ %349, %348 ]
  %353 = load i32, ptr %82, align 4, !tbaa !73
  %354 = add i32 %352, -2
  %355 = load i32, ptr %94, align 8, !tbaa !51
  %356 = load ptr, ptr %84, align 8, !tbaa !34
  %357 = load i32, ptr %95, align 4, !tbaa !50
  %358 = load ptr, ptr %90, align 8, !tbaa !37
  %359 = load ptr, ptr %91, align 8, !tbaa !35
  %360 = load i32, ptr %96, align 8, !tbaa !33
  %361 = load i32, ptr %93, align 8, !tbaa !80
  br label %362

362:                                              ; preds = %362, %351
  %363 = phi i32 [ %361, %351 ], [ %373, %362 ]
  %364 = phi i32 [ %353, %351 ], [ %381, %362 ]
  %365 = phi i32 [ %354, %351 ], [ %382, %362 ]
  %366 = shl i32 %363, %355
  %367 = add i32 %364, 2
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds nuw i8, ptr %356, i64 %368
  %370 = load i8, ptr %369, align 1, !tbaa !8
  %371 = zext i8 %370 to i32
  %372 = xor i32 %366, %371
  %373 = and i32 %372, %357
  store i32 %373, ptr %93, align 8, !tbaa !80
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds nuw [2 x i8], ptr %358, i64 %374
  %376 = load i16, ptr %375, align 2, !tbaa !62
  %377 = and i32 %360, %364
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds nuw [2 x i8], ptr %359, i64 %378
  store i16 %376, ptr %379, align 2, !tbaa !62
  %380 = trunc i32 %364 to i16
  store i16 %380, ptr %375, align 2, !tbaa !62
  %381 = add i32 %364, 1
  %382 = add i32 %365, -1
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %362, !llvm.loop !93

384:                                              ; preds = %362
  store i32 %381, ptr %82, align 4, !tbaa !73
  store i32 2, ptr %74, align 4, !tbaa !75
  %385 = load i32, ptr %73, align 8, !tbaa !32
  %386 = add i32 %385, -262
  %387 = zext i32 %385 to i64
  %388 = insertelement <2 x i32> poison, i32 %385, i64 0
  %389 = shufflevector <2 x i32> %388, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %390

390:                                              ; preds = %601, %384
  %391 = phi i32 [ %549, %601 ], [ 2, %384 ]
  %392 = load i64, ptr %81, align 8, !tbaa !61
  %393 = zext nneg i32 %391 to i64
  %394 = load i32, ptr %82, align 4, !tbaa !73
  %395 = zext i32 %394 to i64
  %396 = add nuw nsw i64 %393, %395
  %397 = sub i64 %392, %396
  %398 = trunc i64 %397 to i32
  %399 = load i32, ptr %73, align 8, !tbaa !32
  %400 = add i32 %386, %399
  %401 = icmp ult i32 %394, %400
  br i1 %401, label %508, label %402

402:                                              ; preds = %390
  %403 = load ptr, ptr %84, align 8, !tbaa !34
  %404 = getelementptr inbounds nuw i8, ptr %403, i64 %387
  %405 = sub i32 %385, %398
  %406 = zext i32 %405 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %403, ptr align 1 %404, i64 %406, i1 false)
  %407 = load <2 x i32>, ptr %82, align 4, !tbaa !4
  %408 = sub <2 x i32> %407, %389
  store <2 x i32> %408, ptr %82, align 4, !tbaa !4
  %409 = load i64, ptr %87, align 8, !tbaa !74
  %410 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %409, i64 %387), !nosanitize !57
  %411 = extractvalue { i64, i1 } %410, 1, !nosanitize !57
  br i1 %411, label %412, label %413, !prof !58, !nosanitize !57

412:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
  unreachable, !nosanitize !57

413:                                              ; preds = %402
  %414 = extractvalue { i64, i1 } %410, 0, !nosanitize !57
  store i64 %414, ptr %87, align 8, !tbaa !74
  %415 = load i32, ptr %88, align 4, !tbaa !76
  %416 = extractelement <2 x i32> %408, i64 0
  %417 = icmp ugt i32 %415, %416
  br i1 %417, label %418, label %419

418:                                              ; preds = %413
  store i32 %416, ptr %88, align 4, !tbaa !76
  br label %419

419:                                              ; preds = %418, %413
  %420 = load i32, ptr %73, align 8, !tbaa !32
  %421 = load i32, ptr %89, align 4, !tbaa !36
  %422 = load ptr, ptr %90, align 8, !tbaa !37
  %423 = zext i32 %421 to i64
  %424 = getelementptr inbounds nuw [2 x i8], ptr %422, i64 %423
  %425 = add i32 %421, -1
  %426 = zext i32 %425 to i64
  %427 = add nuw nsw i64 %426, 1
  %428 = icmp ult i32 %425, 7
  br i1 %428, label %450, label %429

429:                                              ; preds = %419
  %430 = and i64 %427, 8589934584
  %431 = mul nsw i64 %430, -2
  %432 = getelementptr i8, ptr %424, i64 %431
  %433 = trunc i64 %430 to i32
  %434 = sub i32 %421, %433
  %435 = insertelement <8 x i32> poison, i32 %420, i64 0
  %436 = shufflevector <8 x i32> %435, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %437

437:                                              ; preds = %437, %429
  %438 = phi i64 [ 0, %429 ], [ %446, %437 ]
  %439 = mul i64 %438, -2
  %440 = getelementptr i8, ptr %424, i64 %439
  %441 = getelementptr inbounds i8, ptr %440, i64 -16
  %442 = load <8 x i16>, ptr %441, align 2, !tbaa !62
  %443 = zext <8 x i16> %442 to <8 x i32>
  %444 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %443, <8 x i32> %436)
  %445 = trunc nuw <8 x i32> %444 to <8 x i16>
  store <8 x i16> %445, ptr %441, align 2, !tbaa !62
  %446 = add nuw i64 %438, 8
  %447 = icmp eq i64 %446, %430
  br i1 %447, label %448, label %437, !llvm.loop !94

448:                                              ; preds = %437
  %449 = icmp eq i64 %427, %430
  br i1 %449, label %463, label %450

450:                                              ; preds = %419, %448
  %451 = phi ptr [ %424, %419 ], [ %432, %448 ]
  %452 = phi i32 [ %421, %419 ], [ %434, %448 ]
  br label %453

453:                                              ; preds = %450, %453
  %454 = phi ptr [ %456, %453 ], [ %451, %450 ]
  %455 = phi i32 [ %461, %453 ], [ %452, %450 ]
  %456 = getelementptr inbounds i8, ptr %454, i64 -2
  %457 = load i16, ptr %456, align 2, !tbaa !62
  %458 = zext i16 %457 to i32
  %459 = tail call i32 @llvm.usub.sat.i32(i32 %458, i32 %420)
  %460 = trunc nuw i32 %459 to i16
  store i16 %460, ptr %456, align 2, !tbaa !62
  %461 = add i32 %455, -1
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %453, !llvm.loop !95

463:                                              ; preds = %453, %448
  %464 = load ptr, ptr %91, align 8, !tbaa !35
  %465 = zext i32 %420 to i64
  %466 = getelementptr inbounds nuw [2 x i8], ptr %464, i64 %465
  %467 = add i32 %420, -1
  %468 = zext i32 %467 to i64
  %469 = add nuw nsw i64 %468, 1
  %470 = icmp ult i32 %467, 7
  br i1 %470, label %492, label %471

471:                                              ; preds = %463
  %472 = and i64 %469, 8589934584
  %473 = mul nsw i64 %472, -2
  %474 = getelementptr i8, ptr %466, i64 %473
  %475 = trunc i64 %472 to i32
  %476 = sub i32 %420, %475
  %477 = insertelement <8 x i32> poison, i32 %420, i64 0
  %478 = shufflevector <8 x i32> %477, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %479

479:                                              ; preds = %479, %471
  %480 = phi i64 [ 0, %471 ], [ %488, %479 ]
  %481 = mul i64 %480, -2
  %482 = getelementptr i8, ptr %466, i64 %481
  %483 = getelementptr inbounds i8, ptr %482, i64 -16
  %484 = load <8 x i16>, ptr %483, align 2, !tbaa !62
  %485 = zext <8 x i16> %484 to <8 x i32>
  %486 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %485, <8 x i32> %478)
  %487 = trunc nuw <8 x i32> %486 to <8 x i16>
  store <8 x i16> %487, ptr %483, align 2, !tbaa !62
  %488 = add nuw i64 %480, 8
  %489 = icmp eq i64 %488, %472
  br i1 %489, label %490, label %479, !llvm.loop !96

490:                                              ; preds = %479
  %491 = icmp eq i64 %469, %472
  br i1 %491, label %505, label %492

492:                                              ; preds = %463, %490
  %493 = phi ptr [ %466, %463 ], [ %474, %490 ]
  %494 = phi i32 [ %420, %463 ], [ %476, %490 ]
  br label %495

495:                                              ; preds = %492, %495
  %496 = phi ptr [ %498, %495 ], [ %493, %492 ]
  %497 = phi i32 [ %503, %495 ], [ %494, %492 ]
  %498 = getelementptr inbounds i8, ptr %496, i64 -2
  %499 = load i16, ptr %498, align 2, !tbaa !62
  %500 = zext i16 %499 to i32
  %501 = tail call i32 @llvm.usub.sat.i32(i32 %500, i32 %420)
  %502 = trunc nuw i32 %501 to i16
  store i16 %502, ptr %498, align 2, !tbaa !62
  %503 = add i32 %497, -1
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %495, !llvm.loop !97

505:                                              ; preds = %495, %490
  store i32 1, ptr %92, align 8, !tbaa !63
  %506 = add i32 %385, %398
  %507 = load i32, ptr %74, align 4, !tbaa !75
  br label %508

508:                                              ; preds = %505, %390
  %509 = phi i32 [ %507, %505 ], [ %391, %390 ]
  %510 = phi i32 [ %416, %505 ], [ %394, %390 ]
  %511 = phi i32 [ %506, %505 ], [ %398, %390 ]
  %512 = load ptr, ptr %15, align 8, !tbaa !20
  %513 = getelementptr inbounds nuw i8, ptr %512, i64 8
  %514 = load i32, ptr %513, align 8, !tbaa !81
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %606, label %516

516:                                              ; preds = %508
  %517 = load ptr, ptr %84, align 8, !tbaa !34
  %518 = zext i32 %510 to i64
  %519 = getelementptr inbounds nuw i8, ptr %517, i64 %518
  %520 = zext i32 %509 to i64
  %521 = getelementptr inbounds nuw i8, ptr %519, i64 %520
  %522 = tail call i32 @llvm.umin.i32(i32 %514, i32 %511)
  %523 = icmp eq i32 %511, 0
  br i1 %523, label %547, label %524

524:                                              ; preds = %516
  %525 = sub i32 %514, %522
  store i32 %525, ptr %513, align 8, !tbaa !81
  %526 = load ptr, ptr %512, align 8, !tbaa !82
  %527 = zext i32 %522 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %521, ptr align 1 %526, i64 %527, i1 false)
  %528 = getelementptr inbounds nuw i8, ptr %512, i64 56
  %529 = load ptr, ptr %528, align 8, !tbaa !19
  %530 = getelementptr inbounds nuw i8, ptr %529, i64 48
  %531 = load i32, ptr %530, align 8, !tbaa !30
  switch i32 %531, label %540 [
    i32 1, label %532
    i32 2, label %536
  ]

532:                                              ; preds = %524
  %533 = getelementptr inbounds nuw i8, ptr %512, i64 96
  %534 = load i64, ptr %533, align 8, !tbaa !59
  %535 = tail call i64 @adler32(i64 noundef %534, ptr noundef %521, i32 noundef %522) #12
  store i64 %535, ptr %533, align 8, !tbaa !59
  br label %540

536:                                              ; preds = %524
  %537 = getelementptr inbounds nuw i8, ptr %512, i64 96
  %538 = load i64, ptr %537, align 8, !tbaa !59
  %539 = tail call i64 @crc32(i64 noundef %538, ptr noundef %521, i32 noundef %522) #12
  store i64 %539, ptr %537, align 8, !tbaa !59
  br label %540

540:                                              ; preds = %536, %532, %524
  %541 = load ptr, ptr %512, align 8, !tbaa !82
  %542 = getelementptr inbounds nuw i8, ptr %541, i64 %527
  store ptr %542, ptr %512, align 8, !tbaa !82
  %543 = getelementptr inbounds nuw i8, ptr %512, i64 16
  %544 = load i64, ptr %543, align 8, !tbaa !53
  %545 = add i64 %544, %527
  store i64 %545, ptr %543, align 8, !tbaa !53
  %546 = load i32, ptr %74, align 4, !tbaa !75
  br label %547

547:                                              ; preds = %540, %516
  %548 = phi i32 [ %509, %516 ], [ %546, %540 ]
  %549 = add i32 %548, %522
  store i32 %549, ptr %74, align 4, !tbaa !75
  %550 = load i32, ptr %88, align 4, !tbaa !76
  %551 = add i32 %550, %549
  %552 = icmp ugt i32 %551, 2
  br i1 %552, label %553, label %599

553:                                              ; preds = %547
  %554 = load i32, ptr %82, align 4, !tbaa !73
  %555 = sub i32 %554, %550
  %556 = load ptr, ptr %84, align 8, !tbaa !34
  %557 = zext i32 %555 to i64
  %558 = getelementptr inbounds nuw i8, ptr %556, i64 %557
  %559 = load i8, ptr %558, align 1, !tbaa !8
  %560 = zext i8 %559 to i32
  store i32 %560, ptr %93, align 8, !tbaa !80
  %561 = load i32, ptr %94, align 8, !tbaa !51
  %562 = shl i32 %560, %561
  %563 = add i32 %555, 1
  %564 = zext i32 %563 to i64
  %565 = getelementptr inbounds nuw i8, ptr %556, i64 %564
  %566 = load i8, ptr %565, align 1, !tbaa !8
  %567 = zext i8 %566 to i32
  %568 = xor i32 %562, %567
  %569 = load i32, ptr %95, align 4, !tbaa !50
  %570 = and i32 %568, %569
  store i32 %570, ptr %93, align 8, !tbaa !80
  br label %571

571:                                              ; preds = %576, %553
  %572 = phi i32 [ %584, %576 ], [ %570, %553 ]
  %573 = phi i32 [ %596, %576 ], [ %550, %553 ]
  %574 = phi i32 [ %595, %576 ], [ %555, %553 ]
  %575 = icmp eq i32 %573, 0
  br i1 %575, label %599, label %576

576:                                              ; preds = %571
  %577 = shl i32 %572, %561
  %578 = add i32 %574, 2
  %579 = zext i32 %578 to i64
  %580 = getelementptr inbounds nuw i8, ptr %556, i64 %579
  %581 = load i8, ptr %580, align 1, !tbaa !8
  %582 = zext i8 %581 to i32
  %583 = xor i32 %577, %582
  %584 = and i32 %583, %569
  store i32 %584, ptr %93, align 8, !tbaa !80
  %585 = load ptr, ptr %90, align 8, !tbaa !37
  %586 = zext i32 %584 to i64
  %587 = getelementptr inbounds nuw [2 x i8], ptr %585, i64 %586
  %588 = load i16, ptr %587, align 2, !tbaa !62
  %589 = load ptr, ptr %91, align 8, !tbaa !35
  %590 = load i32, ptr %96, align 8, !tbaa !33
  %591 = and i32 %590, %574
  %592 = zext i32 %591 to i64
  %593 = getelementptr inbounds nuw [2 x i8], ptr %589, i64 %592
  store i16 %588, ptr %593, align 2, !tbaa !62
  %594 = trunc i32 %574 to i16
  store i16 %594, ptr %587, align 2, !tbaa !62
  %595 = add i32 %574, 1
  %596 = add i32 %573, -1
  store i32 %596, ptr %88, align 4, !tbaa !76
  %597 = add i32 %596, %549
  %598 = icmp ult i32 %597, 3
  br i1 %598, label %599, label %571, !llvm.loop !91

599:                                              ; preds = %576, %571, %547
  %600 = icmp ult i32 %549, 262
  br i1 %600, label %601, label %606

601:                                              ; preds = %599
  %602 = load ptr, ptr %15, align 8, !tbaa !20
  %603 = getelementptr inbounds nuw i8, ptr %602, i64 8
  %604 = load i32, ptr %603, align 8, !tbaa !81
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %390, !llvm.loop !92

606:                                              ; preds = %601, %599, %508
  %607 = phi i32 [ %549, %601 ], [ %549, %599 ], [ %509, %508 ]
  %608 = load i64, ptr %317, align 8, !tbaa !38
  %609 = load i64, ptr %81, align 8, !tbaa !61
  %610 = icmp ult i64 %608, %609
  br i1 %610, label %611, label %638

611:                                              ; preds = %606
  %612 = load i32, ptr %82, align 4, !tbaa !73
  %613 = zext i32 %612 to i64
  %614 = zext i32 %607 to i64
  %615 = add nuw nsw i64 %614, %613
  %616 = icmp ult i64 %608, %615
  br i1 %616, label %617, label %623

617:                                              ; preds = %611
  %618 = sub i64 %609, %615
  %619 = tail call i64 @llvm.umin.i64(i64 %618, i64 258)
  %620 = load ptr, ptr %84, align 8, !tbaa !34
  %621 = getelementptr inbounds nuw i8, ptr %620, i64 %615
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %621, i8 0, i64 %619, i1 false)
  %622 = add nuw nsw i64 %619, %615
  br label %635

623:                                              ; preds = %611
  %624 = add nuw nsw i64 %615, 258
  %625 = icmp ult i64 %608, %624
  br i1 %625, label %626, label %638

626:                                              ; preds = %623
  %627 = sub nuw nsw i64 %624, %608
  %628 = sub i64 %609, %608
  %629 = tail call i64 @llvm.umin.i64(i64 %627, i64 %628)
  %630 = load ptr, ptr %84, align 8, !tbaa !34
  %631 = getelementptr inbounds nuw i8, ptr %630, i64 %608
  %632 = and i64 %629, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %631, i8 0, i64 %632, i1 false)
  %633 = load i64, ptr %317, align 8, !tbaa !38
  %634 = add i64 %633, %629
  br label %635

635:                                              ; preds = %626, %617
  %636 = phi i64 [ %622, %617 ], [ %634, %626 ]
  store i64 %636, ptr %317, align 8, !tbaa !38
  %637 = load i32, ptr %74, align 4, !tbaa !75
  br label %638

638:                                              ; preds = %606, %623, %635
  %639 = phi i32 [ %607, %606 ], [ %607, %623 ], [ %637, %635 ]
  %640 = icmp ugt i32 %639, 2
  br i1 %640, label %351, label %641, !llvm.loop !98

641:                                              ; preds = %638, %348
  %642 = phi i32 [ %349, %348 ], [ %639, %638 ]
  %643 = load i32, ptr %82, align 4, !tbaa !73
  %644 = add i32 %643, %642
  store i32 %644, ptr %82, align 4, !tbaa !73
  %645 = zext i32 %644 to i64
  store i64 %645, ptr %87, align 8, !tbaa !74
  store i32 %642, ptr %88, align 4, !tbaa !76
  store i32 0, ptr %74, align 4, !tbaa !75
  %646 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %646, align 8, !tbaa !77
  %647 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %647, align 8, !tbaa !78
  %648 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %648, align 8, !tbaa !79
  store ptr %80, ptr %0, align 8, !tbaa !82
  store i32 %79, ptr %78, align 8, !tbaa !81
  store i32 %27, ptr %26, align 8, !tbaa !30
  br label %649

649:                                              ; preds = %25, %13, %17, %20, %5, %9, %3, %34, %28, %30, %23, %641
  %650 = phi i32 [ 0, %641 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %650
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

48:                                               ; preds = %13, %17, %20, %5, %9, %3, %45, %47
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
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !57
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
  %43 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %46

44:                                               ; preds = %38
  %45 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %47, ptr %48, align 8, !tbaa !59
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !60
  tail call void @_tr_init(ptr noundef nonnull %13) #12
  br label %50

50:                                               ; preds = %11, %15, %18, %3, %7, %1, %46
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

28:                                               ; preds = %12, %16, %19, %4, %8, %2, %22, %26
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

37:                                               ; preds = %13, %17, %20, %5, %9, %3, %30, %28
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

27:                                               ; preds = %12, %16, %19, %4, %8, %2, %22, %24
  %28 = phi i32 [ 0, %22 ], [ 0, %24 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %66, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %66, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %66, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %66, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %66

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
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
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 5888
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 2
  %31 = icmp ult ptr %27, %30
  br i1 %31, label %66, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 5940
  %34 = getelementptr inbounds nuw i8, ptr %15, i64 5936
  br label %35

35:                                               ; preds = %32, %62
  %36 = phi i32 [ %63, %62 ], [ %1, %32 ]
  %37 = phi i32 [ %64, %62 ], [ %2, %32 ]
  %38 = load i32, ptr %33, align 4, !tbaa !100
  %39 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %38), !nosanitize !57
  %40 = extractvalue { i32, i1 } %39, 1, !nosanitize !57
  br i1 %40, label %41, label %42, !prof !58, !nosanitize !57

41:                                               ; preds = %58, %42, %35
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !57
  unreachable, !nosanitize !57

58:                                               ; preds = %48
  %59 = extractvalue { i32, i1 } %55, 0, !nosanitize !57
  store i32 %59, ptr %33, align 4, !tbaa !100
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #12
  %60 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %36, i32 %44), !nosanitize !57
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !57
  br i1 %61, label %41, label %62, !prof !58, !nosanitize !57

62:                                               ; preds = %58
  %63 = extractvalue { i32, i1 } %60, 0, !nosanitize !57
  %64 = ashr i32 %37, %44
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %66, label %35, !llvm.loop !103

66:                                               ; preds = %62, %13, %17, %20, %5, %9, %3, %23, %25
  %67 = phi i32 [ -5, %23 ], [ -2, %13 ], [ -5, %25 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ 0, %62 ]
  ret i32 %67
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %901, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %901, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %901, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %901, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %901

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %901 [
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
  br i1 %28, label %901, label %29

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
  br i1 %44, label %862, label %45

45:                                               ; preds = %34, %29
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %47 = load i32, ptr %46, align 4, !tbaa !60
  %48 = icmp eq i32 %47, -2
  br i1 %48, label %862, label %49

49:                                               ; preds = %45
  switch i32 %22, label %901 [
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
  br label %901

68:                                               ; preds = %58, %63
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %70 = load i32, ptr %69, align 8, !tbaa !106
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %73, ptr %74, align 8, !tbaa !9
  br label %839

75:                                               ; preds = %68
  store i32 5, ptr %46, align 4, !tbaa !60
  %76 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %77 = load i64, ptr %76, align 8, !tbaa !55
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %112, label %79

79:                                               ; preds = %75
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #12
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
  br label %839

112:                                              ; preds = %75
  br i1 %57, label %114, label %130

113:                                              ; preds = %114
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !57
  unreachable, !nosanitize !57

114:                                              ; preds = %112
  %115 = add i32 %47, 1073741824
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %118, label %113, !prof !108, !nosanitize !57

117:                                              ; preds = %118
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
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
  br label %839

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
  br i1 %135, label %797, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %137, ptr %138, align 8, !tbaa !9
  br label %839

139:                                              ; preds = %130
  %140 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %141 = load i32, ptr %140, align 8, !tbaa !30
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 113, ptr %21, align 8, !tbaa !29
  br label %794

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
  %211 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
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
  br label %839

218:                                              ; preds = %215, %130
  %219 = phi i32 [ %216, %215 ], [ %132, %130 ]
  %220 = icmp eq i32 %219, 57
  br i1 %220, label %221, label %403

221:                                              ; preds = %218
  %222 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
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
  br label %839

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
  %398 = tail call i64 @crc32_z(i64 noundef %395, ptr noundef %396, i64 noundef %397) #12
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
  switch i32 %404, label %794 [
    i32 69, label %405
    i32 73, label %570
    i32 91, label %664
    i32 103, label %757
  ]

405:                                              ; preds = %403, %399
  %406 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %407 = load ptr, ptr %406, align 8, !tbaa !99
  %408 = getelementptr inbounds nuw i8, ptr %407, i64 24
  %409 = load ptr, ptr %408, align 8, !tbaa !112
  %410 = icmp eq ptr %409, null
  br i1 %410, label %569, label %411

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
  br i1 %423, label %424, label %544

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
  %444 = tail call i64 @crc32_z(i64 noundef %440, ptr noundef %442, i64 noundef %443) #12
  store i64 %444, ptr %426, align 8, !tbaa !59
  br label %445

445:                                              ; preds = %439, %424
  %446 = load i64, ptr %417, align 8, !tbaa !118
  %447 = add i64 %446, %428
  store i64 %447, ptr %417, align 8, !tbaa !118
  %448 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %448) #12
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
  br i1 %476, label %477, label %533

477:                                              ; preds = %474
  %478 = sub i64 %419, %428
  %479 = load i64, ptr %420, align 8, !tbaa !41
  %480 = icmp ugt i64 %478, %479
  br i1 %480, label %481, label %538

481:                                              ; preds = %477, %534
  %482 = phi i64 [ %536, %534 ], [ %479, %477 ]
  %483 = phi i64 [ %535, %534 ], [ %478, %477 ]
  %484 = load ptr, ptr %425, align 8, !tbaa !40
  %485 = load ptr, ptr %406, align 8, !tbaa !99
  %486 = getelementptr inbounds nuw i8, ptr %485, i64 24
  %487 = load ptr, ptr %486, align 8, !tbaa !112
  %488 = load i64, ptr %417, align 8, !tbaa !118
  %489 = getelementptr inbounds nuw i8, ptr %487, i64 %488
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %484, ptr align 1 %489, i64 %482, i1 false)
  %490 = load i64, ptr %420, align 8, !tbaa !41
  store i64 %490, ptr %76, align 8, !tbaa !55
  %491 = load ptr, ptr %406, align 8, !tbaa !99
  %492 = getelementptr inbounds nuw i8, ptr %491, i64 68
  %493 = load i32, ptr %492, align 4, !tbaa !109
  %494 = icmp ne i32 %493, 0
  %495 = icmp ne i64 %490, 0
  %496 = select i1 %494, i1 %495, i1 false
  br i1 %496, label %497, label %501

497:                                              ; preds = %481
  %498 = load i64, ptr %426, align 8, !tbaa !59
  %499 = load ptr, ptr %425, align 8, !tbaa !40
  %500 = tail call i64 @crc32_z(i64 noundef %498, ptr noundef %499, i64 noundef %490) #12
  store i64 %500, ptr %426, align 8, !tbaa !59
  br label %501

501:                                              ; preds = %497, %481
  %502 = load i64, ptr %417, align 8, !tbaa !118
  %503 = add i64 %502, %482
  store i64 %503, ptr %417, align 8, !tbaa !118
  %504 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %504) #12
  %505 = getelementptr inbounds nuw i8, ptr %504, i64 40
  %506 = load i64, ptr %505, align 8, !tbaa !55
  %507 = load i32, ptr %69, align 8, !tbaa !106
  %508 = zext i32 %507 to i64
  %509 = tail call i64 @llvm.umin.i64(i64 %506, i64 %508)
  %510 = icmp eq i64 %509, 0
  br i1 %510, label %530, label %511

511:                                              ; preds = %501
  %512 = trunc nuw i64 %509 to i32
  %513 = load ptr, ptr %51, align 8, !tbaa !105
  %514 = getelementptr inbounds nuw i8, ptr %504, i64 32
  %515 = load ptr, ptr %514, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %513, ptr align 1 %515, i64 %509, i1 false)
  %516 = load ptr, ptr %51, align 8, !tbaa !105
  %517 = getelementptr inbounds nuw i8, ptr %516, i64 %509
  store ptr %517, ptr %51, align 8, !tbaa !105
  %518 = load ptr, ptr %514, align 8, !tbaa !56
  %519 = getelementptr inbounds nuw i8, ptr %518, i64 %509
  store ptr %519, ptr %514, align 8, !tbaa !56
  %520 = load i64, ptr %427, align 8, !tbaa !107
  %521 = add i64 %520, %509
  store i64 %521, ptr %427, align 8, !tbaa !107
  %522 = load i32, ptr %69, align 8, !tbaa !106
  %523 = sub i32 %522, %512
  store i32 %523, ptr %69, align 8, !tbaa !106
  %524 = load i64, ptr %505, align 8, !tbaa !55
  %525 = sub i64 %524, %509
  store i64 %525, ptr %505, align 8, !tbaa !55
  %526 = icmp eq i64 %524, %509
  br i1 %526, label %527, label %530

527:                                              ; preds = %511
  %528 = getelementptr inbounds nuw i8, ptr %504, i64 16
  %529 = load ptr, ptr %528, align 8, !tbaa !40
  store ptr %529, ptr %514, align 8, !tbaa !56
  br label %530

530:                                              ; preds = %527, %511, %501
  %531 = load i64, ptr %76, align 8, !tbaa !55
  %532 = icmp eq i64 %531, 0
  br i1 %532, label %534, label %533

533:                                              ; preds = %530, %474
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %839

534:                                              ; preds = %530
  %535 = sub i64 %483, %482
  %536 = load i64, ptr %420, align 8, !tbaa !41
  %537 = icmp ugt i64 %535, %536
  br i1 %537, label %481, label %538, !llvm.loop !119

538:                                              ; preds = %534, %477
  %539 = phi i64 [ %478, %477 ], [ %535, %534 ]
  %540 = load ptr, ptr %406, align 8, !tbaa !99
  %541 = getelementptr inbounds nuw i8, ptr %540, i64 24
  %542 = load ptr, ptr %541, align 8, !tbaa !112
  %543 = load i64, ptr %417, align 8, !tbaa !118
  br label %544

544:                                              ; preds = %538, %411
  %545 = phi i64 [ %418, %411 ], [ %543, %538 ]
  %546 = phi ptr [ %409, %411 ], [ %542, %538 ]
  %547 = phi i64 [ %412, %411 ], [ 0, %538 ]
  %548 = phi i64 [ %419, %411 ], [ %539, %538 ]
  %549 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %550 = load ptr, ptr %549, align 8, !tbaa !40
  %551 = getelementptr inbounds nuw i8, ptr %550, i64 %547
  %552 = getelementptr inbounds nuw i8, ptr %546, i64 %545
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %551, ptr align 1 %552, i64 %548, i1 false)
  %553 = load i64, ptr %76, align 8, !tbaa !55
  %554 = add i64 %553, %548
  store i64 %554, ptr %76, align 8, !tbaa !55
  %555 = load ptr, ptr %406, align 8, !tbaa !99
  %556 = getelementptr inbounds nuw i8, ptr %555, i64 68
  %557 = load i32, ptr %556, align 4, !tbaa !109
  %558 = icmp ne i32 %557, 0
  %559 = icmp ugt i64 %554, %547
  %560 = select i1 %558, i1 %559, i1 false
  br i1 %560, label %561, label %568

561:                                              ; preds = %544
  %562 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %563 = load i64, ptr %562, align 8, !tbaa !59
  %564 = load ptr, ptr %549, align 8, !tbaa !40
  %565 = getelementptr inbounds nuw i8, ptr %564, i64 %547
  %566 = sub nuw i64 %554, %547
  %567 = tail call i64 @crc32_z(i64 noundef %563, ptr noundef %565, i64 noundef %566) #12
  store i64 %567, ptr %562, align 8, !tbaa !59
  br label %568

568:                                              ; preds = %561, %544
  store i64 0, ptr %417, align 8, !tbaa !118
  br label %569

569:                                              ; preds = %568, %405
  store i32 73, ptr %21, align 8, !tbaa !29
  br label %570

570:                                              ; preds = %569, %403
  %571 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %572 = load ptr, ptr %571, align 8, !tbaa !99
  %573 = getelementptr inbounds nuw i8, ptr %572, i64 40
  %574 = load ptr, ptr %573, align 8, !tbaa !113
  %575 = icmp eq ptr %574, null
  br i1 %575, label %663, label %576

576:                                              ; preds = %570
  %577 = load i64, ptr %76, align 8, !tbaa !55
  %578 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %579 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %580 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %581 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %582 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %583

583:                                              ; preds = %634, %576
  %584 = phi i64 [ %577, %576 ], [ %637, %634 ]
  %585 = load i64, ptr %76, align 8, !tbaa !55
  %586 = load i64, ptr %578, align 8, !tbaa !41
  %587 = icmp eq i64 %585, %586
  %588 = load ptr, ptr %571, align 8, !tbaa !99
  br i1 %587, label %589, label %634

589:                                              ; preds = %583
  %590 = getelementptr inbounds nuw i8, ptr %588, i64 68
  %591 = load i32, ptr %590, align 4, !tbaa !109
  %592 = icmp ne i32 %591, 0
  %593 = icmp ugt i64 %585, %584
  %594 = select i1 %592, i1 %593, i1 false
  br i1 %594, label %595, label %601

595:                                              ; preds = %589
  %596 = load i64, ptr %579, align 8, !tbaa !59
  %597 = load ptr, ptr %580, align 8, !tbaa !40
  %598 = getelementptr inbounds nuw i8, ptr %597, i64 %584
  %599 = sub nuw i64 %585, %584
  %600 = tail call i64 @crc32_z(i64 noundef %596, ptr noundef %598, i64 noundef %599) #12
  store i64 %600, ptr %579, align 8, !tbaa !59
  br label %601

601:                                              ; preds = %595, %589
  %602 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %602) #12
  %603 = getelementptr inbounds nuw i8, ptr %602, i64 40
  %604 = load i64, ptr %603, align 8, !tbaa !55
  %605 = load i32, ptr %69, align 8, !tbaa !106
  %606 = zext i32 %605 to i64
  %607 = tail call i64 @llvm.umin.i64(i64 %604, i64 %606)
  %608 = icmp eq i64 %607, 0
  br i1 %608, label %628, label %609

609:                                              ; preds = %601
  %610 = trunc nuw i64 %607 to i32
  %611 = load ptr, ptr %51, align 8, !tbaa !105
  %612 = getelementptr inbounds nuw i8, ptr %602, i64 32
  %613 = load ptr, ptr %612, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %611, ptr align 1 %613, i64 %607, i1 false)
  %614 = load ptr, ptr %51, align 8, !tbaa !105
  %615 = getelementptr inbounds nuw i8, ptr %614, i64 %607
  store ptr %615, ptr %51, align 8, !tbaa !105
  %616 = load ptr, ptr %612, align 8, !tbaa !56
  %617 = getelementptr inbounds nuw i8, ptr %616, i64 %607
  store ptr %617, ptr %612, align 8, !tbaa !56
  %618 = load i64, ptr %581, align 8, !tbaa !107
  %619 = add i64 %618, %607
  store i64 %619, ptr %581, align 8, !tbaa !107
  %620 = load i32, ptr %69, align 8, !tbaa !106
  %621 = sub i32 %620, %610
  store i32 %621, ptr %69, align 8, !tbaa !106
  %622 = load i64, ptr %603, align 8, !tbaa !55
  %623 = sub i64 %622, %607
  store i64 %623, ptr %603, align 8, !tbaa !55
  %624 = icmp eq i64 %622, %607
  br i1 %624, label %625, label %628

625:                                              ; preds = %609
  %626 = getelementptr inbounds nuw i8, ptr %602, i64 16
  %627 = load ptr, ptr %626, align 8, !tbaa !40
  store ptr %627, ptr %612, align 8, !tbaa !56
  br label %628

628:                                              ; preds = %625, %609, %601
  %629 = load i64, ptr %76, align 8, !tbaa !55
  %630 = icmp eq i64 %629, 0
  br i1 %630, label %631, label %633

631:                                              ; preds = %628
  %632 = load ptr, ptr %571, align 8, !tbaa !99
  br label %634

633:                                              ; preds = %628
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %839

634:                                              ; preds = %631, %583
  %635 = phi i64 [ %585, %583 ], [ 0, %631 ]
  %636 = phi ptr [ %588, %583 ], [ %632, %631 ]
  %637 = phi i64 [ %584, %583 ], [ 0, %631 ]
  %638 = getelementptr inbounds nuw i8, ptr %636, i64 40
  %639 = load ptr, ptr %638, align 8, !tbaa !113
  %640 = load i64, ptr %582, align 8, !tbaa !118
  %641 = add i64 %640, 1
  store i64 %641, ptr %582, align 8, !tbaa !118
  %642 = getelementptr inbounds nuw i8, ptr %639, i64 %640
  %643 = load i8, ptr %642, align 1, !tbaa !8
  %644 = load ptr, ptr %580, align 8, !tbaa !40
  %645 = add i64 %635, 1
  store i64 %645, ptr %76, align 8, !tbaa !55
  %646 = getelementptr inbounds nuw i8, ptr %644, i64 %635
  store i8 %643, ptr %646, align 1, !tbaa !8
  %647 = icmp eq i8 %643, 0
  br i1 %647, label %648, label %583, !llvm.loop !121

648:                                              ; preds = %634
  %649 = load ptr, ptr %571, align 8, !tbaa !99
  %650 = getelementptr inbounds nuw i8, ptr %649, i64 68
  %651 = load i32, ptr %650, align 4, !tbaa !109
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %662, label %653

653:                                              ; preds = %648
  %654 = load i64, ptr %76, align 8, !tbaa !55
  %655 = icmp ugt i64 %654, %637
  br i1 %655, label %656, label %662

656:                                              ; preds = %653
  %657 = load i64, ptr %579, align 8, !tbaa !59
  %658 = load ptr, ptr %580, align 8, !tbaa !40
  %659 = getelementptr inbounds nuw i8, ptr %658, i64 %637
  %660 = sub nuw i64 %654, %637
  %661 = tail call i64 @crc32_z(i64 noundef %657, ptr noundef %659, i64 noundef %660) #12
  store i64 %661, ptr %579, align 8, !tbaa !59
  br label %662

662:                                              ; preds = %656, %653, %648
  store i64 0, ptr %582, align 8, !tbaa !118
  br label %663

663:                                              ; preds = %662, %570
  store i32 91, ptr %21, align 8, !tbaa !29
  br label %664

664:                                              ; preds = %663, %403
  %665 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %666 = load ptr, ptr %665, align 8, !tbaa !99
  %667 = getelementptr inbounds nuw i8, ptr %666, i64 56
  %668 = load ptr, ptr %667, align 8, !tbaa !114
  %669 = icmp eq ptr %668, null
  br i1 %669, label %756, label %670

670:                                              ; preds = %664
  %671 = load i64, ptr %76, align 8, !tbaa !55
  %672 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %673 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %674 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %675 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %676 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %677

677:                                              ; preds = %728, %670
  %678 = phi i64 [ %671, %670 ], [ %731, %728 ]
  %679 = load i64, ptr %76, align 8, !tbaa !55
  %680 = load i64, ptr %672, align 8, !tbaa !41
  %681 = icmp eq i64 %679, %680
  %682 = load ptr, ptr %665, align 8, !tbaa !99
  br i1 %681, label %683, label %728

683:                                              ; preds = %677
  %684 = getelementptr inbounds nuw i8, ptr %682, i64 68
  %685 = load i32, ptr %684, align 4, !tbaa !109
  %686 = icmp ne i32 %685, 0
  %687 = icmp ugt i64 %679, %678
  %688 = select i1 %686, i1 %687, i1 false
  br i1 %688, label %689, label %695

689:                                              ; preds = %683
  %690 = load i64, ptr %673, align 8, !tbaa !59
  %691 = load ptr, ptr %674, align 8, !tbaa !40
  %692 = getelementptr inbounds nuw i8, ptr %691, i64 %678
  %693 = sub nuw i64 %679, %678
  %694 = tail call i64 @crc32_z(i64 noundef %690, ptr noundef %692, i64 noundef %693) #12
  store i64 %694, ptr %673, align 8, !tbaa !59
  br label %695

695:                                              ; preds = %689, %683
  %696 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %696) #12
  %697 = getelementptr inbounds nuw i8, ptr %696, i64 40
  %698 = load i64, ptr %697, align 8, !tbaa !55
  %699 = load i32, ptr %69, align 8, !tbaa !106
  %700 = zext i32 %699 to i64
  %701 = tail call i64 @llvm.umin.i64(i64 %698, i64 %700)
  %702 = icmp eq i64 %701, 0
  br i1 %702, label %722, label %703

703:                                              ; preds = %695
  %704 = trunc nuw i64 %701 to i32
  %705 = load ptr, ptr %51, align 8, !tbaa !105
  %706 = getelementptr inbounds nuw i8, ptr %696, i64 32
  %707 = load ptr, ptr %706, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %705, ptr align 1 %707, i64 %701, i1 false)
  %708 = load ptr, ptr %51, align 8, !tbaa !105
  %709 = getelementptr inbounds nuw i8, ptr %708, i64 %701
  store ptr %709, ptr %51, align 8, !tbaa !105
  %710 = load ptr, ptr %706, align 8, !tbaa !56
  %711 = getelementptr inbounds nuw i8, ptr %710, i64 %701
  store ptr %711, ptr %706, align 8, !tbaa !56
  %712 = load i64, ptr %675, align 8, !tbaa !107
  %713 = add i64 %712, %701
  store i64 %713, ptr %675, align 8, !tbaa !107
  %714 = load i32, ptr %69, align 8, !tbaa !106
  %715 = sub i32 %714, %704
  store i32 %715, ptr %69, align 8, !tbaa !106
  %716 = load i64, ptr %697, align 8, !tbaa !55
  %717 = sub i64 %716, %701
  store i64 %717, ptr %697, align 8, !tbaa !55
  %718 = icmp eq i64 %716, %701
  br i1 %718, label %719, label %722

719:                                              ; preds = %703
  %720 = getelementptr inbounds nuw i8, ptr %696, i64 16
  %721 = load ptr, ptr %720, align 8, !tbaa !40
  store ptr %721, ptr %706, align 8, !tbaa !56
  br label %722

722:                                              ; preds = %719, %703, %695
  %723 = load i64, ptr %76, align 8, !tbaa !55
  %724 = icmp eq i64 %723, 0
  br i1 %724, label %725, label %727

725:                                              ; preds = %722
  %726 = load ptr, ptr %665, align 8, !tbaa !99
  br label %728

727:                                              ; preds = %722
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %839

728:                                              ; preds = %725, %677
  %729 = phi i64 [ %679, %677 ], [ 0, %725 ]
  %730 = phi ptr [ %682, %677 ], [ %726, %725 ]
  %731 = phi i64 [ %678, %677 ], [ 0, %725 ]
  %732 = getelementptr inbounds nuw i8, ptr %730, i64 56
  %733 = load ptr, ptr %732, align 8, !tbaa !114
  %734 = load i64, ptr %676, align 8, !tbaa !118
  %735 = add i64 %734, 1
  store i64 %735, ptr %676, align 8, !tbaa !118
  %736 = getelementptr inbounds nuw i8, ptr %733, i64 %734
  %737 = load i8, ptr %736, align 1, !tbaa !8
  %738 = load ptr, ptr %674, align 8, !tbaa !40
  %739 = add i64 %729, 1
  store i64 %739, ptr %76, align 8, !tbaa !55
  %740 = getelementptr inbounds nuw i8, ptr %738, i64 %729
  store i8 %737, ptr %740, align 1, !tbaa !8
  %741 = icmp eq i8 %737, 0
  br i1 %741, label %742, label %677, !llvm.loop !122

742:                                              ; preds = %728
  %743 = load ptr, ptr %665, align 8, !tbaa !99
  %744 = getelementptr inbounds nuw i8, ptr %743, i64 68
  %745 = load i32, ptr %744, align 4, !tbaa !109
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %756, label %747

747:                                              ; preds = %742
  %748 = load i64, ptr %76, align 8, !tbaa !55
  %749 = icmp ugt i64 %748, %731
  br i1 %749, label %750, label %756

750:                                              ; preds = %747
  %751 = load i64, ptr %673, align 8, !tbaa !59
  %752 = load ptr, ptr %674, align 8, !tbaa !40
  %753 = getelementptr inbounds nuw i8, ptr %752, i64 %731
  %754 = sub nuw i64 %748, %731
  %755 = tail call i64 @crc32_z(i64 noundef %751, ptr noundef %753, i64 noundef %754) #12
  store i64 %755, ptr %673, align 8, !tbaa !59
  br label %756

756:                                              ; preds = %750, %747, %742, %664
  store i32 103, ptr %21, align 8, !tbaa !29
  br label %757

757:                                              ; preds = %756, %403
  %758 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %759 = load ptr, ptr %758, align 8, !tbaa !99
  %760 = getelementptr inbounds nuw i8, ptr %759, i64 68
  %761 = load i32, ptr %760, align 4, !tbaa !109
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %790, label %763

763:                                              ; preds = %757
  %764 = load i64, ptr %76, align 8, !tbaa !55
  %765 = add i64 %764, 2
  %766 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %767 = load i64, ptr %766, align 8, !tbaa !41
  %768 = icmp ugt i64 %765, %767
  br i1 %768, label %769, label %773

769:                                              ; preds = %763
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %770 = load i64, ptr %76, align 8, !tbaa !55
  %771 = icmp eq i64 %770, 0
  br i1 %771, label %773, label %772

772:                                              ; preds = %769
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %839

773:                                              ; preds = %769, %763
  %774 = phi i64 [ 0, %769 ], [ %764, %763 ]
  %775 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %776 = load i64, ptr %775, align 8, !tbaa !59
  %777 = trunc i64 %776 to i8
  %778 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %779 = load ptr, ptr %778, align 8, !tbaa !40
  %780 = add i64 %774, 1
  store i64 %780, ptr %76, align 8, !tbaa !55
  %781 = getelementptr inbounds nuw i8, ptr %779, i64 %774
  store i8 %777, ptr %781, align 1, !tbaa !8
  %782 = load i64, ptr %775, align 8, !tbaa !59
  %783 = lshr i64 %782, 8
  %784 = trunc i64 %783 to i8
  %785 = load ptr, ptr %778, align 8, !tbaa !40
  %786 = load i64, ptr %76, align 8, !tbaa !55
  %787 = add i64 %786, 1
  store i64 %787, ptr %76, align 8, !tbaa !55
  %788 = getelementptr inbounds nuw i8, ptr %785, i64 %786
  store i8 %784, ptr %788, align 1, !tbaa !8
  %789 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %789, ptr %775, align 8, !tbaa !59
  br label %790

790:                                              ; preds = %773, %757
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %791 = load i64, ptr %76, align 8, !tbaa !55
  %792 = icmp eq i64 %791, 0
  br i1 %792, label %794, label %793

793:                                              ; preds = %790
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %839

794:                                              ; preds = %790, %403, %143
  %795 = load i32, ptr %55, align 8, !tbaa !81
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %797, label %804

797:                                              ; preds = %794, %133
  %798 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %799 = load i32, ptr %798, align 4, !tbaa !75
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %801, label %804

801:                                              ; preds = %797
  %802 = load i32, ptr %21, align 8, !tbaa !29
  %803 = icmp eq i32 %802, 666
  br i1 %803, label %839, label %804

804:                                              ; preds = %801, %797, %794
  %805 = load i32, ptr %30, align 4, !tbaa !46
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %807, label %809

807:                                              ; preds = %804
  %808 = tail call i32 @deflate_stored(ptr noundef nonnull %15, i32 noundef 5)
  br label %821

809:                                              ; preds = %804
  %810 = load i32, ptr %31, align 8, !tbaa !47
  switch i32 %810, label %815 [
    i32 2, label %811
    i32 3, label %813
  ]

811:                                              ; preds = %809
  %812 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %15, i32 noundef 5)
  br label %821

813:                                              ; preds = %809
  %814 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %15, i32 noundef 5)
  br label %821

815:                                              ; preds = %809
  %816 = sext i32 %805 to i64
  %817 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %816
  %818 = getelementptr inbounds nuw i8, ptr %817, i64 8
  %819 = load ptr, ptr %818, align 8, !tbaa !104
  %820 = tail call i32 %819(ptr noundef nonnull %15, i32 noundef 5) #12, !inline_history !123
  br label %821

821:                                              ; preds = %815, %813, %811, %807
  %822 = phi i32 [ %808, %807 ], [ %812, %811 ], [ %814, %813 ], [ %820, %815 ]
  %823 = and i32 %822, -2
  %824 = icmp eq i32 %823, 2
  br i1 %824, label %825, label %826

825:                                              ; preds = %821
  store i32 666, ptr %21, align 8, !tbaa !29
  br label %826

826:                                              ; preds = %825, %821
  %827 = and i32 %822, -3
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %833

829:                                              ; preds = %826
  %830 = load i32, ptr %69, align 8, !tbaa !106
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %832, label %839

832:                                              ; preds = %829
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %839

833:                                              ; preds = %826
  %834 = icmp eq i32 %822, 1
  br i1 %834, label %835, label %839

835:                                              ; preds = %833
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %836 = load i32, ptr %69, align 8, !tbaa !106
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %839

838:                                              ; preds = %835
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %839

839:                                              ; preds = %127, %72, %111, %136, %281, %772, %793, %727, %633, %533, %217, %832, %838, %829, %835, %833, %801
  %840 = load i32, ptr %55, align 8, !tbaa !81
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %842, label %901

842:                                              ; preds = %839
  %843 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %844 = load i32, ptr %843, align 4, !tbaa !73
  %845 = zext i32 %844 to i64
  %846 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %847 = load i64, ptr %846, align 8, !tbaa !74
  %848 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %845, i64 %847), !nosanitize !57
  %849 = extractvalue { i64, i1 } %848, 1, !nosanitize !57
  br i1 %849, label %850, label %851, !prof !58, !nosanitize !57

850:                                              ; preds = %842
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
  unreachable, !nosanitize !57

851:                                              ; preds = %842
  %852 = extractvalue { i64, i1 } %848, 0, !nosanitize !57
  %853 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %854 = load i32, ptr %853, align 4, !tbaa !75
  %855 = zext i32 %854 to i64
  %856 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %852, i64 %855), !nosanitize !57
  %857 = extractvalue { i64, i1 } %856, 1, !nosanitize !57
  br i1 %857, label %858, label %859, !prof !58, !nosanitize !57

858:                                              ; preds = %851
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !57
  unreachable, !nosanitize !57

859:                                              ; preds = %851
  %860 = extractvalue { i64, i1 } %856, 0, !nosanitize !57
  %861 = icmp eq i64 %860, 0
  br i1 %861, label %862, label %901

862:                                              ; preds = %859, %45, %34
  %863 = load i32, ptr %30, align 4, !tbaa !46
  %864 = icmp eq i32 %863, %25
  br i1 %864, label %900, label %865

865:                                              ; preds = %862
  %866 = icmp eq i32 %863, 0
  br i1 %866, label %867, label %882

867:                                              ; preds = %865
  %868 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %869 = load i32, ptr %868, align 8, !tbaa !124
  switch i32 %869, label %871 [
    i32 0, label %882
    i32 1, label %870
  ]

870:                                              ; preds = %867
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %881

871:                                              ; preds = %867
  %872 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %873 = load ptr, ptr %872, align 8, !tbaa !37
  %874 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %875 = load i32, ptr %874, align 4, !tbaa !36
  %876 = add i32 %875, -1
  %877 = zext i32 %876 to i64
  %878 = getelementptr inbounds nuw [2 x i8], ptr %873, i64 %877
  store i16 0, ptr %878, align 2, !tbaa !62
  %879 = shl nuw nsw i64 %877, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %873, i8 0, i64 %879, i1 false)
  %880 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %880, align 8, !tbaa !63
  br label %881

881:                                              ; preds = %871, %870
  store i32 0, ptr %868, align 8, !tbaa !124
  br label %882

882:                                              ; preds = %867, %881, %865
  store i32 %25, ptr %30, align 4, !tbaa !46
  %883 = zext nneg i32 %25 to i64
  %884 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %883
  %885 = getelementptr inbounds nuw i8, ptr %884, i64 2
  %886 = load i16, ptr %885, align 2, !tbaa !64
  %887 = zext i16 %886 to i32
  %888 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %887, ptr %888, align 8, !tbaa !66
  %889 = load i16, ptr %884, align 16, !tbaa !67
  %890 = zext i16 %889 to i32
  %891 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %890, ptr %891, align 4, !tbaa !68
  %892 = getelementptr inbounds nuw i8, ptr %884, i64 4
  %893 = load i16, ptr %892, align 4, !tbaa !69
  %894 = zext i16 %893 to i32
  %895 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %894, ptr %895, align 8, !tbaa !70
  %896 = getelementptr inbounds nuw i8, ptr %884, i64 6
  %897 = load i16, ptr %896, align 2, !tbaa !71
  %898 = zext i16 %897 to i32
  %899 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %898, ptr %899, align 4, !tbaa !72
  br label %900

900:                                              ; preds = %882, %862
  store i32 %2, ptr %31, align 8, !tbaa !47
  br label %901

901:                                              ; preds = %65, %49, %839, %13, %17, %20, %5, %9, %3, %23, %859, %900
  %902 = phi i32 [ -5, %859 ], [ -2, %13 ], [ 0, %900 ], [ -2, %23 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %65 ], [ -2, %49 ], [ -5, %839 ]
  ret i32 %902
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %948, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %948, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %948, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %948, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %948

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %948 [
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
  br i1 %23, label %948, label %24

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
  br label %948

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !106
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !9
  br label %948

49:                                               ; preds = %42
  %50 = getelementptr inbounds nuw i8, ptr %14, i64 76
  %51 = load i32, ptr %50, align 4, !tbaa !60
  store i32 %1, ptr %50, align 4, !tbaa !60
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !55
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %88, label %55

55:                                               ; preds = %49
  tail call void @_tr_flush_bits(ptr noundef nonnull %14) #12
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

81:                                               ; preds = %55, %61, %78
  %82 = phi i64 [ %56, %55 ], [ %76, %61 ], [ 0, %78 ]
  %83 = phi i32 [ %57, %55 ], [ %74, %61 ], [ %74, %78 ]
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load i32, ptr %20, align 8, !tbaa !29
  br label %111

87:                                               ; preds = %81
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %948

88:                                               ; preds = %49
  br i1 %31, label %90, label %111

89:                                               ; preds = %90
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !57
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
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
  br label %948

111:                                              ; preds = %85, %88, %104
  %112 = phi i64 [ %82, %85 ], [ 0, %88 ], [ 0, %104 ]
  %113 = phi i32 [ %86, %85 ], [ %21, %88 ], [ %21, %104 ]
  switch i32 %113, label %201 [
    i32 666, label %114
    i32 42, label %120
  ]

114:                                              ; preds = %111
  %115 = load i32, ptr %29, align 8, !tbaa !81
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %784, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %118, ptr %119, align 8, !tbaa !9
  br label %948

120:                                              ; preds = %111
  %121 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %122 = load i32, ptr %121, align 8, !tbaa !30
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 113, ptr %20, align 8, !tbaa !29
  br label %781

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

142:                                              ; preds = %139, %137, %125, %133
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
  %194 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
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
  br label %948

201:                                              ; preds = %111, %198
  %202 = phi i32 [ %199, %198 ], [ %113, %111 ]
  %203 = icmp eq i32 %202, 57
  br i1 %203, label %204, label %390

204:                                              ; preds = %201
  %205 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
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

254:                                              ; preds = %223, %247
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
  br label %948

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

340:                                              ; preds = %267, %333
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
  %385 = tail call i64 @crc32_z(i64 noundef %382, ptr noundef %383, i64 noundef %384) #12
  store i64 %385, ptr %206, align 8, !tbaa !59
  br label %386

386:                                              ; preds = %376, %381
  %387 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %387, align 8, !tbaa !118
  store i32 69, ptr %20, align 8, !tbaa !29
  br label %392

388:                                              ; preds = %254
  %389 = load i32, ptr %20, align 8, !tbaa !29
  br label %390

390:                                              ; preds = %388, %201
  %391 = phi i32 [ %389, %388 ], [ %202, %201 ]
  switch i32 %391, label %781 [
    i32 69, label %392
    i32 73, label %557
    i32 91, label %651
    i32 103, label %744
  ]

392:                                              ; preds = %390, %386
  %393 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %394 = load ptr, ptr %393, align 8, !tbaa !99
  %395 = getelementptr inbounds nuw i8, ptr %394, i64 24
  %396 = load ptr, ptr %395, align 8, !tbaa !112
  %397 = icmp eq ptr %396, null
  br i1 %397, label %556, label %398

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
  %408 = add i64 %399, %406
  %409 = load i64, ptr %407, align 8, !tbaa !41
  %410 = icmp ugt i64 %408, %409
  br i1 %410, label %411, label %531

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
  %431 = tail call i64 @crc32_z(i64 noundef %427, ptr noundef %429, i64 noundef %430) #12
  store i64 %431, ptr %413, align 8, !tbaa !59
  br label %432

432:                                              ; preds = %426, %411
  %433 = load i64, ptr %404, align 8, !tbaa !118
  %434 = add i64 %433, %415
  store i64 %434, ptr %404, align 8, !tbaa !118
  %435 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %435) #12
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
  br i1 %463, label %464, label %520

464:                                              ; preds = %461
  %465 = sub i64 %406, %415
  %466 = load i64, ptr %407, align 8, !tbaa !41
  %467 = icmp ugt i64 %465, %466
  br i1 %467, label %468, label %525

468:                                              ; preds = %464, %521
  %469 = phi i64 [ %523, %521 ], [ %466, %464 ]
  %470 = phi i64 [ %522, %521 ], [ %465, %464 ]
  %471 = load ptr, ptr %412, align 8, !tbaa !40
  %472 = load ptr, ptr %393, align 8, !tbaa !99
  %473 = getelementptr inbounds nuw i8, ptr %472, i64 24
  %474 = load ptr, ptr %473, align 8, !tbaa !112
  %475 = load i64, ptr %404, align 8, !tbaa !118
  %476 = getelementptr inbounds nuw i8, ptr %474, i64 %475
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %471, ptr align 1 %476, i64 %469, i1 false)
  %477 = load i64, ptr %407, align 8, !tbaa !41
  store i64 %477, ptr %52, align 8, !tbaa !55
  %478 = load ptr, ptr %393, align 8, !tbaa !99
  %479 = getelementptr inbounds nuw i8, ptr %478, i64 68
  %480 = load i32, ptr %479, align 4, !tbaa !109
  %481 = icmp ne i32 %480, 0
  %482 = icmp ne i64 %477, 0
  %483 = select i1 %481, i1 %482, i1 false
  br i1 %483, label %484, label %488

484:                                              ; preds = %468
  %485 = load i64, ptr %413, align 8, !tbaa !59
  %486 = load ptr, ptr %412, align 8, !tbaa !40
  %487 = tail call i64 @crc32_z(i64 noundef %485, ptr noundef %486, i64 noundef %477) #12
  store i64 %487, ptr %413, align 8, !tbaa !59
  br label %488

488:                                              ; preds = %484, %468
  %489 = load i64, ptr %404, align 8, !tbaa !118
  %490 = add i64 %489, %469
  store i64 %490, ptr %404, align 8, !tbaa !118
  %491 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %491) #12
  %492 = getelementptr inbounds nuw i8, ptr %491, i64 40
  %493 = load i64, ptr %492, align 8, !tbaa !55
  %494 = load i32, ptr %43, align 8, !tbaa !106
  %495 = zext i32 %494 to i64
  %496 = tail call i64 @llvm.umin.i64(i64 %493, i64 %495)
  %497 = icmp eq i64 %496, 0
  br i1 %497, label %517, label %498

498:                                              ; preds = %488
  %499 = trunc nuw i64 %496 to i32
  %500 = load ptr, ptr %25, align 8, !tbaa !105
  %501 = getelementptr inbounds nuw i8, ptr %491, i64 32
  %502 = load ptr, ptr %501, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %500, ptr align 1 %502, i64 %496, i1 false)
  %503 = load ptr, ptr %25, align 8, !tbaa !105
  %504 = getelementptr inbounds nuw i8, ptr %503, i64 %496
  store ptr %504, ptr %25, align 8, !tbaa !105
  %505 = load ptr, ptr %501, align 8, !tbaa !56
  %506 = getelementptr inbounds nuw i8, ptr %505, i64 %496
  store ptr %506, ptr %501, align 8, !tbaa !56
  %507 = load i64, ptr %414, align 8, !tbaa !107
  %508 = add i64 %507, %496
  store i64 %508, ptr %414, align 8, !tbaa !107
  %509 = load i32, ptr %43, align 8, !tbaa !106
  %510 = sub i32 %509, %499
  store i32 %510, ptr %43, align 8, !tbaa !106
  %511 = load i64, ptr %492, align 8, !tbaa !55
  %512 = sub i64 %511, %496
  store i64 %512, ptr %492, align 8, !tbaa !55
  %513 = icmp eq i64 %511, %496
  br i1 %513, label %514, label %517

514:                                              ; preds = %498
  %515 = getelementptr inbounds nuw i8, ptr %491, i64 16
  %516 = load ptr, ptr %515, align 8, !tbaa !40
  store ptr %516, ptr %501, align 8, !tbaa !56
  br label %517

517:                                              ; preds = %488, %498, %514
  %518 = load i64, ptr %52, align 8, !tbaa !55
  %519 = icmp eq i64 %518, 0
  br i1 %519, label %521, label %520

520:                                              ; preds = %517, %461
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %948

521:                                              ; preds = %517
  %522 = sub i64 %470, %469
  %523 = load i64, ptr %407, align 8, !tbaa !41
  %524 = icmp ugt i64 %522, %523
  br i1 %524, label %468, label %525, !llvm.loop !119

525:                                              ; preds = %521, %464
  %526 = phi i64 [ %465, %464 ], [ %522, %521 ]
  %527 = load ptr, ptr %393, align 8, !tbaa !99
  %528 = getelementptr inbounds nuw i8, ptr %527, i64 24
  %529 = load ptr, ptr %528, align 8, !tbaa !112
  %530 = load i64, ptr %404, align 8, !tbaa !118
  br label %531

531:                                              ; preds = %525, %398
  %532 = phi i64 [ %405, %398 ], [ %530, %525 ]
  %533 = phi ptr [ %396, %398 ], [ %529, %525 ]
  %534 = phi i64 [ %399, %398 ], [ 0, %525 ]
  %535 = phi i64 [ %406, %398 ], [ %526, %525 ]
  %536 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %537 = load ptr, ptr %536, align 8, !tbaa !40
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 %534
  %539 = getelementptr inbounds nuw i8, ptr %533, i64 %532
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %538, ptr align 1 %539, i64 %535, i1 false)
  %540 = load i64, ptr %52, align 8, !tbaa !55
  %541 = add i64 %540, %535
  store i64 %541, ptr %52, align 8, !tbaa !55
  %542 = load ptr, ptr %393, align 8, !tbaa !99
  %543 = getelementptr inbounds nuw i8, ptr %542, i64 68
  %544 = load i32, ptr %543, align 4, !tbaa !109
  %545 = icmp ne i32 %544, 0
  %546 = icmp ugt i64 %541, %534
  %547 = select i1 %545, i1 %546, i1 false
  br i1 %547, label %548, label %555

548:                                              ; preds = %531
  %549 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %550 = load i64, ptr %549, align 8, !tbaa !59
  %551 = load ptr, ptr %536, align 8, !tbaa !40
  %552 = getelementptr inbounds nuw i8, ptr %551, i64 %534
  %553 = sub nuw i64 %541, %534
  %554 = tail call i64 @crc32_z(i64 noundef %550, ptr noundef %552, i64 noundef %553) #12
  store i64 %554, ptr %549, align 8, !tbaa !59
  br label %555

555:                                              ; preds = %531, %548
  store i64 0, ptr %404, align 8, !tbaa !118
  br label %556

556:                                              ; preds = %392, %555
  store i32 73, ptr %20, align 8, !tbaa !29
  br label %557

557:                                              ; preds = %390, %556
  %558 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %559 = load ptr, ptr %558, align 8, !tbaa !99
  %560 = getelementptr inbounds nuw i8, ptr %559, i64 40
  %561 = load ptr, ptr %560, align 8, !tbaa !113
  %562 = icmp eq ptr %561, null
  br i1 %562, label %650, label %563

563:                                              ; preds = %557
  %564 = load i64, ptr %52, align 8, !tbaa !55
  %565 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %566 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %567 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %568 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %569 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %570

570:                                              ; preds = %621, %563
  %571 = phi i64 [ %564, %563 ], [ %624, %621 ]
  %572 = load i64, ptr %52, align 8, !tbaa !55
  %573 = load i64, ptr %565, align 8, !tbaa !41
  %574 = icmp eq i64 %572, %573
  %575 = load ptr, ptr %558, align 8, !tbaa !99
  br i1 %574, label %576, label %621

576:                                              ; preds = %570
  %577 = getelementptr inbounds nuw i8, ptr %575, i64 68
  %578 = load i32, ptr %577, align 4, !tbaa !109
  %579 = icmp ne i32 %578, 0
  %580 = icmp ugt i64 %572, %571
  %581 = select i1 %579, i1 %580, i1 false
  br i1 %581, label %582, label %588

582:                                              ; preds = %576
  %583 = load i64, ptr %566, align 8, !tbaa !59
  %584 = load ptr, ptr %567, align 8, !tbaa !40
  %585 = getelementptr inbounds nuw i8, ptr %584, i64 %571
  %586 = sub nuw i64 %572, %571
  %587 = tail call i64 @crc32_z(i64 noundef %583, ptr noundef %585, i64 noundef %586) #12
  store i64 %587, ptr %566, align 8, !tbaa !59
  br label %588

588:                                              ; preds = %582, %576
  %589 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %589) #12
  %590 = getelementptr inbounds nuw i8, ptr %589, i64 40
  %591 = load i64, ptr %590, align 8, !tbaa !55
  %592 = load i32, ptr %43, align 8, !tbaa !106
  %593 = zext i32 %592 to i64
  %594 = tail call i64 @llvm.umin.i64(i64 %591, i64 %593)
  %595 = icmp eq i64 %594, 0
  br i1 %595, label %615, label %596

596:                                              ; preds = %588
  %597 = trunc nuw i64 %594 to i32
  %598 = load ptr, ptr %25, align 8, !tbaa !105
  %599 = getelementptr inbounds nuw i8, ptr %589, i64 32
  %600 = load ptr, ptr %599, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %598, ptr align 1 %600, i64 %594, i1 false)
  %601 = load ptr, ptr %25, align 8, !tbaa !105
  %602 = getelementptr inbounds nuw i8, ptr %601, i64 %594
  store ptr %602, ptr %25, align 8, !tbaa !105
  %603 = load ptr, ptr %599, align 8, !tbaa !56
  %604 = getelementptr inbounds nuw i8, ptr %603, i64 %594
  store ptr %604, ptr %599, align 8, !tbaa !56
  %605 = load i64, ptr %568, align 8, !tbaa !107
  %606 = add i64 %605, %594
  store i64 %606, ptr %568, align 8, !tbaa !107
  %607 = load i32, ptr %43, align 8, !tbaa !106
  %608 = sub i32 %607, %597
  store i32 %608, ptr %43, align 8, !tbaa !106
  %609 = load i64, ptr %590, align 8, !tbaa !55
  %610 = sub i64 %609, %594
  store i64 %610, ptr %590, align 8, !tbaa !55
  %611 = icmp eq i64 %609, %594
  br i1 %611, label %612, label %615

612:                                              ; preds = %596
  %613 = getelementptr inbounds nuw i8, ptr %589, i64 16
  %614 = load ptr, ptr %613, align 8, !tbaa !40
  store ptr %614, ptr %599, align 8, !tbaa !56
  br label %615

615:                                              ; preds = %588, %596, %612
  %616 = load i64, ptr %52, align 8, !tbaa !55
  %617 = icmp eq i64 %616, 0
  br i1 %617, label %618, label %620

618:                                              ; preds = %615
  %619 = load ptr, ptr %558, align 8, !tbaa !99
  br label %621

620:                                              ; preds = %615
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %948

621:                                              ; preds = %618, %570
  %622 = phi i64 [ %572, %570 ], [ 0, %618 ]
  %623 = phi ptr [ %575, %570 ], [ %619, %618 ]
  %624 = phi i64 [ %571, %570 ], [ 0, %618 ]
  %625 = getelementptr inbounds nuw i8, ptr %623, i64 40
  %626 = load ptr, ptr %625, align 8, !tbaa !113
  %627 = load i64, ptr %569, align 8, !tbaa !118
  %628 = add i64 %627, 1
  store i64 %628, ptr %569, align 8, !tbaa !118
  %629 = getelementptr inbounds nuw i8, ptr %626, i64 %627
  %630 = load i8, ptr %629, align 1, !tbaa !8
  %631 = load ptr, ptr %567, align 8, !tbaa !40
  %632 = add i64 %622, 1
  store i64 %632, ptr %52, align 8, !tbaa !55
  %633 = getelementptr inbounds nuw i8, ptr %631, i64 %622
  store i8 %630, ptr %633, align 1, !tbaa !8
  %634 = icmp eq i8 %630, 0
  br i1 %634, label %635, label %570, !llvm.loop !121

635:                                              ; preds = %621
  %636 = load ptr, ptr %558, align 8, !tbaa !99
  %637 = getelementptr inbounds nuw i8, ptr %636, i64 68
  %638 = load i32, ptr %637, align 4, !tbaa !109
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %649, label %640

640:                                              ; preds = %635
  %641 = load i64, ptr %52, align 8, !tbaa !55
  %642 = icmp ugt i64 %641, %624
  br i1 %642, label %643, label %649

643:                                              ; preds = %640
  %644 = load i64, ptr %566, align 8, !tbaa !59
  %645 = load ptr, ptr %567, align 8, !tbaa !40
  %646 = getelementptr inbounds nuw i8, ptr %645, i64 %624
  %647 = sub nuw i64 %641, %624
  %648 = tail call i64 @crc32_z(i64 noundef %644, ptr noundef %646, i64 noundef %647) #12
  store i64 %648, ptr %566, align 8, !tbaa !59
  br label %649

649:                                              ; preds = %643, %640, %635
  store i64 0, ptr %569, align 8, !tbaa !118
  br label %650

650:                                              ; preds = %557, %649
  store i32 91, ptr %20, align 8, !tbaa !29
  br label %651

651:                                              ; preds = %390, %650
  %652 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %653 = load ptr, ptr %652, align 8, !tbaa !99
  %654 = getelementptr inbounds nuw i8, ptr %653, i64 56
  %655 = load ptr, ptr %654, align 8, !tbaa !114
  %656 = icmp eq ptr %655, null
  br i1 %656, label %743, label %657

657:                                              ; preds = %651
  %658 = load i64, ptr %52, align 8, !tbaa !55
  %659 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %660 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %661 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %662 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %663 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %664

664:                                              ; preds = %715, %657
  %665 = phi i64 [ %658, %657 ], [ %718, %715 ]
  %666 = load i64, ptr %52, align 8, !tbaa !55
  %667 = load i64, ptr %659, align 8, !tbaa !41
  %668 = icmp eq i64 %666, %667
  %669 = load ptr, ptr %652, align 8, !tbaa !99
  br i1 %668, label %670, label %715

670:                                              ; preds = %664
  %671 = getelementptr inbounds nuw i8, ptr %669, i64 68
  %672 = load i32, ptr %671, align 4, !tbaa !109
  %673 = icmp ne i32 %672, 0
  %674 = icmp ugt i64 %666, %665
  %675 = select i1 %673, i1 %674, i1 false
  br i1 %675, label %676, label %682

676:                                              ; preds = %670
  %677 = load i64, ptr %660, align 8, !tbaa !59
  %678 = load ptr, ptr %661, align 8, !tbaa !40
  %679 = getelementptr inbounds nuw i8, ptr %678, i64 %665
  %680 = sub nuw i64 %666, %665
  %681 = tail call i64 @crc32_z(i64 noundef %677, ptr noundef %679, i64 noundef %680) #12
  store i64 %681, ptr %660, align 8, !tbaa !59
  br label %682

682:                                              ; preds = %676, %670
  %683 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %683) #12
  %684 = getelementptr inbounds nuw i8, ptr %683, i64 40
  %685 = load i64, ptr %684, align 8, !tbaa !55
  %686 = load i32, ptr %43, align 8, !tbaa !106
  %687 = zext i32 %686 to i64
  %688 = tail call i64 @llvm.umin.i64(i64 %685, i64 %687)
  %689 = icmp eq i64 %688, 0
  br i1 %689, label %709, label %690

690:                                              ; preds = %682
  %691 = trunc nuw i64 %688 to i32
  %692 = load ptr, ptr %25, align 8, !tbaa !105
  %693 = getelementptr inbounds nuw i8, ptr %683, i64 32
  %694 = load ptr, ptr %693, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %692, ptr align 1 %694, i64 %688, i1 false)
  %695 = load ptr, ptr %25, align 8, !tbaa !105
  %696 = getelementptr inbounds nuw i8, ptr %695, i64 %688
  store ptr %696, ptr %25, align 8, !tbaa !105
  %697 = load ptr, ptr %693, align 8, !tbaa !56
  %698 = getelementptr inbounds nuw i8, ptr %697, i64 %688
  store ptr %698, ptr %693, align 8, !tbaa !56
  %699 = load i64, ptr %662, align 8, !tbaa !107
  %700 = add i64 %699, %688
  store i64 %700, ptr %662, align 8, !tbaa !107
  %701 = load i32, ptr %43, align 8, !tbaa !106
  %702 = sub i32 %701, %691
  store i32 %702, ptr %43, align 8, !tbaa !106
  %703 = load i64, ptr %684, align 8, !tbaa !55
  %704 = sub i64 %703, %688
  store i64 %704, ptr %684, align 8, !tbaa !55
  %705 = icmp eq i64 %703, %688
  br i1 %705, label %706, label %709

706:                                              ; preds = %690
  %707 = getelementptr inbounds nuw i8, ptr %683, i64 16
  %708 = load ptr, ptr %707, align 8, !tbaa !40
  store ptr %708, ptr %693, align 8, !tbaa !56
  br label %709

709:                                              ; preds = %682, %690, %706
  %710 = load i64, ptr %52, align 8, !tbaa !55
  %711 = icmp eq i64 %710, 0
  br i1 %711, label %712, label %714

712:                                              ; preds = %709
  %713 = load ptr, ptr %652, align 8, !tbaa !99
  br label %715

714:                                              ; preds = %709
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %948

715:                                              ; preds = %712, %664
  %716 = phi i64 [ %666, %664 ], [ 0, %712 ]
  %717 = phi ptr [ %669, %664 ], [ %713, %712 ]
  %718 = phi i64 [ %665, %664 ], [ 0, %712 ]
  %719 = getelementptr inbounds nuw i8, ptr %717, i64 56
  %720 = load ptr, ptr %719, align 8, !tbaa !114
  %721 = load i64, ptr %663, align 8, !tbaa !118
  %722 = add i64 %721, 1
  store i64 %722, ptr %663, align 8, !tbaa !118
  %723 = getelementptr inbounds nuw i8, ptr %720, i64 %721
  %724 = load i8, ptr %723, align 1, !tbaa !8
  %725 = load ptr, ptr %661, align 8, !tbaa !40
  %726 = add i64 %716, 1
  store i64 %726, ptr %52, align 8, !tbaa !55
  %727 = getelementptr inbounds nuw i8, ptr %725, i64 %716
  store i8 %724, ptr %727, align 1, !tbaa !8
  %728 = icmp eq i8 %724, 0
  br i1 %728, label %729, label %664, !llvm.loop !122

729:                                              ; preds = %715
  %730 = load ptr, ptr %652, align 8, !tbaa !99
  %731 = getelementptr inbounds nuw i8, ptr %730, i64 68
  %732 = load i32, ptr %731, align 4, !tbaa !109
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %743, label %734

734:                                              ; preds = %729
  %735 = load i64, ptr %52, align 8, !tbaa !55
  %736 = icmp ugt i64 %735, %718
  br i1 %736, label %737, label %743

737:                                              ; preds = %734
  %738 = load i64, ptr %660, align 8, !tbaa !59
  %739 = load ptr, ptr %661, align 8, !tbaa !40
  %740 = getelementptr inbounds nuw i8, ptr %739, i64 %718
  %741 = sub nuw i64 %735, %718
  %742 = tail call i64 @crc32_z(i64 noundef %738, ptr noundef %740, i64 noundef %741) #12
  store i64 %742, ptr %660, align 8, !tbaa !59
  br label %743

743:                                              ; preds = %651, %729, %734, %737
  store i32 103, ptr %20, align 8, !tbaa !29
  br label %744

744:                                              ; preds = %390, %743
  %745 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %746 = load ptr, ptr %745, align 8, !tbaa !99
  %747 = getelementptr inbounds nuw i8, ptr %746, i64 68
  %748 = load i32, ptr %747, align 4, !tbaa !109
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %777, label %750

750:                                              ; preds = %744
  %751 = load i64, ptr %52, align 8, !tbaa !55
  %752 = add i64 %751, 2
  %753 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %754 = load i64, ptr %753, align 8, !tbaa !41
  %755 = icmp ugt i64 %752, %754
  br i1 %755, label %756, label %760

756:                                              ; preds = %750
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %757 = load i64, ptr %52, align 8, !tbaa !55
  %758 = icmp eq i64 %757, 0
  br i1 %758, label %760, label %759

759:                                              ; preds = %756
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %948

760:                                              ; preds = %756, %750
  %761 = phi i64 [ 0, %756 ], [ %751, %750 ]
  %762 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %763 = load i64, ptr %762, align 8, !tbaa !59
  %764 = trunc i64 %763 to i8
  %765 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %766 = load ptr, ptr %765, align 8, !tbaa !40
  %767 = add i64 %761, 1
  store i64 %767, ptr %52, align 8, !tbaa !55
  %768 = getelementptr inbounds nuw i8, ptr %766, i64 %761
  store i8 %764, ptr %768, align 1, !tbaa !8
  %769 = load i64, ptr %762, align 8, !tbaa !59
  %770 = lshr i64 %769, 8
  %771 = trunc i64 %770 to i8
  %772 = load ptr, ptr %765, align 8, !tbaa !40
  %773 = load i64, ptr %52, align 8, !tbaa !55
  %774 = add i64 %773, 1
  store i64 %774, ptr %52, align 8, !tbaa !55
  %775 = getelementptr inbounds nuw i8, ptr %772, i64 %773
  store i8 %771, ptr %775, align 1, !tbaa !8
  %776 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %776, ptr %762, align 8, !tbaa !59
  br label %777

777:                                              ; preds = %760, %744
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %778 = load i64, ptr %52, align 8, !tbaa !55
  %779 = icmp eq i64 %778, 0
  br i1 %779, label %781, label %780

780:                                              ; preds = %777
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %948

781:                                              ; preds = %390, %124, %777
  %782 = load i32, ptr %29, align 8, !tbaa !81
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %784, label %793

784:                                              ; preds = %114, %781
  %785 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %786 = load i32, ptr %785, align 4, !tbaa !75
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %788, label %793

788:                                              ; preds = %784
  %789 = icmp eq i32 %1, 0
  br i1 %789, label %948, label %790

790:                                              ; preds = %788
  %791 = load i32, ptr %20, align 8, !tbaa !29
  %792 = icmp eq i32 %791, 666
  br i1 %792, label %851, label %793

793:                                              ; preds = %790, %784, %781
  %794 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %795 = load i32, ptr %794, align 4, !tbaa !46
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %797, label %799

797:                                              ; preds = %793
  %798 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %812

799:                                              ; preds = %793
  %800 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %801 = load i32, ptr %800, align 8, !tbaa !47
  switch i32 %801, label %806 [
    i32 2, label %802
    i32 3, label %804
  ]

802:                                              ; preds = %799
  %803 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %812

804:                                              ; preds = %799
  %805 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %812

806:                                              ; preds = %799
  %807 = sext i32 %795 to i64
  %808 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %807
  %809 = getelementptr inbounds nuw i8, ptr %808, i64 8
  %810 = load ptr, ptr %809, align 8, !tbaa !104
  %811 = tail call i32 %810(ptr noundef nonnull %14, i32 noundef %1) #12
  br label %812

812:                                              ; preds = %802, %806, %804, %797
  %813 = phi i32 [ %798, %797 ], [ %803, %802 ], [ %805, %804 ], [ %811, %806 ]
  %814 = and i32 %813, -2
  %815 = icmp eq i32 %814, 2
  br i1 %815, label %816, label %817

816:                                              ; preds = %812
  store i32 666, ptr %20, align 8, !tbaa !29
  br label %817

817:                                              ; preds = %812, %816
  %818 = and i32 %813, -3
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %824

820:                                              ; preds = %817
  %821 = load i32, ptr %43, align 8, !tbaa !106
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %823, label %948

823:                                              ; preds = %820
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %948

824:                                              ; preds = %817
  %825 = icmp eq i32 %813, 1
  br i1 %825, label %826, label %851

826:                                              ; preds = %824
  switch i32 %1, label %828 [
    i32 1, label %827
    i32 5, label %847
  ]

827:                                              ; preds = %826
  tail call void @_tr_align(ptr noundef nonnull %14) #12
  br label %847

828:                                              ; preds = %826
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #12
  %829 = icmp eq i32 %1, 3
  br i1 %829, label %830, label %847

830:                                              ; preds = %828
  %831 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %832 = load ptr, ptr %831, align 8, !tbaa !37
  %833 = getelementptr inbounds nuw i8, ptr %14, i64 132
  %834 = load i32, ptr %833, align 4, !tbaa !36
  %835 = add i32 %834, -1
  %836 = zext i32 %835 to i64
  %837 = getelementptr inbounds nuw [2 x i8], ptr %832, i64 %836
  store i16 0, ptr %837, align 2, !tbaa !62
  %838 = shl nuw nsw i64 %836, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %832, i8 0, i64 %838, i1 false)
  %839 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %839, align 8, !tbaa !63
  %840 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %841 = load i32, ptr %840, align 4, !tbaa !75
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %843, label %847

843:                                              ; preds = %830
  %844 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %844, align 4, !tbaa !73
  %845 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %845, align 8, !tbaa !74
  %846 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %846, align 4, !tbaa !76
  br label %847

847:                                              ; preds = %826, %830, %843, %828, %827
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %848 = load i32, ptr %43, align 8, !tbaa !106
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %850, label %851

850:                                              ; preds = %847
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %948

851:                                              ; preds = %847, %824, %790
  br i1 %37, label %948, label %852

852:                                              ; preds = %851
  %853 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %854 = load i32, ptr %853, align 8, !tbaa !30
  %855 = icmp slt i32 %854, 1
  br i1 %855, label %948, label %856

856:                                              ; preds = %852
  %857 = icmp eq i32 %854, 2
  %858 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %859 = load i64, ptr %858, align 8, !tbaa !59
  br i1 %857, label %860, label %911

860:                                              ; preds = %856
  %861 = trunc i64 %859 to i8
  %862 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %863 = load ptr, ptr %862, align 8, !tbaa !40
  %864 = load i64, ptr %52, align 8, !tbaa !55
  %865 = add i64 %864, 1
  store i64 %865, ptr %52, align 8, !tbaa !55
  %866 = getelementptr inbounds nuw i8, ptr %863, i64 %864
  store i8 %861, ptr %866, align 1, !tbaa !8
  %867 = load i64, ptr %858, align 8, !tbaa !59
  %868 = lshr i64 %867, 8
  %869 = trunc i64 %868 to i8
  %870 = load ptr, ptr %862, align 8, !tbaa !40
  %871 = load i64, ptr %52, align 8, !tbaa !55
  %872 = add i64 %871, 1
  store i64 %872, ptr %52, align 8, !tbaa !55
  %873 = getelementptr inbounds nuw i8, ptr %870, i64 %871
  store i8 %869, ptr %873, align 1, !tbaa !8
  %874 = load i64, ptr %858, align 8, !tbaa !59
  %875 = lshr i64 %874, 16
  %876 = trunc i64 %875 to i8
  %877 = load ptr, ptr %862, align 8, !tbaa !40
  %878 = load i64, ptr %52, align 8, !tbaa !55
  %879 = add i64 %878, 1
  store i64 %879, ptr %52, align 8, !tbaa !55
  %880 = getelementptr inbounds nuw i8, ptr %877, i64 %878
  store i8 %876, ptr %880, align 1, !tbaa !8
  %881 = load i64, ptr %858, align 8, !tbaa !59
  %882 = lshr i64 %881, 24
  %883 = trunc i64 %882 to i8
  %884 = load ptr, ptr %862, align 8, !tbaa !40
  %885 = load i64, ptr %52, align 8, !tbaa !55
  %886 = add i64 %885, 1
  store i64 %886, ptr %52, align 8, !tbaa !55
  %887 = getelementptr inbounds nuw i8, ptr %884, i64 %885
  store i8 %883, ptr %887, align 1, !tbaa !8
  %888 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %889 = load i64, ptr %888, align 8, !tbaa !53
  %890 = trunc i64 %889 to i8
  %891 = load ptr, ptr %862, align 8, !tbaa !40
  %892 = load i64, ptr %52, align 8, !tbaa !55
  %893 = add i64 %892, 1
  store i64 %893, ptr %52, align 8, !tbaa !55
  %894 = getelementptr inbounds nuw i8, ptr %891, i64 %892
  store i8 %890, ptr %894, align 1, !tbaa !8
  %895 = load i64, ptr %888, align 8, !tbaa !53
  %896 = lshr i64 %895, 8
  %897 = trunc i64 %896 to i8
  %898 = load ptr, ptr %862, align 8, !tbaa !40
  %899 = load i64, ptr %52, align 8, !tbaa !55
  %900 = add i64 %899, 1
  store i64 %900, ptr %52, align 8, !tbaa !55
  %901 = getelementptr inbounds nuw i8, ptr %898, i64 %899
  store i8 %897, ptr %901, align 1, !tbaa !8
  %902 = load i64, ptr %888, align 8, !tbaa !53
  %903 = lshr i64 %902, 16
  %904 = trunc i64 %903 to i8
  %905 = load ptr, ptr %862, align 8, !tbaa !40
  %906 = load i64, ptr %52, align 8, !tbaa !55
  %907 = add i64 %906, 1
  store i64 %907, ptr %52, align 8, !tbaa !55
  %908 = getelementptr inbounds nuw i8, ptr %905, i64 %906
  store i8 %904, ptr %908, align 1, !tbaa !8
  %909 = load i64, ptr %888, align 8, !tbaa !53
  %910 = lshr i64 %909, 24
  br label %932

911:                                              ; preds = %856
  %912 = lshr i64 %859, 16
  %913 = lshr i64 %859, 24
  %914 = trunc i64 %913 to i8
  %915 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %916 = load ptr, ptr %915, align 8, !tbaa !40
  %917 = load i64, ptr %52, align 8, !tbaa !55
  %918 = add i64 %917, 1
  store i64 %918, ptr %52, align 8, !tbaa !55
  %919 = getelementptr inbounds nuw i8, ptr %916, i64 %917
  store i8 %914, ptr %919, align 1, !tbaa !8
  %920 = trunc i64 %912 to i8
  %921 = load ptr, ptr %915, align 8, !tbaa !40
  %922 = load i64, ptr %52, align 8, !tbaa !55
  %923 = add i64 %922, 1
  store i64 %923, ptr %52, align 8, !tbaa !55
  %924 = getelementptr inbounds nuw i8, ptr %921, i64 %922
  store i8 %920, ptr %924, align 1, !tbaa !8
  %925 = load i64, ptr %858, align 8, !tbaa !59
  %926 = lshr i64 %925, 8
  %927 = trunc i64 %926 to i8
  %928 = load ptr, ptr %915, align 8, !tbaa !40
  %929 = load i64, ptr %52, align 8, !tbaa !55
  %930 = add i64 %929, 1
  store i64 %930, ptr %52, align 8, !tbaa !55
  %931 = getelementptr inbounds nuw i8, ptr %928, i64 %929
  store i8 %927, ptr %931, align 1, !tbaa !8
  br label %932

932:                                              ; preds = %911, %860
  %933 = phi ptr [ %915, %911 ], [ %862, %860 ]
  %934 = phi i64 [ %925, %911 ], [ %910, %860 ]
  %935 = trunc i64 %934 to i8
  %936 = load ptr, ptr %933, align 8, !tbaa !40
  %937 = load i64, ptr %52, align 8, !tbaa !55
  %938 = add i64 %937, 1
  store i64 %938, ptr %52, align 8, !tbaa !55
  %939 = getelementptr inbounds nuw i8, ptr %936, i64 %937
  store i8 %935, ptr %939, align 1, !tbaa !8
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %940 = load i32, ptr %853, align 8, !tbaa !30
  %941 = icmp sgt i32 %940, 0
  br i1 %941, label %942, label %944

942:                                              ; preds = %932
  %943 = sub nsw i32 0, %940
  store i32 %943, ptr %853, align 8, !tbaa !30
  br label %944

944:                                              ; preds = %942, %932
  %945 = load i64, ptr %52, align 8, !tbaa !55
  %946 = icmp eq i64 %945, 0
  %947 = zext i1 %946 to i32
  br label %948

948:                                              ; preds = %788, %12, %16, %19, %4, %8, %2, %520, %200, %820, %850, %823, %852, %851, %714, %620, %22, %944, %780, %759, %266, %117, %108, %87, %46, %39
  %949 = phi i32 [ -5, %108 ], [ -2, %39 ], [ -5, %46 ], [ 0, %87 ], [ -5, %117 ], [ 0, %266 ], [ 0, %759 ], [ 0, %780 ], [ -2, %22 ], [ 0, %851 ], [ %947, %944 ], [ 1, %852 ], [ 0, %714 ], [ 0, %620 ], [ 0, %520 ], [ 0, %200 ], [ 0, %823 ], [ 0, %850 ], [ 0, %820 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ 0, %788 ]
  ret i32 %949
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @slide_hash(ptr noundef captures(none) %0) unnamed_addr #8 {
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
  br i1 %13, label %35, label %14

14:                                               ; preds = %1
  %15 = and i64 %12, 8589934584
  %16 = mul nsw i64 %15, -2
  %17 = getelementptr i8, ptr %9, i64 %16
  %18 = trunc i64 %15 to i32
  %19 = sub i32 %5, %18
  %20 = insertelement <8 x i32> poison, i32 %3, i64 0
  %21 = shufflevector <8 x i32> %20, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %22

22:                                               ; preds = %22, %14
  %23 = phi i64 [ 0, %14 ], [ %31, %22 ]
  %24 = mul i64 %23, -2
  %25 = getelementptr i8, ptr %9, i64 %24
  %26 = getelementptr inbounds i8, ptr %25, i64 -16
  %27 = load <8 x i16>, ptr %26, align 2, !tbaa !62
  %28 = zext <8 x i16> %27 to <8 x i32>
  %29 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %28, <8 x i32> %21)
  %30 = trunc nuw <8 x i32> %29 to <8 x i16>
  store <8 x i16> %30, ptr %26, align 2, !tbaa !62
  %31 = add nuw i64 %23, 8
  %32 = icmp eq i64 %31, %15
  br i1 %32, label %33, label %22, !llvm.loop !125

33:                                               ; preds = %22
  %34 = icmp eq i64 %12, %15
  br i1 %34, label %48, label %35

35:                                               ; preds = %1, %33
  %36 = phi ptr [ %9, %1 ], [ %17, %33 ]
  %37 = phi i32 [ %5, %1 ], [ %19, %33 ]
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi ptr [ %41, %38 ], [ %36, %35 ]
  %40 = phi i32 [ %46, %38 ], [ %37, %35 ]
  %41 = getelementptr inbounds i8, ptr %39, i64 -2
  %42 = load i16, ptr %41, align 2, !tbaa !62
  %43 = zext i16 %42 to i32
  %44 = tail call i32 @llvm.usub.sat.i32(i32 %43, i32 %3)
  %45 = trunc nuw i32 %44 to i16
  store i16 %45, ptr %41, align 2, !tbaa !62
  %46 = add i32 %40, -1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %38, !llvm.loop !126

48:                                               ; preds = %38, %33
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  %51 = zext i32 %3 to i64
  %52 = getelementptr inbounds nuw [2 x i8], ptr %50, i64 %51
  %53 = add i32 %3, -1
  %54 = zext i32 %53 to i64
  %55 = add nuw nsw i64 %54, 1
  %56 = icmp ult i32 %53, 7
  br i1 %56, label %78, label %57

57:                                               ; preds = %48
  %58 = and i64 %55, 8589934584
  %59 = mul nsw i64 %58, -2
  %60 = getelementptr i8, ptr %52, i64 %59
  %61 = trunc i64 %58 to i32
  %62 = sub i32 %3, %61
  %63 = insertelement <8 x i32> poison, i32 %3, i64 0
  %64 = shufflevector <8 x i32> %63, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %65

65:                                               ; preds = %65, %57
  %66 = phi i64 [ 0, %57 ], [ %74, %65 ]
  %67 = mul i64 %66, -2
  %68 = getelementptr i8, ptr %52, i64 %67
  %69 = getelementptr inbounds i8, ptr %68, i64 -16
  %70 = load <8 x i16>, ptr %69, align 2, !tbaa !62
  %71 = zext <8 x i16> %70 to <8 x i32>
  %72 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %71, <8 x i32> %64)
  %73 = trunc nuw <8 x i32> %72 to <8 x i16>
  store <8 x i16> %73, ptr %69, align 2, !tbaa !62
  %74 = add nuw i64 %66, 8
  %75 = icmp eq i64 %74, %58
  br i1 %75, label %76, label %65, !llvm.loop !127

76:                                               ; preds = %65
  %77 = icmp eq i64 %55, %58
  br i1 %77, label %91, label %78

78:                                               ; preds = %48, %76
  %79 = phi ptr [ %52, %48 ], [ %60, %76 ]
  %80 = phi i32 [ %3, %48 ], [ %62, %76 ]
  br label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %84, %81 ], [ %79, %78 ]
  %83 = phi i32 [ %89, %81 ], [ %80, %78 ]
  %84 = getelementptr inbounds i8, ptr %82, i64 -2
  %85 = load i16, ptr %84, align 2, !tbaa !62
  %86 = zext i16 %85 to i32
  %87 = tail call i32 @llvm.usub.sat.i32(i32 %86, i32 %3)
  %88 = trunc nuw i32 %87 to i16
  store i16 %88, ptr %84, align 2, !tbaa !62
  %89 = add i32 %83, -1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %81, !llvm.loop !128

91:                                               ; preds = %81, %76
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i32 1, ptr %92, align 8, !tbaa !63
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

30:                                               ; preds = %15, %19, %22, %7, %11, %5, %25
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

40:                                               ; preds = %2, %26, %22, %37, %34, %30
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
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !57
  unreachable, !nosanitize !57

52:                                               ; preds = %43, %47
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
  %80 = add i64 %79, %74
  %81 = add i64 %80, 1
  br label %82

82:                                               ; preds = %78, %73
  %83 = phi i64 [ %74, %73 ], [ %81, %78 ]
  %84 = getelementptr inbounds nuw i8, ptr %61, i64 56
  %85 = load ptr, ptr %84, align 8, !tbaa !114
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %85)
  %89 = add i64 %88, %83
  %90 = add i64 %89, 1
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

99:                                               ; preds = %52, %59, %91, %98, %54
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

115:                                              ; preds = %110, %114
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
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !57
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

128:                                              ; preds = %40, %115, %118
  %129 = phi i64 [ %42, %40 ], [ %117, %115 ], [ %127, %118 ]
  ret i64 %129
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %3) #12
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

32:                                               ; preds = %11, %29, %1
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

22:                                               ; preds = %191, %2
  %23 = load i32, ptr %14, align 4, !tbaa !100
  %24 = add i32 %23, 42
  %25 = lshr i32 %24, 3
  %26 = load ptr, ptr %0, align 8, !tbaa !20
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %28 = load i32, ptr %27, align 8, !tbaa !106
  %29 = icmp ult i32 %28, %25
  br i1 %29, label %194, label %30

30:                                               ; preds = %22
  %31 = load i32, ptr %15, align 4, !tbaa !73
  %32 = zext i32 %31 to i64
  %33 = load i64, ptr %16, align 8, !tbaa !74
  %34 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %32, i64 %33), !nosanitize !57
  %35 = extractvalue { i64, i1 } %34, 1, !nosanitize !57
  br i1 %35, label %36, label %37, !prof !58, !nosanitize !57

36:                                               ; preds = %30, %358
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
  unreachable, !nosanitize !57

37:                                               ; preds = %30
  %38 = sub nuw i32 %28, %25
  %39 = extractvalue { i64, i1 } %34, 0, !nosanitize !57
  %40 = trunc i64 %39 to i32
  %41 = and i64 %39, 4294967295
  %42 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %43 = load i32, ptr %42, align 8, !tbaa !81
  %44 = zext i32 %43 to i64
  %45 = add nuw nsw i64 %41, %44
  %46 = icmp samesign ult i64 %45, 65535
  %47 = add i32 %43, %40
  %48 = select i1 %46, i32 %47, i32 65535
  %49 = tail call i32 @llvm.umin.i32(i32 %48, i32 %38)
  %50 = icmp ult i32 %49, %10
  br i1 %50, label %51, label %57

51:                                               ; preds = %37
  %52 = icmp ne i32 %49, 0
  %53 = or i1 %17, %52
  %54 = icmp eq i32 %49, %47
  %55 = and i1 %53, %54
  %56 = and i1 %55, %18
  br i1 %56, label %57, label %194

57:                                               ; preds = %51, %37
  %58 = icmp eq i32 %49, %47
  %59 = and i1 %17, %58
  %60 = zext i1 %59 to i32
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %60) #12
  %61 = trunc i32 %49 to i8
  %62 = load ptr, ptr %19, align 8, !tbaa !40
  %63 = load i64, ptr %20, align 8, !tbaa !55
  %64 = getelementptr i8, ptr %62, i64 %63
  %65 = getelementptr i8, ptr %64, i64 -4
  store i8 %61, ptr %65, align 1, !tbaa !8
  %66 = lshr i32 %49, 8
  %67 = trunc i32 %66 to i8
  %68 = load ptr, ptr %19, align 8, !tbaa !40
  %69 = load i64, ptr %20, align 8, !tbaa !55
  %70 = getelementptr i8, ptr %68, i64 %69
  %71 = getelementptr i8, ptr %70, i64 -3
  store i8 %67, ptr %71, align 1, !tbaa !8
  %72 = xor i32 %49, -1
  %73 = trunc i32 %72 to i8
  %74 = load ptr, ptr %19, align 8, !tbaa !40
  %75 = load i64, ptr %20, align 8, !tbaa !55
  %76 = getelementptr i8, ptr %74, i64 %75
  %77 = getelementptr i8, ptr %76, i64 -2
  store i8 %73, ptr %77, align 1, !tbaa !8
  %78 = lshr i32 %72, 8
  %79 = trunc i32 %78 to i8
  %80 = load ptr, ptr %19, align 8, !tbaa !40
  %81 = load i64, ptr %20, align 8, !tbaa !55
  %82 = getelementptr i8, ptr %80, i64 %81
  %83 = getelementptr i8, ptr %82, i64 -1
  store i8 %79, ptr %83, align 1, !tbaa !8
  %84 = load ptr, ptr %0, align 8, !tbaa !20
  %85 = getelementptr inbounds nuw i8, ptr %84, i64 56
  %86 = load ptr, ptr %85, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %86) #12
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 40
  %88 = load i64, ptr %87, align 8, !tbaa !55
  %89 = getelementptr inbounds nuw i8, ptr %84, i64 32
  %90 = load i32, ptr %89, align 8, !tbaa !106
  %91 = zext i32 %90 to i64
  %92 = tail call i64 @llvm.umin.i64(i64 %88, i64 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %115, label %94

94:                                               ; preds = %57
  %95 = trunc nuw i64 %92 to i32
  %96 = getelementptr inbounds nuw i8, ptr %84, i64 24
  %97 = load ptr, ptr %96, align 8, !tbaa !105
  %98 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %99 = load ptr, ptr %98, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %97, ptr align 1 %99, i64 %92, i1 false)
  %100 = load ptr, ptr %96, align 8, !tbaa !105
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 %92
  store ptr %101, ptr %96, align 8, !tbaa !105
  %102 = load ptr, ptr %98, align 8, !tbaa !56
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 %92
  store ptr %103, ptr %98, align 8, !tbaa !56
  %104 = getelementptr inbounds nuw i8, ptr %84, i64 40
  %105 = load i64, ptr %104, align 8, !tbaa !107
  %106 = add i64 %105, %92
  store i64 %106, ptr %104, align 8, !tbaa !107
  %107 = load i32, ptr %89, align 8, !tbaa !106
  %108 = sub i32 %107, %95
  store i32 %108, ptr %89, align 8, !tbaa !106
  %109 = load i64, ptr %87, align 8, !tbaa !55
  %110 = sub i64 %109, %92
  store i64 %110, ptr %87, align 8, !tbaa !55
  %111 = icmp eq i64 %109, %92
  br i1 %111, label %112, label %115

112:                                              ; preds = %94
  %113 = getelementptr inbounds nuw i8, ptr %86, i64 16
  %114 = load ptr, ptr %113, align 8, !tbaa !40
  store ptr %114, ptr %98, align 8, !tbaa !56
  br label %115

115:                                              ; preds = %57, %94, %112
  %116 = icmp eq i32 %40, 0
  br i1 %116, label %143, label %117

117:                                              ; preds = %115
  %118 = tail call i32 @llvm.umin.i32(i32 %49, i32 %40)
  %119 = load ptr, ptr %0, align 8, !tbaa !20
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 24
  %121 = load ptr, ptr %120, align 8, !tbaa !105
  %122 = load ptr, ptr %21, align 8, !tbaa !34
  %123 = load i64, ptr %16, align 8, !tbaa !74
  %124 = getelementptr inbounds i8, ptr %122, i64 %123
  %125 = zext i32 %118 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %121, ptr align 1 %124, i64 %125, i1 false)
  %126 = load ptr, ptr %0, align 8, !tbaa !20
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 24
  %128 = load ptr, ptr %127, align 8, !tbaa !105
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 %125
  store ptr %129, ptr %127, align 8, !tbaa !105
  %130 = getelementptr inbounds nuw i8, ptr %126, i64 32
  %131 = load i32, ptr %130, align 8, !tbaa !106
  %132 = sub i32 %131, %118
  store i32 %132, ptr %130, align 8, !tbaa !106
  %133 = getelementptr inbounds nuw i8, ptr %126, i64 40
  %134 = load i64, ptr %133, align 8, !tbaa !107
  %135 = add i64 %134, %125
  store i64 %135, ptr %133, align 8, !tbaa !107
  %136 = load i64, ptr %16, align 8, !tbaa !74
  %137 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %136, i64 %125), !nosanitize !57
  %138 = extractvalue { i64, i1 } %137, 1, !nosanitize !57
  br i1 %138, label %139, label %140, !prof !58, !nosanitize !57

139:                                              ; preds = %117, %395
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !57
  unreachable, !nosanitize !57

140:                                              ; preds = %117
  %141 = extractvalue { i64, i1 } %137, 0, !nosanitize !57
  store i64 %141, ptr %16, align 8, !tbaa !74
  %142 = sub i32 %49, %118
  br label %143

143:                                              ; preds = %140, %115
  %144 = phi i32 [ %142, %140 ], [ %49, %115 ]
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %191, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr %0, align 8, !tbaa !20
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 24
  %149 = load ptr, ptr %148, align 8, !tbaa !105
  %150 = getelementptr inbounds nuw i8, ptr %147, i64 8
  %151 = load i32, ptr %150, align 8, !tbaa !81
  %152 = tail call i32 @llvm.umin.i32(i32 %151, i32 %144)
  %153 = icmp eq i32 %151, 0
  br i1 %153, label %179, label %154

154:                                              ; preds = %146
  %155 = sub i32 %151, %152
  store i32 %155, ptr %150, align 8, !tbaa !81
  %156 = load ptr, ptr %147, align 8, !tbaa !82
  %157 = zext i32 %152 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %149, ptr align 1 %156, i64 %157, i1 false)
  %158 = getelementptr inbounds nuw i8, ptr %147, i64 56
  %159 = load ptr, ptr %158, align 8, !tbaa !19
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 48
  %161 = load i32, ptr %160, align 8, !tbaa !30
  switch i32 %161, label %170 [
    i32 1, label %162
    i32 2, label %166
  ]

162:                                              ; preds = %154
  %163 = getelementptr inbounds nuw i8, ptr %147, i64 96
  %164 = load i64, ptr %163, align 8, !tbaa !59
  %165 = tail call i64 @adler32(i64 noundef %164, ptr noundef %149, i32 noundef %152) #12
  store i64 %165, ptr %163, align 8, !tbaa !59
  br label %170

166:                                              ; preds = %154
  %167 = getelementptr inbounds nuw i8, ptr %147, i64 96
  %168 = load i64, ptr %167, align 8, !tbaa !59
  %169 = tail call i64 @crc32(i64 noundef %168, ptr noundef %149, i32 noundef %152) #12
  store i64 %169, ptr %167, align 8, !tbaa !59
  br label %170

170:                                              ; preds = %166, %162, %154
  %171 = load ptr, ptr %147, align 8, !tbaa !82
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 %157
  store ptr %172, ptr %147, align 8, !tbaa !82
  %173 = getelementptr inbounds nuw i8, ptr %147, i64 16
  %174 = load i64, ptr %173, align 8, !tbaa !53
  %175 = add i64 %174, %157
  store i64 %175, ptr %173, align 8, !tbaa !53
  %176 = load ptr, ptr %0, align 8, !tbaa !20
  %177 = getelementptr inbounds nuw i8, ptr %176, i64 24
  %178 = load ptr, ptr %177, align 8, !tbaa !105
  br label %179

179:                                              ; preds = %146, %170
  %180 = phi ptr [ %149, %146 ], [ %178, %170 ]
  %181 = phi ptr [ %147, %146 ], [ %176, %170 ]
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 24
  %183 = zext i32 %144 to i64
  %184 = getelementptr inbounds nuw i8, ptr %180, i64 %183
  store ptr %184, ptr %182, align 8, !tbaa !105
  %185 = getelementptr inbounds nuw i8, ptr %181, i64 32
  %186 = load i32, ptr %185, align 8, !tbaa !106
  %187 = sub i32 %186, %144
  store i32 %187, ptr %185, align 8, !tbaa !106
  %188 = getelementptr inbounds nuw i8, ptr %181, i64 40
  %189 = load i64, ptr %188, align 8, !tbaa !107
  %190 = add i64 %189, %183
  store i64 %190, ptr %188, align 8, !tbaa !107
  br label %191

191:                                              ; preds = %143, %179
  br i1 %59, label %192, label %22, !llvm.loop !129

192:                                              ; preds = %191
  %193 = load ptr, ptr %0, align 8, !tbaa !20
  br label %194, !llvm.loop !129

194:                                              ; preds = %51, %22, %192
  %195 = phi ptr [ %193, %192 ], [ %26, %22 ], [ %26, %51 ]
  %196 = phi i1 [ false, %192 ], [ true, %22 ], [ true, %51 ]
  %197 = getelementptr inbounds nuw i8, ptr %195, i64 8
  %198 = load i32, ptr %197, align 8, !tbaa !81
  %199 = sub i32 %13, %198
  %200 = icmp eq i32 %13, %198
  br i1 %200, label %201, label %204

201:                                              ; preds = %194
  %202 = load i32, ptr %15, align 4, !tbaa !73
  %203 = zext i32 %202 to i64
  br label %261

204:                                              ; preds = %194
  %205 = load i32, ptr %6, align 8, !tbaa !32
  %206 = icmp ult i32 %199, %205
  br i1 %206, label %216, label %207

207:                                              ; preds = %204
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %208, align 8, !tbaa !124
  %209 = load ptr, ptr %21, align 8, !tbaa !34
  %210 = load ptr, ptr %195, align 8, !tbaa !82
  %211 = zext i32 %205 to i64
  %212 = sub nsw i64 0, %211
  %213 = getelementptr inbounds i8, ptr %210, i64 %212
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %209, ptr align 1 %213, i64 %211, i1 false)
  %214 = load i32, ptr %6, align 8, !tbaa !32
  store i32 %214, ptr %15, align 4, !tbaa !73
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %214, ptr %215, align 4, !tbaa !76
  br label %258

216:                                              ; preds = %204
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %218 = load i64, ptr %217, align 8, !tbaa !61
  %219 = load i32, ptr %15, align 4, !tbaa !73
  %220 = zext i32 %219 to i64
  %221 = sub i64 %218, %220
  %222 = zext i32 %199 to i64
  %223 = icmp ugt i64 %221, %222
  br i1 %223, label %241, label %224

224:                                              ; preds = %216
  %225 = sub i32 %219, %205
  store i32 %225, ptr %15, align 4, !tbaa !73
  %226 = load ptr, ptr %21, align 8, !tbaa !34
  %227 = zext i32 %205 to i64
  %228 = getelementptr inbounds nuw i8, ptr %226, i64 %227
  %229 = zext i32 %225 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %226, ptr nonnull align 1 %228, i64 %229, i1 false)
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %231 = load i32, ptr %230, align 8, !tbaa !124
  %232 = icmp ult i32 %231, 2
  br i1 %232, label %233, label %235

233:                                              ; preds = %224
  %234 = add nuw nsw i32 %231, 1
  store i32 %234, ptr %230, align 8, !tbaa !124
  br label %235

235:                                              ; preds = %233, %224
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %237 = load i32, ptr %236, align 4, !tbaa !76
  %238 = load i32, ptr %15, align 4, !tbaa !73
  %239 = icmp ugt i32 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  store i32 %238, ptr %236, align 4, !tbaa !76
  br label %241

241:                                              ; preds = %235, %240, %216
  %242 = phi i32 [ %238, %235 ], [ %238, %240 ], [ %219, %216 ]
  %243 = load ptr, ptr %21, align 8, !tbaa !34
  %244 = zext i32 %242 to i64
  %245 = getelementptr inbounds nuw i8, ptr %243, i64 %244
  %246 = load ptr, ptr %0, align 8, !tbaa !20
  %247 = load ptr, ptr %246, align 8, !tbaa !82
  %248 = sub nsw i64 0, %222
  %249 = getelementptr inbounds i8, ptr %247, i64 %248
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %245, ptr nonnull align 1 %249, i64 %222, i1 false)
  %250 = load i32, ptr %15, align 4, !tbaa !73
  %251 = add i32 %250, %199
  store i32 %251, ptr %15, align 4, !tbaa !73
  %252 = load i32, ptr %6, align 8, !tbaa !32
  %253 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %254 = load i32, ptr %253, align 4, !tbaa !76
  %255 = sub i32 %252, %254
  %256 = tail call i32 @llvm.umin.i32(i32 %199, i32 %255)
  %257 = add i32 %256, %254
  store i32 %257, ptr %253, align 4, !tbaa !76
  br label %258

258:                                              ; preds = %241, %207
  %259 = phi i32 [ %251, %241 ], [ %214, %207 ]
  %260 = zext i32 %259 to i64
  store i64 %260, ptr %16, align 8, !tbaa !74
  br label %261

261:                                              ; preds = %201, %258
  %262 = phi i64 [ %203, %201 ], [ %260, %258 ]
  %263 = phi i32 [ %202, %201 ], [ %259, %258 ]
  %264 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %265 = load i64, ptr %264, align 8, !tbaa !38
  %266 = icmp ult i64 %265, %262
  br i1 %266, label %267, label %268

267:                                              ; preds = %261
  store i64 %262, ptr %264, align 8, !tbaa !38
  br label %268

268:                                              ; preds = %267, %261
  br i1 %196, label %269, label %438

269:                                              ; preds = %268
  switch i32 %1, label %270 [
    i32 4, label %278
    i32 0, label %278
  ]

270:                                              ; preds = %269
  %271 = load ptr, ptr %0, align 8, !tbaa !20
  %272 = getelementptr inbounds nuw i8, ptr %271, i64 8
  %273 = load i32, ptr %272, align 8, !tbaa !81
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %270
  %276 = load i64, ptr %16, align 8, !tbaa !74
  %277 = icmp eq i64 %276, %262
  br i1 %277, label %441, label %278

278:                                              ; preds = %269, %269, %275, %270
  %279 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %280 = load i64, ptr %279, align 8, !tbaa !61
  %281 = trunc i64 %280 to i32
  %282 = sub i32 %281, %263
  %283 = load ptr, ptr %0, align 8, !tbaa !20
  %284 = getelementptr inbounds nuw i8, ptr %283, i64 8
  %285 = load i32, ptr %284, align 8, !tbaa !81
  %286 = icmp ugt i32 %285, %282
  br i1 %286, label %287, label %311

287:                                              ; preds = %278
  %288 = load i64, ptr %16, align 8, !tbaa !74
  %289 = load i32, ptr %6, align 8, !tbaa !32
  %290 = zext i32 %289 to i64
  %291 = icmp slt i64 %288, %290
  br i1 %291, label %311, label %292

292:                                              ; preds = %287
  %293 = sub nsw i64 %288, %290
  store i64 %293, ptr %16, align 8, !tbaa !74
  %294 = sub i32 %263, %289
  store i32 %294, ptr %15, align 4, !tbaa !73
  %295 = load ptr, ptr %21, align 8, !tbaa !34
  %296 = getelementptr inbounds nuw i8, ptr %295, i64 %290
  %297 = zext i32 %294 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %295, ptr align 1 %296, i64 %297, i1 false)
  %298 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %299 = load i32, ptr %298, align 8, !tbaa !124
  %300 = icmp ult i32 %299, 2
  br i1 %300, label %301, label %303

301:                                              ; preds = %292
  %302 = add nuw nsw i32 %299, 1
  store i32 %302, ptr %298, align 8, !tbaa !124
  br label %303

303:                                              ; preds = %301, %292
  %304 = load i32, ptr %6, align 8, !tbaa !32
  %305 = add i32 %304, %282
  %306 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %307 = load i32, ptr %306, align 4, !tbaa !76
  %308 = load i32, ptr %15, align 4, !tbaa !73
  %309 = icmp ugt i32 %307, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %303
  store i32 %308, ptr %306, align 4, !tbaa !76
  br label %311

311:                                              ; preds = %303, %310, %287, %278
  %312 = phi i32 [ %308, %310 ], [ %308, %303 ], [ %263, %287 ], [ %263, %278 ]
  %313 = phi i32 [ %305, %310 ], [ %305, %303 ], [ %282, %287 ], [ %282, %278 ]
  %314 = load ptr, ptr %0, align 8, !tbaa !20
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 8
  %316 = load i32, ptr %315, align 8, !tbaa !81
  %317 = tail call i32 @llvm.umin.i32(i32 %313, i32 %316)
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %352, label %319

319:                                              ; preds = %311
  %320 = load ptr, ptr %21, align 8, !tbaa !34
  %321 = zext i32 %312 to i64
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 %321
  %323 = sub i32 %316, %317
  store i32 %323, ptr %315, align 8, !tbaa !81
  %324 = load ptr, ptr %314, align 8, !tbaa !82
  %325 = zext i32 %317 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %322, ptr align 1 %324, i64 %325, i1 false)
  %326 = getelementptr inbounds nuw i8, ptr %314, i64 56
  %327 = load ptr, ptr %326, align 8, !tbaa !19
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 48
  %329 = load i32, ptr %328, align 8, !tbaa !30
  switch i32 %329, label %338 [
    i32 1, label %330
    i32 2, label %334
  ]

330:                                              ; preds = %319
  %331 = getelementptr inbounds nuw i8, ptr %314, i64 96
  %332 = load i64, ptr %331, align 8, !tbaa !59
  %333 = tail call i64 @adler32(i64 noundef %332, ptr noundef %322, i32 noundef %317) #12
  store i64 %333, ptr %331, align 8, !tbaa !59
  br label %338

334:                                              ; preds = %319
  %335 = getelementptr inbounds nuw i8, ptr %314, i64 96
  %336 = load i64, ptr %335, align 8, !tbaa !59
  %337 = tail call i64 @crc32(i64 noundef %336, ptr noundef %322, i32 noundef %317) #12
  store i64 %337, ptr %335, align 8, !tbaa !59
  br label %338

338:                                              ; preds = %319, %330, %334
  %339 = load ptr, ptr %314, align 8, !tbaa !82
  %340 = getelementptr inbounds nuw i8, ptr %339, i64 %325
  store ptr %340, ptr %314, align 8, !tbaa !82
  %341 = getelementptr inbounds nuw i8, ptr %314, i64 16
  %342 = load i64, ptr %341, align 8, !tbaa !53
  %343 = add i64 %342, %325
  store i64 %343, ptr %341, align 8, !tbaa !53
  %344 = load i32, ptr %15, align 4, !tbaa !73
  %345 = add i32 %344, %317
  store i32 %345, ptr %15, align 4, !tbaa !73
  %346 = load i32, ptr %6, align 8, !tbaa !32
  %347 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %348 = load i32, ptr %347, align 4, !tbaa !76
  %349 = sub i32 %346, %348
  %350 = tail call i32 @llvm.umin.i32(i32 %317, i32 %349)
  %351 = add i32 %350, %348
  store i32 %351, ptr %347, align 4, !tbaa !76
  br label %352

352:                                              ; preds = %338, %311
  %353 = phi i32 [ %345, %338 ], [ %312, %311 ]
  %354 = load i64, ptr %264, align 8, !tbaa !38
  %355 = zext i32 %353 to i64
  %356 = icmp ult i64 %354, %355
  br i1 %356, label %357, label %358

357:                                              ; preds = %352
  store i64 %355, ptr %264, align 8, !tbaa !38
  br label %358

358:                                              ; preds = %357, %352
  %359 = load i32, ptr %14, align 4, !tbaa !100
  %360 = add i32 %359, 42
  %361 = lshr i32 %360, 3
  %362 = load i64, ptr %3, align 8, !tbaa !41
  %363 = zext nneg i32 %361 to i64
  %364 = sub i64 %362, %363
  %365 = tail call i64 @llvm.umin.i64(i64 %364, i64 65535)
  %366 = trunc nuw nsw i64 %365 to i32
  %367 = load i64, ptr %16, align 8, !tbaa !74
  %368 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %355, i64 %367), !nosanitize !57
  %369 = extractvalue { i64, i1 } %368, 1, !nosanitize !57
  br i1 %369, label %36, label %370, !prof !58, !nosanitize !57

370:                                              ; preds = %358
  %371 = load i32, ptr %6, align 8, !tbaa !32
  %372 = tail call i32 @llvm.umin.i32(i32 %371, i32 %366)
  %373 = extractvalue { i64, i1 } %368, 0, !nosanitize !57
  %374 = trunc i64 %373 to i32
  %375 = icmp ugt i32 %372, %374
  br i1 %375, label %376, label %385

376:                                              ; preds = %370
  %377 = icmp ne i32 %374, 0
  %378 = or i1 %17, %377
  %379 = and i1 %18, %378
  br i1 %379, label %380, label %441

380:                                              ; preds = %376
  %381 = load ptr, ptr %0, align 8, !tbaa !20
  %382 = getelementptr inbounds nuw i8, ptr %381, i64 8
  %383 = load i32, ptr %382, align 8, !tbaa !81
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %441

385:                                              ; preds = %380, %370
  %386 = tail call i32 @llvm.umin.i32(i32 %366, i32 %374)
  br i1 %17, label %387, label %395

387:                                              ; preds = %385
  %388 = load ptr, ptr %0, align 8, !tbaa !20
  %389 = getelementptr inbounds nuw i8, ptr %388, i64 8
  %390 = load i32, ptr %389, align 8, !tbaa !81
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %387
  %393 = icmp uge i32 %366, %374
  %394 = zext i1 %393 to i32
  br label %395

395:                                              ; preds = %392, %387, %385
  %396 = phi i32 [ 0, %387 ], [ 0, %385 ], [ %394, %392 ]
  %397 = load ptr, ptr %21, align 8, !tbaa !34
  %398 = getelementptr inbounds i8, ptr %397, i64 %367
  %399 = zext nneg i32 %386 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %398, i64 noundef %399, i32 noundef %396) #12
  %400 = load i64, ptr %16, align 8, !tbaa !74
  %401 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %400, i64 %399), !nosanitize !57
  %402 = extractvalue { i64, i1 } %401, 1, !nosanitize !57
  br i1 %402, label %139, label %403, !prof !58, !nosanitize !57

403:                                              ; preds = %395
  %404 = extractvalue { i64, i1 } %401, 0, !nosanitize !57
  store i64 %404, ptr %16, align 8, !tbaa !74
  %405 = load ptr, ptr %0, align 8, !tbaa !20
  %406 = getelementptr inbounds nuw i8, ptr %405, i64 56
  %407 = load ptr, ptr %406, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %407) #12
  %408 = getelementptr inbounds nuw i8, ptr %407, i64 40
  %409 = load i64, ptr %408, align 8, !tbaa !55
  %410 = getelementptr inbounds nuw i8, ptr %405, i64 32
  %411 = load i32, ptr %410, align 8, !tbaa !106
  %412 = zext i32 %411 to i64
  %413 = tail call i64 @llvm.umin.i64(i64 %409, i64 %412)
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %436, label %415

415:                                              ; preds = %403
  %416 = trunc nuw i64 %413 to i32
  %417 = getelementptr inbounds nuw i8, ptr %405, i64 24
  %418 = load ptr, ptr %417, align 8, !tbaa !105
  %419 = getelementptr inbounds nuw i8, ptr %407, i64 32
  %420 = load ptr, ptr %419, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %418, ptr align 1 %420, i64 %413, i1 false)
  %421 = load ptr, ptr %417, align 8, !tbaa !105
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 %413
  store ptr %422, ptr %417, align 8, !tbaa !105
  %423 = load ptr, ptr %419, align 8, !tbaa !56
  %424 = getelementptr inbounds nuw i8, ptr %423, i64 %413
  store ptr %424, ptr %419, align 8, !tbaa !56
  %425 = getelementptr inbounds nuw i8, ptr %405, i64 40
  %426 = load i64, ptr %425, align 8, !tbaa !107
  %427 = add i64 %426, %413
  store i64 %427, ptr %425, align 8, !tbaa !107
  %428 = load i32, ptr %410, align 8, !tbaa !106
  %429 = sub i32 %428, %416
  store i32 %429, ptr %410, align 8, !tbaa !106
  %430 = load i64, ptr %408, align 8, !tbaa !55
  %431 = sub i64 %430, %413
  store i64 %431, ptr %408, align 8, !tbaa !55
  %432 = icmp eq i64 %430, %413
  br i1 %432, label %433, label %436

433:                                              ; preds = %415
  %434 = getelementptr inbounds nuw i8, ptr %407, i64 16
  %435 = load ptr, ptr %434, align 8, !tbaa !40
  store ptr %435, ptr %419, align 8, !tbaa !56
  br label %436

436:                                              ; preds = %403, %415, %433
  %437 = icmp eq i32 %396, 0
  br i1 %437, label %441, label %438

438:                                              ; preds = %436, %268
  %439 = phi i32 [ 3, %268 ], [ 2, %436 ]
  %440 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %440, align 8, !tbaa !101
  br label %441

441:                                              ; preds = %438, %436, %380, %376, %275
  %442 = phi i32 [ 0, %380 ], [ 1, %275 ], [ 0, %376 ], [ 0, %436 ], [ %439, %438 ]
  ret i32 %442
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_huff(ptr noundef %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
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

24:                                               ; preds = %371, %2
  %25 = load i32, ptr %3, align 4, !tbaa !75
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %286

27:                                               ; preds = %24
  %28 = load i32, ptr %4, align 8, !tbaa !32
  %29 = add i32 %28, -262
  %30 = zext i32 %28 to i64
  %31 = insertelement <2 x i32> poison, i32 %28, i64 0
  %32 = shufflevector <2 x i32> %31, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %33

33:                                               ; preds = %244, %27
  %34 = phi i32 [ %192, %244 ], [ 0, %27 ]
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
  br i1 %44, label %151, label %45

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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
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
  br i1 %71, label %93, label %72

72:                                               ; preds = %62
  %73 = and i64 %70, 8589934584
  %74 = mul nsw i64 %73, -2
  %75 = getelementptr i8, ptr %67, i64 %74
  %76 = trunc i64 %73 to i32
  %77 = sub i32 %64, %76
  %78 = insertelement <8 x i32> poison, i32 %63, i64 0
  %79 = shufflevector <8 x i32> %78, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %80

80:                                               ; preds = %80, %72
  %81 = phi i64 [ 0, %72 ], [ %89, %80 ]
  %82 = mul i64 %81, -2
  %83 = getelementptr i8, ptr %67, i64 %82
  %84 = getelementptr inbounds i8, ptr %83, i64 -16
  %85 = load <8 x i16>, ptr %84, align 2, !tbaa !62
  %86 = zext <8 x i16> %85 to <8 x i32>
  %87 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %86, <8 x i32> %79)
  %88 = trunc nuw <8 x i32> %87 to <8 x i16>
  store <8 x i16> %88, ptr %84, align 2, !tbaa !62
  %89 = add nuw i64 %81, 8
  %90 = icmp eq i64 %89, %73
  br i1 %90, label %91, label %80, !llvm.loop !130

91:                                               ; preds = %80
  %92 = icmp eq i64 %70, %73
  br i1 %92, label %106, label %93

93:                                               ; preds = %62, %91
  %94 = phi ptr [ %67, %62 ], [ %75, %91 ]
  %95 = phi i32 [ %64, %62 ], [ %77, %91 ]
  br label %96

96:                                               ; preds = %93, %96
  %97 = phi ptr [ %99, %96 ], [ %94, %93 ]
  %98 = phi i32 [ %104, %96 ], [ %95, %93 ]
  %99 = getelementptr inbounds i8, ptr %97, i64 -2
  %100 = load i16, ptr %99, align 2, !tbaa !62
  %101 = zext i16 %100 to i32
  %102 = tail call i32 @llvm.usub.sat.i32(i32 %101, i32 %63)
  %103 = trunc nuw i32 %102 to i16
  store i16 %103, ptr %99, align 2, !tbaa !62
  %104 = add i32 %98, -1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %96, !llvm.loop !131

106:                                              ; preds = %96, %91
  %107 = load ptr, ptr %12, align 8, !tbaa !35
  %108 = zext i32 %63 to i64
  %109 = getelementptr inbounds nuw [2 x i8], ptr %107, i64 %108
  %110 = add i32 %63, -1
  %111 = zext i32 %110 to i64
  %112 = add nuw nsw i64 %111, 1
  %113 = icmp ult i32 %110, 7
  br i1 %113, label %135, label %114

114:                                              ; preds = %106
  %115 = and i64 %112, 8589934584
  %116 = mul nsw i64 %115, -2
  %117 = getelementptr i8, ptr %109, i64 %116
  %118 = trunc i64 %115 to i32
  %119 = sub i32 %63, %118
  %120 = insertelement <8 x i32> poison, i32 %63, i64 0
  %121 = shufflevector <8 x i32> %120, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %122

122:                                              ; preds = %122, %114
  %123 = phi i64 [ 0, %114 ], [ %131, %122 ]
  %124 = mul i64 %123, -2
  %125 = getelementptr i8, ptr %109, i64 %124
  %126 = getelementptr inbounds i8, ptr %125, i64 -16
  %127 = load <8 x i16>, ptr %126, align 2, !tbaa !62
  %128 = zext <8 x i16> %127 to <8 x i32>
  %129 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %128, <8 x i32> %121)
  %130 = trunc nuw <8 x i32> %129 to <8 x i16>
  store <8 x i16> %130, ptr %126, align 2, !tbaa !62
  %131 = add nuw i64 %123, 8
  %132 = icmp eq i64 %131, %115
  br i1 %132, label %133, label %122, !llvm.loop !132

133:                                              ; preds = %122
  %134 = icmp eq i64 %112, %115
  br i1 %134, label %148, label %135

135:                                              ; preds = %106, %133
  %136 = phi ptr [ %109, %106 ], [ %117, %133 ]
  %137 = phi i32 [ %63, %106 ], [ %119, %133 ]
  br label %138

138:                                              ; preds = %135, %138
  %139 = phi ptr [ %141, %138 ], [ %136, %135 ]
  %140 = phi i32 [ %146, %138 ], [ %137, %135 ]
  %141 = getelementptr inbounds i8, ptr %139, i64 -2
  %142 = load i16, ptr %141, align 2, !tbaa !62
  %143 = zext i16 %142 to i32
  %144 = tail call i32 @llvm.usub.sat.i32(i32 %143, i32 %63)
  %145 = trunc nuw i32 %144 to i16
  store i16 %145, ptr %141, align 2, !tbaa !62
  %146 = add i32 %140, -1
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %138, !llvm.loop !133

148:                                              ; preds = %138, %133
  store i32 1, ptr %13, align 8, !tbaa !63
  %149 = add i32 %28, %41
  %150 = load i32, ptr %3, align 4, !tbaa !75
  br label %151

151:                                              ; preds = %148, %33
  %152 = phi i32 [ %150, %148 ], [ %34, %33 ]
  %153 = phi i32 [ %59, %148 ], [ %37, %33 ]
  %154 = phi i32 [ %149, %148 ], [ %41, %33 ]
  %155 = load ptr, ptr %0, align 8, !tbaa !20
  %156 = getelementptr inbounds nuw i8, ptr %155, i64 8
  %157 = load i32, ptr %156, align 8, !tbaa !81
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %249, label %159

159:                                              ; preds = %151
  %160 = load ptr, ptr %7, align 8, !tbaa !34
  %161 = zext i32 %153 to i64
  %162 = getelementptr inbounds nuw i8, ptr %160, i64 %161
  %163 = zext i32 %152 to i64
  %164 = getelementptr inbounds nuw i8, ptr %162, i64 %163
  %165 = tail call i32 @llvm.umin.i32(i32 %157, i32 %154)
  %166 = icmp eq i32 %154, 0
  br i1 %166, label %190, label %167

167:                                              ; preds = %159
  %168 = sub i32 %157, %165
  store i32 %168, ptr %156, align 8, !tbaa !81
  %169 = load ptr, ptr %155, align 8, !tbaa !82
  %170 = zext i32 %165 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %164, ptr align 1 %169, i64 %170, i1 false)
  %171 = getelementptr inbounds nuw i8, ptr %155, i64 56
  %172 = load ptr, ptr %171, align 8, !tbaa !19
  %173 = getelementptr inbounds nuw i8, ptr %172, i64 48
  %174 = load i32, ptr %173, align 8, !tbaa !30
  switch i32 %174, label %183 [
    i32 1, label %175
    i32 2, label %179
  ]

175:                                              ; preds = %167
  %176 = getelementptr inbounds nuw i8, ptr %155, i64 96
  %177 = load i64, ptr %176, align 8, !tbaa !59
  %178 = tail call i64 @adler32(i64 noundef %177, ptr noundef %164, i32 noundef %165) #12
  store i64 %178, ptr %176, align 8, !tbaa !59
  br label %183

179:                                              ; preds = %167
  %180 = getelementptr inbounds nuw i8, ptr %155, i64 96
  %181 = load i64, ptr %180, align 8, !tbaa !59
  %182 = tail call i64 @crc32(i64 noundef %181, ptr noundef %164, i32 noundef %165) #12
  store i64 %182, ptr %180, align 8, !tbaa !59
  br label %183

183:                                              ; preds = %179, %175, %167
  %184 = load ptr, ptr %155, align 8, !tbaa !82
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 %170
  store ptr %185, ptr %155, align 8, !tbaa !82
  %186 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %187 = load i64, ptr %186, align 8, !tbaa !53
  %188 = add i64 %187, %170
  store i64 %188, ptr %186, align 8, !tbaa !53
  %189 = load i32, ptr %3, align 4, !tbaa !75
  br label %190

190:                                              ; preds = %183, %159
  %191 = phi i32 [ %152, %159 ], [ %189, %183 ]
  %192 = add i32 %191, %165
  store i32 %192, ptr %3, align 4, !tbaa !75
  %193 = load i32, ptr %9, align 4, !tbaa !76
  %194 = add i32 %193, %192
  %195 = icmp ugt i32 %194, 2
  br i1 %195, label %196, label %242

196:                                              ; preds = %190
  %197 = load i32, ptr %6, align 4, !tbaa !73
  %198 = sub i32 %197, %193
  %199 = load ptr, ptr %7, align 8, !tbaa !34
  %200 = zext i32 %198 to i64
  %201 = getelementptr inbounds nuw i8, ptr %199, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !8
  %203 = zext i8 %202 to i32
  store i32 %203, ptr %14, align 8, !tbaa !80
  %204 = load i32, ptr %15, align 8, !tbaa !51
  %205 = shl i32 %203, %204
  %206 = add i32 %198, 1
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds nuw i8, ptr %199, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !8
  %210 = zext i8 %209 to i32
  %211 = xor i32 %205, %210
  %212 = load i32, ptr %16, align 4, !tbaa !50
  %213 = and i32 %211, %212
  store i32 %213, ptr %14, align 8, !tbaa !80
  br label %214

214:                                              ; preds = %219, %196
  %215 = phi i32 [ %227, %219 ], [ %213, %196 ]
  %216 = phi i32 [ %239, %219 ], [ %193, %196 ]
  %217 = phi i32 [ %238, %219 ], [ %198, %196 ]
  %218 = icmp eq i32 %216, 0
  br i1 %218, label %242, label %219

219:                                              ; preds = %214
  %220 = shl i32 %215, %204
  %221 = add i32 %217, 2
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds nuw i8, ptr %199, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !8
  %225 = zext i8 %224 to i32
  %226 = xor i32 %220, %225
  %227 = and i32 %226, %212
  store i32 %227, ptr %14, align 8, !tbaa !80
  %228 = load ptr, ptr %11, align 8, !tbaa !37
  %229 = zext i32 %227 to i64
  %230 = getelementptr inbounds nuw [2 x i8], ptr %228, i64 %229
  %231 = load i16, ptr %230, align 2, !tbaa !62
  %232 = load ptr, ptr %12, align 8, !tbaa !35
  %233 = load i32, ptr %17, align 8, !tbaa !33
  %234 = and i32 %233, %217
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds nuw [2 x i8], ptr %232, i64 %235
  store i16 %231, ptr %236, align 2, !tbaa !62
  %237 = trunc i32 %217 to i16
  store i16 %237, ptr %230, align 2, !tbaa !62
  %238 = add i32 %217, 1
  %239 = add i32 %216, -1
  store i32 %239, ptr %9, align 4, !tbaa !76
  %240 = add i32 %239, %192
  %241 = icmp ult i32 %240, 3
  br i1 %241, label %242, label %214, !llvm.loop !91

242:                                              ; preds = %219, %214, %190
  %243 = icmp ult i32 %192, 262
  br i1 %243, label %244, label %249

244:                                              ; preds = %242
  %245 = load ptr, ptr %0, align 8, !tbaa !20
  %246 = getelementptr inbounds nuw i8, ptr %245, i64 8
  %247 = load i32, ptr %246, align 8, !tbaa !81
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %33, !llvm.loop !92

249:                                              ; preds = %244, %242, %151
  %250 = phi i32 [ %192, %244 ], [ %192, %242 ], [ %152, %151 ]
  %251 = load i64, ptr %18, align 8, !tbaa !38
  %252 = load i64, ptr %5, align 8, !tbaa !61
  %253 = icmp ult i64 %251, %252
  br i1 %253, label %254, label %281

254:                                              ; preds = %249
  %255 = load i32, ptr %6, align 4, !tbaa !73
  %256 = zext i32 %255 to i64
  %257 = zext i32 %250 to i64
  %258 = add nuw nsw i64 %257, %256
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
  %276 = load i64, ptr %18, align 8, !tbaa !38
  %277 = add i64 %276, %272
  br label %278

278:                                              ; preds = %269, %260
  %279 = phi i64 [ %265, %260 ], [ %277, %269 ]
  store i64 %279, ptr %18, align 8, !tbaa !38
  %280 = load i32, ptr %3, align 4, !tbaa !75
  br label %281

281:                                              ; preds = %249, %266, %278
  %282 = phi i32 [ %250, %249 ], [ %250, %266 ], [ %280, %278 ]
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = icmp eq i32 %1, 0
  br i1 %285, label %485, label %372

286:                                              ; preds = %281, %24
  store i32 0, ptr %19, align 8, !tbaa !78
  %287 = load ptr, ptr %7, align 8, !tbaa !34
  %288 = load i32, ptr %6, align 4, !tbaa !73
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds nuw i8, ptr %287, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !8
  %292 = load ptr, ptr %20, align 8, !tbaa !44
  %293 = load i32, ptr %21, align 4, !tbaa !134
  %294 = add i32 %293, 1
  store i32 %294, ptr %21, align 4, !tbaa !134
  %295 = zext i32 %293 to i64
  %296 = getelementptr inbounds nuw i8, ptr %292, i64 %295
  store i8 0, ptr %296, align 1, !tbaa !8
  %297 = load ptr, ptr %20, align 8, !tbaa !44
  %298 = load i32, ptr %21, align 4, !tbaa !134
  %299 = add i32 %298, 1
  store i32 %299, ptr %21, align 4, !tbaa !134
  %300 = zext i32 %298 to i64
  %301 = getelementptr inbounds nuw i8, ptr %297, i64 %300
  store i8 0, ptr %301, align 1, !tbaa !8
  %302 = load ptr, ptr %20, align 8, !tbaa !44
  %303 = load i32, ptr %21, align 4, !tbaa !134
  %304 = add i32 %303, 1
  store i32 %304, ptr %21, align 4, !tbaa !134
  %305 = zext i32 %303 to i64
  %306 = getelementptr inbounds nuw i8, ptr %302, i64 %305
  store i8 %291, ptr %306, align 1, !tbaa !8
  %307 = zext i8 %291 to i64
  %308 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %307
  %309 = load i16, ptr %308, align 4, !tbaa !8
  %310 = add i16 %309, 1
  store i16 %310, ptr %308, align 4, !tbaa !8
  %311 = load i32, ptr %21, align 4, !tbaa !134
  %312 = load i32, ptr %23, align 8, !tbaa !45
  %313 = icmp eq i32 %311, %312
  %314 = load i32, ptr %3, align 4, !tbaa !75
  %315 = add i32 %314, -1
  store i32 %315, ptr %3, align 4, !tbaa !75
  %316 = load i32, ptr %6, align 4, !tbaa !73
  %317 = add i32 %316, 1
  store i32 %317, ptr %6, align 4, !tbaa !73
  br i1 %313, label %318, label %371

318:                                              ; preds = %286
  %319 = load i64, ptr %8, align 8, !tbaa !74
  %320 = icmp sgt i64 %319, -1
  br i1 %320, label %321, label %325

321:                                              ; preds = %318
  %322 = load ptr, ptr %7, align 8, !tbaa !34
  %323 = and i64 %319, 4294967295
  %324 = getelementptr inbounds nuw i8, ptr %322, i64 %323
  br label %325

325:                                              ; preds = %318, %321
  %326 = phi ptr [ %324, %321 ], [ null, %318 ]
  %327 = zext i32 %317 to i64
  %328 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %327, i64 %319), !nosanitize !57
  %329 = extractvalue { i64, i1 } %328, 1, !nosanitize !57
  br i1 %329, label %330, label %331, !prof !58, !nosanitize !57

330:                                              ; preds = %325, %438, %381
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
  unreachable, !nosanitize !57

331:                                              ; preds = %325
  %332 = extractvalue { i64, i1 } %328, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %326, i64 noundef %332, i32 noundef 0) #12
  %333 = load i32, ptr %6, align 4, !tbaa !73
  %334 = zext i32 %333 to i64
  store i64 %334, ptr %8, align 8, !tbaa !74
  %335 = load ptr, ptr %0, align 8, !tbaa !20
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 56
  %337 = load ptr, ptr %336, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %337) #12
  %338 = getelementptr inbounds nuw i8, ptr %337, i64 40
  %339 = load i64, ptr %338, align 8, !tbaa !55
  %340 = getelementptr inbounds nuw i8, ptr %335, i64 32
  %341 = load i32, ptr %340, align 8, !tbaa !106
  %342 = zext i32 %341 to i64
  %343 = tail call i64 @llvm.umin.i64(i64 %339, i64 %342)
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %366, label %345

345:                                              ; preds = %331
  %346 = trunc nuw i64 %343 to i32
  %347 = getelementptr inbounds nuw i8, ptr %335, i64 24
  %348 = load ptr, ptr %347, align 8, !tbaa !105
  %349 = getelementptr inbounds nuw i8, ptr %337, i64 32
  %350 = load ptr, ptr %349, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %348, ptr align 1 %350, i64 %343, i1 false)
  %351 = load ptr, ptr %347, align 8, !tbaa !105
  %352 = getelementptr inbounds nuw i8, ptr %351, i64 %343
  store ptr %352, ptr %347, align 8, !tbaa !105
  %353 = load ptr, ptr %349, align 8, !tbaa !56
  %354 = getelementptr inbounds nuw i8, ptr %353, i64 %343
  store ptr %354, ptr %349, align 8, !tbaa !56
  %355 = getelementptr inbounds nuw i8, ptr %335, i64 40
  %356 = load i64, ptr %355, align 8, !tbaa !107
  %357 = add i64 %356, %343
  store i64 %357, ptr %355, align 8, !tbaa !107
  %358 = load i32, ptr %340, align 8, !tbaa !106
  %359 = sub i32 %358, %346
  store i32 %359, ptr %340, align 8, !tbaa !106
  %360 = load i64, ptr %338, align 8, !tbaa !55
  %361 = sub i64 %360, %343
  store i64 %361, ptr %338, align 8, !tbaa !55
  %362 = icmp eq i64 %360, %343
  br i1 %362, label %363, label %366

363:                                              ; preds = %345
  %364 = getelementptr inbounds nuw i8, ptr %337, i64 16
  %365 = load ptr, ptr %364, align 8, !tbaa !40
  store ptr %365, ptr %349, align 8, !tbaa !56
  br label %366

366:                                              ; preds = %331, %345, %363
  %367 = load ptr, ptr %0, align 8, !tbaa !20
  %368 = getelementptr inbounds nuw i8, ptr %367, i64 32
  %369 = load i32, ptr %368, align 8, !tbaa !106
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %485, label %371

371:                                              ; preds = %366, %286
  br label %24

372:                                              ; preds = %284
  store i32 0, ptr %9, align 4, !tbaa !76
  %373 = icmp eq i32 %1, 4
  br i1 %373, label %374, label %428

374:                                              ; preds = %372
  %375 = load i64, ptr %8, align 8, !tbaa !74
  %376 = icmp sgt i64 %375, -1
  br i1 %376, label %377, label %381

377:                                              ; preds = %374
  %378 = load ptr, ptr %7, align 8, !tbaa !34
  %379 = and i64 %375, 4294967295
  %380 = getelementptr inbounds nuw i8, ptr %378, i64 %379
  br label %381

381:                                              ; preds = %374, %377
  %382 = phi ptr [ %380, %377 ], [ null, %374 ]
  %383 = load i32, ptr %6, align 4, !tbaa !73
  %384 = zext i32 %383 to i64
  %385 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %384, i64 %375), !nosanitize !57
  %386 = extractvalue { i64, i1 } %385, 1, !nosanitize !57
  br i1 %386, label %330, label %387, !prof !58, !nosanitize !57

387:                                              ; preds = %381
  %388 = extractvalue { i64, i1 } %385, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %382, i64 noundef %388, i32 noundef 1) #12
  %389 = load i32, ptr %6, align 4, !tbaa !73
  %390 = zext i32 %389 to i64
  store i64 %390, ptr %8, align 8, !tbaa !74
  %391 = load ptr, ptr %0, align 8, !tbaa !20
  %392 = getelementptr inbounds nuw i8, ptr %391, i64 56
  %393 = load ptr, ptr %392, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %393) #12
  %394 = getelementptr inbounds nuw i8, ptr %393, i64 40
  %395 = load i64, ptr %394, align 8, !tbaa !55
  %396 = getelementptr inbounds nuw i8, ptr %391, i64 32
  %397 = load i32, ptr %396, align 8, !tbaa !106
  %398 = zext i32 %397 to i64
  %399 = tail call i64 @llvm.umin.i64(i64 %395, i64 %398)
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %422, label %401

401:                                              ; preds = %387
  %402 = trunc nuw i64 %399 to i32
  %403 = getelementptr inbounds nuw i8, ptr %391, i64 24
  %404 = load ptr, ptr %403, align 8, !tbaa !105
  %405 = getelementptr inbounds nuw i8, ptr %393, i64 32
  %406 = load ptr, ptr %405, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %404, ptr align 1 %406, i64 %399, i1 false)
  %407 = load ptr, ptr %403, align 8, !tbaa !105
  %408 = getelementptr inbounds nuw i8, ptr %407, i64 %399
  store ptr %408, ptr %403, align 8, !tbaa !105
  %409 = load ptr, ptr %405, align 8, !tbaa !56
  %410 = getelementptr inbounds nuw i8, ptr %409, i64 %399
  store ptr %410, ptr %405, align 8, !tbaa !56
  %411 = getelementptr inbounds nuw i8, ptr %391, i64 40
  %412 = load i64, ptr %411, align 8, !tbaa !107
  %413 = add i64 %412, %399
  store i64 %413, ptr %411, align 8, !tbaa !107
  %414 = load i32, ptr %396, align 8, !tbaa !106
  %415 = sub i32 %414, %402
  store i32 %415, ptr %396, align 8, !tbaa !106
  %416 = load i64, ptr %394, align 8, !tbaa !55
  %417 = sub i64 %416, %399
  store i64 %417, ptr %394, align 8, !tbaa !55
  %418 = icmp eq i64 %416, %399
  br i1 %418, label %419, label %422

419:                                              ; preds = %401
  %420 = getelementptr inbounds nuw i8, ptr %393, i64 16
  %421 = load ptr, ptr %420, align 8, !tbaa !40
  store ptr %421, ptr %405, align 8, !tbaa !56
  br label %422

422:                                              ; preds = %387, %401, %419
  %423 = load ptr, ptr %0, align 8, !tbaa !20
  %424 = getelementptr inbounds nuw i8, ptr %423, i64 32
  %425 = load i32, ptr %424, align 8, !tbaa !106
  %426 = icmp eq i32 %425, 0
  %427 = select i1 %426, i32 2, i32 3
  br label %485

428:                                              ; preds = %372
  %429 = load i32, ptr %21, align 4, !tbaa !134
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %484, label %431

431:                                              ; preds = %428
  %432 = load i64, ptr %8, align 8, !tbaa !74
  %433 = icmp sgt i64 %432, -1
  br i1 %433, label %434, label %438

434:                                              ; preds = %431
  %435 = load ptr, ptr %7, align 8, !tbaa !34
  %436 = and i64 %432, 4294967295
  %437 = getelementptr inbounds nuw i8, ptr %435, i64 %436
  br label %438

438:                                              ; preds = %431, %434
  %439 = phi ptr [ %437, %434 ], [ null, %431 ]
  %440 = load i32, ptr %6, align 4, !tbaa !73
  %441 = zext i32 %440 to i64
  %442 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %441, i64 %432), !nosanitize !57
  %443 = extractvalue { i64, i1 } %442, 1, !nosanitize !57
  br i1 %443, label %330, label %444, !prof !58, !nosanitize !57

444:                                              ; preds = %438
  %445 = extractvalue { i64, i1 } %442, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %439, i64 noundef %445, i32 noundef 0) #12
  %446 = load i32, ptr %6, align 4, !tbaa !73
  %447 = zext i32 %446 to i64
  store i64 %447, ptr %8, align 8, !tbaa !74
  %448 = load ptr, ptr %0, align 8, !tbaa !20
  %449 = getelementptr inbounds nuw i8, ptr %448, i64 56
  %450 = load ptr, ptr %449, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %450) #12
  %451 = getelementptr inbounds nuw i8, ptr %450, i64 40
  %452 = load i64, ptr %451, align 8, !tbaa !55
  %453 = getelementptr inbounds nuw i8, ptr %448, i64 32
  %454 = load i32, ptr %453, align 8, !tbaa !106
  %455 = zext i32 %454 to i64
  %456 = tail call i64 @llvm.umin.i64(i64 %452, i64 %455)
  %457 = icmp eq i64 %456, 0
  br i1 %457, label %479, label %458

458:                                              ; preds = %444
  %459 = trunc nuw i64 %456 to i32
  %460 = getelementptr inbounds nuw i8, ptr %448, i64 24
  %461 = load ptr, ptr %460, align 8, !tbaa !105
  %462 = getelementptr inbounds nuw i8, ptr %450, i64 32
  %463 = load ptr, ptr %462, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %461, ptr align 1 %463, i64 %456, i1 false)
  %464 = load ptr, ptr %460, align 8, !tbaa !105
  %465 = getelementptr inbounds nuw i8, ptr %464, i64 %456
  store ptr %465, ptr %460, align 8, !tbaa !105
  %466 = load ptr, ptr %462, align 8, !tbaa !56
  %467 = getelementptr inbounds nuw i8, ptr %466, i64 %456
  store ptr %467, ptr %462, align 8, !tbaa !56
  %468 = getelementptr inbounds nuw i8, ptr %448, i64 40
  %469 = load i64, ptr %468, align 8, !tbaa !107
  %470 = add i64 %469, %456
  store i64 %470, ptr %468, align 8, !tbaa !107
  %471 = load i32, ptr %453, align 8, !tbaa !106
  %472 = sub i32 %471, %459
  store i32 %472, ptr %453, align 8, !tbaa !106
  %473 = load i64, ptr %451, align 8, !tbaa !55
  %474 = sub i64 %473, %456
  store i64 %474, ptr %451, align 8, !tbaa !55
  %475 = icmp eq i64 %473, %456
  br i1 %475, label %476, label %479

476:                                              ; preds = %458
  %477 = getelementptr inbounds nuw i8, ptr %450, i64 16
  %478 = load ptr, ptr %477, align 8, !tbaa !40
  store ptr %478, ptr %462, align 8, !tbaa !56
  br label %479

479:                                              ; preds = %444, %458, %476
  %480 = load ptr, ptr %0, align 8, !tbaa !20
  %481 = getelementptr inbounds nuw i8, ptr %480, i64 32
  %482 = load i32, ptr %481, align 8, !tbaa !106
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %485, label %484

484:                                              ; preds = %479, %428
  br label %485

485:                                              ; preds = %366, %479, %422, %284, %484
  %486 = phi i32 [ 0, %284 ], [ %427, %422 ], [ 0, %479 ], [ 1, %484 ], [ 0, %366 ]
  ret i32 %486
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_rle(ptr noundef %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
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

27:                                               ; preds = %417, %2
  %28 = load i32, ptr %3, align 4, !tbaa !75
  %29 = icmp ult i32 %28, 259
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  store i32 0, ptr %4, align 8, !tbaa !78
  %31 = load i32, ptr %7, align 4, !tbaa !73
  br label %295

32:                                               ; preds = %27
  %33 = load i32, ptr %5, align 8, !tbaa !32
  %34 = add i32 %33, -262
  %35 = zext i32 %33 to i64
  %36 = insertelement <2 x i32> poison, i32 %33, i64 0
  %37 = shufflevector <2 x i32> %36, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %38

38:                                               ; preds = %249, %32
  %39 = phi i32 [ %197, %249 ], [ %28, %32 ]
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
  br i1 %49, label %156, label %50

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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
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
  br i1 %76, label %98, label %77

77:                                               ; preds = %67
  %78 = and i64 %75, 8589934584
  %79 = mul nsw i64 %78, -2
  %80 = getelementptr i8, ptr %72, i64 %79
  %81 = trunc i64 %78 to i32
  %82 = sub i32 %69, %81
  %83 = insertelement <8 x i32> poison, i32 %68, i64 0
  %84 = shufflevector <8 x i32> %83, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %85

85:                                               ; preds = %85, %77
  %86 = phi i64 [ 0, %77 ], [ %94, %85 ]
  %87 = mul i64 %86, -2
  %88 = getelementptr i8, ptr %72, i64 %87
  %89 = getelementptr inbounds i8, ptr %88, i64 -16
  %90 = load <8 x i16>, ptr %89, align 2, !tbaa !62
  %91 = zext <8 x i16> %90 to <8 x i32>
  %92 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %91, <8 x i32> %84)
  %93 = trunc nuw <8 x i32> %92 to <8 x i16>
  store <8 x i16> %93, ptr %89, align 2, !tbaa !62
  %94 = add nuw i64 %86, 8
  %95 = icmp eq i64 %94, %78
  br i1 %95, label %96, label %85, !llvm.loop !135

96:                                               ; preds = %85
  %97 = icmp eq i64 %75, %78
  br i1 %97, label %111, label %98

98:                                               ; preds = %67, %96
  %99 = phi ptr [ %72, %67 ], [ %80, %96 ]
  %100 = phi i32 [ %69, %67 ], [ %82, %96 ]
  br label %101

101:                                              ; preds = %98, %101
  %102 = phi ptr [ %104, %101 ], [ %99, %98 ]
  %103 = phi i32 [ %109, %101 ], [ %100, %98 ]
  %104 = getelementptr inbounds i8, ptr %102, i64 -2
  %105 = load i16, ptr %104, align 2, !tbaa !62
  %106 = zext i16 %105 to i32
  %107 = tail call i32 @llvm.usub.sat.i32(i32 %106, i32 %68)
  %108 = trunc nuw i32 %107 to i16
  store i16 %108, ptr %104, align 2, !tbaa !62
  %109 = add i32 %103, -1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %101, !llvm.loop !136

111:                                              ; preds = %101, %96
  %112 = load ptr, ptr %13, align 8, !tbaa !35
  %113 = zext i32 %68 to i64
  %114 = getelementptr inbounds nuw [2 x i8], ptr %112, i64 %113
  %115 = add i32 %68, -1
  %116 = zext i32 %115 to i64
  %117 = add nuw nsw i64 %116, 1
  %118 = icmp ult i32 %115, 7
  br i1 %118, label %140, label %119

119:                                              ; preds = %111
  %120 = and i64 %117, 8589934584
  %121 = mul nsw i64 %120, -2
  %122 = getelementptr i8, ptr %114, i64 %121
  %123 = trunc i64 %120 to i32
  %124 = sub i32 %68, %123
  %125 = insertelement <8 x i32> poison, i32 %68, i64 0
  %126 = shufflevector <8 x i32> %125, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %127

127:                                              ; preds = %127, %119
  %128 = phi i64 [ 0, %119 ], [ %136, %127 ]
  %129 = mul i64 %128, -2
  %130 = getelementptr i8, ptr %114, i64 %129
  %131 = getelementptr inbounds i8, ptr %130, i64 -16
  %132 = load <8 x i16>, ptr %131, align 2, !tbaa !62
  %133 = zext <8 x i16> %132 to <8 x i32>
  %134 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %133, <8 x i32> %126)
  %135 = trunc nuw <8 x i32> %134 to <8 x i16>
  store <8 x i16> %135, ptr %131, align 2, !tbaa !62
  %136 = add nuw i64 %128, 8
  %137 = icmp eq i64 %136, %120
  br i1 %137, label %138, label %127, !llvm.loop !137

138:                                              ; preds = %127
  %139 = icmp eq i64 %117, %120
  br i1 %139, label %153, label %140

140:                                              ; preds = %111, %138
  %141 = phi ptr [ %114, %111 ], [ %122, %138 ]
  %142 = phi i32 [ %68, %111 ], [ %124, %138 ]
  br label %143

143:                                              ; preds = %140, %143
  %144 = phi ptr [ %146, %143 ], [ %141, %140 ]
  %145 = phi i32 [ %151, %143 ], [ %142, %140 ]
  %146 = getelementptr inbounds i8, ptr %144, i64 -2
  %147 = load i16, ptr %146, align 2, !tbaa !62
  %148 = zext i16 %147 to i32
  %149 = tail call i32 @llvm.usub.sat.i32(i32 %148, i32 %68)
  %150 = trunc nuw i32 %149 to i16
  store i16 %150, ptr %146, align 2, !tbaa !62
  %151 = add i32 %145, -1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %143, !llvm.loop !138

153:                                              ; preds = %143, %138
  store i32 1, ptr %14, align 8, !tbaa !63
  %154 = add i32 %33, %46
  %155 = load i32, ptr %3, align 4, !tbaa !75
  br label %156

156:                                              ; preds = %153, %38
  %157 = phi i32 [ %155, %153 ], [ %39, %38 ]
  %158 = phi i32 [ %64, %153 ], [ %42, %38 ]
  %159 = phi i32 [ %154, %153 ], [ %46, %38 ]
  %160 = load ptr, ptr %0, align 8, !tbaa !20
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 8
  %162 = load i32, ptr %161, align 8, !tbaa !81
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %254, label %164

164:                                              ; preds = %156
  %165 = load ptr, ptr %8, align 8, !tbaa !34
  %166 = zext i32 %158 to i64
  %167 = getelementptr inbounds nuw i8, ptr %165, i64 %166
  %168 = zext i32 %157 to i64
  %169 = getelementptr inbounds nuw i8, ptr %167, i64 %168
  %170 = tail call i32 @llvm.umin.i32(i32 %162, i32 %159)
  %171 = icmp eq i32 %159, 0
  br i1 %171, label %195, label %172

172:                                              ; preds = %164
  %173 = sub i32 %162, %170
  store i32 %173, ptr %161, align 8, !tbaa !81
  %174 = load ptr, ptr %160, align 8, !tbaa !82
  %175 = zext i32 %170 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %169, ptr align 1 %174, i64 %175, i1 false)
  %176 = getelementptr inbounds nuw i8, ptr %160, i64 56
  %177 = load ptr, ptr %176, align 8, !tbaa !19
  %178 = getelementptr inbounds nuw i8, ptr %177, i64 48
  %179 = load i32, ptr %178, align 8, !tbaa !30
  switch i32 %179, label %188 [
    i32 1, label %180
    i32 2, label %184
  ]

180:                                              ; preds = %172
  %181 = getelementptr inbounds nuw i8, ptr %160, i64 96
  %182 = load i64, ptr %181, align 8, !tbaa !59
  %183 = tail call i64 @adler32(i64 noundef %182, ptr noundef %169, i32 noundef %170) #12
  store i64 %183, ptr %181, align 8, !tbaa !59
  br label %188

184:                                              ; preds = %172
  %185 = getelementptr inbounds nuw i8, ptr %160, i64 96
  %186 = load i64, ptr %185, align 8, !tbaa !59
  %187 = tail call i64 @crc32(i64 noundef %186, ptr noundef %169, i32 noundef %170) #12
  store i64 %187, ptr %185, align 8, !tbaa !59
  br label %188

188:                                              ; preds = %184, %180, %172
  %189 = load ptr, ptr %160, align 8, !tbaa !82
  %190 = getelementptr inbounds nuw i8, ptr %189, i64 %175
  store ptr %190, ptr %160, align 8, !tbaa !82
  %191 = getelementptr inbounds nuw i8, ptr %160, i64 16
  %192 = load i64, ptr %191, align 8, !tbaa !53
  %193 = add i64 %192, %175
  store i64 %193, ptr %191, align 8, !tbaa !53
  %194 = load i32, ptr %3, align 4, !tbaa !75
  br label %195

195:                                              ; preds = %188, %164
  %196 = phi i32 [ %157, %164 ], [ %194, %188 ]
  %197 = add i32 %196, %170
  store i32 %197, ptr %3, align 4, !tbaa !75
  %198 = load i32, ptr %10, align 4, !tbaa !76
  %199 = add i32 %198, %197
  %200 = icmp ugt i32 %199, 2
  br i1 %200, label %201, label %247

201:                                              ; preds = %195
  %202 = load i32, ptr %7, align 4, !tbaa !73
  %203 = sub i32 %202, %198
  %204 = load ptr, ptr %8, align 8, !tbaa !34
  %205 = zext i32 %203 to i64
  %206 = getelementptr inbounds nuw i8, ptr %204, i64 %205
  %207 = load i8, ptr %206, align 1, !tbaa !8
  %208 = zext i8 %207 to i32
  store i32 %208, ptr %15, align 8, !tbaa !80
  %209 = load i32, ptr %16, align 8, !tbaa !51
  %210 = shl i32 %208, %209
  %211 = add i32 %203, 1
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds nuw i8, ptr %204, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !8
  %215 = zext i8 %214 to i32
  %216 = xor i32 %210, %215
  %217 = load i32, ptr %17, align 4, !tbaa !50
  %218 = and i32 %216, %217
  store i32 %218, ptr %15, align 8, !tbaa !80
  br label %219

219:                                              ; preds = %224, %201
  %220 = phi i32 [ %232, %224 ], [ %218, %201 ]
  %221 = phi i32 [ %244, %224 ], [ %198, %201 ]
  %222 = phi i32 [ %243, %224 ], [ %203, %201 ]
  %223 = icmp eq i32 %221, 0
  br i1 %223, label %247, label %224

224:                                              ; preds = %219
  %225 = shl i32 %220, %209
  %226 = add i32 %222, 2
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds nuw i8, ptr %204, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !8
  %230 = zext i8 %229 to i32
  %231 = xor i32 %225, %230
  %232 = and i32 %231, %217
  store i32 %232, ptr %15, align 8, !tbaa !80
  %233 = load ptr, ptr %12, align 8, !tbaa !37
  %234 = zext i32 %232 to i64
  %235 = getelementptr inbounds nuw [2 x i8], ptr %233, i64 %234
  %236 = load i16, ptr %235, align 2, !tbaa !62
  %237 = load ptr, ptr %13, align 8, !tbaa !35
  %238 = load i32, ptr %18, align 8, !tbaa !33
  %239 = and i32 %238, %222
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds nuw [2 x i8], ptr %237, i64 %240
  store i16 %236, ptr %241, align 2, !tbaa !62
  %242 = trunc i32 %222 to i16
  store i16 %242, ptr %235, align 2, !tbaa !62
  %243 = add i32 %222, 1
  %244 = add i32 %221, -1
  store i32 %244, ptr %10, align 4, !tbaa !76
  %245 = add i32 %244, %197
  %246 = icmp ult i32 %245, 3
  br i1 %246, label %247, label %219, !llvm.loop !91

247:                                              ; preds = %224, %219, %195
  %248 = icmp ult i32 %197, 262
  br i1 %248, label %249, label %254

249:                                              ; preds = %247
  %250 = load ptr, ptr %0, align 8, !tbaa !20
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 8
  %252 = load i32, ptr %251, align 8, !tbaa !81
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %38, !llvm.loop !92

254:                                              ; preds = %249, %247, %156
  %255 = phi i32 [ %197, %249 ], [ %197, %247 ], [ %157, %156 ]
  %256 = load i64, ptr %19, align 8, !tbaa !38
  %257 = load i64, ptr %6, align 8, !tbaa !61
  %258 = icmp ult i64 %256, %257
  br i1 %258, label %259, label %286

259:                                              ; preds = %254
  %260 = load i32, ptr %7, align 4, !tbaa !73
  %261 = zext i32 %260 to i64
  %262 = zext i32 %255 to i64
  %263 = add nuw nsw i64 %262, %261
  %264 = icmp ult i64 %256, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %259
  %266 = sub i64 %257, %263
  %267 = tail call i64 @llvm.umin.i64(i64 %266, i64 258)
  %268 = load ptr, ptr %8, align 8, !tbaa !34
  %269 = getelementptr inbounds nuw i8, ptr %268, i64 %263
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %269, i8 0, i64 %267, i1 false)
  %270 = add nuw nsw i64 %267, %263
  br label %283

271:                                              ; preds = %259
  %272 = add nuw nsw i64 %263, 258
  %273 = icmp ult i64 %256, %272
  br i1 %273, label %274, label %286

274:                                              ; preds = %271
  %275 = sub nuw nsw i64 %272, %256
  %276 = sub i64 %257, %256
  %277 = tail call i64 @llvm.umin.i64(i64 %275, i64 %276)
  %278 = load ptr, ptr %8, align 8, !tbaa !34
  %279 = getelementptr inbounds nuw i8, ptr %278, i64 %256
  %280 = and i64 %277, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %279, i8 0, i64 %280, i1 false)
  %281 = load i64, ptr %19, align 8, !tbaa !38
  %282 = add i64 %281, %277
  br label %283

283:                                              ; preds = %274, %265
  %284 = phi i64 [ %270, %265 ], [ %282, %274 ]
  store i64 %284, ptr %19, align 8, !tbaa !38
  %285 = load i32, ptr %3, align 4, !tbaa !75
  br label %286

286:                                              ; preds = %254, %271, %283
  %287 = phi i32 [ %255, %254 ], [ %255, %271 ], [ %285, %283 ]
  %288 = icmp ult i32 %287, 259
  %289 = and i1 %20, %288
  br i1 %289, label %620, label %290

290:                                              ; preds = %286
  %291 = icmp eq i32 %287, 0
  br i1 %291, label %507, label %292

292:                                              ; preds = %290
  store i32 0, ptr %4, align 8, !tbaa !78
  %293 = icmp ugt i32 %287, 2
  %294 = load i32, ptr %7, align 4, !tbaa !73
  br i1 %293, label %295, label %418

295:                                              ; preds = %30, %292
  %296 = phi i32 [ %31, %30 ], [ %294, %292 ]
  %297 = phi i32 [ %28, %30 ], [ %287, %292 ]
  %298 = icmp eq i32 %296, 0
  br i1 %298, label %418, label %299

299:                                              ; preds = %295
  %300 = load ptr, ptr %8, align 8, !tbaa !34
  %301 = zext i32 %296 to i64
  %302 = getelementptr inbounds nuw i8, ptr %300, i64 %301
  %303 = getelementptr inbounds i8, ptr %302, i64 -1
  %304 = load i8, ptr %303, align 1, !tbaa !8
  %305 = load i8, ptr %302, align 1, !tbaa !8
  %306 = icmp eq i8 %304, %305
  br i1 %306, label %307, label %418

307:                                              ; preds = %299
  %308 = getelementptr inbounds nuw i8, ptr %302, i64 1
  %309 = load i8, ptr %308, align 1, !tbaa !8
  %310 = icmp eq i8 %304, %309
  br i1 %310, label %311, label %418

311:                                              ; preds = %307
  %312 = getelementptr inbounds nuw i8, ptr %302, i64 2
  %313 = load i8, ptr %312, align 1, !tbaa !8
  %314 = icmp eq i8 %304, %313
  br i1 %314, label %315, label %418

315:                                              ; preds = %311
  %316 = getelementptr inbounds nuw i8, ptr %302, i64 258
  br label %317

317:                                              ; preds = %347, %315
  %318 = phi i64 [ 2, %315 ], [ %348, %347 ]
  %319 = getelementptr inbounds nuw i8, ptr %302, i64 %318
  %320 = getelementptr inbounds nuw i8, ptr %319, i64 1
  %321 = load i8, ptr %320, align 1, !tbaa !8
  %322 = icmp eq i8 %304, %321
  br i1 %322, label %323, label %368

323:                                              ; preds = %317
  %324 = getelementptr inbounds nuw i8, ptr %319, i64 2
  %325 = load i8, ptr %324, align 1, !tbaa !8
  %326 = icmp eq i8 %304, %325
  br i1 %326, label %327, label %366

327:                                              ; preds = %323
  %328 = getelementptr inbounds nuw i8, ptr %319, i64 3
  %329 = load i8, ptr %328, align 1, !tbaa !8
  %330 = icmp eq i8 %304, %329
  br i1 %330, label %331, label %364

331:                                              ; preds = %327
  %332 = getelementptr inbounds nuw i8, ptr %319, i64 4
  %333 = load i8, ptr %332, align 1, !tbaa !8
  %334 = icmp eq i8 %304, %333
  br i1 %334, label %335, label %362

335:                                              ; preds = %331
  %336 = getelementptr inbounds nuw i8, ptr %319, i64 5
  %337 = load i8, ptr %336, align 1, !tbaa !8
  %338 = icmp eq i8 %304, %337
  br i1 %338, label %339, label %360

339:                                              ; preds = %335
  %340 = getelementptr inbounds nuw i8, ptr %319, i64 6
  %341 = load i8, ptr %340, align 1, !tbaa !8
  %342 = icmp eq i8 %304, %341
  br i1 %342, label %343, label %358

343:                                              ; preds = %339
  %344 = getelementptr inbounds nuw i8, ptr %319, i64 7
  %345 = load i8, ptr %344, align 1, !tbaa !8
  %346 = icmp eq i8 %304, %345
  br i1 %346, label %347, label %356

347:                                              ; preds = %343
  %348 = add nuw nsw i64 %318, 8
  %349 = getelementptr inbounds nuw i8, ptr %302, i64 %348
  %350 = load i8, ptr %349, align 1, !tbaa !8
  %351 = icmp eq i8 %304, %350
  %352 = icmp samesign ult i64 %318, 250
  %353 = select i1 %351, i1 %352, i1 false
  br i1 %353, label %317, label %354, !llvm.loop !139

354:                                              ; preds = %347
  %355 = getelementptr inbounds nuw i8, ptr %302, i64 %348
  br label %370

356:                                              ; preds = %343
  %357 = getelementptr inbounds nuw i8, ptr %319, i64 7
  br label %370

358:                                              ; preds = %339
  %359 = getelementptr inbounds nuw i8, ptr %319, i64 6
  br label %370

360:                                              ; preds = %335
  %361 = getelementptr inbounds nuw i8, ptr %319, i64 5
  br label %370

362:                                              ; preds = %331
  %363 = getelementptr inbounds nuw i8, ptr %319, i64 4
  br label %370

364:                                              ; preds = %327
  %365 = getelementptr inbounds nuw i8, ptr %319, i64 3
  br label %370

366:                                              ; preds = %323
  %367 = getelementptr inbounds nuw i8, ptr %319, i64 2
  br label %370

368:                                              ; preds = %317
  %369 = getelementptr inbounds nuw i8, ptr %319, i64 1
  br label %370

370:                                              ; preds = %368, %366, %364, %362, %360, %358, %356, %354
  %371 = phi ptr [ %363, %362 ], [ %361, %360 ], [ %365, %364 ], [ %367, %366 ], [ %355, %354 ], [ %357, %356 ], [ %359, %358 ], [ %369, %368 ]
  %372 = ptrtoint ptr %316 to i64
  %373 = ptrtoint ptr %371 to i64
  %374 = sub i64 %373, %372
  %375 = trunc i64 %374 to i32
  %376 = add i32 %375, 258
  %377 = tail call i32 @llvm.umin.i32(i32 %376, i32 %297)
  store i32 %377, ptr %4, align 8
  %378 = icmp ugt i32 %377, 2
  %379 = load i32, ptr %22, align 4, !tbaa !134
  br i1 %378, label %380, label %421

380:                                              ; preds = %370
  %381 = trunc i32 %377 to i8
  %382 = add i8 %381, -3
  %383 = load ptr, ptr %21, align 8, !tbaa !44
  %384 = add i32 %379, 1
  store i32 %384, ptr %22, align 4, !tbaa !134
  %385 = zext i32 %379 to i64
  %386 = getelementptr inbounds nuw i8, ptr %383, i64 %385
  store i8 1, ptr %386, align 1, !tbaa !8
  %387 = load ptr, ptr %21, align 8, !tbaa !44
  %388 = load i32, ptr %22, align 4, !tbaa !134
  %389 = add i32 %388, 1
  store i32 %389, ptr %22, align 4, !tbaa !134
  %390 = zext i32 %388 to i64
  %391 = getelementptr inbounds nuw i8, ptr %387, i64 %390
  store i8 0, ptr %391, align 1, !tbaa !8
  %392 = load ptr, ptr %21, align 8, !tbaa !44
  %393 = load i32, ptr %22, align 4, !tbaa !134
  %394 = add i32 %393, 1
  store i32 %394, ptr %22, align 4, !tbaa !134
  %395 = zext i32 %393 to i64
  %396 = getelementptr inbounds nuw i8, ptr %392, i64 %395
  store i8 %382, ptr %396, align 1, !tbaa !8
  %397 = zext i8 %382 to i64
  %398 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %397
  %399 = load i8, ptr %398, align 1, !tbaa !8
  %400 = zext i8 %399 to i64
  %401 = getelementptr [4 x i8], ptr %25, i64 %400
  %402 = load i16, ptr %401, align 4, !tbaa !8
  %403 = add i16 %402, 1
  store i16 %403, ptr %401, align 4, !tbaa !8
  %404 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %405 = zext i8 %404 to i64
  %406 = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %405
  %407 = load i16, ptr %406, align 4, !tbaa !8
  %408 = add i16 %407, 1
  store i16 %408, ptr %406, align 4, !tbaa !8
  %409 = load i32, ptr %22, align 4, !tbaa !134
  %410 = load i32, ptr %24, align 8, !tbaa !45
  %411 = icmp eq i32 %409, %410
  %412 = load i32, ptr %4, align 8, !tbaa !78
  %413 = load i32, ptr %3, align 4, !tbaa !75
  %414 = sub i32 %413, %412
  store i32 %414, ptr %3, align 4, !tbaa !75
  %415 = load i32, ptr %7, align 4, !tbaa !73
  %416 = add i32 %415, %412
  store i32 %416, ptr %7, align 4, !tbaa !73
  store i32 0, ptr %4, align 8, !tbaa !78
  br i1 %411, label %453, label %417

417:                                              ; preds = %380, %502, %421
  br label %27

418:                                              ; preds = %299, %307, %311, %295, %292
  %419 = phi i32 [ %294, %292 ], [ %296, %295 ], [ %296, %311 ], [ %296, %307 ], [ %296, %299 ]
  %420 = load i32, ptr %22, align 4, !tbaa !134
  br label %421

421:                                              ; preds = %418, %370
  %422 = phi i32 [ %379, %370 ], [ %420, %418 ]
  %423 = phi i32 [ %296, %370 ], [ %419, %418 ]
  %424 = load ptr, ptr %8, align 8, !tbaa !34
  %425 = zext i32 %423 to i64
  %426 = getelementptr inbounds nuw i8, ptr %424, i64 %425
  %427 = load i8, ptr %426, align 1, !tbaa !8
  %428 = load ptr, ptr %21, align 8, !tbaa !44
  %429 = add i32 %422, 1
  store i32 %429, ptr %22, align 4, !tbaa !134
  %430 = zext i32 %422 to i64
  %431 = getelementptr inbounds nuw i8, ptr %428, i64 %430
  store i8 0, ptr %431, align 1, !tbaa !8
  %432 = load ptr, ptr %21, align 8, !tbaa !44
  %433 = load i32, ptr %22, align 4, !tbaa !134
  %434 = add i32 %433, 1
  store i32 %434, ptr %22, align 4, !tbaa !134
  %435 = zext i32 %433 to i64
  %436 = getelementptr inbounds nuw i8, ptr %432, i64 %435
  store i8 0, ptr %436, align 1, !tbaa !8
  %437 = load ptr, ptr %21, align 8, !tbaa !44
  %438 = load i32, ptr %22, align 4, !tbaa !134
  %439 = add i32 %438, 1
  store i32 %439, ptr %22, align 4, !tbaa !134
  %440 = zext i32 %438 to i64
  %441 = getelementptr inbounds nuw i8, ptr %437, i64 %440
  store i8 %427, ptr %441, align 1, !tbaa !8
  %442 = zext i8 %427 to i64
  %443 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %442
  %444 = load i16, ptr %443, align 4, !tbaa !8
  %445 = add i16 %444, 1
  store i16 %445, ptr %443, align 4, !tbaa !8
  %446 = load i32, ptr %22, align 4, !tbaa !134
  %447 = load i32, ptr %24, align 8, !tbaa !45
  %448 = icmp eq i32 %446, %447
  %449 = load i32, ptr %3, align 4, !tbaa !75
  %450 = add i32 %449, -1
  store i32 %450, ptr %3, align 4, !tbaa !75
  %451 = load i32, ptr %7, align 4, !tbaa !73
  %452 = add i32 %451, 1
  store i32 %452, ptr %7, align 4, !tbaa !73
  br i1 %448, label %453, label %417

453:                                              ; preds = %380, %421
  %454 = phi i32 [ %416, %380 ], [ %452, %421 ]
  %455 = load i64, ptr %9, align 8, !tbaa !74
  %456 = icmp sgt i64 %455, -1
  br i1 %456, label %457, label %461

457:                                              ; preds = %453
  %458 = load ptr, ptr %8, align 8, !tbaa !34
  %459 = and i64 %455, 4294967295
  %460 = getelementptr inbounds nuw i8, ptr %458, i64 %459
  br label %461

461:                                              ; preds = %453, %457
  %462 = phi ptr [ %460, %457 ], [ null, %453 ]
  %463 = zext i32 %454 to i64
  %464 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %463, i64 %455), !nosanitize !57
  %465 = extractvalue { i64, i1 } %464, 1, !nosanitize !57
  br i1 %465, label %466, label %467, !prof !58, !nosanitize !57

466:                                              ; preds = %461, %573, %516
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
  unreachable, !nosanitize !57

467:                                              ; preds = %461
  %468 = extractvalue { i64, i1 } %464, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %462, i64 noundef %468, i32 noundef 0) #12
  %469 = load i32, ptr %7, align 4, !tbaa !73
  %470 = zext i32 %469 to i64
  store i64 %470, ptr %9, align 8, !tbaa !74
  %471 = load ptr, ptr %0, align 8, !tbaa !20
  %472 = getelementptr inbounds nuw i8, ptr %471, i64 56
  %473 = load ptr, ptr %472, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %473) #12
  %474 = getelementptr inbounds nuw i8, ptr %473, i64 40
  %475 = load i64, ptr %474, align 8, !tbaa !55
  %476 = getelementptr inbounds nuw i8, ptr %471, i64 32
  %477 = load i32, ptr %476, align 8, !tbaa !106
  %478 = zext i32 %477 to i64
  %479 = tail call i64 @llvm.umin.i64(i64 %475, i64 %478)
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %502, label %481

481:                                              ; preds = %467
  %482 = trunc nuw i64 %479 to i32
  %483 = getelementptr inbounds nuw i8, ptr %471, i64 24
  %484 = load ptr, ptr %483, align 8, !tbaa !105
  %485 = getelementptr inbounds nuw i8, ptr %473, i64 32
  %486 = load ptr, ptr %485, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %484, ptr align 1 %486, i64 %479, i1 false)
  %487 = load ptr, ptr %483, align 8, !tbaa !105
  %488 = getelementptr inbounds nuw i8, ptr %487, i64 %479
  store ptr %488, ptr %483, align 8, !tbaa !105
  %489 = load ptr, ptr %485, align 8, !tbaa !56
  %490 = getelementptr inbounds nuw i8, ptr %489, i64 %479
  store ptr %490, ptr %485, align 8, !tbaa !56
  %491 = getelementptr inbounds nuw i8, ptr %471, i64 40
  %492 = load i64, ptr %491, align 8, !tbaa !107
  %493 = add i64 %492, %479
  store i64 %493, ptr %491, align 8, !tbaa !107
  %494 = load i32, ptr %476, align 8, !tbaa !106
  %495 = sub i32 %494, %482
  store i32 %495, ptr %476, align 8, !tbaa !106
  %496 = load i64, ptr %474, align 8, !tbaa !55
  %497 = sub i64 %496, %479
  store i64 %497, ptr %474, align 8, !tbaa !55
  %498 = icmp eq i64 %496, %479
  br i1 %498, label %499, label %502

499:                                              ; preds = %481
  %500 = getelementptr inbounds nuw i8, ptr %473, i64 16
  %501 = load ptr, ptr %500, align 8, !tbaa !40
  store ptr %501, ptr %485, align 8, !tbaa !56
  br label %502

502:                                              ; preds = %467, %481, %499
  %503 = load ptr, ptr %0, align 8, !tbaa !20
  %504 = getelementptr inbounds nuw i8, ptr %503, i64 32
  %505 = load i32, ptr %504, align 8, !tbaa !106
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %620, label %417

507:                                              ; preds = %290
  store i32 0, ptr %10, align 4, !tbaa !76
  %508 = icmp eq i32 %1, 4
  br i1 %508, label %509, label %563

509:                                              ; preds = %507
  %510 = load i64, ptr %9, align 8, !tbaa !74
  %511 = icmp sgt i64 %510, -1
  br i1 %511, label %512, label %516

512:                                              ; preds = %509
  %513 = load ptr, ptr %8, align 8, !tbaa !34
  %514 = and i64 %510, 4294967295
  %515 = getelementptr inbounds nuw i8, ptr %513, i64 %514
  br label %516

516:                                              ; preds = %509, %512
  %517 = phi ptr [ %515, %512 ], [ null, %509 ]
  %518 = load i32, ptr %7, align 4, !tbaa !73
  %519 = zext i32 %518 to i64
  %520 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %519, i64 %510), !nosanitize !57
  %521 = extractvalue { i64, i1 } %520, 1, !nosanitize !57
  br i1 %521, label %466, label %522, !prof !58, !nosanitize !57

522:                                              ; preds = %516
  %523 = extractvalue { i64, i1 } %520, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %517, i64 noundef %523, i32 noundef 1) #12
  %524 = load i32, ptr %7, align 4, !tbaa !73
  %525 = zext i32 %524 to i64
  store i64 %525, ptr %9, align 8, !tbaa !74
  %526 = load ptr, ptr %0, align 8, !tbaa !20
  %527 = getelementptr inbounds nuw i8, ptr %526, i64 56
  %528 = load ptr, ptr %527, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %528) #12
  %529 = getelementptr inbounds nuw i8, ptr %528, i64 40
  %530 = load i64, ptr %529, align 8, !tbaa !55
  %531 = getelementptr inbounds nuw i8, ptr %526, i64 32
  %532 = load i32, ptr %531, align 8, !tbaa !106
  %533 = zext i32 %532 to i64
  %534 = tail call i64 @llvm.umin.i64(i64 %530, i64 %533)
  %535 = icmp eq i64 %534, 0
  br i1 %535, label %557, label %536

536:                                              ; preds = %522
  %537 = trunc nuw i64 %534 to i32
  %538 = getelementptr inbounds nuw i8, ptr %526, i64 24
  %539 = load ptr, ptr %538, align 8, !tbaa !105
  %540 = getelementptr inbounds nuw i8, ptr %528, i64 32
  %541 = load ptr, ptr %540, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %539, ptr align 1 %541, i64 %534, i1 false)
  %542 = load ptr, ptr %538, align 8, !tbaa !105
  %543 = getelementptr inbounds nuw i8, ptr %542, i64 %534
  store ptr %543, ptr %538, align 8, !tbaa !105
  %544 = load ptr, ptr %540, align 8, !tbaa !56
  %545 = getelementptr inbounds nuw i8, ptr %544, i64 %534
  store ptr %545, ptr %540, align 8, !tbaa !56
  %546 = getelementptr inbounds nuw i8, ptr %526, i64 40
  %547 = load i64, ptr %546, align 8, !tbaa !107
  %548 = add i64 %547, %534
  store i64 %548, ptr %546, align 8, !tbaa !107
  %549 = load i32, ptr %531, align 8, !tbaa !106
  %550 = sub i32 %549, %537
  store i32 %550, ptr %531, align 8, !tbaa !106
  %551 = load i64, ptr %529, align 8, !tbaa !55
  %552 = sub i64 %551, %534
  store i64 %552, ptr %529, align 8, !tbaa !55
  %553 = icmp eq i64 %551, %534
  br i1 %553, label %554, label %557

554:                                              ; preds = %536
  %555 = getelementptr inbounds nuw i8, ptr %528, i64 16
  %556 = load ptr, ptr %555, align 8, !tbaa !40
  store ptr %556, ptr %540, align 8, !tbaa !56
  br label %557

557:                                              ; preds = %522, %536, %554
  %558 = load ptr, ptr %0, align 8, !tbaa !20
  %559 = getelementptr inbounds nuw i8, ptr %558, i64 32
  %560 = load i32, ptr %559, align 8, !tbaa !106
  %561 = icmp eq i32 %560, 0
  %562 = select i1 %561, i32 2, i32 3
  br label %620

563:                                              ; preds = %507
  %564 = load i32, ptr %22, align 4, !tbaa !134
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %619, label %566

566:                                              ; preds = %563
  %567 = load i64, ptr %9, align 8, !tbaa !74
  %568 = icmp sgt i64 %567, -1
  br i1 %568, label %569, label %573

569:                                              ; preds = %566
  %570 = load ptr, ptr %8, align 8, !tbaa !34
  %571 = and i64 %567, 4294967295
  %572 = getelementptr inbounds nuw i8, ptr %570, i64 %571
  br label %573

573:                                              ; preds = %566, %569
  %574 = phi ptr [ %572, %569 ], [ null, %566 ]
  %575 = load i32, ptr %7, align 4, !tbaa !73
  %576 = zext i32 %575 to i64
  %577 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %576, i64 %567), !nosanitize !57
  %578 = extractvalue { i64, i1 } %577, 1, !nosanitize !57
  br i1 %578, label %466, label %579, !prof !58, !nosanitize !57

579:                                              ; preds = %573
  %580 = extractvalue { i64, i1 } %577, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %574, i64 noundef %580, i32 noundef 0) #12
  %581 = load i32, ptr %7, align 4, !tbaa !73
  %582 = zext i32 %581 to i64
  store i64 %582, ptr %9, align 8, !tbaa !74
  %583 = load ptr, ptr %0, align 8, !tbaa !20
  %584 = getelementptr inbounds nuw i8, ptr %583, i64 56
  %585 = load ptr, ptr %584, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %585) #12
  %586 = getelementptr inbounds nuw i8, ptr %585, i64 40
  %587 = load i64, ptr %586, align 8, !tbaa !55
  %588 = getelementptr inbounds nuw i8, ptr %583, i64 32
  %589 = load i32, ptr %588, align 8, !tbaa !106
  %590 = zext i32 %589 to i64
  %591 = tail call i64 @llvm.umin.i64(i64 %587, i64 %590)
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %614, label %593

593:                                              ; preds = %579
  %594 = trunc nuw i64 %591 to i32
  %595 = getelementptr inbounds nuw i8, ptr %583, i64 24
  %596 = load ptr, ptr %595, align 8, !tbaa !105
  %597 = getelementptr inbounds nuw i8, ptr %585, i64 32
  %598 = load ptr, ptr %597, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %596, ptr align 1 %598, i64 %591, i1 false)
  %599 = load ptr, ptr %595, align 8, !tbaa !105
  %600 = getelementptr inbounds nuw i8, ptr %599, i64 %591
  store ptr %600, ptr %595, align 8, !tbaa !105
  %601 = load ptr, ptr %597, align 8, !tbaa !56
  %602 = getelementptr inbounds nuw i8, ptr %601, i64 %591
  store ptr %602, ptr %597, align 8, !tbaa !56
  %603 = getelementptr inbounds nuw i8, ptr %583, i64 40
  %604 = load i64, ptr %603, align 8, !tbaa !107
  %605 = add i64 %604, %591
  store i64 %605, ptr %603, align 8, !tbaa !107
  %606 = load i32, ptr %588, align 8, !tbaa !106
  %607 = sub i32 %606, %594
  store i32 %607, ptr %588, align 8, !tbaa !106
  %608 = load i64, ptr %586, align 8, !tbaa !55
  %609 = sub i64 %608, %591
  store i64 %609, ptr %586, align 8, !tbaa !55
  %610 = icmp eq i64 %608, %591
  br i1 %610, label %611, label %614

611:                                              ; preds = %593
  %612 = getelementptr inbounds nuw i8, ptr %585, i64 16
  %613 = load ptr, ptr %612, align 8, !tbaa !40
  store ptr %613, ptr %597, align 8, !tbaa !56
  br label %614

614:                                              ; preds = %579, %593, %611
  %615 = load ptr, ptr %0, align 8, !tbaa !20
  %616 = getelementptr inbounds nuw i8, ptr %615, i64 32
  %617 = load i32, ptr %616, align 8, !tbaa !106
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %620, label %619

619:                                              ; preds = %614, %563
  br label %620

620:                                              ; preds = %502, %286, %614, %557, %619
  %621 = phi i32 [ 1, %619 ], [ %562, %557 ], [ 0, %614 ], [ 0, %286 ], [ 0, %502 ]
  ret i32 %621
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
  %29 = tail call ptr %26(ptr noundef %28, i32 noundef 1, i32 noundef 5968) #12
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
  %37 = tail call ptr %33(ptr noundef %34, i32 noundef %36, i32 noundef 2) #12
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 96
  store ptr %37, ptr %38, align 8, !tbaa !34
  %39 = load ptr, ptr %25, align 8, !tbaa !15
  %40 = load ptr, ptr %27, align 8, !tbaa !16
  %41 = load i32, ptr %35, align 8, !tbaa !32
  %42 = tail call ptr %39(ptr noundef %40, i32 noundef %41, i32 noundef 2) #12
  %43 = getelementptr inbounds nuw i8, ptr %29, i64 112
  store ptr %42, ptr %43, align 8, !tbaa !35
  %44 = load ptr, ptr %25, align 8, !tbaa !15
  %45 = load ptr, ptr %27, align 8, !tbaa !16
  %46 = getelementptr inbounds nuw i8, ptr %29, i64 132
  %47 = load i32, ptr %46, align 4, !tbaa !36
  %48 = tail call ptr %44(ptr noundef %45, i32 noundef %47, i32 noundef 2) #12
  %49 = getelementptr inbounds nuw i8, ptr %29, i64 120
  store ptr %48, ptr %49, align 8, !tbaa !37
  %50 = load ptr, ptr %25, align 8, !tbaa !15
  %51 = load ptr, ptr %27, align 8, !tbaa !16
  %52 = getelementptr inbounds nuw i8, ptr %29, i64 5896
  %53 = load i32, ptr %52, align 8, !tbaa !39
  %54 = tail call ptr %50(ptr noundef %51, i32 noundef %53, i32 noundef 4) #12
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

66:                                               ; preds = %31, %58, %61
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
  tail call void %71(ptr noundef %87, ptr noundef nonnull %84) #12, !inline_history !52
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
  tail call void %91(ptr noundef %97, ptr noundef nonnull %94) #12, !inline_history !52
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
  tail call void %101(ptr noundef %107, ptr noundef nonnull %104) #12, !inline_history !52
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
  tail call void %111(ptr noundef %117, ptr noundef nonnull %114) #12, !inline_history !52
  %118 = load ptr, ptr %70, align 8, !tbaa !17
  %119 = load ptr, ptr %32, align 8, !tbaa !19
  br label %120

120:                                              ; preds = %116, %110
  %121 = phi ptr [ %119, %116 ], [ %112, %110 ]
  %122 = phi ptr [ %118, %116 ], [ %111, %110 ]
  %123 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %122(ptr noundef %123, ptr noundef %121) #12, !inline_history !52
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

144:                                              ; preds = %136, %143
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

183:                                              ; preds = %12, %16, %19, %4, %8, %2, %120, %79, %76, %73, %69, %66, %24, %22, %144
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

33:                                               ; preds = %622, %2
  %34 = load i32, ptr %3, align 4, !tbaa !75
  %35 = icmp ult i32 %34, 262
  br i1 %35, label %36, label %298

36:                                               ; preds = %33
  %37 = load i32, ptr %4, align 8, !tbaa !32
  %38 = add i32 %37, -262
  %39 = zext i32 %37 to i64
  %40 = insertelement <2 x i32> poison, i32 %37, i64 0
  %41 = shufflevector <2 x i32> %40, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %42

42:                                               ; preds = %253, %36
  %43 = phi i32 [ %201, %253 ], [ %34, %36 ]
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
  br i1 %53, label %160, label %54

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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
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
  br i1 %80, label %102, label %81

81:                                               ; preds = %71
  %82 = and i64 %79, 8589934584
  %83 = mul nsw i64 %82, -2
  %84 = getelementptr i8, ptr %76, i64 %83
  %85 = trunc i64 %82 to i32
  %86 = sub i32 %73, %85
  %87 = insertelement <8 x i32> poison, i32 %72, i64 0
  %88 = shufflevector <8 x i32> %87, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %89

89:                                               ; preds = %89, %81
  %90 = phi i64 [ 0, %81 ], [ %98, %89 ]
  %91 = mul i64 %90, -2
  %92 = getelementptr i8, ptr %76, i64 %91
  %93 = getelementptr inbounds i8, ptr %92, i64 -16
  %94 = load <8 x i16>, ptr %93, align 2, !tbaa !62
  %95 = zext <8 x i16> %94 to <8 x i32>
  %96 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %95, <8 x i32> %88)
  %97 = trunc nuw <8 x i32> %96 to <8 x i16>
  store <8 x i16> %97, ptr %93, align 2, !tbaa !62
  %98 = add nuw i64 %90, 8
  %99 = icmp eq i64 %98, %82
  br i1 %99, label %100, label %89, !llvm.loop !143

100:                                              ; preds = %89
  %101 = icmp eq i64 %79, %82
  br i1 %101, label %115, label %102

102:                                              ; preds = %71, %100
  %103 = phi ptr [ %76, %71 ], [ %84, %100 ]
  %104 = phi i32 [ %73, %71 ], [ %86, %100 ]
  br label %105

105:                                              ; preds = %102, %105
  %106 = phi ptr [ %108, %105 ], [ %103, %102 ]
  %107 = phi i32 [ %113, %105 ], [ %104, %102 ]
  %108 = getelementptr inbounds i8, ptr %106, i64 -2
  %109 = load i16, ptr %108, align 2, !tbaa !62
  %110 = zext i16 %109 to i32
  %111 = tail call i32 @llvm.usub.sat.i32(i32 %110, i32 %72)
  %112 = trunc nuw i32 %111 to i16
  store i16 %112, ptr %108, align 2, !tbaa !62
  %113 = add i32 %107, -1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %105, !llvm.loop !144

115:                                              ; preds = %105, %100
  %116 = load ptr, ptr %13, align 8, !tbaa !35
  %117 = zext i32 %72 to i64
  %118 = getelementptr inbounds nuw [2 x i8], ptr %116, i64 %117
  %119 = add i32 %72, -1
  %120 = zext i32 %119 to i64
  %121 = add nuw nsw i64 %120, 1
  %122 = icmp ult i32 %119, 7
  br i1 %122, label %144, label %123

123:                                              ; preds = %115
  %124 = and i64 %121, 8589934584
  %125 = mul nsw i64 %124, -2
  %126 = getelementptr i8, ptr %118, i64 %125
  %127 = trunc i64 %124 to i32
  %128 = sub i32 %72, %127
  %129 = insertelement <8 x i32> poison, i32 %72, i64 0
  %130 = shufflevector <8 x i32> %129, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %131

131:                                              ; preds = %131, %123
  %132 = phi i64 [ 0, %123 ], [ %140, %131 ]
  %133 = mul i64 %132, -2
  %134 = getelementptr i8, ptr %118, i64 %133
  %135 = getelementptr inbounds i8, ptr %134, i64 -16
  %136 = load <8 x i16>, ptr %135, align 2, !tbaa !62
  %137 = zext <8 x i16> %136 to <8 x i32>
  %138 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %137, <8 x i32> %130)
  %139 = trunc nuw <8 x i32> %138 to <8 x i16>
  store <8 x i16> %139, ptr %135, align 2, !tbaa !62
  %140 = add nuw i64 %132, 8
  %141 = icmp eq i64 %140, %124
  br i1 %141, label %142, label %131, !llvm.loop !145

142:                                              ; preds = %131
  %143 = icmp eq i64 %121, %124
  br i1 %143, label %157, label %144

144:                                              ; preds = %115, %142
  %145 = phi ptr [ %118, %115 ], [ %126, %142 ]
  %146 = phi i32 [ %72, %115 ], [ %128, %142 ]
  br label %147

147:                                              ; preds = %144, %147
  %148 = phi ptr [ %150, %147 ], [ %145, %144 ]
  %149 = phi i32 [ %155, %147 ], [ %146, %144 ]
  %150 = getelementptr inbounds i8, ptr %148, i64 -2
  %151 = load i16, ptr %150, align 2, !tbaa !62
  %152 = zext i16 %151 to i32
  %153 = tail call i32 @llvm.usub.sat.i32(i32 %152, i32 %72)
  %154 = trunc nuw i32 %153 to i16
  store i16 %154, ptr %150, align 2, !tbaa !62
  %155 = add i32 %149, -1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %147, !llvm.loop !146

157:                                              ; preds = %147, %142
  store i32 1, ptr %14, align 8, !tbaa !63
  %158 = add i32 %37, %50
  %159 = load i32, ptr %3, align 4, !tbaa !75
  br label %160

160:                                              ; preds = %157, %42
  %161 = phi i32 [ %159, %157 ], [ %43, %42 ]
  %162 = phi i32 [ %68, %157 ], [ %46, %42 ]
  %163 = phi i32 [ %158, %157 ], [ %50, %42 ]
  %164 = load ptr, ptr %0, align 8, !tbaa !20
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 8
  %166 = load i32, ptr %165, align 8, !tbaa !81
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %258, label %168

168:                                              ; preds = %160
  %169 = load ptr, ptr %7, align 8, !tbaa !34
  %170 = zext i32 %162 to i64
  %171 = getelementptr inbounds nuw i8, ptr %169, i64 %170
  %172 = zext i32 %161 to i64
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 %172
  %174 = tail call i32 @llvm.umin.i32(i32 %166, i32 %163)
  %175 = icmp eq i32 %163, 0
  br i1 %175, label %199, label %176

176:                                              ; preds = %168
  %177 = sub i32 %166, %174
  store i32 %177, ptr %165, align 8, !tbaa !81
  %178 = load ptr, ptr %164, align 8, !tbaa !82
  %179 = zext i32 %174 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %173, ptr align 1 %178, i64 %179, i1 false)
  %180 = getelementptr inbounds nuw i8, ptr %164, i64 56
  %181 = load ptr, ptr %180, align 8, !tbaa !19
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 48
  %183 = load i32, ptr %182, align 8, !tbaa !30
  switch i32 %183, label %192 [
    i32 1, label %184
    i32 2, label %188
  ]

184:                                              ; preds = %176
  %185 = getelementptr inbounds nuw i8, ptr %164, i64 96
  %186 = load i64, ptr %185, align 8, !tbaa !59
  %187 = tail call i64 @adler32(i64 noundef %186, ptr noundef %173, i32 noundef %174) #12
  store i64 %187, ptr %185, align 8, !tbaa !59
  br label %192

188:                                              ; preds = %176
  %189 = getelementptr inbounds nuw i8, ptr %164, i64 96
  %190 = load i64, ptr %189, align 8, !tbaa !59
  %191 = tail call i64 @crc32(i64 noundef %190, ptr noundef %173, i32 noundef %174) #12
  store i64 %191, ptr %189, align 8, !tbaa !59
  br label %192

192:                                              ; preds = %188, %184, %176
  %193 = load ptr, ptr %164, align 8, !tbaa !82
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 %179
  store ptr %194, ptr %164, align 8, !tbaa !82
  %195 = getelementptr inbounds nuw i8, ptr %164, i64 16
  %196 = load i64, ptr %195, align 8, !tbaa !53
  %197 = add i64 %196, %179
  store i64 %197, ptr %195, align 8, !tbaa !53
  %198 = load i32, ptr %3, align 4, !tbaa !75
  br label %199

199:                                              ; preds = %192, %168
  %200 = phi i32 [ %161, %168 ], [ %198, %192 ]
  %201 = add i32 %200, %174
  store i32 %201, ptr %3, align 4, !tbaa !75
  %202 = load i32, ptr %10, align 4, !tbaa !76
  %203 = add i32 %202, %201
  %204 = icmp ugt i32 %203, 2
  br i1 %204, label %205, label %251

205:                                              ; preds = %199
  %206 = load i32, ptr %6, align 4, !tbaa !73
  %207 = sub i32 %206, %202
  %208 = load ptr, ptr %7, align 8, !tbaa !34
  %209 = zext i32 %207 to i64
  %210 = getelementptr inbounds nuw i8, ptr %208, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !8
  %212 = zext i8 %211 to i32
  store i32 %212, ptr %15, align 8, !tbaa !80
  %213 = load i32, ptr %16, align 8, !tbaa !51
  %214 = shl i32 %212, %213
  %215 = add i32 %207, 1
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds nuw i8, ptr %208, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !8
  %219 = zext i8 %218 to i32
  %220 = xor i32 %214, %219
  %221 = load i32, ptr %17, align 4, !tbaa !50
  %222 = and i32 %220, %221
  store i32 %222, ptr %15, align 8, !tbaa !80
  br label %223

223:                                              ; preds = %228, %205
  %224 = phi i32 [ %236, %228 ], [ %222, %205 ]
  %225 = phi i32 [ %248, %228 ], [ %202, %205 ]
  %226 = phi i32 [ %247, %228 ], [ %207, %205 ]
  %227 = icmp eq i32 %225, 0
  br i1 %227, label %251, label %228

228:                                              ; preds = %223
  %229 = shl i32 %224, %213
  %230 = add i32 %226, 2
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds nuw i8, ptr %208, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !8
  %234 = zext i8 %233 to i32
  %235 = xor i32 %229, %234
  %236 = and i32 %235, %221
  store i32 %236, ptr %15, align 8, !tbaa !80
  %237 = load ptr, ptr %12, align 8, !tbaa !37
  %238 = zext i32 %236 to i64
  %239 = getelementptr inbounds nuw [2 x i8], ptr %237, i64 %238
  %240 = load i16, ptr %239, align 2, !tbaa !62
  %241 = load ptr, ptr %13, align 8, !tbaa !35
  %242 = load i32, ptr %18, align 8, !tbaa !33
  %243 = and i32 %242, %226
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds nuw [2 x i8], ptr %241, i64 %244
  store i16 %240, ptr %245, align 2, !tbaa !62
  %246 = trunc i32 %226 to i16
  store i16 %246, ptr %239, align 2, !tbaa !62
  %247 = add i32 %226, 1
  %248 = add i32 %225, -1
  store i32 %248, ptr %10, align 4, !tbaa !76
  %249 = add i32 %248, %201
  %250 = icmp ult i32 %249, 3
  br i1 %250, label %251, label %223, !llvm.loop !91

251:                                              ; preds = %228, %223, %199
  %252 = icmp ult i32 %201, 262
  br i1 %252, label %253, label %258

253:                                              ; preds = %251
  %254 = load ptr, ptr %0, align 8, !tbaa !20
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 8
  %256 = load i32, ptr %255, align 8, !tbaa !81
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %42, !llvm.loop !92

258:                                              ; preds = %253, %251, %160
  %259 = phi i32 [ %201, %253 ], [ %201, %251 ], [ %161, %160 ]
  %260 = load i64, ptr %19, align 8, !tbaa !38
  %261 = load i64, ptr %5, align 8, !tbaa !61
  %262 = icmp ult i64 %260, %261
  br i1 %262, label %263, label %290

263:                                              ; preds = %258
  %264 = load i32, ptr %6, align 4, !tbaa !73
  %265 = zext i32 %264 to i64
  %266 = zext i32 %259 to i64
  %267 = add nuw nsw i64 %266, %265
  %268 = icmp ult i64 %260, %267
  br i1 %268, label %269, label %275

269:                                              ; preds = %263
  %270 = sub i64 %261, %267
  %271 = tail call i64 @llvm.umin.i64(i64 %270, i64 258)
  %272 = load ptr, ptr %7, align 8, !tbaa !34
  %273 = getelementptr inbounds nuw i8, ptr %272, i64 %267
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %273, i8 0, i64 %271, i1 false)
  %274 = add nuw nsw i64 %271, %267
  br label %287

275:                                              ; preds = %263
  %276 = add nuw nsw i64 %267, 258
  %277 = icmp ult i64 %260, %276
  br i1 %277, label %278, label %290

278:                                              ; preds = %275
  %279 = sub nuw nsw i64 %276, %260
  %280 = sub i64 %261, %260
  %281 = tail call i64 @llvm.umin.i64(i64 %279, i64 %280)
  %282 = load ptr, ptr %7, align 8, !tbaa !34
  %283 = getelementptr inbounds nuw i8, ptr %282, i64 %260
  %284 = and i64 %281, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %283, i8 0, i64 %284, i1 false)
  %285 = load i64, ptr %19, align 8, !tbaa !38
  %286 = add i64 %285, %281
  br label %287

287:                                              ; preds = %278, %269
  %288 = phi i64 [ %274, %269 ], [ %286, %278 ]
  store i64 %288, ptr %19, align 8, !tbaa !38
  %289 = load i32, ptr %3, align 4, !tbaa !75
  br label %290

290:                                              ; preds = %258, %275, %287
  %291 = phi i32 [ %259, %258 ], [ %259, %275 ], [ %289, %287 ]
  %292 = icmp ult i32 %291, 262
  %293 = and i1 %20, %292
  br i1 %293, label %808, label %294

294:                                              ; preds = %290
  %295 = icmp eq i32 %291, 0
  br i1 %295, label %695, label %296

296:                                              ; preds = %294
  %297 = icmp ugt i32 %291, 2
  br i1 %297, label %298, label %492

298:                                              ; preds = %33, %296
  %299 = phi i32 [ %291, %296 ], [ %34, %33 ]
  %300 = load i32, ptr %15, align 8, !tbaa !80
  %301 = load i32, ptr %16, align 8, !tbaa !51
  %302 = shl i32 %300, %301
  %303 = load ptr, ptr %7, align 8, !tbaa !34
  %304 = load i32, ptr %6, align 4, !tbaa !73
  %305 = add i32 %304, 2
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds nuw i8, ptr %303, i64 %306
  %308 = load i8, ptr %307, align 1, !tbaa !8
  %309 = zext i8 %308 to i32
  %310 = xor i32 %302, %309
  %311 = load i32, ptr %17, align 4, !tbaa !50
  %312 = and i32 %310, %311
  store i32 %312, ptr %15, align 8, !tbaa !80
  %313 = load ptr, ptr %12, align 8, !tbaa !37
  %314 = zext i32 %312 to i64
  %315 = getelementptr inbounds nuw [2 x i8], ptr %313, i64 %314
  %316 = load i16, ptr %315, align 2, !tbaa !62
  %317 = load ptr, ptr %13, align 8, !tbaa !35
  %318 = load i32, ptr %18, align 8, !tbaa !33
  %319 = and i32 %318, %304
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds nuw [2 x i8], ptr %317, i64 %320
  store i16 %316, ptr %321, align 2, !tbaa !62
  %322 = zext i16 %316 to i32
  %323 = trunc i32 %304 to i16
  store i16 %323, ptr %315, align 2, !tbaa !62
  %324 = icmp eq i16 %316, 0
  br i1 %324, label %492, label %325

325:                                              ; preds = %298
  %326 = sub i32 %304, %322
  %327 = load i32, ptr %4, align 8, !tbaa !32
  %328 = add i32 %327, -262
  %329 = icmp ugt i32 %326, %328
  br i1 %329, label %492, label %330

330:                                              ; preds = %325
  %331 = zext i32 %304 to i64
  %332 = getelementptr inbounds nuw i8, ptr %303, i64 %331
  %333 = load i32, ptr %21, align 8, !tbaa !77
  %334 = tail call i32 @llvm.usub.sat.i32(i32 %304, i32 %328)
  %335 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %333, i32 -1)
  %336 = extractvalue { i32, i1 } %335, 1, !nosanitize !57
  br i1 %336, label %337, label %338, !prof !58, !nosanitize !57

337:                                              ; preds = %330, %458, %368
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
  unreachable, !nosanitize !57

338:                                              ; preds = %330
  %339 = getelementptr inbounds nuw i8, ptr %332, i64 258
  %340 = load i32, ptr %22, align 8, !tbaa !70
  %341 = load i32, ptr %23, align 4, !tbaa !72
  %342 = extractvalue { i32, i1 } %335, 0, !nosanitize !57
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, ptr %332, i64 %343
  %345 = load i8, ptr %344, align 1, !tbaa !8
  %346 = sext i32 %333 to i64
  %347 = getelementptr inbounds i8, ptr %332, i64 %346
  %348 = load i8, ptr %347, align 1, !tbaa !8
  %349 = load i32, ptr %24, align 4, !tbaa !68
  %350 = icmp ult i32 %333, %349
  %351 = lshr i32 %341, 2
  %352 = select i1 %350, i32 %341, i32 %351
  %353 = tail call i32 @llvm.umin.i32(i32 %340, i32 %299)
  %354 = getelementptr inbounds nuw i8, ptr %332, i64 1
  %355 = ptrtoint ptr %339 to i64
  br label %356

356:                                              ; preds = %476, %338
  %357 = phi i32 [ %333, %338 ], [ %477, %476 ]
  %358 = phi i32 [ %352, %338 ], [ %486, %476 ]
  %359 = phi i32 [ %322, %338 ], [ %484, %476 ]
  %360 = phi i8 [ %345, %338 ], [ %478, %476 ]
  %361 = phi i8 [ %348, %338 ], [ %479, %476 ]
  %362 = zext nneg i32 %359 to i64
  %363 = getelementptr inbounds nuw i8, ptr %303, i64 %362
  %364 = sext i32 %357 to i64
  %365 = getelementptr inbounds i8, ptr %363, i64 %364
  %366 = load i8, ptr %365, align 1, !tbaa !8
  %367 = icmp eq i8 %366, %361
  br i1 %367, label %368, label %476

368:                                              ; preds = %356
  %369 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %357, i32 -1)
  %370 = extractvalue { i32, i1 } %369, 1, !nosanitize !57
  br i1 %370, label %337, label %371, !prof !58, !nosanitize !57

371:                                              ; preds = %368
  %372 = extractvalue { i32, i1 } %369, 0, !nosanitize !57
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, ptr %363, i64 %373
  %375 = load i8, ptr %374, align 1, !tbaa !8
  %376 = icmp eq i8 %375, %360
  br i1 %376, label %377, label %476

377:                                              ; preds = %371
  %378 = load i8, ptr %363, align 1, !tbaa !8
  %379 = load i8, ptr %332, align 1, !tbaa !8
  %380 = icmp eq i8 %378, %379
  br i1 %380, label %381, label %476

381:                                              ; preds = %377
  %382 = getelementptr inbounds nuw i8, ptr %363, i64 1
  %383 = load i8, ptr %382, align 1, !tbaa !8
  %384 = load i8, ptr %354, align 1, !tbaa !8
  %385 = icmp eq i8 %383, %384
  br i1 %385, label %386, label %476

386:                                              ; preds = %381
  %387 = getelementptr inbounds nuw i8, ptr %363, i64 2
  br label %388

388:                                              ; preds = %433, %386
  %389 = phi ptr [ %387, %386 ], [ %437, %433 ]
  %390 = phi i64 [ 2, %386 ], [ %434, %433 ]
  %391 = getelementptr inbounds nuw i8, ptr %332, i64 %390
  %392 = getelementptr inbounds nuw i8, ptr %391, i64 1
  %393 = load i8, ptr %392, align 1, !tbaa !8
  %394 = getelementptr inbounds nuw i8, ptr %389, i64 1
  %395 = load i8, ptr %394, align 1, !tbaa !8
  %396 = icmp eq i8 %393, %395
  br i1 %396, label %397, label %442

397:                                              ; preds = %388
  %398 = getelementptr inbounds nuw i8, ptr %391, i64 2
  %399 = load i8, ptr %398, align 1, !tbaa !8
  %400 = getelementptr inbounds nuw i8, ptr %389, i64 2
  %401 = load i8, ptr %400, align 1, !tbaa !8
  %402 = icmp eq i8 %399, %401
  br i1 %402, label %403, label %444

403:                                              ; preds = %397
  %404 = getelementptr inbounds nuw i8, ptr %391, i64 3
  %405 = load i8, ptr %404, align 1, !tbaa !8
  %406 = getelementptr inbounds nuw i8, ptr %389, i64 3
  %407 = load i8, ptr %406, align 1, !tbaa !8
  %408 = icmp eq i8 %405, %407
  br i1 %408, label %409, label %446

409:                                              ; preds = %403
  %410 = getelementptr inbounds nuw i8, ptr %391, i64 4
  %411 = load i8, ptr %410, align 1, !tbaa !8
  %412 = getelementptr inbounds nuw i8, ptr %389, i64 4
  %413 = load i8, ptr %412, align 1, !tbaa !8
  %414 = icmp eq i8 %411, %413
  br i1 %414, label %415, label %448

415:                                              ; preds = %409
  %416 = getelementptr inbounds nuw i8, ptr %391, i64 5
  %417 = load i8, ptr %416, align 1, !tbaa !8
  %418 = getelementptr inbounds nuw i8, ptr %389, i64 5
  %419 = load i8, ptr %418, align 1, !tbaa !8
  %420 = icmp eq i8 %417, %419
  br i1 %420, label %421, label %450

421:                                              ; preds = %415
  %422 = getelementptr inbounds nuw i8, ptr %391, i64 6
  %423 = load i8, ptr %422, align 1, !tbaa !8
  %424 = getelementptr inbounds nuw i8, ptr %389, i64 6
  %425 = load i8, ptr %424, align 1, !tbaa !8
  %426 = icmp eq i8 %423, %425
  br i1 %426, label %427, label %452

427:                                              ; preds = %421
  %428 = getelementptr inbounds nuw i8, ptr %391, i64 7
  %429 = load i8, ptr %428, align 1, !tbaa !8
  %430 = getelementptr inbounds nuw i8, ptr %389, i64 7
  %431 = load i8, ptr %430, align 1, !tbaa !8
  %432 = icmp eq i8 %429, %431
  br i1 %432, label %433, label %454

433:                                              ; preds = %427
  %434 = add nuw nsw i64 %390, 8
  %435 = getelementptr inbounds nuw i8, ptr %332, i64 %434
  %436 = load i8, ptr %435, align 1, !tbaa !8
  %437 = getelementptr inbounds nuw i8, ptr %389, i64 8
  %438 = load i8, ptr %437, align 1, !tbaa !8
  %439 = icmp eq i8 %436, %438
  %440 = icmp samesign ult i64 %390, 250
  %441 = select i1 %439, i1 %440, i1 false
  br i1 %441, label %388, label %456, !llvm.loop !147

442:                                              ; preds = %388
  %443 = getelementptr inbounds nuw i8, ptr %391, i64 1
  br label %458

444:                                              ; preds = %397
  %445 = getelementptr inbounds nuw i8, ptr %391, i64 2
  br label %458

446:                                              ; preds = %403
  %447 = getelementptr inbounds nuw i8, ptr %391, i64 3
  br label %458

448:                                              ; preds = %409
  %449 = getelementptr inbounds nuw i8, ptr %391, i64 4
  br label %458

450:                                              ; preds = %415
  %451 = getelementptr inbounds nuw i8, ptr %391, i64 5
  br label %458

452:                                              ; preds = %421
  %453 = getelementptr inbounds nuw i8, ptr %391, i64 6
  br label %458

454:                                              ; preds = %427
  %455 = getelementptr inbounds nuw i8, ptr %391, i64 7
  br label %458

456:                                              ; preds = %433
  %457 = getelementptr inbounds nuw i8, ptr %332, i64 %434
  br label %458

458:                                              ; preds = %456, %454, %452, %450, %448, %446, %444, %442
  %459 = phi ptr [ %445, %444 ], [ %447, %446 ], [ %443, %442 ], [ %455, %454 ], [ %453, %452 ], [ %451, %450 ], [ %449, %448 ], [ %457, %456 ]
  %460 = ptrtoint ptr %459 to i64
  %461 = sub i64 %355, %460
  %462 = trunc i64 %461 to i32
  %463 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %462), !nosanitize !57
  %464 = extractvalue { i32, i1 } %463, 0, !nosanitize !57
  %465 = extractvalue { i32, i1 } %463, 1, !nosanitize !57
  br i1 %465, label %337, label %466, !prof !58, !nosanitize !57

466:                                              ; preds = %458
  %467 = icmp sgt i32 %464, %357
  br i1 %467, label %468, label %476

468:                                              ; preds = %466
  store i32 %359, ptr %8, align 8, !tbaa !83
  %469 = icmp slt i32 %464, %353
  br i1 %469, label %470, label %489

470:                                              ; preds = %468
  %471 = sext i32 %464 to i64
  %472 = getelementptr i8, ptr %332, i64 %471
  %473 = getelementptr i8, ptr %472, i64 -1
  %474 = load i8, ptr %473, align 1, !tbaa !8
  %475 = load i8, ptr %472, align 1, !tbaa !8
  br label %476

476:                                              ; preds = %470, %466, %381, %377, %371, %356
  %477 = phi i32 [ %357, %356 ], [ %357, %371 ], [ %357, %377 ], [ %357, %381 ], [ %464, %470 ], [ %357, %466 ]
  %478 = phi i8 [ %360, %356 ], [ %360, %371 ], [ %360, %377 ], [ %360, %381 ], [ %474, %470 ], [ %360, %466 ]
  %479 = phi i8 [ %361, %356 ], [ %361, %371 ], [ %361, %377 ], [ %361, %381 ], [ %475, %470 ], [ %361, %466 ]
  %480 = and i32 %359, %318
  %481 = zext nneg i32 %480 to i64
  %482 = getelementptr inbounds nuw [2 x i8], ptr %317, i64 %481
  %483 = load i16, ptr %482, align 2, !tbaa !62
  %484 = zext i16 %483 to i32
  %485 = icmp uge i32 %334, %484
  %486 = add i32 %358, -1
  %487 = icmp eq i32 %486, 0
  %488 = select i1 %485, i1 true, i1 %487
  br i1 %488, label %489, label %356, !llvm.loop !148

489:                                              ; preds = %468, %476
  %490 = phi i32 [ %464, %468 ], [ %477, %476 ]
  %491 = tail call i32 @llvm.umin.i32(i32 %490, i32 %299)
  store i32 %491, ptr %25, align 8, !tbaa !78
  br label %494

492:                                              ; preds = %298, %325, %296
  %493 = load i32, ptr %25, align 8, !tbaa !78
  br label %494

494:                                              ; preds = %492, %489
  %495 = phi i32 [ %493, %492 ], [ %491, %489 ]
  %496 = icmp ugt i32 %495, 2
  br i1 %496, label %497, label %590

497:                                              ; preds = %494
  %498 = trunc i32 %495 to i8
  %499 = add i8 %498, -3
  %500 = load i32, ptr %6, align 4, !tbaa !73
  %501 = load i32, ptr %8, align 8, !tbaa !83
  %502 = sub i32 %500, %501
  %503 = trunc i32 %502 to i16
  %504 = trunc i32 %502 to i8
  %505 = load ptr, ptr %26, align 8, !tbaa !44
  %506 = load i32, ptr %27, align 4, !tbaa !134
  %507 = add i32 %506, 1
  store i32 %507, ptr %27, align 4, !tbaa !134
  %508 = zext i32 %506 to i64
  %509 = getelementptr inbounds nuw i8, ptr %505, i64 %508
  store i8 %504, ptr %509, align 1, !tbaa !8
  %510 = lshr i32 %502, 8
  %511 = trunc i32 %510 to i8
  %512 = load ptr, ptr %26, align 8, !tbaa !44
  %513 = load i32, ptr %27, align 4, !tbaa !134
  %514 = add i32 %513, 1
  store i32 %514, ptr %27, align 4, !tbaa !134
  %515 = zext i32 %513 to i64
  %516 = getelementptr inbounds nuw i8, ptr %512, i64 %515
  store i8 %511, ptr %516, align 1, !tbaa !8
  %517 = load ptr, ptr %26, align 8, !tbaa !44
  %518 = load i32, ptr %27, align 4, !tbaa !134
  %519 = add i32 %518, 1
  store i32 %519, ptr %27, align 4, !tbaa !134
  %520 = zext i32 %518 to i64
  %521 = getelementptr inbounds nuw i8, ptr %517, i64 %520
  store i8 %499, ptr %521, align 1, !tbaa !8
  %522 = add i16 %503, -1
  %523 = zext i8 %499 to i64
  %524 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %523
  %525 = load i8, ptr %524, align 1, !tbaa !8
  %526 = zext i8 %525 to i64
  %527 = getelementptr [4 x i8], ptr %30, i64 %526
  %528 = load i16, ptr %527, align 4, !tbaa !8
  %529 = add i16 %528, 1
  store i16 %529, ptr %527, align 4, !tbaa !8
  %530 = icmp ult i16 %522, 256
  br i1 %530, label %531, label %534

531:                                              ; preds = %497
  %532 = zext nneg i16 %522 to i64
  %533 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %532
  br label %539

534:                                              ; preds = %497
  %535 = lshr i16 %522, 7
  %536 = zext nneg i16 %535 to i64
  %537 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %536
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 256
  br label %539

539:                                              ; preds = %534, %531
  %540 = phi ptr [ %533, %531 ], [ %538, %534 ]
  %541 = load i8, ptr %540, align 1, !tbaa !8
  %542 = zext i8 %541 to i64
  %543 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %542
  %544 = load i16, ptr %543, align 4, !tbaa !8
  %545 = add i16 %544, 1
  store i16 %545, ptr %543, align 4, !tbaa !8
  %546 = load i32, ptr %27, align 4, !tbaa !134
  %547 = load i32, ptr %29, align 8, !tbaa !45
  %548 = icmp eq i32 %546, %547
  %549 = load i32, ptr %25, align 8, !tbaa !78
  %550 = load i32, ptr %3, align 4, !tbaa !75
  %551 = sub i32 %550, %549
  store i32 %551, ptr %3, align 4, !tbaa !75
  %552 = load i32, ptr %32, align 8, !tbaa !66
  %553 = icmp ule i32 %549, %552
  %554 = icmp ugt i32 %551, 2
  %555 = select i1 %553, i1 %554, i1 false
  br i1 %555, label %556, label %623

556:                                              ; preds = %539
  %557 = add i32 %549, -1
  store i32 %557, ptr %25, align 8, !tbaa !78
  %558 = load i32, ptr %16, align 8, !tbaa !51
  %559 = load ptr, ptr %7, align 8, !tbaa !34
  %560 = load i32, ptr %17, align 4, !tbaa !50
  %561 = load ptr, ptr %12, align 8, !tbaa !37
  %562 = load ptr, ptr %13, align 8, !tbaa !35
  %563 = load i32, ptr %18, align 8, !tbaa !33
  %564 = load i32, ptr %6, align 4, !tbaa !73
  %565 = load i32, ptr %15, align 8, !tbaa !80
  br label %566

566:                                              ; preds = %566, %556
  %567 = phi i32 [ %586, %566 ], [ %557, %556 ]
  %568 = phi i32 [ %578, %566 ], [ %565, %556 ]
  %569 = phi i32 [ %570, %566 ], [ %564, %556 ]
  %570 = add i32 %569, 1
  store i32 %570, ptr %6, align 4, !tbaa !73
  %571 = shl i32 %568, %558
  %572 = add i32 %569, 3
  %573 = zext i32 %572 to i64
  %574 = getelementptr inbounds nuw i8, ptr %559, i64 %573
  %575 = load i8, ptr %574, align 1, !tbaa !8
  %576 = zext i8 %575 to i32
  %577 = xor i32 %571, %576
  %578 = and i32 %577, %560
  store i32 %578, ptr %15, align 8, !tbaa !80
  %579 = zext i32 %578 to i64
  %580 = getelementptr inbounds nuw [2 x i8], ptr %561, i64 %579
  %581 = load i16, ptr %580, align 2, !tbaa !62
  %582 = and i32 %563, %570
  %583 = zext i32 %582 to i64
  %584 = getelementptr inbounds nuw [2 x i8], ptr %562, i64 %583
  store i16 %581, ptr %584, align 2, !tbaa !62
  %585 = trunc i32 %570 to i16
  store i16 %585, ptr %580, align 2, !tbaa !62
  %586 = add i32 %567, -1
  store i32 %586, ptr %25, align 8, !tbaa !78
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %588, label %566, !llvm.loop !149

588:                                              ; preds = %566
  %589 = add i32 %569, 2
  store i32 %589, ptr %6, align 4, !tbaa !73
  br i1 %548, label %641, label %622

590:                                              ; preds = %494
  %591 = load ptr, ptr %7, align 8, !tbaa !34
  %592 = load i32, ptr %6, align 4, !tbaa !73
  %593 = zext i32 %592 to i64
  %594 = getelementptr inbounds nuw i8, ptr %591, i64 %593
  %595 = load i8, ptr %594, align 1, !tbaa !8
  %596 = load ptr, ptr %26, align 8, !tbaa !44
  %597 = load i32, ptr %27, align 4, !tbaa !134
  %598 = add i32 %597, 1
  store i32 %598, ptr %27, align 4, !tbaa !134
  %599 = zext i32 %597 to i64
  %600 = getelementptr inbounds nuw i8, ptr %596, i64 %599
  store i8 0, ptr %600, align 1, !tbaa !8
  %601 = load ptr, ptr %26, align 8, !tbaa !44
  %602 = load i32, ptr %27, align 4, !tbaa !134
  %603 = add i32 %602, 1
  store i32 %603, ptr %27, align 4, !tbaa !134
  %604 = zext i32 %602 to i64
  %605 = getelementptr inbounds nuw i8, ptr %601, i64 %604
  store i8 0, ptr %605, align 1, !tbaa !8
  %606 = load ptr, ptr %26, align 8, !tbaa !44
  %607 = load i32, ptr %27, align 4, !tbaa !134
  %608 = add i32 %607, 1
  store i32 %608, ptr %27, align 4, !tbaa !134
  %609 = zext i32 %607 to i64
  %610 = getelementptr inbounds nuw i8, ptr %606, i64 %609
  store i8 %595, ptr %610, align 1, !tbaa !8
  %611 = zext i8 %595 to i64
  %612 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %611
  %613 = load i16, ptr %612, align 4, !tbaa !8
  %614 = add i16 %613, 1
  store i16 %614, ptr %612, align 4, !tbaa !8
  %615 = load i32, ptr %27, align 4, !tbaa !134
  %616 = load i32, ptr %29, align 8, !tbaa !45
  %617 = icmp eq i32 %615, %616
  %618 = load i32, ptr %3, align 4, !tbaa !75
  %619 = add i32 %618, -1
  store i32 %619, ptr %3, align 4, !tbaa !75
  %620 = load i32, ptr %6, align 4, !tbaa !73
  %621 = add i32 %620, 1
  store i32 %621, ptr %6, align 4, !tbaa !73
  br i1 %617, label %641, label %622

622:                                              ; preds = %590, %588, %690, %623
  br label %33

623:                                              ; preds = %539
  %624 = load i32, ptr %6, align 4, !tbaa !73
  %625 = add i32 %624, %549
  store i32 %625, ptr %6, align 4, !tbaa !73
  store i32 0, ptr %25, align 8, !tbaa !78
  %626 = load ptr, ptr %7, align 8, !tbaa !34
  %627 = zext i32 %625 to i64
  %628 = getelementptr inbounds nuw i8, ptr %626, i64 %627
  %629 = load i8, ptr %628, align 1, !tbaa !8
  %630 = zext i8 %629 to i32
  store i32 %630, ptr %15, align 8, !tbaa !80
  %631 = load i32, ptr %16, align 8, !tbaa !51
  %632 = shl i32 %630, %631
  %633 = add i32 %625, 1
  %634 = zext i32 %633 to i64
  %635 = getelementptr inbounds nuw i8, ptr %626, i64 %634
  %636 = load i8, ptr %635, align 1, !tbaa !8
  %637 = zext i8 %636 to i32
  %638 = xor i32 %632, %637
  %639 = load i32, ptr %17, align 4, !tbaa !50
  %640 = and i32 %638, %639
  store i32 %640, ptr %15, align 8, !tbaa !80
  br i1 %548, label %641, label %622

641:                                              ; preds = %590, %588, %623
  %642 = phi i32 [ %621, %590 ], [ %589, %588 ], [ %625, %623 ]
  %643 = load i64, ptr %9, align 8, !tbaa !74
  %644 = icmp sgt i64 %643, -1
  br i1 %644, label %645, label %649

645:                                              ; preds = %641
  %646 = load ptr, ptr %7, align 8, !tbaa !34
  %647 = and i64 %643, 4294967295
  %648 = getelementptr inbounds nuw i8, ptr %646, i64 %647
  br label %649

649:                                              ; preds = %641, %645
  %650 = phi ptr [ %648, %645 ], [ null, %641 ]
  %651 = zext i32 %642 to i64
  %652 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %651, i64 %643), !nosanitize !57
  %653 = extractvalue { i64, i1 } %652, 1, !nosanitize !57
  br i1 %653, label %654, label %655, !prof !58, !nosanitize !57

654:                                              ; preds = %649, %762, %706
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
  unreachable, !nosanitize !57

655:                                              ; preds = %649
  %656 = extractvalue { i64, i1 } %652, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %650, i64 noundef %656, i32 noundef 0) #12
  %657 = load i32, ptr %6, align 4, !tbaa !73
  %658 = zext i32 %657 to i64
  store i64 %658, ptr %9, align 8, !tbaa !74
  %659 = load ptr, ptr %0, align 8, !tbaa !20
  %660 = getelementptr inbounds nuw i8, ptr %659, i64 56
  %661 = load ptr, ptr %660, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %661) #12
  %662 = getelementptr inbounds nuw i8, ptr %661, i64 40
  %663 = load i64, ptr %662, align 8, !tbaa !55
  %664 = getelementptr inbounds nuw i8, ptr %659, i64 32
  %665 = load i32, ptr %664, align 8, !tbaa !106
  %666 = zext i32 %665 to i64
  %667 = tail call i64 @llvm.umin.i64(i64 %663, i64 %666)
  %668 = icmp eq i64 %667, 0
  br i1 %668, label %690, label %669

669:                                              ; preds = %655
  %670 = trunc nuw i64 %667 to i32
  %671 = getelementptr inbounds nuw i8, ptr %659, i64 24
  %672 = load ptr, ptr %671, align 8, !tbaa !105
  %673 = getelementptr inbounds nuw i8, ptr %661, i64 32
  %674 = load ptr, ptr %673, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %672, ptr align 1 %674, i64 %667, i1 false)
  %675 = load ptr, ptr %671, align 8, !tbaa !105
  %676 = getelementptr inbounds nuw i8, ptr %675, i64 %667
  store ptr %676, ptr %671, align 8, !tbaa !105
  %677 = load ptr, ptr %673, align 8, !tbaa !56
  %678 = getelementptr inbounds nuw i8, ptr %677, i64 %667
  store ptr %678, ptr %673, align 8, !tbaa !56
  %679 = getelementptr inbounds nuw i8, ptr %659, i64 40
  %680 = load i64, ptr %679, align 8, !tbaa !107
  %681 = add i64 %680, %667
  store i64 %681, ptr %679, align 8, !tbaa !107
  %682 = load i32, ptr %664, align 8, !tbaa !106
  %683 = sub i32 %682, %670
  store i32 %683, ptr %664, align 8, !tbaa !106
  %684 = load i64, ptr %662, align 8, !tbaa !55
  %685 = sub i64 %684, %667
  store i64 %685, ptr %662, align 8, !tbaa !55
  %686 = icmp eq i64 %684, %667
  br i1 %686, label %687, label %690

687:                                              ; preds = %669
  %688 = getelementptr inbounds nuw i8, ptr %661, i64 16
  %689 = load ptr, ptr %688, align 8, !tbaa !40
  store ptr %689, ptr %673, align 8, !tbaa !56
  br label %690

690:                                              ; preds = %655, %669, %687
  %691 = load ptr, ptr %0, align 8, !tbaa !20
  %692 = getelementptr inbounds nuw i8, ptr %691, i64 32
  %693 = load i32, ptr %692, align 8, !tbaa !106
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %808, label %622

695:                                              ; preds = %294
  %696 = load i32, ptr %6, align 4, !tbaa !73
  %697 = tail call i32 @llvm.umin.i32(i32 %696, i32 2)
  store i32 %697, ptr %10, align 4, !tbaa !76
  %698 = icmp eq i32 %1, 4
  br i1 %698, label %699, label %752

699:                                              ; preds = %695
  %700 = load i64, ptr %9, align 8, !tbaa !74
  %701 = icmp sgt i64 %700, -1
  br i1 %701, label %702, label %706

702:                                              ; preds = %699
  %703 = load ptr, ptr %7, align 8, !tbaa !34
  %704 = and i64 %700, 4294967295
  %705 = getelementptr inbounds nuw i8, ptr %703, i64 %704
  br label %706

706:                                              ; preds = %699, %702
  %707 = phi ptr [ %705, %702 ], [ null, %699 ]
  %708 = zext i32 %696 to i64
  %709 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %708, i64 %700), !nosanitize !57
  %710 = extractvalue { i64, i1 } %709, 1, !nosanitize !57
  br i1 %710, label %654, label %711, !prof !58, !nosanitize !57

711:                                              ; preds = %706
  %712 = extractvalue { i64, i1 } %709, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %707, i64 noundef %712, i32 noundef 1) #12
  %713 = load i32, ptr %6, align 4, !tbaa !73
  %714 = zext i32 %713 to i64
  store i64 %714, ptr %9, align 8, !tbaa !74
  %715 = load ptr, ptr %0, align 8, !tbaa !20
  %716 = getelementptr inbounds nuw i8, ptr %715, i64 56
  %717 = load ptr, ptr %716, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %717) #12
  %718 = getelementptr inbounds nuw i8, ptr %717, i64 40
  %719 = load i64, ptr %718, align 8, !tbaa !55
  %720 = getelementptr inbounds nuw i8, ptr %715, i64 32
  %721 = load i32, ptr %720, align 8, !tbaa !106
  %722 = zext i32 %721 to i64
  %723 = tail call i64 @llvm.umin.i64(i64 %719, i64 %722)
  %724 = icmp eq i64 %723, 0
  br i1 %724, label %746, label %725

725:                                              ; preds = %711
  %726 = trunc nuw i64 %723 to i32
  %727 = getelementptr inbounds nuw i8, ptr %715, i64 24
  %728 = load ptr, ptr %727, align 8, !tbaa !105
  %729 = getelementptr inbounds nuw i8, ptr %717, i64 32
  %730 = load ptr, ptr %729, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %728, ptr align 1 %730, i64 %723, i1 false)
  %731 = load ptr, ptr %727, align 8, !tbaa !105
  %732 = getelementptr inbounds nuw i8, ptr %731, i64 %723
  store ptr %732, ptr %727, align 8, !tbaa !105
  %733 = load ptr, ptr %729, align 8, !tbaa !56
  %734 = getelementptr inbounds nuw i8, ptr %733, i64 %723
  store ptr %734, ptr %729, align 8, !tbaa !56
  %735 = getelementptr inbounds nuw i8, ptr %715, i64 40
  %736 = load i64, ptr %735, align 8, !tbaa !107
  %737 = add i64 %736, %723
  store i64 %737, ptr %735, align 8, !tbaa !107
  %738 = load i32, ptr %720, align 8, !tbaa !106
  %739 = sub i32 %738, %726
  store i32 %739, ptr %720, align 8, !tbaa !106
  %740 = load i64, ptr %718, align 8, !tbaa !55
  %741 = sub i64 %740, %723
  store i64 %741, ptr %718, align 8, !tbaa !55
  %742 = icmp eq i64 %740, %723
  br i1 %742, label %743, label %746

743:                                              ; preds = %725
  %744 = getelementptr inbounds nuw i8, ptr %717, i64 16
  %745 = load ptr, ptr %744, align 8, !tbaa !40
  store ptr %745, ptr %729, align 8, !tbaa !56
  br label %746

746:                                              ; preds = %711, %725, %743
  %747 = load ptr, ptr %0, align 8, !tbaa !20
  %748 = getelementptr inbounds nuw i8, ptr %747, i64 32
  %749 = load i32, ptr %748, align 8, !tbaa !106
  %750 = icmp eq i32 %749, 0
  %751 = select i1 %750, i32 2, i32 3
  br label %808

752:                                              ; preds = %695
  %753 = load i32, ptr %27, align 4, !tbaa !134
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %807, label %755

755:                                              ; preds = %752
  %756 = load i64, ptr %9, align 8, !tbaa !74
  %757 = icmp sgt i64 %756, -1
  br i1 %757, label %758, label %762

758:                                              ; preds = %755
  %759 = load ptr, ptr %7, align 8, !tbaa !34
  %760 = and i64 %756, 4294967295
  %761 = getelementptr inbounds nuw i8, ptr %759, i64 %760
  br label %762

762:                                              ; preds = %755, %758
  %763 = phi ptr [ %761, %758 ], [ null, %755 ]
  %764 = zext i32 %696 to i64
  %765 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %764, i64 %756), !nosanitize !57
  %766 = extractvalue { i64, i1 } %765, 1, !nosanitize !57
  br i1 %766, label %654, label %767, !prof !58, !nosanitize !57

767:                                              ; preds = %762
  %768 = extractvalue { i64, i1 } %765, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %763, i64 noundef %768, i32 noundef 0) #12
  %769 = load i32, ptr %6, align 4, !tbaa !73
  %770 = zext i32 %769 to i64
  store i64 %770, ptr %9, align 8, !tbaa !74
  %771 = load ptr, ptr %0, align 8, !tbaa !20
  %772 = getelementptr inbounds nuw i8, ptr %771, i64 56
  %773 = load ptr, ptr %772, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %773) #12
  %774 = getelementptr inbounds nuw i8, ptr %773, i64 40
  %775 = load i64, ptr %774, align 8, !tbaa !55
  %776 = getelementptr inbounds nuw i8, ptr %771, i64 32
  %777 = load i32, ptr %776, align 8, !tbaa !106
  %778 = zext i32 %777 to i64
  %779 = tail call i64 @llvm.umin.i64(i64 %775, i64 %778)
  %780 = icmp eq i64 %779, 0
  br i1 %780, label %802, label %781

781:                                              ; preds = %767
  %782 = trunc nuw i64 %779 to i32
  %783 = getelementptr inbounds nuw i8, ptr %771, i64 24
  %784 = load ptr, ptr %783, align 8, !tbaa !105
  %785 = getelementptr inbounds nuw i8, ptr %773, i64 32
  %786 = load ptr, ptr %785, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %784, ptr align 1 %786, i64 %779, i1 false)
  %787 = load ptr, ptr %783, align 8, !tbaa !105
  %788 = getelementptr inbounds nuw i8, ptr %787, i64 %779
  store ptr %788, ptr %783, align 8, !tbaa !105
  %789 = load ptr, ptr %785, align 8, !tbaa !56
  %790 = getelementptr inbounds nuw i8, ptr %789, i64 %779
  store ptr %790, ptr %785, align 8, !tbaa !56
  %791 = getelementptr inbounds nuw i8, ptr %771, i64 40
  %792 = load i64, ptr %791, align 8, !tbaa !107
  %793 = add i64 %792, %779
  store i64 %793, ptr %791, align 8, !tbaa !107
  %794 = load i32, ptr %776, align 8, !tbaa !106
  %795 = sub i32 %794, %782
  store i32 %795, ptr %776, align 8, !tbaa !106
  %796 = load i64, ptr %774, align 8, !tbaa !55
  %797 = sub i64 %796, %779
  store i64 %797, ptr %774, align 8, !tbaa !55
  %798 = icmp eq i64 %796, %779
  br i1 %798, label %799, label %802

799:                                              ; preds = %781
  %800 = getelementptr inbounds nuw i8, ptr %773, i64 16
  %801 = load ptr, ptr %800, align 8, !tbaa !40
  store ptr %801, ptr %785, align 8, !tbaa !56
  br label %802

802:                                              ; preds = %767, %781, %799
  %803 = load ptr, ptr %0, align 8, !tbaa !20
  %804 = getelementptr inbounds nuw i8, ptr %803, i64 32
  %805 = load i32, ptr %804, align 8, !tbaa !106
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %808, label %807

807:                                              ; preds = %802, %752
  br label %808

808:                                              ; preds = %690, %290, %802, %746, %807
  %809 = phi i32 [ 1, %807 ], [ %751, %746 ], [ 0, %802 ], [ 0, %290 ], [ 0, %690 ]
  ret i32 %809
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

36:                                               ; preds = %622, %2
  %37 = load i32, ptr %3, align 4, !tbaa !75
  %38 = icmp ult i32 %37, 262
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %21, align 8, !tbaa !78
  %41 = load i32, ptr %8, align 8, !tbaa !83
  br label %307

42:                                               ; preds = %36
  %43 = load i32, ptr %4, align 8, !tbaa !32
  %44 = add i32 %43, -262
  %45 = zext i32 %43 to i64
  %46 = insertelement <2 x i32> poison, i32 %43, i64 0
  %47 = shufflevector <2 x i32> %46, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %48

48:                                               ; preds = %259, %42
  %49 = phi i32 [ %207, %259 ], [ %37, %42 ]
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
  br i1 %59, label %166, label %60

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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
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
  br i1 %86, label %108, label %87

87:                                               ; preds = %77
  %88 = and i64 %85, 8589934584
  %89 = mul nsw i64 %88, -2
  %90 = getelementptr i8, ptr %82, i64 %89
  %91 = trunc i64 %88 to i32
  %92 = sub i32 %79, %91
  %93 = insertelement <8 x i32> poison, i32 %78, i64 0
  %94 = shufflevector <8 x i32> %93, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %95

95:                                               ; preds = %95, %87
  %96 = phi i64 [ 0, %87 ], [ %104, %95 ]
  %97 = mul i64 %96, -2
  %98 = getelementptr i8, ptr %82, i64 %97
  %99 = getelementptr inbounds i8, ptr %98, i64 -16
  %100 = load <8 x i16>, ptr %99, align 2, !tbaa !62
  %101 = zext <8 x i16> %100 to <8 x i32>
  %102 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %101, <8 x i32> %94)
  %103 = trunc nuw <8 x i32> %102 to <8 x i16>
  store <8 x i16> %103, ptr %99, align 2, !tbaa !62
  %104 = add nuw i64 %96, 8
  %105 = icmp eq i64 %104, %88
  br i1 %105, label %106, label %95, !llvm.loop !150

106:                                              ; preds = %95
  %107 = icmp eq i64 %85, %88
  br i1 %107, label %121, label %108

108:                                              ; preds = %77, %106
  %109 = phi ptr [ %82, %77 ], [ %90, %106 ]
  %110 = phi i32 [ %79, %77 ], [ %92, %106 ]
  br label %111

111:                                              ; preds = %108, %111
  %112 = phi ptr [ %114, %111 ], [ %109, %108 ]
  %113 = phi i32 [ %119, %111 ], [ %110, %108 ]
  %114 = getelementptr inbounds i8, ptr %112, i64 -2
  %115 = load i16, ptr %114, align 2, !tbaa !62
  %116 = zext i16 %115 to i32
  %117 = tail call i32 @llvm.usub.sat.i32(i32 %116, i32 %78)
  %118 = trunc nuw i32 %117 to i16
  store i16 %118, ptr %114, align 2, !tbaa !62
  %119 = add i32 %113, -1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %111, !llvm.loop !151

121:                                              ; preds = %111, %106
  %122 = load ptr, ptr %13, align 8, !tbaa !35
  %123 = zext i32 %78 to i64
  %124 = getelementptr inbounds nuw [2 x i8], ptr %122, i64 %123
  %125 = add i32 %78, -1
  %126 = zext i32 %125 to i64
  %127 = add nuw nsw i64 %126, 1
  %128 = icmp ult i32 %125, 7
  br i1 %128, label %150, label %129

129:                                              ; preds = %121
  %130 = and i64 %127, 8589934584
  %131 = mul nsw i64 %130, -2
  %132 = getelementptr i8, ptr %124, i64 %131
  %133 = trunc i64 %130 to i32
  %134 = sub i32 %78, %133
  %135 = insertelement <8 x i32> poison, i32 %78, i64 0
  %136 = shufflevector <8 x i32> %135, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %137

137:                                              ; preds = %137, %129
  %138 = phi i64 [ 0, %129 ], [ %146, %137 ]
  %139 = mul i64 %138, -2
  %140 = getelementptr i8, ptr %124, i64 %139
  %141 = getelementptr inbounds i8, ptr %140, i64 -16
  %142 = load <8 x i16>, ptr %141, align 2, !tbaa !62
  %143 = zext <8 x i16> %142 to <8 x i32>
  %144 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %143, <8 x i32> %136)
  %145 = trunc nuw <8 x i32> %144 to <8 x i16>
  store <8 x i16> %145, ptr %141, align 2, !tbaa !62
  %146 = add nuw i64 %138, 8
  %147 = icmp eq i64 %146, %130
  br i1 %147, label %148, label %137, !llvm.loop !152

148:                                              ; preds = %137
  %149 = icmp eq i64 %127, %130
  br i1 %149, label %163, label %150

150:                                              ; preds = %121, %148
  %151 = phi ptr [ %124, %121 ], [ %132, %148 ]
  %152 = phi i32 [ %78, %121 ], [ %134, %148 ]
  br label %153

153:                                              ; preds = %150, %153
  %154 = phi ptr [ %156, %153 ], [ %151, %150 ]
  %155 = phi i32 [ %161, %153 ], [ %152, %150 ]
  %156 = getelementptr inbounds i8, ptr %154, i64 -2
  %157 = load i16, ptr %156, align 2, !tbaa !62
  %158 = zext i16 %157 to i32
  %159 = tail call i32 @llvm.usub.sat.i32(i32 %158, i32 %78)
  %160 = trunc nuw i32 %159 to i16
  store i16 %160, ptr %156, align 2, !tbaa !62
  %161 = add i32 %155, -1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %153, !llvm.loop !153

163:                                              ; preds = %153, %148
  store i32 1, ptr %14, align 8, !tbaa !63
  %164 = add i32 %43, %56
  %165 = load i32, ptr %3, align 4, !tbaa !75
  br label %166

166:                                              ; preds = %163, %48
  %167 = phi i32 [ %165, %163 ], [ %49, %48 ]
  %168 = phi i32 [ %74, %163 ], [ %52, %48 ]
  %169 = phi i32 [ %164, %163 ], [ %56, %48 ]
  %170 = load ptr, ptr %0, align 8, !tbaa !20
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 8
  %172 = load i32, ptr %171, align 8, !tbaa !81
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %264, label %174

174:                                              ; preds = %166
  %175 = load ptr, ptr %7, align 8, !tbaa !34
  %176 = zext i32 %168 to i64
  %177 = getelementptr inbounds nuw i8, ptr %175, i64 %176
  %178 = zext i32 %167 to i64
  %179 = getelementptr inbounds nuw i8, ptr %177, i64 %178
  %180 = tail call i32 @llvm.umin.i32(i32 %172, i32 %169)
  %181 = icmp eq i32 %169, 0
  br i1 %181, label %205, label %182

182:                                              ; preds = %174
  %183 = sub i32 %172, %180
  store i32 %183, ptr %171, align 8, !tbaa !81
  %184 = load ptr, ptr %170, align 8, !tbaa !82
  %185 = zext i32 %180 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %179, ptr align 1 %184, i64 %185, i1 false)
  %186 = getelementptr inbounds nuw i8, ptr %170, i64 56
  %187 = load ptr, ptr %186, align 8, !tbaa !19
  %188 = getelementptr inbounds nuw i8, ptr %187, i64 48
  %189 = load i32, ptr %188, align 8, !tbaa !30
  switch i32 %189, label %198 [
    i32 1, label %190
    i32 2, label %194
  ]

190:                                              ; preds = %182
  %191 = getelementptr inbounds nuw i8, ptr %170, i64 96
  %192 = load i64, ptr %191, align 8, !tbaa !59
  %193 = tail call i64 @adler32(i64 noundef %192, ptr noundef %179, i32 noundef %180) #12
  store i64 %193, ptr %191, align 8, !tbaa !59
  br label %198

194:                                              ; preds = %182
  %195 = getelementptr inbounds nuw i8, ptr %170, i64 96
  %196 = load i64, ptr %195, align 8, !tbaa !59
  %197 = tail call i64 @crc32(i64 noundef %196, ptr noundef %179, i32 noundef %180) #12
  store i64 %197, ptr %195, align 8, !tbaa !59
  br label %198

198:                                              ; preds = %194, %190, %182
  %199 = load ptr, ptr %170, align 8, !tbaa !82
  %200 = getelementptr inbounds nuw i8, ptr %199, i64 %185
  store ptr %200, ptr %170, align 8, !tbaa !82
  %201 = getelementptr inbounds nuw i8, ptr %170, i64 16
  %202 = load i64, ptr %201, align 8, !tbaa !53
  %203 = add i64 %202, %185
  store i64 %203, ptr %201, align 8, !tbaa !53
  %204 = load i32, ptr %3, align 4, !tbaa !75
  br label %205

205:                                              ; preds = %198, %174
  %206 = phi i32 [ %167, %174 ], [ %204, %198 ]
  %207 = add i32 %206, %180
  store i32 %207, ptr %3, align 4, !tbaa !75
  %208 = load i32, ptr %10, align 4, !tbaa !76
  %209 = add i32 %208, %207
  %210 = icmp ugt i32 %209, 2
  br i1 %210, label %211, label %257

211:                                              ; preds = %205
  %212 = load i32, ptr %6, align 4, !tbaa !73
  %213 = sub i32 %212, %208
  %214 = load ptr, ptr %7, align 8, !tbaa !34
  %215 = zext i32 %213 to i64
  %216 = getelementptr inbounds nuw i8, ptr %214, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !8
  %218 = zext i8 %217 to i32
  store i32 %218, ptr %15, align 8, !tbaa !80
  %219 = load i32, ptr %16, align 8, !tbaa !51
  %220 = shl i32 %218, %219
  %221 = add i32 %213, 1
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds nuw i8, ptr %214, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !8
  %225 = zext i8 %224 to i32
  %226 = xor i32 %220, %225
  %227 = load i32, ptr %17, align 4, !tbaa !50
  %228 = and i32 %226, %227
  store i32 %228, ptr %15, align 8, !tbaa !80
  br label %229

229:                                              ; preds = %234, %211
  %230 = phi i32 [ %242, %234 ], [ %228, %211 ]
  %231 = phi i32 [ %254, %234 ], [ %208, %211 ]
  %232 = phi i32 [ %253, %234 ], [ %213, %211 ]
  %233 = icmp eq i32 %231, 0
  br i1 %233, label %257, label %234

234:                                              ; preds = %229
  %235 = shl i32 %230, %219
  %236 = add i32 %232, 2
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds nuw i8, ptr %214, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !8
  %240 = zext i8 %239 to i32
  %241 = xor i32 %235, %240
  %242 = and i32 %241, %227
  store i32 %242, ptr %15, align 8, !tbaa !80
  %243 = load ptr, ptr %12, align 8, !tbaa !37
  %244 = zext i32 %242 to i64
  %245 = getelementptr inbounds nuw [2 x i8], ptr %243, i64 %244
  %246 = load i16, ptr %245, align 2, !tbaa !62
  %247 = load ptr, ptr %13, align 8, !tbaa !35
  %248 = load i32, ptr %18, align 8, !tbaa !33
  %249 = and i32 %248, %232
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds nuw [2 x i8], ptr %247, i64 %250
  store i16 %246, ptr %251, align 2, !tbaa !62
  %252 = trunc i32 %232 to i16
  store i16 %252, ptr %245, align 2, !tbaa !62
  %253 = add i32 %232, 1
  %254 = add i32 %231, -1
  store i32 %254, ptr %10, align 4, !tbaa !76
  %255 = add i32 %254, %207
  %256 = icmp ult i32 %255, 3
  br i1 %256, label %257, label %229, !llvm.loop !91

257:                                              ; preds = %234, %229, %205
  %258 = icmp ult i32 %207, 262
  br i1 %258, label %259, label %264

259:                                              ; preds = %257
  %260 = load ptr, ptr %0, align 8, !tbaa !20
  %261 = getelementptr inbounds nuw i8, ptr %260, i64 8
  %262 = load i32, ptr %261, align 8, !tbaa !81
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %48, !llvm.loop !92

264:                                              ; preds = %259, %257, %166
  %265 = phi i32 [ %207, %259 ], [ %207, %257 ], [ %167, %166 ]
  %266 = load i64, ptr %19, align 8, !tbaa !38
  %267 = load i64, ptr %5, align 8, !tbaa !61
  %268 = icmp ult i64 %266, %267
  br i1 %268, label %269, label %296

269:                                              ; preds = %264
  %270 = load i32, ptr %6, align 4, !tbaa !73
  %271 = zext i32 %270 to i64
  %272 = zext i32 %265 to i64
  %273 = add nuw nsw i64 %272, %271
  %274 = icmp ult i64 %266, %273
  br i1 %274, label %275, label %281

275:                                              ; preds = %269
  %276 = sub i64 %267, %273
  %277 = tail call i64 @llvm.umin.i64(i64 %276, i64 258)
  %278 = load ptr, ptr %7, align 8, !tbaa !34
  %279 = getelementptr inbounds nuw i8, ptr %278, i64 %273
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %279, i8 0, i64 %277, i1 false)
  %280 = add nuw nsw i64 %277, %273
  br label %293

281:                                              ; preds = %269
  %282 = add nuw nsw i64 %273, 258
  %283 = icmp ult i64 %266, %282
  br i1 %283, label %284, label %296

284:                                              ; preds = %281
  %285 = sub nuw nsw i64 %282, %266
  %286 = sub i64 %267, %266
  %287 = tail call i64 @llvm.umin.i64(i64 %285, i64 %286)
  %288 = load ptr, ptr %7, align 8, !tbaa !34
  %289 = getelementptr inbounds nuw i8, ptr %288, i64 %266
  %290 = and i64 %287, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %289, i8 0, i64 %290, i1 false)
  %291 = load i64, ptr %19, align 8, !tbaa !38
  %292 = add i64 %291, %287
  br label %293

293:                                              ; preds = %284, %275
  %294 = phi i64 [ %280, %275 ], [ %292, %284 ]
  store i64 %294, ptr %19, align 8, !tbaa !38
  %295 = load i32, ptr %3, align 4, !tbaa !75
  br label %296

296:                                              ; preds = %264, %281, %293
  %297 = phi i32 [ %265, %264 ], [ %265, %281 ], [ %295, %293 ]
  %298 = icmp ult i32 %297, 262
  %299 = and i1 %20, %298
  br i1 %299, label %912, label %300

300:                                              ; preds = %296
  %301 = icmp eq i32 %297, 0
  br i1 %301, label %769, label %302

302:                                              ; preds = %300
  %303 = icmp ugt i32 %297, 2
  %304 = load i32, ptr %21, align 8, !tbaa !78
  %305 = load i32, ptr %8, align 8, !tbaa !83
  br i1 %303, label %307, label %306

306:                                              ; preds = %302
  store i32 %304, ptr %22, align 8, !tbaa !77
  store i32 %305, ptr %23, align 4, !tbaa !154
  br label %517

307:                                              ; preds = %39, %302
  %308 = phi i32 [ %305, %302 ], [ %41, %39 ]
  %309 = phi i32 [ %304, %302 ], [ %40, %39 ]
  %310 = phi i32 [ %297, %302 ], [ %37, %39 ]
  %311 = load i32, ptr %15, align 8, !tbaa !80
  %312 = load i32, ptr %16, align 8, !tbaa !51
  %313 = shl i32 %311, %312
  %314 = load ptr, ptr %7, align 8, !tbaa !34
  %315 = load i32, ptr %6, align 4, !tbaa !73
  %316 = add i32 %315, 2
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds nuw i8, ptr %314, i64 %317
  %319 = load i8, ptr %318, align 1, !tbaa !8
  %320 = zext i8 %319 to i32
  %321 = xor i32 %313, %320
  %322 = load i32, ptr %17, align 4, !tbaa !50
  %323 = and i32 %321, %322
  store i32 %323, ptr %15, align 8, !tbaa !80
  %324 = load ptr, ptr %12, align 8, !tbaa !37
  %325 = zext i32 %323 to i64
  %326 = getelementptr inbounds nuw [2 x i8], ptr %324, i64 %325
  %327 = load i16, ptr %326, align 2, !tbaa !62
  %328 = load ptr, ptr %13, align 8, !tbaa !35
  %329 = load i32, ptr %18, align 8, !tbaa !33
  %330 = and i32 %329, %315
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds nuw [2 x i8], ptr %328, i64 %331
  store i16 %327, ptr %332, align 2, !tbaa !62
  %333 = zext i16 %327 to i32
  %334 = trunc i32 %315 to i16
  store i16 %334, ptr %326, align 2, !tbaa !62
  store i32 %309, ptr %22, align 8, !tbaa !77
  store i32 %308, ptr %23, align 4, !tbaa !154
  store i32 2, ptr %21, align 8, !tbaa !78
  %335 = icmp eq i16 %327, 0
  br i1 %335, label %521, label %336

336:                                              ; preds = %307
  %337 = load i32, ptr %24, align 8, !tbaa !66
  %338 = icmp ult i32 %309, %337
  br i1 %338, label %339, label %521

339:                                              ; preds = %336
  %340 = sub i32 %315, %333
  %341 = load i32, ptr %4, align 8, !tbaa !32
  %342 = add i32 %341, -262
  %343 = icmp ugt i32 %340, %342
  br i1 %343, label %521, label %344

344:                                              ; preds = %339
  %345 = zext i32 %315 to i64
  %346 = getelementptr inbounds nuw i8, ptr %314, i64 %345
  %347 = tail call i32 @llvm.usub.sat.i32(i32 %315, i32 %342)
  %348 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %309, i32 -1)
  %349 = extractvalue { i32, i1 } %348, 1, !nosanitize !57
  br i1 %349, label %350, label %351, !prof !58, !nosanitize !57

350:                                              ; preds = %344, %472, %382
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
  unreachable, !nosanitize !57

351:                                              ; preds = %344
  %352 = getelementptr inbounds nuw i8, ptr %346, i64 258
  %353 = load i32, ptr %25, align 8, !tbaa !70
  %354 = load i32, ptr %26, align 4, !tbaa !72
  %355 = extractvalue { i32, i1 } %348, 0, !nosanitize !57
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, ptr %346, i64 %356
  %358 = load i8, ptr %357, align 1, !tbaa !8
  %359 = sext i32 %309 to i64
  %360 = getelementptr inbounds i8, ptr %346, i64 %359
  %361 = load i8, ptr %360, align 1, !tbaa !8
  %362 = load i32, ptr %27, align 4, !tbaa !68
  %363 = icmp ult i32 %309, %362
  %364 = lshr i32 %354, 2
  %365 = select i1 %363, i32 %354, i32 %364
  %366 = tail call i32 @llvm.umin.i32(i32 %353, i32 %310)
  %367 = getelementptr inbounds nuw i8, ptr %346, i64 1
  %368 = ptrtoint ptr %352 to i64
  br label %369

369:                                              ; preds = %490, %351
  %370 = phi i32 [ %308, %351 ], [ %491, %490 ]
  %371 = phi i32 [ %309, %351 ], [ %492, %490 ]
  %372 = phi i32 [ %365, %351 ], [ %501, %490 ]
  %373 = phi i32 [ %333, %351 ], [ %499, %490 ]
  %374 = phi i8 [ %358, %351 ], [ %493, %490 ]
  %375 = phi i8 [ %361, %351 ], [ %494, %490 ]
  %376 = zext nneg i32 %373 to i64
  %377 = getelementptr inbounds nuw i8, ptr %314, i64 %376
  %378 = sext i32 %371 to i64
  %379 = getelementptr inbounds i8, ptr %377, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !8
  %381 = icmp eq i8 %380, %375
  br i1 %381, label %382, label %490

382:                                              ; preds = %369
  %383 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %371, i32 -1)
  %384 = extractvalue { i32, i1 } %383, 1, !nosanitize !57
  br i1 %384, label %350, label %385, !prof !58, !nosanitize !57

385:                                              ; preds = %382
  %386 = extractvalue { i32, i1 } %383, 0, !nosanitize !57
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i8, ptr %377, i64 %387
  %389 = load i8, ptr %388, align 1, !tbaa !8
  %390 = icmp eq i8 %389, %374
  br i1 %390, label %391, label %490

391:                                              ; preds = %385
  %392 = load i8, ptr %377, align 1, !tbaa !8
  %393 = load i8, ptr %346, align 1, !tbaa !8
  %394 = icmp eq i8 %392, %393
  br i1 %394, label %395, label %490

395:                                              ; preds = %391
  %396 = getelementptr inbounds nuw i8, ptr %377, i64 1
  %397 = load i8, ptr %396, align 1, !tbaa !8
  %398 = load i8, ptr %367, align 1, !tbaa !8
  %399 = icmp eq i8 %397, %398
  br i1 %399, label %400, label %490

400:                                              ; preds = %395
  %401 = getelementptr inbounds nuw i8, ptr %377, i64 2
  br label %402

402:                                              ; preds = %447, %400
  %403 = phi ptr [ %401, %400 ], [ %451, %447 ]
  %404 = phi i64 [ 2, %400 ], [ %448, %447 ]
  %405 = getelementptr inbounds nuw i8, ptr %346, i64 %404
  %406 = getelementptr inbounds nuw i8, ptr %405, i64 1
  %407 = load i8, ptr %406, align 1, !tbaa !8
  %408 = getelementptr inbounds nuw i8, ptr %403, i64 1
  %409 = load i8, ptr %408, align 1, !tbaa !8
  %410 = icmp eq i8 %407, %409
  br i1 %410, label %411, label %456

411:                                              ; preds = %402
  %412 = getelementptr inbounds nuw i8, ptr %405, i64 2
  %413 = load i8, ptr %412, align 1, !tbaa !8
  %414 = getelementptr inbounds nuw i8, ptr %403, i64 2
  %415 = load i8, ptr %414, align 1, !tbaa !8
  %416 = icmp eq i8 %413, %415
  br i1 %416, label %417, label %458

417:                                              ; preds = %411
  %418 = getelementptr inbounds nuw i8, ptr %405, i64 3
  %419 = load i8, ptr %418, align 1, !tbaa !8
  %420 = getelementptr inbounds nuw i8, ptr %403, i64 3
  %421 = load i8, ptr %420, align 1, !tbaa !8
  %422 = icmp eq i8 %419, %421
  br i1 %422, label %423, label %460

423:                                              ; preds = %417
  %424 = getelementptr inbounds nuw i8, ptr %405, i64 4
  %425 = load i8, ptr %424, align 1, !tbaa !8
  %426 = getelementptr inbounds nuw i8, ptr %403, i64 4
  %427 = load i8, ptr %426, align 1, !tbaa !8
  %428 = icmp eq i8 %425, %427
  br i1 %428, label %429, label %462

429:                                              ; preds = %423
  %430 = getelementptr inbounds nuw i8, ptr %405, i64 5
  %431 = load i8, ptr %430, align 1, !tbaa !8
  %432 = getelementptr inbounds nuw i8, ptr %403, i64 5
  %433 = load i8, ptr %432, align 1, !tbaa !8
  %434 = icmp eq i8 %431, %433
  br i1 %434, label %435, label %464

435:                                              ; preds = %429
  %436 = getelementptr inbounds nuw i8, ptr %405, i64 6
  %437 = load i8, ptr %436, align 1, !tbaa !8
  %438 = getelementptr inbounds nuw i8, ptr %403, i64 6
  %439 = load i8, ptr %438, align 1, !tbaa !8
  %440 = icmp eq i8 %437, %439
  br i1 %440, label %441, label %466

441:                                              ; preds = %435
  %442 = getelementptr inbounds nuw i8, ptr %405, i64 7
  %443 = load i8, ptr %442, align 1, !tbaa !8
  %444 = getelementptr inbounds nuw i8, ptr %403, i64 7
  %445 = load i8, ptr %444, align 1, !tbaa !8
  %446 = icmp eq i8 %443, %445
  br i1 %446, label %447, label %468

447:                                              ; preds = %441
  %448 = add nuw nsw i64 %404, 8
  %449 = getelementptr inbounds nuw i8, ptr %346, i64 %448
  %450 = load i8, ptr %449, align 1, !tbaa !8
  %451 = getelementptr inbounds nuw i8, ptr %403, i64 8
  %452 = load i8, ptr %451, align 1, !tbaa !8
  %453 = icmp eq i8 %450, %452
  %454 = icmp samesign ult i64 %404, 250
  %455 = select i1 %453, i1 %454, i1 false
  br i1 %455, label %402, label %470, !llvm.loop !147

456:                                              ; preds = %402
  %457 = getelementptr inbounds nuw i8, ptr %405, i64 1
  br label %472

458:                                              ; preds = %411
  %459 = getelementptr inbounds nuw i8, ptr %405, i64 2
  br label %472

460:                                              ; preds = %417
  %461 = getelementptr inbounds nuw i8, ptr %405, i64 3
  br label %472

462:                                              ; preds = %423
  %463 = getelementptr inbounds nuw i8, ptr %405, i64 4
  br label %472

464:                                              ; preds = %429
  %465 = getelementptr inbounds nuw i8, ptr %405, i64 5
  br label %472

466:                                              ; preds = %435
  %467 = getelementptr inbounds nuw i8, ptr %405, i64 6
  br label %472

468:                                              ; preds = %441
  %469 = getelementptr inbounds nuw i8, ptr %405, i64 7
  br label %472

470:                                              ; preds = %447
  %471 = getelementptr inbounds nuw i8, ptr %346, i64 %448
  br label %472

472:                                              ; preds = %470, %468, %466, %464, %462, %460, %458, %456
  %473 = phi ptr [ %459, %458 ], [ %461, %460 ], [ %457, %456 ], [ %469, %468 ], [ %467, %466 ], [ %465, %464 ], [ %463, %462 ], [ %471, %470 ]
  %474 = ptrtoint ptr %473 to i64
  %475 = sub i64 %368, %474
  %476 = trunc i64 %475 to i32
  %477 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %476), !nosanitize !57
  %478 = extractvalue { i32, i1 } %477, 0, !nosanitize !57
  %479 = extractvalue { i32, i1 } %477, 1, !nosanitize !57
  br i1 %479, label %350, label %480, !prof !58, !nosanitize !57

480:                                              ; preds = %472
  %481 = icmp sgt i32 %478, %371
  br i1 %481, label %482, label %490

482:                                              ; preds = %480
  store i32 %373, ptr %8, align 8, !tbaa !83
  %483 = icmp slt i32 %478, %366
  br i1 %483, label %484, label %504

484:                                              ; preds = %482
  %485 = sext i32 %478 to i64
  %486 = getelementptr i8, ptr %346, i64 %485
  %487 = getelementptr i8, ptr %486, i64 -1
  %488 = load i8, ptr %487, align 1, !tbaa !8
  %489 = load i8, ptr %486, align 1, !tbaa !8
  br label %490

490:                                              ; preds = %484, %480, %395, %391, %385, %369
  %491 = phi i32 [ %370, %369 ], [ %370, %385 ], [ %370, %391 ], [ %370, %395 ], [ %373, %484 ], [ %370, %480 ]
  %492 = phi i32 [ %371, %369 ], [ %371, %385 ], [ %371, %391 ], [ %371, %395 ], [ %478, %484 ], [ %371, %480 ]
  %493 = phi i8 [ %374, %369 ], [ %374, %385 ], [ %374, %391 ], [ %374, %395 ], [ %488, %484 ], [ %374, %480 ]
  %494 = phi i8 [ %375, %369 ], [ %375, %385 ], [ %375, %391 ], [ %375, %395 ], [ %489, %484 ], [ %375, %480 ]
  %495 = and i32 %373, %329
  %496 = zext nneg i32 %495 to i64
  %497 = getelementptr inbounds nuw [2 x i8], ptr %328, i64 %496
  %498 = load i16, ptr %497, align 2, !tbaa !62
  %499 = zext i16 %498 to i32
  %500 = icmp uge i32 %347, %499
  %501 = add i32 %372, -1
  %502 = icmp eq i32 %501, 0
  %503 = select i1 %500, i1 true, i1 %502
  br i1 %503, label %504, label %369, !llvm.loop !148

504:                                              ; preds = %482, %490
  %505 = phi i32 [ %373, %482 ], [ %491, %490 ]
  %506 = phi i32 [ %478, %482 ], [ %492, %490 ]
  %507 = tail call i32 @llvm.umin.i32(i32 %506, i32 %310)
  store i32 %507, ptr %21, align 8, !tbaa !78
  %508 = icmp ult i32 %507, 6
  br i1 %508, label %509, label %521

509:                                              ; preds = %504
  %510 = load i32, ptr %28, align 8, !tbaa !47
  %511 = icmp eq i32 %510, 1
  br i1 %511, label %517, label %512

512:                                              ; preds = %509
  %513 = icmp eq i32 %507, 3
  br i1 %513, label %514, label %521

514:                                              ; preds = %512
  %515 = sub i32 %315, %505
  %516 = icmp ugt i32 %515, 4096
  br i1 %516, label %517, label %521

517:                                              ; preds = %509, %514, %306
  %518 = phi i32 [ %305, %306 ], [ %308, %514 ], [ %308, %509 ]
  %519 = phi i32 [ %304, %306 ], [ %309, %514 ], [ %309, %509 ]
  %520 = phi i32 [ %297, %306 ], [ %310, %514 ], [ %310, %509 ]
  store i32 2, ptr %21, align 8, !tbaa !78
  br label %521

521:                                              ; preds = %517, %504, %512, %514, %339, %336, %307
  %522 = phi i32 [ 2, %336 ], [ %507, %504 ], [ %507, %512 ], [ 3, %514 ], [ 2, %307 ], [ 2, %339 ], [ 2, %517 ]
  %523 = phi i32 [ %308, %336 ], [ %308, %504 ], [ %308, %512 ], [ %308, %514 ], [ %308, %307 ], [ %308, %339 ], [ %518, %517 ]
  %524 = phi i32 [ %309, %336 ], [ %309, %504 ], [ %309, %512 ], [ %309, %514 ], [ %309, %307 ], [ %309, %339 ], [ %519, %517 ]
  %525 = phi i32 [ %310, %336 ], [ %310, %504 ], [ %310, %512 ], [ %310, %514 ], [ %310, %307 ], [ %310, %339 ], [ %520, %517 ]
  %526 = icmp ult i32 %524, 3
  %527 = icmp ugt i32 %522, %524
  %528 = or i1 %526, %527
  br i1 %528, label %676, label %529

529:                                              ; preds = %521
  %530 = load i32, ptr %6, align 4, !tbaa !73
  %531 = add i32 %525, -3
  %532 = add i32 %531, %530
  %533 = trunc i32 %524 to i8
  %534 = add i8 %533, -3
  %535 = xor i32 %523, -1
  %536 = add i32 %530, %535
  %537 = trunc i32 %536 to i16
  %538 = trunc i32 %536 to i8
  %539 = load ptr, ptr %29, align 8, !tbaa !44
  %540 = load i32, ptr %30, align 4, !tbaa !134
  %541 = add i32 %540, 1
  store i32 %541, ptr %30, align 4, !tbaa !134
  %542 = zext i32 %540 to i64
  %543 = getelementptr inbounds nuw i8, ptr %539, i64 %542
  store i8 %538, ptr %543, align 1, !tbaa !8
  %544 = lshr i32 %536, 8
  %545 = trunc i32 %544 to i8
  %546 = load ptr, ptr %29, align 8, !tbaa !44
  %547 = load i32, ptr %30, align 4, !tbaa !134
  %548 = add i32 %547, 1
  store i32 %548, ptr %30, align 4, !tbaa !134
  %549 = zext i32 %547 to i64
  %550 = getelementptr inbounds nuw i8, ptr %546, i64 %549
  store i8 %545, ptr %550, align 1, !tbaa !8
  %551 = load ptr, ptr %29, align 8, !tbaa !44
  %552 = load i32, ptr %30, align 4, !tbaa !134
  %553 = add i32 %552, 1
  store i32 %553, ptr %30, align 4, !tbaa !134
  %554 = zext i32 %552 to i64
  %555 = getelementptr inbounds nuw i8, ptr %551, i64 %554
  store i8 %534, ptr %555, align 1, !tbaa !8
  %556 = add i16 %537, -1
  %557 = zext i8 %534 to i64
  %558 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %557
  %559 = load i8, ptr %558, align 1, !tbaa !8
  %560 = zext i8 %559 to i64
  %561 = getelementptr [4 x i8], ptr %31, i64 %560
  %562 = load i16, ptr %561, align 4, !tbaa !8
  %563 = add i16 %562, 1
  store i16 %563, ptr %561, align 4, !tbaa !8
  %564 = icmp ult i16 %556, 256
  br i1 %564, label %565, label %568

565:                                              ; preds = %529
  %566 = zext nneg i16 %556 to i64
  %567 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %566
  br label %573

568:                                              ; preds = %529
  %569 = lshr i16 %556, 7
  %570 = zext nneg i16 %569 to i64
  %571 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %570
  %572 = getelementptr inbounds nuw i8, ptr %571, i64 256
  br label %573

573:                                              ; preds = %568, %565
  %574 = phi ptr [ %567, %565 ], [ %572, %568 ]
  %575 = load i8, ptr %574, align 1, !tbaa !8
  %576 = zext i8 %575 to i64
  %577 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %576
  %578 = load i16, ptr %577, align 4, !tbaa !8
  %579 = add i16 %578, 1
  store i16 %579, ptr %577, align 4, !tbaa !8
  %580 = load i32, ptr %30, align 4, !tbaa !134
  %581 = load i32, ptr %33, align 8, !tbaa !45
  %582 = load i32, ptr %22, align 8, !tbaa !77
  %583 = load i32, ptr %3, align 4, !tbaa !75
  %584 = sub i32 %583, %582
  %585 = add i32 %584, 1
  store i32 %585, ptr %3, align 4, !tbaa !75
  %586 = add i32 %582, -2
  store i32 %586, ptr %22, align 8, !tbaa !77
  %587 = load i32, ptr %6, align 4, !tbaa !73
  br label %588

588:                                              ; preds = %616, %573
  %589 = phi i32 [ %617, %616 ], [ %586, %573 ]
  %590 = phi i32 [ %591, %616 ], [ %587, %573 ]
  %591 = add i32 %590, 1
  store i32 %591, ptr %6, align 4, !tbaa !73
  %592 = icmp ugt i32 %591, %532
  br i1 %592, label %616, label %593

593:                                              ; preds = %588
  %594 = load i32, ptr %15, align 8, !tbaa !80
  %595 = load i32, ptr %16, align 8, !tbaa !51
  %596 = shl i32 %594, %595
  %597 = load ptr, ptr %7, align 8, !tbaa !34
  %598 = add i32 %590, 3
  %599 = zext i32 %598 to i64
  %600 = getelementptr inbounds nuw i8, ptr %597, i64 %599
  %601 = load i8, ptr %600, align 1, !tbaa !8
  %602 = zext i8 %601 to i32
  %603 = xor i32 %596, %602
  %604 = load i32, ptr %17, align 4, !tbaa !50
  %605 = and i32 %603, %604
  store i32 %605, ptr %15, align 8, !tbaa !80
  %606 = load ptr, ptr %12, align 8, !tbaa !37
  %607 = zext i32 %605 to i64
  %608 = getelementptr inbounds nuw [2 x i8], ptr %606, i64 %607
  %609 = load i16, ptr %608, align 2, !tbaa !62
  %610 = load ptr, ptr %13, align 8, !tbaa !35
  %611 = load i32, ptr %18, align 8, !tbaa !33
  %612 = and i32 %611, %591
  %613 = zext i32 %612 to i64
  %614 = getelementptr inbounds nuw [2 x i8], ptr %610, i64 %613
  store i16 %609, ptr %614, align 2, !tbaa !62
  %615 = trunc i32 %591 to i16
  store i16 %615, ptr %608, align 2, !tbaa !62
  br label %616

616:                                              ; preds = %588, %593
  %617 = add i32 %589, -1
  store i32 %617, ptr %22, align 8, !tbaa !77
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %588, !llvm.loop !155

619:                                              ; preds = %616
  %620 = icmp eq i32 %580, %581
  store i32 0, ptr %34, align 8, !tbaa !79
  store i32 2, ptr %21, align 8, !tbaa !78
  %621 = add i32 %590, 2
  store i32 %621, ptr %6, align 4, !tbaa !73
  br i1 %620, label %623, label %622

622:                                              ; preds = %619, %671, %765, %756
  br label %36

623:                                              ; preds = %619
  %624 = load i64, ptr %9, align 8, !tbaa !74
  %625 = icmp sgt i64 %624, -1
  br i1 %625, label %626, label %630

626:                                              ; preds = %623
  %627 = load ptr, ptr %7, align 8, !tbaa !34
  %628 = and i64 %624, 4294967295
  %629 = getelementptr inbounds nuw i8, ptr %627, i64 %628
  br label %630

630:                                              ; preds = %623, %626
  %631 = phi ptr [ %629, %626 ], [ null, %623 ]
  %632 = zext i32 %621 to i64
  %633 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %632, i64 %624), !nosanitize !57
  %634 = extractvalue { i64, i1 } %633, 1, !nosanitize !57
  br i1 %634, label %635, label %636, !prof !58, !nosanitize !57

635:                                              ; preds = %715, %630, %866, %810
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !57
  unreachable, !nosanitize !57

636:                                              ; preds = %630
  %637 = extractvalue { i64, i1 } %633, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %631, i64 noundef %637, i32 noundef 0) #12
  %638 = load i32, ptr %6, align 4, !tbaa !73
  %639 = zext i32 %638 to i64
  store i64 %639, ptr %9, align 8, !tbaa !74
  %640 = load ptr, ptr %0, align 8, !tbaa !20
  %641 = getelementptr inbounds nuw i8, ptr %640, i64 56
  %642 = load ptr, ptr %641, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %642) #12
  %643 = getelementptr inbounds nuw i8, ptr %642, i64 40
  %644 = load i64, ptr %643, align 8, !tbaa !55
  %645 = getelementptr inbounds nuw i8, ptr %640, i64 32
  %646 = load i32, ptr %645, align 8, !tbaa !106
  %647 = zext i32 %646 to i64
  %648 = tail call i64 @llvm.umin.i64(i64 %644, i64 %647)
  %649 = icmp eq i64 %648, 0
  br i1 %649, label %671, label %650

650:                                              ; preds = %636
  %651 = trunc nuw i64 %648 to i32
  %652 = getelementptr inbounds nuw i8, ptr %640, i64 24
  %653 = load ptr, ptr %652, align 8, !tbaa !105
  %654 = getelementptr inbounds nuw i8, ptr %642, i64 32
  %655 = load ptr, ptr %654, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %653, ptr align 1 %655, i64 %648, i1 false)
  %656 = load ptr, ptr %652, align 8, !tbaa !105
  %657 = getelementptr inbounds nuw i8, ptr %656, i64 %648
  store ptr %657, ptr %652, align 8, !tbaa !105
  %658 = load ptr, ptr %654, align 8, !tbaa !56
  %659 = getelementptr inbounds nuw i8, ptr %658, i64 %648
  store ptr %659, ptr %654, align 8, !tbaa !56
  %660 = getelementptr inbounds nuw i8, ptr %640, i64 40
  %661 = load i64, ptr %660, align 8, !tbaa !107
  %662 = add i64 %661, %648
  store i64 %662, ptr %660, align 8, !tbaa !107
  %663 = load i32, ptr %645, align 8, !tbaa !106
  %664 = sub i32 %663, %651
  store i32 %664, ptr %645, align 8, !tbaa !106
  %665 = load i64, ptr %643, align 8, !tbaa !55
  %666 = sub i64 %665, %648
  store i64 %666, ptr %643, align 8, !tbaa !55
  %667 = icmp eq i64 %665, %648
  br i1 %667, label %668, label %671

668:                                              ; preds = %650
  %669 = getelementptr inbounds nuw i8, ptr %642, i64 16
  %670 = load ptr, ptr %669, align 8, !tbaa !40
  store ptr %670, ptr %654, align 8, !tbaa !56
  br label %671

671:                                              ; preds = %636, %650, %668
  %672 = load ptr, ptr %0, align 8, !tbaa !20
  %673 = getelementptr inbounds nuw i8, ptr %672, i64 32
  %674 = load i32, ptr %673, align 8, !tbaa !106
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %912, label %622

676:                                              ; preds = %521
  %677 = load i32, ptr %34, align 8, !tbaa !79
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %765, label %679

679:                                              ; preds = %676
  %680 = load ptr, ptr %7, align 8, !tbaa !34
  %681 = load i32, ptr %6, align 4, !tbaa !73
  %682 = add i32 %681, -1
  %683 = zext i32 %682 to i64
  %684 = getelementptr inbounds nuw i8, ptr %680, i64 %683
  %685 = load i8, ptr %684, align 1, !tbaa !8
  %686 = load ptr, ptr %29, align 8, !tbaa !44
  %687 = load i32, ptr %30, align 4, !tbaa !134
  %688 = add i32 %687, 1
  store i32 %688, ptr %30, align 4, !tbaa !134
  %689 = zext i32 %687 to i64
  %690 = getelementptr inbounds nuw i8, ptr %686, i64 %689
  store i8 0, ptr %690, align 1, !tbaa !8
  %691 = load ptr, ptr %29, align 8, !tbaa !44
  %692 = load i32, ptr %30, align 4, !tbaa !134
  %693 = add i32 %692, 1
  store i32 %693, ptr %30, align 4, !tbaa !134
  %694 = zext i32 %692 to i64
  %695 = getelementptr inbounds nuw i8, ptr %691, i64 %694
  store i8 0, ptr %695, align 1, !tbaa !8
  %696 = load ptr, ptr %29, align 8, !tbaa !44
  %697 = load i32, ptr %30, align 4, !tbaa !134
  %698 = add i32 %697, 1
  store i32 %698, ptr %30, align 4, !tbaa !134
  %699 = zext i32 %697 to i64
  %700 = getelementptr inbounds nuw i8, ptr %696, i64 %699
  store i8 %685, ptr %700, align 1, !tbaa !8
  %701 = zext i8 %685 to i64
  %702 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %701
  %703 = load i16, ptr %702, align 4, !tbaa !8
  %704 = add i16 %703, 1
  store i16 %704, ptr %702, align 4, !tbaa !8
  %705 = load i32, ptr %30, align 4, !tbaa !134
  %706 = load i32, ptr %33, align 8, !tbaa !45
  %707 = icmp eq i32 %705, %706
  br i1 %707, label %708, label %756

708:                                              ; preds = %679
  %709 = load i64, ptr %9, align 8, !tbaa !74
  %710 = icmp sgt i64 %709, -1
  br i1 %710, label %711, label %715

711:                                              ; preds = %708
  %712 = load ptr, ptr %7, align 8, !tbaa !34
  %713 = and i64 %709, 4294967295
  %714 = getelementptr inbounds nuw i8, ptr %712, i64 %713
  br label %715

715:                                              ; preds = %708, %711
  %716 = phi ptr [ %714, %711 ], [ null, %708 ]
  %717 = load i32, ptr %6, align 4, !tbaa !73
  %718 = zext i32 %717 to i64
  %719 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %718, i64 %709), !nosanitize !57
  %720 = extractvalue { i64, i1 } %719, 1, !nosanitize !57
  br i1 %720, label %635, label %721, !prof !58, !nosanitize !57

721:                                              ; preds = %715
  %722 = extractvalue { i64, i1 } %719, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %716, i64 noundef %722, i32 noundef 0) #12
  %723 = load i32, ptr %6, align 4, !tbaa !73
  %724 = zext i32 %723 to i64
  store i64 %724, ptr %9, align 8, !tbaa !74
  %725 = load ptr, ptr %0, align 8, !tbaa !20
  %726 = getelementptr inbounds nuw i8, ptr %725, i64 56
  %727 = load ptr, ptr %726, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %727) #12
  %728 = getelementptr inbounds nuw i8, ptr %727, i64 40
  %729 = load i64, ptr %728, align 8, !tbaa !55
  %730 = getelementptr inbounds nuw i8, ptr %725, i64 32
  %731 = load i32, ptr %730, align 8, !tbaa !106
  %732 = zext i32 %731 to i64
  %733 = tail call i64 @llvm.umin.i64(i64 %729, i64 %732)
  %734 = icmp eq i64 %733, 0
  br i1 %734, label %756, label %735

735:                                              ; preds = %721
  %736 = trunc nuw i64 %733 to i32
  %737 = getelementptr inbounds nuw i8, ptr %725, i64 24
  %738 = load ptr, ptr %737, align 8, !tbaa !105
  %739 = getelementptr inbounds nuw i8, ptr %727, i64 32
  %740 = load ptr, ptr %739, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %738, ptr align 1 %740, i64 %733, i1 false)
  %741 = load ptr, ptr %737, align 8, !tbaa !105
  %742 = getelementptr inbounds nuw i8, ptr %741, i64 %733
  store ptr %742, ptr %737, align 8, !tbaa !105
  %743 = load ptr, ptr %739, align 8, !tbaa !56
  %744 = getelementptr inbounds nuw i8, ptr %743, i64 %733
  store ptr %744, ptr %739, align 8, !tbaa !56
  %745 = getelementptr inbounds nuw i8, ptr %725, i64 40
  %746 = load i64, ptr %745, align 8, !tbaa !107
  %747 = add i64 %746, %733
  store i64 %747, ptr %745, align 8, !tbaa !107
  %748 = load i32, ptr %730, align 8, !tbaa !106
  %749 = sub i32 %748, %736
  store i32 %749, ptr %730, align 8, !tbaa !106
  %750 = load i64, ptr %728, align 8, !tbaa !55
  %751 = sub i64 %750, %733
  store i64 %751, ptr %728, align 8, !tbaa !55
  %752 = icmp eq i64 %750, %733
  br i1 %752, label %753, label %756

753:                                              ; preds = %735
  %754 = getelementptr inbounds nuw i8, ptr %727, i64 16
  %755 = load ptr, ptr %754, align 8, !tbaa !40
  store ptr %755, ptr %739, align 8, !tbaa !56
  br label %756

756:                                              ; preds = %753, %735, %721, %679
  %757 = load i32, ptr %6, align 4, !tbaa !73
  %758 = add i32 %757, 1
  store i32 %758, ptr %6, align 4, !tbaa !73
  %759 = load i32, ptr %3, align 4, !tbaa !75
  %760 = add i32 %759, -1
  store i32 %760, ptr %3, align 4, !tbaa !75
  %761 = load ptr, ptr %0, align 8, !tbaa !20
  %762 = getelementptr inbounds nuw i8, ptr %761, i64 32
  %763 = load i32, ptr %762, align 8, !tbaa !106
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %912, label %622

765:                                              ; preds = %676
  store i32 1, ptr %34, align 8, !tbaa !79
  %766 = load i32, ptr %6, align 4, !tbaa !73
  %767 = add i32 %766, 1
  store i32 %767, ptr %6, align 4, !tbaa !73
  %768 = add i32 %525, -1
  store i32 %768, ptr %3, align 4, !tbaa !75
  br label %622

769:                                              ; preds = %300
  %770 = load i32, ptr %34, align 8, !tbaa !79
  %771 = icmp eq i32 %770, 0
  %772 = load i32, ptr %6, align 4, !tbaa !73
  br i1 %771, label %799, label %773

773:                                              ; preds = %769
  %774 = load ptr, ptr %7, align 8, !tbaa !34
  %775 = add i32 %772, -1
  %776 = zext i32 %775 to i64
  %777 = getelementptr inbounds nuw i8, ptr %774, i64 %776
  %778 = load i8, ptr %777, align 1, !tbaa !8
  %779 = load ptr, ptr %29, align 8, !tbaa !44
  %780 = load i32, ptr %30, align 4, !tbaa !134
  %781 = add i32 %780, 1
  store i32 %781, ptr %30, align 4, !tbaa !134
  %782 = zext i32 %780 to i64
  %783 = getelementptr inbounds nuw i8, ptr %779, i64 %782
  store i8 0, ptr %783, align 1, !tbaa !8
  %784 = load ptr, ptr %29, align 8, !tbaa !44
  %785 = load i32, ptr %30, align 4, !tbaa !134
  %786 = add i32 %785, 1
  store i32 %786, ptr %30, align 4, !tbaa !134
  %787 = zext i32 %785 to i64
  %788 = getelementptr inbounds nuw i8, ptr %784, i64 %787
  store i8 0, ptr %788, align 1, !tbaa !8
  %789 = load ptr, ptr %29, align 8, !tbaa !44
  %790 = load i32, ptr %30, align 4, !tbaa !134
  %791 = add i32 %790, 1
  store i32 %791, ptr %30, align 4, !tbaa !134
  %792 = zext i32 %790 to i64
  %793 = getelementptr inbounds nuw i8, ptr %789, i64 %792
  store i8 %778, ptr %793, align 1, !tbaa !8
  %794 = zext i8 %778 to i64
  %795 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %794
  %796 = load i16, ptr %795, align 4, !tbaa !8
  %797 = add i16 %796, 1
  store i16 %797, ptr %795, align 4, !tbaa !8
  store i32 0, ptr %34, align 8, !tbaa !79
  %798 = load i32, ptr %6, align 4, !tbaa !73
  br label %799

799:                                              ; preds = %773, %769
  %800 = phi i32 [ %798, %773 ], [ %772, %769 ]
  %801 = tail call i32 @llvm.umin.i32(i32 %800, i32 2)
  store i32 %801, ptr %10, align 4, !tbaa !76
  %802 = icmp eq i32 %1, 4
  br i1 %802, label %803, label %856

803:                                              ; preds = %799
  %804 = load i64, ptr %9, align 8, !tbaa !74
  %805 = icmp sgt i64 %804, -1
  br i1 %805, label %806, label %810

806:                                              ; preds = %803
  %807 = load ptr, ptr %7, align 8, !tbaa !34
  %808 = and i64 %804, 4294967295
  %809 = getelementptr inbounds nuw i8, ptr %807, i64 %808
  br label %810

810:                                              ; preds = %803, %806
  %811 = phi ptr [ %809, %806 ], [ null, %803 ]
  %812 = zext i32 %800 to i64
  %813 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %812, i64 %804), !nosanitize !57
  %814 = extractvalue { i64, i1 } %813, 1, !nosanitize !57
  br i1 %814, label %635, label %815, !prof !58, !nosanitize !57

815:                                              ; preds = %810
  %816 = extractvalue { i64, i1 } %813, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %811, i64 noundef %816, i32 noundef 1) #12
  %817 = load i32, ptr %6, align 4, !tbaa !73
  %818 = zext i32 %817 to i64
  store i64 %818, ptr %9, align 8, !tbaa !74
  %819 = load ptr, ptr %0, align 8, !tbaa !20
  %820 = getelementptr inbounds nuw i8, ptr %819, i64 56
  %821 = load ptr, ptr %820, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %821) #12
  %822 = getelementptr inbounds nuw i8, ptr %821, i64 40
  %823 = load i64, ptr %822, align 8, !tbaa !55
  %824 = getelementptr inbounds nuw i8, ptr %819, i64 32
  %825 = load i32, ptr %824, align 8, !tbaa !106
  %826 = zext i32 %825 to i64
  %827 = tail call i64 @llvm.umin.i64(i64 %823, i64 %826)
  %828 = icmp eq i64 %827, 0
  br i1 %828, label %850, label %829

829:                                              ; preds = %815
  %830 = trunc nuw i64 %827 to i32
  %831 = getelementptr inbounds nuw i8, ptr %819, i64 24
  %832 = load ptr, ptr %831, align 8, !tbaa !105
  %833 = getelementptr inbounds nuw i8, ptr %821, i64 32
  %834 = load ptr, ptr %833, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %832, ptr align 1 %834, i64 %827, i1 false)
  %835 = load ptr, ptr %831, align 8, !tbaa !105
  %836 = getelementptr inbounds nuw i8, ptr %835, i64 %827
  store ptr %836, ptr %831, align 8, !tbaa !105
  %837 = load ptr, ptr %833, align 8, !tbaa !56
  %838 = getelementptr inbounds nuw i8, ptr %837, i64 %827
  store ptr %838, ptr %833, align 8, !tbaa !56
  %839 = getelementptr inbounds nuw i8, ptr %819, i64 40
  %840 = load i64, ptr %839, align 8, !tbaa !107
  %841 = add i64 %840, %827
  store i64 %841, ptr %839, align 8, !tbaa !107
  %842 = load i32, ptr %824, align 8, !tbaa !106
  %843 = sub i32 %842, %830
  store i32 %843, ptr %824, align 8, !tbaa !106
  %844 = load i64, ptr %822, align 8, !tbaa !55
  %845 = sub i64 %844, %827
  store i64 %845, ptr %822, align 8, !tbaa !55
  %846 = icmp eq i64 %844, %827
  br i1 %846, label %847, label %850

847:                                              ; preds = %829
  %848 = getelementptr inbounds nuw i8, ptr %821, i64 16
  %849 = load ptr, ptr %848, align 8, !tbaa !40
  store ptr %849, ptr %833, align 8, !tbaa !56
  br label %850

850:                                              ; preds = %815, %829, %847
  %851 = load ptr, ptr %0, align 8, !tbaa !20
  %852 = getelementptr inbounds nuw i8, ptr %851, i64 32
  %853 = load i32, ptr %852, align 8, !tbaa !106
  %854 = icmp eq i32 %853, 0
  %855 = select i1 %854, i32 2, i32 3
  br label %912

856:                                              ; preds = %799
  %857 = load i32, ptr %30, align 4, !tbaa !134
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %911, label %859

859:                                              ; preds = %856
  %860 = load i64, ptr %9, align 8, !tbaa !74
  %861 = icmp sgt i64 %860, -1
  br i1 %861, label %862, label %866

862:                                              ; preds = %859
  %863 = load ptr, ptr %7, align 8, !tbaa !34
  %864 = and i64 %860, 4294967295
  %865 = getelementptr inbounds nuw i8, ptr %863, i64 %864
  br label %866

866:                                              ; preds = %859, %862
  %867 = phi ptr [ %865, %862 ], [ null, %859 ]
  %868 = zext i32 %800 to i64
  %869 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %868, i64 %860), !nosanitize !57
  %870 = extractvalue { i64, i1 } %869, 1, !nosanitize !57
  br i1 %870, label %635, label %871, !prof !58, !nosanitize !57

871:                                              ; preds = %866
  %872 = extractvalue { i64, i1 } %869, 0, !nosanitize !57
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %867, i64 noundef %872, i32 noundef 0) #12
  %873 = load i32, ptr %6, align 4, !tbaa !73
  %874 = zext i32 %873 to i64
  store i64 %874, ptr %9, align 8, !tbaa !74
  %875 = load ptr, ptr %0, align 8, !tbaa !20
  %876 = getelementptr inbounds nuw i8, ptr %875, i64 56
  %877 = load ptr, ptr %876, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %877) #12
  %878 = getelementptr inbounds nuw i8, ptr %877, i64 40
  %879 = load i64, ptr %878, align 8, !tbaa !55
  %880 = getelementptr inbounds nuw i8, ptr %875, i64 32
  %881 = load i32, ptr %880, align 8, !tbaa !106
  %882 = zext i32 %881 to i64
  %883 = tail call i64 @llvm.umin.i64(i64 %879, i64 %882)
  %884 = icmp eq i64 %883, 0
  br i1 %884, label %906, label %885

885:                                              ; preds = %871
  %886 = trunc nuw i64 %883 to i32
  %887 = getelementptr inbounds nuw i8, ptr %875, i64 24
  %888 = load ptr, ptr %887, align 8, !tbaa !105
  %889 = getelementptr inbounds nuw i8, ptr %877, i64 32
  %890 = load ptr, ptr %889, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %888, ptr align 1 %890, i64 %883, i1 false)
  %891 = load ptr, ptr %887, align 8, !tbaa !105
  %892 = getelementptr inbounds nuw i8, ptr %891, i64 %883
  store ptr %892, ptr %887, align 8, !tbaa !105
  %893 = load ptr, ptr %889, align 8, !tbaa !56
  %894 = getelementptr inbounds nuw i8, ptr %893, i64 %883
  store ptr %894, ptr %889, align 8, !tbaa !56
  %895 = getelementptr inbounds nuw i8, ptr %875, i64 40
  %896 = load i64, ptr %895, align 8, !tbaa !107
  %897 = add i64 %896, %883
  store i64 %897, ptr %895, align 8, !tbaa !107
  %898 = load i32, ptr %880, align 8, !tbaa !106
  %899 = sub i32 %898, %886
  store i32 %899, ptr %880, align 8, !tbaa !106
  %900 = load i64, ptr %878, align 8, !tbaa !55
  %901 = sub i64 %900, %883
  store i64 %901, ptr %878, align 8, !tbaa !55
  %902 = icmp eq i64 %900, %883
  br i1 %902, label %903, label %906

903:                                              ; preds = %885
  %904 = getelementptr inbounds nuw i8, ptr %877, i64 16
  %905 = load ptr, ptr %904, align 8, !tbaa !40
  store ptr %905, ptr %889, align 8, !tbaa !56
  br label %906

906:                                              ; preds = %871, %885, %903
  %907 = load ptr, ptr %0, align 8, !tbaa !20
  %908 = getelementptr inbounds nuw i8, ptr %907, i64 32
  %909 = load i32, ptr %908, align 8, !tbaa !106
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %912, label %911

911:                                              ; preds = %906, %856
  br label %912

912:                                              ; preds = %756, %671, %296, %906, %850, %911
  %913 = phi i32 [ 0, %906 ], [ %855, %850 ], [ 1, %911 ], [ 0, %296 ], [ 0, %671 ], [ 0, %756 ]
  ret i32 %913
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #10

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
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

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
