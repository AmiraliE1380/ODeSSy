; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.deflate.ll'
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
  br i1 %5, label %153, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !8
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %153, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %153, label %13

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
  br i1 %29, label %153, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %32 = load ptr, ptr %31, align 8, !tbaa !16
  %33 = tail call ptr %21(ptr noundef %32, i32 noundef 1, i32 noundef 5968) #11, !inline_history !18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %153, label %35

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
  br i1 %80, label %153, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %22, align 8, !tbaa !17
  %83 = icmp eq ptr %82, null
  br i1 %83, label %153, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %37, align 8, !tbaa !19
  %86 = icmp eq ptr %85, null
  br i1 %86, label %153, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %85, align 8, !tbaa !20
  %89 = icmp eq ptr %88, %0
  br i1 %89, label %90, label %153

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw i8, ptr %85, i64 8
  %92 = load i32, ptr %91, align 8, !tbaa !29
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
  br label %153

135:                                              ; preds = %72
  %136 = getelementptr inbounds nuw i8, ptr %61, i64 %64
  %137 = getelementptr inbounds nuw i8, ptr %33, i64 5888
  store ptr %136, ptr %137, align 8, !tbaa !44
  %138 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %63, i32 1), !nosanitize !45
  %139 = extractvalue { i32, i1 } %138, 1, !nosanitize !45
  br i1 %139, label %140, label %141, !prof !46, !nosanitize !45

140:                                              ; preds = %135
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

141:                                              ; preds = %135
  %142 = extractvalue { i32, i1 } %138, 0, !nosanitize !45
  %143 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %142, i32 3), !nosanitize !45
  %144 = extractvalue { i32, i1 } %143, 1, !nosanitize !45
  br i1 %144, label %145, label %146, !prof !46, !nosanitize !45

145:                                              ; preds = %141
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !45
  unreachable, !nosanitize !45

146:                                              ; preds = %141
  %147 = extractvalue { i32, i1 } %143, 0, !nosanitize !45
  %148 = getelementptr inbounds nuw i8, ptr %33, i64 5904
  store i32 %147, ptr %148, align 8, !tbaa !47
  %149 = getelementptr inbounds nuw i8, ptr %33, i64 196
  store i32 %28, ptr %149, align 4, !tbaa !48
  %150 = getelementptr inbounds nuw i8, ptr %33, i64 200
  store i32 0, ptr %150, align 8, !tbaa !49
  %151 = getelementptr inbounds nuw i8, ptr %33, i64 72
  store i8 8, ptr %151, align 8, !tbaa !50
  %152 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %153

153:                                              ; preds = %146, %131, %90, %87, %84, %81, %77, %30, %26, %11, %6, %4
  %154 = phi i32 [ %152, %146 ], [ -6, %4 ], [ -2, %11 ], [ -4, %131 ], [ -2, %26 ], [ -4, %30 ], [ -6, %6 ], [ -4, %90 ], [ -4, %77 ], [ -4, %81 ], [ -4, %84 ], [ -4, %87 ]
  ret i32 %154
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  br i1 %9, label %198, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !8
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %198, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %198, label %17

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
  br i1 %35, label %198, label %36

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
  br i1 %56, label %198, label %57

57:                                               ; preds = %42
  %58 = icmp eq i32 %43, 8
  %59 = and i1 %58, %44
  br i1 %59, label %198, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %62 = load ptr, ptr %61, align 8, !tbaa !16
  %63 = tail call ptr %25(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %198, label %65

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
  store i32 %76, ptr %77, align 8, !tbaa !51
  %78 = shl nuw nsw i32 128, %4
  %79 = getelementptr inbounds nuw i8, ptr %63, i64 132
  store i32 %78, ptr %79, align 4, !tbaa !36
  %80 = add nsw i32 %78, -1
  %81 = getelementptr inbounds nuw i8, ptr %63, i64 140
  store i32 %80, ptr %81, align 4, !tbaa !52
  %82 = trunc nuw nsw i32 %4 to i8
  %83 = add nuw nsw i8 %82, 9
  %84 = udiv i8 %83, 3
  %85 = zext nneg i8 %84 to i32
  %86 = getelementptr inbounds nuw i8, ptr %63, i64 144
  store i32 %85, ptr %86, align 8, !tbaa !53
  %87 = load ptr, ptr %19, align 8, !tbaa !15
  %88 = load ptr, ptr %61, align 8, !tbaa !16
  %89 = tail call ptr %87(ptr noundef %88, i32 noundef %72, i32 noundef 2) #11
  %90 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store ptr %89, ptr %90, align 8, !tbaa !34
  %91 = load ptr, ptr %19, align 8, !tbaa !15
  %92 = load ptr, ptr %61, align 8, !tbaa !16
  %93 = load i32, ptr %73, align 8, !tbaa !32
  %94 = tail call ptr %91(ptr noundef %92, i32 noundef %93, i32 noundef 2) #11
  %95 = getelementptr inbounds nuw i8, ptr %63, i64 112
  store ptr %94, ptr %95, align 8, !tbaa !35
  %96 = load ptr, ptr %19, align 8, !tbaa !15
  %97 = load ptr, ptr %61, align 8, !tbaa !16
  %98 = load i32, ptr %79, align 4, !tbaa !36
  %99 = tail call ptr %96(ptr noundef %97, i32 noundef %98, i32 noundef 2) #11
  %100 = getelementptr inbounds nuw i8, ptr %63, i64 120
  store ptr %99, ptr %100, align 8, !tbaa !37
  %101 = getelementptr inbounds nuw i8, ptr %63, i64 5952
  store i64 0, ptr %101, align 8, !tbaa !38
  %102 = shl nuw nsw i32 64, %4
  %103 = getelementptr inbounds nuw i8, ptr %63, i64 5896
  store i32 %102, ptr %103, align 8, !tbaa !39
  %104 = load ptr, ptr %19, align 8, !tbaa !15
  %105 = load ptr, ptr %61, align 8, !tbaa !16
  %106 = tail call ptr %104(ptr noundef %105, i32 noundef %102, i32 noundef 4) #11
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

122:                                              ; preds = %117, %114, %65
  store i32 666, ptr %69, align 8, !tbaa !29
  %123 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !42
  store ptr %123, ptr %18, align 8, !tbaa !9
  %124 = load ptr, ptr %19, align 8, !tbaa !15
  %125 = icmp eq ptr %124, null
  br i1 %125, label %198, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %26, align 8, !tbaa !17
  %128 = icmp eq ptr %127, null
  br i1 %128, label %198, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %68, align 8, !tbaa !19
  %131 = icmp eq ptr %130, null
  br i1 %131, label %198, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %130, align 8, !tbaa !20
  %134 = icmp eq ptr %133, %0
  br i1 %134, label %135, label %198

135:                                              ; preds = %132
  %136 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %137 = load i32, ptr %136, align 8, !tbaa !29
  switch i32 %137, label %198 [
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
  tail call void %127(ptr noundef %143, ptr noundef nonnull %140) #11, !inline_history !54
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
  tail call void %147(ptr noundef %153, ptr noundef nonnull %150) #11, !inline_history !54
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
  tail call void %157(ptr noundef %163, ptr noundef nonnull %160) #11, !inline_history !54
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
  tail call void %167(ptr noundef %173, ptr noundef nonnull %170) #11, !inline_history !54
  %174 = load ptr, ptr %26, align 8, !tbaa !17
  %175 = load ptr, ptr %68, align 8, !tbaa !19
  br label %176

176:                                              ; preds = %172, %166
  %177 = phi ptr [ %175, %172 ], [ %168, %166 ]
  %178 = phi ptr [ %174, %172 ], [ %167, %166 ]
  %179 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %178(ptr noundef %179, ptr noundef %177) #11, !inline_history !54
  store ptr null, ptr %68, align 8, !tbaa !19
  br label %198

180:                                              ; preds = %117
  %181 = getelementptr inbounds nuw i8, ptr %106, i64 %109
  %182 = getelementptr inbounds nuw i8, ptr %63, i64 5888
  store ptr %181, ptr %182, align 8, !tbaa !44
  %183 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %108, i32 1), !nosanitize !45
  %184 = extractvalue { i32, i1 } %183, 1, !nosanitize !45
  br i1 %184, label %185, label %186, !prof !46, !nosanitize !45

185:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

186:                                              ; preds = %180
  %187 = extractvalue { i32, i1 } %183, 0, !nosanitize !45
  %188 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %187, i32 3), !nosanitize !45
  %189 = extractvalue { i32, i1 } %188, 1, !nosanitize !45
  br i1 %189, label %190, label %191, !prof !46, !nosanitize !45

190:                                              ; preds = %186
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !45
  unreachable, !nosanitize !45

191:                                              ; preds = %186
  %192 = extractvalue { i32, i1 } %188, 0, !nosanitize !45
  %193 = getelementptr inbounds nuw i8, ptr %63, i64 5904
  store i32 %192, ptr %193, align 8, !tbaa !47
  %194 = getelementptr inbounds nuw i8, ptr %63, i64 196
  store i32 %32, ptr %194, align 4, !tbaa !48
  %195 = getelementptr inbounds nuw i8, ptr %63, i64 200
  store i32 %5, ptr %195, align 8, !tbaa !49
  %196 = getelementptr inbounds nuw i8, ptr %63, i64 72
  store i8 8, ptr %196, align 8, !tbaa !50
  %197 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %198

198:                                              ; preds = %191, %176, %135, %132, %129, %126, %122, %60, %57, %42, %34, %15, %10, %8
  %199 = phi i32 [ %197, %191 ], [ -6, %8 ], [ -2, %15 ], [ -2, %34 ], [ -2, %42 ], [ -4, %60 ], [ -6, %10 ], [ -2, %57 ], [ -4, %122 ], [ -4, %126 ], [ -4, %129 ], [ -4, %132 ], [ -4, %135 ], [ -4, %176 ]
  ret i32 %199
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

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
  store i64 0, ptr %23, align 8, !tbaa !55
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !56
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %25, align 8, !tbaa !57
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %27, ptr %28, align 8, !tbaa !58
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %30 = load i32, ptr %29, align 8, !tbaa !30
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = sub nsw i32 0, %30
  store i32 %33, ptr %29, align 8, !tbaa !30
  br label %34

34:                                               ; preds = %32, %21
  %35 = phi i32 [ %33, %32 ], [ %30, %21 ]
  %36 = icmp eq i32 %35, 2
  %37 = select i1 %36, i32 57, i32 42
  store i32 %37, ptr %19, align 8, !tbaa !29
  br i1 %36, label %38, label %40

38:                                               ; preds = %34
  %39 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %42

40:                                               ; preds = %34
  %41 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %43, ptr %44, align 8, !tbaa !59
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %45, align 4, !tbaa !60
  tail call void @_tr_init(ptr noundef nonnull %13) #11
  %46 = load ptr, ptr %12, align 8, !tbaa !19
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 80
  %48 = load i32, ptr %47, align 8, !tbaa !32
  %49 = zext i32 %48 to i64
  %50 = shl nuw nsw i64 %49, 1
  %51 = getelementptr inbounds nuw i8, ptr %46, i64 104
  store i64 %50, ptr %51, align 8, !tbaa !61
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 132
  %53 = load i32, ptr %52, align 4, !tbaa !36
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %53, i32 1), !nosanitize !45
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !45
  br i1 %55, label %56, label %57, !prof !46, !nosanitize !45

56:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

57:                                               ; preds = %42
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !45
  %59 = getelementptr inbounds nuw i8, ptr %46, i64 120
  %60 = load ptr, ptr %59, align 8, !tbaa !37
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds nuw [2 x i8], ptr %60, i64 %61
  store i16 0, ptr %62, align 2, !tbaa !62
  %63 = shl nuw nsw i64 %61, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %60, i8 0, i64 %63, i1 false)
  %64 = getelementptr inbounds nuw i8, ptr %46, i64 5960
  store i32 0, ptr %64, align 8, !tbaa !63
  %65 = getelementptr inbounds nuw i8, ptr %46, i64 196
  %66 = load i32, ptr %65, align 4, !tbaa !48
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %67
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 2
  %70 = load i16, ptr %69, align 2, !tbaa !64
  %71 = zext i16 %70 to i32
  %72 = getelementptr inbounds nuw i8, ptr %46, i64 192
  store i32 %71, ptr %72, align 8, !tbaa !66
  %73 = load i16, ptr %68, align 16, !tbaa !67
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds nuw i8, ptr %46, i64 204
  store i32 %74, ptr %75, align 4, !tbaa !68
  %76 = getelementptr inbounds nuw i8, ptr %68, i64 4
  %77 = load i16, ptr %76, align 4, !tbaa !69
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds nuw i8, ptr %46, i64 208
  store i32 %78, ptr %79, align 8, !tbaa !70
  %80 = getelementptr inbounds nuw i8, ptr %68, i64 6
  %81 = load i16, ptr %80, align 2, !tbaa !71
  %82 = zext i16 %81 to i32
  %83 = getelementptr inbounds nuw i8, ptr %46, i64 188
  store i32 %82, ptr %83, align 4, !tbaa !72
  %84 = getelementptr inbounds nuw i8, ptr %46, i64 172
  store i32 0, ptr %84, align 4, !tbaa !73
  %85 = getelementptr inbounds nuw i8, ptr %46, i64 152
  store i64 0, ptr %85, align 8, !tbaa !74
  %86 = getelementptr inbounds nuw i8, ptr %46, i64 180
  store i32 0, ptr %86, align 4, !tbaa !75
  %87 = getelementptr inbounds nuw i8, ptr %46, i64 5932
  store i32 0, ptr %87, align 4, !tbaa !76
  %88 = getelementptr inbounds nuw i8, ptr %46, i64 184
  store i32 2, ptr %88, align 8, !tbaa !77
  %89 = getelementptr inbounds nuw i8, ptr %46, i64 160
  store i32 2, ptr %89, align 8, !tbaa !78
  %90 = getelementptr inbounds nuw i8, ptr %46, i64 168
  store i32 0, ptr %90, align 8, !tbaa !79
  %91 = getelementptr inbounds nuw i8, ptr %46, i64 128
  store i32 0, ptr %91, align 8, !tbaa !80
  br label %92

92:                                               ; preds = %57, %18, %15, %11, %7, %3, %1
  %93 = phi i32 [ 0, %57 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetDictionary(ptr noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %809, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %809, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %809, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %809, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %809

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %809 [
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
  br i1 %24, label %809, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !30
  switch i32 %27, label %34 [
    i32 2, label %809
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %809

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !75
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %809

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !75
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %809

38:                                               ; preds = %34
  store i32 0, ptr %26, align 8, !tbaa !30
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %40 = load i32, ptr %39, align 8, !tbaa !32
  %41 = icmp ult i32 %2, %40
  br i1 %41, label %80, label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %44 = load i64, ptr %43, align 8, !tbaa !59
  %45 = tail call i64 @adler32(i64 noundef %44, ptr noundef nonnull %1, i32 noundef %2) #11
  store i64 %45, ptr %43, align 8, !tbaa !59
  store i32 0, ptr %26, align 8, !tbaa !30
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %47 = load i32, ptr %46, align 8, !tbaa !32
  %48 = icmp ult i32 %2, %47
  br i1 %48, label %80, label %69

49:                                               ; preds = %38
  %50 = icmp eq i32 %27, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %53 = load i32, ptr %52, align 4, !tbaa !36
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %53, i32 1), !nosanitize !45
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !45
  br i1 %55, label %56, label %57, !prof !46, !nosanitize !45

56:                                               ; preds = %51
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

57:                                               ; preds = %51
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !45
  %59 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %60 = load ptr, ptr %59, align 8, !tbaa !37
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds nuw [2 x i8], ptr %60, i64 %61
  store i16 0, ptr %62, align 2, !tbaa !62
  %63 = shl nuw nsw i64 %61, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %60, i8 0, i64 %63, i1 false)
  %64 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %64, align 8, !tbaa !63
  %65 = getelementptr inbounds nuw i8, ptr %15, i64 172
  store i32 0, ptr %65, align 4, !tbaa !73
  %66 = getelementptr inbounds nuw i8, ptr %15, i64 152
  store i64 0, ptr %66, align 8, !tbaa !74
  %67 = getelementptr inbounds nuw i8, ptr %15, i64 5932
  store i32 0, ptr %67, align 4, !tbaa !76
  %68 = load i32, ptr %39, align 8, !tbaa !32
  br label %69

69:                                               ; preds = %57, %49, %42
  %70 = phi ptr [ %35, %57 ], [ %35, %49 ], [ %31, %42 ]
  %71 = phi ptr [ %39, %57 ], [ %39, %49 ], [ %46, %42 ]
  %72 = phi i32 [ %68, %57 ], [ %40, %49 ], [ %47, %42 ]
  %73 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 %72), !nosanitize !45
  %74 = extractvalue { i32, i1 } %73, 1, !nosanitize !45
  br i1 %74, label %75, label %76, !prof !46, !nosanitize !45

75:                                               ; preds = %69
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

76:                                               ; preds = %69
  %77 = extractvalue { i32, i1 } %73, 0, !nosanitize !45
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
  %87 = load i32, ptr %86, align 8, !tbaa !81
  %88 = load ptr, ptr %0, align 8, !tbaa !82
  store i32 %84, ptr %86, align 8, !tbaa !81
  store ptr %85, ptr %0, align 8, !tbaa !82
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
  %104 = load i32, ptr %82, align 4, !tbaa !75
  br label %105

105:                                              ; preds = %381, %80
  %106 = phi i32 [ %308, %381 ], [ %104, %80 ]
  %107 = load i64, ptr %89, align 8, !tbaa !61
  %108 = zext i32 %106 to i64
  %109 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 %108), !nosanitize !45
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !45
  br i1 %110, label %111, label %112, !prof !46, !nosanitize !45

111:                                              ; preds = %105
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

112:                                              ; preds = %105
  %113 = extractvalue { i64, i1 } %109, 0, !nosanitize !45
  %114 = load i32, ptr %90, align 4, !tbaa !73
  %115 = zext i32 %114 to i64
  %116 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %113, i64 %115), !nosanitize !45
  %117 = extractvalue { i64, i1 } %116, 1, !nosanitize !45
  br i1 %117, label %118, label %119, !prof !46, !nosanitize !45

118:                                              ; preds = %112
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

119:                                              ; preds = %112
  %120 = extractvalue { i64, i1 } %116, 0, !nosanitize !45
  %121 = trunc i64 %120 to i32
  %122 = load i32, ptr %81, align 8, !tbaa !32
  %123 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %122, i32 262), !nosanitize !45
  %124 = extractvalue { i32, i1 } %123, 1, !nosanitize !45
  br i1 %124, label %125, label %126, !prof !46, !nosanitize !45

125:                                              ; preds = %119
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

126:                                              ; preds = %119
  %127 = extractvalue { i32, i1 } %123, 0, !nosanitize !45
  %128 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %83, i32 %127), !nosanitize !45
  %129 = extractvalue { i32, i1 } %128, 1, !nosanitize !45
  br i1 %129, label %130, label %131, !prof !46, !nosanitize !45

130:                                              ; preds = %126
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

131:                                              ; preds = %126
  %132 = extractvalue { i32, i1 } %128, 0, !nosanitize !45
  %133 = icmp ult i32 %114, %132
  br i1 %133, label %258, label %134

134:                                              ; preds = %131
  %135 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %83, i32 %121), !nosanitize !45
  %136 = extractvalue { i32, i1 } %135, 1, !nosanitize !45
  br i1 %136, label %137, label %138, !prof !46, !nosanitize !45

137:                                              ; preds = %134
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

138:                                              ; preds = %134
  %139 = extractvalue { i32, i1 } %135, 0, !nosanitize !45
  %140 = load ptr, ptr %92, align 8, !tbaa !34
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 %91
  %142 = zext i32 %139 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %140, ptr align 1 %141, i64 %142, i1 false)
  %143 = load i32, ptr %93, align 8, !tbaa !83
  %144 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %143, i32 %83), !nosanitize !45
  %145 = extractvalue { i32, i1 } %144, 1, !nosanitize !45
  br i1 %145, label %146, label %147, !prof !46, !nosanitize !45

146:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

147:                                              ; preds = %138
  %148 = extractvalue { i32, i1 } %144, 0, !nosanitize !45
  store i32 %148, ptr %93, align 8, !tbaa !83
  %149 = load i32, ptr %90, align 4, !tbaa !73
  %150 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %83), !nosanitize !45
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !45
  br i1 %151, label %152, label %153, !prof !46, !nosanitize !45

152:                                              ; preds = %147
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

153:                                              ; preds = %147
  %154 = extractvalue { i32, i1 } %150, 0, !nosanitize !45
  store i32 %154, ptr %90, align 4, !tbaa !73
  %155 = load i64, ptr %94, align 8, !tbaa !74
  %156 = sub nsw i64 %155, %91
  store i64 %156, ptr %94, align 8, !tbaa !74
  %157 = load i32, ptr %95, align 4, !tbaa !76
  %158 = icmp ugt i32 %157, %154
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store i32 %154, ptr %95, align 4, !tbaa !76
  br label %160

160:                                              ; preds = %159, %153
  %161 = load i32, ptr %81, align 8, !tbaa !32
  %162 = load i32, ptr %96, align 4, !tbaa !36
  %163 = load ptr, ptr %97, align 8, !tbaa !37
  %164 = zext i32 %162 to i64
  %165 = getelementptr inbounds nuw [2 x i8], ptr %163, i64 %164
  %166 = icmp eq i32 %162, 0
  br i1 %166, label %193, label %167, !prof !46, !nosanitize !45

167:                                              ; preds = %160
  %168 = icmp ult i32 %162, 8
  br i1 %168, label %190, label %169

169:                                              ; preds = %167
  %170 = and i64 %164, 4294967288
  %171 = mul nsw i64 %170, -2
  %172 = getelementptr i8, ptr %165, i64 %171
  %173 = trunc nuw i64 %170 to i32
  %174 = sub i32 %162, %173
  %175 = insertelement <8 x i32> poison, i32 %161, i64 0
  %176 = shufflevector <8 x i32> %175, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %177

177:                                              ; preds = %177, %169
  %178 = phi i64 [ 0, %169 ], [ %186, %177 ]
  %179 = mul i64 %178, -2
  %180 = getelementptr i8, ptr %165, i64 %179
  %181 = getelementptr inbounds i8, ptr %180, i64 -16
  %182 = load <8 x i16>, ptr %181, align 2, !tbaa !62
  %183 = zext <8 x i16> %182 to <8 x i32>
  %184 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %183, <8 x i32> %176)
  %185 = trunc nuw <8 x i32> %184 to <8 x i16>
  store <8 x i16> %185, ptr %181, align 2, !tbaa !62
  %186 = add nuw i64 %178, 8
  %187 = icmp eq i64 %186, %170
  br i1 %187, label %188, label %177, !llvm.loop !84

188:                                              ; preds = %177
  %189 = icmp eq i64 %170, %164
  br i1 %189, label %209, label %190

190:                                              ; preds = %188, %167
  %191 = phi ptr [ %165, %167 ], [ %172, %188 ]
  %192 = phi i32 [ %162, %167 ], [ %174, %188 ]
  br label %199

193:                                              ; preds = %160
  %194 = getelementptr inbounds i8, ptr %165, i64 -2
  %195 = load i16, ptr %194, align 2, !tbaa !62
  %196 = zext i16 %195 to i32
  %197 = tail call i32 @llvm.usub.sat.i32(i32 %196, i32 %161)
  %198 = trunc nuw i32 %197 to i16
  store i16 %198, ptr %194, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

199:                                              ; preds = %199, %190
  %200 = phi ptr [ %202, %199 ], [ %191, %190 ]
  %201 = phi i32 [ %207, %199 ], [ %192, %190 ]
  %202 = getelementptr inbounds i8, ptr %200, i64 -2
  %203 = load i16, ptr %202, align 2, !tbaa !62
  %204 = zext i16 %203 to i32
  %205 = tail call i32 @llvm.usub.sat.i32(i32 %204, i32 %161)
  %206 = trunc nuw i32 %205 to i16
  store i16 %206, ptr %202, align 2, !tbaa !62
  %207 = add i32 %201, -1
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %199, !llvm.loop !88

209:                                              ; preds = %199, %188
  %210 = icmp eq i32 %161, 0
  br i1 %210, label %211, label %212, !prof !46, !nosanitize !45

211:                                              ; preds = %209
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

212:                                              ; preds = %209
  %213 = load ptr, ptr %98, align 8, !tbaa !35
  %214 = zext i32 %161 to i64
  %215 = getelementptr inbounds nuw [2 x i8], ptr %213, i64 %214
  %216 = icmp ult i32 %161, 8
  br i1 %216, label %238, label %217

217:                                              ; preds = %212
  %218 = and i64 %214, 4294967288
  %219 = mul nsw i64 %218, -2
  %220 = getelementptr i8, ptr %215, i64 %219
  %221 = trunc nuw i64 %218 to i32
  %222 = sub i32 %161, %221
  %223 = insertelement <8 x i32> poison, i32 %161, i64 0
  %224 = shufflevector <8 x i32> %223, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %225

225:                                              ; preds = %225, %217
  %226 = phi i64 [ 0, %217 ], [ %234, %225 ]
  %227 = mul i64 %226, -2
  %228 = getelementptr i8, ptr %215, i64 %227
  %229 = getelementptr inbounds i8, ptr %228, i64 -16
  %230 = load <8 x i16>, ptr %229, align 2, !tbaa !62
  %231 = zext <8 x i16> %230 to <8 x i32>
  %232 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %231, <8 x i32> %224)
  %233 = trunc nuw <8 x i32> %232 to <8 x i16>
  store <8 x i16> %233, ptr %229, align 2, !tbaa !62
  %234 = add nuw i64 %226, 8
  %235 = icmp eq i64 %234, %218
  br i1 %235, label %236, label %225, !llvm.loop !89

236:                                              ; preds = %225
  %237 = icmp eq i64 %218, %214
  br i1 %237, label %251, label %238

238:                                              ; preds = %236, %212
  %239 = phi ptr [ %215, %212 ], [ %220, %236 ]
  %240 = phi i32 [ %161, %212 ], [ %222, %236 ]
  br label %241

241:                                              ; preds = %241, %238
  %242 = phi ptr [ %244, %241 ], [ %239, %238 ]
  %243 = phi i32 [ %249, %241 ], [ %240, %238 ]
  %244 = getelementptr inbounds i8, ptr %242, i64 -2
  %245 = load i16, ptr %244, align 2, !tbaa !62
  %246 = zext i16 %245 to i32
  %247 = tail call i32 @llvm.usub.sat.i32(i32 %246, i32 %161)
  %248 = trunc nuw i32 %247 to i16
  store i16 %248, ptr %244, align 2, !tbaa !62
  %249 = add i32 %243, -1
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %241, !llvm.loop !90

251:                                              ; preds = %241, %236
  store i32 1, ptr %99, align 8, !tbaa !63
  %252 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %121, i32 %83), !nosanitize !45
  %253 = extractvalue { i32, i1 } %252, 1, !nosanitize !45
  br i1 %253, label %254, label %255, !prof !46, !nosanitize !45

254:                                              ; preds = %251
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

255:                                              ; preds = %251
  %256 = extractvalue { i32, i1 } %252, 0, !nosanitize !45
  %257 = load i32, ptr %82, align 4, !tbaa !75
  br label %258

258:                                              ; preds = %255, %131
  %259 = phi i32 [ %257, %255 ], [ %106, %131 ]
  %260 = phi i32 [ %154, %255 ], [ %114, %131 ]
  %261 = phi i32 [ %256, %255 ], [ %121, %131 ]
  %262 = load ptr, ptr %15, align 8, !tbaa !20
  %263 = getelementptr inbounds nuw i8, ptr %262, i64 8
  %264 = load i32, ptr %263, align 8, !tbaa !81
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %386, label %266

266:                                              ; preds = %258
  %267 = load ptr, ptr %92, align 8, !tbaa !34
  %268 = zext i32 %260 to i64
  %269 = getelementptr inbounds nuw i8, ptr %267, i64 %268
  %270 = zext i32 %259 to i64
  %271 = getelementptr inbounds nuw i8, ptr %269, i64 %270
  %272 = tail call i32 @llvm.umin.i32(i32 %264, i32 %261)
  %273 = icmp eq i32 %261, 0
  br i1 %273, label %302, label %274

274:                                              ; preds = %266
  %275 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %264, i32 %272), !nosanitize !45
  %276 = extractvalue { i32, i1 } %275, 0, !nosanitize !45
  store i32 %276, ptr %263, align 8, !tbaa !81
  %277 = load ptr, ptr %262, align 8, !tbaa !82
  %278 = zext i32 %272 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %271, ptr align 1 %277, i64 %278, i1 false)
  %279 = getelementptr inbounds nuw i8, ptr %262, i64 56
  %280 = load ptr, ptr %279, align 8, !tbaa !19
  %281 = getelementptr inbounds nuw i8, ptr %280, i64 48
  %282 = load i32, ptr %281, align 8, !tbaa !30
  switch i32 %282, label %291 [
    i32 1, label %283
    i32 2, label %287
  ]

283:                                              ; preds = %274
  %284 = getelementptr inbounds nuw i8, ptr %262, i64 96
  %285 = load i64, ptr %284, align 8, !tbaa !59
  %286 = tail call i64 @adler32(i64 noundef %285, ptr noundef %271, i32 noundef %272) #11
  store i64 %286, ptr %284, align 8, !tbaa !59
  br label %291

287:                                              ; preds = %274
  %288 = getelementptr inbounds nuw i8, ptr %262, i64 96
  %289 = load i64, ptr %288, align 8, !tbaa !59
  %290 = tail call i64 @crc32(i64 noundef %289, ptr noundef %271, i32 noundef %272) #11
  store i64 %290, ptr %288, align 8, !tbaa !59
  br label %291

291:                                              ; preds = %287, %283, %274
  %292 = load ptr, ptr %262, align 8, !tbaa !82
  %293 = getelementptr inbounds nuw i8, ptr %292, i64 %278
  store ptr %293, ptr %262, align 8, !tbaa !82
  %294 = getelementptr inbounds nuw i8, ptr %262, i64 16
  %295 = load i64, ptr %294, align 8, !tbaa !55
  %296 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %295, i64 %278), !nosanitize !45
  %297 = extractvalue { i64, i1 } %296, 1, !nosanitize !45
  br i1 %297, label %298, label %299, !prof !46, !nosanitize !45

298:                                              ; preds = %291
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

299:                                              ; preds = %291
  %300 = extractvalue { i64, i1 } %296, 0, !nosanitize !45
  store i64 %300, ptr %294, align 8, !tbaa !55
  %301 = load i32, ptr %82, align 4, !tbaa !75
  br label %302

302:                                              ; preds = %299, %266
  %303 = phi i32 [ %259, %266 ], [ %301, %299 ]
  %304 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %303, i32 %272), !nosanitize !45
  %305 = extractvalue { i32, i1 } %304, 1, !nosanitize !45
  br i1 %305, label %306, label %307, !prof !46, !nosanitize !45

306:                                              ; preds = %302
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

307:                                              ; preds = %302
  %308 = extractvalue { i32, i1 } %304, 0, !nosanitize !45
  store i32 %308, ptr %82, align 4, !tbaa !75
  %309 = load i32, ptr %95, align 4, !tbaa !76
  %310 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %308, i32 %309), !nosanitize !45
  %311 = extractvalue { i32, i1 } %310, 1, !nosanitize !45
  br i1 %311, label %312, label %313, !prof !46, !nosanitize !45

312:                                              ; preds = %307
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

313:                                              ; preds = %307
  %314 = extractvalue { i32, i1 } %310, 0, !nosanitize !45
  %315 = icmp ugt i32 %314, 2
  br i1 %315, label %316, label %379

316:                                              ; preds = %313
  %317 = load i32, ptr %90, align 4, !tbaa !73
  %318 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %317, i32 %309), !nosanitize !45
  %319 = extractvalue { i32, i1 } %318, 0, !nosanitize !45
  %320 = extractvalue { i32, i1 } %318, 1, !nosanitize !45
  br i1 %320, label %321, label %322, !prof !46, !nosanitize !45

321:                                              ; preds = %316
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

322:                                              ; preds = %316
  %323 = load ptr, ptr %92, align 8, !tbaa !34
  %324 = zext i32 %319 to i64
  %325 = getelementptr inbounds nuw i8, ptr %323, i64 %324
  %326 = load i8, ptr %325, align 1, !tbaa !8
  %327 = zext i8 %326 to i32
  store i32 %327, ptr %100, align 8, !tbaa !80
  %328 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %319, i32 1), !nosanitize !45
  %329 = extractvalue { i32, i1 } %328, 1, !nosanitize !45
  br i1 %329, label %330, label %331, !prof !46, !nosanitize !45

330:                                              ; preds = %322
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

331:                                              ; preds = %322
  %332 = extractvalue { i32, i1 } %328, 0, !nosanitize !45
  %333 = load i32, ptr %101, align 8, !tbaa !53
  %334 = shl i32 %327, %333
  %335 = zext i32 %332 to i64
  %336 = getelementptr inbounds nuw i8, ptr %323, i64 %335
  %337 = load i8, ptr %336, align 1, !tbaa !8
  %338 = zext i8 %337 to i32
  %339 = xor i32 %334, %338
  %340 = load i32, ptr %102, align 4, !tbaa !52
  %341 = and i32 %339, %340
  store i32 %341, ptr %100, align 8, !tbaa !80
  br label %342

342:                                              ; preds = %375, %331
  %343 = phi i32 [ %341, %331 ], [ %360, %375 ]
  %344 = phi i32 [ %309, %331 ], [ %371, %375 ]
  %345 = phi i32 [ %319, %331 ], [ %376, %375 ]
  %346 = icmp eq i32 %344, 0
  br i1 %346, label %379, label %347

347:                                              ; preds = %342
  %348 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %345, i32 3), !nosanitize !45
  %349 = extractvalue { i32, i1 } %348, 1, !nosanitize !45
  br i1 %349, label %350, label %351, !prof !46, !nosanitize !45

350:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

351:                                              ; preds = %347
  %352 = shl i32 %343, %333
  %353 = extractvalue { i32, i1 } %348, 0, !nosanitize !45
  %354 = add i32 %353, -1
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds nuw i8, ptr %323, i64 %355
  %357 = load i8, ptr %356, align 1, !tbaa !8
  %358 = zext i8 %357 to i32
  %359 = xor i32 %352, %358
  %360 = and i32 %359, %340
  store i32 %360, ptr %100, align 8, !tbaa !80
  %361 = load ptr, ptr %97, align 8, !tbaa !37
  %362 = zext i32 %360 to i64
  %363 = getelementptr inbounds nuw [2 x i8], ptr %361, i64 %362
  %364 = load i16, ptr %363, align 2, !tbaa !62
  %365 = load ptr, ptr %98, align 8, !tbaa !35
  %366 = load i32, ptr %103, align 8, !tbaa !33
  %367 = and i32 %366, %345
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds nuw [2 x i8], ptr %365, i64 %368
  store i16 %364, ptr %369, align 2, !tbaa !62
  %370 = trunc i32 %345 to i16
  store i16 %370, ptr %363, align 2, !tbaa !62
  %371 = add i32 %344, -1
  store i32 %371, ptr %95, align 4, !tbaa !76
  %372 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %308, i32 %371), !nosanitize !45
  %373 = extractvalue { i32, i1 } %372, 1, !nosanitize !45
  br i1 %373, label %374, label %375, !prof !46, !nosanitize !45

374:                                              ; preds = %351
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

375:                                              ; preds = %351
  %376 = add nuw i32 %345, 1
  %377 = extractvalue { i32, i1 } %372, 0, !nosanitize !45
  %378 = icmp ult i32 %377, 3
  br i1 %378, label %379, label %342, !llvm.loop !91

379:                                              ; preds = %375, %342, %313
  %380 = icmp ult i32 %308, 262
  br i1 %380, label %381, label %386

381:                                              ; preds = %379
  %382 = load ptr, ptr %15, align 8, !tbaa !20
  %383 = getelementptr inbounds nuw i8, ptr %382, i64 8
  %384 = load i32, ptr %383, align 8, !tbaa !81
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %105, !llvm.loop !92

386:                                              ; preds = %381, %379, %258
  %387 = phi i32 [ %308, %381 ], [ %308, %379 ], [ %259, %258 ]
  %388 = getelementptr inbounds nuw i8, ptr %15, i64 5952
  %389 = load i64, ptr %388, align 8, !tbaa !38
  %390 = load i64, ptr %89, align 8, !tbaa !61
  %391 = icmp ult i64 %389, %390
  br i1 %391, label %392, label %428

392:                                              ; preds = %386
  %393 = load i32, ptr %90, align 4, !tbaa !73
  %394 = zext i32 %393 to i64
  %395 = zext i32 %387 to i64
  %396 = add nuw nsw i64 %395, %394
  %397 = icmp ult i64 %389, %396
  br i1 %397, label %398, label %408

398:                                              ; preds = %392
  %399 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %390, i64 %396), !nosanitize !45
  %400 = extractvalue { i64, i1 } %399, 1, !nosanitize !45
  br i1 %400, label %401, label %402, !prof !46, !nosanitize !45

401:                                              ; preds = %398
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

402:                                              ; preds = %398
  %403 = extractvalue { i64, i1 } %399, 0, !nosanitize !45
  %404 = tail call i64 @llvm.umin.i64(i64 %403, i64 258)
  %405 = load ptr, ptr %92, align 8, !tbaa !34
  %406 = getelementptr inbounds nuw i8, ptr %405, i64 %396
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %406, i8 0, i64 %404, i1 false)
  %407 = add nuw nsw i64 %404, %396
  br label %425

408:                                              ; preds = %392
  %409 = add nuw nsw i64 %396, 258
  %410 = icmp ult i64 %389, %409
  br i1 %410, label %411, label %428

411:                                              ; preds = %408
  %412 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %390, i64 %389), !nosanitize !45
  %413 = sub nuw nsw i64 %409, %389
  %414 = extractvalue { i64, i1 } %412, 0, !nosanitize !45
  %415 = tail call i64 @llvm.umin.i64(i64 %413, i64 %414)
  %416 = load ptr, ptr %92, align 8, !tbaa !34
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 %389
  %418 = and i64 %415, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %417, i8 0, i64 %418, i1 false)
  %419 = load i64, ptr %388, align 8, !tbaa !38
  %420 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %419, i64 %415), !nosanitize !45
  %421 = extractvalue { i64, i1 } %420, 1, !nosanitize !45
  br i1 %421, label %422, label %423, !prof !46, !nosanitize !45

422:                                              ; preds = %411
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

423:                                              ; preds = %411
  %424 = extractvalue { i64, i1 } %420, 0, !nosanitize !45
  br label %425

425:                                              ; preds = %423, %402
  %426 = phi i64 [ %407, %402 ], [ %424, %423 ]
  store i64 %426, ptr %388, align 8, !tbaa !38
  %427 = load i32, ptr %82, align 4, !tbaa !75
  br label %428

428:                                              ; preds = %425, %408, %386
  %429 = phi i32 [ %387, %386 ], [ %387, %408 ], [ %427, %425 ]
  %430 = icmp ugt i32 %429, 2
  br i1 %430, label %431, label %797

431:                                              ; preds = %794, %428
  %432 = phi i32 [ %795, %794 ], [ %429, %428 ]
  %433 = load i32, ptr %90, align 4, !tbaa !73
  %434 = load i32, ptr %101, align 8, !tbaa !53
  %435 = load ptr, ptr %92, align 8, !tbaa !34
  %436 = tail call i32 @llvm.usub.sat.i32(i32 -3, i32 %433)
  %437 = add i32 %432, -3
  %438 = icmp ugt i32 %436, %437
  br i1 %438, label %439, label %468, !prof !93, !nosanitize !45

439:                                              ; preds = %431
  %440 = load i32, ptr %100, align 8, !tbaa !80
  %441 = add i32 %432, -2
  %442 = load i32, ptr %102, align 4, !tbaa !52
  %443 = load ptr, ptr %97, align 8, !tbaa !37
  %444 = load ptr, ptr %98, align 8, !tbaa !35
  %445 = load i32, ptr %103, align 8, !tbaa !33
  br label %446

446:                                              ; preds = %446, %439
  %447 = phi i32 [ %440, %439 ], [ %457, %446 ]
  %448 = phi i32 [ %433, %439 ], [ %465, %446 ]
  %449 = phi i32 [ %441, %439 ], [ %466, %446 ]
  %450 = shl i32 %447, %434
  %451 = add i32 %448, 2
  %452 = zext i32 %451 to i64
  %453 = getelementptr inbounds nuw i8, ptr %435, i64 %452
  %454 = load i8, ptr %453, align 1, !tbaa !8
  %455 = zext i8 %454 to i32
  %456 = xor i32 %450, %455
  %457 = and i32 %456, %442
  store i32 %457, ptr %100, align 8, !tbaa !80
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds nuw [2 x i8], ptr %443, i64 %458
  %460 = load i16, ptr %459, align 2, !tbaa !62
  %461 = and i32 %445, %448
  %462 = zext i32 %461 to i64
  %463 = getelementptr inbounds nuw [2 x i8], ptr %444, i64 %462
  store i16 %460, ptr %463, align 2, !tbaa !62
  %464 = trunc i32 %448 to i16
  store i16 %464, ptr %459, align 2, !tbaa !62
  %465 = add nuw i32 %448, 1
  %466 = add i32 %449, -1
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %469, label %446, !llvm.loop !94

468:                                              ; preds = %431
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

469:                                              ; preds = %446
  store i32 %465, ptr %90, align 4, !tbaa !73
  store i32 2, ptr %82, align 4, !tbaa !75
  %470 = load i32, ptr %81, align 8, !tbaa !32
  %471 = zext i32 %470 to i64
  br label %472

472:                                              ; preds = %748, %469
  %473 = phi i32 [ %675, %748 ], [ 2, %469 ]
  %474 = load i64, ptr %89, align 8, !tbaa !61
  %475 = zext nneg i32 %473 to i64
  %476 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %474, i64 %475), !nosanitize !45
  %477 = extractvalue { i64, i1 } %476, 1, !nosanitize !45
  br i1 %477, label %478, label %479, !prof !46, !nosanitize !45

478:                                              ; preds = %472
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

479:                                              ; preds = %472
  %480 = extractvalue { i64, i1 } %476, 0, !nosanitize !45
  %481 = load i32, ptr %90, align 4, !tbaa !73
  %482 = zext i32 %481 to i64
  %483 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %480, i64 %482), !nosanitize !45
  %484 = extractvalue { i64, i1 } %483, 1, !nosanitize !45
  br i1 %484, label %485, label %486, !prof !46, !nosanitize !45

485:                                              ; preds = %479
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

486:                                              ; preds = %479
  %487 = extractvalue { i64, i1 } %483, 0, !nosanitize !45
  %488 = trunc i64 %487 to i32
  %489 = load i32, ptr %81, align 8, !tbaa !32
  %490 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %489, i32 262), !nosanitize !45
  %491 = extractvalue { i32, i1 } %490, 1, !nosanitize !45
  br i1 %491, label %492, label %493, !prof !46, !nosanitize !45

492:                                              ; preds = %486
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

493:                                              ; preds = %486
  %494 = extractvalue { i32, i1 } %490, 0, !nosanitize !45
  %495 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %470, i32 %494), !nosanitize !45
  %496 = extractvalue { i32, i1 } %495, 1, !nosanitize !45
  br i1 %496, label %497, label %498, !prof !46, !nosanitize !45

497:                                              ; preds = %493
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

498:                                              ; preds = %493
  %499 = extractvalue { i32, i1 } %495, 0, !nosanitize !45
  %500 = icmp ult i32 %481, %499
  br i1 %500, label %625, label %501

501:                                              ; preds = %498
  %502 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %470, i32 %488), !nosanitize !45
  %503 = extractvalue { i32, i1 } %502, 1, !nosanitize !45
  br i1 %503, label %504, label %505, !prof !46, !nosanitize !45

504:                                              ; preds = %501
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

505:                                              ; preds = %501
  %506 = extractvalue { i32, i1 } %502, 0, !nosanitize !45
  %507 = load ptr, ptr %92, align 8, !tbaa !34
  %508 = getelementptr inbounds nuw i8, ptr %507, i64 %471
  %509 = zext i32 %506 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %507, ptr align 1 %508, i64 %509, i1 false)
  %510 = load i32, ptr %93, align 8, !tbaa !83
  %511 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %510, i32 %470), !nosanitize !45
  %512 = extractvalue { i32, i1 } %511, 1, !nosanitize !45
  br i1 %512, label %513, label %514, !prof !46, !nosanitize !45

513:                                              ; preds = %505
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

514:                                              ; preds = %505
  %515 = extractvalue { i32, i1 } %511, 0, !nosanitize !45
  store i32 %515, ptr %93, align 8, !tbaa !83
  %516 = load i32, ptr %90, align 4, !tbaa !73
  %517 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %516, i32 %470), !nosanitize !45
  %518 = extractvalue { i32, i1 } %517, 1, !nosanitize !45
  br i1 %518, label %519, label %520, !prof !46, !nosanitize !45

519:                                              ; preds = %514
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

520:                                              ; preds = %514
  %521 = extractvalue { i32, i1 } %517, 0, !nosanitize !45
  store i32 %521, ptr %90, align 4, !tbaa !73
  %522 = load i64, ptr %94, align 8, !tbaa !74
  %523 = sub nsw i64 %522, %471
  store i64 %523, ptr %94, align 8, !tbaa !74
  %524 = load i32, ptr %95, align 4, !tbaa !76
  %525 = icmp ugt i32 %524, %521
  br i1 %525, label %526, label %527

526:                                              ; preds = %520
  store i32 %521, ptr %95, align 4, !tbaa !76
  br label %527

527:                                              ; preds = %526, %520
  %528 = load i32, ptr %81, align 8, !tbaa !32
  %529 = load i32, ptr %96, align 4, !tbaa !36
  %530 = load ptr, ptr %97, align 8, !tbaa !37
  %531 = zext i32 %529 to i64
  %532 = getelementptr inbounds nuw [2 x i8], ptr %530, i64 %531
  %533 = icmp eq i32 %529, 0
  br i1 %533, label %560, label %534, !prof !46, !nosanitize !45

534:                                              ; preds = %527
  %535 = icmp ult i32 %529, 8
  br i1 %535, label %557, label %536

536:                                              ; preds = %534
  %537 = and i64 %531, 4294967288
  %538 = mul nsw i64 %537, -2
  %539 = getelementptr i8, ptr %532, i64 %538
  %540 = trunc nuw i64 %537 to i32
  %541 = sub i32 %529, %540
  %542 = insertelement <8 x i32> poison, i32 %528, i64 0
  %543 = shufflevector <8 x i32> %542, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %544

544:                                              ; preds = %544, %536
  %545 = phi i64 [ 0, %536 ], [ %553, %544 ]
  %546 = mul i64 %545, -2
  %547 = getelementptr i8, ptr %532, i64 %546
  %548 = getelementptr inbounds i8, ptr %547, i64 -16
  %549 = load <8 x i16>, ptr %548, align 2, !tbaa !62
  %550 = zext <8 x i16> %549 to <8 x i32>
  %551 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %550, <8 x i32> %543)
  %552 = trunc nuw <8 x i32> %551 to <8 x i16>
  store <8 x i16> %552, ptr %548, align 2, !tbaa !62
  %553 = add nuw i64 %545, 8
  %554 = icmp eq i64 %553, %537
  br i1 %554, label %555, label %544, !llvm.loop !95

555:                                              ; preds = %544
  %556 = icmp eq i64 %537, %531
  br i1 %556, label %576, label %557

557:                                              ; preds = %555, %534
  %558 = phi ptr [ %532, %534 ], [ %539, %555 ]
  %559 = phi i32 [ %529, %534 ], [ %541, %555 ]
  br label %566

560:                                              ; preds = %527
  %561 = getelementptr inbounds i8, ptr %532, i64 -2
  %562 = load i16, ptr %561, align 2, !tbaa !62
  %563 = zext i16 %562 to i32
  %564 = tail call i32 @llvm.usub.sat.i32(i32 %563, i32 %528)
  %565 = trunc nuw i32 %564 to i16
  store i16 %565, ptr %561, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

566:                                              ; preds = %566, %557
  %567 = phi ptr [ %569, %566 ], [ %558, %557 ]
  %568 = phi i32 [ %574, %566 ], [ %559, %557 ]
  %569 = getelementptr inbounds i8, ptr %567, i64 -2
  %570 = load i16, ptr %569, align 2, !tbaa !62
  %571 = zext i16 %570 to i32
  %572 = tail call i32 @llvm.usub.sat.i32(i32 %571, i32 %528)
  %573 = trunc nuw i32 %572 to i16
  store i16 %573, ptr %569, align 2, !tbaa !62
  %574 = add i32 %568, -1
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %566, !llvm.loop !96

576:                                              ; preds = %566, %555
  %577 = icmp eq i32 %528, 0
  br i1 %577, label %578, label %579, !prof !46, !nosanitize !45

578:                                              ; preds = %576
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

579:                                              ; preds = %576
  %580 = load ptr, ptr %98, align 8, !tbaa !35
  %581 = zext i32 %528 to i64
  %582 = getelementptr inbounds nuw [2 x i8], ptr %580, i64 %581
  %583 = icmp ult i32 %528, 8
  br i1 %583, label %605, label %584

584:                                              ; preds = %579
  %585 = and i64 %581, 4294967288
  %586 = mul nsw i64 %585, -2
  %587 = getelementptr i8, ptr %582, i64 %586
  %588 = trunc nuw i64 %585 to i32
  %589 = sub i32 %528, %588
  %590 = insertelement <8 x i32> poison, i32 %528, i64 0
  %591 = shufflevector <8 x i32> %590, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %592

592:                                              ; preds = %592, %584
  %593 = phi i64 [ 0, %584 ], [ %601, %592 ]
  %594 = mul i64 %593, -2
  %595 = getelementptr i8, ptr %582, i64 %594
  %596 = getelementptr inbounds i8, ptr %595, i64 -16
  %597 = load <8 x i16>, ptr %596, align 2, !tbaa !62
  %598 = zext <8 x i16> %597 to <8 x i32>
  %599 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %598, <8 x i32> %591)
  %600 = trunc nuw <8 x i32> %599 to <8 x i16>
  store <8 x i16> %600, ptr %596, align 2, !tbaa !62
  %601 = add nuw i64 %593, 8
  %602 = icmp eq i64 %601, %585
  br i1 %602, label %603, label %592, !llvm.loop !97

603:                                              ; preds = %592
  %604 = icmp eq i64 %585, %581
  br i1 %604, label %618, label %605

605:                                              ; preds = %603, %579
  %606 = phi ptr [ %582, %579 ], [ %587, %603 ]
  %607 = phi i32 [ %528, %579 ], [ %589, %603 ]
  br label %608

608:                                              ; preds = %608, %605
  %609 = phi ptr [ %611, %608 ], [ %606, %605 ]
  %610 = phi i32 [ %616, %608 ], [ %607, %605 ]
  %611 = getelementptr inbounds i8, ptr %609, i64 -2
  %612 = load i16, ptr %611, align 2, !tbaa !62
  %613 = zext i16 %612 to i32
  %614 = tail call i32 @llvm.usub.sat.i32(i32 %613, i32 %528)
  %615 = trunc nuw i32 %614 to i16
  store i16 %615, ptr %611, align 2, !tbaa !62
  %616 = add i32 %610, -1
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %618, label %608, !llvm.loop !98

618:                                              ; preds = %608, %603
  store i32 1, ptr %99, align 8, !tbaa !63
  %619 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %488, i32 %470), !nosanitize !45
  %620 = extractvalue { i32, i1 } %619, 1, !nosanitize !45
  br i1 %620, label %621, label %622, !prof !46, !nosanitize !45

621:                                              ; preds = %618
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

622:                                              ; preds = %618
  %623 = extractvalue { i32, i1 } %619, 0, !nosanitize !45
  %624 = load i32, ptr %82, align 4, !tbaa !75
  br label %625

625:                                              ; preds = %622, %498
  %626 = phi i32 [ %624, %622 ], [ %473, %498 ]
  %627 = phi i32 [ %521, %622 ], [ %481, %498 ]
  %628 = phi i32 [ %623, %622 ], [ %488, %498 ]
  %629 = load ptr, ptr %15, align 8, !tbaa !20
  %630 = getelementptr inbounds nuw i8, ptr %629, i64 8
  %631 = load i32, ptr %630, align 8, !tbaa !81
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %753, label %633

633:                                              ; preds = %625
  %634 = load ptr, ptr %92, align 8, !tbaa !34
  %635 = zext i32 %627 to i64
  %636 = getelementptr inbounds nuw i8, ptr %634, i64 %635
  %637 = zext i32 %626 to i64
  %638 = getelementptr inbounds nuw i8, ptr %636, i64 %637
  %639 = tail call i32 @llvm.umin.i32(i32 %631, i32 %628)
  %640 = icmp eq i32 %628, 0
  br i1 %640, label %669, label %641

641:                                              ; preds = %633
  %642 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %631, i32 %639), !nosanitize !45
  %643 = extractvalue { i32, i1 } %642, 0, !nosanitize !45
  store i32 %643, ptr %630, align 8, !tbaa !81
  %644 = load ptr, ptr %629, align 8, !tbaa !82
  %645 = zext i32 %639 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %638, ptr align 1 %644, i64 %645, i1 false)
  %646 = getelementptr inbounds nuw i8, ptr %629, i64 56
  %647 = load ptr, ptr %646, align 8, !tbaa !19
  %648 = getelementptr inbounds nuw i8, ptr %647, i64 48
  %649 = load i32, ptr %648, align 8, !tbaa !30
  switch i32 %649, label %658 [
    i32 1, label %650
    i32 2, label %654
  ]

650:                                              ; preds = %641
  %651 = getelementptr inbounds nuw i8, ptr %629, i64 96
  %652 = load i64, ptr %651, align 8, !tbaa !59
  %653 = tail call i64 @adler32(i64 noundef %652, ptr noundef %638, i32 noundef %639) #11
  store i64 %653, ptr %651, align 8, !tbaa !59
  br label %658

654:                                              ; preds = %641
  %655 = getelementptr inbounds nuw i8, ptr %629, i64 96
  %656 = load i64, ptr %655, align 8, !tbaa !59
  %657 = tail call i64 @crc32(i64 noundef %656, ptr noundef %638, i32 noundef %639) #11
  store i64 %657, ptr %655, align 8, !tbaa !59
  br label %658

658:                                              ; preds = %654, %650, %641
  %659 = load ptr, ptr %629, align 8, !tbaa !82
  %660 = getelementptr inbounds nuw i8, ptr %659, i64 %645
  store ptr %660, ptr %629, align 8, !tbaa !82
  %661 = getelementptr inbounds nuw i8, ptr %629, i64 16
  %662 = load i64, ptr %661, align 8, !tbaa !55
  %663 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %662, i64 %645), !nosanitize !45
  %664 = extractvalue { i64, i1 } %663, 1, !nosanitize !45
  br i1 %664, label %665, label %666, !prof !46, !nosanitize !45

665:                                              ; preds = %658
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

666:                                              ; preds = %658
  %667 = extractvalue { i64, i1 } %663, 0, !nosanitize !45
  store i64 %667, ptr %661, align 8, !tbaa !55
  %668 = load i32, ptr %82, align 4, !tbaa !75
  br label %669

669:                                              ; preds = %666, %633
  %670 = phi i32 [ %626, %633 ], [ %668, %666 ]
  %671 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %670, i32 %639), !nosanitize !45
  %672 = extractvalue { i32, i1 } %671, 1, !nosanitize !45
  br i1 %672, label %673, label %674, !prof !46, !nosanitize !45

673:                                              ; preds = %669
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

674:                                              ; preds = %669
  %675 = extractvalue { i32, i1 } %671, 0, !nosanitize !45
  store i32 %675, ptr %82, align 4, !tbaa !75
  %676 = load i32, ptr %95, align 4, !tbaa !76
  %677 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %675, i32 %676), !nosanitize !45
  %678 = extractvalue { i32, i1 } %677, 1, !nosanitize !45
  br i1 %678, label %679, label %680, !prof !46, !nosanitize !45

679:                                              ; preds = %674
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

680:                                              ; preds = %674
  %681 = extractvalue { i32, i1 } %677, 0, !nosanitize !45
  %682 = icmp ugt i32 %681, 2
  br i1 %682, label %683, label %746

683:                                              ; preds = %680
  %684 = load i32, ptr %90, align 4, !tbaa !73
  %685 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %684, i32 %676), !nosanitize !45
  %686 = extractvalue { i32, i1 } %685, 0, !nosanitize !45
  %687 = extractvalue { i32, i1 } %685, 1, !nosanitize !45
  br i1 %687, label %688, label %689, !prof !46, !nosanitize !45

688:                                              ; preds = %683
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

689:                                              ; preds = %683
  %690 = load ptr, ptr %92, align 8, !tbaa !34
  %691 = zext i32 %686 to i64
  %692 = getelementptr inbounds nuw i8, ptr %690, i64 %691
  %693 = load i8, ptr %692, align 1, !tbaa !8
  %694 = zext i8 %693 to i32
  store i32 %694, ptr %100, align 8, !tbaa !80
  %695 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %686, i32 1), !nosanitize !45
  %696 = extractvalue { i32, i1 } %695, 1, !nosanitize !45
  br i1 %696, label %697, label %698, !prof !46, !nosanitize !45

697:                                              ; preds = %689
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

698:                                              ; preds = %689
  %699 = extractvalue { i32, i1 } %695, 0, !nosanitize !45
  %700 = load i32, ptr %101, align 8, !tbaa !53
  %701 = shl i32 %694, %700
  %702 = zext i32 %699 to i64
  %703 = getelementptr inbounds nuw i8, ptr %690, i64 %702
  %704 = load i8, ptr %703, align 1, !tbaa !8
  %705 = zext i8 %704 to i32
  %706 = xor i32 %701, %705
  %707 = load i32, ptr %102, align 4, !tbaa !52
  %708 = and i32 %706, %707
  store i32 %708, ptr %100, align 8, !tbaa !80
  br label %709

709:                                              ; preds = %742, %698
  %710 = phi i32 [ %708, %698 ], [ %727, %742 ]
  %711 = phi i32 [ %676, %698 ], [ %738, %742 ]
  %712 = phi i32 [ %686, %698 ], [ %743, %742 ]
  %713 = icmp eq i32 %711, 0
  br i1 %713, label %746, label %714

714:                                              ; preds = %709
  %715 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %712, i32 3), !nosanitize !45
  %716 = extractvalue { i32, i1 } %715, 1, !nosanitize !45
  br i1 %716, label %717, label %718, !prof !46, !nosanitize !45

717:                                              ; preds = %714
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

718:                                              ; preds = %714
  %719 = shl i32 %710, %700
  %720 = extractvalue { i32, i1 } %715, 0, !nosanitize !45
  %721 = add i32 %720, -1
  %722 = zext i32 %721 to i64
  %723 = getelementptr inbounds nuw i8, ptr %690, i64 %722
  %724 = load i8, ptr %723, align 1, !tbaa !8
  %725 = zext i8 %724 to i32
  %726 = xor i32 %719, %725
  %727 = and i32 %726, %707
  store i32 %727, ptr %100, align 8, !tbaa !80
  %728 = load ptr, ptr %97, align 8, !tbaa !37
  %729 = zext i32 %727 to i64
  %730 = getelementptr inbounds nuw [2 x i8], ptr %728, i64 %729
  %731 = load i16, ptr %730, align 2, !tbaa !62
  %732 = load ptr, ptr %98, align 8, !tbaa !35
  %733 = load i32, ptr %103, align 8, !tbaa !33
  %734 = and i32 %733, %712
  %735 = zext i32 %734 to i64
  %736 = getelementptr inbounds nuw [2 x i8], ptr %732, i64 %735
  store i16 %731, ptr %736, align 2, !tbaa !62
  %737 = trunc i32 %712 to i16
  store i16 %737, ptr %730, align 2, !tbaa !62
  %738 = add i32 %711, -1
  store i32 %738, ptr %95, align 4, !tbaa !76
  %739 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %675, i32 %738), !nosanitize !45
  %740 = extractvalue { i32, i1 } %739, 1, !nosanitize !45
  br i1 %740, label %741, label %742, !prof !46, !nosanitize !45

741:                                              ; preds = %718
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

742:                                              ; preds = %718
  %743 = add nuw i32 %712, 1
  %744 = extractvalue { i32, i1 } %739, 0, !nosanitize !45
  %745 = icmp ult i32 %744, 3
  br i1 %745, label %746, label %709, !llvm.loop !91

746:                                              ; preds = %742, %709, %680
  %747 = icmp ult i32 %675, 262
  br i1 %747, label %748, label %753

748:                                              ; preds = %746
  %749 = load ptr, ptr %15, align 8, !tbaa !20
  %750 = getelementptr inbounds nuw i8, ptr %749, i64 8
  %751 = load i32, ptr %750, align 8, !tbaa !81
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %753, label %472, !llvm.loop !92

753:                                              ; preds = %748, %746, %625
  %754 = phi i32 [ %675, %748 ], [ %675, %746 ], [ %626, %625 ]
  %755 = load i64, ptr %388, align 8, !tbaa !38
  %756 = load i64, ptr %89, align 8, !tbaa !61
  %757 = icmp ult i64 %755, %756
  br i1 %757, label %758, label %794

758:                                              ; preds = %753
  %759 = load i32, ptr %90, align 4, !tbaa !73
  %760 = zext i32 %759 to i64
  %761 = zext i32 %754 to i64
  %762 = add nuw nsw i64 %761, %760
  %763 = icmp ult i64 %755, %762
  br i1 %763, label %764, label %774

764:                                              ; preds = %758
  %765 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %756, i64 %762), !nosanitize !45
  %766 = extractvalue { i64, i1 } %765, 1, !nosanitize !45
  br i1 %766, label %767, label %768, !prof !46, !nosanitize !45

767:                                              ; preds = %764
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

768:                                              ; preds = %764
  %769 = extractvalue { i64, i1 } %765, 0, !nosanitize !45
  %770 = tail call i64 @llvm.umin.i64(i64 %769, i64 258)
  %771 = load ptr, ptr %92, align 8, !tbaa !34
  %772 = getelementptr inbounds nuw i8, ptr %771, i64 %762
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %772, i8 0, i64 %770, i1 false)
  %773 = add nuw nsw i64 %770, %762
  br label %791

774:                                              ; preds = %758
  %775 = add nuw nsw i64 %762, 258
  %776 = icmp ult i64 %755, %775
  br i1 %776, label %777, label %794

777:                                              ; preds = %774
  %778 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %756, i64 %755), !nosanitize !45
  %779 = sub nuw nsw i64 %775, %755
  %780 = extractvalue { i64, i1 } %778, 0, !nosanitize !45
  %781 = tail call i64 @llvm.umin.i64(i64 %779, i64 %780)
  %782 = load ptr, ptr %92, align 8, !tbaa !34
  %783 = getelementptr inbounds nuw i8, ptr %782, i64 %755
  %784 = and i64 %781, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %783, i8 0, i64 %784, i1 false)
  %785 = load i64, ptr %388, align 8, !tbaa !38
  %786 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %785, i64 %781), !nosanitize !45
  %787 = extractvalue { i64, i1 } %786, 1, !nosanitize !45
  br i1 %787, label %788, label %789, !prof !46, !nosanitize !45

788:                                              ; preds = %777
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

789:                                              ; preds = %777
  %790 = extractvalue { i64, i1 } %786, 0, !nosanitize !45
  br label %791

791:                                              ; preds = %789, %768
  %792 = phi i64 [ %773, %768 ], [ %790, %789 ]
  store i64 %792, ptr %388, align 8, !tbaa !38
  %793 = load i32, ptr %82, align 4, !tbaa !75
  br label %794

794:                                              ; preds = %791, %774, %753
  %795 = phi i32 [ %754, %753 ], [ %754, %774 ], [ %793, %791 ]
  %796 = icmp ugt i32 %795, 2
  br i1 %796, label %431, label %797, !llvm.loop !99

797:                                              ; preds = %794, %428
  %798 = phi i32 [ %429, %428 ], [ %795, %794 ]
  %799 = load i32, ptr %90, align 4, !tbaa !73
  %800 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %799, i32 %798), !nosanitize !45
  %801 = extractvalue { i32, i1 } %800, 1, !nosanitize !45
  br i1 %801, label %802, label %803, !prof !46, !nosanitize !45

802:                                              ; preds = %797
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

803:                                              ; preds = %797
  %804 = extractvalue { i32, i1 } %800, 0, !nosanitize !45
  store i32 %804, ptr %90, align 4, !tbaa !73
  %805 = zext i32 %804 to i64
  store i64 %805, ptr %94, align 8, !tbaa !74
  store i32 %798, ptr %95, align 4, !tbaa !76
  store i32 0, ptr %82, align 4, !tbaa !75
  %806 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %806, align 8, !tbaa !77
  %807 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %807, align 8, !tbaa !78
  %808 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %808, align 8, !tbaa !79
  store ptr %88, ptr %0, align 8, !tbaa !82
  store i32 %87, ptr %86, align 8, !tbaa !81
  store i32 %27, ptr %26, align 8, !tbaa !30
  br label %809

809:                                              ; preds = %803, %34, %30, %28, %25, %23, %20, %17, %13, %9, %5, %3
  %810 = phi i32 [ 0, %803 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %810
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
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
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
  %25 = load i32, ptr %24, align 4, !tbaa !73
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %27 = load i32, ptr %26, align 4, !tbaa !75
  %28 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %25, i32 %27), !nosanitize !45
  %29 = extractvalue { i32, i1 } %28, 1, !nosanitize !45
  br i1 %29, label %30, label %31, !prof !46, !nosanitize !45

30:                                               ; preds = %23
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

31:                                               ; preds = %23
  %32 = extractvalue { i32, i1 } %28, 0, !nosanitize !45
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %34 = load i32, ptr %33, align 8, !tbaa !32
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
  store i32 %35, ptr %2, align 4, !tbaa !4
  br label %52

52:                                               ; preds = %51, %49, %20, %17, %13, %9, %5, %3
  %53 = phi i32 [ 0, %49 ], [ 0, %51 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %53
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateResetKeep(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !20
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %46

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !29
  switch i32 %20, label %46 [
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
  store i64 0, ptr %23, align 8, !tbaa !55
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !56
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %25, align 8, !tbaa !57
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %27, ptr %28, align 8, !tbaa !58
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %30 = load i32, ptr %29, align 8, !tbaa !30
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = sub nsw i32 0, %30
  store i32 %33, ptr %29, align 8, !tbaa !30
  br label %34

34:                                               ; preds = %32, %21
  %35 = phi i32 [ %33, %32 ], [ %30, %21 ]
  %36 = icmp eq i32 %35, 2
  %37 = select i1 %36, i32 57, i32 42
  store i32 %37, ptr %19, align 8, !tbaa !29
  br i1 %36, label %38, label %40

38:                                               ; preds = %34
  %39 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %42

40:                                               ; preds = %34
  %41 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %43, ptr %44, align 8, !tbaa !59
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %45, align 4, !tbaa !60
  tail call void @_tr_init(ptr noundef nonnull %13) #11
  br label %46

46:                                               ; preds = %42, %18, %15, %11, %7, %3, %1
  %47 = phi i32 [ 0, %42 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %47
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
  store ptr %1, ptr %27, align 8, !tbaa !100
  br label %28

28:                                               ; preds = %26, %22, %19, %16, %12, %8, %4, %2
  %29 = phi i32 [ 0, %26 ], [ -2, %22 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
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
  %27 = load i32, ptr %26, align 4, !tbaa !101
  store i32 %27, ptr %2, align 4, !tbaa !4
  br label %28

28:                                               ; preds = %25, %23
  %29 = icmp eq ptr %1, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %32 = load i64, ptr %31, align 8, !tbaa !57
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
  %26 = load i32, ptr %25, align 8, !tbaa !102
  store i32 %26, ptr %1, align 4, !tbaa !4
  br label %27

27:                                               ; preds = %24, %22, %19, %16, %12, %8, %4, %2
  %28 = phi i32 [ 0, %22 ], [ 0, %24 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
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
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
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
  %24 = icmp ugt i32 %1, 16
  br i1 %24, label %52, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 5888
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !58
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 2
  %31 = icmp ult ptr %27, %30
  br i1 %31, label %52, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 5940
  %34 = getelementptr inbounds nuw i8, ptr %15, i64 5936
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i32 [ %50, %35 ], [ %1, %32 ]
  %37 = phi i32 [ %49, %35 ], [ %2, %32 ]
  %38 = load i32, ptr %33, align 4, !tbaa !101
  %39 = sub nsw i32 16, %38
  %40 = tail call i32 @llvm.smin.i32(i32 %39, i32 %36)
  %41 = shl nsw i32 -1, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %37, %42
  %44 = shl i32 %43, %38
  %45 = load i16, ptr %34, align 8, !tbaa !103
  %46 = trunc i32 %44 to i16
  %47 = or i16 %45, %46
  store i16 %47, ptr %34, align 8, !tbaa !103
  %48 = add nsw i32 %40, %38
  store i32 %48, ptr %33, align 4, !tbaa !101
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #11
  %49 = ashr i32 %37, %40
  %50 = sub nsw i32 %36, %40
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %35, !llvm.loop !104

52:                                               ; preds = %35, %25, %23, %20, %17, %13, %9, %5, %3
  %53 = phi i32 [ -5, %23 ], [ -2, %13 ], [ -5, %25 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ 0, %35 ]
  ret i32 %53
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1089, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1089, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1089, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1089, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1089

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %1089 [
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
  br i1 %28, label %1089, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds nuw i8, ptr %15, i64 196
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 200
  %32 = load i32, ptr %31, align 8, !tbaa !49
  %33 = icmp eq i32 %2, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i32, ptr %30, align 4, !tbaa !48
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %39 = load ptr, ptr %38, align 8, !tbaa !105
  %40 = zext nneg i32 %25 to i64
  %41 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %43 = load ptr, ptr %42, align 8, !tbaa !105
  %44 = icmp eq ptr %39, %43
  br i1 %44, label %1046, label %45

45:                                               ; preds = %34, %29
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %47 = load i32, ptr %46, align 4, !tbaa !60
  %48 = icmp eq i32 %47, -2
  br i1 %48, label %1046, label %49

49:                                               ; preds = %45
  switch i32 %22, label %1089 [
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
  %52 = load ptr, ptr %51, align 8, !tbaa !106
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
  br label %1089

68:                                               ; preds = %63, %58
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %70 = load i32, ptr %69, align 8, !tbaa !107
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %73, ptr %74, align 8, !tbaa !9
  br label %1031

75:                                               ; preds = %68
  store i32 5, ptr %46, align 4, !tbaa !60
  %76 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %77 = load i64, ptr %76, align 8, !tbaa !57
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %124, label %79

79:                                               ; preds = %75
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #11
  %80 = load i64, ptr %76, align 8, !tbaa !57
  %81 = load i32, ptr %69, align 8, !tbaa !107
  %82 = zext i32 %81 to i64
  %83 = tail call i64 @llvm.umin.i64(i64 %80, i64 %82)
  %84 = trunc nuw i64 %83 to i32
  %85 = icmp eq i64 %83, 0
  br i1 %85, label %117, label %86

86:                                               ; preds = %79
  %87 = load ptr, ptr %51, align 8, !tbaa !106
  %88 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %89 = load ptr, ptr %88, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %87, ptr align 1 %89, i64 %83, i1 false)
  %90 = load ptr, ptr %51, align 8, !tbaa !106
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 %83
  store ptr %91, ptr %51, align 8, !tbaa !106
  %92 = load ptr, ptr %88, align 8, !tbaa !58
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 %83
  store ptr %93, ptr %88, align 8, !tbaa !58
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %95 = load i64, ptr %94, align 8, !tbaa !108
  %96 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %95, i64 %83), !nosanitize !45
  %97 = extractvalue { i64, i1 } %96, 1, !nosanitize !45
  br i1 %97, label %98, label %99, !prof !46, !nosanitize !45

98:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

99:                                               ; preds = %86
  %100 = extractvalue { i64, i1 } %96, 0, !nosanitize !45
  store i64 %100, ptr %94, align 8, !tbaa !108
  %101 = load i32, ptr %69, align 8, !tbaa !107
  %102 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %101, i32 %84), !nosanitize !45
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !45
  br i1 %103, label %104, label %105, !prof !46, !nosanitize !45

104:                                              ; preds = %99
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

105:                                              ; preds = %99
  %106 = extractvalue { i32, i1 } %102, 0, !nosanitize !45
  store i32 %106, ptr %69, align 8, !tbaa !107
  %107 = load i64, ptr %76, align 8, !tbaa !57
  %108 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 %83), !nosanitize !45
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !45
  br i1 %109, label %110, label %111, !prof !46, !nosanitize !45

110:                                              ; preds = %105
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

111:                                              ; preds = %105
  %112 = extractvalue { i64, i1 } %108, 0, !nosanitize !45
  store i64 %112, ptr %76, align 8, !tbaa !57
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %116 = load ptr, ptr %115, align 8, !tbaa !40
  store ptr %116, ptr %88, align 8, !tbaa !58
  br label %117

117:                                              ; preds = %114, %111, %79
  %118 = phi i64 [ %80, %79 ], [ 0, %114 ], [ %112, %111 ]
  %119 = phi i32 [ %81, %79 ], [ %106, %114 ], [ %106, %111 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = load i32, ptr %21, align 8, !tbaa !29
  br label %134

123:                                              ; preds = %117
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

124:                                              ; preds = %75
  br i1 %57, label %125, label %134

125:                                              ; preds = %124
  %126 = shl nsw i32 %47, 1
  %127 = icmp sgt i32 %47, 4
  %128 = select i1 %127, i32 -9, i32 0
  %129 = add i32 %128, %126
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %132, ptr %133, align 8, !tbaa !9
  br label %1031

134:                                              ; preds = %125, %124, %121
  %135 = phi i64 [ %118, %121 ], [ 0, %124 ], [ 0, %125 ]
  %136 = phi i32 [ %122, %121 ], [ %22, %124 ], [ %22, %125 ]
  switch i32 %136, label %250 [
    i32 666, label %137
    i32 42, label %143
  ]

137:                                              ; preds = %134
  %138 = load i32, ptr %55, align 8, !tbaa !81
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %989, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %141, ptr %142, align 8, !tbaa !9
  br label %1031

143:                                              ; preds = %134
  %144 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %145 = load i32, ptr %144, align 8, !tbaa !30
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 113, ptr %21, align 8, !tbaa !29
  br label %986

148:                                              ; preds = %143
  %149 = getelementptr inbounds nuw i8, ptr %15, i64 84
  %150 = load i32, ptr %149, align 4, !tbaa !31
  %151 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %150, i32 8), !nosanitize !45
  %152 = extractvalue { i32, i1 } %151, 1, !nosanitize !45
  br i1 %152, label %153, label %154, !prof !46, !nosanitize !45

153:                                              ; preds = %148
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

154:                                              ; preds = %148
  %155 = extractvalue { i32, i1 } %151, 0, !nosanitize !45
  %156 = shl i32 %155, 12
  %157 = load i32, ptr %31, align 8, !tbaa !49
  %158 = icmp sgt i32 %157, 1
  br i1 %158, label %167, label %159

159:                                              ; preds = %154
  %160 = load i32, ptr %30, align 4, !tbaa !48
  %161 = icmp slt i32 %160, 2
  br i1 %161, label %167, label %162

162:                                              ; preds = %159
  %163 = icmp samesign ult i32 %160, 6
  br i1 %163, label %167, label %164

164:                                              ; preds = %162
  %165 = icmp eq i32 %160, 6
  %166 = select i1 %165, i32 128, i32 192
  br label %167

167:                                              ; preds = %164, %162, %159, %154
  %168 = phi i32 [ 64, %162 ], [ 0, %154 ], [ %166, %164 ], [ 0, %159 ]
  %169 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %170 = or disjoint i32 %168, %156
  %171 = load i32, ptr %169, align 4, !tbaa !73
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %172, i32 2048, i32 2080
  %174 = or disjoint i32 %173, %170
  %175 = urem i32 %174, 31
  %176 = or disjoint i32 %175, %174
  %177 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %135, i64 1), !nosanitize !45
  %178 = extractvalue { i64, i1 } %177, 1, !nosanitize !45
  br i1 %178, label %179, label %180, !prof !46, !nosanitize !45

179:                                              ; preds = %167
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

180:                                              ; preds = %167
  %181 = extractvalue { i64, i1 } %177, 0, !nosanitize !45
  %182 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %183 = load ptr, ptr %182, align 8, !tbaa !40
  %184 = lshr i32 %174, 8
  %185 = trunc i32 %184 to i8
  store i64 %181, ptr %76, align 8, !tbaa !57
  %186 = getelementptr inbounds nuw i8, ptr %183, i64 %135
  store i8 %185, ptr %186, align 1, !tbaa !8
  %187 = load i64, ptr %76, align 8, !tbaa !57
  %188 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %187, i64 1), !nosanitize !45
  %189 = extractvalue { i64, i1 } %188, 1, !nosanitize !45
  br i1 %189, label %190, label %191, !prof !46, !nosanitize !45

190:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

191:                                              ; preds = %180
  %192 = extractvalue { i64, i1 } %188, 0, !nosanitize !45
  %193 = load ptr, ptr %182, align 8, !tbaa !40
  %194 = trunc i32 %176 to i8
  %195 = xor i8 %194, 31
  store i64 %192, ptr %76, align 8, !tbaa !57
  %196 = getelementptr inbounds nuw i8, ptr %193, i64 %187
  store i8 %195, ptr %196, align 1, !tbaa !8
  %197 = load i32, ptr %169, align 4, !tbaa !73
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %242, label %199

199:                                              ; preds = %191
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %201 = load i64, ptr %200, align 8, !tbaa !59
  %202 = lshr i64 %201, 16
  %203 = load i64, ptr %76, align 8, !tbaa !57
  %204 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %203, i64 1), !nosanitize !45
  %205 = extractvalue { i64, i1 } %204, 1, !nosanitize !45
  br i1 %205, label %206, label %207, !prof !46, !nosanitize !45

206:                                              ; preds = %199
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

207:                                              ; preds = %199
  %208 = extractvalue { i64, i1 } %204, 0, !nosanitize !45
  %209 = load ptr, ptr %182, align 8, !tbaa !40
  %210 = lshr i64 %201, 24
  %211 = trunc i64 %210 to i8
  store i64 %208, ptr %76, align 8, !tbaa !57
  %212 = getelementptr inbounds nuw i8, ptr %209, i64 %203
  store i8 %211, ptr %212, align 1, !tbaa !8
  %213 = load i64, ptr %76, align 8, !tbaa !57
  %214 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %213, i64 1), !nosanitize !45
  %215 = extractvalue { i64, i1 } %214, 1, !nosanitize !45
  br i1 %215, label %216, label %217, !prof !46, !nosanitize !45

216:                                              ; preds = %207
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

217:                                              ; preds = %207
  %218 = extractvalue { i64, i1 } %214, 0, !nosanitize !45
  %219 = load ptr, ptr %182, align 8, !tbaa !40
  %220 = trunc i64 %202 to i8
  store i64 %218, ptr %76, align 8, !tbaa !57
  %221 = getelementptr inbounds nuw i8, ptr %219, i64 %213
  store i8 %220, ptr %221, align 1, !tbaa !8
  %222 = load i64, ptr %200, align 8, !tbaa !59
  %223 = trunc i64 %222 to i8
  %224 = load i64, ptr %76, align 8, !tbaa !57
  %225 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %224, i64 1), !nosanitize !45
  %226 = extractvalue { i64, i1 } %225, 1, !nosanitize !45
  br i1 %226, label %227, label %228, !prof !46, !nosanitize !45

227:                                              ; preds = %217
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

228:                                              ; preds = %217
  %229 = extractvalue { i64, i1 } %225, 0, !nosanitize !45
  %230 = load ptr, ptr %182, align 8, !tbaa !40
  %231 = lshr i64 %222, 8
  %232 = trunc i64 %231 to i8
  store i64 %229, ptr %76, align 8, !tbaa !57
  %233 = getelementptr inbounds nuw i8, ptr %230, i64 %224
  store i8 %232, ptr %233, align 1, !tbaa !8
  %234 = load i64, ptr %76, align 8, !tbaa !57
  %235 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %234, i64 1), !nosanitize !45
  %236 = extractvalue { i64, i1 } %235, 1, !nosanitize !45
  br i1 %236, label %237, label %238, !prof !46, !nosanitize !45

237:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

238:                                              ; preds = %228
  %239 = extractvalue { i64, i1 } %235, 0, !nosanitize !45
  %240 = load ptr, ptr %182, align 8, !tbaa !40
  store i64 %239, ptr %76, align 8, !tbaa !57
  %241 = getelementptr inbounds nuw i8, ptr %240, i64 %234
  store i8 %223, ptr %241, align 1, !tbaa !8
  br label %242

242:                                              ; preds = %238, %191
  %243 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %243, ptr %244, align 8, !tbaa !59
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %245 = load i64, ptr %76, align 8, !tbaa !57
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = load i32, ptr %21, align 8, !tbaa !29
  br label %250

249:                                              ; preds = %242
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

250:                                              ; preds = %247, %134
  %251 = phi i32 [ %248, %247 ], [ %136, %134 ]
  %252 = icmp eq i32 %251, 57
  br i1 %252, label %253, label %508

253:                                              ; preds = %250
  %254 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %254, ptr %255, align 8, !tbaa !59
  %256 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %257 = load i64, ptr %76, align 8, !tbaa !57
  %258 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %257, i64 1), !nosanitize !45
  %259 = extractvalue { i64, i1 } %258, 1, !nosanitize !45
  br i1 %259, label %260, label %261, !prof !46, !nosanitize !45

260:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

261:                                              ; preds = %253
  %262 = extractvalue { i64, i1 } %258, 0, !nosanitize !45
  %263 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %262, ptr %76, align 8, !tbaa !57
  %264 = getelementptr inbounds nuw i8, ptr %263, i64 %257
  store i8 31, ptr %264, align 1, !tbaa !8
  %265 = load i64, ptr %76, align 8, !tbaa !57
  %266 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %265, i64 1), !nosanitize !45
  %267 = extractvalue { i64, i1 } %266, 1, !nosanitize !45
  br i1 %267, label %268, label %269, !prof !46, !nosanitize !45

268:                                              ; preds = %261
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

269:                                              ; preds = %261
  %270 = extractvalue { i64, i1 } %266, 0, !nosanitize !45
  %271 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %270, ptr %76, align 8, !tbaa !57
  %272 = getelementptr inbounds nuw i8, ptr %271, i64 %265
  store i8 -117, ptr %272, align 1, !tbaa !8
  %273 = load i64, ptr %76, align 8, !tbaa !57
  %274 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %273, i64 1), !nosanitize !45
  %275 = extractvalue { i64, i1 } %274, 1, !nosanitize !45
  br i1 %275, label %276, label %277, !prof !46, !nosanitize !45

276:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

277:                                              ; preds = %269
  %278 = extractvalue { i64, i1 } %274, 0, !nosanitize !45
  %279 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %278, ptr %76, align 8, !tbaa !57
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 %273
  store i8 8, ptr %280, align 1, !tbaa !8
  %281 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %282 = load ptr, ptr %281, align 8, !tbaa !100
  %283 = icmp eq ptr %282, null
  %284 = load i64, ptr %76, align 8, !tbaa !57
  %285 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %284, i64 1), !nosanitize !45
  %286 = extractvalue { i64, i1 } %285, 1, !nosanitize !45
  br i1 %283, label %287, label %354

287:                                              ; preds = %277
  br i1 %286, label %288, label %289, !prof !46, !nosanitize !45

288:                                              ; preds = %287
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

289:                                              ; preds = %287
  %290 = extractvalue { i64, i1 } %285, 0, !nosanitize !45
  %291 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %290, ptr %76, align 8, !tbaa !57
  %292 = getelementptr inbounds nuw i8, ptr %291, i64 %284
  store i8 0, ptr %292, align 1, !tbaa !8
  %293 = load i64, ptr %76, align 8, !tbaa !57
  %294 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %293, i64 1), !nosanitize !45
  %295 = extractvalue { i64, i1 } %294, 1, !nosanitize !45
  br i1 %295, label %296, label %297, !prof !46, !nosanitize !45

296:                                              ; preds = %289
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

297:                                              ; preds = %289
  %298 = extractvalue { i64, i1 } %294, 0, !nosanitize !45
  %299 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %298, ptr %76, align 8, !tbaa !57
  %300 = getelementptr inbounds nuw i8, ptr %299, i64 %293
  store i8 0, ptr %300, align 1, !tbaa !8
  %301 = load i64, ptr %76, align 8, !tbaa !57
  %302 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %301, i64 1), !nosanitize !45
  %303 = extractvalue { i64, i1 } %302, 1, !nosanitize !45
  br i1 %303, label %304, label %305, !prof !46, !nosanitize !45

304:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

305:                                              ; preds = %297
  %306 = extractvalue { i64, i1 } %302, 0, !nosanitize !45
  %307 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %306, ptr %76, align 8, !tbaa !57
  %308 = getelementptr inbounds nuw i8, ptr %307, i64 %301
  store i8 0, ptr %308, align 1, !tbaa !8
  %309 = load i64, ptr %76, align 8, !tbaa !57
  %310 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %309, i64 1), !nosanitize !45
  %311 = extractvalue { i64, i1 } %310, 1, !nosanitize !45
  br i1 %311, label %312, label %313, !prof !46, !nosanitize !45

312:                                              ; preds = %305
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

313:                                              ; preds = %305
  %314 = extractvalue { i64, i1 } %310, 0, !nosanitize !45
  %315 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %314, ptr %76, align 8, !tbaa !57
  %316 = getelementptr inbounds nuw i8, ptr %315, i64 %309
  store i8 0, ptr %316, align 1, !tbaa !8
  %317 = load i64, ptr %76, align 8, !tbaa !57
  %318 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %317, i64 1), !nosanitize !45
  %319 = extractvalue { i64, i1 } %318, 1, !nosanitize !45
  br i1 %319, label %320, label %321, !prof !46, !nosanitize !45

320:                                              ; preds = %313
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

321:                                              ; preds = %313
  %322 = extractvalue { i64, i1 } %318, 0, !nosanitize !45
  %323 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %322, ptr %76, align 8, !tbaa !57
  %324 = getelementptr inbounds nuw i8, ptr %323, i64 %317
  store i8 0, ptr %324, align 1, !tbaa !8
  %325 = load i32, ptr %30, align 4, !tbaa !48
  %326 = icmp eq i32 %325, 9
  br i1 %326, label %333, label %327

327:                                              ; preds = %321
  %328 = load i32, ptr %31, align 8, !tbaa !49
  %329 = icmp sgt i32 %328, 1
  %330 = icmp slt i32 %325, 2
  %331 = or i1 %330, %329
  %332 = select i1 %331, i8 4, i8 0
  br label %333

333:                                              ; preds = %327, %321
  %334 = phi i8 [ %332, %327 ], [ 2, %321 ]
  %335 = load i64, ptr %76, align 8, !tbaa !57
  %336 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %335, i64 1), !nosanitize !45
  %337 = extractvalue { i64, i1 } %336, 1, !nosanitize !45
  br i1 %337, label %338, label %339, !prof !46, !nosanitize !45

338:                                              ; preds = %333
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

339:                                              ; preds = %333
  %340 = extractvalue { i64, i1 } %336, 0, !nosanitize !45
  %341 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %340, ptr %76, align 8, !tbaa !57
  %342 = getelementptr inbounds nuw i8, ptr %341, i64 %335
  store i8 %334, ptr %342, align 1, !tbaa !8
  %343 = load i64, ptr %76, align 8, !tbaa !57
  %344 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %343, i64 1), !nosanitize !45
  %345 = extractvalue { i64, i1 } %344, 1, !nosanitize !45
  br i1 %345, label %346, label %347, !prof !46, !nosanitize !45

346:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

347:                                              ; preds = %339
  %348 = extractvalue { i64, i1 } %344, 0, !nosanitize !45
  %349 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %348, ptr %76, align 8, !tbaa !57
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 %343
  store i8 3, ptr %350, align 1, !tbaa !8
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %351 = load i64, ptr %76, align 8, !tbaa !57
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %506, label %353

353:                                              ; preds = %347
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

354:                                              ; preds = %277
  br i1 %286, label %355, label %356, !prof !46, !nosanitize !45

355:                                              ; preds = %354
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

356:                                              ; preds = %354
  %357 = extractvalue { i64, i1 } %285, 0, !nosanitize !45
  %358 = load ptr, ptr %256, align 8, !tbaa !40
  %359 = getelementptr inbounds nuw i8, ptr %282, i64 56
  %360 = load ptr, ptr %359, align 8, !tbaa !109
  %361 = icmp eq ptr %360, null
  %362 = getelementptr inbounds nuw i8, ptr %282, i64 40
  %363 = load ptr, ptr %362, align 8, !tbaa !111
  %364 = icmp eq ptr %363, null
  %365 = getelementptr inbounds nuw i8, ptr %282, i64 24
  %366 = load ptr, ptr %365, align 8, !tbaa !112
  %367 = icmp eq ptr %366, null
  %368 = load i32, ptr %282, align 8, !tbaa !113
  %369 = icmp ne i32 %368, 0
  %370 = getelementptr inbounds nuw i8, ptr %282, i64 68
  %371 = load i32, ptr %370, align 4, !tbaa !114
  %372 = icmp eq i32 %371, 0
  %373 = select i1 %372, i8 0, i8 2
  %374 = zext i1 %369 to i8
  %375 = select i1 %367, i8 0, i8 4
  %376 = select i1 %364, i8 0, i8 8
  %377 = select i1 %361, i8 0, i8 16
  %378 = or disjoint i8 %376, %377
  %379 = or disjoint i8 %378, %375
  %380 = or disjoint i8 %379, %374
  %381 = or disjoint i8 %380, %373
  store i64 %357, ptr %76, align 8, !tbaa !57
  %382 = getelementptr inbounds nuw i8, ptr %358, i64 %284
  store i8 %381, ptr %382, align 1, !tbaa !8
  %383 = load i64, ptr %76, align 8, !tbaa !57
  %384 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %383, i64 1), !nosanitize !45
  %385 = extractvalue { i64, i1 } %384, 1, !nosanitize !45
  br i1 %385, label %386, label %387, !prof !46, !nosanitize !45

386:                                              ; preds = %356
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

387:                                              ; preds = %356
  %388 = extractvalue { i64, i1 } %384, 0, !nosanitize !45
  %389 = load ptr, ptr %256, align 8, !tbaa !40
  %390 = load ptr, ptr %281, align 8, !tbaa !100
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 8
  %392 = load i64, ptr %391, align 8, !tbaa !115
  %393 = trunc i64 %392 to i8
  store i64 %388, ptr %76, align 8, !tbaa !57
  %394 = getelementptr inbounds nuw i8, ptr %389, i64 %383
  store i8 %393, ptr %394, align 1, !tbaa !8
  %395 = load i64, ptr %76, align 8, !tbaa !57
  %396 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %395, i64 1), !nosanitize !45
  %397 = extractvalue { i64, i1 } %396, 1, !nosanitize !45
  br i1 %397, label %398, label %399, !prof !46, !nosanitize !45

398:                                              ; preds = %387
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

399:                                              ; preds = %387
  %400 = extractvalue { i64, i1 } %396, 0, !nosanitize !45
  %401 = load ptr, ptr %256, align 8, !tbaa !40
  %402 = load ptr, ptr %281, align 8, !tbaa !100
  %403 = getelementptr inbounds nuw i8, ptr %402, i64 8
  %404 = load i64, ptr %403, align 8, !tbaa !115
  %405 = lshr i64 %404, 8
  %406 = trunc i64 %405 to i8
  store i64 %400, ptr %76, align 8, !tbaa !57
  %407 = getelementptr inbounds nuw i8, ptr %401, i64 %395
  store i8 %406, ptr %407, align 1, !tbaa !8
  %408 = load i64, ptr %76, align 8, !tbaa !57
  %409 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %408, i64 1), !nosanitize !45
  %410 = extractvalue { i64, i1 } %409, 1, !nosanitize !45
  br i1 %410, label %411, label %412, !prof !46, !nosanitize !45

411:                                              ; preds = %399
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

412:                                              ; preds = %399
  %413 = extractvalue { i64, i1 } %409, 0, !nosanitize !45
  %414 = load ptr, ptr %256, align 8, !tbaa !40
  %415 = load ptr, ptr %281, align 8, !tbaa !100
  %416 = getelementptr inbounds nuw i8, ptr %415, i64 8
  %417 = load i64, ptr %416, align 8, !tbaa !115
  %418 = lshr i64 %417, 16
  %419 = trunc i64 %418 to i8
  store i64 %413, ptr %76, align 8, !tbaa !57
  %420 = getelementptr inbounds nuw i8, ptr %414, i64 %408
  store i8 %419, ptr %420, align 1, !tbaa !8
  %421 = load i64, ptr %76, align 8, !tbaa !57
  %422 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %421, i64 1), !nosanitize !45
  %423 = extractvalue { i64, i1 } %422, 1, !nosanitize !45
  br i1 %423, label %424, label %425, !prof !46, !nosanitize !45

424:                                              ; preds = %412
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

425:                                              ; preds = %412
  %426 = extractvalue { i64, i1 } %422, 0, !nosanitize !45
  %427 = load ptr, ptr %256, align 8, !tbaa !40
  %428 = load ptr, ptr %281, align 8, !tbaa !100
  %429 = getelementptr inbounds nuw i8, ptr %428, i64 8
  %430 = load i64, ptr %429, align 8, !tbaa !115
  %431 = lshr i64 %430, 24
  %432 = trunc i64 %431 to i8
  store i64 %426, ptr %76, align 8, !tbaa !57
  %433 = getelementptr inbounds nuw i8, ptr %427, i64 %421
  store i8 %432, ptr %433, align 1, !tbaa !8
  %434 = load i32, ptr %30, align 4, !tbaa !48
  %435 = icmp eq i32 %434, 9
  br i1 %435, label %442, label %436

436:                                              ; preds = %425
  %437 = load i32, ptr %31, align 8, !tbaa !49
  %438 = icmp sgt i32 %437, 1
  %439 = icmp slt i32 %434, 2
  %440 = or i1 %439, %438
  %441 = select i1 %440, i8 4, i8 0
  br label %442

442:                                              ; preds = %436, %425
  %443 = phi i8 [ %441, %436 ], [ 2, %425 ]
  %444 = load i64, ptr %76, align 8, !tbaa !57
  %445 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %444, i64 1), !nosanitize !45
  %446 = extractvalue { i64, i1 } %445, 1, !nosanitize !45
  br i1 %446, label %447, label %448, !prof !46, !nosanitize !45

447:                                              ; preds = %442
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

448:                                              ; preds = %442
  %449 = extractvalue { i64, i1 } %445, 0, !nosanitize !45
  %450 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %449, ptr %76, align 8, !tbaa !57
  %451 = getelementptr inbounds nuw i8, ptr %450, i64 %444
  store i8 %443, ptr %451, align 1, !tbaa !8
  %452 = load i64, ptr %76, align 8, !tbaa !57
  %453 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %452, i64 1), !nosanitize !45
  %454 = extractvalue { i64, i1 } %453, 1, !nosanitize !45
  br i1 %454, label %455, label %456, !prof !46, !nosanitize !45

455:                                              ; preds = %448
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

456:                                              ; preds = %448
  %457 = extractvalue { i64, i1 } %453, 0, !nosanitize !45
  %458 = load ptr, ptr %256, align 8, !tbaa !40
  %459 = load ptr, ptr %281, align 8, !tbaa !100
  %460 = getelementptr inbounds nuw i8, ptr %459, i64 20
  %461 = load i32, ptr %460, align 4, !tbaa !116
  %462 = trunc i32 %461 to i8
  store i64 %457, ptr %76, align 8, !tbaa !57
  %463 = getelementptr inbounds nuw i8, ptr %458, i64 %452
  store i8 %462, ptr %463, align 1, !tbaa !8
  %464 = load ptr, ptr %281, align 8, !tbaa !100
  %465 = getelementptr inbounds nuw i8, ptr %464, i64 24
  %466 = load ptr, ptr %465, align 8, !tbaa !112
  %467 = icmp eq ptr %466, null
  br i1 %467, label %494, label %468

468:                                              ; preds = %456
  %469 = load i64, ptr %76, align 8, !tbaa !57
  %470 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %469, i64 1), !nosanitize !45
  %471 = extractvalue { i64, i1 } %470, 1, !nosanitize !45
  br i1 %471, label %472, label %473, !prof !46, !nosanitize !45

472:                                              ; preds = %468
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

473:                                              ; preds = %468
  %474 = extractvalue { i64, i1 } %470, 0, !nosanitize !45
  %475 = load ptr, ptr %256, align 8, !tbaa !40
  %476 = getelementptr inbounds nuw i8, ptr %464, i64 32
  %477 = load i32, ptr %476, align 8, !tbaa !117
  %478 = trunc i32 %477 to i8
  store i64 %474, ptr %76, align 8, !tbaa !57
  %479 = getelementptr inbounds nuw i8, ptr %475, i64 %469
  store i8 %478, ptr %479, align 1, !tbaa !8
  %480 = load i64, ptr %76, align 8, !tbaa !57
  %481 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %480, i64 1), !nosanitize !45
  %482 = extractvalue { i64, i1 } %481, 1, !nosanitize !45
  br i1 %482, label %483, label %484, !prof !46, !nosanitize !45

483:                                              ; preds = %473
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

484:                                              ; preds = %473
  %485 = extractvalue { i64, i1 } %481, 0, !nosanitize !45
  %486 = load ptr, ptr %256, align 8, !tbaa !40
  %487 = load ptr, ptr %281, align 8, !tbaa !100
  %488 = getelementptr inbounds nuw i8, ptr %487, i64 32
  %489 = load i32, ptr %488, align 8, !tbaa !117
  %490 = lshr i32 %489, 8
  %491 = trunc i32 %490 to i8
  store i64 %485, ptr %76, align 8, !tbaa !57
  %492 = getelementptr inbounds nuw i8, ptr %486, i64 %480
  store i8 %491, ptr %492, align 1, !tbaa !8
  %493 = load ptr, ptr %281, align 8, !tbaa !100
  br label %494

494:                                              ; preds = %484, %456
  %495 = phi ptr [ %493, %484 ], [ %464, %456 ]
  %496 = getelementptr inbounds nuw i8, ptr %495, i64 68
  %497 = load i32, ptr %496, align 4, !tbaa !114
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %504, label %499

499:                                              ; preds = %494
  %500 = load i64, ptr %255, align 8, !tbaa !59
  %501 = load ptr, ptr %256, align 8, !tbaa !40
  %502 = load i64, ptr %76, align 8, !tbaa !57
  %503 = tail call i64 @crc32_z(i64 noundef %500, ptr noundef %501, i64 noundef %502) #11
  store i64 %503, ptr %255, align 8, !tbaa !59
  br label %504

504:                                              ; preds = %499, %494
  %505 = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i64 0, ptr %505, align 8, !tbaa !118
  store i32 69, ptr %21, align 8, !tbaa !29
  br label %510

506:                                              ; preds = %347
  %507 = load i32, ptr %21, align 8, !tbaa !29
  br label %508

508:                                              ; preds = %506, %250
  %509 = phi i32 [ %507, %506 ], [ %251, %250 ]
  switch i32 %509, label %986 [
    i32 69, label %510
    i32 73, label %718
    i32 91, label %830
    i32 103, label %941
  ]

510:                                              ; preds = %508, %504
  %511 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %512 = load ptr, ptr %511, align 8, !tbaa !100
  %513 = getelementptr inbounds nuw i8, ptr %512, i64 24
  %514 = load ptr, ptr %513, align 8, !tbaa !112
  %515 = icmp eq ptr %514, null
  br i1 %515, label %717, label %516

516:                                              ; preds = %510
  %517 = getelementptr inbounds nuw i8, ptr %512, i64 32
  %518 = load i32, ptr %517, align 8, !tbaa !117
  %519 = and i32 %518, 65535
  %520 = zext nneg i32 %519 to i64
  %521 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %522 = load i64, ptr %521, align 8, !tbaa !118
  %523 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %520, i64 %522), !nosanitize !45
  %524 = extractvalue { i64, i1 } %523, 1, !nosanitize !45
  br i1 %524, label %525, label %526, !prof !46, !nosanitize !45

525:                                              ; preds = %516
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

526:                                              ; preds = %516
  %527 = load i64, ptr %76, align 8, !tbaa !57
  %528 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %529 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %530 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %531 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %532 = extractvalue { i64, i1 } %523, 0
  %533 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %527, i64 %532), !nosanitize !45
  %534 = extractvalue { i64, i1 } %533, 1, !nosanitize !45
  br i1 %534, label %607, label %535, !prof !46, !nosanitize !45

535:                                              ; preds = %526
  %536 = extractvalue { i64, i1 } %533, 0, !nosanitize !45
  %537 = load i64, ptr %528, align 8, !tbaa !41
  %538 = icmp ugt i64 %536, %537
  br i1 %538, label %539, label %690

539:                                              ; preds = %535
  %540 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %537, i64 %527), !nosanitize !45
  %541 = extractvalue { i64, i1 } %540, 0, !nosanitize !45
  %542 = extractvalue { i64, i1 } %540, 1, !nosanitize !45
  br i1 %542, label %613, label %543, !prof !46, !nosanitize !45

543:                                              ; preds = %539
  %544 = load ptr, ptr %529, align 8, !tbaa !40
  %545 = getelementptr inbounds nuw i8, ptr %544, i64 %527
  %546 = getelementptr inbounds nuw i8, ptr %514, i64 %522
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %545, ptr nonnull align 1 %546, i64 %541, i1 false)
  %547 = load i64, ptr %528, align 8, !tbaa !41
  store i64 %547, ptr %76, align 8, !tbaa !57
  %548 = load ptr, ptr %511, align 8, !tbaa !100
  %549 = getelementptr inbounds nuw i8, ptr %548, i64 68
  %550 = load i32, ptr %549, align 4, !tbaa !114
  %551 = icmp ne i32 %550, 0
  %552 = icmp ugt i64 %547, %527
  %553 = select i1 %551, i1 %552, i1 false
  br i1 %553, label %554, label %560

554:                                              ; preds = %543
  %555 = sub nuw i64 %547, %527
  %556 = load ptr, ptr %529, align 8, !tbaa !40
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 %527
  %558 = load i64, ptr %530, align 8, !tbaa !59
  %559 = tail call i64 @crc32_z(i64 noundef %558, ptr noundef %557, i64 noundef %555) #11
  store i64 %559, ptr %530, align 8, !tbaa !59
  br label %560

560:                                              ; preds = %554, %543
  %561 = load i64, ptr %521, align 8, !tbaa !118
  %562 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %561, i64 %541), !nosanitize !45
  %563 = extractvalue { i64, i1 } %562, 1, !nosanitize !45
  br i1 %563, label %636, label %564, !prof !46, !nosanitize !45

564:                                              ; preds = %560
  %565 = extractvalue { i64, i1 } %562, 0, !nosanitize !45
  store i64 %565, ptr %521, align 8, !tbaa !118
  %566 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %566) #11
  %567 = getelementptr inbounds nuw i8, ptr %566, i64 40
  %568 = load i64, ptr %567, align 8, !tbaa !57
  %569 = load i32, ptr %69, align 8, !tbaa !107
  %570 = zext i32 %569 to i64
  %571 = tail call i64 @llvm.umin.i64(i64 %568, i64 %570)
  %572 = trunc nuw i64 %571 to i32
  %573 = icmp eq i64 %571, 0
  br i1 %573, label %601, label %574

574:                                              ; preds = %564
  %575 = load ptr, ptr %51, align 8, !tbaa !106
  %576 = getelementptr inbounds nuw i8, ptr %566, i64 32
  %577 = load ptr, ptr %576, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %575, ptr align 1 %577, i64 %571, i1 false)
  %578 = load ptr, ptr %51, align 8, !tbaa !106
  %579 = getelementptr inbounds nuw i8, ptr %578, i64 %571
  store ptr %579, ptr %51, align 8, !tbaa !106
  %580 = load ptr, ptr %576, align 8, !tbaa !58
  %581 = getelementptr inbounds nuw i8, ptr %580, i64 %571
  store ptr %581, ptr %576, align 8, !tbaa !58
  %582 = load i64, ptr %531, align 8, !tbaa !108
  %583 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %582, i64 %571), !nosanitize !45
  %584 = extractvalue { i64, i1 } %583, 1, !nosanitize !45
  br i1 %584, label %658, label %585, !prof !46, !nosanitize !45

585:                                              ; preds = %574
  %586 = extractvalue { i64, i1 } %583, 0, !nosanitize !45
  store i64 %586, ptr %531, align 8, !tbaa !108
  %587 = load i32, ptr %69, align 8, !tbaa !107
  %588 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %587, i32 %572), !nosanitize !45
  %589 = extractvalue { i32, i1 } %588, 1, !nosanitize !45
  br i1 %589, label %664, label %590, !prof !46, !nosanitize !45

590:                                              ; preds = %585
  %591 = extractvalue { i32, i1 } %588, 0, !nosanitize !45
  store i32 %591, ptr %69, align 8, !tbaa !107
  %592 = load i64, ptr %567, align 8, !tbaa !57
  %593 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %592, i64 %571), !nosanitize !45
  %594 = extractvalue { i64, i1 } %593, 1, !nosanitize !45
  br i1 %594, label %670, label %595, !prof !46, !nosanitize !45

595:                                              ; preds = %590
  %596 = extractvalue { i64, i1 } %593, 0, !nosanitize !45
  store i64 %596, ptr %567, align 8, !tbaa !57
  %597 = icmp eq i64 %596, 0
  br i1 %597, label %598, label %601

598:                                              ; preds = %595
  %599 = getelementptr inbounds nuw i8, ptr %566, i64 16
  %600 = load ptr, ptr %599, align 8, !tbaa !40
  store ptr %600, ptr %576, align 8, !tbaa !58
  br label %601

601:                                              ; preds = %598, %595, %564
  %602 = load i64, ptr %76, align 8, !tbaa !57
  %603 = icmp eq i64 %602, 0
  br i1 %603, label %604, label %680

604:                                              ; preds = %601
  %605 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %532, i64 %541), !nosanitize !45
  %606 = extractvalue { i64, i1 } %605, 1, !nosanitize !45
  br i1 %606, label %684, label %608, !prof !46, !nosanitize !45

607:                                              ; preds = %526
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

608:                                              ; preds = %681, %604
  %609 = phi { i64, i1 } [ %682, %681 ], [ %605, %604 ]
  %610 = extractvalue { i64, i1 } %609, 0
  %611 = load i64, ptr %528, align 8, !tbaa !41
  %612 = icmp ugt i64 %610, %611
  br i1 %612, label %614, label %685

613:                                              ; preds = %539
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

614:                                              ; preds = %608
  %615 = load ptr, ptr %529, align 8, !tbaa !40
  %616 = load ptr, ptr %511, align 8, !tbaa !100
  %617 = getelementptr inbounds nuw i8, ptr %616, i64 24
  %618 = load ptr, ptr %617, align 8, !tbaa !112
  %619 = load i64, ptr %521, align 8, !tbaa !118
  %620 = getelementptr inbounds nuw i8, ptr %618, i64 %619
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %615, ptr align 1 %620, i64 %611, i1 false)
  %621 = load i64, ptr %528, align 8, !tbaa !41
  store i64 %621, ptr %76, align 8, !tbaa !57
  %622 = load ptr, ptr %511, align 8, !tbaa !100
  %623 = getelementptr inbounds nuw i8, ptr %622, i64 68
  %624 = load i32, ptr %623, align 4, !tbaa !114
  %625 = icmp ne i32 %624, 0
  %626 = icmp ne i64 %621, 0
  %627 = select i1 %625, i1 %626, i1 false
  br i1 %627, label %628, label %632

628:                                              ; preds = %614
  %629 = load ptr, ptr %529, align 8, !tbaa !40
  %630 = load i64, ptr %530, align 8, !tbaa !59
  %631 = tail call i64 @crc32_z(i64 noundef %630, ptr noundef %629, i64 noundef %621) #11
  store i64 %631, ptr %530, align 8, !tbaa !59
  br label %632

632:                                              ; preds = %628, %614
  %633 = load i64, ptr %521, align 8, !tbaa !118
  %634 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %633, i64 %611), !nosanitize !45
  %635 = extractvalue { i64, i1 } %634, 1, !nosanitize !45
  br i1 %635, label %636, label %637, !prof !46, !nosanitize !45

636:                                              ; preds = %632, %560
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

637:                                              ; preds = %632
  %638 = extractvalue { i64, i1 } %634, 0, !nosanitize !45
  store i64 %638, ptr %521, align 8, !tbaa !118
  %639 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %639) #11
  %640 = getelementptr inbounds nuw i8, ptr %639, i64 40
  %641 = load i64, ptr %640, align 8, !tbaa !57
  %642 = load i32, ptr %69, align 8, !tbaa !107
  %643 = zext i32 %642 to i64
  %644 = tail call i64 @llvm.umin.i64(i64 %641, i64 %643)
  %645 = trunc nuw i64 %644 to i32
  %646 = icmp eq i64 %644, 0
  br i1 %646, label %677, label %647

647:                                              ; preds = %637
  %648 = load ptr, ptr %51, align 8, !tbaa !106
  %649 = getelementptr inbounds nuw i8, ptr %639, i64 32
  %650 = load ptr, ptr %649, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %648, ptr align 1 %650, i64 %644, i1 false)
  %651 = load ptr, ptr %51, align 8, !tbaa !106
  %652 = getelementptr inbounds nuw i8, ptr %651, i64 %644
  store ptr %652, ptr %51, align 8, !tbaa !106
  %653 = load ptr, ptr %649, align 8, !tbaa !58
  %654 = getelementptr inbounds nuw i8, ptr %653, i64 %644
  store ptr %654, ptr %649, align 8, !tbaa !58
  %655 = load i64, ptr %531, align 8, !tbaa !108
  %656 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %655, i64 %644), !nosanitize !45
  %657 = extractvalue { i64, i1 } %656, 1, !nosanitize !45
  br i1 %657, label %658, label %659, !prof !46, !nosanitize !45

658:                                              ; preds = %647, %574
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

659:                                              ; preds = %647
  %660 = extractvalue { i64, i1 } %656, 0, !nosanitize !45
  store i64 %660, ptr %531, align 8, !tbaa !108
  %661 = load i32, ptr %69, align 8, !tbaa !107
  %662 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %661, i32 %645), !nosanitize !45
  %663 = extractvalue { i32, i1 } %662, 1, !nosanitize !45
  br i1 %663, label %664, label %665, !prof !46, !nosanitize !45

664:                                              ; preds = %659, %585
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

665:                                              ; preds = %659
  %666 = extractvalue { i32, i1 } %662, 0, !nosanitize !45
  store i32 %666, ptr %69, align 8, !tbaa !107
  %667 = load i64, ptr %640, align 8, !tbaa !57
  %668 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %667, i64 %644), !nosanitize !45
  %669 = extractvalue { i64, i1 } %668, 1, !nosanitize !45
  br i1 %669, label %670, label %671, !prof !46, !nosanitize !45

670:                                              ; preds = %665, %590
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

671:                                              ; preds = %665
  %672 = extractvalue { i64, i1 } %668, 0, !nosanitize !45
  store i64 %672, ptr %640, align 8, !tbaa !57
  %673 = icmp eq i64 %672, 0
  br i1 %673, label %674, label %677

674:                                              ; preds = %671
  %675 = getelementptr inbounds nuw i8, ptr %639, i64 16
  %676 = load ptr, ptr %675, align 8, !tbaa !40
  store ptr %676, ptr %649, align 8, !tbaa !58
  br label %677

677:                                              ; preds = %674, %671, %637
  %678 = load i64, ptr %76, align 8, !tbaa !57
  %679 = icmp eq i64 %678, 0
  br i1 %679, label %681, label %680

680:                                              ; preds = %677, %601
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

681:                                              ; preds = %677
  %682 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %610, i64 %611), !nosanitize !45
  %683 = extractvalue { i64, i1 } %682, 1, !nosanitize !45
  br i1 %683, label %684, label %608, !prof !46, !llvm.loop !119, !nosanitize !45

684:                                              ; preds = %681, %604
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

685:                                              ; preds = %608
  %686 = load ptr, ptr %511, align 8, !tbaa !100
  %687 = getelementptr inbounds nuw i8, ptr %686, i64 24
  %688 = load ptr, ptr %687, align 8, !tbaa !112
  %689 = load i64, ptr %521, align 8, !tbaa !118
  br label %690

690:                                              ; preds = %685, %535
  %691 = phi i64 [ %522, %535 ], [ %689, %685 ]
  %692 = phi ptr [ %514, %535 ], [ %688, %685 ]
  %693 = phi i64 [ %527, %535 ], [ 0, %685 ]
  %694 = phi i64 [ %532, %535 ], [ %610, %685 ]
  %695 = load ptr, ptr %529, align 8, !tbaa !40
  %696 = getelementptr inbounds nuw i8, ptr %695, i64 %693
  %697 = getelementptr inbounds nuw i8, ptr %692, i64 %691
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %696, ptr align 1 %697, i64 %694, i1 false)
  %698 = load i64, ptr %76, align 8, !tbaa !57
  %699 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %698, i64 %694), !nosanitize !45
  %700 = extractvalue { i64, i1 } %699, 0, !nosanitize !45
  %701 = extractvalue { i64, i1 } %699, 1, !nosanitize !45
  br i1 %701, label %702, label %703, !prof !46, !nosanitize !45

702:                                              ; preds = %690
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

703:                                              ; preds = %690
  store i64 %700, ptr %76, align 8, !tbaa !57
  %704 = load ptr, ptr %511, align 8, !tbaa !100
  %705 = getelementptr inbounds nuw i8, ptr %704, i64 68
  %706 = load i32, ptr %705, align 4, !tbaa !114
  %707 = icmp ne i32 %706, 0
  %708 = icmp ugt i64 %700, %693
  %709 = select i1 %707, i1 %708, i1 false
  br i1 %709, label %710, label %716

710:                                              ; preds = %703
  %711 = sub nuw i64 %700, %693
  %712 = load ptr, ptr %529, align 8, !tbaa !40
  %713 = getelementptr inbounds nuw i8, ptr %712, i64 %693
  %714 = load i64, ptr %530, align 8, !tbaa !59
  %715 = tail call i64 @crc32_z(i64 noundef %714, ptr noundef %713, i64 noundef %711) #11
  store i64 %715, ptr %530, align 8, !tbaa !59
  br label %716

716:                                              ; preds = %710, %703
  store i64 0, ptr %521, align 8, !tbaa !118
  br label %717

717:                                              ; preds = %716, %510
  store i32 73, ptr %21, align 8, !tbaa !29
  br label %718

718:                                              ; preds = %717, %508
  %719 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %720 = load ptr, ptr %719, align 8, !tbaa !100
  %721 = getelementptr inbounds nuw i8, ptr %720, i64 40
  %722 = load ptr, ptr %721, align 8, !tbaa !111
  %723 = icmp eq ptr %722, null
  br i1 %723, label %829, label %724

724:                                              ; preds = %718
  %725 = load i64, ptr %76, align 8, !tbaa !57
  %726 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %727 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %728 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %729 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %730 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %731

731:                                              ; preds = %807, %724
  %732 = phi i64 [ %725, %724 ], [ %794, %807 ]
  %733 = load i64, ptr %76, align 8, !tbaa !57
  %734 = load i64, ptr %726, align 8, !tbaa !41
  %735 = icmp eq i64 %733, %734
  br i1 %735, label %736, label %792

736:                                              ; preds = %731
  %737 = load ptr, ptr %719, align 8, !tbaa !100
  %738 = getelementptr inbounds nuw i8, ptr %737, i64 68
  %739 = load i32, ptr %738, align 4, !tbaa !114
  %740 = icmp ne i32 %739, 0
  %741 = icmp ugt i64 %733, %732
  %742 = select i1 %740, i1 %741, i1 false
  br i1 %742, label %743, label %749

743:                                              ; preds = %736
  %744 = sub nuw i64 %733, %732
  %745 = load ptr, ptr %727, align 8, !tbaa !40
  %746 = getelementptr inbounds nuw i8, ptr %745, i64 %732
  %747 = load i64, ptr %728, align 8, !tbaa !59
  %748 = tail call i64 @crc32_z(i64 noundef %747, ptr noundef %746, i64 noundef %744) #11
  store i64 %748, ptr %728, align 8, !tbaa !59
  br label %749

749:                                              ; preds = %743, %736
  %750 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %750) #11
  %751 = getelementptr inbounds nuw i8, ptr %750, i64 40
  %752 = load i64, ptr %751, align 8, !tbaa !57
  %753 = load i32, ptr %69, align 8, !tbaa !107
  %754 = zext i32 %753 to i64
  %755 = tail call i64 @llvm.umin.i64(i64 %752, i64 %754)
  %756 = trunc nuw i64 %755 to i32
  %757 = icmp eq i64 %755, 0
  br i1 %757, label %788, label %758

758:                                              ; preds = %749
  %759 = load ptr, ptr %51, align 8, !tbaa !106
  %760 = getelementptr inbounds nuw i8, ptr %750, i64 32
  %761 = load ptr, ptr %760, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %759, ptr align 1 %761, i64 %755, i1 false)
  %762 = load ptr, ptr %51, align 8, !tbaa !106
  %763 = getelementptr inbounds nuw i8, ptr %762, i64 %755
  store ptr %763, ptr %51, align 8, !tbaa !106
  %764 = load ptr, ptr %760, align 8, !tbaa !58
  %765 = getelementptr inbounds nuw i8, ptr %764, i64 %755
  store ptr %765, ptr %760, align 8, !tbaa !58
  %766 = load i64, ptr %729, align 8, !tbaa !108
  %767 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %766, i64 %755), !nosanitize !45
  %768 = extractvalue { i64, i1 } %767, 1, !nosanitize !45
  br i1 %768, label %769, label %770, !prof !46, !nosanitize !45

769:                                              ; preds = %758
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

770:                                              ; preds = %758
  %771 = extractvalue { i64, i1 } %767, 0, !nosanitize !45
  store i64 %771, ptr %729, align 8, !tbaa !108
  %772 = load i32, ptr %69, align 8, !tbaa !107
  %773 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %772, i32 %756), !nosanitize !45
  %774 = extractvalue { i32, i1 } %773, 1, !nosanitize !45
  br i1 %774, label %775, label %776, !prof !46, !nosanitize !45

775:                                              ; preds = %770
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

776:                                              ; preds = %770
  %777 = extractvalue { i32, i1 } %773, 0, !nosanitize !45
  store i32 %777, ptr %69, align 8, !tbaa !107
  %778 = load i64, ptr %751, align 8, !tbaa !57
  %779 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %778, i64 %755), !nosanitize !45
  %780 = extractvalue { i64, i1 } %779, 1, !nosanitize !45
  br i1 %780, label %781, label %782, !prof !46, !nosanitize !45

781:                                              ; preds = %776
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

782:                                              ; preds = %776
  %783 = extractvalue { i64, i1 } %779, 0, !nosanitize !45
  store i64 %783, ptr %751, align 8, !tbaa !57
  %784 = icmp eq i64 %783, 0
  br i1 %784, label %785, label %788

785:                                              ; preds = %782
  %786 = getelementptr inbounds nuw i8, ptr %750, i64 16
  %787 = load ptr, ptr %786, align 8, !tbaa !40
  store ptr %787, ptr %760, align 8, !tbaa !58
  br label %788

788:                                              ; preds = %785, %782, %749
  %789 = load i64, ptr %76, align 8, !tbaa !57
  %790 = icmp eq i64 %789, 0
  br i1 %790, label %792, label %791

791:                                              ; preds = %788
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

792:                                              ; preds = %788, %731
  %793 = phi i64 [ %733, %731 ], [ 0, %788 ]
  %794 = phi i64 [ %732, %731 ], [ 0, %788 ]
  %795 = load i64, ptr %730, align 8, !tbaa !118
  %796 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %795, i64 1), !nosanitize !45
  %797 = extractvalue { i64, i1 } %796, 1, !nosanitize !45
  br i1 %797, label %798, label %799, !prof !46, !nosanitize !45

798:                                              ; preds = %792
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

799:                                              ; preds = %792
  %800 = extractvalue { i64, i1 } %796, 0, !nosanitize !45
  %801 = load ptr, ptr %719, align 8, !tbaa !100
  %802 = getelementptr inbounds nuw i8, ptr %801, i64 40
  %803 = load ptr, ptr %802, align 8, !tbaa !111
  store i64 %800, ptr %730, align 8, !tbaa !118
  %804 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %793, i64 1), !nosanitize !45
  %805 = extractvalue { i64, i1 } %804, 1, !nosanitize !45
  br i1 %805, label %806, label %807, !prof !46, !nosanitize !45

806:                                              ; preds = %799
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

807:                                              ; preds = %799
  %808 = extractvalue { i64, i1 } %804, 0, !nosanitize !45
  %809 = load ptr, ptr %727, align 8, !tbaa !40
  %810 = getelementptr inbounds nuw i8, ptr %803, i64 %795
  %811 = load i8, ptr %810, align 1, !tbaa !8
  store i64 %808, ptr %76, align 8, !tbaa !57
  %812 = getelementptr inbounds nuw i8, ptr %809, i64 %793
  store i8 %811, ptr %812, align 1, !tbaa !8
  %813 = icmp eq i8 %811, 0
  br i1 %813, label %814, label %731, !llvm.loop !122

814:                                              ; preds = %807
  %815 = load ptr, ptr %719, align 8, !tbaa !100
  %816 = getelementptr inbounds nuw i8, ptr %815, i64 68
  %817 = load i32, ptr %816, align 4, !tbaa !114
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %828, label %819

819:                                              ; preds = %814
  %820 = load i64, ptr %76, align 8, !tbaa !57
  %821 = icmp ugt i64 %820, %794
  br i1 %821, label %822, label %828

822:                                              ; preds = %819
  %823 = sub nuw i64 %820, %794
  %824 = load ptr, ptr %727, align 8, !tbaa !40
  %825 = getelementptr inbounds nuw i8, ptr %824, i64 %794
  %826 = load i64, ptr %728, align 8, !tbaa !59
  %827 = tail call i64 @crc32_z(i64 noundef %826, ptr noundef %825, i64 noundef %823) #11
  store i64 %827, ptr %728, align 8, !tbaa !59
  br label %828

828:                                              ; preds = %822, %819, %814
  store i64 0, ptr %730, align 8, !tbaa !118
  br label %829

829:                                              ; preds = %828, %718
  store i32 91, ptr %21, align 8, !tbaa !29
  br label %830

830:                                              ; preds = %829, %508
  %831 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %832 = load ptr, ptr %831, align 8, !tbaa !100
  %833 = getelementptr inbounds nuw i8, ptr %832, i64 56
  %834 = load ptr, ptr %833, align 8, !tbaa !109
  %835 = icmp eq ptr %834, null
  br i1 %835, label %940, label %836

836:                                              ; preds = %830
  %837 = load i64, ptr %76, align 8, !tbaa !57
  %838 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %839 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %840 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %841 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %842 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %843

843:                                              ; preds = %919, %836
  %844 = phi i64 [ %837, %836 ], [ %906, %919 ]
  %845 = load i64, ptr %76, align 8, !tbaa !57
  %846 = load i64, ptr %838, align 8, !tbaa !41
  %847 = icmp eq i64 %845, %846
  br i1 %847, label %848, label %904

848:                                              ; preds = %843
  %849 = load ptr, ptr %831, align 8, !tbaa !100
  %850 = getelementptr inbounds nuw i8, ptr %849, i64 68
  %851 = load i32, ptr %850, align 4, !tbaa !114
  %852 = icmp ne i32 %851, 0
  %853 = icmp ugt i64 %845, %844
  %854 = select i1 %852, i1 %853, i1 false
  br i1 %854, label %855, label %861

855:                                              ; preds = %848
  %856 = sub nuw i64 %845, %844
  %857 = load ptr, ptr %839, align 8, !tbaa !40
  %858 = getelementptr inbounds nuw i8, ptr %857, i64 %844
  %859 = load i64, ptr %840, align 8, !tbaa !59
  %860 = tail call i64 @crc32_z(i64 noundef %859, ptr noundef %858, i64 noundef %856) #11
  store i64 %860, ptr %840, align 8, !tbaa !59
  br label %861

861:                                              ; preds = %855, %848
  %862 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %862) #11
  %863 = getelementptr inbounds nuw i8, ptr %862, i64 40
  %864 = load i64, ptr %863, align 8, !tbaa !57
  %865 = load i32, ptr %69, align 8, !tbaa !107
  %866 = zext i32 %865 to i64
  %867 = tail call i64 @llvm.umin.i64(i64 %864, i64 %866)
  %868 = trunc nuw i64 %867 to i32
  %869 = icmp eq i64 %867, 0
  br i1 %869, label %900, label %870

870:                                              ; preds = %861
  %871 = load ptr, ptr %51, align 8, !tbaa !106
  %872 = getelementptr inbounds nuw i8, ptr %862, i64 32
  %873 = load ptr, ptr %872, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %871, ptr align 1 %873, i64 %867, i1 false)
  %874 = load ptr, ptr %51, align 8, !tbaa !106
  %875 = getelementptr inbounds nuw i8, ptr %874, i64 %867
  store ptr %875, ptr %51, align 8, !tbaa !106
  %876 = load ptr, ptr %872, align 8, !tbaa !58
  %877 = getelementptr inbounds nuw i8, ptr %876, i64 %867
  store ptr %877, ptr %872, align 8, !tbaa !58
  %878 = load i64, ptr %841, align 8, !tbaa !108
  %879 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %878, i64 %867), !nosanitize !45
  %880 = extractvalue { i64, i1 } %879, 1, !nosanitize !45
  br i1 %880, label %881, label %882, !prof !46, !nosanitize !45

881:                                              ; preds = %870
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

882:                                              ; preds = %870
  %883 = extractvalue { i64, i1 } %879, 0, !nosanitize !45
  store i64 %883, ptr %841, align 8, !tbaa !108
  %884 = load i32, ptr %69, align 8, !tbaa !107
  %885 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %884, i32 %868), !nosanitize !45
  %886 = extractvalue { i32, i1 } %885, 1, !nosanitize !45
  br i1 %886, label %887, label %888, !prof !46, !nosanitize !45

887:                                              ; preds = %882
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

888:                                              ; preds = %882
  %889 = extractvalue { i32, i1 } %885, 0, !nosanitize !45
  store i32 %889, ptr %69, align 8, !tbaa !107
  %890 = load i64, ptr %863, align 8, !tbaa !57
  %891 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %890, i64 %867), !nosanitize !45
  %892 = extractvalue { i64, i1 } %891, 1, !nosanitize !45
  br i1 %892, label %893, label %894, !prof !46, !nosanitize !45

893:                                              ; preds = %888
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

894:                                              ; preds = %888
  %895 = extractvalue { i64, i1 } %891, 0, !nosanitize !45
  store i64 %895, ptr %863, align 8, !tbaa !57
  %896 = icmp eq i64 %895, 0
  br i1 %896, label %897, label %900

897:                                              ; preds = %894
  %898 = getelementptr inbounds nuw i8, ptr %862, i64 16
  %899 = load ptr, ptr %898, align 8, !tbaa !40
  store ptr %899, ptr %872, align 8, !tbaa !58
  br label %900

900:                                              ; preds = %897, %894, %861
  %901 = load i64, ptr %76, align 8, !tbaa !57
  %902 = icmp eq i64 %901, 0
  br i1 %902, label %904, label %903

903:                                              ; preds = %900
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

904:                                              ; preds = %900, %843
  %905 = phi i64 [ %845, %843 ], [ 0, %900 ]
  %906 = phi i64 [ %844, %843 ], [ 0, %900 ]
  %907 = load i64, ptr %842, align 8, !tbaa !118
  %908 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %907, i64 1), !nosanitize !45
  %909 = extractvalue { i64, i1 } %908, 1, !nosanitize !45
  br i1 %909, label %910, label %911, !prof !46, !nosanitize !45

910:                                              ; preds = %904
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

911:                                              ; preds = %904
  %912 = extractvalue { i64, i1 } %908, 0, !nosanitize !45
  %913 = load ptr, ptr %831, align 8, !tbaa !100
  %914 = getelementptr inbounds nuw i8, ptr %913, i64 56
  %915 = load ptr, ptr %914, align 8, !tbaa !109
  store i64 %912, ptr %842, align 8, !tbaa !118
  %916 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %905, i64 1), !nosanitize !45
  %917 = extractvalue { i64, i1 } %916, 1, !nosanitize !45
  br i1 %917, label %918, label %919, !prof !46, !nosanitize !45

918:                                              ; preds = %911
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

919:                                              ; preds = %911
  %920 = extractvalue { i64, i1 } %916, 0, !nosanitize !45
  %921 = load ptr, ptr %839, align 8, !tbaa !40
  %922 = getelementptr inbounds nuw i8, ptr %915, i64 %907
  %923 = load i8, ptr %922, align 1, !tbaa !8
  store i64 %920, ptr %76, align 8, !tbaa !57
  %924 = getelementptr inbounds nuw i8, ptr %921, i64 %905
  store i8 %923, ptr %924, align 1, !tbaa !8
  %925 = icmp eq i8 %923, 0
  br i1 %925, label %926, label %843, !llvm.loop !123

926:                                              ; preds = %919
  %927 = load ptr, ptr %831, align 8, !tbaa !100
  %928 = getelementptr inbounds nuw i8, ptr %927, i64 68
  %929 = load i32, ptr %928, align 4, !tbaa !114
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %940, label %931

931:                                              ; preds = %926
  %932 = load i64, ptr %76, align 8, !tbaa !57
  %933 = icmp ugt i64 %932, %906
  br i1 %933, label %934, label %940

934:                                              ; preds = %931
  %935 = sub nuw i64 %932, %906
  %936 = load ptr, ptr %839, align 8, !tbaa !40
  %937 = getelementptr inbounds nuw i8, ptr %936, i64 %906
  %938 = load i64, ptr %840, align 8, !tbaa !59
  %939 = tail call i64 @crc32_z(i64 noundef %938, ptr noundef %937, i64 noundef %935) #11
  store i64 %939, ptr %840, align 8, !tbaa !59
  br label %940

940:                                              ; preds = %934, %931, %926, %830
  store i32 103, ptr %21, align 8, !tbaa !29
  br label %941

941:                                              ; preds = %940, %508
  %942 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %943 = load ptr, ptr %942, align 8, !tbaa !100
  %944 = getelementptr inbounds nuw i8, ptr %943, i64 68
  %945 = load i32, ptr %944, align 4, !tbaa !114
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %982, label %947

947:                                              ; preds = %941
  %948 = load i64, ptr %76, align 8, !tbaa !57
  %949 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %948, i64 2), !nosanitize !45
  %950 = extractvalue { i64, i1 } %949, 1, !nosanitize !45
  br i1 %950, label %951, label %952, !prof !46, !nosanitize !45

951:                                              ; preds = %947
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

952:                                              ; preds = %947
  %953 = extractvalue { i64, i1 } %949, 0, !nosanitize !45
  %954 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %955 = load i64, ptr %954, align 8, !tbaa !41
  %956 = icmp ugt i64 %953, %955
  br i1 %956, label %957, label %961

957:                                              ; preds = %952
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %958 = load i64, ptr %76, align 8, !tbaa !57
  %959 = icmp eq i64 %958, 0
  br i1 %959, label %961, label %960

960:                                              ; preds = %957
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

961:                                              ; preds = %957, %952
  %962 = phi i64 [ 0, %957 ], [ %948, %952 ]
  %963 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %964 = add nuw i64 %962, 1
  %965 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %966 = load ptr, ptr %965, align 8, !tbaa !40
  %967 = load i64, ptr %963, align 8, !tbaa !59
  %968 = trunc i64 %967 to i8
  store i64 %964, ptr %76, align 8, !tbaa !57
  %969 = getelementptr inbounds nuw i8, ptr %966, i64 %962
  store i8 %968, ptr %969, align 1, !tbaa !8
  %970 = load i64, ptr %76, align 8, !tbaa !57
  %971 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %970, i64 1), !nosanitize !45
  %972 = extractvalue { i64, i1 } %971, 1, !nosanitize !45
  br i1 %972, label %973, label %974, !prof !46, !nosanitize !45

973:                                              ; preds = %961
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

974:                                              ; preds = %961
  %975 = extractvalue { i64, i1 } %971, 0, !nosanitize !45
  %976 = load ptr, ptr %965, align 8, !tbaa !40
  %977 = load i64, ptr %963, align 8, !tbaa !59
  %978 = lshr i64 %977, 8
  %979 = trunc i64 %978 to i8
  store i64 %975, ptr %76, align 8, !tbaa !57
  %980 = getelementptr inbounds nuw i8, ptr %976, i64 %970
  store i8 %979, ptr %980, align 1, !tbaa !8
  %981 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %981, ptr %963, align 8, !tbaa !59
  br label %982

982:                                              ; preds = %974, %941
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %983 = load i64, ptr %76, align 8, !tbaa !57
  %984 = icmp eq i64 %983, 0
  br i1 %984, label %986, label %985

985:                                              ; preds = %982
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

986:                                              ; preds = %982, %508, %147
  %987 = load i32, ptr %55, align 8, !tbaa !81
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %989, label %996

989:                                              ; preds = %986, %137
  %990 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %991 = load i32, ptr %990, align 4, !tbaa !75
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %993, label %996

993:                                              ; preds = %989
  %994 = load i32, ptr %21, align 8, !tbaa !29
  %995 = icmp eq i32 %994, 666
  br i1 %995, label %1031, label %996

996:                                              ; preds = %993, %989, %986
  %997 = load i32, ptr %30, align 4, !tbaa !48
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %999, label %1001

999:                                              ; preds = %996
  %1000 = tail call i32 @deflate_stored(ptr noundef nonnull %15, i32 noundef 5)
  br label %1013

1001:                                             ; preds = %996
  %1002 = load i32, ptr %31, align 8, !tbaa !49
  switch i32 %1002, label %1007 [
    i32 2, label %1003
    i32 3, label %1005
  ]

1003:                                             ; preds = %1001
  %1004 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %15, i32 noundef 5)
  br label %1013

1005:                                             ; preds = %1001
  %1006 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %15, i32 noundef 5)
  br label %1013

1007:                                             ; preds = %1001
  %1008 = sext i32 %997 to i64
  %1009 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %1008
  %1010 = getelementptr inbounds nuw i8, ptr %1009, i64 8
  %1011 = load ptr, ptr %1010, align 8, !tbaa !105
  %1012 = tail call i32 %1011(ptr noundef nonnull %15, i32 noundef 5) #11, !inline_history !124
  br label %1013

1013:                                             ; preds = %1007, %1005, %1003, %999
  %1014 = phi i32 [ %1000, %999 ], [ %1004, %1003 ], [ %1006, %1005 ], [ %1012, %1007 ]
  %1015 = and i32 %1014, -2
  %1016 = icmp eq i32 %1015, 2
  br i1 %1016, label %1017, label %1018

1017:                                             ; preds = %1013
  store i32 666, ptr %21, align 8, !tbaa !29
  br label %1018

1018:                                             ; preds = %1017, %1013
  %1019 = and i32 %1014, -3
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1021, label %1025

1021:                                             ; preds = %1018
  %1022 = load i32, ptr %69, align 8, !tbaa !107
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1024, label %1031

1024:                                             ; preds = %1021
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

1025:                                             ; preds = %1018
  %1026 = icmp eq i32 %1014, 1
  br i1 %1026, label %1027, label %1031

1027:                                             ; preds = %1025
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1028 = load i32, ptr %69, align 8, !tbaa !107
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1030, label %1031

1030:                                             ; preds = %1027
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

1031:                                             ; preds = %1030, %1027, %1025, %1024, %1021, %993, %985, %960, %903, %791, %680, %353, %249, %140, %131, %123, %72
  %1032 = load i32, ptr %55, align 8, !tbaa !81
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1034, label %1089

1034:                                             ; preds = %1031
  %1035 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %1036 = load i32, ptr %1035, align 4, !tbaa !73
  %1037 = zext i32 %1036 to i64
  %1038 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %1039 = load i64, ptr %1038, align 8, !tbaa !74
  %1040 = sub nsw i64 %1037, %1039
  %1041 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %1042 = load i32, ptr %1041, align 4, !tbaa !75
  %1043 = zext i32 %1042 to i64
  %1044 = sub nsw i64 0, %1043
  %1045 = icmp eq i64 %1040, %1044
  br i1 %1045, label %1046, label %1089

1046:                                             ; preds = %1034, %45, %34
  %1047 = load i32, ptr %30, align 4, !tbaa !48
  %1048 = icmp eq i32 %1047, %25
  br i1 %1048, label %1088, label %1049

1049:                                             ; preds = %1046
  %1050 = icmp eq i32 %1047, 0
  br i1 %1050, label %1051, label %1070

1051:                                             ; preds = %1049
  %1052 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %1053 = load i32, ptr %1052, align 8, !tbaa !125
  switch i32 %1053, label %1055 [
    i32 0, label %1070
    i32 1, label %1054
  ]

1054:                                             ; preds = %1051
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %1069

1055:                                             ; preds = %1051
  %1056 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %1057 = load i32, ptr %1056, align 4, !tbaa !36
  %1058 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1057, i32 1), !nosanitize !45
  %1059 = extractvalue { i32, i1 } %1058, 1, !nosanitize !45
  br i1 %1059, label %1060, label %1061, !prof !46, !nosanitize !45

1060:                                             ; preds = %1055
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1061:                                             ; preds = %1055
  %1062 = extractvalue { i32, i1 } %1058, 0, !nosanitize !45
  %1063 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %1064 = load ptr, ptr %1063, align 8, !tbaa !37
  %1065 = zext i32 %1062 to i64
  %1066 = getelementptr inbounds nuw [2 x i8], ptr %1064, i64 %1065
  store i16 0, ptr %1066, align 2, !tbaa !62
  %1067 = shl nuw nsw i64 %1065, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1064, i8 0, i64 %1067, i1 false)
  %1068 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %1068, align 8, !tbaa !63
  br label %1069

1069:                                             ; preds = %1061, %1054
  store i32 0, ptr %1052, align 8, !tbaa !125
  br label %1070

1070:                                             ; preds = %1069, %1051, %1049
  store i32 %25, ptr %30, align 4, !tbaa !48
  %1071 = zext nneg i32 %25 to i64
  %1072 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %1071
  %1073 = getelementptr inbounds nuw i8, ptr %1072, i64 2
  %1074 = load i16, ptr %1073, align 2, !tbaa !64
  %1075 = zext i16 %1074 to i32
  %1076 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %1075, ptr %1076, align 8, !tbaa !66
  %1077 = load i16, ptr %1072, align 16, !tbaa !67
  %1078 = zext i16 %1077 to i32
  %1079 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %1078, ptr %1079, align 4, !tbaa !68
  %1080 = getelementptr inbounds nuw i8, ptr %1072, i64 4
  %1081 = load i16, ptr %1080, align 4, !tbaa !69
  %1082 = zext i16 %1081 to i32
  %1083 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %1082, ptr %1083, align 8, !tbaa !70
  %1084 = getelementptr inbounds nuw i8, ptr %1072, i64 6
  %1085 = load i16, ptr %1084, align 2, !tbaa !71
  %1086 = zext i16 %1085 to i32
  %1087 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %1086, ptr %1087, align 4, !tbaa !72
  br label %1088

1088:                                             ; preds = %1070, %1046
  store i32 %2, ptr %31, align 8, !tbaa !49
  br label %1089

1089:                                             ; preds = %1088, %1034, %1031, %65, %49, %23, %20, %17, %13, %9, %5, %3
  %1090 = phi i32 [ -5, %1034 ], [ -2, %13 ], [ 0, %1088 ], [ -2, %23 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %65 ], [ -2, %49 ], [ -5, %1031 ]
  ret i32 %1090
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
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %1196, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %1196

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
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
  %26 = load ptr, ptr %25, align 8, !tbaa !106
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
  br label %1196

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !107
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !9
  br label %1196

49:                                               ; preds = %42
  %50 = getelementptr inbounds nuw i8, ptr %14, i64 76
  %51 = load i32, ptr %50, align 4, !tbaa !60
  store i32 %1, ptr %50, align 4, !tbaa !60
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !57
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %100, label %55

55:                                               ; preds = %49
  tail call void @_tr_flush_bits(ptr noundef nonnull %14) #11
  %56 = load i64, ptr %52, align 8, !tbaa !57
  %57 = load i32, ptr %43, align 8, !tbaa !107
  %58 = zext i32 %57 to i64
  %59 = tail call i64 @llvm.umin.i64(i64 %56, i64 %58)
  %60 = trunc nuw i64 %59 to i32
  %61 = icmp eq i64 %59, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %25, align 8, !tbaa !106
  %64 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %65 = load ptr, ptr %64, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %65, i64 %59, i1 false)
  %66 = load ptr, ptr %25, align 8, !tbaa !106
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %59
  store ptr %67, ptr %25, align 8, !tbaa !106
  %68 = load ptr, ptr %64, align 8, !tbaa !58
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 %59
  store ptr %69, ptr %64, align 8, !tbaa !58
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %71 = load i64, ptr %70, align 8, !tbaa !108
  %72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %71, i64 %59), !nosanitize !45
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !45
  br i1 %73, label %74, label %75, !prof !46, !nosanitize !45

74:                                               ; preds = %62
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

75:                                               ; preds = %62
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !45
  store i64 %76, ptr %70, align 8, !tbaa !108
  %77 = load i32, ptr %43, align 8, !tbaa !107
  %78 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %77, i32 %60), !nosanitize !45
  %79 = extractvalue { i32, i1 } %78, 1, !nosanitize !45
  br i1 %79, label %80, label %81, !prof !46, !nosanitize !45

80:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

81:                                               ; preds = %75
  %82 = extractvalue { i32, i1 } %78, 0, !nosanitize !45
  store i32 %82, ptr %43, align 8, !tbaa !107
  %83 = load i64, ptr %52, align 8, !tbaa !57
  %84 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 %59), !nosanitize !45
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !45
  br i1 %85, label %86, label %87, !prof !46, !nosanitize !45

86:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

87:                                               ; preds = %81
  %88 = extractvalue { i64, i1 } %84, 0, !nosanitize !45
  store i64 %88, ptr %52, align 8, !tbaa !57
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %92 = load ptr, ptr %91, align 8, !tbaa !40
  store ptr %92, ptr %64, align 8, !tbaa !58
  br label %93

93:                                               ; preds = %90, %87, %55
  %94 = phi i64 [ %56, %55 ], [ 0, %90 ], [ %88, %87 ]
  %95 = phi i32 [ %57, %55 ], [ %82, %90 ], [ %82, %87 ]
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %20, align 8, !tbaa !29
  br label %115

99:                                               ; preds = %93
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

100:                                              ; preds = %49
  br i1 %31, label %101, label %115

101:                                              ; preds = %100
  %102 = shl nuw nsw i32 %1, 1
  %103 = icmp eq i32 %1, 5
  %104 = select i1 %103, i32 -9, i32 0
  %105 = add nsw i32 %104, %102
  %106 = shl nsw i32 %51, 1
  %107 = icmp sgt i32 %51, 4
  %108 = select i1 %107, i32 -9, i32 0
  %109 = add i32 %108, %106
  %110 = icmp sle i32 %105, %109
  %111 = and i1 %37, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %101
  %113 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %113, ptr %114, align 8, !tbaa !9
  br label %1196

115:                                              ; preds = %101, %100, %97
  %116 = phi i64 [ %94, %97 ], [ 0, %100 ], [ 0, %101 ]
  %117 = phi i32 [ %98, %97 ], [ %21, %100 ], [ %21, %101 ]
  switch i32 %117, label %233 [
    i32 666, label %118
    i32 42, label %124
  ]

118:                                              ; preds = %115
  %119 = load i32, ptr %29, align 8, !tbaa !81
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %976, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %122, ptr %123, align 8, !tbaa !9
  br label %1196

124:                                              ; preds = %115
  %125 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %126 = load i32, ptr %125, align 8, !tbaa !30
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 113, ptr %20, align 8, !tbaa !29
  br label %973

129:                                              ; preds = %124
  %130 = getelementptr inbounds nuw i8, ptr %14, i64 84
  %131 = load i32, ptr %130, align 4, !tbaa !31
  %132 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %131, i32 8), !nosanitize !45
  %133 = extractvalue { i32, i1 } %132, 1, !nosanitize !45
  br i1 %133, label %134, label %135, !prof !46, !nosanitize !45

134:                                              ; preds = %129
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

135:                                              ; preds = %129
  %136 = extractvalue { i32, i1 } %132, 0, !nosanitize !45
  %137 = shl i32 %136, 12
  %138 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %139 = load i32, ptr %138, align 8, !tbaa !49
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %150, label %141

141:                                              ; preds = %135
  %142 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %143 = load i32, ptr %142, align 4, !tbaa !48
  %144 = icmp slt i32 %143, 2
  br i1 %144, label %150, label %145

145:                                              ; preds = %141
  %146 = icmp samesign ult i32 %143, 6
  br i1 %146, label %150, label %147

147:                                              ; preds = %145
  %148 = icmp eq i32 %143, 6
  %149 = select i1 %148, i32 128, i32 192
  br label %150

150:                                              ; preds = %147, %145, %141, %135
  %151 = phi i32 [ 64, %145 ], [ 0, %135 ], [ %149, %147 ], [ 0, %141 ]
  %152 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %153 = or disjoint i32 %151, %137
  %154 = load i32, ptr %152, align 4, !tbaa !73
  %155 = icmp eq i32 %154, 0
  %156 = select i1 %155, i32 2048, i32 2080
  %157 = or disjoint i32 %156, %153
  %158 = urem i32 %157, 31
  %159 = or disjoint i32 %158, %157
  %160 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %116, i64 1), !nosanitize !45
  %161 = extractvalue { i64, i1 } %160, 1, !nosanitize !45
  br i1 %161, label %162, label %163, !prof !46, !nosanitize !45

162:                                              ; preds = %150
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

163:                                              ; preds = %150
  %164 = extractvalue { i64, i1 } %160, 0, !nosanitize !45
  %165 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %166 = load ptr, ptr %165, align 8, !tbaa !40
  %167 = lshr i32 %157, 8
  %168 = trunc i32 %167 to i8
  store i64 %164, ptr %52, align 8, !tbaa !57
  %169 = getelementptr inbounds nuw i8, ptr %166, i64 %116
  store i8 %168, ptr %169, align 1, !tbaa !8
  %170 = load i64, ptr %52, align 8, !tbaa !57
  %171 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %170, i64 1), !nosanitize !45
  %172 = extractvalue { i64, i1 } %171, 1, !nosanitize !45
  br i1 %172, label %173, label %174, !prof !46, !nosanitize !45

173:                                              ; preds = %163
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

174:                                              ; preds = %163
  %175 = extractvalue { i64, i1 } %171, 0, !nosanitize !45
  %176 = load ptr, ptr %165, align 8, !tbaa !40
  %177 = trunc i32 %159 to i8
  %178 = xor i8 %177, 31
  store i64 %175, ptr %52, align 8, !tbaa !57
  %179 = getelementptr inbounds nuw i8, ptr %176, i64 %170
  store i8 %178, ptr %179, align 1, !tbaa !8
  %180 = load i32, ptr %152, align 4, !tbaa !73
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %225, label %182

182:                                              ; preds = %174
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %184 = load i64, ptr %183, align 8, !tbaa !59
  %185 = lshr i64 %184, 16
  %186 = load i64, ptr %52, align 8, !tbaa !57
  %187 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %186, i64 1), !nosanitize !45
  %188 = extractvalue { i64, i1 } %187, 1, !nosanitize !45
  br i1 %188, label %189, label %190, !prof !46, !nosanitize !45

189:                                              ; preds = %182
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

190:                                              ; preds = %182
  %191 = extractvalue { i64, i1 } %187, 0, !nosanitize !45
  %192 = load ptr, ptr %165, align 8, !tbaa !40
  %193 = lshr i64 %184, 24
  %194 = trunc i64 %193 to i8
  store i64 %191, ptr %52, align 8, !tbaa !57
  %195 = getelementptr inbounds nuw i8, ptr %192, i64 %186
  store i8 %194, ptr %195, align 1, !tbaa !8
  %196 = load i64, ptr %52, align 8, !tbaa !57
  %197 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %196, i64 1), !nosanitize !45
  %198 = extractvalue { i64, i1 } %197, 1, !nosanitize !45
  br i1 %198, label %199, label %200, !prof !46, !nosanitize !45

199:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

200:                                              ; preds = %190
  %201 = extractvalue { i64, i1 } %197, 0, !nosanitize !45
  %202 = load ptr, ptr %165, align 8, !tbaa !40
  %203 = trunc i64 %185 to i8
  store i64 %201, ptr %52, align 8, !tbaa !57
  %204 = getelementptr inbounds nuw i8, ptr %202, i64 %196
  store i8 %203, ptr %204, align 1, !tbaa !8
  %205 = load i64, ptr %183, align 8, !tbaa !59
  %206 = trunc i64 %205 to i8
  %207 = load i64, ptr %52, align 8, !tbaa !57
  %208 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %207, i64 1), !nosanitize !45
  %209 = extractvalue { i64, i1 } %208, 1, !nosanitize !45
  br i1 %209, label %210, label %211, !prof !46, !nosanitize !45

210:                                              ; preds = %200
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

211:                                              ; preds = %200
  %212 = extractvalue { i64, i1 } %208, 0, !nosanitize !45
  %213 = load ptr, ptr %165, align 8, !tbaa !40
  %214 = lshr i64 %205, 8
  %215 = trunc i64 %214 to i8
  store i64 %212, ptr %52, align 8, !tbaa !57
  %216 = getelementptr inbounds nuw i8, ptr %213, i64 %207
  store i8 %215, ptr %216, align 1, !tbaa !8
  %217 = load i64, ptr %52, align 8, !tbaa !57
  %218 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %217, i64 1), !nosanitize !45
  %219 = extractvalue { i64, i1 } %218, 1, !nosanitize !45
  br i1 %219, label %220, label %221, !prof !46, !nosanitize !45

220:                                              ; preds = %211
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

221:                                              ; preds = %211
  %222 = extractvalue { i64, i1 } %218, 0, !nosanitize !45
  %223 = load ptr, ptr %165, align 8, !tbaa !40
  store i64 %222, ptr %52, align 8, !tbaa !57
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 %217
  store i8 %206, ptr %224, align 1, !tbaa !8
  br label %225

225:                                              ; preds = %221, %174
  %226 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %226, ptr %227, align 8, !tbaa !59
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %228 = load i64, ptr %52, align 8, !tbaa !57
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = load i32, ptr %20, align 8, !tbaa !29
  br label %233

232:                                              ; preds = %225
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

233:                                              ; preds = %230, %115
  %234 = phi i32 [ %231, %230 ], [ %117, %115 ]
  %235 = icmp eq i32 %234, 57
  br i1 %235, label %236, label %495

236:                                              ; preds = %233
  %237 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %237, ptr %238, align 8, !tbaa !59
  %239 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %240 = load i64, ptr %52, align 8, !tbaa !57
  %241 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %240, i64 1), !nosanitize !45
  %242 = extractvalue { i64, i1 } %241, 1, !nosanitize !45
  br i1 %242, label %243, label %244, !prof !46, !nosanitize !45

243:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

244:                                              ; preds = %236
  %245 = extractvalue { i64, i1 } %241, 0, !nosanitize !45
  %246 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %245, ptr %52, align 8, !tbaa !57
  %247 = getelementptr inbounds nuw i8, ptr %246, i64 %240
  store i8 31, ptr %247, align 1, !tbaa !8
  %248 = load i64, ptr %52, align 8, !tbaa !57
  %249 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %248, i64 1), !nosanitize !45
  %250 = extractvalue { i64, i1 } %249, 1, !nosanitize !45
  br i1 %250, label %251, label %252, !prof !46, !nosanitize !45

251:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

252:                                              ; preds = %244
  %253 = extractvalue { i64, i1 } %249, 0, !nosanitize !45
  %254 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %253, ptr %52, align 8, !tbaa !57
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 %248
  store i8 -117, ptr %255, align 1, !tbaa !8
  %256 = load i64, ptr %52, align 8, !tbaa !57
  %257 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %256, i64 1), !nosanitize !45
  %258 = extractvalue { i64, i1 } %257, 1, !nosanitize !45
  br i1 %258, label %259, label %260, !prof !46, !nosanitize !45

259:                                              ; preds = %252
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

260:                                              ; preds = %252
  %261 = extractvalue { i64, i1 } %257, 0, !nosanitize !45
  %262 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %261, ptr %52, align 8, !tbaa !57
  %263 = getelementptr inbounds nuw i8, ptr %262, i64 %256
  store i8 8, ptr %263, align 1, !tbaa !8
  %264 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %265 = load ptr, ptr %264, align 8, !tbaa !100
  %266 = icmp eq ptr %265, null
  %267 = load i64, ptr %52, align 8, !tbaa !57
  %268 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %267, i64 1), !nosanitize !45
  %269 = extractvalue { i64, i1 } %268, 1, !nosanitize !45
  br i1 %266, label %270, label %339

270:                                              ; preds = %260
  br i1 %269, label %271, label %272, !prof !46, !nosanitize !45

271:                                              ; preds = %270
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

272:                                              ; preds = %270
  %273 = extractvalue { i64, i1 } %268, 0, !nosanitize !45
  %274 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %273, ptr %52, align 8, !tbaa !57
  %275 = getelementptr inbounds nuw i8, ptr %274, i64 %267
  store i8 0, ptr %275, align 1, !tbaa !8
  %276 = load i64, ptr %52, align 8, !tbaa !57
  %277 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %276, i64 1), !nosanitize !45
  %278 = extractvalue { i64, i1 } %277, 1, !nosanitize !45
  br i1 %278, label %279, label %280, !prof !46, !nosanitize !45

279:                                              ; preds = %272
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

280:                                              ; preds = %272
  %281 = extractvalue { i64, i1 } %277, 0, !nosanitize !45
  %282 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %281, ptr %52, align 8, !tbaa !57
  %283 = getelementptr inbounds nuw i8, ptr %282, i64 %276
  store i8 0, ptr %283, align 1, !tbaa !8
  %284 = load i64, ptr %52, align 8, !tbaa !57
  %285 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %284, i64 1), !nosanitize !45
  %286 = extractvalue { i64, i1 } %285, 1, !nosanitize !45
  br i1 %286, label %287, label %288, !prof !46, !nosanitize !45

287:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

288:                                              ; preds = %280
  %289 = extractvalue { i64, i1 } %285, 0, !nosanitize !45
  %290 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %289, ptr %52, align 8, !tbaa !57
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 %284
  store i8 0, ptr %291, align 1, !tbaa !8
  %292 = load i64, ptr %52, align 8, !tbaa !57
  %293 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %292, i64 1), !nosanitize !45
  %294 = extractvalue { i64, i1 } %293, 1, !nosanitize !45
  br i1 %294, label %295, label %296, !prof !46, !nosanitize !45

295:                                              ; preds = %288
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

296:                                              ; preds = %288
  %297 = extractvalue { i64, i1 } %293, 0, !nosanitize !45
  %298 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %297, ptr %52, align 8, !tbaa !57
  %299 = getelementptr inbounds nuw i8, ptr %298, i64 %292
  store i8 0, ptr %299, align 1, !tbaa !8
  %300 = load i64, ptr %52, align 8, !tbaa !57
  %301 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %300, i64 1), !nosanitize !45
  %302 = extractvalue { i64, i1 } %301, 1, !nosanitize !45
  br i1 %302, label %303, label %304, !prof !46, !nosanitize !45

303:                                              ; preds = %296
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

304:                                              ; preds = %296
  %305 = extractvalue { i64, i1 } %301, 0, !nosanitize !45
  %306 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %305, ptr %52, align 8, !tbaa !57
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 %300
  store i8 0, ptr %307, align 1, !tbaa !8
  %308 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %309 = load i32, ptr %308, align 4, !tbaa !48
  %310 = icmp eq i32 %309, 9
  br i1 %310, label %318, label %311

311:                                              ; preds = %304
  %312 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %313 = load i32, ptr %312, align 8, !tbaa !49
  %314 = icmp sgt i32 %313, 1
  %315 = icmp slt i32 %309, 2
  %316 = or i1 %315, %314
  %317 = select i1 %316, i8 4, i8 0
  br label %318

318:                                              ; preds = %311, %304
  %319 = phi i8 [ %317, %311 ], [ 2, %304 ]
  %320 = load i64, ptr %52, align 8, !tbaa !57
  %321 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %320, i64 1), !nosanitize !45
  %322 = extractvalue { i64, i1 } %321, 1, !nosanitize !45
  br i1 %322, label %323, label %324, !prof !46, !nosanitize !45

323:                                              ; preds = %318
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

324:                                              ; preds = %318
  %325 = extractvalue { i64, i1 } %321, 0, !nosanitize !45
  %326 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %325, ptr %52, align 8, !tbaa !57
  %327 = getelementptr inbounds nuw i8, ptr %326, i64 %320
  store i8 %319, ptr %327, align 1, !tbaa !8
  %328 = load i64, ptr %52, align 8, !tbaa !57
  %329 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %328, i64 1), !nosanitize !45
  %330 = extractvalue { i64, i1 } %329, 1, !nosanitize !45
  br i1 %330, label %331, label %332, !prof !46, !nosanitize !45

331:                                              ; preds = %324
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

332:                                              ; preds = %324
  %333 = extractvalue { i64, i1 } %329, 0, !nosanitize !45
  %334 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %333, ptr %52, align 8, !tbaa !57
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 %328
  store i8 3, ptr %335, align 1, !tbaa !8
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %336 = load i64, ptr %52, align 8, !tbaa !57
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %493, label %338

338:                                              ; preds = %332
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

339:                                              ; preds = %260
  br i1 %269, label %340, label %341, !prof !46, !nosanitize !45

340:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

341:                                              ; preds = %339
  %342 = extractvalue { i64, i1 } %268, 0, !nosanitize !45
  %343 = load ptr, ptr %239, align 8, !tbaa !40
  %344 = getelementptr inbounds nuw i8, ptr %265, i64 56
  %345 = load ptr, ptr %344, align 8, !tbaa !109
  %346 = icmp eq ptr %345, null
  %347 = getelementptr inbounds nuw i8, ptr %265, i64 40
  %348 = load ptr, ptr %347, align 8, !tbaa !111
  %349 = icmp eq ptr %348, null
  %350 = getelementptr inbounds nuw i8, ptr %265, i64 24
  %351 = load ptr, ptr %350, align 8, !tbaa !112
  %352 = icmp eq ptr %351, null
  %353 = load i32, ptr %265, align 8, !tbaa !113
  %354 = icmp ne i32 %353, 0
  %355 = getelementptr inbounds nuw i8, ptr %265, i64 68
  %356 = load i32, ptr %355, align 4, !tbaa !114
  %357 = icmp eq i32 %356, 0
  %358 = select i1 %357, i8 0, i8 2
  %359 = zext i1 %354 to i8
  %360 = select i1 %352, i8 0, i8 4
  %361 = select i1 %349, i8 0, i8 8
  %362 = select i1 %346, i8 0, i8 16
  %363 = or disjoint i8 %361, %362
  %364 = or disjoint i8 %363, %360
  %365 = or disjoint i8 %364, %359
  %366 = or disjoint i8 %365, %358
  store i64 %342, ptr %52, align 8, !tbaa !57
  %367 = getelementptr inbounds nuw i8, ptr %343, i64 %267
  store i8 %366, ptr %367, align 1, !tbaa !8
  %368 = load i64, ptr %52, align 8, !tbaa !57
  %369 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %368, i64 1), !nosanitize !45
  %370 = extractvalue { i64, i1 } %369, 1, !nosanitize !45
  br i1 %370, label %371, label %372, !prof !46, !nosanitize !45

371:                                              ; preds = %341
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

372:                                              ; preds = %341
  %373 = extractvalue { i64, i1 } %369, 0, !nosanitize !45
  %374 = load ptr, ptr %239, align 8, !tbaa !40
  %375 = load ptr, ptr %264, align 8, !tbaa !100
  %376 = getelementptr inbounds nuw i8, ptr %375, i64 8
  %377 = load i64, ptr %376, align 8, !tbaa !115
  %378 = trunc i64 %377 to i8
  store i64 %373, ptr %52, align 8, !tbaa !57
  %379 = getelementptr inbounds nuw i8, ptr %374, i64 %368
  store i8 %378, ptr %379, align 1, !tbaa !8
  %380 = load i64, ptr %52, align 8, !tbaa !57
  %381 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %380, i64 1), !nosanitize !45
  %382 = extractvalue { i64, i1 } %381, 1, !nosanitize !45
  br i1 %382, label %383, label %384, !prof !46, !nosanitize !45

383:                                              ; preds = %372
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

384:                                              ; preds = %372
  %385 = extractvalue { i64, i1 } %381, 0, !nosanitize !45
  %386 = load ptr, ptr %239, align 8, !tbaa !40
  %387 = load ptr, ptr %264, align 8, !tbaa !100
  %388 = getelementptr inbounds nuw i8, ptr %387, i64 8
  %389 = load i64, ptr %388, align 8, !tbaa !115
  %390 = lshr i64 %389, 8
  %391 = trunc i64 %390 to i8
  store i64 %385, ptr %52, align 8, !tbaa !57
  %392 = getelementptr inbounds nuw i8, ptr %386, i64 %380
  store i8 %391, ptr %392, align 1, !tbaa !8
  %393 = load i64, ptr %52, align 8, !tbaa !57
  %394 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %393, i64 1), !nosanitize !45
  %395 = extractvalue { i64, i1 } %394, 1, !nosanitize !45
  br i1 %395, label %396, label %397, !prof !46, !nosanitize !45

396:                                              ; preds = %384
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

397:                                              ; preds = %384
  %398 = extractvalue { i64, i1 } %394, 0, !nosanitize !45
  %399 = load ptr, ptr %239, align 8, !tbaa !40
  %400 = load ptr, ptr %264, align 8, !tbaa !100
  %401 = getelementptr inbounds nuw i8, ptr %400, i64 8
  %402 = load i64, ptr %401, align 8, !tbaa !115
  %403 = lshr i64 %402, 16
  %404 = trunc i64 %403 to i8
  store i64 %398, ptr %52, align 8, !tbaa !57
  %405 = getelementptr inbounds nuw i8, ptr %399, i64 %393
  store i8 %404, ptr %405, align 1, !tbaa !8
  %406 = load i64, ptr %52, align 8, !tbaa !57
  %407 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %406, i64 1), !nosanitize !45
  %408 = extractvalue { i64, i1 } %407, 1, !nosanitize !45
  br i1 %408, label %409, label %410, !prof !46, !nosanitize !45

409:                                              ; preds = %397
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

410:                                              ; preds = %397
  %411 = extractvalue { i64, i1 } %407, 0, !nosanitize !45
  %412 = load ptr, ptr %239, align 8, !tbaa !40
  %413 = load ptr, ptr %264, align 8, !tbaa !100
  %414 = getelementptr inbounds nuw i8, ptr %413, i64 8
  %415 = load i64, ptr %414, align 8, !tbaa !115
  %416 = lshr i64 %415, 24
  %417 = trunc i64 %416 to i8
  store i64 %411, ptr %52, align 8, !tbaa !57
  %418 = getelementptr inbounds nuw i8, ptr %412, i64 %406
  store i8 %417, ptr %418, align 1, !tbaa !8
  %419 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %420 = load i32, ptr %419, align 4, !tbaa !48
  %421 = icmp eq i32 %420, 9
  br i1 %421, label %429, label %422

422:                                              ; preds = %410
  %423 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %424 = load i32, ptr %423, align 8, !tbaa !49
  %425 = icmp sgt i32 %424, 1
  %426 = icmp slt i32 %420, 2
  %427 = or i1 %426, %425
  %428 = select i1 %427, i8 4, i8 0
  br label %429

429:                                              ; preds = %422, %410
  %430 = phi i8 [ %428, %422 ], [ 2, %410 ]
  %431 = load i64, ptr %52, align 8, !tbaa !57
  %432 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %431, i64 1), !nosanitize !45
  %433 = extractvalue { i64, i1 } %432, 1, !nosanitize !45
  br i1 %433, label %434, label %435, !prof !46, !nosanitize !45

434:                                              ; preds = %429
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

435:                                              ; preds = %429
  %436 = extractvalue { i64, i1 } %432, 0, !nosanitize !45
  %437 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %436, ptr %52, align 8, !tbaa !57
  %438 = getelementptr inbounds nuw i8, ptr %437, i64 %431
  store i8 %430, ptr %438, align 1, !tbaa !8
  %439 = load i64, ptr %52, align 8, !tbaa !57
  %440 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %439, i64 1), !nosanitize !45
  %441 = extractvalue { i64, i1 } %440, 1, !nosanitize !45
  br i1 %441, label %442, label %443, !prof !46, !nosanitize !45

442:                                              ; preds = %435
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

443:                                              ; preds = %435
  %444 = extractvalue { i64, i1 } %440, 0, !nosanitize !45
  %445 = load ptr, ptr %239, align 8, !tbaa !40
  %446 = load ptr, ptr %264, align 8, !tbaa !100
  %447 = getelementptr inbounds nuw i8, ptr %446, i64 20
  %448 = load i32, ptr %447, align 4, !tbaa !116
  %449 = trunc i32 %448 to i8
  store i64 %444, ptr %52, align 8, !tbaa !57
  %450 = getelementptr inbounds nuw i8, ptr %445, i64 %439
  store i8 %449, ptr %450, align 1, !tbaa !8
  %451 = load ptr, ptr %264, align 8, !tbaa !100
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 24
  %453 = load ptr, ptr %452, align 8, !tbaa !112
  %454 = icmp eq ptr %453, null
  br i1 %454, label %481, label %455

455:                                              ; preds = %443
  %456 = load i64, ptr %52, align 8, !tbaa !57
  %457 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %456, i64 1), !nosanitize !45
  %458 = extractvalue { i64, i1 } %457, 1, !nosanitize !45
  br i1 %458, label %459, label %460, !prof !46, !nosanitize !45

459:                                              ; preds = %455
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

460:                                              ; preds = %455
  %461 = extractvalue { i64, i1 } %457, 0, !nosanitize !45
  %462 = load ptr, ptr %239, align 8, !tbaa !40
  %463 = getelementptr inbounds nuw i8, ptr %451, i64 32
  %464 = load i32, ptr %463, align 8, !tbaa !117
  %465 = trunc i32 %464 to i8
  store i64 %461, ptr %52, align 8, !tbaa !57
  %466 = getelementptr inbounds nuw i8, ptr %462, i64 %456
  store i8 %465, ptr %466, align 1, !tbaa !8
  %467 = load i64, ptr %52, align 8, !tbaa !57
  %468 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %467, i64 1), !nosanitize !45
  %469 = extractvalue { i64, i1 } %468, 1, !nosanitize !45
  br i1 %469, label %470, label %471, !prof !46, !nosanitize !45

470:                                              ; preds = %460
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

471:                                              ; preds = %460
  %472 = extractvalue { i64, i1 } %468, 0, !nosanitize !45
  %473 = load ptr, ptr %239, align 8, !tbaa !40
  %474 = load ptr, ptr %264, align 8, !tbaa !100
  %475 = getelementptr inbounds nuw i8, ptr %474, i64 32
  %476 = load i32, ptr %475, align 8, !tbaa !117
  %477 = lshr i32 %476, 8
  %478 = trunc i32 %477 to i8
  store i64 %472, ptr %52, align 8, !tbaa !57
  %479 = getelementptr inbounds nuw i8, ptr %473, i64 %467
  store i8 %478, ptr %479, align 1, !tbaa !8
  %480 = load ptr, ptr %264, align 8, !tbaa !100
  br label %481

481:                                              ; preds = %471, %443
  %482 = phi ptr [ %480, %471 ], [ %451, %443 ]
  %483 = getelementptr inbounds nuw i8, ptr %482, i64 68
  %484 = load i32, ptr %483, align 4, !tbaa !114
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %491, label %486

486:                                              ; preds = %481
  %487 = load i64, ptr %238, align 8, !tbaa !59
  %488 = load ptr, ptr %239, align 8, !tbaa !40
  %489 = load i64, ptr %52, align 8, !tbaa !57
  %490 = tail call i64 @crc32_z(i64 noundef %487, ptr noundef %488, i64 noundef %489) #11
  store i64 %490, ptr %238, align 8, !tbaa !59
  br label %491

491:                                              ; preds = %486, %481
  %492 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %492, align 8, !tbaa !118
  store i32 69, ptr %20, align 8, !tbaa !29
  br label %497

493:                                              ; preds = %332
  %494 = load i32, ptr %20, align 8, !tbaa !29
  br label %495

495:                                              ; preds = %493, %233
  %496 = phi i32 [ %494, %493 ], [ %234, %233 ]
  switch i32 %496, label %973 [
    i32 69, label %497
    i32 73, label %705
    i32 91, label %817
    i32 103, label %928
  ]

497:                                              ; preds = %495, %491
  %498 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %499 = load ptr, ptr %498, align 8, !tbaa !100
  %500 = getelementptr inbounds nuw i8, ptr %499, i64 24
  %501 = load ptr, ptr %500, align 8, !tbaa !112
  %502 = icmp eq ptr %501, null
  br i1 %502, label %704, label %503

503:                                              ; preds = %497
  %504 = getelementptr inbounds nuw i8, ptr %499, i64 32
  %505 = load i32, ptr %504, align 8, !tbaa !117
  %506 = and i32 %505, 65535
  %507 = zext nneg i32 %506 to i64
  %508 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %509 = load i64, ptr %508, align 8, !tbaa !118
  %510 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %507, i64 %509), !nosanitize !45
  %511 = extractvalue { i64, i1 } %510, 1, !nosanitize !45
  br i1 %511, label %512, label %513, !prof !46, !nosanitize !45

512:                                              ; preds = %503
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

513:                                              ; preds = %503
  %514 = load i64, ptr %52, align 8, !tbaa !57
  %515 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %516 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %517 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %518 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %519 = extractvalue { i64, i1 } %510, 0
  %520 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %514, i64 %519), !nosanitize !45
  %521 = extractvalue { i64, i1 } %520, 1, !nosanitize !45
  br i1 %521, label %594, label %522, !prof !46, !nosanitize !45

522:                                              ; preds = %513
  %523 = extractvalue { i64, i1 } %520, 0, !nosanitize !45
  %524 = load i64, ptr %515, align 8, !tbaa !41
  %525 = icmp ugt i64 %523, %524
  br i1 %525, label %526, label %677

526:                                              ; preds = %522
  %527 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %524, i64 %514), !nosanitize !45
  %528 = extractvalue { i64, i1 } %527, 0, !nosanitize !45
  %529 = extractvalue { i64, i1 } %527, 1, !nosanitize !45
  br i1 %529, label %600, label %530, !prof !46, !nosanitize !45

530:                                              ; preds = %526
  %531 = load ptr, ptr %516, align 8, !tbaa !40
  %532 = getelementptr inbounds nuw i8, ptr %531, i64 %514
  %533 = getelementptr inbounds nuw i8, ptr %501, i64 %509
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %532, ptr nonnull align 1 %533, i64 %528, i1 false)
  %534 = load i64, ptr %515, align 8, !tbaa !41
  store i64 %534, ptr %52, align 8, !tbaa !57
  %535 = load ptr, ptr %498, align 8, !tbaa !100
  %536 = getelementptr inbounds nuw i8, ptr %535, i64 68
  %537 = load i32, ptr %536, align 4, !tbaa !114
  %538 = icmp ne i32 %537, 0
  %539 = icmp ugt i64 %534, %514
  %540 = select i1 %538, i1 %539, i1 false
  br i1 %540, label %541, label %547

541:                                              ; preds = %530
  %542 = sub nuw i64 %534, %514
  %543 = load ptr, ptr %516, align 8, !tbaa !40
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 %514
  %545 = load i64, ptr %517, align 8, !tbaa !59
  %546 = tail call i64 @crc32_z(i64 noundef %545, ptr noundef %544, i64 noundef %542) #11
  store i64 %546, ptr %517, align 8, !tbaa !59
  br label %547

547:                                              ; preds = %541, %530
  %548 = load i64, ptr %508, align 8, !tbaa !118
  %549 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %548, i64 %528), !nosanitize !45
  %550 = extractvalue { i64, i1 } %549, 1, !nosanitize !45
  br i1 %550, label %623, label %551, !prof !46, !nosanitize !45

551:                                              ; preds = %547
  %552 = extractvalue { i64, i1 } %549, 0, !nosanitize !45
  store i64 %552, ptr %508, align 8, !tbaa !118
  %553 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %553) #11
  %554 = getelementptr inbounds nuw i8, ptr %553, i64 40
  %555 = load i64, ptr %554, align 8, !tbaa !57
  %556 = load i32, ptr %43, align 8, !tbaa !107
  %557 = zext i32 %556 to i64
  %558 = tail call i64 @llvm.umin.i64(i64 %555, i64 %557)
  %559 = trunc nuw i64 %558 to i32
  %560 = icmp eq i64 %558, 0
  br i1 %560, label %588, label %561

561:                                              ; preds = %551
  %562 = load ptr, ptr %25, align 8, !tbaa !106
  %563 = getelementptr inbounds nuw i8, ptr %553, i64 32
  %564 = load ptr, ptr %563, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %562, ptr align 1 %564, i64 %558, i1 false)
  %565 = load ptr, ptr %25, align 8, !tbaa !106
  %566 = getelementptr inbounds nuw i8, ptr %565, i64 %558
  store ptr %566, ptr %25, align 8, !tbaa !106
  %567 = load ptr, ptr %563, align 8, !tbaa !58
  %568 = getelementptr inbounds nuw i8, ptr %567, i64 %558
  store ptr %568, ptr %563, align 8, !tbaa !58
  %569 = load i64, ptr %518, align 8, !tbaa !108
  %570 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %569, i64 %558), !nosanitize !45
  %571 = extractvalue { i64, i1 } %570, 1, !nosanitize !45
  br i1 %571, label %645, label %572, !prof !46, !nosanitize !45

572:                                              ; preds = %561
  %573 = extractvalue { i64, i1 } %570, 0, !nosanitize !45
  store i64 %573, ptr %518, align 8, !tbaa !108
  %574 = load i32, ptr %43, align 8, !tbaa !107
  %575 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %574, i32 %559), !nosanitize !45
  %576 = extractvalue { i32, i1 } %575, 1, !nosanitize !45
  br i1 %576, label %651, label %577, !prof !46, !nosanitize !45

577:                                              ; preds = %572
  %578 = extractvalue { i32, i1 } %575, 0, !nosanitize !45
  store i32 %578, ptr %43, align 8, !tbaa !107
  %579 = load i64, ptr %554, align 8, !tbaa !57
  %580 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %579, i64 %558), !nosanitize !45
  %581 = extractvalue { i64, i1 } %580, 1, !nosanitize !45
  br i1 %581, label %657, label %582, !prof !46, !nosanitize !45

582:                                              ; preds = %577
  %583 = extractvalue { i64, i1 } %580, 0, !nosanitize !45
  store i64 %583, ptr %554, align 8, !tbaa !57
  %584 = icmp eq i64 %583, 0
  br i1 %584, label %585, label %588

585:                                              ; preds = %582
  %586 = getelementptr inbounds nuw i8, ptr %553, i64 16
  %587 = load ptr, ptr %586, align 8, !tbaa !40
  store ptr %587, ptr %563, align 8, !tbaa !58
  br label %588

588:                                              ; preds = %585, %582, %551
  %589 = load i64, ptr %52, align 8, !tbaa !57
  %590 = icmp eq i64 %589, 0
  br i1 %590, label %591, label %667

591:                                              ; preds = %588
  %592 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %519, i64 %528), !nosanitize !45
  %593 = extractvalue { i64, i1 } %592, 1, !nosanitize !45
  br i1 %593, label %671, label %595, !prof !46, !nosanitize !45

594:                                              ; preds = %513
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

595:                                              ; preds = %668, %591
  %596 = phi { i64, i1 } [ %669, %668 ], [ %592, %591 ]
  %597 = extractvalue { i64, i1 } %596, 0
  %598 = load i64, ptr %515, align 8, !tbaa !41
  %599 = icmp ugt i64 %597, %598
  br i1 %599, label %601, label %672

600:                                              ; preds = %526
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

601:                                              ; preds = %595
  %602 = load ptr, ptr %516, align 8, !tbaa !40
  %603 = load ptr, ptr %498, align 8, !tbaa !100
  %604 = getelementptr inbounds nuw i8, ptr %603, i64 24
  %605 = load ptr, ptr %604, align 8, !tbaa !112
  %606 = load i64, ptr %508, align 8, !tbaa !118
  %607 = getelementptr inbounds nuw i8, ptr %605, i64 %606
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %602, ptr align 1 %607, i64 %598, i1 false)
  %608 = load i64, ptr %515, align 8, !tbaa !41
  store i64 %608, ptr %52, align 8, !tbaa !57
  %609 = load ptr, ptr %498, align 8, !tbaa !100
  %610 = getelementptr inbounds nuw i8, ptr %609, i64 68
  %611 = load i32, ptr %610, align 4, !tbaa !114
  %612 = icmp ne i32 %611, 0
  %613 = icmp ne i64 %608, 0
  %614 = select i1 %612, i1 %613, i1 false
  br i1 %614, label %615, label %619

615:                                              ; preds = %601
  %616 = load ptr, ptr %516, align 8, !tbaa !40
  %617 = load i64, ptr %517, align 8, !tbaa !59
  %618 = tail call i64 @crc32_z(i64 noundef %617, ptr noundef %616, i64 noundef %608) #11
  store i64 %618, ptr %517, align 8, !tbaa !59
  br label %619

619:                                              ; preds = %615, %601
  %620 = load i64, ptr %508, align 8, !tbaa !118
  %621 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %620, i64 %598), !nosanitize !45
  %622 = extractvalue { i64, i1 } %621, 1, !nosanitize !45
  br i1 %622, label %623, label %624, !prof !46, !nosanitize !45

623:                                              ; preds = %619, %547
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

624:                                              ; preds = %619
  %625 = extractvalue { i64, i1 } %621, 0, !nosanitize !45
  store i64 %625, ptr %508, align 8, !tbaa !118
  %626 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %626) #11
  %627 = getelementptr inbounds nuw i8, ptr %626, i64 40
  %628 = load i64, ptr %627, align 8, !tbaa !57
  %629 = load i32, ptr %43, align 8, !tbaa !107
  %630 = zext i32 %629 to i64
  %631 = tail call i64 @llvm.umin.i64(i64 %628, i64 %630)
  %632 = trunc nuw i64 %631 to i32
  %633 = icmp eq i64 %631, 0
  br i1 %633, label %664, label %634

634:                                              ; preds = %624
  %635 = load ptr, ptr %25, align 8, !tbaa !106
  %636 = getelementptr inbounds nuw i8, ptr %626, i64 32
  %637 = load ptr, ptr %636, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %635, ptr align 1 %637, i64 %631, i1 false)
  %638 = load ptr, ptr %25, align 8, !tbaa !106
  %639 = getelementptr inbounds nuw i8, ptr %638, i64 %631
  store ptr %639, ptr %25, align 8, !tbaa !106
  %640 = load ptr, ptr %636, align 8, !tbaa !58
  %641 = getelementptr inbounds nuw i8, ptr %640, i64 %631
  store ptr %641, ptr %636, align 8, !tbaa !58
  %642 = load i64, ptr %518, align 8, !tbaa !108
  %643 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %642, i64 %631), !nosanitize !45
  %644 = extractvalue { i64, i1 } %643, 1, !nosanitize !45
  br i1 %644, label %645, label %646, !prof !46, !nosanitize !45

645:                                              ; preds = %634, %561
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

646:                                              ; preds = %634
  %647 = extractvalue { i64, i1 } %643, 0, !nosanitize !45
  store i64 %647, ptr %518, align 8, !tbaa !108
  %648 = load i32, ptr %43, align 8, !tbaa !107
  %649 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %648, i32 %632), !nosanitize !45
  %650 = extractvalue { i32, i1 } %649, 1, !nosanitize !45
  br i1 %650, label %651, label %652, !prof !46, !nosanitize !45

651:                                              ; preds = %646, %572
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

652:                                              ; preds = %646
  %653 = extractvalue { i32, i1 } %649, 0, !nosanitize !45
  store i32 %653, ptr %43, align 8, !tbaa !107
  %654 = load i64, ptr %627, align 8, !tbaa !57
  %655 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %654, i64 %631), !nosanitize !45
  %656 = extractvalue { i64, i1 } %655, 1, !nosanitize !45
  br i1 %656, label %657, label %658, !prof !46, !nosanitize !45

657:                                              ; preds = %652, %577
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

658:                                              ; preds = %652
  %659 = extractvalue { i64, i1 } %655, 0, !nosanitize !45
  store i64 %659, ptr %627, align 8, !tbaa !57
  %660 = icmp eq i64 %659, 0
  br i1 %660, label %661, label %664

661:                                              ; preds = %658
  %662 = getelementptr inbounds nuw i8, ptr %626, i64 16
  %663 = load ptr, ptr %662, align 8, !tbaa !40
  store ptr %663, ptr %636, align 8, !tbaa !58
  br label %664

664:                                              ; preds = %661, %658, %624
  %665 = load i64, ptr %52, align 8, !tbaa !57
  %666 = icmp eq i64 %665, 0
  br i1 %666, label %668, label %667

667:                                              ; preds = %664, %588
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

668:                                              ; preds = %664
  %669 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %597, i64 %598), !nosanitize !45
  %670 = extractvalue { i64, i1 } %669, 1, !nosanitize !45
  br i1 %670, label %671, label %595, !prof !46, !llvm.loop !119, !nosanitize !45

671:                                              ; preds = %668, %591
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

672:                                              ; preds = %595
  %673 = load ptr, ptr %498, align 8, !tbaa !100
  %674 = getelementptr inbounds nuw i8, ptr %673, i64 24
  %675 = load ptr, ptr %674, align 8, !tbaa !112
  %676 = load i64, ptr %508, align 8, !tbaa !118
  br label %677

677:                                              ; preds = %672, %522
  %678 = phi i64 [ %509, %522 ], [ %676, %672 ]
  %679 = phi ptr [ %501, %522 ], [ %675, %672 ]
  %680 = phi i64 [ %514, %522 ], [ 0, %672 ]
  %681 = phi i64 [ %519, %522 ], [ %597, %672 ]
  %682 = load ptr, ptr %516, align 8, !tbaa !40
  %683 = getelementptr inbounds nuw i8, ptr %682, i64 %680
  %684 = getelementptr inbounds nuw i8, ptr %679, i64 %678
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %683, ptr align 1 %684, i64 %681, i1 false)
  %685 = load i64, ptr %52, align 8, !tbaa !57
  %686 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %685, i64 %681), !nosanitize !45
  %687 = extractvalue { i64, i1 } %686, 0, !nosanitize !45
  %688 = extractvalue { i64, i1 } %686, 1, !nosanitize !45
  br i1 %688, label %689, label %690, !prof !46, !nosanitize !45

689:                                              ; preds = %677
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

690:                                              ; preds = %677
  store i64 %687, ptr %52, align 8, !tbaa !57
  %691 = load ptr, ptr %498, align 8, !tbaa !100
  %692 = getelementptr inbounds nuw i8, ptr %691, i64 68
  %693 = load i32, ptr %692, align 4, !tbaa !114
  %694 = icmp ne i32 %693, 0
  %695 = icmp ugt i64 %687, %680
  %696 = select i1 %694, i1 %695, i1 false
  br i1 %696, label %697, label %703

697:                                              ; preds = %690
  %698 = sub nuw i64 %687, %680
  %699 = load ptr, ptr %516, align 8, !tbaa !40
  %700 = getelementptr inbounds nuw i8, ptr %699, i64 %680
  %701 = load i64, ptr %517, align 8, !tbaa !59
  %702 = tail call i64 @crc32_z(i64 noundef %701, ptr noundef %700, i64 noundef %698) #11
  store i64 %702, ptr %517, align 8, !tbaa !59
  br label %703

703:                                              ; preds = %697, %690
  store i64 0, ptr %508, align 8, !tbaa !118
  br label %704

704:                                              ; preds = %703, %497
  store i32 73, ptr %20, align 8, !tbaa !29
  br label %705

705:                                              ; preds = %704, %495
  %706 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %707 = load ptr, ptr %706, align 8, !tbaa !100
  %708 = getelementptr inbounds nuw i8, ptr %707, i64 40
  %709 = load ptr, ptr %708, align 8, !tbaa !111
  %710 = icmp eq ptr %709, null
  br i1 %710, label %816, label %711

711:                                              ; preds = %705
  %712 = load i64, ptr %52, align 8, !tbaa !57
  %713 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %714 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %715 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %716 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %717 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %718

718:                                              ; preds = %794, %711
  %719 = phi i64 [ %712, %711 ], [ %781, %794 ]
  %720 = load i64, ptr %52, align 8, !tbaa !57
  %721 = load i64, ptr %713, align 8, !tbaa !41
  %722 = icmp eq i64 %720, %721
  br i1 %722, label %723, label %779

723:                                              ; preds = %718
  %724 = load ptr, ptr %706, align 8, !tbaa !100
  %725 = getelementptr inbounds nuw i8, ptr %724, i64 68
  %726 = load i32, ptr %725, align 4, !tbaa !114
  %727 = icmp ne i32 %726, 0
  %728 = icmp ugt i64 %720, %719
  %729 = select i1 %727, i1 %728, i1 false
  br i1 %729, label %730, label %736

730:                                              ; preds = %723
  %731 = sub nuw i64 %720, %719
  %732 = load ptr, ptr %714, align 8, !tbaa !40
  %733 = getelementptr inbounds nuw i8, ptr %732, i64 %719
  %734 = load i64, ptr %715, align 8, !tbaa !59
  %735 = tail call i64 @crc32_z(i64 noundef %734, ptr noundef %733, i64 noundef %731) #11
  store i64 %735, ptr %715, align 8, !tbaa !59
  br label %736

736:                                              ; preds = %730, %723
  %737 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %737) #11
  %738 = getelementptr inbounds nuw i8, ptr %737, i64 40
  %739 = load i64, ptr %738, align 8, !tbaa !57
  %740 = load i32, ptr %43, align 8, !tbaa !107
  %741 = zext i32 %740 to i64
  %742 = tail call i64 @llvm.umin.i64(i64 %739, i64 %741)
  %743 = trunc nuw i64 %742 to i32
  %744 = icmp eq i64 %742, 0
  br i1 %744, label %775, label %745

745:                                              ; preds = %736
  %746 = load ptr, ptr %25, align 8, !tbaa !106
  %747 = getelementptr inbounds nuw i8, ptr %737, i64 32
  %748 = load ptr, ptr %747, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %746, ptr align 1 %748, i64 %742, i1 false)
  %749 = load ptr, ptr %25, align 8, !tbaa !106
  %750 = getelementptr inbounds nuw i8, ptr %749, i64 %742
  store ptr %750, ptr %25, align 8, !tbaa !106
  %751 = load ptr, ptr %747, align 8, !tbaa !58
  %752 = getelementptr inbounds nuw i8, ptr %751, i64 %742
  store ptr %752, ptr %747, align 8, !tbaa !58
  %753 = load i64, ptr %716, align 8, !tbaa !108
  %754 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %753, i64 %742), !nosanitize !45
  %755 = extractvalue { i64, i1 } %754, 1, !nosanitize !45
  br i1 %755, label %756, label %757, !prof !46, !nosanitize !45

756:                                              ; preds = %745
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

757:                                              ; preds = %745
  %758 = extractvalue { i64, i1 } %754, 0, !nosanitize !45
  store i64 %758, ptr %716, align 8, !tbaa !108
  %759 = load i32, ptr %43, align 8, !tbaa !107
  %760 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %759, i32 %743), !nosanitize !45
  %761 = extractvalue { i32, i1 } %760, 1, !nosanitize !45
  br i1 %761, label %762, label %763, !prof !46, !nosanitize !45

762:                                              ; preds = %757
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

763:                                              ; preds = %757
  %764 = extractvalue { i32, i1 } %760, 0, !nosanitize !45
  store i32 %764, ptr %43, align 8, !tbaa !107
  %765 = load i64, ptr %738, align 8, !tbaa !57
  %766 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %765, i64 %742), !nosanitize !45
  %767 = extractvalue { i64, i1 } %766, 1, !nosanitize !45
  br i1 %767, label %768, label %769, !prof !46, !nosanitize !45

768:                                              ; preds = %763
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

769:                                              ; preds = %763
  %770 = extractvalue { i64, i1 } %766, 0, !nosanitize !45
  store i64 %770, ptr %738, align 8, !tbaa !57
  %771 = icmp eq i64 %770, 0
  br i1 %771, label %772, label %775

772:                                              ; preds = %769
  %773 = getelementptr inbounds nuw i8, ptr %737, i64 16
  %774 = load ptr, ptr %773, align 8, !tbaa !40
  store ptr %774, ptr %747, align 8, !tbaa !58
  br label %775

775:                                              ; preds = %772, %769, %736
  %776 = load i64, ptr %52, align 8, !tbaa !57
  %777 = icmp eq i64 %776, 0
  br i1 %777, label %779, label %778

778:                                              ; preds = %775
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

779:                                              ; preds = %775, %718
  %780 = phi i64 [ %720, %718 ], [ 0, %775 ]
  %781 = phi i64 [ %719, %718 ], [ 0, %775 ]
  %782 = load i64, ptr %717, align 8, !tbaa !118
  %783 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %782, i64 1), !nosanitize !45
  %784 = extractvalue { i64, i1 } %783, 1, !nosanitize !45
  br i1 %784, label %785, label %786, !prof !46, !nosanitize !45

785:                                              ; preds = %779
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

786:                                              ; preds = %779
  %787 = extractvalue { i64, i1 } %783, 0, !nosanitize !45
  %788 = load ptr, ptr %706, align 8, !tbaa !100
  %789 = getelementptr inbounds nuw i8, ptr %788, i64 40
  %790 = load ptr, ptr %789, align 8, !tbaa !111
  store i64 %787, ptr %717, align 8, !tbaa !118
  %791 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %780, i64 1), !nosanitize !45
  %792 = extractvalue { i64, i1 } %791, 1, !nosanitize !45
  br i1 %792, label %793, label %794, !prof !46, !nosanitize !45

793:                                              ; preds = %786
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

794:                                              ; preds = %786
  %795 = extractvalue { i64, i1 } %791, 0, !nosanitize !45
  %796 = load ptr, ptr %714, align 8, !tbaa !40
  %797 = getelementptr inbounds nuw i8, ptr %790, i64 %782
  %798 = load i8, ptr %797, align 1, !tbaa !8
  store i64 %795, ptr %52, align 8, !tbaa !57
  %799 = getelementptr inbounds nuw i8, ptr %796, i64 %780
  store i8 %798, ptr %799, align 1, !tbaa !8
  %800 = icmp eq i8 %798, 0
  br i1 %800, label %801, label %718, !llvm.loop !122

801:                                              ; preds = %794
  %802 = load ptr, ptr %706, align 8, !tbaa !100
  %803 = getelementptr inbounds nuw i8, ptr %802, i64 68
  %804 = load i32, ptr %803, align 4, !tbaa !114
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %815, label %806

806:                                              ; preds = %801
  %807 = load i64, ptr %52, align 8, !tbaa !57
  %808 = icmp ugt i64 %807, %781
  br i1 %808, label %809, label %815

809:                                              ; preds = %806
  %810 = sub nuw i64 %807, %781
  %811 = load ptr, ptr %714, align 8, !tbaa !40
  %812 = getelementptr inbounds nuw i8, ptr %811, i64 %781
  %813 = load i64, ptr %715, align 8, !tbaa !59
  %814 = tail call i64 @crc32_z(i64 noundef %813, ptr noundef %812, i64 noundef %810) #11
  store i64 %814, ptr %715, align 8, !tbaa !59
  br label %815

815:                                              ; preds = %809, %806, %801
  store i64 0, ptr %717, align 8, !tbaa !118
  br label %816

816:                                              ; preds = %815, %705
  store i32 91, ptr %20, align 8, !tbaa !29
  br label %817

817:                                              ; preds = %816, %495
  %818 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %819 = load ptr, ptr %818, align 8, !tbaa !100
  %820 = getelementptr inbounds nuw i8, ptr %819, i64 56
  %821 = load ptr, ptr %820, align 8, !tbaa !109
  %822 = icmp eq ptr %821, null
  br i1 %822, label %927, label %823

823:                                              ; preds = %817
  %824 = load i64, ptr %52, align 8, !tbaa !57
  %825 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %826 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %827 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %828 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %829 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %830

830:                                              ; preds = %906, %823
  %831 = phi i64 [ %824, %823 ], [ %893, %906 ]
  %832 = load i64, ptr %52, align 8, !tbaa !57
  %833 = load i64, ptr %825, align 8, !tbaa !41
  %834 = icmp eq i64 %832, %833
  br i1 %834, label %835, label %891

835:                                              ; preds = %830
  %836 = load ptr, ptr %818, align 8, !tbaa !100
  %837 = getelementptr inbounds nuw i8, ptr %836, i64 68
  %838 = load i32, ptr %837, align 4, !tbaa !114
  %839 = icmp ne i32 %838, 0
  %840 = icmp ugt i64 %832, %831
  %841 = select i1 %839, i1 %840, i1 false
  br i1 %841, label %842, label %848

842:                                              ; preds = %835
  %843 = sub nuw i64 %832, %831
  %844 = load ptr, ptr %826, align 8, !tbaa !40
  %845 = getelementptr inbounds nuw i8, ptr %844, i64 %831
  %846 = load i64, ptr %827, align 8, !tbaa !59
  %847 = tail call i64 @crc32_z(i64 noundef %846, ptr noundef %845, i64 noundef %843) #11
  store i64 %847, ptr %827, align 8, !tbaa !59
  br label %848

848:                                              ; preds = %842, %835
  %849 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %849) #11
  %850 = getelementptr inbounds nuw i8, ptr %849, i64 40
  %851 = load i64, ptr %850, align 8, !tbaa !57
  %852 = load i32, ptr %43, align 8, !tbaa !107
  %853 = zext i32 %852 to i64
  %854 = tail call i64 @llvm.umin.i64(i64 %851, i64 %853)
  %855 = trunc nuw i64 %854 to i32
  %856 = icmp eq i64 %854, 0
  br i1 %856, label %887, label %857

857:                                              ; preds = %848
  %858 = load ptr, ptr %25, align 8, !tbaa !106
  %859 = getelementptr inbounds nuw i8, ptr %849, i64 32
  %860 = load ptr, ptr %859, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %858, ptr align 1 %860, i64 %854, i1 false)
  %861 = load ptr, ptr %25, align 8, !tbaa !106
  %862 = getelementptr inbounds nuw i8, ptr %861, i64 %854
  store ptr %862, ptr %25, align 8, !tbaa !106
  %863 = load ptr, ptr %859, align 8, !tbaa !58
  %864 = getelementptr inbounds nuw i8, ptr %863, i64 %854
  store ptr %864, ptr %859, align 8, !tbaa !58
  %865 = load i64, ptr %828, align 8, !tbaa !108
  %866 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %865, i64 %854), !nosanitize !45
  %867 = extractvalue { i64, i1 } %866, 1, !nosanitize !45
  br i1 %867, label %868, label %869, !prof !46, !nosanitize !45

868:                                              ; preds = %857
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

869:                                              ; preds = %857
  %870 = extractvalue { i64, i1 } %866, 0, !nosanitize !45
  store i64 %870, ptr %828, align 8, !tbaa !108
  %871 = load i32, ptr %43, align 8, !tbaa !107
  %872 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %871, i32 %855), !nosanitize !45
  %873 = extractvalue { i32, i1 } %872, 1, !nosanitize !45
  br i1 %873, label %874, label %875, !prof !46, !nosanitize !45

874:                                              ; preds = %869
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

875:                                              ; preds = %869
  %876 = extractvalue { i32, i1 } %872, 0, !nosanitize !45
  store i32 %876, ptr %43, align 8, !tbaa !107
  %877 = load i64, ptr %850, align 8, !tbaa !57
  %878 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %877, i64 %854), !nosanitize !45
  %879 = extractvalue { i64, i1 } %878, 1, !nosanitize !45
  br i1 %879, label %880, label %881, !prof !46, !nosanitize !45

880:                                              ; preds = %875
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

881:                                              ; preds = %875
  %882 = extractvalue { i64, i1 } %878, 0, !nosanitize !45
  store i64 %882, ptr %850, align 8, !tbaa !57
  %883 = icmp eq i64 %882, 0
  br i1 %883, label %884, label %887

884:                                              ; preds = %881
  %885 = getelementptr inbounds nuw i8, ptr %849, i64 16
  %886 = load ptr, ptr %885, align 8, !tbaa !40
  store ptr %886, ptr %859, align 8, !tbaa !58
  br label %887

887:                                              ; preds = %884, %881, %848
  %888 = load i64, ptr %52, align 8, !tbaa !57
  %889 = icmp eq i64 %888, 0
  br i1 %889, label %891, label %890

890:                                              ; preds = %887
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

891:                                              ; preds = %887, %830
  %892 = phi i64 [ %832, %830 ], [ 0, %887 ]
  %893 = phi i64 [ %831, %830 ], [ 0, %887 ]
  %894 = load i64, ptr %829, align 8, !tbaa !118
  %895 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %894, i64 1), !nosanitize !45
  %896 = extractvalue { i64, i1 } %895, 1, !nosanitize !45
  br i1 %896, label %897, label %898, !prof !46, !nosanitize !45

897:                                              ; preds = %891
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

898:                                              ; preds = %891
  %899 = extractvalue { i64, i1 } %895, 0, !nosanitize !45
  %900 = load ptr, ptr %818, align 8, !tbaa !100
  %901 = getelementptr inbounds nuw i8, ptr %900, i64 56
  %902 = load ptr, ptr %901, align 8, !tbaa !109
  store i64 %899, ptr %829, align 8, !tbaa !118
  %903 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %892, i64 1), !nosanitize !45
  %904 = extractvalue { i64, i1 } %903, 1, !nosanitize !45
  br i1 %904, label %905, label %906, !prof !46, !nosanitize !45

905:                                              ; preds = %898
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

906:                                              ; preds = %898
  %907 = extractvalue { i64, i1 } %903, 0, !nosanitize !45
  %908 = load ptr, ptr %826, align 8, !tbaa !40
  %909 = getelementptr inbounds nuw i8, ptr %902, i64 %894
  %910 = load i8, ptr %909, align 1, !tbaa !8
  store i64 %907, ptr %52, align 8, !tbaa !57
  %911 = getelementptr inbounds nuw i8, ptr %908, i64 %892
  store i8 %910, ptr %911, align 1, !tbaa !8
  %912 = icmp eq i8 %910, 0
  br i1 %912, label %913, label %830, !llvm.loop !123

913:                                              ; preds = %906
  %914 = load ptr, ptr %818, align 8, !tbaa !100
  %915 = getelementptr inbounds nuw i8, ptr %914, i64 68
  %916 = load i32, ptr %915, align 4, !tbaa !114
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %927, label %918

918:                                              ; preds = %913
  %919 = load i64, ptr %52, align 8, !tbaa !57
  %920 = icmp ugt i64 %919, %893
  br i1 %920, label %921, label %927

921:                                              ; preds = %918
  %922 = sub nuw i64 %919, %893
  %923 = load ptr, ptr %826, align 8, !tbaa !40
  %924 = getelementptr inbounds nuw i8, ptr %923, i64 %893
  %925 = load i64, ptr %827, align 8, !tbaa !59
  %926 = tail call i64 @crc32_z(i64 noundef %925, ptr noundef %924, i64 noundef %922) #11
  store i64 %926, ptr %827, align 8, !tbaa !59
  br label %927

927:                                              ; preds = %921, %918, %913, %817
  store i32 103, ptr %20, align 8, !tbaa !29
  br label %928

928:                                              ; preds = %927, %495
  %929 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %930 = load ptr, ptr %929, align 8, !tbaa !100
  %931 = getelementptr inbounds nuw i8, ptr %930, i64 68
  %932 = load i32, ptr %931, align 4, !tbaa !114
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %969, label %934

934:                                              ; preds = %928
  %935 = load i64, ptr %52, align 8, !tbaa !57
  %936 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %935, i64 2), !nosanitize !45
  %937 = extractvalue { i64, i1 } %936, 1, !nosanitize !45
  br i1 %937, label %938, label %939, !prof !46, !nosanitize !45

938:                                              ; preds = %934
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

939:                                              ; preds = %934
  %940 = extractvalue { i64, i1 } %936, 0, !nosanitize !45
  %941 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %942 = load i64, ptr %941, align 8, !tbaa !41
  %943 = icmp ugt i64 %940, %942
  br i1 %943, label %944, label %948

944:                                              ; preds = %939
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %945 = load i64, ptr %52, align 8, !tbaa !57
  %946 = icmp eq i64 %945, 0
  br i1 %946, label %948, label %947

947:                                              ; preds = %944
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

948:                                              ; preds = %944, %939
  %949 = phi i64 [ 0, %944 ], [ %935, %939 ]
  %950 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %951 = add nuw i64 %949, 1
  %952 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %953 = load ptr, ptr %952, align 8, !tbaa !40
  %954 = load i64, ptr %950, align 8, !tbaa !59
  %955 = trunc i64 %954 to i8
  store i64 %951, ptr %52, align 8, !tbaa !57
  %956 = getelementptr inbounds nuw i8, ptr %953, i64 %949
  store i8 %955, ptr %956, align 1, !tbaa !8
  %957 = load i64, ptr %52, align 8, !tbaa !57
  %958 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %957, i64 1), !nosanitize !45
  %959 = extractvalue { i64, i1 } %958, 1, !nosanitize !45
  br i1 %959, label %960, label %961, !prof !46, !nosanitize !45

960:                                              ; preds = %948
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

961:                                              ; preds = %948
  %962 = extractvalue { i64, i1 } %958, 0, !nosanitize !45
  %963 = load ptr, ptr %952, align 8, !tbaa !40
  %964 = load i64, ptr %950, align 8, !tbaa !59
  %965 = lshr i64 %964, 8
  %966 = trunc i64 %965 to i8
  store i64 %962, ptr %52, align 8, !tbaa !57
  %967 = getelementptr inbounds nuw i8, ptr %963, i64 %957
  store i8 %966, ptr %967, align 1, !tbaa !8
  %968 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %968, ptr %950, align 8, !tbaa !59
  br label %969

969:                                              ; preds = %961, %928
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %970 = load i64, ptr %52, align 8, !tbaa !57
  %971 = icmp eq i64 %970, 0
  br i1 %971, label %973, label %972

972:                                              ; preds = %969
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

973:                                              ; preds = %969, %495, %128
  %974 = load i32, ptr %29, align 8, !tbaa !81
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %976, label %985

976:                                              ; preds = %973, %118
  %977 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %978 = load i32, ptr %977, align 4, !tbaa !75
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %980, label %985

980:                                              ; preds = %976
  %981 = icmp eq i32 %1, 0
  br i1 %981, label %1196, label %982

982:                                              ; preds = %980
  %983 = load i32, ptr %20, align 8, !tbaa !29
  %984 = icmp eq i32 %983, 666
  br i1 %984, label %1047, label %985

985:                                              ; preds = %982, %976, %973
  %986 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %987 = load i32, ptr %986, align 4, !tbaa !48
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %989, label %991

989:                                              ; preds = %985
  %990 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %1004

991:                                              ; preds = %985
  %992 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %993 = load i32, ptr %992, align 8, !tbaa !49
  switch i32 %993, label %998 [
    i32 2, label %994
    i32 3, label %996
  ]

994:                                              ; preds = %991
  %995 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %1004

996:                                              ; preds = %991
  %997 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %1004

998:                                              ; preds = %991
  %999 = sext i32 %987 to i64
  %1000 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %999
  %1001 = getelementptr inbounds nuw i8, ptr %1000, i64 8
  %1002 = load ptr, ptr %1001, align 8, !tbaa !105
  %1003 = tail call i32 %1002(ptr noundef nonnull %14, i32 noundef %1) #11
  br label %1004

1004:                                             ; preds = %998, %996, %994, %989
  %1005 = phi i32 [ %990, %989 ], [ %995, %994 ], [ %997, %996 ], [ %1003, %998 ]
  %1006 = and i32 %1005, -2
  %1007 = icmp eq i32 %1006, 2
  br i1 %1007, label %1008, label %1009

1008:                                             ; preds = %1004
  store i32 666, ptr %20, align 8, !tbaa !29
  br label %1009

1009:                                             ; preds = %1008, %1004
  %1010 = and i32 %1005, -3
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1012, label %1016

1012:                                             ; preds = %1009
  %1013 = load i32, ptr %43, align 8, !tbaa !107
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1015, label %1196

1015:                                             ; preds = %1012
  store i32 -1, ptr %50, align 4, !tbaa !60
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
  %1025 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1024, i32 1), !nosanitize !45
  %1026 = extractvalue { i32, i1 } %1025, 1, !nosanitize !45
  br i1 %1026, label %1027, label %1028, !prof !46, !nosanitize !45

1027:                                             ; preds = %1022
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1028:                                             ; preds = %1022
  %1029 = extractvalue { i32, i1 } %1025, 0, !nosanitize !45
  %1030 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %1031 = load ptr, ptr %1030, align 8, !tbaa !37
  %1032 = zext i32 %1029 to i64
  %1033 = getelementptr inbounds nuw [2 x i8], ptr %1031, i64 %1032
  store i16 0, ptr %1033, align 2, !tbaa !62
  %1034 = shl nuw nsw i64 %1032, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1031, i8 0, i64 %1034, i1 false)
  %1035 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %1035, align 8, !tbaa !63
  %1036 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %1037 = load i32, ptr %1036, align 4, !tbaa !75
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1039, label %1043

1039:                                             ; preds = %1028
  %1040 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %1040, align 4, !tbaa !73
  %1041 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %1041, align 8, !tbaa !74
  %1042 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %1042, align 4, !tbaa !76
  br label %1043

1043:                                             ; preds = %1039, %1028, %1020, %1019, %1018
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1044 = load i32, ptr %43, align 8, !tbaa !107
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1046, label %1047

1046:                                             ; preds = %1043
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

1047:                                             ; preds = %1043, %1016, %982
  br i1 %37, label %1196, label %1048

1048:                                             ; preds = %1047
  %1049 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %1050 = load i32, ptr %1049, align 8, !tbaa !30
  %1051 = icmp slt i32 %1050, 1
  br i1 %1051, label %1196, label %1052

1052:                                             ; preds = %1048
  %1053 = icmp eq i32 %1050, 2
  %1054 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1053, label %1055, label %1144

1055:                                             ; preds = %1052
  %1056 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1057 = load i64, ptr %52, align 8, !tbaa !57
  %1058 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1057, i64 1), !nosanitize !45
  %1059 = extractvalue { i64, i1 } %1058, 1, !nosanitize !45
  br i1 %1059, label %1060, label %1061, !prof !46, !nosanitize !45

1060:                                             ; preds = %1055
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1061:                                             ; preds = %1055
  %1062 = extractvalue { i64, i1 } %1058, 0, !nosanitize !45
  %1063 = load ptr, ptr %1056, align 8, !tbaa !40
  %1064 = load i64, ptr %1054, align 8, !tbaa !59
  %1065 = trunc i64 %1064 to i8
  store i64 %1062, ptr %52, align 8, !tbaa !57
  %1066 = getelementptr inbounds nuw i8, ptr %1063, i64 %1057
  store i8 %1065, ptr %1066, align 1, !tbaa !8
  %1067 = load i64, ptr %52, align 8, !tbaa !57
  %1068 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1067, i64 1), !nosanitize !45
  %1069 = extractvalue { i64, i1 } %1068, 1, !nosanitize !45
  br i1 %1069, label %1070, label %1071, !prof !46, !nosanitize !45

1070:                                             ; preds = %1061
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1071:                                             ; preds = %1061
  %1072 = extractvalue { i64, i1 } %1068, 0, !nosanitize !45
  %1073 = load ptr, ptr %1056, align 8, !tbaa !40
  %1074 = load i64, ptr %1054, align 8, !tbaa !59
  %1075 = lshr i64 %1074, 8
  %1076 = trunc i64 %1075 to i8
  store i64 %1072, ptr %52, align 8, !tbaa !57
  %1077 = getelementptr inbounds nuw i8, ptr %1073, i64 %1067
  store i8 %1076, ptr %1077, align 1, !tbaa !8
  %1078 = load i64, ptr %52, align 8, !tbaa !57
  %1079 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1078, i64 1), !nosanitize !45
  %1080 = extractvalue { i64, i1 } %1079, 1, !nosanitize !45
  br i1 %1080, label %1081, label %1082, !prof !46, !nosanitize !45

1081:                                             ; preds = %1071
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1082:                                             ; preds = %1071
  %1083 = extractvalue { i64, i1 } %1079, 0, !nosanitize !45
  %1084 = load ptr, ptr %1056, align 8, !tbaa !40
  %1085 = load i64, ptr %1054, align 8, !tbaa !59
  %1086 = lshr i64 %1085, 16
  %1087 = trunc i64 %1086 to i8
  store i64 %1083, ptr %52, align 8, !tbaa !57
  %1088 = getelementptr inbounds nuw i8, ptr %1084, i64 %1078
  store i8 %1087, ptr %1088, align 1, !tbaa !8
  %1089 = load i64, ptr %52, align 8, !tbaa !57
  %1090 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1089, i64 1), !nosanitize !45
  %1091 = extractvalue { i64, i1 } %1090, 1, !nosanitize !45
  br i1 %1091, label %1092, label %1093, !prof !46, !nosanitize !45

1092:                                             ; preds = %1082
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1093:                                             ; preds = %1082
  %1094 = extractvalue { i64, i1 } %1090, 0, !nosanitize !45
  %1095 = load ptr, ptr %1056, align 8, !tbaa !40
  %1096 = load i64, ptr %1054, align 8, !tbaa !59
  %1097 = lshr i64 %1096, 24
  %1098 = trunc i64 %1097 to i8
  store i64 %1094, ptr %52, align 8, !tbaa !57
  %1099 = getelementptr inbounds nuw i8, ptr %1095, i64 %1089
  store i8 %1098, ptr %1099, align 1, !tbaa !8
  %1100 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1101 = load i64, ptr %52, align 8, !tbaa !57
  %1102 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1101, i64 1), !nosanitize !45
  %1103 = extractvalue { i64, i1 } %1102, 1, !nosanitize !45
  br i1 %1103, label %1104, label %1105, !prof !46, !nosanitize !45

1104:                                             ; preds = %1093
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1105:                                             ; preds = %1093
  %1106 = extractvalue { i64, i1 } %1102, 0, !nosanitize !45
  %1107 = load ptr, ptr %1056, align 8, !tbaa !40
  %1108 = load i64, ptr %1100, align 8, !tbaa !55
  %1109 = trunc i64 %1108 to i8
  store i64 %1106, ptr %52, align 8, !tbaa !57
  %1110 = getelementptr inbounds nuw i8, ptr %1107, i64 %1101
  store i8 %1109, ptr %1110, align 1, !tbaa !8
  %1111 = load i64, ptr %52, align 8, !tbaa !57
  %1112 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1111, i64 1), !nosanitize !45
  %1113 = extractvalue { i64, i1 } %1112, 1, !nosanitize !45
  br i1 %1113, label %1114, label %1115, !prof !46, !nosanitize !45

1114:                                             ; preds = %1105
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1115:                                             ; preds = %1105
  %1116 = extractvalue { i64, i1 } %1112, 0, !nosanitize !45
  %1117 = load ptr, ptr %1056, align 8, !tbaa !40
  %1118 = load i64, ptr %1100, align 8, !tbaa !55
  %1119 = lshr i64 %1118, 8
  %1120 = trunc i64 %1119 to i8
  store i64 %1116, ptr %52, align 8, !tbaa !57
  %1121 = getelementptr inbounds nuw i8, ptr %1117, i64 %1111
  store i8 %1120, ptr %1121, align 1, !tbaa !8
  %1122 = load i64, ptr %52, align 8, !tbaa !57
  %1123 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1122, i64 1), !nosanitize !45
  %1124 = extractvalue { i64, i1 } %1123, 1, !nosanitize !45
  br i1 %1124, label %1125, label %1126, !prof !46, !nosanitize !45

1125:                                             ; preds = %1115
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1126:                                             ; preds = %1115
  %1127 = extractvalue { i64, i1 } %1123, 0, !nosanitize !45
  %1128 = load ptr, ptr %1056, align 8, !tbaa !40
  %1129 = load i64, ptr %1100, align 8, !tbaa !55
  %1130 = lshr i64 %1129, 16
  %1131 = trunc i64 %1130 to i8
  store i64 %1127, ptr %52, align 8, !tbaa !57
  %1132 = getelementptr inbounds nuw i8, ptr %1128, i64 %1122
  store i8 %1131, ptr %1132, align 1, !tbaa !8
  %1133 = load i64, ptr %52, align 8, !tbaa !57
  %1134 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1133, i64 1), !nosanitize !45
  %1135 = extractvalue { i64, i1 } %1134, 1, !nosanitize !45
  br i1 %1135, label %1136, label %1137, !prof !46, !nosanitize !45

1136:                                             ; preds = %1126
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1137:                                             ; preds = %1126
  %1138 = extractvalue { i64, i1 } %1134, 0, !nosanitize !45
  %1139 = load ptr, ptr %1056, align 8, !tbaa !40
  %1140 = load i64, ptr %1100, align 8, !tbaa !55
  %1141 = lshr i64 %1140, 24
  %1142 = trunc i64 %1141 to i8
  store i64 %1138, ptr %52, align 8, !tbaa !57
  %1143 = getelementptr inbounds nuw i8, ptr %1139, i64 %1133
  store i8 %1142, ptr %1143, align 1, !tbaa !8
  br label %1187

1144:                                             ; preds = %1052
  %1145 = load i64, ptr %1054, align 8, !tbaa !59
  %1146 = lshr i64 %1145, 16
  %1147 = load i64, ptr %52, align 8, !tbaa !57
  %1148 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1147, i64 1), !nosanitize !45
  %1149 = extractvalue { i64, i1 } %1148, 1, !nosanitize !45
  br i1 %1149, label %1150, label %1151, !prof !46, !nosanitize !45

1150:                                             ; preds = %1144
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1151:                                             ; preds = %1144
  %1152 = extractvalue { i64, i1 } %1148, 0, !nosanitize !45
  %1153 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1154 = load ptr, ptr %1153, align 8, !tbaa !40
  %1155 = lshr i64 %1145, 24
  %1156 = trunc i64 %1155 to i8
  store i64 %1152, ptr %52, align 8, !tbaa !57
  %1157 = getelementptr inbounds nuw i8, ptr %1154, i64 %1147
  store i8 %1156, ptr %1157, align 1, !tbaa !8
  %1158 = load i64, ptr %52, align 8, !tbaa !57
  %1159 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1158, i64 1), !nosanitize !45
  %1160 = extractvalue { i64, i1 } %1159, 1, !nosanitize !45
  br i1 %1160, label %1161, label %1162, !prof !46, !nosanitize !45

1161:                                             ; preds = %1151
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1162:                                             ; preds = %1151
  %1163 = extractvalue { i64, i1 } %1159, 0, !nosanitize !45
  %1164 = load ptr, ptr %1153, align 8, !tbaa !40
  %1165 = trunc i64 %1146 to i8
  store i64 %1163, ptr %52, align 8, !tbaa !57
  %1166 = getelementptr inbounds nuw i8, ptr %1164, i64 %1158
  store i8 %1165, ptr %1166, align 1, !tbaa !8
  %1167 = load i64, ptr %1054, align 8, !tbaa !59
  %1168 = trunc i64 %1167 to i8
  %1169 = load i64, ptr %52, align 8, !tbaa !57
  %1170 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1169, i64 1), !nosanitize !45
  %1171 = extractvalue { i64, i1 } %1170, 1, !nosanitize !45
  br i1 %1171, label %1172, label %1173, !prof !46, !nosanitize !45

1172:                                             ; preds = %1162
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1173:                                             ; preds = %1162
  %1174 = extractvalue { i64, i1 } %1170, 0, !nosanitize !45
  %1175 = load ptr, ptr %1153, align 8, !tbaa !40
  %1176 = lshr i64 %1167, 8
  %1177 = trunc i64 %1176 to i8
  store i64 %1174, ptr %52, align 8, !tbaa !57
  %1178 = getelementptr inbounds nuw i8, ptr %1175, i64 %1169
  store i8 %1177, ptr %1178, align 1, !tbaa !8
  %1179 = load i64, ptr %52, align 8, !tbaa !57
  %1180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1179, i64 1), !nosanitize !45
  %1181 = extractvalue { i64, i1 } %1180, 1, !nosanitize !45
  br i1 %1181, label %1182, label %1183, !prof !46, !nosanitize !45

1182:                                             ; preds = %1173
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1183:                                             ; preds = %1173
  %1184 = extractvalue { i64, i1 } %1180, 0, !nosanitize !45
  %1185 = load ptr, ptr %1153, align 8, !tbaa !40
  store i64 %1184, ptr %52, align 8, !tbaa !57
  %1186 = getelementptr inbounds nuw i8, ptr %1185, i64 %1179
  store i8 %1168, ptr %1186, align 1, !tbaa !8
  br label %1187

1187:                                             ; preds = %1183, %1137
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1188 = load i32, ptr %1049, align 8, !tbaa !30
  %1189 = icmp sgt i32 %1188, 0
  br i1 %1189, label %1190, label %1192

1190:                                             ; preds = %1187
  %1191 = sub nsw i32 0, %1188
  store i32 %1191, ptr %1049, align 8, !tbaa !30
  br label %1192

1192:                                             ; preds = %1190, %1187
  %1193 = load i64, ptr %52, align 8, !tbaa !57
  %1194 = icmp eq i64 %1193, 0
  %1195 = zext i1 %1194 to i32
  br label %1196

1196:                                             ; preds = %1192, %1048, %1047, %1046, %1015, %1012, %980, %972, %947, %890, %778, %667, %338, %232, %121, %112, %99, %46, %39, %22, %19, %16, %12, %8, %4, %2
  %1197 = phi i32 [ -5, %112 ], [ -2, %39 ], [ -5, %46 ], [ 0, %99 ], [ -5, %121 ], [ 0, %338 ], [ 0, %947 ], [ 0, %972 ], [ -2, %22 ], [ 0, %1047 ], [ %1195, %1192 ], [ 1, %1048 ], [ 0, %890 ], [ 0, %778 ], [ 0, %667 ], [ 0, %232 ], [ 0, %1015 ], [ 0, %1046 ], [ 0, %1012 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ 0, %980 ]
  ret i32 %1197
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @slide_hash(ptr noundef captures(none) %0) unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !32
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %8
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %37, label %11, !prof !46, !nosanitize !45

11:                                               ; preds = %1
  %12 = icmp ult i32 %5, 8
  br i1 %12, label %34, label %13

13:                                               ; preds = %11
  %14 = and i64 %8, 4294967288
  %15 = mul nsw i64 %14, -2
  %16 = getelementptr i8, ptr %9, i64 %15
  %17 = trunc nuw i64 %14 to i32
  %18 = sub i32 %5, %17
  %19 = insertelement <8 x i32> poison, i32 %3, i64 0
  %20 = shufflevector <8 x i32> %19, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %21

21:                                               ; preds = %21, %13
  %22 = phi i64 [ 0, %13 ], [ %30, %21 ]
  %23 = mul i64 %22, -2
  %24 = getelementptr i8, ptr %9, i64 %23
  %25 = getelementptr inbounds i8, ptr %24, i64 -16
  %26 = load <8 x i16>, ptr %25, align 2, !tbaa !62
  %27 = zext <8 x i16> %26 to <8 x i32>
  %28 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %27, <8 x i32> %20)
  %29 = trunc nuw <8 x i32> %28 to <8 x i16>
  store <8 x i16> %29, ptr %25, align 2, !tbaa !62
  %30 = add nuw i64 %22, 8
  %31 = icmp eq i64 %30, %14
  br i1 %31, label %32, label %21, !llvm.loop !126

32:                                               ; preds = %21
  %33 = icmp eq i64 %14, %8
  br i1 %33, label %53, label %34

34:                                               ; preds = %32, %11
  %35 = phi ptr [ %9, %11 ], [ %16, %32 ]
  %36 = phi i32 [ %5, %11 ], [ %18, %32 ]
  br label %43

37:                                               ; preds = %1
  %38 = getelementptr inbounds i8, ptr %9, i64 -2
  %39 = load i16, ptr %38, align 2, !tbaa !62
  %40 = zext i16 %39 to i32
  %41 = tail call i32 @llvm.usub.sat.i32(i32 %40, i32 %3)
  %42 = trunc nuw i32 %41 to i16
  store i16 %42, ptr %38, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

43:                                               ; preds = %43, %34
  %44 = phi ptr [ %46, %43 ], [ %35, %34 ]
  %45 = phi i32 [ %51, %43 ], [ %36, %34 ]
  %46 = getelementptr inbounds i8, ptr %44, i64 -2
  %47 = load i16, ptr %46, align 2, !tbaa !62
  %48 = zext i16 %47 to i32
  %49 = tail call i32 @llvm.usub.sat.i32(i32 %48, i32 %3)
  %50 = trunc nuw i32 %49 to i16
  store i16 %50, ptr %46, align 2, !tbaa !62
  %51 = add i32 %45, -1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %43, !llvm.loop !127

53:                                               ; preds = %43, %32
  %54 = icmp eq i32 %3, 0
  br i1 %54, label %55, label %56, !prof !46, !nosanitize !45

55:                                               ; preds = %53
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

56:                                               ; preds = %53
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = zext i32 %3 to i64
  %60 = getelementptr inbounds nuw [2 x i8], ptr %58, i64 %59
  %61 = icmp ult i32 %3, 8
  br i1 %61, label %83, label %62

62:                                               ; preds = %56
  %63 = and i64 %59, 4294967288
  %64 = mul nsw i64 %63, -2
  %65 = getelementptr i8, ptr %60, i64 %64
  %66 = trunc nuw i64 %63 to i32
  %67 = sub i32 %3, %66
  %68 = insertelement <8 x i32> poison, i32 %3, i64 0
  %69 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %70

70:                                               ; preds = %70, %62
  %71 = phi i64 [ 0, %62 ], [ %79, %70 ]
  %72 = mul i64 %71, -2
  %73 = getelementptr i8, ptr %60, i64 %72
  %74 = getelementptr inbounds i8, ptr %73, i64 -16
  %75 = load <8 x i16>, ptr %74, align 2, !tbaa !62
  %76 = zext <8 x i16> %75 to <8 x i32>
  %77 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %76, <8 x i32> %69)
  %78 = trunc nuw <8 x i32> %77 to <8 x i16>
  store <8 x i16> %78, ptr %74, align 2, !tbaa !62
  %79 = add nuw i64 %71, 8
  %80 = icmp eq i64 %79, %63
  br i1 %80, label %81, label %70, !llvm.loop !128

81:                                               ; preds = %70
  %82 = icmp eq i64 %63, %59
  br i1 %82, label %96, label %83

83:                                               ; preds = %81, %56
  %84 = phi ptr [ %60, %56 ], [ %65, %81 ]
  %85 = phi i32 [ %3, %56 ], [ %67, %81 ]
  br label %86

86:                                               ; preds = %86, %83
  %87 = phi ptr [ %89, %86 ], [ %84, %83 ]
  %88 = phi i32 [ %94, %86 ], [ %85, %83 ]
  %89 = getelementptr inbounds i8, ptr %87, i64 -2
  %90 = load i16, ptr %89, align 2, !tbaa !62
  %91 = zext i16 %90 to i32
  %92 = tail call i32 @llvm.usub.sat.i32(i32 %91, i32 %3)
  %93 = trunc nuw i32 %92 to i16
  store i16 %93, ptr %89, align 2, !tbaa !62
  %94 = add i32 %88, -1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %86, !llvm.loop !129

96:                                               ; preds = %86, %81
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i32 1, ptr %97, align 8, !tbaa !63
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
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !45
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !45
  br i1 %5, label %6, label %7, !prof !46, !nosanitize !45

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !45
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !45
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !45
  br i1 %11, label %12, label %13, !prof !46, !nosanitize !45

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !45
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !45
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !45
  br i1 %17, label %18, label %19, !prof !46, !nosanitize !45

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !45
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !45
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !45
  br i1 %22, label %23, label %24, !prof !46, !nosanitize !45

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !45
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !45
  %30 = extractvalue { i64, i1 } %29, 0, !nosanitize !45
  %31 = lshr i64 %1, 7
  %32 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %30, i64 %31), !nosanitize !45
  %33 = extractvalue { i64, i1 } %32, 0, !nosanitize !45
  %34 = lshr i64 %1, 11
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %36, i64 7), !nosanitize !45
  %38 = extractvalue { i64, i1 } %37, 0, !nosanitize !45
  %39 = icmp ult i64 %38, %1
  %40 = select i1 %39, i64 -1, i64 %38
  %41 = icmp eq ptr %0, null
  br i1 %41, label %60, label %42

42:                                               ; preds = %24
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !15
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %48 = load ptr, ptr %47, align 8, !tbaa !17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %52 = load ptr, ptr %51, align 8, !tbaa !19
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %52, align 8, !tbaa !20
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %59 = load i32, ptr %58, align 8, !tbaa !29
  switch i32 %59, label %60 [
    i32 42, label %66
    i32 57, label %66
    i32 69, label %66
    i32 73, label %66
    i32 91, label %66
    i32 103, label %66
    i32 113, label %66
    i32 666, label %66
  ]

60:                                               ; preds = %57, %54, %50, %46, %42, %24
  %61 = tail call i64 @llvm.umax.i64(i64 %27, i64 %40)
  %62 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %61, i64 18), !nosanitize !45
  %63 = extractvalue { i64, i1 } %62, 0, !nosanitize !45
  %64 = extractvalue { i64, i1 } %62, 1, !nosanitize !45
  br i1 %64, label %65, label %185, !prof !46, !nosanitize !45

65:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

66:                                               ; preds = %57, %57, %57, %57, %57, %57, %57, %57
  %67 = getelementptr inbounds nuw i8, ptr %52, i64 48
  %68 = load i32, ptr %67, align 8, !tbaa !30
  %69 = tail call i32 @llvm.abs.i32(i32 %68, i1 true)
  switch i32 %69, label %142 [
    i32 0, label %143
    i32 1, label %70
    i32 2, label %75
  ]

70:                                               ; preds = %66
  %71 = getelementptr inbounds nuw i8, ptr %52, i64 172
  %72 = load i32, ptr %71, align 4, !tbaa !73
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i64 6, i64 10
  br label %143

75:                                               ; preds = %66
  %76 = getelementptr inbounds nuw i8, ptr %52, i64 56
  %77 = load ptr, ptr %76, align 8, !tbaa !100
  %78 = icmp eq ptr %77, null
  br i1 %78, label %143, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 24
  %81 = load ptr, ptr %80, align 8, !tbaa !112
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds nuw i8, ptr %77, i64 32
  %85 = load i32, ptr %84, align 8, !tbaa !117
  %86 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %85, i32 2), !nosanitize !45
  %87 = extractvalue { i32, i1 } %86, 1, !nosanitize !45
  br i1 %87, label %88, label %89, !prof !46, !nosanitize !45

88:                                               ; preds = %83
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

89:                                               ; preds = %83
  %90 = extractvalue { i32, i1 } %86, 0, !nosanitize !45
  %91 = zext i32 %90 to i64
  %92 = add nuw nsw i64 %91, 18
  br label %93

93:                                               ; preds = %89, %79
  %94 = phi i64 [ %92, %89 ], [ 18, %79 ]
  %95 = getelementptr inbounds nuw i8, ptr %77, i64 40
  %96 = load ptr, ptr %95, align 8, !tbaa !111
  %97 = icmp eq ptr %96, null
  br i1 %97, label %112, label %98

98:                                               ; preds = %93
  %99 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 1), !nosanitize !45
  %100 = extractvalue { i64, i1 } %99, 1, !nosanitize !45
  br i1 %100, label %105, label %106, !prof !130, !nosanitize !45

101:                                              ; preds = %106
  %102 = getelementptr inbounds nuw i8, ptr %108, i64 1
  %103 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %109, i64 1), !nosanitize !45
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !45
  br i1 %104, label %105, label %106, !prof !131, !llvm.loop !132, !nosanitize !45

105:                                              ; preds = %101, %98
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

106:                                              ; preds = %101, %98
  %107 = phi { i64, i1 } [ %103, %101 ], [ %99, %98 ]
  %108 = phi ptr [ %102, %101 ], [ %96, %98 ]
  %109 = extractvalue { i64, i1 } %107, 0, !nosanitize !45
  %110 = load i8, ptr %108, align 1, !tbaa !8
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %101, !llvm.loop !132

112:                                              ; preds = %106, %93
  %113 = phi i64 [ %94, %93 ], [ %109, %106 ]
  %114 = getelementptr inbounds nuw i8, ptr %77, i64 56
  %115 = load ptr, ptr %114, align 8, !tbaa !109
  %116 = icmp eq ptr %115, null
  br i1 %116, label %131, label %117

117:                                              ; preds = %112
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %113, i64 1), !nosanitize !45
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !45
  br i1 %119, label %124, label %125, !prof !130, !nosanitize !45

120:                                              ; preds = %125
  %121 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %122 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %128, i64 1), !nosanitize !45
  %123 = extractvalue { i64, i1 } %122, 1, !nosanitize !45
  br i1 %123, label %124, label %125, !prof !131, !llvm.loop !133, !nosanitize !45

124:                                              ; preds = %120, %117
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

125:                                              ; preds = %120, %117
  %126 = phi { i64, i1 } [ %122, %120 ], [ %118, %117 ]
  %127 = phi ptr [ %121, %120 ], [ %115, %117 ]
  %128 = extractvalue { i64, i1 } %126, 0, !nosanitize !45
  %129 = load i8, ptr %127, align 1, !tbaa !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %120, !llvm.loop !133

131:                                              ; preds = %125, %112
  %132 = phi i64 [ %113, %112 ], [ %128, %125 ]
  %133 = getelementptr inbounds nuw i8, ptr %77, i64 68
  %134 = load i32, ptr %133, align 4, !tbaa !114
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %131
  %137 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %132, i64 2), !nosanitize !45
  %138 = extractvalue { i64, i1 } %137, 1, !nosanitize !45
  br i1 %138, label %139, label %140, !prof !46, !nosanitize !45

139:                                              ; preds = %136
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

140:                                              ; preds = %136
  %141 = extractvalue { i64, i1 } %137, 0, !nosanitize !45
  br label %143

142:                                              ; preds = %66
  br label %143

143:                                              ; preds = %142, %140, %131, %75, %70, %66
  %144 = phi i64 [ 18, %142 ], [ 18, %75 ], [ %74, %70 ], [ 0, %66 ], [ %141, %140 ], [ %132, %131 ]
  %145 = getelementptr inbounds nuw i8, ptr %52, i64 84
  %146 = load i32, ptr %145, align 4, !tbaa !31
  %147 = icmp eq i32 %146, 15
  %148 = getelementptr inbounds nuw i8, ptr %52, i64 136
  %149 = load i32, ptr %148, align 8, !tbaa !51
  %150 = icmp eq i32 %149, 15
  %151 = select i1 %147, i1 %150, i1 false
  br i1 %151, label %165, label %152

152:                                              ; preds = %143
  %153 = icmp ugt i32 %146, %149
  br i1 %153, label %158, label %154

154:                                              ; preds = %152
  %155 = getelementptr inbounds nuw i8, ptr %52, i64 196
  %156 = load i32, ptr %155, align 4, !tbaa !48
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154, %152
  br label %159

159:                                              ; preds = %158, %154
  %160 = phi i64 [ %40, %158 ], [ %27, %154 ]
  %161 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %160, i64 %144), !nosanitize !45
  %162 = extractvalue { i64, i1 } %161, 0, !nosanitize !45
  %163 = extractvalue { i64, i1 } %161, 1, !nosanitize !45
  br i1 %163, label %164, label %185, !prof !46, !nosanitize !45

164:                                              ; preds = %159
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

165:                                              ; preds = %143
  %166 = lshr i64 %1, 12
  %167 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %166), !nosanitize !45
  %168 = extractvalue { i64, i1 } %167, 0, !nosanitize !45
  %169 = lshr i64 %1, 14
  %170 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %168, i64 %169), !nosanitize !45
  %171 = extractvalue { i64, i1 } %170, 0, !nosanitize !45
  %172 = lshr i64 %1, 25
  %173 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %171, i64 %172), !nosanitize !45
  %174 = extractvalue { i64, i1 } %173, 0, !nosanitize !45
  %175 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %174, i64 13), !nosanitize !45
  %176 = extractvalue { i64, i1 } %175, 0, !nosanitize !45
  %177 = add i64 %176, -6
  %178 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %177, i64 %144), !nosanitize !45
  %179 = extractvalue { i64, i1 } %178, 1, !nosanitize !45
  br i1 %179, label %180, label %181, !prof !46, !nosanitize !45

180:                                              ; preds = %165
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

181:                                              ; preds = %165
  %182 = extractvalue { i64, i1 } %178, 0, !nosanitize !45
  %183 = icmp ult i64 %182, %1
  %184 = select i1 %183, i64 -1, i64 %182
  br label %185

185:                                              ; preds = %181, %159, %60
  %186 = phi i64 [ %184, %181 ], [ %63, %60 ], [ %162, %159 ]
  ret i64 %186
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !45
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !45
  br i1 %5, label %6, label %7, !prof !46, !nosanitize !45

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !45
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !45
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !45
  br i1 %11, label %12, label %13, !prof !46, !nosanitize !45

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !45
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !45
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !45
  br i1 %17, label %18, label %19, !prof !46, !nosanitize !45

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !45
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !45
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !45
  br i1 %22, label %23, label %24, !prof !46, !nosanitize !45

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !45
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !45
  %30 = extractvalue { i64, i1 } %29, 0, !nosanitize !45
  %31 = lshr i64 %1, 7
  %32 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %30, i64 %31), !nosanitize !45
  %33 = extractvalue { i64, i1 } %32, 0, !nosanitize !45
  %34 = lshr i64 %1, 11
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %36, i64 7), !nosanitize !45
  %38 = extractvalue { i64, i1 } %37, 0, !nosanitize !45
  %39 = icmp ult i64 %38, %1
  %40 = select i1 %39, i64 -1, i64 %38
  %41 = icmp eq ptr %0, null
  br i1 %41, label %60, label %42

42:                                               ; preds = %24
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !15
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %48 = load ptr, ptr %47, align 8, !tbaa !17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %52 = load ptr, ptr %51, align 8, !tbaa !19
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %52, align 8, !tbaa !20
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %59 = load i32, ptr %58, align 8, !tbaa !29
  switch i32 %59, label %60 [
    i32 42, label %66
    i32 57, label %66
    i32 69, label %66
    i32 73, label %66
    i32 91, label %66
    i32 103, label %66
    i32 113, label %66
    i32 666, label %66
  ]

60:                                               ; preds = %57, %54, %50, %46, %42, %24
  %61 = tail call i64 @llvm.umax.i64(i64 %27, i64 %40)
  %62 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %61, i64 18), !nosanitize !45
  %63 = extractvalue { i64, i1 } %62, 0, !nosanitize !45
  %64 = extractvalue { i64, i1 } %62, 1, !nosanitize !45
  br i1 %64, label %65, label %185, !prof !46, !nosanitize !45

65:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

66:                                               ; preds = %57, %57, %57, %57, %57, %57, %57, %57
  %67 = getelementptr inbounds nuw i8, ptr %52, i64 48
  %68 = load i32, ptr %67, align 8, !tbaa !30
  %69 = tail call i32 @llvm.abs.i32(i32 %68, i1 true)
  switch i32 %69, label %142 [
    i32 0, label %143
    i32 1, label %70
    i32 2, label %75
  ]

70:                                               ; preds = %66
  %71 = getelementptr inbounds nuw i8, ptr %52, i64 172
  %72 = load i32, ptr %71, align 4, !tbaa !73
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i64 6, i64 10
  br label %143

75:                                               ; preds = %66
  %76 = getelementptr inbounds nuw i8, ptr %52, i64 56
  %77 = load ptr, ptr %76, align 8, !tbaa !100
  %78 = icmp eq ptr %77, null
  br i1 %78, label %143, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 24
  %81 = load ptr, ptr %80, align 8, !tbaa !112
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds nuw i8, ptr %77, i64 32
  %85 = load i32, ptr %84, align 8, !tbaa !117
  %86 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %85, i32 2), !nosanitize !45
  %87 = extractvalue { i32, i1 } %86, 1, !nosanitize !45
  br i1 %87, label %88, label %89, !prof !46, !nosanitize !45

88:                                               ; preds = %83
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

89:                                               ; preds = %83
  %90 = extractvalue { i32, i1 } %86, 0, !nosanitize !45
  %91 = zext i32 %90 to i64
  %92 = add nuw nsw i64 %91, 18
  br label %93

93:                                               ; preds = %89, %79
  %94 = phi i64 [ %92, %89 ], [ 18, %79 ]
  %95 = getelementptr inbounds nuw i8, ptr %77, i64 40
  %96 = load ptr, ptr %95, align 8, !tbaa !111
  %97 = icmp eq ptr %96, null
  br i1 %97, label %112, label %98

98:                                               ; preds = %93
  %99 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 1), !nosanitize !45
  %100 = extractvalue { i64, i1 } %99, 1, !nosanitize !45
  br i1 %100, label %105, label %106, !prof !130, !nosanitize !45

101:                                              ; preds = %106
  %102 = getelementptr inbounds nuw i8, ptr %108, i64 1
  %103 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %109, i64 1), !nosanitize !45
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !45
  br i1 %104, label %105, label %106, !prof !131, !llvm.loop !132, !nosanitize !45

105:                                              ; preds = %101, %98
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

106:                                              ; preds = %101, %98
  %107 = phi { i64, i1 } [ %103, %101 ], [ %99, %98 ]
  %108 = phi ptr [ %102, %101 ], [ %96, %98 ]
  %109 = extractvalue { i64, i1 } %107, 0, !nosanitize !45
  %110 = load i8, ptr %108, align 1, !tbaa !8
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %101, !llvm.loop !132

112:                                              ; preds = %106, %93
  %113 = phi i64 [ %94, %93 ], [ %109, %106 ]
  %114 = getelementptr inbounds nuw i8, ptr %77, i64 56
  %115 = load ptr, ptr %114, align 8, !tbaa !109
  %116 = icmp eq ptr %115, null
  br i1 %116, label %131, label %117

117:                                              ; preds = %112
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %113, i64 1), !nosanitize !45
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !45
  br i1 %119, label %124, label %125, !prof !130, !nosanitize !45

120:                                              ; preds = %125
  %121 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %122 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %128, i64 1), !nosanitize !45
  %123 = extractvalue { i64, i1 } %122, 1, !nosanitize !45
  br i1 %123, label %124, label %125, !prof !131, !llvm.loop !133, !nosanitize !45

124:                                              ; preds = %120, %117
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

125:                                              ; preds = %120, %117
  %126 = phi { i64, i1 } [ %122, %120 ], [ %118, %117 ]
  %127 = phi ptr [ %121, %120 ], [ %115, %117 ]
  %128 = extractvalue { i64, i1 } %126, 0, !nosanitize !45
  %129 = load i8, ptr %127, align 1, !tbaa !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %120, !llvm.loop !133

131:                                              ; preds = %125, %112
  %132 = phi i64 [ %113, %112 ], [ %128, %125 ]
  %133 = getelementptr inbounds nuw i8, ptr %77, i64 68
  %134 = load i32, ptr %133, align 4, !tbaa !114
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %131
  %137 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %132, i64 2), !nosanitize !45
  %138 = extractvalue { i64, i1 } %137, 1, !nosanitize !45
  br i1 %138, label %139, label %140, !prof !46, !nosanitize !45

139:                                              ; preds = %136
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

140:                                              ; preds = %136
  %141 = extractvalue { i64, i1 } %137, 0, !nosanitize !45
  br label %143

142:                                              ; preds = %66
  br label %143

143:                                              ; preds = %142, %140, %131, %75, %70, %66
  %144 = phi i64 [ 18, %142 ], [ 18, %75 ], [ %74, %70 ], [ 0, %66 ], [ %141, %140 ], [ %132, %131 ]
  %145 = getelementptr inbounds nuw i8, ptr %52, i64 84
  %146 = load i32, ptr %145, align 4, !tbaa !31
  %147 = icmp eq i32 %146, 15
  %148 = getelementptr inbounds nuw i8, ptr %52, i64 136
  %149 = load i32, ptr %148, align 8, !tbaa !51
  %150 = icmp eq i32 %149, 15
  %151 = select i1 %147, i1 %150, i1 false
  br i1 %151, label %165, label %152

152:                                              ; preds = %143
  %153 = icmp ugt i32 %146, %149
  br i1 %153, label %158, label %154

154:                                              ; preds = %152
  %155 = getelementptr inbounds nuw i8, ptr %52, i64 196
  %156 = load i32, ptr %155, align 4, !tbaa !48
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154, %152
  br label %159

159:                                              ; preds = %158, %154
  %160 = phi i64 [ %40, %158 ], [ %27, %154 ]
  %161 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %160, i64 %144), !nosanitize !45
  %162 = extractvalue { i64, i1 } %161, 0, !nosanitize !45
  %163 = extractvalue { i64, i1 } %161, 1, !nosanitize !45
  br i1 %163, label %164, label %185, !prof !46, !nosanitize !45

164:                                              ; preds = %159
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

165:                                              ; preds = %143
  %166 = lshr i64 %1, 12
  %167 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %166), !nosanitize !45
  %168 = extractvalue { i64, i1 } %167, 0, !nosanitize !45
  %169 = lshr i64 %1, 14
  %170 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %168, i64 %169), !nosanitize !45
  %171 = extractvalue { i64, i1 } %170, 0, !nosanitize !45
  %172 = lshr i64 %1, 25
  %173 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %171, i64 %172), !nosanitize !45
  %174 = extractvalue { i64, i1 } %173, 0, !nosanitize !45
  %175 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %174, i64 13), !nosanitize !45
  %176 = extractvalue { i64, i1 } %175, 0, !nosanitize !45
  %177 = add i64 %176, -6
  %178 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %177, i64 %144), !nosanitize !45
  %179 = extractvalue { i64, i1 } %178, 1, !nosanitize !45
  br i1 %179, label %180, label %181, !prof !46, !nosanitize !45

180:                                              ; preds = %165
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

181:                                              ; preds = %165
  %182 = extractvalue { i64, i1 } %178, 0, !nosanitize !45
  %183 = icmp ult i64 %182, %1
  %184 = select i1 %183, i64 -1, i64 %182
  br label %185

185:                                              ; preds = %181, %159, %60
  %186 = phi i64 [ %184, %181 ], [ %63, %60 ], [ %162, %159 ]
  ret i64 %186
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %3) #11
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i64, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 8, !tbaa !107
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = trunc nuw i64 %9 to i32
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %16, i64 %9, i1 false)
  %17 = load ptr, ptr %13, align 8, !tbaa !106
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %9
  store ptr %18, ptr %13, align 8, !tbaa !106
  %19 = load ptr, ptr %15, align 8, !tbaa !58
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  store ptr %20, ptr %15, align 8, !tbaa !58
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8, !tbaa !108
  %23 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %22, i64 %9), !nosanitize !45
  %24 = extractvalue { i64, i1 } %23, 1, !nosanitize !45
  br i1 %24, label %25, label %26, !prof !46, !nosanitize !45

25:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

26:                                               ; preds = %12
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !45
  store i64 %27, ptr %21, align 8, !tbaa !108
  %28 = load i32, ptr %6, align 8, !tbaa !107
  %29 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %28, i32 %10), !nosanitize !45
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !45
  br i1 %30, label %31, label %32, !prof !46, !nosanitize !45

31:                                               ; preds = %26
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

32:                                               ; preds = %26
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !45
  store i32 %33, ptr %6, align 8, !tbaa !107
  %34 = load i64, ptr %4, align 8, !tbaa !57
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %9), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !45
  br i1 %36, label %37, label %38, !prof !46, !nosanitize !45

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  store i64 %39, ptr %4, align 8, !tbaa !57
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %43 = load ptr, ptr %42, align 8, !tbaa !40
  store ptr %43, ptr %15, align 8, !tbaa !58
  br label %44

44:                                               ; preds = %41, %38, %1
  ret void
}

declare i64 @crc32_z(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = load i64, ptr %3, align 8, !tbaa !41
  %5 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 5), !nosanitize !45
  %6 = extractvalue { i64, i1 } %5, 1, !nosanitize !45
  br i1 %6, label %7, label %8, !prof !46, !nosanitize !45

7:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

8:                                                ; preds = %2
  %9 = extractvalue { i64, i1 } %5, 0, !nosanitize !45
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %11 = load i32, ptr %10, align 8, !tbaa !32
  %12 = zext i32 %11 to i64
  %13 = tail call i64 @llvm.umin.i64(i64 %9, i64 %12)
  %14 = trunc nuw i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !20
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load i32, ptr %16, align 8, !tbaa !81
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
  %28 = load i32, ptr %18, align 4, !tbaa !101
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %28, i32 42), !nosanitize !45
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !45
  br i1 %30, label %31, label %32, !prof !46, !nosanitize !45

31:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

32:                                               ; preds = %27
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !45
  %34 = lshr i32 %33, 3
  %35 = load ptr, ptr %0, align 8, !tbaa !20
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %37 = load i32, ptr %36, align 8, !tbaa !107
  %38 = icmp ult i32 %37, %34
  br i1 %38, label %260, label %39

39:                                               ; preds = %32
  %40 = sub nuw i32 %37, %34
  %41 = load i32, ptr %19, align 4, !tbaa !73
  %42 = load i64, ptr %20, align 8, !tbaa !74
  %43 = trunc i64 %42 to i32
  %44 = sub i32 %41, %43
  %45 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %46 = load i32, ptr %45, align 8, !tbaa !81
  %47 = zext i32 %44 to i64
  %48 = zext i32 %46 to i64
  %49 = add nuw nsw i64 %47, %48
  %50 = icmp samesign ult i64 %49, 65535
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !45
  %53 = extractvalue { i32, i1 } %52, 0, !nosanitize !45
  br label %54

54:                                               ; preds = %51, %39
  %55 = phi i32 [ %53, %51 ], [ 65535, %39 ]
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 %40)
  %57 = icmp ult i32 %56, %14
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = icmp eq i32 %56, 0
  %60 = and i1 %21, %59
  %61 = or i1 %22, %60
  br i1 %61, label %260, label %62

62:                                               ; preds = %58
  %63 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !45
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !45
  br i1 %64, label %65, label %66, !prof !46, !nosanitize !45

65:                                               ; preds = %62
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

66:                                               ; preds = %62
  %67 = extractvalue { i32, i1 } %63, 0, !nosanitize !45
  %68 = icmp eq i32 %56, %67
  br i1 %68, label %69, label %260

69:                                               ; preds = %66, %54
  br i1 %23, label %70, label %78

70:                                               ; preds = %69
  %71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !45
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !45
  br i1 %72, label %73, label %74, !prof !46, !nosanitize !45

73:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

74:                                               ; preds = %70
  %75 = extractvalue { i32, i1 } %71, 0, !nosanitize !45
  %76 = icmp eq i32 %56, %75
  %77 = zext i1 %76 to i32
  br label %78

78:                                               ; preds = %74, %69
  %79 = phi i32 [ 0, %69 ], [ %77, %74 ]
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %79) #11
  %80 = load i64, ptr %25, align 8, !tbaa !57
  %81 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %80, i64 4), !nosanitize !45
  %82 = extractvalue { i64, i1 } %81, 1, !nosanitize !45
  br i1 %82, label %83, label %84, !prof !46, !nosanitize !45

83:                                               ; preds = %78
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

84:                                               ; preds = %78
  %85 = extractvalue { i64, i1 } %81, 0, !nosanitize !45
  %86 = load ptr, ptr %24, align 8, !tbaa !40
  %87 = trunc i32 %56 to i8
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 %85
  store i8 %87, ptr %88, align 1, !tbaa !8
  %89 = load i64, ptr %25, align 8, !tbaa !57
  %90 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %89, i64 3), !nosanitize !45
  %91 = extractvalue { i64, i1 } %90, 1, !nosanitize !45
  br i1 %91, label %92, label %93, !prof !46, !nosanitize !45

92:                                               ; preds = %84
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

93:                                               ; preds = %84
  %94 = extractvalue { i64, i1 } %90, 0, !nosanitize !45
  %95 = load ptr, ptr %24, align 8, !tbaa !40
  %96 = lshr i32 %56, 8
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds nuw i8, ptr %95, i64 %94
  store i8 %97, ptr %98, align 1, !tbaa !8
  %99 = load i64, ptr %25, align 8, !tbaa !57
  %100 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %99, i64 2), !nosanitize !45
  %101 = extractvalue { i64, i1 } %100, 1, !nosanitize !45
  br i1 %101, label %102, label %103, !prof !46, !nosanitize !45

102:                                              ; preds = %93
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

103:                                              ; preds = %93
  %104 = extractvalue { i64, i1 } %100, 0, !nosanitize !45
  %105 = load ptr, ptr %24, align 8, !tbaa !40
  %106 = xor i32 %56, -1
  %107 = trunc i32 %106 to i8
  %108 = getelementptr inbounds nuw i8, ptr %105, i64 %104
  store i8 %107, ptr %108, align 1, !tbaa !8
  %109 = load i64, ptr %25, align 8, !tbaa !57
  %110 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %109, i64 1), !nosanitize !45
  %111 = extractvalue { i64, i1 } %110, 1, !nosanitize !45
  br i1 %111, label %112, label %113, !prof !46, !nosanitize !45

112:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

113:                                              ; preds = %103
  %114 = extractvalue { i64, i1 } %110, 0, !nosanitize !45
  %115 = load ptr, ptr %24, align 8, !tbaa !40
  %116 = lshr i32 %106, 8
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds nuw i8, ptr %115, i64 %114
  store i8 %117, ptr %118, align 1, !tbaa !8
  %119 = load ptr, ptr %0, align 8, !tbaa !20
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 56
  %121 = load ptr, ptr %120, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %121) #11
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 40
  %123 = load i64, ptr %122, align 8, !tbaa !57
  %124 = getelementptr inbounds nuw i8, ptr %119, i64 32
  %125 = load i32, ptr %124, align 8, !tbaa !107
  %126 = zext i32 %125 to i64
  %127 = tail call i64 @llvm.umin.i64(i64 %123, i64 %126)
  %128 = trunc nuw i64 %127 to i32
  %129 = icmp eq i64 %127, 0
  br i1 %129, label %162, label %130

130:                                              ; preds = %113
  %131 = getelementptr inbounds nuw i8, ptr %119, i64 24
  %132 = load ptr, ptr %131, align 8, !tbaa !106
  %133 = getelementptr inbounds nuw i8, ptr %121, i64 32
  %134 = load ptr, ptr %133, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %132, ptr align 1 %134, i64 %127, i1 false)
  %135 = load ptr, ptr %131, align 8, !tbaa !106
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 %127
  store ptr %136, ptr %131, align 8, !tbaa !106
  %137 = load ptr, ptr %133, align 8, !tbaa !58
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 %127
  store ptr %138, ptr %133, align 8, !tbaa !58
  %139 = getelementptr inbounds nuw i8, ptr %119, i64 40
  %140 = load i64, ptr %139, align 8, !tbaa !108
  %141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %140, i64 %127), !nosanitize !45
  %142 = extractvalue { i64, i1 } %141, 1, !nosanitize !45
  br i1 %142, label %143, label %144, !prof !46, !nosanitize !45

143:                                              ; preds = %130
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

144:                                              ; preds = %130
  %145 = extractvalue { i64, i1 } %141, 0, !nosanitize !45
  store i64 %145, ptr %139, align 8, !tbaa !108
  %146 = load i32, ptr %124, align 8, !tbaa !107
  %147 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %146, i32 %128), !nosanitize !45
  %148 = extractvalue { i32, i1 } %147, 1, !nosanitize !45
  br i1 %148, label %149, label %150, !prof !46, !nosanitize !45

149:                                              ; preds = %144
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

150:                                              ; preds = %144
  %151 = extractvalue { i32, i1 } %147, 0, !nosanitize !45
  store i32 %151, ptr %124, align 8, !tbaa !107
  %152 = load i64, ptr %122, align 8, !tbaa !57
  %153 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %152, i64 %127), !nosanitize !45
  %154 = extractvalue { i64, i1 } %153, 1, !nosanitize !45
  br i1 %154, label %155, label %156, !prof !46, !nosanitize !45

155:                                              ; preds = %150
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

156:                                              ; preds = %150
  %157 = extractvalue { i64, i1 } %153, 0, !nosanitize !45
  store i64 %157, ptr %122, align 8, !tbaa !57
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = getelementptr inbounds nuw i8, ptr %121, i64 16
  %161 = load ptr, ptr %160, align 8, !tbaa !40
  store ptr %161, ptr %133, align 8, !tbaa !58
  br label %162

162:                                              ; preds = %159, %156, %113
  %163 = icmp eq i32 %41, %43
  br i1 %163, label %195, label %164

164:                                              ; preds = %162
  %165 = tail call i32 @llvm.umin.i32(i32 %44, i32 %56)
  %166 = load ptr, ptr %0, align 8, !tbaa !20
  %167 = getelementptr inbounds nuw i8, ptr %166, i64 24
  %168 = load ptr, ptr %167, align 8, !tbaa !106
  %169 = load ptr, ptr %26, align 8, !tbaa !34
  %170 = load i64, ptr %20, align 8, !tbaa !74
  %171 = getelementptr inbounds i8, ptr %169, i64 %170
  %172 = zext i32 %165 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %168, ptr align 1 %171, i64 %172, i1 false)
  %173 = load ptr, ptr %0, align 8, !tbaa !20
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 24
  %175 = load ptr, ptr %174, align 8, !tbaa !106
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 %172
  store ptr %176, ptr %174, align 8, !tbaa !106
  %177 = getelementptr inbounds nuw i8, ptr %173, i64 32
  %178 = load i32, ptr %177, align 8, !tbaa !107
  %179 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %178, i32 %165), !nosanitize !45
  %180 = extractvalue { i32, i1 } %179, 1, !nosanitize !45
  br i1 %180, label %181, label %182, !prof !46, !nosanitize !45

181:                                              ; preds = %164
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

182:                                              ; preds = %164
  %183 = extractvalue { i32, i1 } %179, 0, !nosanitize !45
  store i32 %183, ptr %177, align 8, !tbaa !107
  %184 = getelementptr inbounds nuw i8, ptr %173, i64 40
  %185 = load i64, ptr %184, align 8, !tbaa !108
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %185, i64 %172), !nosanitize !45
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !45
  br i1 %187, label %188, label %189, !prof !46, !nosanitize !45

188:                                              ; preds = %182
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

189:                                              ; preds = %182
  %190 = extractvalue { i64, i1 } %186, 0, !nosanitize !45
  store i64 %190, ptr %184, align 8, !tbaa !108
  %191 = load i64, ptr %20, align 8, !tbaa !74
  %192 = add nsw i64 %191, %172
  store i64 %192, ptr %20, align 8, !tbaa !74
  %193 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %56, i32 %165), !nosanitize !45
  %194 = extractvalue { i32, i1 } %193, 0, !nosanitize !45
  br label %195

195:                                              ; preds = %189, %162
  %196 = phi i32 [ %194, %189 ], [ %56, %162 ]
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %256, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr %0, align 8, !tbaa !20
  %200 = getelementptr inbounds nuw i8, ptr %199, i64 24
  %201 = load ptr, ptr %200, align 8, !tbaa !106
  %202 = getelementptr inbounds nuw i8, ptr %199, i64 8
  %203 = load i32, ptr %202, align 8, !tbaa !81
  %204 = tail call i32 @llvm.umin.i32(i32 %203, i32 %196)
  %205 = icmp eq i32 %203, 0
  br i1 %205, label %236, label %206

206:                                              ; preds = %198
  %207 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %203, i32 %204), !nosanitize !45
  %208 = extractvalue { i32, i1 } %207, 0, !nosanitize !45
  store i32 %208, ptr %202, align 8, !tbaa !81
  %209 = load ptr, ptr %199, align 8, !tbaa !82
  %210 = zext i32 %204 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %201, ptr align 1 %209, i64 %210, i1 false)
  %211 = getelementptr inbounds nuw i8, ptr %199, i64 56
  %212 = load ptr, ptr %211, align 8, !tbaa !19
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 48
  %214 = load i32, ptr %213, align 8, !tbaa !30
  switch i32 %214, label %223 [
    i32 1, label %215
    i32 2, label %219
  ]

215:                                              ; preds = %206
  %216 = getelementptr inbounds nuw i8, ptr %199, i64 96
  %217 = load i64, ptr %216, align 8, !tbaa !59
  %218 = tail call i64 @adler32(i64 noundef %217, ptr noundef %201, i32 noundef %204) #11
  store i64 %218, ptr %216, align 8, !tbaa !59
  br label %223

219:                                              ; preds = %206
  %220 = getelementptr inbounds nuw i8, ptr %199, i64 96
  %221 = load i64, ptr %220, align 8, !tbaa !59
  %222 = tail call i64 @crc32(i64 noundef %221, ptr noundef %201, i32 noundef %204) #11
  store i64 %222, ptr %220, align 8, !tbaa !59
  br label %223

223:                                              ; preds = %219, %215, %206
  %224 = load ptr, ptr %199, align 8, !tbaa !82
  %225 = getelementptr inbounds nuw i8, ptr %224, i64 %210
  store ptr %225, ptr %199, align 8, !tbaa !82
  %226 = getelementptr inbounds nuw i8, ptr %199, i64 16
  %227 = load i64, ptr %226, align 8, !tbaa !55
  %228 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %227, i64 %210), !nosanitize !45
  %229 = extractvalue { i64, i1 } %228, 1, !nosanitize !45
  br i1 %229, label %230, label %231, !prof !46, !nosanitize !45

230:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

231:                                              ; preds = %223
  %232 = extractvalue { i64, i1 } %228, 0, !nosanitize !45
  store i64 %232, ptr %226, align 8, !tbaa !55
  %233 = load ptr, ptr %0, align 8, !tbaa !20
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 24
  %235 = load ptr, ptr %234, align 8, !tbaa !106
  br label %236

236:                                              ; preds = %231, %198
  %237 = phi ptr [ %201, %198 ], [ %235, %231 ]
  %238 = phi ptr [ %199, %198 ], [ %233, %231 ]
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 24
  %240 = zext i32 %196 to i64
  %241 = getelementptr inbounds nuw i8, ptr %237, i64 %240
  store ptr %241, ptr %239, align 8, !tbaa !106
  %242 = getelementptr inbounds nuw i8, ptr %238, i64 32
  %243 = load i32, ptr %242, align 8, !tbaa !107
  %244 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %243, i32 %196), !nosanitize !45
  %245 = extractvalue { i32, i1 } %244, 1, !nosanitize !45
  br i1 %245, label %246, label %247, !prof !46, !nosanitize !45

246:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

247:                                              ; preds = %236
  %248 = extractvalue { i32, i1 } %244, 0, !nosanitize !45
  store i32 %248, ptr %242, align 8, !tbaa !107
  %249 = getelementptr inbounds nuw i8, ptr %238, i64 40
  %250 = load i64, ptr %249, align 8, !tbaa !108
  %251 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %250, i64 %240), !nosanitize !45
  %252 = extractvalue { i64, i1 } %251, 1, !nosanitize !45
  br i1 %252, label %253, label %254, !prof !46, !nosanitize !45

253:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

254:                                              ; preds = %247
  %255 = extractvalue { i64, i1 } %251, 0, !nosanitize !45
  store i64 %255, ptr %249, align 8, !tbaa !108
  br label %256

256:                                              ; preds = %254, %195
  %257 = icmp eq i32 %79, 0
  br i1 %257, label %27, label %258, !llvm.loop !134

258:                                              ; preds = %256
  %259 = load ptr, ptr %0, align 8, !tbaa !20
  br label %260, !llvm.loop !134

260:                                              ; preds = %258, %66, %58, %32
  %261 = phi ptr [ %259, %258 ], [ %35, %32 ], [ %35, %58 ], [ %35, %66 ]
  %262 = phi i1 [ false, %258 ], [ true, %32 ], [ true, %58 ], [ true, %66 ]
  %263 = getelementptr inbounds nuw i8, ptr %261, i64 8
  %264 = load i32, ptr %263, align 8, !tbaa !81
  %265 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %264), !nosanitize !45
  %266 = extractvalue { i32, i1 } %265, 0, !nosanitize !45
  %267 = extractvalue { i32, i1 } %265, 1, !nosanitize !45
  br i1 %267, label %268, label %269, !prof !46, !nosanitize !45

268:                                              ; preds = %260
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

269:                                              ; preds = %260
  %270 = icmp eq i32 %266, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %269
  %272 = load i32, ptr %19, align 4, !tbaa !73
  %273 = zext i32 %272 to i64
  br label %351

274:                                              ; preds = %269
  %275 = load i32, ptr %10, align 8, !tbaa !32
  %276 = icmp ult i32 %266, %275
  br i1 %276, label %286, label %277

277:                                              ; preds = %274
  %278 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %278, align 8, !tbaa !125
  %279 = load ptr, ptr %26, align 8, !tbaa !34
  %280 = load ptr, ptr %261, align 8, !tbaa !82
  %281 = zext i32 %275 to i64
  %282 = sub nsw i64 0, %281
  %283 = getelementptr inbounds i8, ptr %280, i64 %282
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %279, ptr align 1 %283, i64 %281, i1 false)
  %284 = load i32, ptr %10, align 8, !tbaa !32
  store i32 %284, ptr %19, align 4, !tbaa !73
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %284, ptr %285, align 4, !tbaa !76
  br label %348

286:                                              ; preds = %274
  %287 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %288 = load i64, ptr %287, align 8, !tbaa !61
  %289 = load i32, ptr %19, align 4, !tbaa !73
  %290 = zext i32 %289 to i64
  %291 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %288, i64 %290), !nosanitize !45
  %292 = extractvalue { i64, i1 } %291, 1, !nosanitize !45
  br i1 %292, label %293, label %294, !prof !46, !nosanitize !45

293:                                              ; preds = %286
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

294:                                              ; preds = %286
  %295 = extractvalue { i64, i1 } %291, 0, !nosanitize !45
  %296 = zext i32 %266 to i64
  %297 = icmp ugt i64 %295, %296
  br i1 %297, label %319, label %298

298:                                              ; preds = %294
  %299 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %289, i32 %275), !nosanitize !45
  %300 = extractvalue { i32, i1 } %299, 1, !nosanitize !45
  br i1 %300, label %301, label %302, !prof !46, !nosanitize !45

301:                                              ; preds = %298
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

302:                                              ; preds = %298
  %303 = extractvalue { i32, i1 } %299, 0, !nosanitize !45
  store i32 %303, ptr %19, align 4, !tbaa !73
  %304 = load ptr, ptr %26, align 8, !tbaa !34
  %305 = zext i32 %275 to i64
  %306 = getelementptr inbounds nuw i8, ptr %304, i64 %305
  %307 = zext i32 %303 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %304, ptr nonnull align 1 %306, i64 %307, i1 false)
  %308 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %309 = load i32, ptr %308, align 8, !tbaa !125
  %310 = icmp ult i32 %309, 2
  br i1 %310, label %311, label %313

311:                                              ; preds = %302
  %312 = add nuw nsw i32 %309, 1
  store i32 %312, ptr %308, align 8, !tbaa !125
  br label %313

313:                                              ; preds = %311, %302
  %314 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %315 = load i32, ptr %314, align 4, !tbaa !76
  %316 = load i32, ptr %19, align 4, !tbaa !73
  %317 = icmp ugt i32 %315, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %313
  store i32 %316, ptr %314, align 4, !tbaa !76
  br label %319

319:                                              ; preds = %318, %313, %294
  %320 = phi i32 [ %316, %313 ], [ %316, %318 ], [ %289, %294 ]
  %321 = load ptr, ptr %26, align 8, !tbaa !34
  %322 = zext i32 %320 to i64
  %323 = getelementptr inbounds nuw i8, ptr %321, i64 %322
  %324 = load ptr, ptr %0, align 8, !tbaa !20
  %325 = load ptr, ptr %324, align 8, !tbaa !82
  %326 = sub nsw i64 0, %296
  %327 = getelementptr inbounds i8, ptr %325, i64 %326
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %323, ptr nonnull align 1 %327, i64 %296, i1 false)
  %328 = load i32, ptr %19, align 4, !tbaa !73
  %329 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %328, i32 %266), !nosanitize !45
  %330 = extractvalue { i32, i1 } %329, 1, !nosanitize !45
  br i1 %330, label %331, label %332, !prof !46, !nosanitize !45

331:                                              ; preds = %319
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

332:                                              ; preds = %319
  %333 = extractvalue { i32, i1 } %329, 0, !nosanitize !45
  store i32 %333, ptr %19, align 4, !tbaa !73
  %334 = load i32, ptr %10, align 8, !tbaa !32
  %335 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %336 = load i32, ptr %335, align 4, !tbaa !76
  %337 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %334, i32 %336), !nosanitize !45
  %338 = extractvalue { i32, i1 } %337, 1, !nosanitize !45
  br i1 %338, label %339, label %340, !prof !46, !nosanitize !45

339:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

340:                                              ; preds = %332
  %341 = extractvalue { i32, i1 } %337, 0, !nosanitize !45
  %342 = tail call i32 @llvm.umin.i32(i32 %266, i32 %341)
  %343 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %336, i32 %342), !nosanitize !45
  %344 = extractvalue { i32, i1 } %343, 1, !nosanitize !45
  br i1 %344, label %345, label %346, !prof !46, !nosanitize !45

345:                                              ; preds = %340
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

346:                                              ; preds = %340
  %347 = extractvalue { i32, i1 } %343, 0, !nosanitize !45
  store i32 %347, ptr %335, align 4, !tbaa !76
  br label %348

348:                                              ; preds = %346, %277
  %349 = phi i32 [ %333, %346 ], [ %284, %277 ]
  %350 = zext i32 %349 to i64
  store i64 %350, ptr %20, align 8, !tbaa !74
  br label %351

351:                                              ; preds = %348, %271
  %352 = phi i64 [ %273, %271 ], [ %350, %348 ]
  %353 = phi i32 [ %272, %271 ], [ %349, %348 ]
  %354 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %355 = load i64, ptr %354, align 8, !tbaa !38
  %356 = icmp ult i64 %355, %352
  br i1 %356, label %357, label %358

357:                                              ; preds = %351
  store i64 %352, ptr %354, align 8, !tbaa !38
  br label %358

358:                                              ; preds = %357, %351
  br i1 %262, label %359, label %572

359:                                              ; preds = %358
  %360 = icmp ne i32 %1, 0
  switch i32 %1, label %361 [
    i32 4, label %369
    i32 0, label %369
  ]

361:                                              ; preds = %359
  %362 = load ptr, ptr %0, align 8, !tbaa !20
  %363 = getelementptr inbounds nuw i8, ptr %362, i64 8
  %364 = load i32, ptr %363, align 8, !tbaa !81
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %361
  %367 = load i64, ptr %20, align 8, !tbaa !74
  %368 = icmp eq i64 %367, %352
  br i1 %368, label %575, label %369

369:                                              ; preds = %366, %361, %359, %359
  %370 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %371 = load i64, ptr %370, align 8, !tbaa !61
  %372 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %371, i64 %352), !nosanitize !45
  %373 = extractvalue { i64, i1 } %372, 1, !nosanitize !45
  br i1 %373, label %374, label %375, !prof !46, !nosanitize !45

374:                                              ; preds = %369
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

375:                                              ; preds = %369
  %376 = extractvalue { i64, i1 } %372, 0, !nosanitize !45
  %377 = trunc i64 %376 to i32
  %378 = load ptr, ptr %0, align 8, !tbaa !20
  %379 = getelementptr inbounds nuw i8, ptr %378, i64 8
  %380 = load i32, ptr %379, align 8, !tbaa !81
  %381 = icmp ugt i32 %380, %377
  br i1 %381, label %382, label %414

382:                                              ; preds = %375
  %383 = load i64, ptr %20, align 8, !tbaa !74
  %384 = load i32, ptr %10, align 8, !tbaa !32
  %385 = zext i32 %384 to i64
  %386 = icmp slt i64 %383, %385
  br i1 %386, label %414, label %387

387:                                              ; preds = %382
  %388 = sub nsw i64 %383, %385
  store i64 %388, ptr %20, align 8, !tbaa !74
  %389 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %353, i32 %384), !nosanitize !45
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !45
  br i1 %390, label %391, label %392, !prof !46, !nosanitize !45

391:                                              ; preds = %387
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

392:                                              ; preds = %387
  %393 = extractvalue { i32, i1 } %389, 0, !nosanitize !45
  store i32 %393, ptr %19, align 4, !tbaa !73
  %394 = load ptr, ptr %26, align 8, !tbaa !34
  %395 = getelementptr inbounds nuw i8, ptr %394, i64 %385
  %396 = zext i32 %393 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %394, ptr align 1 %395, i64 %396, i1 false)
  %397 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %398 = load i32, ptr %397, align 8, !tbaa !125
  %399 = icmp ult i32 %398, 2
  br i1 %399, label %400, label %402

400:                                              ; preds = %392
  %401 = add nuw nsw i32 %398, 1
  store i32 %401, ptr %397, align 8, !tbaa !125
  br label %402

402:                                              ; preds = %400, %392
  %403 = load i32, ptr %10, align 8, !tbaa !32
  %404 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %377, i32 %403), !nosanitize !45
  %405 = extractvalue { i32, i1 } %404, 0, !nosanitize !45
  %406 = extractvalue { i32, i1 } %404, 1, !nosanitize !45
  br i1 %406, label %407, label %408, !prof !46, !nosanitize !45

407:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

408:                                              ; preds = %402
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %410 = load i32, ptr %409, align 4, !tbaa !76
  %411 = load i32, ptr %19, align 4, !tbaa !73
  %412 = icmp ugt i32 %410, %411
  br i1 %412, label %413, label %414

413:                                              ; preds = %408
  store i32 %411, ptr %409, align 4, !tbaa !76
  br label %414

414:                                              ; preds = %413, %408, %382, %375
  %415 = phi i32 [ %411, %413 ], [ %411, %408 ], [ %353, %382 ], [ %353, %375 ]
  %416 = phi i32 [ %405, %413 ], [ %405, %408 ], [ %377, %382 ], [ %377, %375 ]
  %417 = load ptr, ptr %0, align 8, !tbaa !20
  %418 = getelementptr inbounds nuw i8, ptr %417, i64 8
  %419 = load i32, ptr %418, align 8, !tbaa !81
  %420 = tail call i32 @llvm.umin.i32(i32 %416, i32 %419)
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %472, label %422

422:                                              ; preds = %414
  %423 = load ptr, ptr %26, align 8, !tbaa !34
  %424 = zext i32 %415 to i64
  %425 = getelementptr inbounds nuw i8, ptr %423, i64 %424
  %426 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %419, i32 %420), !nosanitize !45
  %427 = extractvalue { i32, i1 } %426, 0, !nosanitize !45
  store i32 %427, ptr %418, align 8, !tbaa !81
  %428 = load ptr, ptr %417, align 8, !tbaa !82
  %429 = zext i32 %420 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %425, ptr align 1 %428, i64 %429, i1 false)
  %430 = getelementptr inbounds nuw i8, ptr %417, i64 56
  %431 = load ptr, ptr %430, align 8, !tbaa !19
  %432 = getelementptr inbounds nuw i8, ptr %431, i64 48
  %433 = load i32, ptr %432, align 8, !tbaa !30
  switch i32 %433, label %442 [
    i32 1, label %434
    i32 2, label %438
  ]

434:                                              ; preds = %422
  %435 = getelementptr inbounds nuw i8, ptr %417, i64 96
  %436 = load i64, ptr %435, align 8, !tbaa !59
  %437 = tail call i64 @adler32(i64 noundef %436, ptr noundef %425, i32 noundef %420) #11
  store i64 %437, ptr %435, align 8, !tbaa !59
  br label %442

438:                                              ; preds = %422
  %439 = getelementptr inbounds nuw i8, ptr %417, i64 96
  %440 = load i64, ptr %439, align 8, !tbaa !59
  %441 = tail call i64 @crc32(i64 noundef %440, ptr noundef %425, i32 noundef %420) #11
  store i64 %441, ptr %439, align 8, !tbaa !59
  br label %442

442:                                              ; preds = %438, %434, %422
  %443 = load ptr, ptr %417, align 8, !tbaa !82
  %444 = getelementptr inbounds nuw i8, ptr %443, i64 %429
  store ptr %444, ptr %417, align 8, !tbaa !82
  %445 = getelementptr inbounds nuw i8, ptr %417, i64 16
  %446 = load i64, ptr %445, align 8, !tbaa !55
  %447 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %446, i64 %429), !nosanitize !45
  %448 = extractvalue { i64, i1 } %447, 1, !nosanitize !45
  br i1 %448, label %449, label %450, !prof !46, !nosanitize !45

449:                                              ; preds = %442
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

450:                                              ; preds = %442
  %451 = extractvalue { i64, i1 } %447, 0, !nosanitize !45
  store i64 %451, ptr %445, align 8, !tbaa !55
  %452 = load i32, ptr %19, align 4, !tbaa !73
  %453 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %452, i32 %420), !nosanitize !45
  %454 = extractvalue { i32, i1 } %453, 1, !nosanitize !45
  br i1 %454, label %455, label %456, !prof !46, !nosanitize !45

455:                                              ; preds = %450
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

456:                                              ; preds = %450
  %457 = extractvalue { i32, i1 } %453, 0, !nosanitize !45
  store i32 %457, ptr %19, align 4, !tbaa !73
  %458 = load i32, ptr %10, align 8, !tbaa !32
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %460 = load i32, ptr %459, align 4, !tbaa !76
  %461 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %458, i32 %460), !nosanitize !45
  %462 = extractvalue { i32, i1 } %461, 1, !nosanitize !45
  br i1 %462, label %463, label %464, !prof !46, !nosanitize !45

463:                                              ; preds = %456
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

464:                                              ; preds = %456
  %465 = extractvalue { i32, i1 } %461, 0, !nosanitize !45
  %466 = tail call i32 @llvm.umin.i32(i32 %420, i32 %465)
  %467 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %460, i32 %466), !nosanitize !45
  %468 = extractvalue { i32, i1 } %467, 1, !nosanitize !45
  br i1 %468, label %469, label %470, !prof !46, !nosanitize !45

469:                                              ; preds = %464
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

470:                                              ; preds = %464
  %471 = extractvalue { i32, i1 } %467, 0, !nosanitize !45
  store i32 %471, ptr %459, align 4, !tbaa !76
  br label %472

472:                                              ; preds = %470, %414
  %473 = phi i32 [ %457, %470 ], [ %415, %414 ]
  %474 = load i64, ptr %354, align 8, !tbaa !38
  %475 = zext i32 %473 to i64
  %476 = icmp ult i64 %474, %475
  br i1 %476, label %477, label %478

477:                                              ; preds = %472
  store i64 %475, ptr %354, align 8, !tbaa !38
  br label %478

478:                                              ; preds = %477, %472
  %479 = load i32, ptr %18, align 4, !tbaa !101
  %480 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %479, i32 42), !nosanitize !45
  %481 = extractvalue { i32, i1 } %480, 1, !nosanitize !45
  br i1 %481, label %482, label %483, !prof !46, !nosanitize !45

482:                                              ; preds = %478
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

483:                                              ; preds = %478
  %484 = extractvalue { i32, i1 } %480, 0, !nosanitize !45
  %485 = lshr i32 %484, 3
  %486 = load i64, ptr %3, align 8, !tbaa !41
  %487 = zext nneg i32 %485 to i64
  %488 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %486, i64 %487), !nosanitize !45
  %489 = extractvalue { i64, i1 } %488, 1, !nosanitize !45
  br i1 %489, label %490, label %491, !prof !46, !nosanitize !45

490:                                              ; preds = %483
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

491:                                              ; preds = %483
  %492 = extractvalue { i64, i1 } %488, 0, !nosanitize !45
  %493 = tail call i64 @llvm.umin.i64(i64 %492, i64 65535)
  %494 = trunc nuw nsw i64 %493 to i32
  %495 = load i32, ptr %10, align 8, !tbaa !32
  %496 = tail call i32 @llvm.umin.i32(i32 %495, i32 %494)
  %497 = load i64, ptr %20, align 8, !tbaa !74
  %498 = trunc i64 %497 to i32
  %499 = sub i32 %473, %498
  %500 = icmp ult i32 %499, %496
  br i1 %500, label %501, label %510

501:                                              ; preds = %491
  %502 = icmp ne i32 %473, %498
  %503 = or i1 %23, %502
  %504 = and i1 %360, %503
  br i1 %504, label %505, label %575

505:                                              ; preds = %501
  %506 = load ptr, ptr %0, align 8, !tbaa !20
  %507 = getelementptr inbounds nuw i8, ptr %506, i64 8
  %508 = load i32, ptr %507, align 8, !tbaa !81
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %575

510:                                              ; preds = %505, %491
  %511 = tail call i32 @llvm.umin.i32(i32 %499, i32 %494)
  br i1 %23, label %512, label %520

512:                                              ; preds = %510
  %513 = load ptr, ptr %0, align 8, !tbaa !20
  %514 = getelementptr inbounds nuw i8, ptr %513, i64 8
  %515 = load i32, ptr %514, align 8, !tbaa !81
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %520

517:                                              ; preds = %512
  %518 = icmp ule i32 %499, %494
  %519 = zext i1 %518 to i32
  br label %520

520:                                              ; preds = %517, %512, %510
  %521 = phi i32 [ 0, %512 ], [ 0, %510 ], [ %519, %517 ]
  %522 = load ptr, ptr %26, align 8, !tbaa !34
  %523 = getelementptr inbounds i8, ptr %522, i64 %497
  %524 = zext nneg i32 %511 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %523, i64 noundef %524, i32 noundef %521) #11
  %525 = load i64, ptr %20, align 8, !tbaa !74
  %526 = add nsw i64 %525, %524
  store i64 %526, ptr %20, align 8, !tbaa !74
  %527 = load ptr, ptr %0, align 8, !tbaa !20
  %528 = getelementptr inbounds nuw i8, ptr %527, i64 56
  %529 = load ptr, ptr %528, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %529) #11
  %530 = getelementptr inbounds nuw i8, ptr %529, i64 40
  %531 = load i64, ptr %530, align 8, !tbaa !57
  %532 = getelementptr inbounds nuw i8, ptr %527, i64 32
  %533 = load i32, ptr %532, align 8, !tbaa !107
  %534 = zext i32 %533 to i64
  %535 = tail call i64 @llvm.umin.i64(i64 %531, i64 %534)
  %536 = trunc nuw i64 %535 to i32
  %537 = icmp eq i64 %535, 0
  br i1 %537, label %570, label %538

538:                                              ; preds = %520
  %539 = getelementptr inbounds nuw i8, ptr %527, i64 24
  %540 = load ptr, ptr %539, align 8, !tbaa !106
  %541 = getelementptr inbounds nuw i8, ptr %529, i64 32
  %542 = load ptr, ptr %541, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %540, ptr align 1 %542, i64 %535, i1 false)
  %543 = load ptr, ptr %539, align 8, !tbaa !106
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 %535
  store ptr %544, ptr %539, align 8, !tbaa !106
  %545 = load ptr, ptr %541, align 8, !tbaa !58
  %546 = getelementptr inbounds nuw i8, ptr %545, i64 %535
  store ptr %546, ptr %541, align 8, !tbaa !58
  %547 = getelementptr inbounds nuw i8, ptr %527, i64 40
  %548 = load i64, ptr %547, align 8, !tbaa !108
  %549 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %548, i64 %535), !nosanitize !45
  %550 = extractvalue { i64, i1 } %549, 1, !nosanitize !45
  br i1 %550, label %551, label %552, !prof !46, !nosanitize !45

551:                                              ; preds = %538
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

552:                                              ; preds = %538
  %553 = extractvalue { i64, i1 } %549, 0, !nosanitize !45
  store i64 %553, ptr %547, align 8, !tbaa !108
  %554 = load i32, ptr %532, align 8, !tbaa !107
  %555 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %554, i32 %536), !nosanitize !45
  %556 = extractvalue { i32, i1 } %555, 1, !nosanitize !45
  br i1 %556, label %557, label %558, !prof !46, !nosanitize !45

557:                                              ; preds = %552
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

558:                                              ; preds = %552
  %559 = extractvalue { i32, i1 } %555, 0, !nosanitize !45
  store i32 %559, ptr %532, align 8, !tbaa !107
  %560 = load i64, ptr %530, align 8, !tbaa !57
  %561 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %560, i64 %535), !nosanitize !45
  %562 = extractvalue { i64, i1 } %561, 1, !nosanitize !45
  br i1 %562, label %563, label %564, !prof !46, !nosanitize !45

563:                                              ; preds = %558
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

564:                                              ; preds = %558
  %565 = extractvalue { i64, i1 } %561, 0, !nosanitize !45
  store i64 %565, ptr %530, align 8, !tbaa !57
  %566 = icmp eq i64 %565, 0
  br i1 %566, label %567, label %570

567:                                              ; preds = %564
  %568 = getelementptr inbounds nuw i8, ptr %529, i64 16
  %569 = load ptr, ptr %568, align 8, !tbaa !40
  store ptr %569, ptr %541, align 8, !tbaa !58
  br label %570

570:                                              ; preds = %567, %564, %520
  %571 = icmp eq i32 %521, 0
  br i1 %571, label %575, label %572

572:                                              ; preds = %570, %358
  %573 = phi i32 [ 3, %358 ], [ 2, %570 ]
  %574 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %574, align 8, !tbaa !102
  br label %575

575:                                              ; preds = %572, %570, %505, %501, %366
  %576 = phi i32 [ 0, %505 ], [ 1, %366 ], [ 0, %501 ], [ 0, %570 ], [ %573, %572 ]
  ret i32 %576
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_huff(ptr noundef %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
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

25:                                               ; preds = %471, %2
  %26 = load i32, ptr %3, align 4, !tbaa !75
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %358

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 8, !tbaa !32
  %30 = zext i32 %29 to i64
  br label %31

31:                                               ; preds = %307, %28
  %32 = phi i32 [ %234, %307 ], [ 0, %28 ]
  %33 = load i64, ptr %5, align 8, !tbaa !61
  %34 = zext nneg i32 %32 to i64
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %33, i64 %34), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !45
  br i1 %36, label %37, label %38, !prof !46, !nosanitize !45

37:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

38:                                               ; preds = %31
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  %40 = load i32, ptr %6, align 4, !tbaa !73
  %41 = zext i32 %40 to i64
  %42 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %39, i64 %41), !nosanitize !45
  %43 = extractvalue { i64, i1 } %42, 1, !nosanitize !45
  br i1 %43, label %44, label %45, !prof !46, !nosanitize !45

44:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

45:                                               ; preds = %38
  %46 = extractvalue { i64, i1 } %42, 0, !nosanitize !45
  %47 = trunc i64 %46 to i32
  %48 = load i32, ptr %4, align 8, !tbaa !32
  %49 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %48, i32 262), !nosanitize !45
  %50 = extractvalue { i32, i1 } %49, 1, !nosanitize !45
  br i1 %50, label %51, label %52, !prof !46, !nosanitize !45

51:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

52:                                               ; preds = %45
  %53 = extractvalue { i32, i1 } %49, 0, !nosanitize !45
  %54 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %29, i32 %53), !nosanitize !45
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !45
  br i1 %55, label %56, label %57, !prof !46, !nosanitize !45

56:                                               ; preds = %52
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

57:                                               ; preds = %52
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !45
  %59 = icmp ult i32 %40, %58
  br i1 %59, label %184, label %60

60:                                               ; preds = %57
  %61 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %29, i32 %47), !nosanitize !45
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !45
  br i1 %62, label %63, label %64, !prof !46, !nosanitize !45

63:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

64:                                               ; preds = %60
  %65 = extractvalue { i32, i1 } %61, 0, !nosanitize !45
  %66 = load ptr, ptr %7, align 8, !tbaa !34
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %30
  %68 = zext i32 %65 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr align 1 %67, i64 %68, i1 false)
  %69 = load i32, ptr %8, align 8, !tbaa !83
  %70 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %69, i32 %29), !nosanitize !45
  %71 = extractvalue { i32, i1 } %70, 1, !nosanitize !45
  br i1 %71, label %72, label %73, !prof !46, !nosanitize !45

72:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

73:                                               ; preds = %64
  %74 = extractvalue { i32, i1 } %70, 0, !nosanitize !45
  store i32 %74, ptr %8, align 8, !tbaa !83
  %75 = load i32, ptr %6, align 4, !tbaa !73
  %76 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %75, i32 %29), !nosanitize !45
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !45
  br i1 %77, label %78, label %79, !prof !46, !nosanitize !45

78:                                               ; preds = %73
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

79:                                               ; preds = %73
  %80 = extractvalue { i32, i1 } %76, 0, !nosanitize !45
  store i32 %80, ptr %6, align 4, !tbaa !73
  %81 = load i64, ptr %9, align 8, !tbaa !74
  %82 = sub nsw i64 %81, %30
  store i64 %82, ptr %9, align 8, !tbaa !74
  %83 = load i32, ptr %10, align 4, !tbaa !76
  %84 = icmp ugt i32 %83, %80
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 %80, ptr %10, align 4, !tbaa !76
  br label %86

86:                                               ; preds = %85, %79
  %87 = load i32, ptr %4, align 8, !tbaa !32
  %88 = load i32, ptr %11, align 4, !tbaa !36
  %89 = load ptr, ptr %12, align 8, !tbaa !37
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds nuw [2 x i8], ptr %89, i64 %90
  %92 = icmp eq i32 %88, 0
  br i1 %92, label %119, label %93, !prof !46, !nosanitize !45

93:                                               ; preds = %86
  %94 = icmp ult i32 %88, 8
  br i1 %94, label %116, label %95

95:                                               ; preds = %93
  %96 = and i64 %90, 4294967288
  %97 = mul nsw i64 %96, -2
  %98 = getelementptr i8, ptr %91, i64 %97
  %99 = trunc nuw i64 %96 to i32
  %100 = sub i32 %88, %99
  %101 = insertelement <8 x i32> poison, i32 %87, i64 0
  %102 = shufflevector <8 x i32> %101, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %103

103:                                              ; preds = %103, %95
  %104 = phi i64 [ 0, %95 ], [ %112, %103 ]
  %105 = mul i64 %104, -2
  %106 = getelementptr i8, ptr %91, i64 %105
  %107 = getelementptr inbounds i8, ptr %106, i64 -16
  %108 = load <8 x i16>, ptr %107, align 2, !tbaa !62
  %109 = zext <8 x i16> %108 to <8 x i32>
  %110 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %109, <8 x i32> %102)
  %111 = trunc nuw <8 x i32> %110 to <8 x i16>
  store <8 x i16> %111, ptr %107, align 2, !tbaa !62
  %112 = add nuw i64 %104, 8
  %113 = icmp eq i64 %112, %96
  br i1 %113, label %114, label %103, !llvm.loop !135

114:                                              ; preds = %103
  %115 = icmp eq i64 %96, %90
  br i1 %115, label %135, label %116

116:                                              ; preds = %114, %93
  %117 = phi ptr [ %91, %93 ], [ %98, %114 ]
  %118 = phi i32 [ %88, %93 ], [ %100, %114 ]
  br label %125

119:                                              ; preds = %86
  %120 = getelementptr inbounds i8, ptr %91, i64 -2
  %121 = load i16, ptr %120, align 2, !tbaa !62
  %122 = zext i16 %121 to i32
  %123 = tail call i32 @llvm.usub.sat.i32(i32 %122, i32 %87)
  %124 = trunc nuw i32 %123 to i16
  store i16 %124, ptr %120, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

125:                                              ; preds = %125, %116
  %126 = phi ptr [ %128, %125 ], [ %117, %116 ]
  %127 = phi i32 [ %133, %125 ], [ %118, %116 ]
  %128 = getelementptr inbounds i8, ptr %126, i64 -2
  %129 = load i16, ptr %128, align 2, !tbaa !62
  %130 = zext i16 %129 to i32
  %131 = tail call i32 @llvm.usub.sat.i32(i32 %130, i32 %87)
  %132 = trunc nuw i32 %131 to i16
  store i16 %132, ptr %128, align 2, !tbaa !62
  %133 = add i32 %127, -1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %125, !llvm.loop !136

135:                                              ; preds = %125, %114
  %136 = icmp eq i32 %87, 0
  br i1 %136, label %137, label %138, !prof !46, !nosanitize !45

137:                                              ; preds = %135
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

138:                                              ; preds = %135
  %139 = load ptr, ptr %13, align 8, !tbaa !35
  %140 = zext i32 %87 to i64
  %141 = getelementptr inbounds nuw [2 x i8], ptr %139, i64 %140
  %142 = icmp ult i32 %87, 8
  br i1 %142, label %164, label %143

143:                                              ; preds = %138
  %144 = and i64 %140, 4294967288
  %145 = mul nsw i64 %144, -2
  %146 = getelementptr i8, ptr %141, i64 %145
  %147 = trunc nuw i64 %144 to i32
  %148 = sub i32 %87, %147
  %149 = insertelement <8 x i32> poison, i32 %87, i64 0
  %150 = shufflevector <8 x i32> %149, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %151

151:                                              ; preds = %151, %143
  %152 = phi i64 [ 0, %143 ], [ %160, %151 ]
  %153 = mul i64 %152, -2
  %154 = getelementptr i8, ptr %141, i64 %153
  %155 = getelementptr inbounds i8, ptr %154, i64 -16
  %156 = load <8 x i16>, ptr %155, align 2, !tbaa !62
  %157 = zext <8 x i16> %156 to <8 x i32>
  %158 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %157, <8 x i32> %150)
  %159 = trunc nuw <8 x i32> %158 to <8 x i16>
  store <8 x i16> %159, ptr %155, align 2, !tbaa !62
  %160 = add nuw i64 %152, 8
  %161 = icmp eq i64 %160, %144
  br i1 %161, label %162, label %151, !llvm.loop !137

162:                                              ; preds = %151
  %163 = icmp eq i64 %144, %140
  br i1 %163, label %177, label %164

164:                                              ; preds = %162, %138
  %165 = phi ptr [ %141, %138 ], [ %146, %162 ]
  %166 = phi i32 [ %87, %138 ], [ %148, %162 ]
  br label %167

167:                                              ; preds = %167, %164
  %168 = phi ptr [ %170, %167 ], [ %165, %164 ]
  %169 = phi i32 [ %175, %167 ], [ %166, %164 ]
  %170 = getelementptr inbounds i8, ptr %168, i64 -2
  %171 = load i16, ptr %170, align 2, !tbaa !62
  %172 = zext i16 %171 to i32
  %173 = tail call i32 @llvm.usub.sat.i32(i32 %172, i32 %87)
  %174 = trunc nuw i32 %173 to i16
  store i16 %174, ptr %170, align 2, !tbaa !62
  %175 = add i32 %169, -1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %167, !llvm.loop !138

177:                                              ; preds = %167, %162
  store i32 1, ptr %14, align 8, !tbaa !63
  %178 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %47, i32 %29), !nosanitize !45
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !45
  br i1 %179, label %180, label %181, !prof !46, !nosanitize !45

180:                                              ; preds = %177
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

181:                                              ; preds = %177
  %182 = extractvalue { i32, i1 } %178, 0, !nosanitize !45
  %183 = load i32, ptr %3, align 4, !tbaa !75
  br label %184

184:                                              ; preds = %181, %57
  %185 = phi i32 [ %183, %181 ], [ %32, %57 ]
  %186 = phi i32 [ %80, %181 ], [ %40, %57 ]
  %187 = phi i32 [ %182, %181 ], [ %47, %57 ]
  %188 = load ptr, ptr %0, align 8, !tbaa !20
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 8
  %190 = load i32, ptr %189, align 8, !tbaa !81
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %312, label %192

192:                                              ; preds = %184
  %193 = load ptr, ptr %7, align 8, !tbaa !34
  %194 = zext i32 %186 to i64
  %195 = getelementptr inbounds nuw i8, ptr %193, i64 %194
  %196 = zext i32 %185 to i64
  %197 = getelementptr inbounds nuw i8, ptr %195, i64 %196
  %198 = tail call i32 @llvm.umin.i32(i32 %190, i32 %187)
  %199 = icmp eq i32 %187, 0
  br i1 %199, label %228, label %200

200:                                              ; preds = %192
  %201 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %190, i32 %198), !nosanitize !45
  %202 = extractvalue { i32, i1 } %201, 0, !nosanitize !45
  store i32 %202, ptr %189, align 8, !tbaa !81
  %203 = load ptr, ptr %188, align 8, !tbaa !82
  %204 = zext i32 %198 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %197, ptr align 1 %203, i64 %204, i1 false)
  %205 = getelementptr inbounds nuw i8, ptr %188, i64 56
  %206 = load ptr, ptr %205, align 8, !tbaa !19
  %207 = getelementptr inbounds nuw i8, ptr %206, i64 48
  %208 = load i32, ptr %207, align 8, !tbaa !30
  switch i32 %208, label %217 [
    i32 1, label %209
    i32 2, label %213
  ]

209:                                              ; preds = %200
  %210 = getelementptr inbounds nuw i8, ptr %188, i64 96
  %211 = load i64, ptr %210, align 8, !tbaa !59
  %212 = tail call i64 @adler32(i64 noundef %211, ptr noundef %197, i32 noundef %198) #11
  store i64 %212, ptr %210, align 8, !tbaa !59
  br label %217

213:                                              ; preds = %200
  %214 = getelementptr inbounds nuw i8, ptr %188, i64 96
  %215 = load i64, ptr %214, align 8, !tbaa !59
  %216 = tail call i64 @crc32(i64 noundef %215, ptr noundef %197, i32 noundef %198) #11
  store i64 %216, ptr %214, align 8, !tbaa !59
  br label %217

217:                                              ; preds = %213, %209, %200
  %218 = load ptr, ptr %188, align 8, !tbaa !82
  %219 = getelementptr inbounds nuw i8, ptr %218, i64 %204
  store ptr %219, ptr %188, align 8, !tbaa !82
  %220 = getelementptr inbounds nuw i8, ptr %188, i64 16
  %221 = load i64, ptr %220, align 8, !tbaa !55
  %222 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %221, i64 %204), !nosanitize !45
  %223 = extractvalue { i64, i1 } %222, 1, !nosanitize !45
  br i1 %223, label %224, label %225, !prof !46, !nosanitize !45

224:                                              ; preds = %217
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

225:                                              ; preds = %217
  %226 = extractvalue { i64, i1 } %222, 0, !nosanitize !45
  store i64 %226, ptr %220, align 8, !tbaa !55
  %227 = load i32, ptr %3, align 4, !tbaa !75
  br label %228

228:                                              ; preds = %225, %192
  %229 = phi i32 [ %185, %192 ], [ %227, %225 ]
  %230 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %229, i32 %198), !nosanitize !45
  %231 = extractvalue { i32, i1 } %230, 1, !nosanitize !45
  br i1 %231, label %232, label %233, !prof !46, !nosanitize !45

232:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

233:                                              ; preds = %228
  %234 = extractvalue { i32, i1 } %230, 0, !nosanitize !45
  store i32 %234, ptr %3, align 4, !tbaa !75
  %235 = load i32, ptr %10, align 4, !tbaa !76
  %236 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 %235), !nosanitize !45
  %237 = extractvalue { i32, i1 } %236, 1, !nosanitize !45
  br i1 %237, label %238, label %239, !prof !46, !nosanitize !45

238:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

239:                                              ; preds = %233
  %240 = extractvalue { i32, i1 } %236, 0, !nosanitize !45
  %241 = icmp ugt i32 %240, 2
  br i1 %241, label %242, label %305

242:                                              ; preds = %239
  %243 = load i32, ptr %6, align 4, !tbaa !73
  %244 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %243, i32 %235), !nosanitize !45
  %245 = extractvalue { i32, i1 } %244, 0, !nosanitize !45
  %246 = extractvalue { i32, i1 } %244, 1, !nosanitize !45
  br i1 %246, label %247, label %248, !prof !46, !nosanitize !45

247:                                              ; preds = %242
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

248:                                              ; preds = %242
  %249 = load ptr, ptr %7, align 8, !tbaa !34
  %250 = zext i32 %245 to i64
  %251 = getelementptr inbounds nuw i8, ptr %249, i64 %250
  %252 = load i8, ptr %251, align 1, !tbaa !8
  %253 = zext i8 %252 to i32
  store i32 %253, ptr %15, align 8, !tbaa !80
  %254 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %245, i32 1), !nosanitize !45
  %255 = extractvalue { i32, i1 } %254, 1, !nosanitize !45
  br i1 %255, label %256, label %257, !prof !46, !nosanitize !45

256:                                              ; preds = %248
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

257:                                              ; preds = %248
  %258 = extractvalue { i32, i1 } %254, 0, !nosanitize !45
  %259 = load i32, ptr %16, align 8, !tbaa !53
  %260 = shl i32 %253, %259
  %261 = zext i32 %258 to i64
  %262 = getelementptr inbounds nuw i8, ptr %249, i64 %261
  %263 = load i8, ptr %262, align 1, !tbaa !8
  %264 = zext i8 %263 to i32
  %265 = xor i32 %260, %264
  %266 = load i32, ptr %17, align 4, !tbaa !52
  %267 = and i32 %265, %266
  store i32 %267, ptr %15, align 8, !tbaa !80
  br label %268

268:                                              ; preds = %301, %257
  %269 = phi i32 [ %267, %257 ], [ %286, %301 ]
  %270 = phi i32 [ %235, %257 ], [ %297, %301 ]
  %271 = phi i32 [ %245, %257 ], [ %302, %301 ]
  %272 = icmp eq i32 %270, 0
  br i1 %272, label %305, label %273

273:                                              ; preds = %268
  %274 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %271, i32 3), !nosanitize !45
  %275 = extractvalue { i32, i1 } %274, 1, !nosanitize !45
  br i1 %275, label %276, label %277, !prof !46, !nosanitize !45

276:                                              ; preds = %273
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

277:                                              ; preds = %273
  %278 = shl i32 %269, %259
  %279 = extractvalue { i32, i1 } %274, 0, !nosanitize !45
  %280 = add i32 %279, -1
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds nuw i8, ptr %249, i64 %281
  %283 = load i8, ptr %282, align 1, !tbaa !8
  %284 = zext i8 %283 to i32
  %285 = xor i32 %278, %284
  %286 = and i32 %285, %266
  store i32 %286, ptr %15, align 8, !tbaa !80
  %287 = load ptr, ptr %12, align 8, !tbaa !37
  %288 = zext i32 %286 to i64
  %289 = getelementptr inbounds nuw [2 x i8], ptr %287, i64 %288
  %290 = load i16, ptr %289, align 2, !tbaa !62
  %291 = load ptr, ptr %13, align 8, !tbaa !35
  %292 = load i32, ptr %18, align 8, !tbaa !33
  %293 = and i32 %292, %271
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds nuw [2 x i8], ptr %291, i64 %294
  store i16 %290, ptr %295, align 2, !tbaa !62
  %296 = trunc i32 %271 to i16
  store i16 %296, ptr %289, align 2, !tbaa !62
  %297 = add i32 %270, -1
  store i32 %297, ptr %10, align 4, !tbaa !76
  %298 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 %297), !nosanitize !45
  %299 = extractvalue { i32, i1 } %298, 1, !nosanitize !45
  br i1 %299, label %300, label %301, !prof !46, !nosanitize !45

300:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

301:                                              ; preds = %277
  %302 = add nuw i32 %271, 1
  %303 = extractvalue { i32, i1 } %298, 0, !nosanitize !45
  %304 = icmp ult i32 %303, 3
  br i1 %304, label %305, label %268, !llvm.loop !91

305:                                              ; preds = %301, %268, %239
  %306 = icmp ult i32 %234, 262
  br i1 %306, label %307, label %312

307:                                              ; preds = %305
  %308 = load ptr, ptr %0, align 8, !tbaa !20
  %309 = getelementptr inbounds nuw i8, ptr %308, i64 8
  %310 = load i32, ptr %309, align 8, !tbaa !81
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %31, !llvm.loop !92

312:                                              ; preds = %307, %305, %184
  %313 = phi i32 [ %234, %307 ], [ %234, %305 ], [ %185, %184 ]
  %314 = load i64, ptr %19, align 8, !tbaa !38
  %315 = load i64, ptr %5, align 8, !tbaa !61
  %316 = icmp ult i64 %314, %315
  br i1 %316, label %317, label %353

317:                                              ; preds = %312
  %318 = load i32, ptr %6, align 4, !tbaa !73
  %319 = zext i32 %318 to i64
  %320 = zext i32 %313 to i64
  %321 = add nuw nsw i64 %320, %319
  %322 = icmp ult i64 %314, %321
  br i1 %322, label %323, label %333

323:                                              ; preds = %317
  %324 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %315, i64 %321), !nosanitize !45
  %325 = extractvalue { i64, i1 } %324, 1, !nosanitize !45
  br i1 %325, label %326, label %327, !prof !46, !nosanitize !45

326:                                              ; preds = %323
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

327:                                              ; preds = %323
  %328 = extractvalue { i64, i1 } %324, 0, !nosanitize !45
  %329 = tail call i64 @llvm.umin.i64(i64 %328, i64 258)
  %330 = load ptr, ptr %7, align 8, !tbaa !34
  %331 = getelementptr inbounds nuw i8, ptr %330, i64 %321
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %331, i8 0, i64 %329, i1 false)
  %332 = add nuw nsw i64 %329, %321
  br label %350

333:                                              ; preds = %317
  %334 = add nuw nsw i64 %321, 258
  %335 = icmp ult i64 %314, %334
  br i1 %335, label %336, label %353

336:                                              ; preds = %333
  %337 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %315, i64 %314), !nosanitize !45
  %338 = sub nuw nsw i64 %334, %314
  %339 = extractvalue { i64, i1 } %337, 0, !nosanitize !45
  %340 = tail call i64 @llvm.umin.i64(i64 %338, i64 %339)
  %341 = load ptr, ptr %7, align 8, !tbaa !34
  %342 = getelementptr inbounds nuw i8, ptr %341, i64 %314
  %343 = and i64 %340, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %342, i8 0, i64 %343, i1 false)
  %344 = load i64, ptr %19, align 8, !tbaa !38
  %345 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %344, i64 %340), !nosanitize !45
  %346 = extractvalue { i64, i1 } %345, 1, !nosanitize !45
  br i1 %346, label %347, label %348, !prof !46, !nosanitize !45

347:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

348:                                              ; preds = %336
  %349 = extractvalue { i64, i1 } %345, 0, !nosanitize !45
  br label %350

350:                                              ; preds = %348, %327
  %351 = phi i64 [ %332, %327 ], [ %349, %348 ]
  store i64 %351, ptr %19, align 8, !tbaa !38
  %352 = load i32, ptr %3, align 4, !tbaa !75
  br label %353

353:                                              ; preds = %350, %333, %312
  %354 = phi i32 [ %313, %312 ], [ %313, %333 ], [ %352, %350 ]
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %353
  %357 = icmp eq i32 %1, 0
  br i1 %357, label %603, label %472

358:                                              ; preds = %353, %25
  store i32 0, ptr %20, align 8, !tbaa !78
  %359 = load ptr, ptr %7, align 8, !tbaa !34
  %360 = load i32, ptr %6, align 4, !tbaa !73
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds nuw i8, ptr %359, i64 %361
  %363 = load i8, ptr %362, align 1, !tbaa !8
  %364 = load i32, ptr %22, align 4, !tbaa !139
  %365 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %364, i32 1), !nosanitize !45
  %366 = extractvalue { i32, i1 } %365, 1, !nosanitize !45
  br i1 %366, label %367, label %368, !prof !46, !nosanitize !45

367:                                              ; preds = %358
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

368:                                              ; preds = %358
  %369 = extractvalue { i32, i1 } %365, 0, !nosanitize !45
  %370 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %369, ptr %22, align 4, !tbaa !139
  %371 = zext i32 %364 to i64
  %372 = getelementptr inbounds nuw i8, ptr %370, i64 %371
  store i8 0, ptr %372, align 1, !tbaa !8
  %373 = load i32, ptr %22, align 4, !tbaa !139
  %374 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %373, i32 1), !nosanitize !45
  %375 = extractvalue { i32, i1 } %374, 1, !nosanitize !45
  br i1 %375, label %376, label %377, !prof !46, !nosanitize !45

376:                                              ; preds = %368
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

377:                                              ; preds = %368
  %378 = extractvalue { i32, i1 } %374, 0, !nosanitize !45
  %379 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %378, ptr %22, align 4, !tbaa !139
  %380 = zext i32 %373 to i64
  %381 = getelementptr inbounds nuw i8, ptr %379, i64 %380
  store i8 0, ptr %381, align 1, !tbaa !8
  %382 = load i32, ptr %22, align 4, !tbaa !139
  %383 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %382, i32 1), !nosanitize !45
  %384 = extractvalue { i32, i1 } %383, 1, !nosanitize !45
  br i1 %384, label %385, label %386, !prof !46, !nosanitize !45

385:                                              ; preds = %377
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

386:                                              ; preds = %377
  %387 = extractvalue { i32, i1 } %383, 0, !nosanitize !45
  %388 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %387, ptr %22, align 4, !tbaa !139
  %389 = zext i32 %382 to i64
  %390 = getelementptr inbounds nuw i8, ptr %388, i64 %389
  store i8 %363, ptr %390, align 1, !tbaa !8
  %391 = zext i8 %363 to i64
  %392 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %391
  %393 = load i16, ptr %392, align 4, !tbaa !8
  %394 = add i16 %393, 1
  store i16 %394, ptr %392, align 4, !tbaa !8
  %395 = load i32, ptr %22, align 4, !tbaa !139
  %396 = load i32, ptr %24, align 8, !tbaa !47
  %397 = icmp eq i32 %395, %396
  %398 = load i32, ptr %3, align 4, !tbaa !75
  %399 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %398, i32 1), !nosanitize !45
  %400 = extractvalue { i32, i1 } %399, 1, !nosanitize !45
  br i1 %400, label %401, label %402, !prof !46, !nosanitize !45

401:                                              ; preds = %386
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

402:                                              ; preds = %386
  %403 = extractvalue { i32, i1 } %399, 0, !nosanitize !45
  store i32 %403, ptr %3, align 4, !tbaa !75
  %404 = load i32, ptr %6, align 4, !tbaa !73
  %405 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %404, i32 1), !nosanitize !45
  %406 = extractvalue { i32, i1 } %405, 1, !nosanitize !45
  br i1 %406, label %407, label %408, !prof !46, !nosanitize !45

407:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

408:                                              ; preds = %402
  %409 = extractvalue { i32, i1 } %405, 0, !nosanitize !45
  store i32 %409, ptr %6, align 4, !tbaa !73
  br i1 %397, label %410, label %471

410:                                              ; preds = %408
  %411 = load i64, ptr %9, align 8, !tbaa !74
  %412 = icmp sgt i64 %411, -1
  br i1 %412, label %413, label %417

413:                                              ; preds = %410
  %414 = load ptr, ptr %7, align 8, !tbaa !34
  %415 = and i64 %411, 4294967295
  %416 = getelementptr inbounds nuw i8, ptr %414, i64 %415
  br label %417

417:                                              ; preds = %413, %410
  %418 = phi ptr [ %416, %413 ], [ null, %410 ]
  %419 = zext i32 %409 to i64
  %420 = sub nsw i64 %419, %411
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %418, i64 noundef %420, i32 noundef 0) #11
  %421 = load i32, ptr %6, align 4, !tbaa !73
  %422 = zext i32 %421 to i64
  store i64 %422, ptr %9, align 8, !tbaa !74
  %423 = load ptr, ptr %0, align 8, !tbaa !20
  %424 = getelementptr inbounds nuw i8, ptr %423, i64 56
  %425 = load ptr, ptr %424, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %425) #11
  %426 = getelementptr inbounds nuw i8, ptr %425, i64 40
  %427 = load i64, ptr %426, align 8, !tbaa !57
  %428 = getelementptr inbounds nuw i8, ptr %423, i64 32
  %429 = load i32, ptr %428, align 8, !tbaa !107
  %430 = zext i32 %429 to i64
  %431 = tail call i64 @llvm.umin.i64(i64 %427, i64 %430)
  %432 = trunc nuw i64 %431 to i32
  %433 = icmp eq i64 %431, 0
  br i1 %433, label %466, label %434

434:                                              ; preds = %417
  %435 = getelementptr inbounds nuw i8, ptr %423, i64 24
  %436 = load ptr, ptr %435, align 8, !tbaa !106
  %437 = getelementptr inbounds nuw i8, ptr %425, i64 32
  %438 = load ptr, ptr %437, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %436, ptr align 1 %438, i64 %431, i1 false)
  %439 = load ptr, ptr %435, align 8, !tbaa !106
  %440 = getelementptr inbounds nuw i8, ptr %439, i64 %431
  store ptr %440, ptr %435, align 8, !tbaa !106
  %441 = load ptr, ptr %437, align 8, !tbaa !58
  %442 = getelementptr inbounds nuw i8, ptr %441, i64 %431
  store ptr %442, ptr %437, align 8, !tbaa !58
  %443 = getelementptr inbounds nuw i8, ptr %423, i64 40
  %444 = load i64, ptr %443, align 8, !tbaa !108
  %445 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %444, i64 %431), !nosanitize !45
  %446 = extractvalue { i64, i1 } %445, 1, !nosanitize !45
  br i1 %446, label %447, label %448, !prof !46, !nosanitize !45

447:                                              ; preds = %434
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

448:                                              ; preds = %434
  %449 = extractvalue { i64, i1 } %445, 0, !nosanitize !45
  store i64 %449, ptr %443, align 8, !tbaa !108
  %450 = load i32, ptr %428, align 8, !tbaa !107
  %451 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %450, i32 %432), !nosanitize !45
  %452 = extractvalue { i32, i1 } %451, 1, !nosanitize !45
  br i1 %452, label %453, label %454, !prof !46, !nosanitize !45

453:                                              ; preds = %448
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

454:                                              ; preds = %448
  %455 = extractvalue { i32, i1 } %451, 0, !nosanitize !45
  store i32 %455, ptr %428, align 8, !tbaa !107
  %456 = load i64, ptr %426, align 8, !tbaa !57
  %457 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %456, i64 %431), !nosanitize !45
  %458 = extractvalue { i64, i1 } %457, 1, !nosanitize !45
  br i1 %458, label %459, label %460, !prof !46, !nosanitize !45

459:                                              ; preds = %454
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

460:                                              ; preds = %454
  %461 = extractvalue { i64, i1 } %457, 0, !nosanitize !45
  store i64 %461, ptr %426, align 8, !tbaa !57
  %462 = icmp eq i64 %461, 0
  br i1 %462, label %463, label %466

463:                                              ; preds = %460
  %464 = getelementptr inbounds nuw i8, ptr %425, i64 16
  %465 = load ptr, ptr %464, align 8, !tbaa !40
  store ptr %465, ptr %437, align 8, !tbaa !58
  br label %466

466:                                              ; preds = %463, %460, %417
  %467 = load ptr, ptr %0, align 8, !tbaa !20
  %468 = getelementptr inbounds nuw i8, ptr %467, i64 32
  %469 = load i32, ptr %468, align 8, !tbaa !107
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %603, label %471

471:                                              ; preds = %466, %408
  br label %25

472:                                              ; preds = %356
  store i32 0, ptr %10, align 4, !tbaa !76
  %473 = icmp eq i32 %1, 4
  br i1 %473, label %474, label %537

474:                                              ; preds = %472
  %475 = load i64, ptr %9, align 8, !tbaa !74
  %476 = icmp sgt i64 %475, -1
  br i1 %476, label %477, label %481

477:                                              ; preds = %474
  %478 = load ptr, ptr %7, align 8, !tbaa !34
  %479 = and i64 %475, 4294967295
  %480 = getelementptr inbounds nuw i8, ptr %478, i64 %479
  br label %481

481:                                              ; preds = %477, %474
  %482 = phi ptr [ %480, %477 ], [ null, %474 ]
  %483 = load i32, ptr %6, align 4, !tbaa !73
  %484 = zext i32 %483 to i64
  %485 = sub nsw i64 %484, %475
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %482, i64 noundef %485, i32 noundef 1) #11
  %486 = load i32, ptr %6, align 4, !tbaa !73
  %487 = zext i32 %486 to i64
  store i64 %487, ptr %9, align 8, !tbaa !74
  %488 = load ptr, ptr %0, align 8, !tbaa !20
  %489 = getelementptr inbounds nuw i8, ptr %488, i64 56
  %490 = load ptr, ptr %489, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %490) #11
  %491 = getelementptr inbounds nuw i8, ptr %490, i64 40
  %492 = load i64, ptr %491, align 8, !tbaa !57
  %493 = getelementptr inbounds nuw i8, ptr %488, i64 32
  %494 = load i32, ptr %493, align 8, !tbaa !107
  %495 = zext i32 %494 to i64
  %496 = tail call i64 @llvm.umin.i64(i64 %492, i64 %495)
  %497 = trunc nuw i64 %496 to i32
  %498 = icmp eq i64 %496, 0
  br i1 %498, label %531, label %499

499:                                              ; preds = %481
  %500 = getelementptr inbounds nuw i8, ptr %488, i64 24
  %501 = load ptr, ptr %500, align 8, !tbaa !106
  %502 = getelementptr inbounds nuw i8, ptr %490, i64 32
  %503 = load ptr, ptr %502, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %501, ptr align 1 %503, i64 %496, i1 false)
  %504 = load ptr, ptr %500, align 8, !tbaa !106
  %505 = getelementptr inbounds nuw i8, ptr %504, i64 %496
  store ptr %505, ptr %500, align 8, !tbaa !106
  %506 = load ptr, ptr %502, align 8, !tbaa !58
  %507 = getelementptr inbounds nuw i8, ptr %506, i64 %496
  store ptr %507, ptr %502, align 8, !tbaa !58
  %508 = getelementptr inbounds nuw i8, ptr %488, i64 40
  %509 = load i64, ptr %508, align 8, !tbaa !108
  %510 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %509, i64 %496), !nosanitize !45
  %511 = extractvalue { i64, i1 } %510, 1, !nosanitize !45
  br i1 %511, label %512, label %513, !prof !46, !nosanitize !45

512:                                              ; preds = %499
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

513:                                              ; preds = %499
  %514 = extractvalue { i64, i1 } %510, 0, !nosanitize !45
  store i64 %514, ptr %508, align 8, !tbaa !108
  %515 = load i32, ptr %493, align 8, !tbaa !107
  %516 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %515, i32 %497), !nosanitize !45
  %517 = extractvalue { i32, i1 } %516, 1, !nosanitize !45
  br i1 %517, label %518, label %519, !prof !46, !nosanitize !45

518:                                              ; preds = %513
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

519:                                              ; preds = %513
  %520 = extractvalue { i32, i1 } %516, 0, !nosanitize !45
  store i32 %520, ptr %493, align 8, !tbaa !107
  %521 = load i64, ptr %491, align 8, !tbaa !57
  %522 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %521, i64 %496), !nosanitize !45
  %523 = extractvalue { i64, i1 } %522, 1, !nosanitize !45
  br i1 %523, label %524, label %525, !prof !46, !nosanitize !45

524:                                              ; preds = %519
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

525:                                              ; preds = %519
  %526 = extractvalue { i64, i1 } %522, 0, !nosanitize !45
  store i64 %526, ptr %491, align 8, !tbaa !57
  %527 = icmp eq i64 %526, 0
  br i1 %527, label %528, label %531

528:                                              ; preds = %525
  %529 = getelementptr inbounds nuw i8, ptr %490, i64 16
  %530 = load ptr, ptr %529, align 8, !tbaa !40
  store ptr %530, ptr %502, align 8, !tbaa !58
  br label %531

531:                                              ; preds = %528, %525, %481
  %532 = load ptr, ptr %0, align 8, !tbaa !20
  %533 = getelementptr inbounds nuw i8, ptr %532, i64 32
  %534 = load i32, ptr %533, align 8, !tbaa !107
  %535 = icmp eq i32 %534, 0
  %536 = select i1 %535, i32 2, i32 3
  br label %603

537:                                              ; preds = %472
  %538 = load i32, ptr %22, align 4, !tbaa !139
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %602, label %540

540:                                              ; preds = %537
  %541 = load i64, ptr %9, align 8, !tbaa !74
  %542 = icmp sgt i64 %541, -1
  br i1 %542, label %543, label %547

543:                                              ; preds = %540
  %544 = load ptr, ptr %7, align 8, !tbaa !34
  %545 = and i64 %541, 4294967295
  %546 = getelementptr inbounds nuw i8, ptr %544, i64 %545
  br label %547

547:                                              ; preds = %543, %540
  %548 = phi ptr [ %546, %543 ], [ null, %540 ]
  %549 = load i32, ptr %6, align 4, !tbaa !73
  %550 = zext i32 %549 to i64
  %551 = sub nsw i64 %550, %541
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %548, i64 noundef %551, i32 noundef 0) #11
  %552 = load i32, ptr %6, align 4, !tbaa !73
  %553 = zext i32 %552 to i64
  store i64 %553, ptr %9, align 8, !tbaa !74
  %554 = load ptr, ptr %0, align 8, !tbaa !20
  %555 = getelementptr inbounds nuw i8, ptr %554, i64 56
  %556 = load ptr, ptr %555, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %556) #11
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 40
  %558 = load i64, ptr %557, align 8, !tbaa !57
  %559 = getelementptr inbounds nuw i8, ptr %554, i64 32
  %560 = load i32, ptr %559, align 8, !tbaa !107
  %561 = zext i32 %560 to i64
  %562 = tail call i64 @llvm.umin.i64(i64 %558, i64 %561)
  %563 = trunc nuw i64 %562 to i32
  %564 = icmp eq i64 %562, 0
  br i1 %564, label %597, label %565

565:                                              ; preds = %547
  %566 = getelementptr inbounds nuw i8, ptr %554, i64 24
  %567 = load ptr, ptr %566, align 8, !tbaa !106
  %568 = getelementptr inbounds nuw i8, ptr %556, i64 32
  %569 = load ptr, ptr %568, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %567, ptr align 1 %569, i64 %562, i1 false)
  %570 = load ptr, ptr %566, align 8, !tbaa !106
  %571 = getelementptr inbounds nuw i8, ptr %570, i64 %562
  store ptr %571, ptr %566, align 8, !tbaa !106
  %572 = load ptr, ptr %568, align 8, !tbaa !58
  %573 = getelementptr inbounds nuw i8, ptr %572, i64 %562
  store ptr %573, ptr %568, align 8, !tbaa !58
  %574 = getelementptr inbounds nuw i8, ptr %554, i64 40
  %575 = load i64, ptr %574, align 8, !tbaa !108
  %576 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %575, i64 %562), !nosanitize !45
  %577 = extractvalue { i64, i1 } %576, 1, !nosanitize !45
  br i1 %577, label %578, label %579, !prof !46, !nosanitize !45

578:                                              ; preds = %565
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

579:                                              ; preds = %565
  %580 = extractvalue { i64, i1 } %576, 0, !nosanitize !45
  store i64 %580, ptr %574, align 8, !tbaa !108
  %581 = load i32, ptr %559, align 8, !tbaa !107
  %582 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %581, i32 %563), !nosanitize !45
  %583 = extractvalue { i32, i1 } %582, 1, !nosanitize !45
  br i1 %583, label %584, label %585, !prof !46, !nosanitize !45

584:                                              ; preds = %579
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

585:                                              ; preds = %579
  %586 = extractvalue { i32, i1 } %582, 0, !nosanitize !45
  store i32 %586, ptr %559, align 8, !tbaa !107
  %587 = load i64, ptr %557, align 8, !tbaa !57
  %588 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %587, i64 %562), !nosanitize !45
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !45
  br i1 %589, label %590, label %591, !prof !46, !nosanitize !45

590:                                              ; preds = %585
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

591:                                              ; preds = %585
  %592 = extractvalue { i64, i1 } %588, 0, !nosanitize !45
  store i64 %592, ptr %557, align 8, !tbaa !57
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %597

594:                                              ; preds = %591
  %595 = getelementptr inbounds nuw i8, ptr %556, i64 16
  %596 = load ptr, ptr %595, align 8, !tbaa !40
  store ptr %596, ptr %568, align 8, !tbaa !58
  br label %597

597:                                              ; preds = %594, %591, %547
  %598 = load ptr, ptr %0, align 8, !tbaa !20
  %599 = getelementptr inbounds nuw i8, ptr %598, i64 32
  %600 = load i32, ptr %599, align 8, !tbaa !107
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %603, label %602

602:                                              ; preds = %597, %537
  br label %603

603:                                              ; preds = %602, %597, %531, %466, %356
  %604 = phi i32 [ 0, %356 ], [ %536, %531 ], [ 0, %597 ], [ 1, %602 ], [ 0, %466 ]
  ret i32 %604
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_rle(ptr noundef %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
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
  %26 = getelementptr i8, ptr %0, i64 1240
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  br label %28

28:                                               ; preds = %513, %2
  %29 = load i32, ptr %3, align 4, !tbaa !75
  %30 = icmp ult i32 %29, 259
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  store i32 0, ptr %4, align 8, !tbaa !78
  %32 = load i32, ptr %7, align 4, !tbaa !73
  br label %367

33:                                               ; preds = %28
  %34 = load i32, ptr %5, align 8, !tbaa !32
  %35 = zext i32 %34 to i64
  br label %36

36:                                               ; preds = %312, %33
  %37 = phi i32 [ %239, %312 ], [ %29, %33 ]
  %38 = load i64, ptr %6, align 8, !tbaa !61
  %39 = zext nneg i32 %37 to i64
  %40 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %38, i64 %39), !nosanitize !45
  %41 = extractvalue { i64, i1 } %40, 1, !nosanitize !45
  br i1 %41, label %42, label %43, !prof !46, !nosanitize !45

42:                                               ; preds = %36
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

43:                                               ; preds = %36
  %44 = extractvalue { i64, i1 } %40, 0, !nosanitize !45
  %45 = load i32, ptr %7, align 4, !tbaa !73
  %46 = zext i32 %45 to i64
  %47 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %44, i64 %46), !nosanitize !45
  %48 = extractvalue { i64, i1 } %47, 1, !nosanitize !45
  br i1 %48, label %49, label %50, !prof !46, !nosanitize !45

49:                                               ; preds = %43
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

50:                                               ; preds = %43
  %51 = extractvalue { i64, i1 } %47, 0, !nosanitize !45
  %52 = trunc i64 %51 to i32
  %53 = load i32, ptr %5, align 8, !tbaa !32
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %53, i32 262), !nosanitize !45
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !45
  br i1 %55, label %56, label %57, !prof !46, !nosanitize !45

56:                                               ; preds = %50
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

57:                                               ; preds = %50
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !45
  %59 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %34, i32 %58), !nosanitize !45
  %60 = extractvalue { i32, i1 } %59, 1, !nosanitize !45
  br i1 %60, label %61, label %62, !prof !46, !nosanitize !45

61:                                               ; preds = %57
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

62:                                               ; preds = %57
  %63 = extractvalue { i32, i1 } %59, 0, !nosanitize !45
  %64 = icmp ult i32 %45, %63
  br i1 %64, label %189, label %65

65:                                               ; preds = %62
  %66 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %34, i32 %52), !nosanitize !45
  %67 = extractvalue { i32, i1 } %66, 1, !nosanitize !45
  br i1 %67, label %68, label %69, !prof !46, !nosanitize !45

68:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

69:                                               ; preds = %65
  %70 = extractvalue { i32, i1 } %66, 0, !nosanitize !45
  %71 = load ptr, ptr %8, align 8, !tbaa !34
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 %35
  %73 = zext i32 %70 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %71, ptr align 1 %72, i64 %73, i1 false)
  %74 = load i32, ptr %9, align 8, !tbaa !83
  %75 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %74, i32 %34), !nosanitize !45
  %76 = extractvalue { i32, i1 } %75, 1, !nosanitize !45
  br i1 %76, label %77, label %78, !prof !46, !nosanitize !45

77:                                               ; preds = %69
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

78:                                               ; preds = %69
  %79 = extractvalue { i32, i1 } %75, 0, !nosanitize !45
  store i32 %79, ptr %9, align 8, !tbaa !83
  %80 = load i32, ptr %7, align 4, !tbaa !73
  %81 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %80, i32 %34), !nosanitize !45
  %82 = extractvalue { i32, i1 } %81, 1, !nosanitize !45
  br i1 %82, label %83, label %84, !prof !46, !nosanitize !45

83:                                               ; preds = %78
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

84:                                               ; preds = %78
  %85 = extractvalue { i32, i1 } %81, 0, !nosanitize !45
  store i32 %85, ptr %7, align 4, !tbaa !73
  %86 = load i64, ptr %10, align 8, !tbaa !74
  %87 = sub nsw i64 %86, %35
  store i64 %87, ptr %10, align 8, !tbaa !74
  %88 = load i32, ptr %11, align 4, !tbaa !76
  %89 = icmp ugt i32 %88, %85
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 %85, ptr %11, align 4, !tbaa !76
  br label %91

91:                                               ; preds = %90, %84
  %92 = load i32, ptr %5, align 8, !tbaa !32
  %93 = load i32, ptr %12, align 4, !tbaa !36
  %94 = load ptr, ptr %13, align 8, !tbaa !37
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds nuw [2 x i8], ptr %94, i64 %95
  %97 = icmp eq i32 %93, 0
  br i1 %97, label %124, label %98, !prof !46, !nosanitize !45

98:                                               ; preds = %91
  %99 = icmp ult i32 %93, 8
  br i1 %99, label %121, label %100

100:                                              ; preds = %98
  %101 = and i64 %95, 4294967288
  %102 = mul nsw i64 %101, -2
  %103 = getelementptr i8, ptr %96, i64 %102
  %104 = trunc nuw i64 %101 to i32
  %105 = sub i32 %93, %104
  %106 = insertelement <8 x i32> poison, i32 %92, i64 0
  %107 = shufflevector <8 x i32> %106, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %108

108:                                              ; preds = %108, %100
  %109 = phi i64 [ 0, %100 ], [ %117, %108 ]
  %110 = mul i64 %109, -2
  %111 = getelementptr i8, ptr %96, i64 %110
  %112 = getelementptr inbounds i8, ptr %111, i64 -16
  %113 = load <8 x i16>, ptr %112, align 2, !tbaa !62
  %114 = zext <8 x i16> %113 to <8 x i32>
  %115 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %114, <8 x i32> %107)
  %116 = trunc nuw <8 x i32> %115 to <8 x i16>
  store <8 x i16> %116, ptr %112, align 2, !tbaa !62
  %117 = add nuw i64 %109, 8
  %118 = icmp eq i64 %117, %101
  br i1 %118, label %119, label %108, !llvm.loop !140

119:                                              ; preds = %108
  %120 = icmp eq i64 %101, %95
  br i1 %120, label %140, label %121

121:                                              ; preds = %119, %98
  %122 = phi ptr [ %96, %98 ], [ %103, %119 ]
  %123 = phi i32 [ %93, %98 ], [ %105, %119 ]
  br label %130

124:                                              ; preds = %91
  %125 = getelementptr inbounds i8, ptr %96, i64 -2
  %126 = load i16, ptr %125, align 2, !tbaa !62
  %127 = zext i16 %126 to i32
  %128 = tail call i32 @llvm.usub.sat.i32(i32 %127, i32 %92)
  %129 = trunc nuw i32 %128 to i16
  store i16 %129, ptr %125, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

130:                                              ; preds = %130, %121
  %131 = phi ptr [ %133, %130 ], [ %122, %121 ]
  %132 = phi i32 [ %138, %130 ], [ %123, %121 ]
  %133 = getelementptr inbounds i8, ptr %131, i64 -2
  %134 = load i16, ptr %133, align 2, !tbaa !62
  %135 = zext i16 %134 to i32
  %136 = tail call i32 @llvm.usub.sat.i32(i32 %135, i32 %92)
  %137 = trunc nuw i32 %136 to i16
  store i16 %137, ptr %133, align 2, !tbaa !62
  %138 = add i32 %132, -1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %130, !llvm.loop !141

140:                                              ; preds = %130, %119
  %141 = icmp eq i32 %92, 0
  br i1 %141, label %142, label %143, !prof !46, !nosanitize !45

142:                                              ; preds = %140
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

143:                                              ; preds = %140
  %144 = load ptr, ptr %14, align 8, !tbaa !35
  %145 = zext i32 %92 to i64
  %146 = getelementptr inbounds nuw [2 x i8], ptr %144, i64 %145
  %147 = icmp ult i32 %92, 8
  br i1 %147, label %169, label %148

148:                                              ; preds = %143
  %149 = and i64 %145, 4294967288
  %150 = mul nsw i64 %149, -2
  %151 = getelementptr i8, ptr %146, i64 %150
  %152 = trunc nuw i64 %149 to i32
  %153 = sub i32 %92, %152
  %154 = insertelement <8 x i32> poison, i32 %92, i64 0
  %155 = shufflevector <8 x i32> %154, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %156

156:                                              ; preds = %156, %148
  %157 = phi i64 [ 0, %148 ], [ %165, %156 ]
  %158 = mul i64 %157, -2
  %159 = getelementptr i8, ptr %146, i64 %158
  %160 = getelementptr inbounds i8, ptr %159, i64 -16
  %161 = load <8 x i16>, ptr %160, align 2, !tbaa !62
  %162 = zext <8 x i16> %161 to <8 x i32>
  %163 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %162, <8 x i32> %155)
  %164 = trunc nuw <8 x i32> %163 to <8 x i16>
  store <8 x i16> %164, ptr %160, align 2, !tbaa !62
  %165 = add nuw i64 %157, 8
  %166 = icmp eq i64 %165, %149
  br i1 %166, label %167, label %156, !llvm.loop !142

167:                                              ; preds = %156
  %168 = icmp eq i64 %149, %145
  br i1 %168, label %182, label %169

169:                                              ; preds = %167, %143
  %170 = phi ptr [ %146, %143 ], [ %151, %167 ]
  %171 = phi i32 [ %92, %143 ], [ %153, %167 ]
  br label %172

172:                                              ; preds = %172, %169
  %173 = phi ptr [ %175, %172 ], [ %170, %169 ]
  %174 = phi i32 [ %180, %172 ], [ %171, %169 ]
  %175 = getelementptr inbounds i8, ptr %173, i64 -2
  %176 = load i16, ptr %175, align 2, !tbaa !62
  %177 = zext i16 %176 to i32
  %178 = tail call i32 @llvm.usub.sat.i32(i32 %177, i32 %92)
  %179 = trunc nuw i32 %178 to i16
  store i16 %179, ptr %175, align 2, !tbaa !62
  %180 = add i32 %174, -1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %172, !llvm.loop !143

182:                                              ; preds = %172, %167
  store i32 1, ptr %15, align 8, !tbaa !63
  %183 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %52, i32 %34), !nosanitize !45
  %184 = extractvalue { i32, i1 } %183, 1, !nosanitize !45
  br i1 %184, label %185, label %186, !prof !46, !nosanitize !45

185:                                              ; preds = %182
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

186:                                              ; preds = %182
  %187 = extractvalue { i32, i1 } %183, 0, !nosanitize !45
  %188 = load i32, ptr %3, align 4, !tbaa !75
  br label %189

189:                                              ; preds = %186, %62
  %190 = phi i32 [ %188, %186 ], [ %37, %62 ]
  %191 = phi i32 [ %85, %186 ], [ %45, %62 ]
  %192 = phi i32 [ %187, %186 ], [ %52, %62 ]
  %193 = load ptr, ptr %0, align 8, !tbaa !20
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 8
  %195 = load i32, ptr %194, align 8, !tbaa !81
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %317, label %197

197:                                              ; preds = %189
  %198 = load ptr, ptr %8, align 8, !tbaa !34
  %199 = zext i32 %191 to i64
  %200 = getelementptr inbounds nuw i8, ptr %198, i64 %199
  %201 = zext i32 %190 to i64
  %202 = getelementptr inbounds nuw i8, ptr %200, i64 %201
  %203 = tail call i32 @llvm.umin.i32(i32 %195, i32 %192)
  %204 = icmp eq i32 %192, 0
  br i1 %204, label %233, label %205

205:                                              ; preds = %197
  %206 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %195, i32 %203), !nosanitize !45
  %207 = extractvalue { i32, i1 } %206, 0, !nosanitize !45
  store i32 %207, ptr %194, align 8, !tbaa !81
  %208 = load ptr, ptr %193, align 8, !tbaa !82
  %209 = zext i32 %203 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %202, ptr align 1 %208, i64 %209, i1 false)
  %210 = getelementptr inbounds nuw i8, ptr %193, i64 56
  %211 = load ptr, ptr %210, align 8, !tbaa !19
  %212 = getelementptr inbounds nuw i8, ptr %211, i64 48
  %213 = load i32, ptr %212, align 8, !tbaa !30
  switch i32 %213, label %222 [
    i32 1, label %214
    i32 2, label %218
  ]

214:                                              ; preds = %205
  %215 = getelementptr inbounds nuw i8, ptr %193, i64 96
  %216 = load i64, ptr %215, align 8, !tbaa !59
  %217 = tail call i64 @adler32(i64 noundef %216, ptr noundef %202, i32 noundef %203) #11
  store i64 %217, ptr %215, align 8, !tbaa !59
  br label %222

218:                                              ; preds = %205
  %219 = getelementptr inbounds nuw i8, ptr %193, i64 96
  %220 = load i64, ptr %219, align 8, !tbaa !59
  %221 = tail call i64 @crc32(i64 noundef %220, ptr noundef %202, i32 noundef %203) #11
  store i64 %221, ptr %219, align 8, !tbaa !59
  br label %222

222:                                              ; preds = %218, %214, %205
  %223 = load ptr, ptr %193, align 8, !tbaa !82
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 %209
  store ptr %224, ptr %193, align 8, !tbaa !82
  %225 = getelementptr inbounds nuw i8, ptr %193, i64 16
  %226 = load i64, ptr %225, align 8, !tbaa !55
  %227 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %226, i64 %209), !nosanitize !45
  %228 = extractvalue { i64, i1 } %227, 1, !nosanitize !45
  br i1 %228, label %229, label %230, !prof !46, !nosanitize !45

229:                                              ; preds = %222
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

230:                                              ; preds = %222
  %231 = extractvalue { i64, i1 } %227, 0, !nosanitize !45
  store i64 %231, ptr %225, align 8, !tbaa !55
  %232 = load i32, ptr %3, align 4, !tbaa !75
  br label %233

233:                                              ; preds = %230, %197
  %234 = phi i32 [ %190, %197 ], [ %232, %230 ]
  %235 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 %203), !nosanitize !45
  %236 = extractvalue { i32, i1 } %235, 1, !nosanitize !45
  br i1 %236, label %237, label %238, !prof !46, !nosanitize !45

237:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

238:                                              ; preds = %233
  %239 = extractvalue { i32, i1 } %235, 0, !nosanitize !45
  store i32 %239, ptr %3, align 4, !tbaa !75
  %240 = load i32, ptr %11, align 4, !tbaa !76
  %241 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %239, i32 %240), !nosanitize !45
  %242 = extractvalue { i32, i1 } %241, 1, !nosanitize !45
  br i1 %242, label %243, label %244, !prof !46, !nosanitize !45

243:                                              ; preds = %238
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

244:                                              ; preds = %238
  %245 = extractvalue { i32, i1 } %241, 0, !nosanitize !45
  %246 = icmp ugt i32 %245, 2
  br i1 %246, label %247, label %310

247:                                              ; preds = %244
  %248 = load i32, ptr %7, align 4, !tbaa !73
  %249 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %248, i32 %240), !nosanitize !45
  %250 = extractvalue { i32, i1 } %249, 0, !nosanitize !45
  %251 = extractvalue { i32, i1 } %249, 1, !nosanitize !45
  br i1 %251, label %252, label %253, !prof !46, !nosanitize !45

252:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

253:                                              ; preds = %247
  %254 = load ptr, ptr %8, align 8, !tbaa !34
  %255 = zext i32 %250 to i64
  %256 = getelementptr inbounds nuw i8, ptr %254, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !8
  %258 = zext i8 %257 to i32
  store i32 %258, ptr %16, align 8, !tbaa !80
  %259 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %250, i32 1), !nosanitize !45
  %260 = extractvalue { i32, i1 } %259, 1, !nosanitize !45
  br i1 %260, label %261, label %262, !prof !46, !nosanitize !45

261:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

262:                                              ; preds = %253
  %263 = extractvalue { i32, i1 } %259, 0, !nosanitize !45
  %264 = load i32, ptr %17, align 8, !tbaa !53
  %265 = shl i32 %258, %264
  %266 = zext i32 %263 to i64
  %267 = getelementptr inbounds nuw i8, ptr %254, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !8
  %269 = zext i8 %268 to i32
  %270 = xor i32 %265, %269
  %271 = load i32, ptr %18, align 4, !tbaa !52
  %272 = and i32 %270, %271
  store i32 %272, ptr %16, align 8, !tbaa !80
  br label %273

273:                                              ; preds = %306, %262
  %274 = phi i32 [ %272, %262 ], [ %291, %306 ]
  %275 = phi i32 [ %240, %262 ], [ %302, %306 ]
  %276 = phi i32 [ %250, %262 ], [ %307, %306 ]
  %277 = icmp eq i32 %275, 0
  br i1 %277, label %310, label %278

278:                                              ; preds = %273
  %279 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %276, i32 3), !nosanitize !45
  %280 = extractvalue { i32, i1 } %279, 1, !nosanitize !45
  br i1 %280, label %281, label %282, !prof !46, !nosanitize !45

281:                                              ; preds = %278
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

282:                                              ; preds = %278
  %283 = shl i32 %274, %264
  %284 = extractvalue { i32, i1 } %279, 0, !nosanitize !45
  %285 = add i32 %284, -1
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds nuw i8, ptr %254, i64 %286
  %288 = load i8, ptr %287, align 1, !tbaa !8
  %289 = zext i8 %288 to i32
  %290 = xor i32 %283, %289
  %291 = and i32 %290, %271
  store i32 %291, ptr %16, align 8, !tbaa !80
  %292 = load ptr, ptr %13, align 8, !tbaa !37
  %293 = zext i32 %291 to i64
  %294 = getelementptr inbounds nuw [2 x i8], ptr %292, i64 %293
  %295 = load i16, ptr %294, align 2, !tbaa !62
  %296 = load ptr, ptr %14, align 8, !tbaa !35
  %297 = load i32, ptr %19, align 8, !tbaa !33
  %298 = and i32 %297, %276
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds nuw [2 x i8], ptr %296, i64 %299
  store i16 %295, ptr %300, align 2, !tbaa !62
  %301 = trunc i32 %276 to i16
  store i16 %301, ptr %294, align 2, !tbaa !62
  %302 = add i32 %275, -1
  store i32 %302, ptr %11, align 4, !tbaa !76
  %303 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %239, i32 %302), !nosanitize !45
  %304 = extractvalue { i32, i1 } %303, 1, !nosanitize !45
  br i1 %304, label %305, label %306, !prof !46, !nosanitize !45

305:                                              ; preds = %282
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

306:                                              ; preds = %282
  %307 = add nuw i32 %276, 1
  %308 = extractvalue { i32, i1 } %303, 0, !nosanitize !45
  %309 = icmp ult i32 %308, 3
  br i1 %309, label %310, label %273, !llvm.loop !91

310:                                              ; preds = %306, %273, %244
  %311 = icmp ult i32 %239, 262
  br i1 %311, label %312, label %317

312:                                              ; preds = %310
  %313 = load ptr, ptr %0, align 8, !tbaa !20
  %314 = getelementptr inbounds nuw i8, ptr %313, i64 8
  %315 = load i32, ptr %314, align 8, !tbaa !81
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %36, !llvm.loop !92

317:                                              ; preds = %312, %310, %189
  %318 = phi i32 [ %239, %312 ], [ %239, %310 ], [ %190, %189 ]
  %319 = load i64, ptr %20, align 8, !tbaa !38
  %320 = load i64, ptr %6, align 8, !tbaa !61
  %321 = icmp ult i64 %319, %320
  br i1 %321, label %322, label %358

322:                                              ; preds = %317
  %323 = load i32, ptr %7, align 4, !tbaa !73
  %324 = zext i32 %323 to i64
  %325 = zext i32 %318 to i64
  %326 = add nuw nsw i64 %325, %324
  %327 = icmp ult i64 %319, %326
  br i1 %327, label %328, label %338

328:                                              ; preds = %322
  %329 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %320, i64 %326), !nosanitize !45
  %330 = extractvalue { i64, i1 } %329, 1, !nosanitize !45
  br i1 %330, label %331, label %332, !prof !46, !nosanitize !45

331:                                              ; preds = %328
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

332:                                              ; preds = %328
  %333 = extractvalue { i64, i1 } %329, 0, !nosanitize !45
  %334 = tail call i64 @llvm.umin.i64(i64 %333, i64 258)
  %335 = load ptr, ptr %8, align 8, !tbaa !34
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 %326
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %336, i8 0, i64 %334, i1 false)
  %337 = add nuw nsw i64 %334, %326
  br label %355

338:                                              ; preds = %322
  %339 = add nuw nsw i64 %326, 258
  %340 = icmp ult i64 %319, %339
  br i1 %340, label %341, label %358

341:                                              ; preds = %338
  %342 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %320, i64 %319), !nosanitize !45
  %343 = sub nuw nsw i64 %339, %319
  %344 = extractvalue { i64, i1 } %342, 0, !nosanitize !45
  %345 = tail call i64 @llvm.umin.i64(i64 %343, i64 %344)
  %346 = load ptr, ptr %8, align 8, !tbaa !34
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 %319
  %348 = and i64 %345, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %347, i8 0, i64 %348, i1 false)
  %349 = load i64, ptr %20, align 8, !tbaa !38
  %350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %349, i64 %345), !nosanitize !45
  %351 = extractvalue { i64, i1 } %350, 1, !nosanitize !45
  br i1 %351, label %352, label %353, !prof !46, !nosanitize !45

352:                                              ; preds = %341
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

353:                                              ; preds = %341
  %354 = extractvalue { i64, i1 } %350, 0, !nosanitize !45
  br label %355

355:                                              ; preds = %353, %332
  %356 = phi i64 [ %337, %332 ], [ %354, %353 ]
  store i64 %356, ptr %20, align 8, !tbaa !38
  %357 = load i32, ptr %3, align 4, !tbaa !75
  br label %358

358:                                              ; preds = %355, %338, %317
  %359 = phi i32 [ %318, %317 ], [ %318, %338 ], [ %357, %355 ]
  %360 = icmp ult i32 %359, 259
  %361 = and i1 %21, %360
  br i1 %361, label %762, label %362

362:                                              ; preds = %358
  %363 = icmp eq i32 %359, 0
  br i1 %363, label %631, label %364

364:                                              ; preds = %362
  store i32 0, ptr %4, align 8, !tbaa !78
  %365 = icmp ugt i32 %359, 2
  %366 = load i32, ptr %7, align 4, !tbaa !73
  br i1 %365, label %367, label %514

367:                                              ; preds = %364, %31
  %368 = phi i32 [ %32, %31 ], [ %366, %364 ]
  %369 = phi i32 [ %29, %31 ], [ %359, %364 ]
  %370 = icmp eq i32 %368, 0
  br i1 %370, label %514, label %371

371:                                              ; preds = %367
  %372 = load ptr, ptr %8, align 8, !tbaa !34
  %373 = zext i32 %368 to i64
  %374 = getelementptr inbounds nuw i8, ptr %372, i64 %373
  %375 = getelementptr inbounds i8, ptr %374, i64 -1
  %376 = load i8, ptr %375, align 1, !tbaa !8
  %377 = load i8, ptr %374, align 1, !tbaa !8
  %378 = icmp eq i8 %376, %377
  br i1 %378, label %379, label %514

379:                                              ; preds = %371
  %380 = getelementptr inbounds nuw i8, ptr %374, i64 1
  %381 = load i8, ptr %380, align 1, !tbaa !8
  %382 = icmp eq i8 %376, %381
  br i1 %382, label %383, label %514

383:                                              ; preds = %379
  %384 = getelementptr inbounds nuw i8, ptr %374, i64 2
  %385 = load i8, ptr %384, align 1, !tbaa !8
  %386 = icmp eq i8 %376, %385
  br i1 %386, label %387, label %514

387:                                              ; preds = %383
  %388 = getelementptr inbounds nuw i8, ptr %374, i64 258
  br label %389

389:                                              ; preds = %419, %387
  %390 = phi i64 [ 2, %387 ], [ %420, %419 ]
  %391 = getelementptr inbounds nuw i8, ptr %374, i64 %390
  %392 = getelementptr inbounds nuw i8, ptr %391, i64 1
  %393 = load i8, ptr %392, align 1, !tbaa !8
  %394 = icmp eq i8 %376, %393
  br i1 %394, label %395, label %426

395:                                              ; preds = %389
  %396 = getelementptr inbounds nuw i8, ptr %391, i64 2
  %397 = load i8, ptr %396, align 1, !tbaa !8
  %398 = icmp eq i8 %376, %397
  br i1 %398, label %399, label %428

399:                                              ; preds = %395
  %400 = getelementptr inbounds nuw i8, ptr %391, i64 3
  %401 = load i8, ptr %400, align 1, !tbaa !8
  %402 = icmp eq i8 %376, %401
  br i1 %402, label %403, label %430

403:                                              ; preds = %399
  %404 = getelementptr inbounds nuw i8, ptr %391, i64 4
  %405 = load i8, ptr %404, align 1, !tbaa !8
  %406 = icmp eq i8 %376, %405
  br i1 %406, label %407, label %432

407:                                              ; preds = %403
  %408 = getelementptr inbounds nuw i8, ptr %391, i64 5
  %409 = load i8, ptr %408, align 1, !tbaa !8
  %410 = icmp eq i8 %376, %409
  br i1 %410, label %411, label %434

411:                                              ; preds = %407
  %412 = getelementptr inbounds nuw i8, ptr %391, i64 6
  %413 = load i8, ptr %412, align 1, !tbaa !8
  %414 = icmp eq i8 %376, %413
  br i1 %414, label %415, label %436

415:                                              ; preds = %411
  %416 = getelementptr inbounds nuw i8, ptr %391, i64 7
  %417 = load i8, ptr %416, align 1, !tbaa !8
  %418 = icmp eq i8 %376, %417
  br i1 %418, label %419, label %438

419:                                              ; preds = %415
  %420 = add nuw nsw i64 %390, 8
  %421 = getelementptr inbounds nuw i8, ptr %374, i64 %420
  %422 = load i8, ptr %421, align 1, !tbaa !8
  %423 = icmp eq i8 %376, %422
  %424 = icmp samesign ult i64 %390, 250
  %425 = select i1 %423, i1 %424, i1 false
  br i1 %425, label %389, label %440, !llvm.loop !144

426:                                              ; preds = %389
  %427 = getelementptr inbounds nuw i8, ptr %391, i64 1
  br label %442

428:                                              ; preds = %395
  %429 = getelementptr inbounds nuw i8, ptr %391, i64 2
  br label %442

430:                                              ; preds = %399
  %431 = getelementptr inbounds nuw i8, ptr %391, i64 3
  br label %442

432:                                              ; preds = %403
  %433 = getelementptr inbounds nuw i8, ptr %391, i64 4
  br label %442

434:                                              ; preds = %407
  %435 = getelementptr inbounds nuw i8, ptr %391, i64 5
  br label %442

436:                                              ; preds = %411
  %437 = getelementptr inbounds nuw i8, ptr %391, i64 6
  br label %442

438:                                              ; preds = %415
  %439 = getelementptr inbounds nuw i8, ptr %391, i64 7
  br label %442

440:                                              ; preds = %419
  %441 = getelementptr inbounds nuw i8, ptr %374, i64 %420
  br label %442

442:                                              ; preds = %440, %438, %436, %434, %432, %430, %428, %426
  %443 = phi ptr [ %429, %428 ], [ %431, %430 ], [ %427, %426 ], [ %439, %438 ], [ %437, %436 ], [ %435, %434 ], [ %433, %432 ], [ %441, %440 ]
  %444 = ptrtoint ptr %388 to i64
  %445 = ptrtoint ptr %443 to i64
  %446 = sub i64 %444, %445
  %447 = trunc i64 %446 to i32
  %448 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %447), !nosanitize !45
  %449 = extractvalue { i32, i1 } %448, 1, !nosanitize !45
  br i1 %449, label %450, label %451, !prof !46, !nosanitize !45

450:                                              ; preds = %442
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

451:                                              ; preds = %442
  %452 = extractvalue { i32, i1 } %448, 0, !nosanitize !45
  %453 = tail call i32 @llvm.umin.i32(i32 %452, i32 %369)
  store i32 %453, ptr %4, align 8
  %454 = icmp ugt i32 %453, 2
  %455 = load i32, ptr %23, align 4, !tbaa !139
  br i1 %454, label %456, label %517

456:                                              ; preds = %451
  %457 = trunc i32 %453 to i8
  %458 = add i8 %457, -3
  %459 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %455, i32 1), !nosanitize !45
  %460 = extractvalue { i32, i1 } %459, 1, !nosanitize !45
  br i1 %460, label %461, label %462, !prof !46, !nosanitize !45

461:                                              ; preds = %456
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

462:                                              ; preds = %456
  %463 = extractvalue { i32, i1 } %459, 0, !nosanitize !45
  %464 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %463, ptr %23, align 4, !tbaa !139
  %465 = zext i32 %455 to i64
  %466 = getelementptr inbounds nuw i8, ptr %464, i64 %465
  store i8 1, ptr %466, align 1, !tbaa !8
  %467 = load i32, ptr %23, align 4, !tbaa !139
  %468 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %467, i32 1), !nosanitize !45
  %469 = extractvalue { i32, i1 } %468, 1, !nosanitize !45
  br i1 %469, label %470, label %471, !prof !46, !nosanitize !45

470:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

471:                                              ; preds = %462
  %472 = extractvalue { i32, i1 } %468, 0, !nosanitize !45
  %473 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %472, ptr %23, align 4, !tbaa !139
  %474 = zext i32 %467 to i64
  %475 = getelementptr inbounds nuw i8, ptr %473, i64 %474
  store i8 0, ptr %475, align 1, !tbaa !8
  %476 = load i32, ptr %23, align 4, !tbaa !139
  %477 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %476, i32 1), !nosanitize !45
  %478 = extractvalue { i32, i1 } %477, 1, !nosanitize !45
  br i1 %478, label %479, label %480, !prof !46, !nosanitize !45

479:                                              ; preds = %471
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

480:                                              ; preds = %471
  %481 = extractvalue { i32, i1 } %477, 0, !nosanitize !45
  %482 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %481, ptr %23, align 4, !tbaa !139
  %483 = zext i32 %476 to i64
  %484 = getelementptr inbounds nuw i8, ptr %482, i64 %483
  store i8 %458, ptr %484, align 1, !tbaa !8
  %485 = zext i8 %458 to i64
  %486 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %485
  %487 = load i8, ptr %486, align 1, !tbaa !8
  %488 = zext i8 %487 to i64
  %489 = getelementptr [4 x i8], ptr %26, i64 %488
  %490 = load i16, ptr %489, align 4, !tbaa !8
  %491 = add i16 %490, 1
  store i16 %491, ptr %489, align 4, !tbaa !8
  %492 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %493 = zext i8 %492 to i64
  %494 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %493
  %495 = load i16, ptr %494, align 4, !tbaa !8
  %496 = add i16 %495, 1
  store i16 %496, ptr %494, align 4, !tbaa !8
  %497 = load i32, ptr %23, align 4, !tbaa !139
  %498 = load i32, ptr %25, align 8, !tbaa !47
  %499 = icmp eq i32 %497, %498
  %500 = load i32, ptr %4, align 8, !tbaa !78
  %501 = load i32, ptr %3, align 4, !tbaa !75
  %502 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %501, i32 %500), !nosanitize !45
  %503 = extractvalue { i32, i1 } %502, 1, !nosanitize !45
  br i1 %503, label %504, label %505, !prof !46, !nosanitize !45

504:                                              ; preds = %480
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

505:                                              ; preds = %480
  %506 = extractvalue { i32, i1 } %502, 0, !nosanitize !45
  store i32 %506, ptr %3, align 4, !tbaa !75
  %507 = load i32, ptr %7, align 4, !tbaa !73
  %508 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %507, i32 %500), !nosanitize !45
  %509 = extractvalue { i32, i1 } %508, 1, !nosanitize !45
  br i1 %509, label %510, label %511, !prof !46, !nosanitize !45

510:                                              ; preds = %505
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

511:                                              ; preds = %505
  %512 = extractvalue { i32, i1 } %508, 0, !nosanitize !45
  store i32 %512, ptr %7, align 4, !tbaa !73
  store i32 0, ptr %4, align 8, !tbaa !78
  br i1 %499, label %569, label %513

513:                                              ; preds = %626, %567, %511
  br label %28

514:                                              ; preds = %383, %379, %371, %367, %364
  %515 = phi i32 [ %366, %364 ], [ %368, %367 ], [ %368, %383 ], [ %368, %379 ], [ %368, %371 ]
  %516 = load i32, ptr %23, align 4, !tbaa !139
  br label %517

517:                                              ; preds = %514, %451
  %518 = phi i32 [ %455, %451 ], [ %516, %514 ]
  %519 = phi i32 [ %368, %451 ], [ %515, %514 ]
  %520 = load ptr, ptr %8, align 8, !tbaa !34
  %521 = zext i32 %519 to i64
  %522 = getelementptr inbounds nuw i8, ptr %520, i64 %521
  %523 = load i8, ptr %522, align 1, !tbaa !8
  %524 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %518, i32 1), !nosanitize !45
  %525 = extractvalue { i32, i1 } %524, 1, !nosanitize !45
  br i1 %525, label %526, label %527, !prof !46, !nosanitize !45

526:                                              ; preds = %517
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

527:                                              ; preds = %517
  %528 = extractvalue { i32, i1 } %524, 0, !nosanitize !45
  %529 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %528, ptr %23, align 4, !tbaa !139
  %530 = zext i32 %518 to i64
  %531 = getelementptr inbounds nuw i8, ptr %529, i64 %530
  store i8 0, ptr %531, align 1, !tbaa !8
  %532 = load i32, ptr %23, align 4, !tbaa !139
  %533 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %532, i32 1), !nosanitize !45
  %534 = extractvalue { i32, i1 } %533, 1, !nosanitize !45
  br i1 %534, label %535, label %536, !prof !46, !nosanitize !45

535:                                              ; preds = %527
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

536:                                              ; preds = %527
  %537 = extractvalue { i32, i1 } %533, 0, !nosanitize !45
  %538 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %537, ptr %23, align 4, !tbaa !139
  %539 = zext i32 %532 to i64
  %540 = getelementptr inbounds nuw i8, ptr %538, i64 %539
  store i8 0, ptr %540, align 1, !tbaa !8
  %541 = load i32, ptr %23, align 4, !tbaa !139
  %542 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %541, i32 1), !nosanitize !45
  %543 = extractvalue { i32, i1 } %542, 1, !nosanitize !45
  br i1 %543, label %544, label %545, !prof !46, !nosanitize !45

544:                                              ; preds = %536
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

545:                                              ; preds = %536
  %546 = extractvalue { i32, i1 } %542, 0, !nosanitize !45
  %547 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %546, ptr %23, align 4, !tbaa !139
  %548 = zext i32 %541 to i64
  %549 = getelementptr inbounds nuw i8, ptr %547, i64 %548
  store i8 %523, ptr %549, align 1, !tbaa !8
  %550 = zext i8 %523 to i64
  %551 = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %550
  %552 = load i16, ptr %551, align 4, !tbaa !8
  %553 = add i16 %552, 1
  store i16 %553, ptr %551, align 4, !tbaa !8
  %554 = load i32, ptr %23, align 4, !tbaa !139
  %555 = load i32, ptr %25, align 8, !tbaa !47
  %556 = icmp eq i32 %554, %555
  %557 = load i32, ptr %3, align 4, !tbaa !75
  %558 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %557, i32 1), !nosanitize !45
  %559 = extractvalue { i32, i1 } %558, 1, !nosanitize !45
  br i1 %559, label %560, label %561, !prof !46, !nosanitize !45

560:                                              ; preds = %545
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

561:                                              ; preds = %545
  %562 = extractvalue { i32, i1 } %558, 0, !nosanitize !45
  store i32 %562, ptr %3, align 4, !tbaa !75
  %563 = load i32, ptr %7, align 4, !tbaa !73
  %564 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %563, i32 1), !nosanitize !45
  %565 = extractvalue { i32, i1 } %564, 1, !nosanitize !45
  br i1 %565, label %566, label %567, !prof !46, !nosanitize !45

566:                                              ; preds = %561
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

567:                                              ; preds = %561
  %568 = extractvalue { i32, i1 } %564, 0, !nosanitize !45
  store i32 %568, ptr %7, align 4, !tbaa !73
  br i1 %556, label %569, label %513

569:                                              ; preds = %567, %511
  %570 = phi i32 [ %512, %511 ], [ %568, %567 ]
  %571 = load i64, ptr %10, align 8, !tbaa !74
  %572 = icmp sgt i64 %571, -1
  br i1 %572, label %573, label %577

573:                                              ; preds = %569
  %574 = load ptr, ptr %8, align 8, !tbaa !34
  %575 = and i64 %571, 4294967295
  %576 = getelementptr inbounds nuw i8, ptr %574, i64 %575
  br label %577

577:                                              ; preds = %573, %569
  %578 = phi ptr [ %576, %573 ], [ null, %569 ]
  %579 = zext i32 %570 to i64
  %580 = sub nsw i64 %579, %571
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %578, i64 noundef %580, i32 noundef 0) #11
  %581 = load i32, ptr %7, align 4, !tbaa !73
  %582 = zext i32 %581 to i64
  store i64 %582, ptr %10, align 8, !tbaa !74
  %583 = load ptr, ptr %0, align 8, !tbaa !20
  %584 = getelementptr inbounds nuw i8, ptr %583, i64 56
  %585 = load ptr, ptr %584, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %585) #11
  %586 = getelementptr inbounds nuw i8, ptr %585, i64 40
  %587 = load i64, ptr %586, align 8, !tbaa !57
  %588 = getelementptr inbounds nuw i8, ptr %583, i64 32
  %589 = load i32, ptr %588, align 8, !tbaa !107
  %590 = zext i32 %589 to i64
  %591 = tail call i64 @llvm.umin.i64(i64 %587, i64 %590)
  %592 = trunc nuw i64 %591 to i32
  %593 = icmp eq i64 %591, 0
  br i1 %593, label %626, label %594

594:                                              ; preds = %577
  %595 = getelementptr inbounds nuw i8, ptr %583, i64 24
  %596 = load ptr, ptr %595, align 8, !tbaa !106
  %597 = getelementptr inbounds nuw i8, ptr %585, i64 32
  %598 = load ptr, ptr %597, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %596, ptr align 1 %598, i64 %591, i1 false)
  %599 = load ptr, ptr %595, align 8, !tbaa !106
  %600 = getelementptr inbounds nuw i8, ptr %599, i64 %591
  store ptr %600, ptr %595, align 8, !tbaa !106
  %601 = load ptr, ptr %597, align 8, !tbaa !58
  %602 = getelementptr inbounds nuw i8, ptr %601, i64 %591
  store ptr %602, ptr %597, align 8, !tbaa !58
  %603 = getelementptr inbounds nuw i8, ptr %583, i64 40
  %604 = load i64, ptr %603, align 8, !tbaa !108
  %605 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %604, i64 %591), !nosanitize !45
  %606 = extractvalue { i64, i1 } %605, 1, !nosanitize !45
  br i1 %606, label %607, label %608, !prof !46, !nosanitize !45

607:                                              ; preds = %594
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

608:                                              ; preds = %594
  %609 = extractvalue { i64, i1 } %605, 0, !nosanitize !45
  store i64 %609, ptr %603, align 8, !tbaa !108
  %610 = load i32, ptr %588, align 8, !tbaa !107
  %611 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %610, i32 %592), !nosanitize !45
  %612 = extractvalue { i32, i1 } %611, 1, !nosanitize !45
  br i1 %612, label %613, label %614, !prof !46, !nosanitize !45

613:                                              ; preds = %608
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

614:                                              ; preds = %608
  %615 = extractvalue { i32, i1 } %611, 0, !nosanitize !45
  store i32 %615, ptr %588, align 8, !tbaa !107
  %616 = load i64, ptr %586, align 8, !tbaa !57
  %617 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %616, i64 %591), !nosanitize !45
  %618 = extractvalue { i64, i1 } %617, 1, !nosanitize !45
  br i1 %618, label %619, label %620, !prof !46, !nosanitize !45

619:                                              ; preds = %614
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

620:                                              ; preds = %614
  %621 = extractvalue { i64, i1 } %617, 0, !nosanitize !45
  store i64 %621, ptr %586, align 8, !tbaa !57
  %622 = icmp eq i64 %621, 0
  br i1 %622, label %623, label %626

623:                                              ; preds = %620
  %624 = getelementptr inbounds nuw i8, ptr %585, i64 16
  %625 = load ptr, ptr %624, align 8, !tbaa !40
  store ptr %625, ptr %597, align 8, !tbaa !58
  br label %626

626:                                              ; preds = %623, %620, %577
  %627 = load ptr, ptr %0, align 8, !tbaa !20
  %628 = getelementptr inbounds nuw i8, ptr %627, i64 32
  %629 = load i32, ptr %628, align 8, !tbaa !107
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %762, label %513

631:                                              ; preds = %362
  store i32 0, ptr %11, align 4, !tbaa !76
  %632 = icmp eq i32 %1, 4
  br i1 %632, label %633, label %696

633:                                              ; preds = %631
  %634 = load i64, ptr %10, align 8, !tbaa !74
  %635 = icmp sgt i64 %634, -1
  br i1 %635, label %636, label %640

636:                                              ; preds = %633
  %637 = load ptr, ptr %8, align 8, !tbaa !34
  %638 = and i64 %634, 4294967295
  %639 = getelementptr inbounds nuw i8, ptr %637, i64 %638
  br label %640

640:                                              ; preds = %636, %633
  %641 = phi ptr [ %639, %636 ], [ null, %633 ]
  %642 = load i32, ptr %7, align 4, !tbaa !73
  %643 = zext i32 %642 to i64
  %644 = sub nsw i64 %643, %634
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %641, i64 noundef %644, i32 noundef 1) #11
  %645 = load i32, ptr %7, align 4, !tbaa !73
  %646 = zext i32 %645 to i64
  store i64 %646, ptr %10, align 8, !tbaa !74
  %647 = load ptr, ptr %0, align 8, !tbaa !20
  %648 = getelementptr inbounds nuw i8, ptr %647, i64 56
  %649 = load ptr, ptr %648, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %649) #11
  %650 = getelementptr inbounds nuw i8, ptr %649, i64 40
  %651 = load i64, ptr %650, align 8, !tbaa !57
  %652 = getelementptr inbounds nuw i8, ptr %647, i64 32
  %653 = load i32, ptr %652, align 8, !tbaa !107
  %654 = zext i32 %653 to i64
  %655 = tail call i64 @llvm.umin.i64(i64 %651, i64 %654)
  %656 = trunc nuw i64 %655 to i32
  %657 = icmp eq i64 %655, 0
  br i1 %657, label %690, label %658

658:                                              ; preds = %640
  %659 = getelementptr inbounds nuw i8, ptr %647, i64 24
  %660 = load ptr, ptr %659, align 8, !tbaa !106
  %661 = getelementptr inbounds nuw i8, ptr %649, i64 32
  %662 = load ptr, ptr %661, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %660, ptr align 1 %662, i64 %655, i1 false)
  %663 = load ptr, ptr %659, align 8, !tbaa !106
  %664 = getelementptr inbounds nuw i8, ptr %663, i64 %655
  store ptr %664, ptr %659, align 8, !tbaa !106
  %665 = load ptr, ptr %661, align 8, !tbaa !58
  %666 = getelementptr inbounds nuw i8, ptr %665, i64 %655
  store ptr %666, ptr %661, align 8, !tbaa !58
  %667 = getelementptr inbounds nuw i8, ptr %647, i64 40
  %668 = load i64, ptr %667, align 8, !tbaa !108
  %669 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %668, i64 %655), !nosanitize !45
  %670 = extractvalue { i64, i1 } %669, 1, !nosanitize !45
  br i1 %670, label %671, label %672, !prof !46, !nosanitize !45

671:                                              ; preds = %658
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

672:                                              ; preds = %658
  %673 = extractvalue { i64, i1 } %669, 0, !nosanitize !45
  store i64 %673, ptr %667, align 8, !tbaa !108
  %674 = load i32, ptr %652, align 8, !tbaa !107
  %675 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %674, i32 %656), !nosanitize !45
  %676 = extractvalue { i32, i1 } %675, 1, !nosanitize !45
  br i1 %676, label %677, label %678, !prof !46, !nosanitize !45

677:                                              ; preds = %672
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

678:                                              ; preds = %672
  %679 = extractvalue { i32, i1 } %675, 0, !nosanitize !45
  store i32 %679, ptr %652, align 8, !tbaa !107
  %680 = load i64, ptr %650, align 8, !tbaa !57
  %681 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %680, i64 %655), !nosanitize !45
  %682 = extractvalue { i64, i1 } %681, 1, !nosanitize !45
  br i1 %682, label %683, label %684, !prof !46, !nosanitize !45

683:                                              ; preds = %678
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

684:                                              ; preds = %678
  %685 = extractvalue { i64, i1 } %681, 0, !nosanitize !45
  store i64 %685, ptr %650, align 8, !tbaa !57
  %686 = icmp eq i64 %685, 0
  br i1 %686, label %687, label %690

687:                                              ; preds = %684
  %688 = getelementptr inbounds nuw i8, ptr %649, i64 16
  %689 = load ptr, ptr %688, align 8, !tbaa !40
  store ptr %689, ptr %661, align 8, !tbaa !58
  br label %690

690:                                              ; preds = %687, %684, %640
  %691 = load ptr, ptr %0, align 8, !tbaa !20
  %692 = getelementptr inbounds nuw i8, ptr %691, i64 32
  %693 = load i32, ptr %692, align 8, !tbaa !107
  %694 = icmp eq i32 %693, 0
  %695 = select i1 %694, i32 2, i32 3
  br label %762

696:                                              ; preds = %631
  %697 = load i32, ptr %23, align 4, !tbaa !139
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %761, label %699

699:                                              ; preds = %696
  %700 = load i64, ptr %10, align 8, !tbaa !74
  %701 = icmp sgt i64 %700, -1
  br i1 %701, label %702, label %706

702:                                              ; preds = %699
  %703 = load ptr, ptr %8, align 8, !tbaa !34
  %704 = and i64 %700, 4294967295
  %705 = getelementptr inbounds nuw i8, ptr %703, i64 %704
  br label %706

706:                                              ; preds = %702, %699
  %707 = phi ptr [ %705, %702 ], [ null, %699 ]
  %708 = load i32, ptr %7, align 4, !tbaa !73
  %709 = zext i32 %708 to i64
  %710 = sub nsw i64 %709, %700
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %707, i64 noundef %710, i32 noundef 0) #11
  %711 = load i32, ptr %7, align 4, !tbaa !73
  %712 = zext i32 %711 to i64
  store i64 %712, ptr %10, align 8, !tbaa !74
  %713 = load ptr, ptr %0, align 8, !tbaa !20
  %714 = getelementptr inbounds nuw i8, ptr %713, i64 56
  %715 = load ptr, ptr %714, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %715) #11
  %716 = getelementptr inbounds nuw i8, ptr %715, i64 40
  %717 = load i64, ptr %716, align 8, !tbaa !57
  %718 = getelementptr inbounds nuw i8, ptr %713, i64 32
  %719 = load i32, ptr %718, align 8, !tbaa !107
  %720 = zext i32 %719 to i64
  %721 = tail call i64 @llvm.umin.i64(i64 %717, i64 %720)
  %722 = trunc nuw i64 %721 to i32
  %723 = icmp eq i64 %721, 0
  br i1 %723, label %756, label %724

724:                                              ; preds = %706
  %725 = getelementptr inbounds nuw i8, ptr %713, i64 24
  %726 = load ptr, ptr %725, align 8, !tbaa !106
  %727 = getelementptr inbounds nuw i8, ptr %715, i64 32
  %728 = load ptr, ptr %727, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %726, ptr align 1 %728, i64 %721, i1 false)
  %729 = load ptr, ptr %725, align 8, !tbaa !106
  %730 = getelementptr inbounds nuw i8, ptr %729, i64 %721
  store ptr %730, ptr %725, align 8, !tbaa !106
  %731 = load ptr, ptr %727, align 8, !tbaa !58
  %732 = getelementptr inbounds nuw i8, ptr %731, i64 %721
  store ptr %732, ptr %727, align 8, !tbaa !58
  %733 = getelementptr inbounds nuw i8, ptr %713, i64 40
  %734 = load i64, ptr %733, align 8, !tbaa !108
  %735 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %734, i64 %721), !nosanitize !45
  %736 = extractvalue { i64, i1 } %735, 1, !nosanitize !45
  br i1 %736, label %737, label %738, !prof !46, !nosanitize !45

737:                                              ; preds = %724
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

738:                                              ; preds = %724
  %739 = extractvalue { i64, i1 } %735, 0, !nosanitize !45
  store i64 %739, ptr %733, align 8, !tbaa !108
  %740 = load i32, ptr %718, align 8, !tbaa !107
  %741 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %740, i32 %722), !nosanitize !45
  %742 = extractvalue { i32, i1 } %741, 1, !nosanitize !45
  br i1 %742, label %743, label %744, !prof !46, !nosanitize !45

743:                                              ; preds = %738
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

744:                                              ; preds = %738
  %745 = extractvalue { i32, i1 } %741, 0, !nosanitize !45
  store i32 %745, ptr %718, align 8, !tbaa !107
  %746 = load i64, ptr %716, align 8, !tbaa !57
  %747 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %746, i64 %721), !nosanitize !45
  %748 = extractvalue { i64, i1 } %747, 1, !nosanitize !45
  br i1 %748, label %749, label %750, !prof !46, !nosanitize !45

749:                                              ; preds = %744
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

750:                                              ; preds = %744
  %751 = extractvalue { i64, i1 } %747, 0, !nosanitize !45
  store i64 %751, ptr %716, align 8, !tbaa !57
  %752 = icmp eq i64 %751, 0
  br i1 %752, label %753, label %756

753:                                              ; preds = %750
  %754 = getelementptr inbounds nuw i8, ptr %715, i64 16
  %755 = load ptr, ptr %754, align 8, !tbaa !40
  store ptr %755, ptr %727, align 8, !tbaa !58
  br label %756

756:                                              ; preds = %753, %750, %706
  %757 = load ptr, ptr %0, align 8, !tbaa !20
  %758 = getelementptr inbounds nuw i8, ptr %757, i64 32
  %759 = load i32, ptr %758, align 8, !tbaa !107
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %762, label %761

761:                                              ; preds = %756, %696
  br label %762

762:                                              ; preds = %761, %756, %690, %626, %358
  %763 = phi i32 [ 1, %761 ], [ %695, %690 ], [ 0, %756 ], [ 0, %358 ], [ 0, %626 ]
  ret i32 %763
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
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %188, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %188

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
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
  br i1 %68, label %188, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %71 = load ptr, ptr %70, align 8, !tbaa !17
  %72 = icmp eq ptr %71, null
  br i1 %72, label %188, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %32, align 8, !tbaa !19
  %75 = icmp eq ptr %74, null
  br i1 %75, label %188, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %74, align 8, !tbaa !20
  %78 = icmp eq ptr %77, %0
  br i1 %78, label %79, label %188

79:                                               ; preds = %76
  %80 = getelementptr inbounds nuw i8, ptr %74, i64 8
  %81 = load i32, ptr %80, align 8, !tbaa !29
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
  tail call void %71(ptr noundef %87, ptr noundef nonnull %84) #11, !inline_history !54
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
  tail call void %91(ptr noundef %97, ptr noundef nonnull %94) #11, !inline_history !54
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
  tail call void %101(ptr noundef %107, ptr noundef nonnull %104) #11, !inline_history !54
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
  tail call void %111(ptr noundef %117, ptr noundef nonnull %114) #11, !inline_history !54
  %118 = load ptr, ptr %70, align 8, !tbaa !17
  %119 = load ptr, ptr %32, align 8, !tbaa !19
  br label %120

120:                                              ; preds = %116, %110
  %121 = phi ptr [ %119, %116 ], [ %112, %110 ]
  %122 = phi ptr [ %118, %116 ], [ %111, %110 ]
  %123 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %122(ptr noundef %123, ptr noundef %121) #11, !inline_history !54
  store ptr null, ptr %32, align 8, !tbaa !19
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
  %133 = load i32, ptr %132, align 8, !tbaa !63
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %124
  %136 = load i32, ptr %35, align 8, !tbaa !32
  br label %149

137:                                              ; preds = %124
  %138 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %139 = load i32, ptr %138, align 4, !tbaa !73
  %140 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  %141 = load i32, ptr %140, align 4, !tbaa !76
  %142 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %139, i32 %141), !nosanitize !45
  %143 = extractvalue { i32, i1 } %142, 1, !nosanitize !45
  br i1 %143, label %144, label %145, !prof !46, !nosanitize !45

144:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

145:                                              ; preds = %137
  %146 = extractvalue { i32, i1 } %142, 0, !nosanitize !45
  %147 = load i32, ptr %35, align 8, !tbaa !32
  %148 = tail call i32 @llvm.umin.i32(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %135
  %150 = phi i32 [ %148, %145 ], [ %136, %135 ]
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
  %161 = load ptr, ptr %160, align 8, !tbaa !58
  %162 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %163 = load ptr, ptr %162, align 8, !tbaa !40
  %164 = ptrtoint ptr %161 to i64
  %165 = ptrtoint ptr %163 to i64
  %166 = sub i64 %164, %165
  %167 = getelementptr inbounds i8, ptr %159, i64 %166
  %168 = getelementptr inbounds nuw i8, ptr %29, i64 32
  store ptr %167, ptr %168, align 8, !tbaa !58
  %169 = load ptr, ptr %160, align 8, !tbaa !58
  %170 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %171 = load i64, ptr %170, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %167, ptr align 1 %169, i64 %171, i1 false)
  %172 = load ptr, ptr %55, align 8, !tbaa !40
  %173 = load i32, ptr %52, align 8, !tbaa !39
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds nuw i8, ptr %172, i64 %174
  %176 = getelementptr inbounds nuw i8, ptr %29, i64 5888
  store ptr %175, ptr %176, align 8, !tbaa !44
  %177 = getelementptr inbounds nuw i8, ptr %14, i64 5888
  %178 = load ptr, ptr %177, align 8, !tbaa !44
  %179 = getelementptr inbounds nuw i8, ptr %14, i64 5900
  %180 = load i32, ptr %179, align 4, !tbaa !139
  %181 = zext i32 %180 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %175, ptr align 1 %178, i64 %181, i1 false)
  %182 = getelementptr inbounds nuw i8, ptr %29, i64 212
  %183 = getelementptr inbounds nuw i8, ptr %29, i64 2904
  store ptr %182, ptr %183, align 8, !tbaa !145
  %184 = getelementptr inbounds nuw i8, ptr %29, i64 2504
  %185 = getelementptr inbounds nuw i8, ptr %29, i64 2928
  store ptr %184, ptr %185, align 8, !tbaa !146
  %186 = getelementptr inbounds nuw i8, ptr %29, i64 2748
  %187 = getelementptr inbounds nuw i8, ptr %29, i64 2952
  store ptr %186, ptr %187, align 8, !tbaa !147
  br label %188

188:                                              ; preds = %149, %120, %79, %76, %73, %69, %66, %24, %22, %19, %16, %12, %8, %4, %2
  %189 = phi i32 [ 0, %149 ], [ -2, %22 ], [ -4, %120 ], [ -4, %24 ], [ -4, %66 ], [ -4, %69 ], [ -4, %73 ], [ -4, %76 ], [ -4, %79 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
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
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 184
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

33:                                               ; preds = %768, %2
  %34 = load i32, ptr %3, align 4, !tbaa !75
  %35 = icmp ult i32 %34, 262
  br i1 %35, label %36, label %369

36:                                               ; preds = %33
  %37 = load i32, ptr %4, align 8, !tbaa !32
  %38 = zext i32 %37 to i64
  br label %39

39:                                               ; preds = %315, %36
  %40 = phi i32 [ %242, %315 ], [ %34, %36 ]
  %41 = load i64, ptr %5, align 8, !tbaa !61
  %42 = zext nneg i32 %40 to i64
  %43 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %41, i64 %42), !nosanitize !45
  %44 = extractvalue { i64, i1 } %43, 1, !nosanitize !45
  br i1 %44, label %45, label %46, !prof !46, !nosanitize !45

45:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

46:                                               ; preds = %39
  %47 = extractvalue { i64, i1 } %43, 0, !nosanitize !45
  %48 = load i32, ptr %6, align 4, !tbaa !73
  %49 = zext i32 %48 to i64
  %50 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %47, i64 %49), !nosanitize !45
  %51 = extractvalue { i64, i1 } %50, 1, !nosanitize !45
  br i1 %51, label %52, label %53, !prof !46, !nosanitize !45

52:                                               ; preds = %46
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

53:                                               ; preds = %46
  %54 = extractvalue { i64, i1 } %50, 0, !nosanitize !45
  %55 = trunc i64 %54 to i32
  %56 = load i32, ptr %4, align 8, !tbaa !32
  %57 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %56, i32 262), !nosanitize !45
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !45
  br i1 %58, label %59, label %60, !prof !46, !nosanitize !45

59:                                               ; preds = %53
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

60:                                               ; preds = %53
  %61 = extractvalue { i32, i1 } %57, 0, !nosanitize !45
  %62 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %37, i32 %61), !nosanitize !45
  %63 = extractvalue { i32, i1 } %62, 1, !nosanitize !45
  br i1 %63, label %64, label %65, !prof !46, !nosanitize !45

64:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

65:                                               ; preds = %60
  %66 = extractvalue { i32, i1 } %62, 0, !nosanitize !45
  %67 = icmp ult i32 %48, %66
  br i1 %67, label %192, label %68

68:                                               ; preds = %65
  %69 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %37, i32 %55), !nosanitize !45
  %70 = extractvalue { i32, i1 } %69, 1, !nosanitize !45
  br i1 %70, label %71, label %72, !prof !46, !nosanitize !45

71:                                               ; preds = %68
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

72:                                               ; preds = %68
  %73 = extractvalue { i32, i1 } %69, 0, !nosanitize !45
  %74 = load ptr, ptr %7, align 8, !tbaa !34
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 %38
  %76 = zext i32 %73 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %74, ptr align 1 %75, i64 %76, i1 false)
  %77 = load i32, ptr %8, align 8, !tbaa !83
  %78 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %77, i32 %37), !nosanitize !45
  %79 = extractvalue { i32, i1 } %78, 1, !nosanitize !45
  br i1 %79, label %80, label %81, !prof !46, !nosanitize !45

80:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

81:                                               ; preds = %72
  %82 = extractvalue { i32, i1 } %78, 0, !nosanitize !45
  store i32 %82, ptr %8, align 8, !tbaa !83
  %83 = load i32, ptr %6, align 4, !tbaa !73
  %84 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %83, i32 %37), !nosanitize !45
  %85 = extractvalue { i32, i1 } %84, 1, !nosanitize !45
  br i1 %85, label %86, label %87, !prof !46, !nosanitize !45

86:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

87:                                               ; preds = %81
  %88 = extractvalue { i32, i1 } %84, 0, !nosanitize !45
  store i32 %88, ptr %6, align 4, !tbaa !73
  %89 = load i64, ptr %9, align 8, !tbaa !74
  %90 = sub nsw i64 %89, %38
  store i64 %90, ptr %9, align 8, !tbaa !74
  %91 = load i32, ptr %10, align 4, !tbaa !76
  %92 = icmp ugt i32 %91, %88
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 %88, ptr %10, align 4, !tbaa !76
  br label %94

94:                                               ; preds = %93, %87
  %95 = load i32, ptr %4, align 8, !tbaa !32
  %96 = load i32, ptr %11, align 4, !tbaa !36
  %97 = load ptr, ptr %12, align 8, !tbaa !37
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds nuw [2 x i8], ptr %97, i64 %98
  %100 = icmp eq i32 %96, 0
  br i1 %100, label %127, label %101, !prof !46, !nosanitize !45

101:                                              ; preds = %94
  %102 = icmp ult i32 %96, 8
  br i1 %102, label %124, label %103

103:                                              ; preds = %101
  %104 = and i64 %98, 4294967288
  %105 = mul nsw i64 %104, -2
  %106 = getelementptr i8, ptr %99, i64 %105
  %107 = trunc nuw i64 %104 to i32
  %108 = sub i32 %96, %107
  %109 = insertelement <8 x i32> poison, i32 %95, i64 0
  %110 = shufflevector <8 x i32> %109, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %111

111:                                              ; preds = %111, %103
  %112 = phi i64 [ 0, %103 ], [ %120, %111 ]
  %113 = mul i64 %112, -2
  %114 = getelementptr i8, ptr %99, i64 %113
  %115 = getelementptr inbounds i8, ptr %114, i64 -16
  %116 = load <8 x i16>, ptr %115, align 2, !tbaa !62
  %117 = zext <8 x i16> %116 to <8 x i32>
  %118 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %117, <8 x i32> %110)
  %119 = trunc nuw <8 x i32> %118 to <8 x i16>
  store <8 x i16> %119, ptr %115, align 2, !tbaa !62
  %120 = add nuw i64 %112, 8
  %121 = icmp eq i64 %120, %104
  br i1 %121, label %122, label %111, !llvm.loop !148

122:                                              ; preds = %111
  %123 = icmp eq i64 %104, %98
  br i1 %123, label %143, label %124

124:                                              ; preds = %122, %101
  %125 = phi ptr [ %99, %101 ], [ %106, %122 ]
  %126 = phi i32 [ %96, %101 ], [ %108, %122 ]
  br label %133

127:                                              ; preds = %94
  %128 = getelementptr inbounds i8, ptr %99, i64 -2
  %129 = load i16, ptr %128, align 2, !tbaa !62
  %130 = zext i16 %129 to i32
  %131 = tail call i32 @llvm.usub.sat.i32(i32 %130, i32 %95)
  %132 = trunc nuw i32 %131 to i16
  store i16 %132, ptr %128, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

133:                                              ; preds = %133, %124
  %134 = phi ptr [ %136, %133 ], [ %125, %124 ]
  %135 = phi i32 [ %141, %133 ], [ %126, %124 ]
  %136 = getelementptr inbounds i8, ptr %134, i64 -2
  %137 = load i16, ptr %136, align 2, !tbaa !62
  %138 = zext i16 %137 to i32
  %139 = tail call i32 @llvm.usub.sat.i32(i32 %138, i32 %95)
  %140 = trunc nuw i32 %139 to i16
  store i16 %140, ptr %136, align 2, !tbaa !62
  %141 = add i32 %135, -1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %133, !llvm.loop !149

143:                                              ; preds = %133, %122
  %144 = icmp eq i32 %95, 0
  br i1 %144, label %145, label %146, !prof !46, !nosanitize !45

145:                                              ; preds = %143
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

146:                                              ; preds = %143
  %147 = load ptr, ptr %13, align 8, !tbaa !35
  %148 = zext i32 %95 to i64
  %149 = getelementptr inbounds nuw [2 x i8], ptr %147, i64 %148
  %150 = icmp ult i32 %95, 8
  br i1 %150, label %172, label %151

151:                                              ; preds = %146
  %152 = and i64 %148, 4294967288
  %153 = mul nsw i64 %152, -2
  %154 = getelementptr i8, ptr %149, i64 %153
  %155 = trunc nuw i64 %152 to i32
  %156 = sub i32 %95, %155
  %157 = insertelement <8 x i32> poison, i32 %95, i64 0
  %158 = shufflevector <8 x i32> %157, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %159

159:                                              ; preds = %159, %151
  %160 = phi i64 [ 0, %151 ], [ %168, %159 ]
  %161 = mul i64 %160, -2
  %162 = getelementptr i8, ptr %149, i64 %161
  %163 = getelementptr inbounds i8, ptr %162, i64 -16
  %164 = load <8 x i16>, ptr %163, align 2, !tbaa !62
  %165 = zext <8 x i16> %164 to <8 x i32>
  %166 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %165, <8 x i32> %158)
  %167 = trunc nuw <8 x i32> %166 to <8 x i16>
  store <8 x i16> %167, ptr %163, align 2, !tbaa !62
  %168 = add nuw i64 %160, 8
  %169 = icmp eq i64 %168, %152
  br i1 %169, label %170, label %159, !llvm.loop !150

170:                                              ; preds = %159
  %171 = icmp eq i64 %152, %148
  br i1 %171, label %185, label %172

172:                                              ; preds = %170, %146
  %173 = phi ptr [ %149, %146 ], [ %154, %170 ]
  %174 = phi i32 [ %95, %146 ], [ %156, %170 ]
  br label %175

175:                                              ; preds = %175, %172
  %176 = phi ptr [ %178, %175 ], [ %173, %172 ]
  %177 = phi i32 [ %183, %175 ], [ %174, %172 ]
  %178 = getelementptr inbounds i8, ptr %176, i64 -2
  %179 = load i16, ptr %178, align 2, !tbaa !62
  %180 = zext i16 %179 to i32
  %181 = tail call i32 @llvm.usub.sat.i32(i32 %180, i32 %95)
  %182 = trunc nuw i32 %181 to i16
  store i16 %182, ptr %178, align 2, !tbaa !62
  %183 = add i32 %177, -1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %175, !llvm.loop !151

185:                                              ; preds = %175, %170
  store i32 1, ptr %14, align 8, !tbaa !63
  %186 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %55, i32 %37), !nosanitize !45
  %187 = extractvalue { i32, i1 } %186, 1, !nosanitize !45
  br i1 %187, label %188, label %189, !prof !46, !nosanitize !45

188:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

189:                                              ; preds = %185
  %190 = extractvalue { i32, i1 } %186, 0, !nosanitize !45
  %191 = load i32, ptr %3, align 4, !tbaa !75
  br label %192

192:                                              ; preds = %189, %65
  %193 = phi i32 [ %191, %189 ], [ %40, %65 ]
  %194 = phi i32 [ %88, %189 ], [ %48, %65 ]
  %195 = phi i32 [ %190, %189 ], [ %55, %65 ]
  %196 = load ptr, ptr %0, align 8, !tbaa !20
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 8
  %198 = load i32, ptr %197, align 8, !tbaa !81
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %320, label %200

200:                                              ; preds = %192
  %201 = load ptr, ptr %7, align 8, !tbaa !34
  %202 = zext i32 %194 to i64
  %203 = getelementptr inbounds nuw i8, ptr %201, i64 %202
  %204 = zext i32 %193 to i64
  %205 = getelementptr inbounds nuw i8, ptr %203, i64 %204
  %206 = tail call i32 @llvm.umin.i32(i32 %198, i32 %195)
  %207 = icmp eq i32 %195, 0
  br i1 %207, label %236, label %208

208:                                              ; preds = %200
  %209 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %198, i32 %206), !nosanitize !45
  %210 = extractvalue { i32, i1 } %209, 0, !nosanitize !45
  store i32 %210, ptr %197, align 8, !tbaa !81
  %211 = load ptr, ptr %196, align 8, !tbaa !82
  %212 = zext i32 %206 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %205, ptr align 1 %211, i64 %212, i1 false)
  %213 = getelementptr inbounds nuw i8, ptr %196, i64 56
  %214 = load ptr, ptr %213, align 8, !tbaa !19
  %215 = getelementptr inbounds nuw i8, ptr %214, i64 48
  %216 = load i32, ptr %215, align 8, !tbaa !30
  switch i32 %216, label %225 [
    i32 1, label %217
    i32 2, label %221
  ]

217:                                              ; preds = %208
  %218 = getelementptr inbounds nuw i8, ptr %196, i64 96
  %219 = load i64, ptr %218, align 8, !tbaa !59
  %220 = tail call i64 @adler32(i64 noundef %219, ptr noundef %205, i32 noundef %206) #11
  store i64 %220, ptr %218, align 8, !tbaa !59
  br label %225

221:                                              ; preds = %208
  %222 = getelementptr inbounds nuw i8, ptr %196, i64 96
  %223 = load i64, ptr %222, align 8, !tbaa !59
  %224 = tail call i64 @crc32(i64 noundef %223, ptr noundef %205, i32 noundef %206) #11
  store i64 %224, ptr %222, align 8, !tbaa !59
  br label %225

225:                                              ; preds = %221, %217, %208
  %226 = load ptr, ptr %196, align 8, !tbaa !82
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 %212
  store ptr %227, ptr %196, align 8, !tbaa !82
  %228 = getelementptr inbounds nuw i8, ptr %196, i64 16
  %229 = load i64, ptr %228, align 8, !tbaa !55
  %230 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %229, i64 %212), !nosanitize !45
  %231 = extractvalue { i64, i1 } %230, 1, !nosanitize !45
  br i1 %231, label %232, label %233, !prof !46, !nosanitize !45

232:                                              ; preds = %225
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

233:                                              ; preds = %225
  %234 = extractvalue { i64, i1 } %230, 0, !nosanitize !45
  store i64 %234, ptr %228, align 8, !tbaa !55
  %235 = load i32, ptr %3, align 4, !tbaa !75
  br label %236

236:                                              ; preds = %233, %200
  %237 = phi i32 [ %193, %200 ], [ %235, %233 ]
  %238 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 %206), !nosanitize !45
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !45
  br i1 %239, label %240, label %241, !prof !46, !nosanitize !45

240:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

241:                                              ; preds = %236
  %242 = extractvalue { i32, i1 } %238, 0, !nosanitize !45
  store i32 %242, ptr %3, align 4, !tbaa !75
  %243 = load i32, ptr %10, align 4, !tbaa !76
  %244 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %242, i32 %243), !nosanitize !45
  %245 = extractvalue { i32, i1 } %244, 1, !nosanitize !45
  br i1 %245, label %246, label %247, !prof !46, !nosanitize !45

246:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

247:                                              ; preds = %241
  %248 = extractvalue { i32, i1 } %244, 0, !nosanitize !45
  %249 = icmp ugt i32 %248, 2
  br i1 %249, label %250, label %313

250:                                              ; preds = %247
  %251 = load i32, ptr %6, align 4, !tbaa !73
  %252 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %251, i32 %243), !nosanitize !45
  %253 = extractvalue { i32, i1 } %252, 0, !nosanitize !45
  %254 = extractvalue { i32, i1 } %252, 1, !nosanitize !45
  br i1 %254, label %255, label %256, !prof !46, !nosanitize !45

255:                                              ; preds = %250
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

256:                                              ; preds = %250
  %257 = load ptr, ptr %7, align 8, !tbaa !34
  %258 = zext i32 %253 to i64
  %259 = getelementptr inbounds nuw i8, ptr %257, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !8
  %261 = zext i8 %260 to i32
  store i32 %261, ptr %15, align 8, !tbaa !80
  %262 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %253, i32 1), !nosanitize !45
  %263 = extractvalue { i32, i1 } %262, 1, !nosanitize !45
  br i1 %263, label %264, label %265, !prof !46, !nosanitize !45

264:                                              ; preds = %256
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

265:                                              ; preds = %256
  %266 = extractvalue { i32, i1 } %262, 0, !nosanitize !45
  %267 = load i32, ptr %16, align 8, !tbaa !53
  %268 = shl i32 %261, %267
  %269 = zext i32 %266 to i64
  %270 = getelementptr inbounds nuw i8, ptr %257, i64 %269
  %271 = load i8, ptr %270, align 1, !tbaa !8
  %272 = zext i8 %271 to i32
  %273 = xor i32 %268, %272
  %274 = load i32, ptr %17, align 4, !tbaa !52
  %275 = and i32 %273, %274
  store i32 %275, ptr %15, align 8, !tbaa !80
  br label %276

276:                                              ; preds = %309, %265
  %277 = phi i32 [ %275, %265 ], [ %294, %309 ]
  %278 = phi i32 [ %243, %265 ], [ %305, %309 ]
  %279 = phi i32 [ %253, %265 ], [ %310, %309 ]
  %280 = icmp eq i32 %278, 0
  br i1 %280, label %313, label %281

281:                                              ; preds = %276
  %282 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %279, i32 3), !nosanitize !45
  %283 = extractvalue { i32, i1 } %282, 1, !nosanitize !45
  br i1 %283, label %284, label %285, !prof !46, !nosanitize !45

284:                                              ; preds = %281
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

285:                                              ; preds = %281
  %286 = shl i32 %277, %267
  %287 = extractvalue { i32, i1 } %282, 0, !nosanitize !45
  %288 = add i32 %287, -1
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds nuw i8, ptr %257, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !8
  %292 = zext i8 %291 to i32
  %293 = xor i32 %286, %292
  %294 = and i32 %293, %274
  store i32 %294, ptr %15, align 8, !tbaa !80
  %295 = load ptr, ptr %12, align 8, !tbaa !37
  %296 = zext i32 %294 to i64
  %297 = getelementptr inbounds nuw [2 x i8], ptr %295, i64 %296
  %298 = load i16, ptr %297, align 2, !tbaa !62
  %299 = load ptr, ptr %13, align 8, !tbaa !35
  %300 = load i32, ptr %18, align 8, !tbaa !33
  %301 = and i32 %300, %279
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds nuw [2 x i8], ptr %299, i64 %302
  store i16 %298, ptr %303, align 2, !tbaa !62
  %304 = trunc i32 %279 to i16
  store i16 %304, ptr %297, align 2, !tbaa !62
  %305 = add i32 %278, -1
  store i32 %305, ptr %10, align 4, !tbaa !76
  %306 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %242, i32 %305), !nosanitize !45
  %307 = extractvalue { i32, i1 } %306, 1, !nosanitize !45
  br i1 %307, label %308, label %309, !prof !46, !nosanitize !45

308:                                              ; preds = %285
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

309:                                              ; preds = %285
  %310 = add nuw i32 %279, 1
  %311 = extractvalue { i32, i1 } %306, 0, !nosanitize !45
  %312 = icmp ult i32 %311, 3
  br i1 %312, label %313, label %276, !llvm.loop !91

313:                                              ; preds = %309, %276, %247
  %314 = icmp ult i32 %242, 262
  br i1 %314, label %315, label %320

315:                                              ; preds = %313
  %316 = load ptr, ptr %0, align 8, !tbaa !20
  %317 = getelementptr inbounds nuw i8, ptr %316, i64 8
  %318 = load i32, ptr %317, align 8, !tbaa !81
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %39, !llvm.loop !92

320:                                              ; preds = %315, %313, %192
  %321 = phi i32 [ %242, %315 ], [ %242, %313 ], [ %193, %192 ]
  %322 = load i64, ptr %19, align 8, !tbaa !38
  %323 = load i64, ptr %5, align 8, !tbaa !61
  %324 = icmp ult i64 %322, %323
  br i1 %324, label %325, label %361

325:                                              ; preds = %320
  %326 = load i32, ptr %6, align 4, !tbaa !73
  %327 = zext i32 %326 to i64
  %328 = zext i32 %321 to i64
  %329 = add nuw nsw i64 %328, %327
  %330 = icmp ult i64 %322, %329
  br i1 %330, label %331, label %341

331:                                              ; preds = %325
  %332 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %323, i64 %329), !nosanitize !45
  %333 = extractvalue { i64, i1 } %332, 1, !nosanitize !45
  br i1 %333, label %334, label %335, !prof !46, !nosanitize !45

334:                                              ; preds = %331
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

335:                                              ; preds = %331
  %336 = extractvalue { i64, i1 } %332, 0, !nosanitize !45
  %337 = tail call i64 @llvm.umin.i64(i64 %336, i64 258)
  %338 = load ptr, ptr %7, align 8, !tbaa !34
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 %329
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %339, i8 0, i64 %337, i1 false)
  %340 = add nuw nsw i64 %337, %329
  br label %358

341:                                              ; preds = %325
  %342 = add nuw nsw i64 %329, 258
  %343 = icmp ult i64 %322, %342
  br i1 %343, label %344, label %361

344:                                              ; preds = %341
  %345 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %323, i64 %322), !nosanitize !45
  %346 = sub nuw nsw i64 %342, %322
  %347 = extractvalue { i64, i1 } %345, 0, !nosanitize !45
  %348 = tail call i64 @llvm.umin.i64(i64 %346, i64 %347)
  %349 = load ptr, ptr %7, align 8, !tbaa !34
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 %322
  %351 = and i64 %348, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %350, i8 0, i64 %351, i1 false)
  %352 = load i64, ptr %19, align 8, !tbaa !38
  %353 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %352, i64 %348), !nosanitize !45
  %354 = extractvalue { i64, i1 } %353, 1, !nosanitize !45
  br i1 %354, label %355, label %356, !prof !46, !nosanitize !45

355:                                              ; preds = %344
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

356:                                              ; preds = %344
  %357 = extractvalue { i64, i1 } %353, 0, !nosanitize !45
  br label %358

358:                                              ; preds = %356, %335
  %359 = phi i64 [ %340, %335 ], [ %357, %356 ]
  store i64 %359, ptr %19, align 8, !tbaa !38
  %360 = load i32, ptr %3, align 4, !tbaa !75
  br label %361

361:                                              ; preds = %358, %341, %320
  %362 = phi i32 [ %321, %320 ], [ %321, %341 ], [ %360, %358 ]
  %363 = icmp ult i32 %362, 262
  %364 = and i1 %20, %363
  br i1 %364, label %973, label %365

365:                                              ; preds = %361
  %366 = icmp eq i32 %362, 0
  br i1 %366, label %842, label %367

367:                                              ; preds = %365
  %368 = icmp ugt i32 %362, 2
  br i1 %368, label %369, label %568

369:                                              ; preds = %367, %33
  %370 = phi i32 [ %362, %367 ], [ %34, %33 ]
  %371 = load i32, ptr %6, align 4, !tbaa !73
  %372 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %371, i32 2), !nosanitize !45
  %373 = extractvalue { i32, i1 } %372, 1, !nosanitize !45
  br i1 %373, label %374, label %375, !prof !46, !nosanitize !45

374:                                              ; preds = %369
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

375:                                              ; preds = %369
  %376 = extractvalue { i32, i1 } %372, 0, !nosanitize !45
  %377 = load ptr, ptr %7, align 8, !tbaa !34
  %378 = load i32, ptr %15, align 8, !tbaa !80
  %379 = load i32, ptr %16, align 8, !tbaa !53
  %380 = shl i32 %378, %379
  %381 = zext i32 %376 to i64
  %382 = getelementptr inbounds nuw i8, ptr %377, i64 %381
  %383 = load i8, ptr %382, align 1, !tbaa !8
  %384 = zext i8 %383 to i32
  %385 = xor i32 %380, %384
  %386 = load i32, ptr %17, align 4, !tbaa !52
  %387 = and i32 %385, %386
  store i32 %387, ptr %15, align 8, !tbaa !80
  %388 = load ptr, ptr %12, align 8, !tbaa !37
  %389 = zext i32 %387 to i64
  %390 = getelementptr inbounds nuw [2 x i8], ptr %388, i64 %389
  %391 = load i16, ptr %390, align 2, !tbaa !62
  %392 = load ptr, ptr %13, align 8, !tbaa !35
  %393 = load i32, ptr %18, align 8, !tbaa !33
  %394 = and i32 %393, %371
  %395 = zext i32 %394 to i64
  %396 = getelementptr inbounds nuw [2 x i8], ptr %392, i64 %395
  store i16 %391, ptr %396, align 2, !tbaa !62
  %397 = zext i16 %391 to i32
  %398 = trunc i32 %371 to i16
  store i16 %398, ptr %390, align 2, !tbaa !62
  %399 = icmp eq i16 %391, 0
  br i1 %399, label %568, label %400

400:                                              ; preds = %375
  %401 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %371, i32 %397), !nosanitize !45
  %402 = extractvalue { i32, i1 } %401, 0, !nosanitize !45
  %403 = extractvalue { i32, i1 } %401, 1, !nosanitize !45
  br i1 %403, label %404, label %405, !prof !46, !nosanitize !45

404:                                              ; preds = %400
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

405:                                              ; preds = %400
  %406 = load i32, ptr %4, align 8, !tbaa !32
  %407 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %406, i32 262), !nosanitize !45
  %408 = extractvalue { i32, i1 } %407, 1, !nosanitize !45
  br i1 %408, label %409, label %410, !prof !46, !nosanitize !45

409:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

410:                                              ; preds = %405
  %411 = extractvalue { i32, i1 } %407, 0, !nosanitize !45
  %412 = icmp ugt i32 %402, %411
  br i1 %412, label %568, label %413

413:                                              ; preds = %410
  %414 = zext i32 %371 to i64
  %415 = getelementptr inbounds nuw i8, ptr %377, i64 %414
  %416 = load i32, ptr %21, align 8, !tbaa !70
  %417 = load i32, ptr %22, align 8, !tbaa !77
  %418 = load i32, ptr %23, align 4, !tbaa !72
  %419 = tail call i32 @llvm.usub.sat.i32(i32 %371, i32 %411)
  %420 = getelementptr inbounds nuw i8, ptr %415, i64 258
  %421 = sext i32 %417 to i64
  %422 = getelementptr i8, ptr %415, i64 %421
  %423 = getelementptr i8, ptr %422, i64 -1
  %424 = load i8, ptr %423, align 1, !tbaa !8
  %425 = load i8, ptr %422, align 1, !tbaa !8
  %426 = load i32, ptr %24, align 4, !tbaa !68
  %427 = icmp ult i32 %417, %426
  %428 = lshr i32 %418, 2
  %429 = select i1 %427, i32 %418, i32 %428
  %430 = tail call i32 @llvm.umin.i32(i32 %416, i32 %370)
  %431 = getelementptr inbounds nuw i8, ptr %415, i64 1
  %432 = ptrtoint ptr %420 to i64
  br label %433

433:                                              ; preds = %562, %413
  %434 = phi i32 [ %417, %413 ], [ %549, %562 ]
  %435 = phi i32 [ %429, %413 ], [ %563, %562 ]
  %436 = phi i32 [ %397, %413 ], [ %556, %562 ]
  %437 = phi i8 [ %424, %413 ], [ %550, %562 ]
  %438 = phi i8 [ %425, %413 ], [ %551, %562 ]
  %439 = zext nneg i32 %436 to i64
  %440 = getelementptr inbounds nuw i8, ptr %377, i64 %439
  %441 = sext i32 %434 to i64
  %442 = getelementptr inbounds i8, ptr %440, i64 %441
  %443 = load i8, ptr %442, align 1, !tbaa !8
  %444 = icmp eq i8 %443, %438
  br i1 %444, label %445, label %548

445:                                              ; preds = %433
  %446 = getelementptr i8, ptr %442, i64 -1
  %447 = load i8, ptr %446, align 1, !tbaa !8
  %448 = icmp eq i8 %447, %437
  br i1 %448, label %449, label %548

449:                                              ; preds = %445
  %450 = load i8, ptr %440, align 1, !tbaa !8
  %451 = load i8, ptr %415, align 1, !tbaa !8
  %452 = icmp eq i8 %450, %451
  br i1 %452, label %453, label %548

453:                                              ; preds = %449
  %454 = getelementptr inbounds nuw i8, ptr %440, i64 1
  %455 = load i8, ptr %454, align 1, !tbaa !8
  %456 = load i8, ptr %431, align 1, !tbaa !8
  %457 = icmp eq i8 %455, %456
  br i1 %457, label %458, label %548

458:                                              ; preds = %453
  %459 = getelementptr inbounds nuw i8, ptr %440, i64 2
  br label %460

460:                                              ; preds = %505, %458
  %461 = phi ptr [ %459, %458 ], [ %509, %505 ]
  %462 = phi i64 [ 2, %458 ], [ %506, %505 ]
  %463 = getelementptr inbounds nuw i8, ptr %415, i64 %462
  %464 = getelementptr inbounds nuw i8, ptr %463, i64 1
  %465 = load i8, ptr %464, align 1, !tbaa !8
  %466 = getelementptr inbounds nuw i8, ptr %461, i64 1
  %467 = load i8, ptr %466, align 1, !tbaa !8
  %468 = icmp eq i8 %465, %467
  br i1 %468, label %469, label %514

469:                                              ; preds = %460
  %470 = getelementptr inbounds nuw i8, ptr %463, i64 2
  %471 = load i8, ptr %470, align 1, !tbaa !8
  %472 = getelementptr inbounds nuw i8, ptr %461, i64 2
  %473 = load i8, ptr %472, align 1, !tbaa !8
  %474 = icmp eq i8 %471, %473
  br i1 %474, label %475, label %516

475:                                              ; preds = %469
  %476 = getelementptr inbounds nuw i8, ptr %463, i64 3
  %477 = load i8, ptr %476, align 1, !tbaa !8
  %478 = getelementptr inbounds nuw i8, ptr %461, i64 3
  %479 = load i8, ptr %478, align 1, !tbaa !8
  %480 = icmp eq i8 %477, %479
  br i1 %480, label %481, label %518

481:                                              ; preds = %475
  %482 = getelementptr inbounds nuw i8, ptr %463, i64 4
  %483 = load i8, ptr %482, align 1, !tbaa !8
  %484 = getelementptr inbounds nuw i8, ptr %461, i64 4
  %485 = load i8, ptr %484, align 1, !tbaa !8
  %486 = icmp eq i8 %483, %485
  br i1 %486, label %487, label %520

487:                                              ; preds = %481
  %488 = getelementptr inbounds nuw i8, ptr %463, i64 5
  %489 = load i8, ptr %488, align 1, !tbaa !8
  %490 = getelementptr inbounds nuw i8, ptr %461, i64 5
  %491 = load i8, ptr %490, align 1, !tbaa !8
  %492 = icmp eq i8 %489, %491
  br i1 %492, label %493, label %522

493:                                              ; preds = %487
  %494 = getelementptr inbounds nuw i8, ptr %463, i64 6
  %495 = load i8, ptr %494, align 1, !tbaa !8
  %496 = getelementptr inbounds nuw i8, ptr %461, i64 6
  %497 = load i8, ptr %496, align 1, !tbaa !8
  %498 = icmp eq i8 %495, %497
  br i1 %498, label %499, label %524

499:                                              ; preds = %493
  %500 = getelementptr inbounds nuw i8, ptr %463, i64 7
  %501 = load i8, ptr %500, align 1, !tbaa !8
  %502 = getelementptr inbounds nuw i8, ptr %461, i64 7
  %503 = load i8, ptr %502, align 1, !tbaa !8
  %504 = icmp eq i8 %501, %503
  br i1 %504, label %505, label %526

505:                                              ; preds = %499
  %506 = add nuw nsw i64 %462, 8
  %507 = getelementptr inbounds nuw i8, ptr %415, i64 %506
  %508 = load i8, ptr %507, align 1, !tbaa !8
  %509 = getelementptr inbounds nuw i8, ptr %461, i64 8
  %510 = load i8, ptr %509, align 1, !tbaa !8
  %511 = icmp eq i8 %508, %510
  %512 = icmp samesign ult i64 %462, 250
  %513 = select i1 %511, i1 %512, i1 false
  br i1 %513, label %460, label %528, !llvm.loop !152

514:                                              ; preds = %460
  %515 = getelementptr inbounds nuw i8, ptr %463, i64 1
  br label %530

516:                                              ; preds = %469
  %517 = getelementptr inbounds nuw i8, ptr %463, i64 2
  br label %530

518:                                              ; preds = %475
  %519 = getelementptr inbounds nuw i8, ptr %463, i64 3
  br label %530

520:                                              ; preds = %481
  %521 = getelementptr inbounds nuw i8, ptr %463, i64 4
  br label %530

522:                                              ; preds = %487
  %523 = getelementptr inbounds nuw i8, ptr %463, i64 5
  br label %530

524:                                              ; preds = %493
  %525 = getelementptr inbounds nuw i8, ptr %463, i64 6
  br label %530

526:                                              ; preds = %499
  %527 = getelementptr inbounds nuw i8, ptr %463, i64 7
  br label %530

528:                                              ; preds = %505
  %529 = getelementptr inbounds nuw i8, ptr %415, i64 %506
  br label %530

530:                                              ; preds = %528, %526, %524, %522, %520, %518, %516, %514
  %531 = phi ptr [ %517, %516 ], [ %519, %518 ], [ %515, %514 ], [ %527, %526 ], [ %525, %524 ], [ %523, %522 ], [ %521, %520 ], [ %529, %528 ]
  %532 = ptrtoint ptr %531 to i64
  %533 = sub i64 %532, %432
  %534 = trunc i64 %533 to i32
  %535 = add i32 %534, 258
  %536 = icmp sgt i32 %535, %434
  br i1 %536, label %537, label %548

537:                                              ; preds = %530
  store i32 %436, ptr %8, align 8, !tbaa !83
  %538 = icmp slt i32 %535, %430
  br i1 %538, label %539, label %565

539:                                              ; preds = %537
  %540 = shl i64 %533, 32
  %541 = add i64 %540, 1103806595072
  %542 = ashr exact i64 %541, 32
  %543 = getelementptr inbounds i8, ptr %415, i64 %542
  %544 = load i8, ptr %543, align 1, !tbaa !8
  %545 = sext i32 %535 to i64
  %546 = getelementptr inbounds i8, ptr %415, i64 %545
  %547 = load i8, ptr %546, align 1, !tbaa !8
  br label %548

548:                                              ; preds = %539, %530, %453, %449, %445, %433
  %549 = phi i32 [ %434, %433 ], [ %434, %445 ], [ %434, %449 ], [ %434, %453 ], [ %535, %539 ], [ %434, %530 ]
  %550 = phi i8 [ %437, %433 ], [ %437, %445 ], [ %437, %449 ], [ %437, %453 ], [ %544, %539 ], [ %437, %530 ]
  %551 = phi i8 [ %438, %433 ], [ %438, %445 ], [ %438, %449 ], [ %438, %453 ], [ %547, %539 ], [ %438, %530 ]
  %552 = and i32 %436, %393
  %553 = zext nneg i32 %552 to i64
  %554 = getelementptr inbounds nuw [2 x i8], ptr %392, i64 %553
  %555 = load i16, ptr %554, align 2, !tbaa !62
  %556 = zext i16 %555 to i32
  %557 = icmp ult i32 %419, %556
  br i1 %557, label %558, label %565

558:                                              ; preds = %548
  %559 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %435, i32 1), !nosanitize !45
  %560 = extractvalue { i32, i1 } %559, 1, !nosanitize !45
  br i1 %560, label %561, label %562, !prof !46, !nosanitize !45

561:                                              ; preds = %558
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

562:                                              ; preds = %558
  %563 = extractvalue { i32, i1 } %559, 0, !nosanitize !45
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %433, !llvm.loop !153

565:                                              ; preds = %562, %548, %537
  %566 = phi i32 [ %549, %562 ], [ %549, %548 ], [ %535, %537 ]
  %567 = tail call i32 @llvm.umin.i32(i32 %566, i32 %370)
  store i32 %567, ptr %25, align 8, !tbaa !78
  br label %570

568:                                              ; preds = %410, %375, %367
  %569 = load i32, ptr %25, align 8, !tbaa !78
  br label %570

570:                                              ; preds = %568, %565
  %571 = phi i32 [ %569, %568 ], [ %567, %565 ]
  %572 = icmp ugt i32 %571, 2
  br i1 %572, label %573, label %716

573:                                              ; preds = %570
  %574 = trunc i32 %571 to i8
  %575 = add i8 %574, -3
  %576 = load i32, ptr %6, align 4, !tbaa !73
  %577 = load i32, ptr %8, align 8, !tbaa !83
  %578 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %576, i32 %577), !nosanitize !45
  %579 = extractvalue { i32, i1 } %578, 1, !nosanitize !45
  br i1 %579, label %580, label %581, !prof !46, !nosanitize !45

580:                                              ; preds = %573
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

581:                                              ; preds = %573
  %582 = extractvalue { i32, i1 } %578, 0, !nosanitize !45
  %583 = trunc i32 %582 to i16
  %584 = load i32, ptr %27, align 4, !tbaa !139
  %585 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %584, i32 1), !nosanitize !45
  %586 = extractvalue { i32, i1 } %585, 1, !nosanitize !45
  br i1 %586, label %587, label %588, !prof !46, !nosanitize !45

587:                                              ; preds = %581
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

588:                                              ; preds = %581
  %589 = extractvalue { i32, i1 } %585, 0, !nosanitize !45
  %590 = load ptr, ptr %26, align 8, !tbaa !44
  %591 = trunc i32 %582 to i8
  store i32 %589, ptr %27, align 4, !tbaa !139
  %592 = zext i32 %584 to i64
  %593 = getelementptr inbounds nuw i8, ptr %590, i64 %592
  store i8 %591, ptr %593, align 1, !tbaa !8
  %594 = load i32, ptr %27, align 4, !tbaa !139
  %595 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %594, i32 1), !nosanitize !45
  %596 = extractvalue { i32, i1 } %595, 1, !nosanitize !45
  br i1 %596, label %597, label %598, !prof !46, !nosanitize !45

597:                                              ; preds = %588
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

598:                                              ; preds = %588
  %599 = extractvalue { i32, i1 } %595, 0, !nosanitize !45
  %600 = load ptr, ptr %26, align 8, !tbaa !44
  %601 = lshr i32 %582, 8
  %602 = trunc i32 %601 to i8
  store i32 %599, ptr %27, align 4, !tbaa !139
  %603 = zext i32 %594 to i64
  %604 = getelementptr inbounds nuw i8, ptr %600, i64 %603
  store i8 %602, ptr %604, align 1, !tbaa !8
  %605 = load i32, ptr %27, align 4, !tbaa !139
  %606 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %605, i32 1), !nosanitize !45
  %607 = extractvalue { i32, i1 } %606, 1, !nosanitize !45
  br i1 %607, label %608, label %609, !prof !46, !nosanitize !45

608:                                              ; preds = %598
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

609:                                              ; preds = %598
  %610 = extractvalue { i32, i1 } %606, 0, !nosanitize !45
  %611 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %610, ptr %27, align 4, !tbaa !139
  %612 = zext i32 %605 to i64
  %613 = getelementptr inbounds nuw i8, ptr %611, i64 %612
  store i8 %575, ptr %613, align 1, !tbaa !8
  %614 = add i16 %583, -1
  %615 = zext i8 %575 to i64
  %616 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %615
  %617 = load i8, ptr %616, align 1, !tbaa !8
  %618 = zext i8 %617 to i64
  %619 = getelementptr [4 x i8], ptr %30, i64 %618
  %620 = load i16, ptr %619, align 4, !tbaa !8
  %621 = add i16 %620, 1
  store i16 %621, ptr %619, align 4, !tbaa !8
  %622 = icmp ult i16 %614, 256
  br i1 %622, label %623, label %626

623:                                              ; preds = %609
  %624 = zext nneg i16 %614 to i64
  %625 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %624
  br label %631

626:                                              ; preds = %609
  %627 = lshr i16 %614, 7
  %628 = zext nneg i16 %627 to i64
  %629 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %628
  %630 = getelementptr inbounds nuw i8, ptr %629, i64 256
  br label %631

631:                                              ; preds = %626, %623
  %632 = phi ptr [ %625, %623 ], [ %630, %626 ]
  %633 = load i8, ptr %632, align 1, !tbaa !8
  %634 = zext i8 %633 to i64
  %635 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %634
  %636 = load i16, ptr %635, align 4, !tbaa !8
  %637 = add i16 %636, 1
  store i16 %637, ptr %635, align 4, !tbaa !8
  %638 = load i32, ptr %27, align 4, !tbaa !139
  %639 = load i32, ptr %29, align 8, !tbaa !47
  %640 = icmp eq i32 %638, %639
  %641 = load i32, ptr %25, align 8, !tbaa !78
  %642 = load i32, ptr %3, align 4, !tbaa !75
  %643 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %642, i32 %641), !nosanitize !45
  %644 = extractvalue { i32, i1 } %643, 1, !nosanitize !45
  br i1 %644, label %645, label %646, !prof !46, !nosanitize !45

645:                                              ; preds = %631
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

646:                                              ; preds = %631
  %647 = extractvalue { i32, i1 } %643, 0, !nosanitize !45
  store i32 %647, ptr %3, align 4, !tbaa !75
  %648 = load i32, ptr %32, align 8, !tbaa !66
  %649 = icmp ule i32 %641, %648
  %650 = icmp ugt i32 %647, 2
  %651 = select i1 %649, i1 %650, i1 false
  br i1 %651, label %652, label %701

652:                                              ; preds = %646
  %653 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %641, i32 1), !nosanitize !45
  %654 = extractvalue { i32, i1 } %653, 1, !nosanitize !45
  br i1 %654, label %655, label %656, !prof !46, !nosanitize !45

655:                                              ; preds = %652
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

656:                                              ; preds = %652
  %657 = extractvalue { i32, i1 } %653, 0, !nosanitize !45
  store i32 %657, ptr %25, align 8, !tbaa !78
  %658 = load i32, ptr %6, align 4, !tbaa !73
  br label %659

659:                                              ; preds = %696, %656
  %660 = phi i32 [ %697, %696 ], [ %657, %656 ]
  %661 = phi i32 [ %666, %696 ], [ %658, %656 ]
  %662 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %661, i32 1), !nosanitize !45
  %663 = extractvalue { i32, i1 } %662, 1, !nosanitize !45
  br i1 %663, label %664, label %665, !prof !46, !nosanitize !45

664:                                              ; preds = %659
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

665:                                              ; preds = %659
  %666 = extractvalue { i32, i1 } %662, 0, !nosanitize !45
  store i32 %666, ptr %6, align 4, !tbaa !73
  %667 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %666, i32 2), !nosanitize !45
  %668 = extractvalue { i32, i1 } %667, 1, !nosanitize !45
  br i1 %668, label %669, label %670, !prof !46, !nosanitize !45

669:                                              ; preds = %665
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

670:                                              ; preds = %665
  %671 = extractvalue { i32, i1 } %667, 0, !nosanitize !45
  %672 = load ptr, ptr %7, align 8, !tbaa !34
  %673 = load i32, ptr %15, align 8, !tbaa !80
  %674 = load i32, ptr %16, align 8, !tbaa !53
  %675 = shl i32 %673, %674
  %676 = zext i32 %671 to i64
  %677 = getelementptr inbounds nuw i8, ptr %672, i64 %676
  %678 = load i8, ptr %677, align 1, !tbaa !8
  %679 = zext i8 %678 to i32
  %680 = xor i32 %675, %679
  %681 = load i32, ptr %17, align 4, !tbaa !52
  %682 = and i32 %680, %681
  store i32 %682, ptr %15, align 8, !tbaa !80
  %683 = load ptr, ptr %12, align 8, !tbaa !37
  %684 = zext i32 %682 to i64
  %685 = getelementptr inbounds nuw [2 x i8], ptr %683, i64 %684
  %686 = load i16, ptr %685, align 2, !tbaa !62
  %687 = load ptr, ptr %13, align 8, !tbaa !35
  %688 = load i32, ptr %18, align 8, !tbaa !33
  %689 = and i32 %688, %666
  %690 = zext i32 %689 to i64
  %691 = getelementptr inbounds nuw [2 x i8], ptr %687, i64 %690
  store i16 %686, ptr %691, align 2, !tbaa !62
  %692 = trunc i32 %666 to i16
  store i16 %692, ptr %685, align 2, !tbaa !62
  %693 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %660, i32 1), !nosanitize !45
  %694 = extractvalue { i32, i1 } %693, 1, !nosanitize !45
  br i1 %694, label %695, label %696, !prof !46, !nosanitize !45

695:                                              ; preds = %670
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

696:                                              ; preds = %670
  %697 = extractvalue { i32, i1 } %693, 0, !nosanitize !45
  store i32 %697, ptr %25, align 8, !tbaa !78
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %699, label %659, !llvm.loop !154

699:                                              ; preds = %696
  %700 = add nuw i32 %666, 1
  store i32 %700, ptr %6, align 4, !tbaa !73
  br i1 %640, label %780, label %768

701:                                              ; preds = %646
  %702 = load i32, ptr %6, align 4, !tbaa !73
  %703 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %702, i32 %641), !nosanitize !45
  %704 = extractvalue { i32, i1 } %703, 1, !nosanitize !45
  br i1 %704, label %705, label %706, !prof !46, !nosanitize !45

705:                                              ; preds = %701
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

706:                                              ; preds = %701
  %707 = extractvalue { i32, i1 } %703, 0, !nosanitize !45
  store i32 %707, ptr %6, align 4, !tbaa !73
  store i32 0, ptr %25, align 8, !tbaa !78
  %708 = load ptr, ptr %7, align 8, !tbaa !34
  %709 = zext i32 %707 to i64
  %710 = getelementptr inbounds nuw i8, ptr %708, i64 %709
  %711 = load i8, ptr %710, align 1, !tbaa !8
  %712 = zext i8 %711 to i32
  store i32 %712, ptr %15, align 8, !tbaa !80
  %713 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %707, i32 1), !nosanitize !45
  %714 = extractvalue { i32, i1 } %713, 1, !nosanitize !45
  br i1 %714, label %715, label %769, !prof !46, !nosanitize !45

715:                                              ; preds = %706
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

716:                                              ; preds = %570
  %717 = load ptr, ptr %7, align 8, !tbaa !34
  %718 = load i32, ptr %6, align 4, !tbaa !73
  %719 = zext i32 %718 to i64
  %720 = getelementptr inbounds nuw i8, ptr %717, i64 %719
  %721 = load i8, ptr %720, align 1, !tbaa !8
  %722 = load i32, ptr %27, align 4, !tbaa !139
  %723 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %722, i32 1), !nosanitize !45
  %724 = extractvalue { i32, i1 } %723, 1, !nosanitize !45
  br i1 %724, label %725, label %726, !prof !46, !nosanitize !45

725:                                              ; preds = %716
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

726:                                              ; preds = %716
  %727 = extractvalue { i32, i1 } %723, 0, !nosanitize !45
  %728 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %727, ptr %27, align 4, !tbaa !139
  %729 = zext i32 %722 to i64
  %730 = getelementptr inbounds nuw i8, ptr %728, i64 %729
  store i8 0, ptr %730, align 1, !tbaa !8
  %731 = load i32, ptr %27, align 4, !tbaa !139
  %732 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %731, i32 1), !nosanitize !45
  %733 = extractvalue { i32, i1 } %732, 1, !nosanitize !45
  br i1 %733, label %734, label %735, !prof !46, !nosanitize !45

734:                                              ; preds = %726
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

735:                                              ; preds = %726
  %736 = extractvalue { i32, i1 } %732, 0, !nosanitize !45
  %737 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %736, ptr %27, align 4, !tbaa !139
  %738 = zext i32 %731 to i64
  %739 = getelementptr inbounds nuw i8, ptr %737, i64 %738
  store i8 0, ptr %739, align 1, !tbaa !8
  %740 = load i32, ptr %27, align 4, !tbaa !139
  %741 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %740, i32 1), !nosanitize !45
  %742 = extractvalue { i32, i1 } %741, 1, !nosanitize !45
  br i1 %742, label %743, label %744, !prof !46, !nosanitize !45

743:                                              ; preds = %735
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

744:                                              ; preds = %735
  %745 = extractvalue { i32, i1 } %741, 0, !nosanitize !45
  %746 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %745, ptr %27, align 4, !tbaa !139
  %747 = zext i32 %740 to i64
  %748 = getelementptr inbounds nuw i8, ptr %746, i64 %747
  store i8 %721, ptr %748, align 1, !tbaa !8
  %749 = zext i8 %721 to i64
  %750 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %749
  %751 = load i16, ptr %750, align 4, !tbaa !8
  %752 = add i16 %751, 1
  store i16 %752, ptr %750, align 4, !tbaa !8
  %753 = load i32, ptr %27, align 4, !tbaa !139
  %754 = load i32, ptr %29, align 8, !tbaa !47
  %755 = icmp eq i32 %753, %754
  %756 = load i32, ptr %3, align 4, !tbaa !75
  %757 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %756, i32 1), !nosanitize !45
  %758 = extractvalue { i32, i1 } %757, 1, !nosanitize !45
  br i1 %758, label %759, label %760, !prof !46, !nosanitize !45

759:                                              ; preds = %744
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

760:                                              ; preds = %744
  %761 = extractvalue { i32, i1 } %757, 0, !nosanitize !45
  store i32 %761, ptr %3, align 4, !tbaa !75
  %762 = load i32, ptr %6, align 4, !tbaa !73
  %763 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %762, i32 1), !nosanitize !45
  %764 = extractvalue { i32, i1 } %763, 1, !nosanitize !45
  br i1 %764, label %765, label %766, !prof !46, !nosanitize !45

765:                                              ; preds = %760
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

766:                                              ; preds = %760
  %767 = extractvalue { i32, i1 } %763, 0, !nosanitize !45
  store i32 %767, ptr %6, align 4, !tbaa !73
  br i1 %755, label %780, label %768

768:                                              ; preds = %837, %769, %766, %699
  br label %33

769:                                              ; preds = %706
  %770 = extractvalue { i32, i1 } %713, 0, !nosanitize !45
  %771 = load i32, ptr %16, align 8, !tbaa !53
  %772 = shl i32 %712, %771
  %773 = zext i32 %770 to i64
  %774 = getelementptr inbounds nuw i8, ptr %708, i64 %773
  %775 = load i8, ptr %774, align 1, !tbaa !8
  %776 = zext i8 %775 to i32
  %777 = xor i32 %772, %776
  %778 = load i32, ptr %17, align 4, !tbaa !52
  %779 = and i32 %777, %778
  store i32 %779, ptr %15, align 8, !tbaa !80
  br i1 %640, label %780, label %768

780:                                              ; preds = %769, %766, %699
  %781 = phi i32 [ %767, %766 ], [ %700, %699 ], [ %707, %769 ]
  %782 = load i64, ptr %9, align 8, !tbaa !74
  %783 = icmp sgt i64 %782, -1
  br i1 %783, label %784, label %788

784:                                              ; preds = %780
  %785 = load ptr, ptr %7, align 8, !tbaa !34
  %786 = and i64 %782, 4294967295
  %787 = getelementptr inbounds nuw i8, ptr %785, i64 %786
  br label %788

788:                                              ; preds = %784, %780
  %789 = phi ptr [ %787, %784 ], [ null, %780 ]
  %790 = zext i32 %781 to i64
  %791 = sub nsw i64 %790, %782
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %789, i64 noundef %791, i32 noundef 0) #11
  %792 = load i32, ptr %6, align 4, !tbaa !73
  %793 = zext i32 %792 to i64
  store i64 %793, ptr %9, align 8, !tbaa !74
  %794 = load ptr, ptr %0, align 8, !tbaa !20
  %795 = getelementptr inbounds nuw i8, ptr %794, i64 56
  %796 = load ptr, ptr %795, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %796) #11
  %797 = getelementptr inbounds nuw i8, ptr %796, i64 40
  %798 = load i64, ptr %797, align 8, !tbaa !57
  %799 = getelementptr inbounds nuw i8, ptr %794, i64 32
  %800 = load i32, ptr %799, align 8, !tbaa !107
  %801 = zext i32 %800 to i64
  %802 = tail call i64 @llvm.umin.i64(i64 %798, i64 %801)
  %803 = trunc nuw i64 %802 to i32
  %804 = icmp eq i64 %802, 0
  br i1 %804, label %837, label %805

805:                                              ; preds = %788
  %806 = getelementptr inbounds nuw i8, ptr %794, i64 24
  %807 = load ptr, ptr %806, align 8, !tbaa !106
  %808 = getelementptr inbounds nuw i8, ptr %796, i64 32
  %809 = load ptr, ptr %808, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %807, ptr align 1 %809, i64 %802, i1 false)
  %810 = load ptr, ptr %806, align 8, !tbaa !106
  %811 = getelementptr inbounds nuw i8, ptr %810, i64 %802
  store ptr %811, ptr %806, align 8, !tbaa !106
  %812 = load ptr, ptr %808, align 8, !tbaa !58
  %813 = getelementptr inbounds nuw i8, ptr %812, i64 %802
  store ptr %813, ptr %808, align 8, !tbaa !58
  %814 = getelementptr inbounds nuw i8, ptr %794, i64 40
  %815 = load i64, ptr %814, align 8, !tbaa !108
  %816 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %815, i64 %802), !nosanitize !45
  %817 = extractvalue { i64, i1 } %816, 1, !nosanitize !45
  br i1 %817, label %818, label %819, !prof !46, !nosanitize !45

818:                                              ; preds = %805
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

819:                                              ; preds = %805
  %820 = extractvalue { i64, i1 } %816, 0, !nosanitize !45
  store i64 %820, ptr %814, align 8, !tbaa !108
  %821 = load i32, ptr %799, align 8, !tbaa !107
  %822 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %821, i32 %803), !nosanitize !45
  %823 = extractvalue { i32, i1 } %822, 1, !nosanitize !45
  br i1 %823, label %824, label %825, !prof !46, !nosanitize !45

824:                                              ; preds = %819
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

825:                                              ; preds = %819
  %826 = extractvalue { i32, i1 } %822, 0, !nosanitize !45
  store i32 %826, ptr %799, align 8, !tbaa !107
  %827 = load i64, ptr %797, align 8, !tbaa !57
  %828 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %827, i64 %802), !nosanitize !45
  %829 = extractvalue { i64, i1 } %828, 1, !nosanitize !45
  br i1 %829, label %830, label %831, !prof !46, !nosanitize !45

830:                                              ; preds = %825
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

831:                                              ; preds = %825
  %832 = extractvalue { i64, i1 } %828, 0, !nosanitize !45
  store i64 %832, ptr %797, align 8, !tbaa !57
  %833 = icmp eq i64 %832, 0
  br i1 %833, label %834, label %837

834:                                              ; preds = %831
  %835 = getelementptr inbounds nuw i8, ptr %796, i64 16
  %836 = load ptr, ptr %835, align 8, !tbaa !40
  store ptr %836, ptr %808, align 8, !tbaa !58
  br label %837

837:                                              ; preds = %834, %831, %788
  %838 = load ptr, ptr %0, align 8, !tbaa !20
  %839 = getelementptr inbounds nuw i8, ptr %838, i64 32
  %840 = load i32, ptr %839, align 8, !tbaa !107
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %973, label %768

842:                                              ; preds = %365
  %843 = load i32, ptr %6, align 4, !tbaa !73
  %844 = tail call i32 @llvm.umin.i32(i32 %843, i32 2)
  store i32 %844, ptr %10, align 4, !tbaa !76
  %845 = icmp eq i32 %1, 4
  br i1 %845, label %846, label %908

846:                                              ; preds = %842
  %847 = load i64, ptr %9, align 8, !tbaa !74
  %848 = icmp sgt i64 %847, -1
  br i1 %848, label %849, label %853

849:                                              ; preds = %846
  %850 = load ptr, ptr %7, align 8, !tbaa !34
  %851 = and i64 %847, 4294967295
  %852 = getelementptr inbounds nuw i8, ptr %850, i64 %851
  br label %853

853:                                              ; preds = %849, %846
  %854 = phi ptr [ %852, %849 ], [ null, %846 ]
  %855 = zext i32 %843 to i64
  %856 = sub nsw i64 %855, %847
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %854, i64 noundef %856, i32 noundef 1) #11
  %857 = load i32, ptr %6, align 4, !tbaa !73
  %858 = zext i32 %857 to i64
  store i64 %858, ptr %9, align 8, !tbaa !74
  %859 = load ptr, ptr %0, align 8, !tbaa !20
  %860 = getelementptr inbounds nuw i8, ptr %859, i64 56
  %861 = load ptr, ptr %860, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %861) #11
  %862 = getelementptr inbounds nuw i8, ptr %861, i64 40
  %863 = load i64, ptr %862, align 8, !tbaa !57
  %864 = getelementptr inbounds nuw i8, ptr %859, i64 32
  %865 = load i32, ptr %864, align 8, !tbaa !107
  %866 = zext i32 %865 to i64
  %867 = tail call i64 @llvm.umin.i64(i64 %863, i64 %866)
  %868 = trunc nuw i64 %867 to i32
  %869 = icmp eq i64 %867, 0
  br i1 %869, label %902, label %870

870:                                              ; preds = %853
  %871 = getelementptr inbounds nuw i8, ptr %859, i64 24
  %872 = load ptr, ptr %871, align 8, !tbaa !106
  %873 = getelementptr inbounds nuw i8, ptr %861, i64 32
  %874 = load ptr, ptr %873, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %872, ptr align 1 %874, i64 %867, i1 false)
  %875 = load ptr, ptr %871, align 8, !tbaa !106
  %876 = getelementptr inbounds nuw i8, ptr %875, i64 %867
  store ptr %876, ptr %871, align 8, !tbaa !106
  %877 = load ptr, ptr %873, align 8, !tbaa !58
  %878 = getelementptr inbounds nuw i8, ptr %877, i64 %867
  store ptr %878, ptr %873, align 8, !tbaa !58
  %879 = getelementptr inbounds nuw i8, ptr %859, i64 40
  %880 = load i64, ptr %879, align 8, !tbaa !108
  %881 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %880, i64 %867), !nosanitize !45
  %882 = extractvalue { i64, i1 } %881, 1, !nosanitize !45
  br i1 %882, label %883, label %884, !prof !46, !nosanitize !45

883:                                              ; preds = %870
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

884:                                              ; preds = %870
  %885 = extractvalue { i64, i1 } %881, 0, !nosanitize !45
  store i64 %885, ptr %879, align 8, !tbaa !108
  %886 = load i32, ptr %864, align 8, !tbaa !107
  %887 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %886, i32 %868), !nosanitize !45
  %888 = extractvalue { i32, i1 } %887, 1, !nosanitize !45
  br i1 %888, label %889, label %890, !prof !46, !nosanitize !45

889:                                              ; preds = %884
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

890:                                              ; preds = %884
  %891 = extractvalue { i32, i1 } %887, 0, !nosanitize !45
  store i32 %891, ptr %864, align 8, !tbaa !107
  %892 = load i64, ptr %862, align 8, !tbaa !57
  %893 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %892, i64 %867), !nosanitize !45
  %894 = extractvalue { i64, i1 } %893, 1, !nosanitize !45
  br i1 %894, label %895, label %896, !prof !46, !nosanitize !45

895:                                              ; preds = %890
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

896:                                              ; preds = %890
  %897 = extractvalue { i64, i1 } %893, 0, !nosanitize !45
  store i64 %897, ptr %862, align 8, !tbaa !57
  %898 = icmp eq i64 %897, 0
  br i1 %898, label %899, label %902

899:                                              ; preds = %896
  %900 = getelementptr inbounds nuw i8, ptr %861, i64 16
  %901 = load ptr, ptr %900, align 8, !tbaa !40
  store ptr %901, ptr %873, align 8, !tbaa !58
  br label %902

902:                                              ; preds = %899, %896, %853
  %903 = load ptr, ptr %0, align 8, !tbaa !20
  %904 = getelementptr inbounds nuw i8, ptr %903, i64 32
  %905 = load i32, ptr %904, align 8, !tbaa !107
  %906 = icmp eq i32 %905, 0
  %907 = select i1 %906, i32 2, i32 3
  br label %973

908:                                              ; preds = %842
  %909 = load i32, ptr %27, align 4, !tbaa !139
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %972, label %911

911:                                              ; preds = %908
  %912 = load i64, ptr %9, align 8, !tbaa !74
  %913 = icmp sgt i64 %912, -1
  br i1 %913, label %914, label %918

914:                                              ; preds = %911
  %915 = load ptr, ptr %7, align 8, !tbaa !34
  %916 = and i64 %912, 4294967295
  %917 = getelementptr inbounds nuw i8, ptr %915, i64 %916
  br label %918

918:                                              ; preds = %914, %911
  %919 = phi ptr [ %917, %914 ], [ null, %911 ]
  %920 = zext i32 %843 to i64
  %921 = sub nsw i64 %920, %912
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %919, i64 noundef %921, i32 noundef 0) #11
  %922 = load i32, ptr %6, align 4, !tbaa !73
  %923 = zext i32 %922 to i64
  store i64 %923, ptr %9, align 8, !tbaa !74
  %924 = load ptr, ptr %0, align 8, !tbaa !20
  %925 = getelementptr inbounds nuw i8, ptr %924, i64 56
  %926 = load ptr, ptr %925, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %926) #11
  %927 = getelementptr inbounds nuw i8, ptr %926, i64 40
  %928 = load i64, ptr %927, align 8, !tbaa !57
  %929 = getelementptr inbounds nuw i8, ptr %924, i64 32
  %930 = load i32, ptr %929, align 8, !tbaa !107
  %931 = zext i32 %930 to i64
  %932 = tail call i64 @llvm.umin.i64(i64 %928, i64 %931)
  %933 = trunc nuw i64 %932 to i32
  %934 = icmp eq i64 %932, 0
  br i1 %934, label %967, label %935

935:                                              ; preds = %918
  %936 = getelementptr inbounds nuw i8, ptr %924, i64 24
  %937 = load ptr, ptr %936, align 8, !tbaa !106
  %938 = getelementptr inbounds nuw i8, ptr %926, i64 32
  %939 = load ptr, ptr %938, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %937, ptr align 1 %939, i64 %932, i1 false)
  %940 = load ptr, ptr %936, align 8, !tbaa !106
  %941 = getelementptr inbounds nuw i8, ptr %940, i64 %932
  store ptr %941, ptr %936, align 8, !tbaa !106
  %942 = load ptr, ptr %938, align 8, !tbaa !58
  %943 = getelementptr inbounds nuw i8, ptr %942, i64 %932
  store ptr %943, ptr %938, align 8, !tbaa !58
  %944 = getelementptr inbounds nuw i8, ptr %924, i64 40
  %945 = load i64, ptr %944, align 8, !tbaa !108
  %946 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %945, i64 %932), !nosanitize !45
  %947 = extractvalue { i64, i1 } %946, 1, !nosanitize !45
  br i1 %947, label %948, label %949, !prof !46, !nosanitize !45

948:                                              ; preds = %935
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

949:                                              ; preds = %935
  %950 = extractvalue { i64, i1 } %946, 0, !nosanitize !45
  store i64 %950, ptr %944, align 8, !tbaa !108
  %951 = load i32, ptr %929, align 8, !tbaa !107
  %952 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %951, i32 %933), !nosanitize !45
  %953 = extractvalue { i32, i1 } %952, 1, !nosanitize !45
  br i1 %953, label %954, label %955, !prof !46, !nosanitize !45

954:                                              ; preds = %949
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

955:                                              ; preds = %949
  %956 = extractvalue { i32, i1 } %952, 0, !nosanitize !45
  store i32 %956, ptr %929, align 8, !tbaa !107
  %957 = load i64, ptr %927, align 8, !tbaa !57
  %958 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %957, i64 %932), !nosanitize !45
  %959 = extractvalue { i64, i1 } %958, 1, !nosanitize !45
  br i1 %959, label %960, label %961, !prof !46, !nosanitize !45

960:                                              ; preds = %955
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

961:                                              ; preds = %955
  %962 = extractvalue { i64, i1 } %958, 0, !nosanitize !45
  store i64 %962, ptr %927, align 8, !tbaa !57
  %963 = icmp eq i64 %962, 0
  br i1 %963, label %964, label %967

964:                                              ; preds = %961
  %965 = getelementptr inbounds nuw i8, ptr %926, i64 16
  %966 = load ptr, ptr %965, align 8, !tbaa !40
  store ptr %966, ptr %938, align 8, !tbaa !58
  br label %967

967:                                              ; preds = %964, %961, %918
  %968 = load ptr, ptr %0, align 8, !tbaa !20
  %969 = getelementptr inbounds nuw i8, ptr %968, i64 32
  %970 = load i32, ptr %969, align 8, !tbaa !107
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %973, label %972

972:                                              ; preds = %967, %908
  br label %973

973:                                              ; preds = %972, %967, %902, %837, %361
  %974 = phi i32 [ 1, %972 ], [ %907, %902 ], [ 0, %967 ], [ 0, %361 ], [ 0, %837 ]
  ret i32 %974
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

36:                                               ; preds = %752, %2
  %37 = load i32, ptr %3, align 4, !tbaa !75
  %38 = icmp ult i32 %37, 262
  br i1 %38, label %39, label %375

39:                                               ; preds = %36
  %40 = load i32, ptr %4, align 8, !tbaa !32
  %41 = zext i32 %40 to i64
  br label %42

42:                                               ; preds = %318, %39
  %43 = phi i32 [ %245, %318 ], [ %37, %39 ]
  %44 = load i64, ptr %5, align 8, !tbaa !61
  %45 = zext nneg i32 %43 to i64
  %46 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %44, i64 %45), !nosanitize !45
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !45
  br i1 %47, label %48, label %49, !prof !46, !nosanitize !45

48:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

49:                                               ; preds = %42
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !45
  %51 = load i32, ptr %6, align 4, !tbaa !73
  %52 = zext i32 %51 to i64
  %53 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %50, i64 %52), !nosanitize !45
  %54 = extractvalue { i64, i1 } %53, 1, !nosanitize !45
  br i1 %54, label %55, label %56, !prof !46, !nosanitize !45

55:                                               ; preds = %49
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

56:                                               ; preds = %49
  %57 = extractvalue { i64, i1 } %53, 0, !nosanitize !45
  %58 = trunc i64 %57 to i32
  %59 = load i32, ptr %4, align 8, !tbaa !32
  %60 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %59, i32 262), !nosanitize !45
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !45
  br i1 %61, label %62, label %63, !prof !46, !nosanitize !45

62:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

63:                                               ; preds = %56
  %64 = extractvalue { i32, i1 } %60, 0, !nosanitize !45
  %65 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %40, i32 %64), !nosanitize !45
  %66 = extractvalue { i32, i1 } %65, 1, !nosanitize !45
  br i1 %66, label %67, label %68, !prof !46, !nosanitize !45

67:                                               ; preds = %63
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

68:                                               ; preds = %63
  %69 = extractvalue { i32, i1 } %65, 0, !nosanitize !45
  %70 = icmp ult i32 %51, %69
  br i1 %70, label %195, label %71

71:                                               ; preds = %68
  %72 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %40, i32 %58), !nosanitize !45
  %73 = extractvalue { i32, i1 } %72, 1, !nosanitize !45
  br i1 %73, label %74, label %75, !prof !46, !nosanitize !45

74:                                               ; preds = %71
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

75:                                               ; preds = %71
  %76 = extractvalue { i32, i1 } %72, 0, !nosanitize !45
  %77 = load ptr, ptr %7, align 8, !tbaa !34
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 %41
  %79 = zext i32 %76 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %77, ptr align 1 %78, i64 %79, i1 false)
  %80 = load i32, ptr %8, align 8, !tbaa !83
  %81 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %80, i32 %40), !nosanitize !45
  %82 = extractvalue { i32, i1 } %81, 1, !nosanitize !45
  br i1 %82, label %83, label %84, !prof !46, !nosanitize !45

83:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

84:                                               ; preds = %75
  %85 = extractvalue { i32, i1 } %81, 0, !nosanitize !45
  store i32 %85, ptr %8, align 8, !tbaa !83
  %86 = load i32, ptr %6, align 4, !tbaa !73
  %87 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %86, i32 %40), !nosanitize !45
  %88 = extractvalue { i32, i1 } %87, 1, !nosanitize !45
  br i1 %88, label %89, label %90, !prof !46, !nosanitize !45

89:                                               ; preds = %84
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

90:                                               ; preds = %84
  %91 = extractvalue { i32, i1 } %87, 0, !nosanitize !45
  store i32 %91, ptr %6, align 4, !tbaa !73
  %92 = load i64, ptr %9, align 8, !tbaa !74
  %93 = sub nsw i64 %92, %41
  store i64 %93, ptr %9, align 8, !tbaa !74
  %94 = load i32, ptr %10, align 4, !tbaa !76
  %95 = icmp ugt i32 %94, %91
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 %91, ptr %10, align 4, !tbaa !76
  br label %97

97:                                               ; preds = %96, %90
  %98 = load i32, ptr %4, align 8, !tbaa !32
  %99 = load i32, ptr %11, align 4, !tbaa !36
  %100 = load ptr, ptr %12, align 8, !tbaa !37
  %101 = zext i32 %99 to i64
  %102 = getelementptr inbounds nuw [2 x i8], ptr %100, i64 %101
  %103 = icmp eq i32 %99, 0
  br i1 %103, label %130, label %104, !prof !46, !nosanitize !45

104:                                              ; preds = %97
  %105 = icmp ult i32 %99, 8
  br i1 %105, label %127, label %106

106:                                              ; preds = %104
  %107 = and i64 %101, 4294967288
  %108 = mul nsw i64 %107, -2
  %109 = getelementptr i8, ptr %102, i64 %108
  %110 = trunc nuw i64 %107 to i32
  %111 = sub i32 %99, %110
  %112 = insertelement <8 x i32> poison, i32 %98, i64 0
  %113 = shufflevector <8 x i32> %112, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %114

114:                                              ; preds = %114, %106
  %115 = phi i64 [ 0, %106 ], [ %123, %114 ]
  %116 = mul i64 %115, -2
  %117 = getelementptr i8, ptr %102, i64 %116
  %118 = getelementptr inbounds i8, ptr %117, i64 -16
  %119 = load <8 x i16>, ptr %118, align 2, !tbaa !62
  %120 = zext <8 x i16> %119 to <8 x i32>
  %121 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %120, <8 x i32> %113)
  %122 = trunc nuw <8 x i32> %121 to <8 x i16>
  store <8 x i16> %122, ptr %118, align 2, !tbaa !62
  %123 = add nuw i64 %115, 8
  %124 = icmp eq i64 %123, %107
  br i1 %124, label %125, label %114, !llvm.loop !155

125:                                              ; preds = %114
  %126 = icmp eq i64 %107, %101
  br i1 %126, label %146, label %127

127:                                              ; preds = %125, %104
  %128 = phi ptr [ %102, %104 ], [ %109, %125 ]
  %129 = phi i32 [ %99, %104 ], [ %111, %125 ]
  br label %136

130:                                              ; preds = %97
  %131 = getelementptr inbounds i8, ptr %102, i64 -2
  %132 = load i16, ptr %131, align 2, !tbaa !62
  %133 = zext i16 %132 to i32
  %134 = tail call i32 @llvm.usub.sat.i32(i32 %133, i32 %98)
  %135 = trunc nuw i32 %134 to i16
  store i16 %135, ptr %131, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

136:                                              ; preds = %136, %127
  %137 = phi ptr [ %139, %136 ], [ %128, %127 ]
  %138 = phi i32 [ %144, %136 ], [ %129, %127 ]
  %139 = getelementptr inbounds i8, ptr %137, i64 -2
  %140 = load i16, ptr %139, align 2, !tbaa !62
  %141 = zext i16 %140 to i32
  %142 = tail call i32 @llvm.usub.sat.i32(i32 %141, i32 %98)
  %143 = trunc nuw i32 %142 to i16
  store i16 %143, ptr %139, align 2, !tbaa !62
  %144 = add i32 %138, -1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %136, !llvm.loop !156

146:                                              ; preds = %136, %125
  %147 = icmp eq i32 %98, 0
  br i1 %147, label %148, label %149, !prof !46, !nosanitize !45

148:                                              ; preds = %146
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

149:                                              ; preds = %146
  %150 = load ptr, ptr %13, align 8, !tbaa !35
  %151 = zext i32 %98 to i64
  %152 = getelementptr inbounds nuw [2 x i8], ptr %150, i64 %151
  %153 = icmp ult i32 %98, 8
  br i1 %153, label %175, label %154

154:                                              ; preds = %149
  %155 = and i64 %151, 4294967288
  %156 = mul nsw i64 %155, -2
  %157 = getelementptr i8, ptr %152, i64 %156
  %158 = trunc nuw i64 %155 to i32
  %159 = sub i32 %98, %158
  %160 = insertelement <8 x i32> poison, i32 %98, i64 0
  %161 = shufflevector <8 x i32> %160, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %162

162:                                              ; preds = %162, %154
  %163 = phi i64 [ 0, %154 ], [ %171, %162 ]
  %164 = mul i64 %163, -2
  %165 = getelementptr i8, ptr %152, i64 %164
  %166 = getelementptr inbounds i8, ptr %165, i64 -16
  %167 = load <8 x i16>, ptr %166, align 2, !tbaa !62
  %168 = zext <8 x i16> %167 to <8 x i32>
  %169 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %168, <8 x i32> %161)
  %170 = trunc nuw <8 x i32> %169 to <8 x i16>
  store <8 x i16> %170, ptr %166, align 2, !tbaa !62
  %171 = add nuw i64 %163, 8
  %172 = icmp eq i64 %171, %155
  br i1 %172, label %173, label %162, !llvm.loop !157

173:                                              ; preds = %162
  %174 = icmp eq i64 %155, %151
  br i1 %174, label %188, label %175

175:                                              ; preds = %173, %149
  %176 = phi ptr [ %152, %149 ], [ %157, %173 ]
  %177 = phi i32 [ %98, %149 ], [ %159, %173 ]
  br label %178

178:                                              ; preds = %178, %175
  %179 = phi ptr [ %181, %178 ], [ %176, %175 ]
  %180 = phi i32 [ %186, %178 ], [ %177, %175 ]
  %181 = getelementptr inbounds i8, ptr %179, i64 -2
  %182 = load i16, ptr %181, align 2, !tbaa !62
  %183 = zext i16 %182 to i32
  %184 = tail call i32 @llvm.usub.sat.i32(i32 %183, i32 %98)
  %185 = trunc nuw i32 %184 to i16
  store i16 %185, ptr %181, align 2, !tbaa !62
  %186 = add i32 %180, -1
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %178, !llvm.loop !158

188:                                              ; preds = %178, %173
  store i32 1, ptr %14, align 8, !tbaa !63
  %189 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %58, i32 %40), !nosanitize !45
  %190 = extractvalue { i32, i1 } %189, 1, !nosanitize !45
  br i1 %190, label %191, label %192, !prof !46, !nosanitize !45

191:                                              ; preds = %188
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

192:                                              ; preds = %188
  %193 = extractvalue { i32, i1 } %189, 0, !nosanitize !45
  %194 = load i32, ptr %3, align 4, !tbaa !75
  br label %195

195:                                              ; preds = %192, %68
  %196 = phi i32 [ %194, %192 ], [ %43, %68 ]
  %197 = phi i32 [ %91, %192 ], [ %51, %68 ]
  %198 = phi i32 [ %193, %192 ], [ %58, %68 ]
  %199 = load ptr, ptr %0, align 8, !tbaa !20
  %200 = getelementptr inbounds nuw i8, ptr %199, i64 8
  %201 = load i32, ptr %200, align 8, !tbaa !81
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %323, label %203

203:                                              ; preds = %195
  %204 = load ptr, ptr %7, align 8, !tbaa !34
  %205 = zext i32 %197 to i64
  %206 = getelementptr inbounds nuw i8, ptr %204, i64 %205
  %207 = zext i32 %196 to i64
  %208 = getelementptr inbounds nuw i8, ptr %206, i64 %207
  %209 = tail call i32 @llvm.umin.i32(i32 %201, i32 %198)
  %210 = icmp eq i32 %198, 0
  br i1 %210, label %239, label %211

211:                                              ; preds = %203
  %212 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %201, i32 %209), !nosanitize !45
  %213 = extractvalue { i32, i1 } %212, 0, !nosanitize !45
  store i32 %213, ptr %200, align 8, !tbaa !81
  %214 = load ptr, ptr %199, align 8, !tbaa !82
  %215 = zext i32 %209 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %208, ptr align 1 %214, i64 %215, i1 false)
  %216 = getelementptr inbounds nuw i8, ptr %199, i64 56
  %217 = load ptr, ptr %216, align 8, !tbaa !19
  %218 = getelementptr inbounds nuw i8, ptr %217, i64 48
  %219 = load i32, ptr %218, align 8, !tbaa !30
  switch i32 %219, label %228 [
    i32 1, label %220
    i32 2, label %224
  ]

220:                                              ; preds = %211
  %221 = getelementptr inbounds nuw i8, ptr %199, i64 96
  %222 = load i64, ptr %221, align 8, !tbaa !59
  %223 = tail call i64 @adler32(i64 noundef %222, ptr noundef %208, i32 noundef %209) #11
  store i64 %223, ptr %221, align 8, !tbaa !59
  br label %228

224:                                              ; preds = %211
  %225 = getelementptr inbounds nuw i8, ptr %199, i64 96
  %226 = load i64, ptr %225, align 8, !tbaa !59
  %227 = tail call i64 @crc32(i64 noundef %226, ptr noundef %208, i32 noundef %209) #11
  store i64 %227, ptr %225, align 8, !tbaa !59
  br label %228

228:                                              ; preds = %224, %220, %211
  %229 = load ptr, ptr %199, align 8, !tbaa !82
  %230 = getelementptr inbounds nuw i8, ptr %229, i64 %215
  store ptr %230, ptr %199, align 8, !tbaa !82
  %231 = getelementptr inbounds nuw i8, ptr %199, i64 16
  %232 = load i64, ptr %231, align 8, !tbaa !55
  %233 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %232, i64 %215), !nosanitize !45
  %234 = extractvalue { i64, i1 } %233, 1, !nosanitize !45
  br i1 %234, label %235, label %236, !prof !46, !nosanitize !45

235:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

236:                                              ; preds = %228
  %237 = extractvalue { i64, i1 } %233, 0, !nosanitize !45
  store i64 %237, ptr %231, align 8, !tbaa !55
  %238 = load i32, ptr %3, align 4, !tbaa !75
  br label %239

239:                                              ; preds = %236, %203
  %240 = phi i32 [ %196, %203 ], [ %238, %236 ]
  %241 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 %209), !nosanitize !45
  %242 = extractvalue { i32, i1 } %241, 1, !nosanitize !45
  br i1 %242, label %243, label %244, !prof !46, !nosanitize !45

243:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

244:                                              ; preds = %239
  %245 = extractvalue { i32, i1 } %241, 0, !nosanitize !45
  store i32 %245, ptr %3, align 4, !tbaa !75
  %246 = load i32, ptr %10, align 4, !tbaa !76
  %247 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %245, i32 %246), !nosanitize !45
  %248 = extractvalue { i32, i1 } %247, 1, !nosanitize !45
  br i1 %248, label %249, label %250, !prof !46, !nosanitize !45

249:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

250:                                              ; preds = %244
  %251 = extractvalue { i32, i1 } %247, 0, !nosanitize !45
  %252 = icmp ugt i32 %251, 2
  br i1 %252, label %253, label %316

253:                                              ; preds = %250
  %254 = load i32, ptr %6, align 4, !tbaa !73
  %255 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %254, i32 %246), !nosanitize !45
  %256 = extractvalue { i32, i1 } %255, 0, !nosanitize !45
  %257 = extractvalue { i32, i1 } %255, 1, !nosanitize !45
  br i1 %257, label %258, label %259, !prof !46, !nosanitize !45

258:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

259:                                              ; preds = %253
  %260 = load ptr, ptr %7, align 8, !tbaa !34
  %261 = zext i32 %256 to i64
  %262 = getelementptr inbounds nuw i8, ptr %260, i64 %261
  %263 = load i8, ptr %262, align 1, !tbaa !8
  %264 = zext i8 %263 to i32
  store i32 %264, ptr %15, align 8, !tbaa !80
  %265 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %256, i32 1), !nosanitize !45
  %266 = extractvalue { i32, i1 } %265, 1, !nosanitize !45
  br i1 %266, label %267, label %268, !prof !46, !nosanitize !45

267:                                              ; preds = %259
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

268:                                              ; preds = %259
  %269 = extractvalue { i32, i1 } %265, 0, !nosanitize !45
  %270 = load i32, ptr %16, align 8, !tbaa !53
  %271 = shl i32 %264, %270
  %272 = zext i32 %269 to i64
  %273 = getelementptr inbounds nuw i8, ptr %260, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !8
  %275 = zext i8 %274 to i32
  %276 = xor i32 %271, %275
  %277 = load i32, ptr %17, align 4, !tbaa !52
  %278 = and i32 %276, %277
  store i32 %278, ptr %15, align 8, !tbaa !80
  br label %279

279:                                              ; preds = %312, %268
  %280 = phi i32 [ %278, %268 ], [ %297, %312 ]
  %281 = phi i32 [ %246, %268 ], [ %308, %312 ]
  %282 = phi i32 [ %256, %268 ], [ %313, %312 ]
  %283 = icmp eq i32 %281, 0
  br i1 %283, label %316, label %284

284:                                              ; preds = %279
  %285 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %282, i32 3), !nosanitize !45
  %286 = extractvalue { i32, i1 } %285, 1, !nosanitize !45
  br i1 %286, label %287, label %288, !prof !46, !nosanitize !45

287:                                              ; preds = %284
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

288:                                              ; preds = %284
  %289 = shl i32 %280, %270
  %290 = extractvalue { i32, i1 } %285, 0, !nosanitize !45
  %291 = add i32 %290, -1
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds nuw i8, ptr %260, i64 %292
  %294 = load i8, ptr %293, align 1, !tbaa !8
  %295 = zext i8 %294 to i32
  %296 = xor i32 %289, %295
  %297 = and i32 %296, %277
  store i32 %297, ptr %15, align 8, !tbaa !80
  %298 = load ptr, ptr %12, align 8, !tbaa !37
  %299 = zext i32 %297 to i64
  %300 = getelementptr inbounds nuw [2 x i8], ptr %298, i64 %299
  %301 = load i16, ptr %300, align 2, !tbaa !62
  %302 = load ptr, ptr %13, align 8, !tbaa !35
  %303 = load i32, ptr %18, align 8, !tbaa !33
  %304 = and i32 %303, %282
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds nuw [2 x i8], ptr %302, i64 %305
  store i16 %301, ptr %306, align 2, !tbaa !62
  %307 = trunc i32 %282 to i16
  store i16 %307, ptr %300, align 2, !tbaa !62
  %308 = add i32 %281, -1
  store i32 %308, ptr %10, align 4, !tbaa !76
  %309 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %245, i32 %308), !nosanitize !45
  %310 = extractvalue { i32, i1 } %309, 1, !nosanitize !45
  br i1 %310, label %311, label %312, !prof !46, !nosanitize !45

311:                                              ; preds = %288
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

312:                                              ; preds = %288
  %313 = add nuw i32 %282, 1
  %314 = extractvalue { i32, i1 } %309, 0, !nosanitize !45
  %315 = icmp ult i32 %314, 3
  br i1 %315, label %316, label %279, !llvm.loop !91

316:                                              ; preds = %312, %279, %250
  %317 = icmp ult i32 %245, 262
  br i1 %317, label %318, label %323

318:                                              ; preds = %316
  %319 = load ptr, ptr %0, align 8, !tbaa !20
  %320 = getelementptr inbounds nuw i8, ptr %319, i64 8
  %321 = load i32, ptr %320, align 8, !tbaa !81
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %42, !llvm.loop !92

323:                                              ; preds = %318, %316, %195
  %324 = phi i32 [ %245, %318 ], [ %245, %316 ], [ %196, %195 ]
  %325 = load i64, ptr %19, align 8, !tbaa !38
  %326 = load i64, ptr %5, align 8, !tbaa !61
  %327 = icmp ult i64 %325, %326
  br i1 %327, label %328, label %364

328:                                              ; preds = %323
  %329 = load i32, ptr %6, align 4, !tbaa !73
  %330 = zext i32 %329 to i64
  %331 = zext i32 %324 to i64
  %332 = add nuw nsw i64 %331, %330
  %333 = icmp ult i64 %325, %332
  br i1 %333, label %334, label %344

334:                                              ; preds = %328
  %335 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %326, i64 %332), !nosanitize !45
  %336 = extractvalue { i64, i1 } %335, 1, !nosanitize !45
  br i1 %336, label %337, label %338, !prof !46, !nosanitize !45

337:                                              ; preds = %334
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

338:                                              ; preds = %334
  %339 = extractvalue { i64, i1 } %335, 0, !nosanitize !45
  %340 = tail call i64 @llvm.umin.i64(i64 %339, i64 258)
  %341 = load ptr, ptr %7, align 8, !tbaa !34
  %342 = getelementptr inbounds nuw i8, ptr %341, i64 %332
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %342, i8 0, i64 %340, i1 false)
  %343 = add nuw nsw i64 %340, %332
  br label %361

344:                                              ; preds = %328
  %345 = add nuw nsw i64 %332, 258
  %346 = icmp ult i64 %325, %345
  br i1 %346, label %347, label %364

347:                                              ; preds = %344
  %348 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %326, i64 %325), !nosanitize !45
  %349 = sub nuw nsw i64 %345, %325
  %350 = extractvalue { i64, i1 } %348, 0, !nosanitize !45
  %351 = tail call i64 @llvm.umin.i64(i64 %349, i64 %350)
  %352 = load ptr, ptr %7, align 8, !tbaa !34
  %353 = getelementptr inbounds nuw i8, ptr %352, i64 %325
  %354 = and i64 %351, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %353, i8 0, i64 %354, i1 false)
  %355 = load i64, ptr %19, align 8, !tbaa !38
  %356 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %355, i64 %351), !nosanitize !45
  %357 = extractvalue { i64, i1 } %356, 1, !nosanitize !45
  br i1 %357, label %358, label %359, !prof !46, !nosanitize !45

358:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

359:                                              ; preds = %347
  %360 = extractvalue { i64, i1 } %356, 0, !nosanitize !45
  br label %361

361:                                              ; preds = %359, %338
  %362 = phi i64 [ %343, %338 ], [ %360, %359 ]
  store i64 %362, ptr %19, align 8, !tbaa !38
  %363 = load i32, ptr %3, align 4, !tbaa !75
  br label %364

364:                                              ; preds = %361, %344, %323
  %365 = phi i32 [ %324, %323 ], [ %324, %344 ], [ %363, %361 ]
  %366 = icmp ult i32 %365, 262
  %367 = and i1 %20, %366
  br i1 %367, label %1125, label %368

368:                                              ; preds = %364
  %369 = icmp eq i32 %365, 0
  br i1 %369, label %948, label %370

370:                                              ; preds = %368
  %371 = icmp ugt i32 %365, 2
  br i1 %371, label %375, label %372

372:                                              ; preds = %370
  %373 = load i32, ptr %21, align 8, !tbaa !78
  store i32 %373, ptr %22, align 8, !tbaa !77
  %374 = load i32, ptr %8, align 8, !tbaa !83
  store i32 %374, ptr %23, align 4, !tbaa !159
  br label %594

375:                                              ; preds = %370, %36
  %376 = phi i32 [ %365, %370 ], [ %37, %36 ]
  %377 = load i32, ptr %6, align 4, !tbaa !73
  %378 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %377, i32 2), !nosanitize !45
  %379 = extractvalue { i32, i1 } %378, 1, !nosanitize !45
  br i1 %379, label %380, label %381, !prof !46, !nosanitize !45

380:                                              ; preds = %375
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

381:                                              ; preds = %375
  %382 = extractvalue { i32, i1 } %378, 0, !nosanitize !45
  %383 = load ptr, ptr %7, align 8, !tbaa !34
  %384 = load i32, ptr %15, align 8, !tbaa !80
  %385 = load i32, ptr %16, align 8, !tbaa !53
  %386 = shl i32 %384, %385
  %387 = zext i32 %382 to i64
  %388 = getelementptr inbounds nuw i8, ptr %383, i64 %387
  %389 = load i8, ptr %388, align 1, !tbaa !8
  %390 = zext i8 %389 to i32
  %391 = xor i32 %386, %390
  %392 = load i32, ptr %17, align 4, !tbaa !52
  %393 = and i32 %391, %392
  store i32 %393, ptr %15, align 8, !tbaa !80
  %394 = load ptr, ptr %12, align 8, !tbaa !37
  %395 = zext i32 %393 to i64
  %396 = getelementptr inbounds nuw [2 x i8], ptr %394, i64 %395
  %397 = load i16, ptr %396, align 2, !tbaa !62
  %398 = load ptr, ptr %13, align 8, !tbaa !35
  %399 = load i32, ptr %18, align 8, !tbaa !33
  %400 = and i32 %399, %377
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds nuw [2 x i8], ptr %398, i64 %401
  store i16 %397, ptr %402, align 2, !tbaa !62
  %403 = zext i16 %397 to i32
  %404 = trunc i32 %377 to i16
  store i16 %404, ptr %396, align 2, !tbaa !62
  %405 = load i32, ptr %21, align 8, !tbaa !78
  store i32 %405, ptr %22, align 8, !tbaa !77
  %406 = load i32, ptr %8, align 8, !tbaa !83
  store i32 %406, ptr %23, align 4, !tbaa !159
  store i32 2, ptr %21, align 8, !tbaa !78
  %407 = icmp eq i16 %397, 0
  br i1 %407, label %598, label %408

408:                                              ; preds = %381
  %409 = load i32, ptr %24, align 8, !tbaa !66
  %410 = icmp ult i32 %405, %409
  br i1 %410, label %411, label %598

411:                                              ; preds = %408
  %412 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %377, i32 %403), !nosanitize !45
  %413 = extractvalue { i32, i1 } %412, 0, !nosanitize !45
  %414 = extractvalue { i32, i1 } %412, 1, !nosanitize !45
  br i1 %414, label %415, label %416, !prof !46, !nosanitize !45

415:                                              ; preds = %411
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

416:                                              ; preds = %411
  %417 = load i32, ptr %4, align 8, !tbaa !32
  %418 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %417, i32 262), !nosanitize !45
  %419 = extractvalue { i32, i1 } %418, 1, !nosanitize !45
  br i1 %419, label %420, label %421, !prof !46, !nosanitize !45

420:                                              ; preds = %416
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

421:                                              ; preds = %416
  %422 = extractvalue { i32, i1 } %418, 0, !nosanitize !45
  %423 = icmp ugt i32 %413, %422
  br i1 %423, label %598, label %424

424:                                              ; preds = %421
  %425 = zext i32 %377 to i64
  %426 = getelementptr inbounds nuw i8, ptr %383, i64 %425
  %427 = load i32, ptr %25, align 8, !tbaa !70
  %428 = load i32, ptr %26, align 4, !tbaa !72
  %429 = tail call i32 @llvm.usub.sat.i32(i32 %377, i32 %422)
  %430 = getelementptr inbounds nuw i8, ptr %426, i64 258
  %431 = sext i32 %405 to i64
  %432 = getelementptr i8, ptr %426, i64 %431
  %433 = getelementptr i8, ptr %432, i64 -1
  %434 = load i8, ptr %433, align 1, !tbaa !8
  %435 = load i8, ptr %432, align 1, !tbaa !8
  %436 = load i32, ptr %27, align 4, !tbaa !68
  %437 = icmp ult i32 %405, %436
  %438 = lshr i32 %428, 2
  %439 = select i1 %437, i32 %428, i32 %438
  %440 = tail call i32 @llvm.umin.i32(i32 %427, i32 %376)
  %441 = getelementptr inbounds nuw i8, ptr %426, i64 1
  %442 = ptrtoint ptr %430 to i64
  br label %443

443:                                              ; preds = %574, %424
  %444 = phi i32 [ %406, %424 ], [ %560, %574 ]
  %445 = phi i32 [ %405, %424 ], [ %561, %574 ]
  %446 = phi i32 [ %439, %424 ], [ %575, %574 ]
  %447 = phi i32 [ %403, %424 ], [ %568, %574 ]
  %448 = phi i8 [ %434, %424 ], [ %562, %574 ]
  %449 = phi i8 [ %435, %424 ], [ %563, %574 ]
  %450 = zext nneg i32 %447 to i64
  %451 = getelementptr inbounds nuw i8, ptr %383, i64 %450
  %452 = sext i32 %445 to i64
  %453 = getelementptr inbounds i8, ptr %451, i64 %452
  %454 = load i8, ptr %453, align 1, !tbaa !8
  %455 = icmp eq i8 %454, %449
  br i1 %455, label %456, label %559

456:                                              ; preds = %443
  %457 = getelementptr i8, ptr %453, i64 -1
  %458 = load i8, ptr %457, align 1, !tbaa !8
  %459 = icmp eq i8 %458, %448
  br i1 %459, label %460, label %559

460:                                              ; preds = %456
  %461 = load i8, ptr %451, align 1, !tbaa !8
  %462 = load i8, ptr %426, align 1, !tbaa !8
  %463 = icmp eq i8 %461, %462
  br i1 %463, label %464, label %559

464:                                              ; preds = %460
  %465 = getelementptr inbounds nuw i8, ptr %451, i64 1
  %466 = load i8, ptr %465, align 1, !tbaa !8
  %467 = load i8, ptr %441, align 1, !tbaa !8
  %468 = icmp eq i8 %466, %467
  br i1 %468, label %469, label %559

469:                                              ; preds = %464
  %470 = getelementptr inbounds nuw i8, ptr %451, i64 2
  br label %471

471:                                              ; preds = %516, %469
  %472 = phi ptr [ %470, %469 ], [ %520, %516 ]
  %473 = phi i64 [ 2, %469 ], [ %517, %516 ]
  %474 = getelementptr inbounds nuw i8, ptr %426, i64 %473
  %475 = getelementptr inbounds nuw i8, ptr %474, i64 1
  %476 = load i8, ptr %475, align 1, !tbaa !8
  %477 = getelementptr inbounds nuw i8, ptr %472, i64 1
  %478 = load i8, ptr %477, align 1, !tbaa !8
  %479 = icmp eq i8 %476, %478
  br i1 %479, label %480, label %525

480:                                              ; preds = %471
  %481 = getelementptr inbounds nuw i8, ptr %474, i64 2
  %482 = load i8, ptr %481, align 1, !tbaa !8
  %483 = getelementptr inbounds nuw i8, ptr %472, i64 2
  %484 = load i8, ptr %483, align 1, !tbaa !8
  %485 = icmp eq i8 %482, %484
  br i1 %485, label %486, label %527

486:                                              ; preds = %480
  %487 = getelementptr inbounds nuw i8, ptr %474, i64 3
  %488 = load i8, ptr %487, align 1, !tbaa !8
  %489 = getelementptr inbounds nuw i8, ptr %472, i64 3
  %490 = load i8, ptr %489, align 1, !tbaa !8
  %491 = icmp eq i8 %488, %490
  br i1 %491, label %492, label %529

492:                                              ; preds = %486
  %493 = getelementptr inbounds nuw i8, ptr %474, i64 4
  %494 = load i8, ptr %493, align 1, !tbaa !8
  %495 = getelementptr inbounds nuw i8, ptr %472, i64 4
  %496 = load i8, ptr %495, align 1, !tbaa !8
  %497 = icmp eq i8 %494, %496
  br i1 %497, label %498, label %531

498:                                              ; preds = %492
  %499 = getelementptr inbounds nuw i8, ptr %474, i64 5
  %500 = load i8, ptr %499, align 1, !tbaa !8
  %501 = getelementptr inbounds nuw i8, ptr %472, i64 5
  %502 = load i8, ptr %501, align 1, !tbaa !8
  %503 = icmp eq i8 %500, %502
  br i1 %503, label %504, label %533

504:                                              ; preds = %498
  %505 = getelementptr inbounds nuw i8, ptr %474, i64 6
  %506 = load i8, ptr %505, align 1, !tbaa !8
  %507 = getelementptr inbounds nuw i8, ptr %472, i64 6
  %508 = load i8, ptr %507, align 1, !tbaa !8
  %509 = icmp eq i8 %506, %508
  br i1 %509, label %510, label %535

510:                                              ; preds = %504
  %511 = getelementptr inbounds nuw i8, ptr %474, i64 7
  %512 = load i8, ptr %511, align 1, !tbaa !8
  %513 = getelementptr inbounds nuw i8, ptr %472, i64 7
  %514 = load i8, ptr %513, align 1, !tbaa !8
  %515 = icmp eq i8 %512, %514
  br i1 %515, label %516, label %537

516:                                              ; preds = %510
  %517 = add nuw nsw i64 %473, 8
  %518 = getelementptr inbounds nuw i8, ptr %426, i64 %517
  %519 = load i8, ptr %518, align 1, !tbaa !8
  %520 = getelementptr inbounds nuw i8, ptr %472, i64 8
  %521 = load i8, ptr %520, align 1, !tbaa !8
  %522 = icmp eq i8 %519, %521
  %523 = icmp samesign ult i64 %473, 250
  %524 = select i1 %522, i1 %523, i1 false
  br i1 %524, label %471, label %539, !llvm.loop !152

525:                                              ; preds = %471
  %526 = getelementptr inbounds nuw i8, ptr %474, i64 1
  br label %541

527:                                              ; preds = %480
  %528 = getelementptr inbounds nuw i8, ptr %474, i64 2
  br label %541

529:                                              ; preds = %486
  %530 = getelementptr inbounds nuw i8, ptr %474, i64 3
  br label %541

531:                                              ; preds = %492
  %532 = getelementptr inbounds nuw i8, ptr %474, i64 4
  br label %541

533:                                              ; preds = %498
  %534 = getelementptr inbounds nuw i8, ptr %474, i64 5
  br label %541

535:                                              ; preds = %504
  %536 = getelementptr inbounds nuw i8, ptr %474, i64 6
  br label %541

537:                                              ; preds = %510
  %538 = getelementptr inbounds nuw i8, ptr %474, i64 7
  br label %541

539:                                              ; preds = %516
  %540 = getelementptr inbounds nuw i8, ptr %426, i64 %517
  br label %541

541:                                              ; preds = %539, %537, %535, %533, %531, %529, %527, %525
  %542 = phi ptr [ %528, %527 ], [ %530, %529 ], [ %526, %525 ], [ %538, %537 ], [ %536, %535 ], [ %534, %533 ], [ %532, %531 ], [ %540, %539 ]
  %543 = ptrtoint ptr %542 to i64
  %544 = sub i64 %543, %442
  %545 = trunc i64 %544 to i32
  %546 = add i32 %545, 258
  %547 = icmp sgt i32 %546, %445
  br i1 %547, label %548, label %559

548:                                              ; preds = %541
  store i32 %447, ptr %8, align 8, !tbaa !83
  %549 = icmp slt i32 %546, %440
  br i1 %549, label %550, label %577

550:                                              ; preds = %548
  %551 = shl i64 %544, 32
  %552 = add i64 %551, 1103806595072
  %553 = ashr exact i64 %552, 32
  %554 = getelementptr inbounds i8, ptr %426, i64 %553
  %555 = load i8, ptr %554, align 1, !tbaa !8
  %556 = sext i32 %546 to i64
  %557 = getelementptr inbounds i8, ptr %426, i64 %556
  %558 = load i8, ptr %557, align 1, !tbaa !8
  br label %559

559:                                              ; preds = %550, %541, %464, %460, %456, %443
  %560 = phi i32 [ %444, %443 ], [ %444, %456 ], [ %444, %460 ], [ %444, %464 ], [ %447, %550 ], [ %444, %541 ]
  %561 = phi i32 [ %445, %443 ], [ %445, %456 ], [ %445, %460 ], [ %445, %464 ], [ %546, %550 ], [ %445, %541 ]
  %562 = phi i8 [ %448, %443 ], [ %448, %456 ], [ %448, %460 ], [ %448, %464 ], [ %555, %550 ], [ %448, %541 ]
  %563 = phi i8 [ %449, %443 ], [ %449, %456 ], [ %449, %460 ], [ %449, %464 ], [ %558, %550 ], [ %449, %541 ]
  %564 = and i32 %447, %399
  %565 = zext nneg i32 %564 to i64
  %566 = getelementptr inbounds nuw [2 x i8], ptr %398, i64 %565
  %567 = load i16, ptr %566, align 2, !tbaa !62
  %568 = zext i16 %567 to i32
  %569 = icmp ult i32 %429, %568
  br i1 %569, label %570, label %577

570:                                              ; preds = %559
  %571 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %446, i32 1), !nosanitize !45
  %572 = extractvalue { i32, i1 } %571, 1, !nosanitize !45
  br i1 %572, label %573, label %574, !prof !46, !nosanitize !45

573:                                              ; preds = %570
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

574:                                              ; preds = %570
  %575 = extractvalue { i32, i1 } %571, 0, !nosanitize !45
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %443, !llvm.loop !153

577:                                              ; preds = %574, %559, %548
  %578 = phi i32 [ %560, %574 ], [ %560, %559 ], [ %447, %548 ]
  %579 = phi i32 [ %561, %574 ], [ %561, %559 ], [ %546, %548 ]
  %580 = tail call i32 @llvm.umin.i32(i32 %579, i32 %376)
  store i32 %580, ptr %21, align 8, !tbaa !78
  %581 = icmp ult i32 %580, 6
  br i1 %581, label %582, label %598

582:                                              ; preds = %577
  %583 = load i32, ptr %28, align 8, !tbaa !49
  %584 = icmp eq i32 %583, 1
  br i1 %584, label %594, label %585

585:                                              ; preds = %582
  %586 = icmp eq i32 %580, 3
  br i1 %586, label %587, label %598

587:                                              ; preds = %585
  %588 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %377, i32 %578), !nosanitize !45
  %589 = extractvalue { i32, i1 } %588, 1, !nosanitize !45
  br i1 %589, label %590, label %591, !prof !46, !nosanitize !45

590:                                              ; preds = %587
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

591:                                              ; preds = %587
  %592 = extractvalue { i32, i1 } %588, 0, !nosanitize !45
  %593 = icmp ugt i32 %592, 4096
  br i1 %593, label %594, label %598

594:                                              ; preds = %591, %582, %372
  %595 = phi i32 [ %374, %372 ], [ %406, %591 ], [ %406, %582 ]
  %596 = phi i32 [ %373, %372 ], [ %405, %591 ], [ %405, %582 ]
  %597 = phi i32 [ %365, %372 ], [ %376, %591 ], [ %376, %582 ]
  store i32 2, ptr %21, align 8, !tbaa !78
  br label %598

598:                                              ; preds = %594, %591, %585, %577, %421, %408, %381
  %599 = phi i32 [ 2, %408 ], [ %580, %577 ], [ %580, %585 ], [ 3, %591 ], [ 2, %381 ], [ 2, %421 ], [ 2, %594 ]
  %600 = phi i32 [ %406, %408 ], [ %406, %577 ], [ %406, %585 ], [ %406, %591 ], [ %406, %381 ], [ %406, %421 ], [ %595, %594 ]
  %601 = phi i32 [ %405, %408 ], [ %405, %577 ], [ %405, %585 ], [ %405, %591 ], [ %405, %381 ], [ %405, %421 ], [ %596, %594 ]
  %602 = phi i32 [ %376, %408 ], [ %376, %577 ], [ %376, %585 ], [ %376, %591 ], [ %376, %381 ], [ %376, %421 ], [ %597, %594 ]
  %603 = icmp ult i32 %601, 3
  %604 = icmp ugt i32 %599, %601
  %605 = or i1 %603, %604
  br i1 %605, label %814, label %606

606:                                              ; preds = %598
  %607 = load i32, ptr %6, align 4, !tbaa !73
  %608 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %607, i32 %602), !nosanitize !45
  %609 = extractvalue { i32, i1 } %608, 1, !nosanitize !45
  br i1 %609, label %610, label %611, !prof !46, !nosanitize !45

610:                                              ; preds = %606
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

611:                                              ; preds = %606
  %612 = extractvalue { i32, i1 } %608, 0, !nosanitize !45
  %613 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %612, i32 3), !nosanitize !45
  %614 = extractvalue { i32, i1 } %613, 0, !nosanitize !45
  %615 = extractvalue { i32, i1 } %613, 1, !nosanitize !45
  br i1 %615, label %616, label %617, !prof !46, !nosanitize !45

616:                                              ; preds = %611
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

617:                                              ; preds = %611
  %618 = trunc i32 %601 to i8
  %619 = add i8 %618, -3
  %620 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %607, i32 1), !nosanitize !45
  %621 = extractvalue { i32, i1 } %620, 1, !nosanitize !45
  br i1 %621, label %622, label %623, !prof !46, !nosanitize !45

622:                                              ; preds = %617
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

623:                                              ; preds = %617
  %624 = extractvalue { i32, i1 } %620, 0, !nosanitize !45
  %625 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %624, i32 %600), !nosanitize !45
  %626 = extractvalue { i32, i1 } %625, 1, !nosanitize !45
  br i1 %626, label %627, label %628, !prof !46, !nosanitize !45

627:                                              ; preds = %623
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

628:                                              ; preds = %623
  %629 = extractvalue { i32, i1 } %625, 0, !nosanitize !45
  %630 = trunc i32 %629 to i16
  %631 = load i32, ptr %30, align 4, !tbaa !139
  %632 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %631, i32 1), !nosanitize !45
  %633 = extractvalue { i32, i1 } %632, 1, !nosanitize !45
  br i1 %633, label %634, label %635, !prof !46, !nosanitize !45

634:                                              ; preds = %628
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

635:                                              ; preds = %628
  %636 = extractvalue { i32, i1 } %632, 0, !nosanitize !45
  %637 = load ptr, ptr %29, align 8, !tbaa !44
  %638 = trunc i32 %629 to i8
  store i32 %636, ptr %30, align 4, !tbaa !139
  %639 = zext i32 %631 to i64
  %640 = getelementptr inbounds nuw i8, ptr %637, i64 %639
  store i8 %638, ptr %640, align 1, !tbaa !8
  %641 = load i32, ptr %30, align 4, !tbaa !139
  %642 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %641, i32 1), !nosanitize !45
  %643 = extractvalue { i32, i1 } %642, 1, !nosanitize !45
  br i1 %643, label %644, label %645, !prof !46, !nosanitize !45

644:                                              ; preds = %635
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

645:                                              ; preds = %635
  %646 = extractvalue { i32, i1 } %642, 0, !nosanitize !45
  %647 = load ptr, ptr %29, align 8, !tbaa !44
  %648 = lshr i32 %629, 8
  %649 = trunc i32 %648 to i8
  store i32 %646, ptr %30, align 4, !tbaa !139
  %650 = zext i32 %641 to i64
  %651 = getelementptr inbounds nuw i8, ptr %647, i64 %650
  store i8 %649, ptr %651, align 1, !tbaa !8
  %652 = load i32, ptr %30, align 4, !tbaa !139
  %653 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %652, i32 1), !nosanitize !45
  %654 = extractvalue { i32, i1 } %653, 1, !nosanitize !45
  br i1 %654, label %655, label %656, !prof !46, !nosanitize !45

655:                                              ; preds = %645
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

656:                                              ; preds = %645
  %657 = extractvalue { i32, i1 } %653, 0, !nosanitize !45
  %658 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %657, ptr %30, align 4, !tbaa !139
  %659 = zext i32 %652 to i64
  %660 = getelementptr inbounds nuw i8, ptr %658, i64 %659
  store i8 %619, ptr %660, align 1, !tbaa !8
  %661 = add i16 %630, -1
  %662 = zext i8 %619 to i64
  %663 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %662
  %664 = load i8, ptr %663, align 1, !tbaa !8
  %665 = zext i8 %664 to i64
  %666 = getelementptr [4 x i8], ptr %31, i64 %665
  %667 = load i16, ptr %666, align 4, !tbaa !8
  %668 = add i16 %667, 1
  store i16 %668, ptr %666, align 4, !tbaa !8
  %669 = icmp ult i16 %661, 256
  br i1 %669, label %670, label %673

670:                                              ; preds = %656
  %671 = zext nneg i16 %661 to i64
  %672 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %671
  br label %678

673:                                              ; preds = %656
  %674 = lshr i16 %661, 7
  %675 = zext nneg i16 %674 to i64
  %676 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %675
  %677 = getelementptr inbounds nuw i8, ptr %676, i64 256
  br label %678

678:                                              ; preds = %673, %670
  %679 = phi ptr [ %672, %670 ], [ %677, %673 ]
  %680 = load i8, ptr %679, align 1, !tbaa !8
  %681 = zext i8 %680 to i64
  %682 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %681
  %683 = load i16, ptr %682, align 4, !tbaa !8
  %684 = add i16 %683, 1
  store i16 %684, ptr %682, align 4, !tbaa !8
  %685 = load i32, ptr %30, align 4, !tbaa !139
  %686 = load i32, ptr %33, align 8, !tbaa !47
  %687 = icmp eq i32 %685, %686
  %688 = load i32, ptr %22, align 8, !tbaa !77
  %689 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %688, i32 1), !nosanitize !45
  %690 = extractvalue { i32, i1 } %689, 1, !nosanitize !45
  br i1 %690, label %691, label %692, !prof !46, !nosanitize !45

691:                                              ; preds = %678
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

692:                                              ; preds = %678
  %693 = extractvalue { i32, i1 } %689, 0, !nosanitize !45
  %694 = load i32, ptr %3, align 4, !tbaa !75
  %695 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %694, i32 %693), !nosanitize !45
  %696 = extractvalue { i32, i1 } %695, 1, !nosanitize !45
  br i1 %696, label %697, label %698, !prof !46, !nosanitize !45

697:                                              ; preds = %692
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

698:                                              ; preds = %692
  %699 = extractvalue { i32, i1 } %695, 0, !nosanitize !45
  store i32 %699, ptr %3, align 4, !tbaa !75
  %700 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %688, i32 2), !nosanitize !45
  %701 = extractvalue { i32, i1 } %700, 1, !nosanitize !45
  br i1 %701, label %702, label %703, !prof !46, !nosanitize !45

702:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

703:                                              ; preds = %698
  %704 = extractvalue { i32, i1 } %700, 0, !nosanitize !45
  store i32 %704, ptr %22, align 8, !tbaa !77
  %705 = load i32, ptr %6, align 4, !tbaa !73
  br label %706

706:                                              ; preds = %743, %703
  %707 = phi i32 [ %744, %743 ], [ %704, %703 ]
  %708 = phi i32 [ %710, %743 ], [ %705, %703 ]
  %709 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %708, i32 1), !nosanitize !45
  %710 = extractvalue { i32, i1 } %709, 0, !nosanitize !45
  %711 = extractvalue { i32, i1 } %709, 1, !nosanitize !45
  br i1 %711, label %712, label %713, !prof !46, !nosanitize !45

712:                                              ; preds = %706
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

713:                                              ; preds = %706
  store i32 %710, ptr %6, align 4, !tbaa !73
  %714 = icmp ugt i32 %710, %614
  br i1 %714, label %739, label %715

715:                                              ; preds = %713
  %716 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %710, i32 2), !nosanitize !45
  %717 = extractvalue { i32, i1 } %716, 0, !nosanitize !45
  %718 = load ptr, ptr %7, align 8, !tbaa !34
  %719 = load i32, ptr %15, align 8, !tbaa !80
  %720 = load i32, ptr %16, align 8, !tbaa !53
  %721 = shl i32 %719, %720
  %722 = zext i32 %717 to i64
  %723 = getelementptr inbounds nuw i8, ptr %718, i64 %722
  %724 = load i8, ptr %723, align 1, !tbaa !8
  %725 = zext i8 %724 to i32
  %726 = xor i32 %721, %725
  %727 = load i32, ptr %17, align 4, !tbaa !52
  %728 = and i32 %726, %727
  store i32 %728, ptr %15, align 8, !tbaa !80
  %729 = load ptr, ptr %12, align 8, !tbaa !37
  %730 = zext i32 %728 to i64
  %731 = getelementptr inbounds nuw [2 x i8], ptr %729, i64 %730
  %732 = load i16, ptr %731, align 2, !tbaa !62
  %733 = load ptr, ptr %13, align 8, !tbaa !35
  %734 = load i32, ptr %18, align 8, !tbaa !33
  %735 = and i32 %734, %710
  %736 = zext i32 %735 to i64
  %737 = getelementptr inbounds nuw [2 x i8], ptr %733, i64 %736
  store i16 %732, ptr %737, align 2, !tbaa !62
  %738 = trunc i32 %710 to i16
  store i16 %738, ptr %731, align 2, !tbaa !62
  br label %739

739:                                              ; preds = %715, %713
  %740 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %707, i32 1), !nosanitize !45
  %741 = extractvalue { i32, i1 } %740, 1, !nosanitize !45
  br i1 %741, label %742, label %743, !prof !46, !nosanitize !45

742:                                              ; preds = %739
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

743:                                              ; preds = %739
  %744 = extractvalue { i32, i1 } %740, 0, !nosanitize !45
  store i32 %744, ptr %22, align 8, !tbaa !77
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %746, label %706, !llvm.loop !160

746:                                              ; preds = %743
  store i32 0, ptr %34, align 8, !tbaa !79
  store i32 2, ptr %21, align 8, !tbaa !78
  %747 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %710, i32 1), !nosanitize !45
  %748 = extractvalue { i32, i1 } %747, 1, !nosanitize !45
  br i1 %748, label %749, label %750, !prof !46, !nosanitize !45

749:                                              ; preds = %746
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

750:                                              ; preds = %746
  %751 = extractvalue { i32, i1 } %747, 0, !nosanitize !45
  store i32 %751, ptr %6, align 4, !tbaa !73
  br i1 %687, label %753, label %752

752:                                              ; preds = %946, %930, %809, %750
  br label %36

753:                                              ; preds = %750
  %754 = load i64, ptr %9, align 8, !tbaa !74
  %755 = icmp sgt i64 %754, -1
  br i1 %755, label %756, label %760

756:                                              ; preds = %753
  %757 = load ptr, ptr %7, align 8, !tbaa !34
  %758 = and i64 %754, 4294967295
  %759 = getelementptr inbounds nuw i8, ptr %757, i64 %758
  br label %760

760:                                              ; preds = %756, %753
  %761 = phi ptr [ %759, %756 ], [ null, %753 ]
  %762 = zext i32 %751 to i64
  %763 = sub nsw i64 %762, %754
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %761, i64 noundef %763, i32 noundef 0) #11
  %764 = load i32, ptr %6, align 4, !tbaa !73
  %765 = zext i32 %764 to i64
  store i64 %765, ptr %9, align 8, !tbaa !74
  %766 = load ptr, ptr %0, align 8, !tbaa !20
  %767 = getelementptr inbounds nuw i8, ptr %766, i64 56
  %768 = load ptr, ptr %767, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %768) #11
  %769 = getelementptr inbounds nuw i8, ptr %768, i64 40
  %770 = load i64, ptr %769, align 8, !tbaa !57
  %771 = getelementptr inbounds nuw i8, ptr %766, i64 32
  %772 = load i32, ptr %771, align 8, !tbaa !107
  %773 = zext i32 %772 to i64
  %774 = tail call i64 @llvm.umin.i64(i64 %770, i64 %773)
  %775 = trunc nuw i64 %774 to i32
  %776 = icmp eq i64 %774, 0
  br i1 %776, label %809, label %777

777:                                              ; preds = %760
  %778 = getelementptr inbounds nuw i8, ptr %766, i64 24
  %779 = load ptr, ptr %778, align 8, !tbaa !106
  %780 = getelementptr inbounds nuw i8, ptr %768, i64 32
  %781 = load ptr, ptr %780, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %779, ptr align 1 %781, i64 %774, i1 false)
  %782 = load ptr, ptr %778, align 8, !tbaa !106
  %783 = getelementptr inbounds nuw i8, ptr %782, i64 %774
  store ptr %783, ptr %778, align 8, !tbaa !106
  %784 = load ptr, ptr %780, align 8, !tbaa !58
  %785 = getelementptr inbounds nuw i8, ptr %784, i64 %774
  store ptr %785, ptr %780, align 8, !tbaa !58
  %786 = getelementptr inbounds nuw i8, ptr %766, i64 40
  %787 = load i64, ptr %786, align 8, !tbaa !108
  %788 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %787, i64 %774), !nosanitize !45
  %789 = extractvalue { i64, i1 } %788, 1, !nosanitize !45
  br i1 %789, label %790, label %791, !prof !46, !nosanitize !45

790:                                              ; preds = %777
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

791:                                              ; preds = %777
  %792 = extractvalue { i64, i1 } %788, 0, !nosanitize !45
  store i64 %792, ptr %786, align 8, !tbaa !108
  %793 = load i32, ptr %771, align 8, !tbaa !107
  %794 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %793, i32 %775), !nosanitize !45
  %795 = extractvalue { i32, i1 } %794, 1, !nosanitize !45
  br i1 %795, label %796, label %797, !prof !46, !nosanitize !45

796:                                              ; preds = %791
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

797:                                              ; preds = %791
  %798 = extractvalue { i32, i1 } %794, 0, !nosanitize !45
  store i32 %798, ptr %771, align 8, !tbaa !107
  %799 = load i64, ptr %769, align 8, !tbaa !57
  %800 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %799, i64 %774), !nosanitize !45
  %801 = extractvalue { i64, i1 } %800, 1, !nosanitize !45
  br i1 %801, label %802, label %803, !prof !46, !nosanitize !45

802:                                              ; preds = %797
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

803:                                              ; preds = %797
  %804 = extractvalue { i64, i1 } %800, 0, !nosanitize !45
  store i64 %804, ptr %769, align 8, !tbaa !57
  %805 = icmp eq i64 %804, 0
  br i1 %805, label %806, label %809

806:                                              ; preds = %803
  %807 = getelementptr inbounds nuw i8, ptr %768, i64 16
  %808 = load ptr, ptr %807, align 8, !tbaa !40
  store ptr %808, ptr %780, align 8, !tbaa !58
  br label %809

809:                                              ; preds = %806, %803, %760
  %810 = load ptr, ptr %0, align 8, !tbaa !20
  %811 = getelementptr inbounds nuw i8, ptr %810, i64 32
  %812 = load i32, ptr %811, align 8, !tbaa !107
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %1125, label %752

814:                                              ; preds = %598
  %815 = load i32, ptr %34, align 8, !tbaa !79
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %936, label %817

817:                                              ; preds = %814
  %818 = load i32, ptr %6, align 4, !tbaa !73
  %819 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %818, i32 1), !nosanitize !45
  %820 = extractvalue { i32, i1 } %819, 1, !nosanitize !45
  br i1 %820, label %821, label %822, !prof !46, !nosanitize !45

821:                                              ; preds = %817
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

822:                                              ; preds = %817
  %823 = extractvalue { i32, i1 } %819, 0, !nosanitize !45
  %824 = load ptr, ptr %7, align 8, !tbaa !34
  %825 = zext i32 %823 to i64
  %826 = getelementptr inbounds nuw i8, ptr %824, i64 %825
  %827 = load i8, ptr %826, align 1, !tbaa !8
  %828 = load i32, ptr %30, align 4, !tbaa !139
  %829 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %828, i32 1), !nosanitize !45
  %830 = extractvalue { i32, i1 } %829, 1, !nosanitize !45
  br i1 %830, label %831, label %832, !prof !46, !nosanitize !45

831:                                              ; preds = %822
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

832:                                              ; preds = %822
  %833 = extractvalue { i32, i1 } %829, 0, !nosanitize !45
  %834 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %833, ptr %30, align 4, !tbaa !139
  %835 = zext i32 %828 to i64
  %836 = getelementptr inbounds nuw i8, ptr %834, i64 %835
  store i8 0, ptr %836, align 1, !tbaa !8
  %837 = load i32, ptr %30, align 4, !tbaa !139
  %838 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %837, i32 1), !nosanitize !45
  %839 = extractvalue { i32, i1 } %838, 1, !nosanitize !45
  br i1 %839, label %840, label %841, !prof !46, !nosanitize !45

840:                                              ; preds = %832
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

841:                                              ; preds = %832
  %842 = extractvalue { i32, i1 } %838, 0, !nosanitize !45
  %843 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %842, ptr %30, align 4, !tbaa !139
  %844 = zext i32 %837 to i64
  %845 = getelementptr inbounds nuw i8, ptr %843, i64 %844
  store i8 0, ptr %845, align 1, !tbaa !8
  %846 = load i32, ptr %30, align 4, !tbaa !139
  %847 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %846, i32 1), !nosanitize !45
  %848 = extractvalue { i32, i1 } %847, 1, !nosanitize !45
  br i1 %848, label %849, label %850, !prof !46, !nosanitize !45

849:                                              ; preds = %841
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

850:                                              ; preds = %841
  %851 = extractvalue { i32, i1 } %847, 0, !nosanitize !45
  %852 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %851, ptr %30, align 4, !tbaa !139
  %853 = zext i32 %846 to i64
  %854 = getelementptr inbounds nuw i8, ptr %852, i64 %853
  store i8 %827, ptr %854, align 1, !tbaa !8
  %855 = zext i8 %827 to i64
  %856 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %855
  %857 = load i16, ptr %856, align 4, !tbaa !8
  %858 = add i16 %857, 1
  store i16 %858, ptr %856, align 4, !tbaa !8
  %859 = load i32, ptr %30, align 4, !tbaa !139
  %860 = load i32, ptr %33, align 8, !tbaa !47
  %861 = icmp eq i32 %859, %860
  br i1 %861, label %862, label %919

862:                                              ; preds = %850
  %863 = load i64, ptr %9, align 8, !tbaa !74
  %864 = icmp sgt i64 %863, -1
  br i1 %864, label %865, label %869

865:                                              ; preds = %862
  %866 = load ptr, ptr %7, align 8, !tbaa !34
  %867 = and i64 %863, 4294967295
  %868 = getelementptr inbounds nuw i8, ptr %866, i64 %867
  br label %869

869:                                              ; preds = %865, %862
  %870 = phi ptr [ %868, %865 ], [ null, %862 ]
  %871 = load i32, ptr %6, align 4, !tbaa !73
  %872 = zext i32 %871 to i64
  %873 = sub nsw i64 %872, %863
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %870, i64 noundef %873, i32 noundef 0) #11
  %874 = load i32, ptr %6, align 4, !tbaa !73
  %875 = zext i32 %874 to i64
  store i64 %875, ptr %9, align 8, !tbaa !74
  %876 = load ptr, ptr %0, align 8, !tbaa !20
  %877 = getelementptr inbounds nuw i8, ptr %876, i64 56
  %878 = load ptr, ptr %877, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %878) #11
  %879 = getelementptr inbounds nuw i8, ptr %878, i64 40
  %880 = load i64, ptr %879, align 8, !tbaa !57
  %881 = getelementptr inbounds nuw i8, ptr %876, i64 32
  %882 = load i32, ptr %881, align 8, !tbaa !107
  %883 = zext i32 %882 to i64
  %884 = tail call i64 @llvm.umin.i64(i64 %880, i64 %883)
  %885 = trunc nuw i64 %884 to i32
  %886 = icmp eq i64 %884, 0
  br i1 %886, label %919, label %887

887:                                              ; preds = %869
  %888 = getelementptr inbounds nuw i8, ptr %876, i64 24
  %889 = load ptr, ptr %888, align 8, !tbaa !106
  %890 = getelementptr inbounds nuw i8, ptr %878, i64 32
  %891 = load ptr, ptr %890, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %889, ptr align 1 %891, i64 %884, i1 false)
  %892 = load ptr, ptr %888, align 8, !tbaa !106
  %893 = getelementptr inbounds nuw i8, ptr %892, i64 %884
  store ptr %893, ptr %888, align 8, !tbaa !106
  %894 = load ptr, ptr %890, align 8, !tbaa !58
  %895 = getelementptr inbounds nuw i8, ptr %894, i64 %884
  store ptr %895, ptr %890, align 8, !tbaa !58
  %896 = getelementptr inbounds nuw i8, ptr %876, i64 40
  %897 = load i64, ptr %896, align 8, !tbaa !108
  %898 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %897, i64 %884), !nosanitize !45
  %899 = extractvalue { i64, i1 } %898, 1, !nosanitize !45
  br i1 %899, label %900, label %901, !prof !46, !nosanitize !45

900:                                              ; preds = %887
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

901:                                              ; preds = %887
  %902 = extractvalue { i64, i1 } %898, 0, !nosanitize !45
  store i64 %902, ptr %896, align 8, !tbaa !108
  %903 = load i32, ptr %881, align 8, !tbaa !107
  %904 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %903, i32 %885), !nosanitize !45
  %905 = extractvalue { i32, i1 } %904, 1, !nosanitize !45
  br i1 %905, label %906, label %907, !prof !46, !nosanitize !45

906:                                              ; preds = %901
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

907:                                              ; preds = %901
  %908 = extractvalue { i32, i1 } %904, 0, !nosanitize !45
  store i32 %908, ptr %881, align 8, !tbaa !107
  %909 = load i64, ptr %879, align 8, !tbaa !57
  %910 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %909, i64 %884), !nosanitize !45
  %911 = extractvalue { i64, i1 } %910, 1, !nosanitize !45
  br i1 %911, label %912, label %913, !prof !46, !nosanitize !45

912:                                              ; preds = %907
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

913:                                              ; preds = %907
  %914 = extractvalue { i64, i1 } %910, 0, !nosanitize !45
  store i64 %914, ptr %879, align 8, !tbaa !57
  %915 = icmp eq i64 %914, 0
  br i1 %915, label %916, label %919

916:                                              ; preds = %913
  %917 = getelementptr inbounds nuw i8, ptr %878, i64 16
  %918 = load ptr, ptr %917, align 8, !tbaa !40
  store ptr %918, ptr %890, align 8, !tbaa !58
  br label %919

919:                                              ; preds = %916, %913, %869, %850
  %920 = load i32, ptr %6, align 4, !tbaa !73
  %921 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %920, i32 1), !nosanitize !45
  %922 = extractvalue { i32, i1 } %921, 1, !nosanitize !45
  br i1 %922, label %923, label %924, !prof !46, !nosanitize !45

923:                                              ; preds = %919
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

924:                                              ; preds = %919
  %925 = extractvalue { i32, i1 } %921, 0, !nosanitize !45
  store i32 %925, ptr %6, align 4, !tbaa !73
  %926 = load i32, ptr %3, align 4, !tbaa !75
  %927 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %926, i32 1), !nosanitize !45
  %928 = extractvalue { i32, i1 } %927, 1, !nosanitize !45
  br i1 %928, label %929, label %930, !prof !46, !nosanitize !45

929:                                              ; preds = %924
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

930:                                              ; preds = %924
  %931 = extractvalue { i32, i1 } %927, 0, !nosanitize !45
  store i32 %931, ptr %3, align 4, !tbaa !75
  %932 = load ptr, ptr %0, align 8, !tbaa !20
  %933 = getelementptr inbounds nuw i8, ptr %932, i64 32
  %934 = load i32, ptr %933, align 8, !tbaa !107
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %1125, label %752

936:                                              ; preds = %814
  store i32 1, ptr %34, align 8, !tbaa !79
  %937 = load i32, ptr %6, align 4, !tbaa !73
  %938 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %937, i32 1), !nosanitize !45
  %939 = extractvalue { i32, i1 } %938, 1, !nosanitize !45
  br i1 %939, label %940, label %941, !prof !46, !nosanitize !45

940:                                              ; preds = %936
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

941:                                              ; preds = %936
  %942 = extractvalue { i32, i1 } %938, 0, !nosanitize !45
  store i32 %942, ptr %6, align 4, !tbaa !73
  %943 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %602, i32 1), !nosanitize !45
  %944 = extractvalue { i32, i1 } %943, 1, !nosanitize !45
  br i1 %944, label %945, label %946, !prof !46, !nosanitize !45

945:                                              ; preds = %941
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

946:                                              ; preds = %941
  %947 = extractvalue { i32, i1 } %943, 0, !nosanitize !45
  store i32 %947, ptr %3, align 4, !tbaa !75
  br label %752

948:                                              ; preds = %368
  %949 = load i32, ptr %34, align 8, !tbaa !79
  %950 = icmp eq i32 %949, 0
  %951 = load i32, ptr %6, align 4, !tbaa !73
  br i1 %950, label %994, label %952

952:                                              ; preds = %948
  %953 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %951, i32 1), !nosanitize !45
  %954 = extractvalue { i32, i1 } %953, 1, !nosanitize !45
  br i1 %954, label %955, label %956, !prof !46, !nosanitize !45

955:                                              ; preds = %952
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

956:                                              ; preds = %952
  %957 = extractvalue { i32, i1 } %953, 0, !nosanitize !45
  %958 = load ptr, ptr %7, align 8, !tbaa !34
  %959 = zext i32 %957 to i64
  %960 = getelementptr inbounds nuw i8, ptr %958, i64 %959
  %961 = load i8, ptr %960, align 1, !tbaa !8
  %962 = load i32, ptr %30, align 4, !tbaa !139
  %963 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %962, i32 1), !nosanitize !45
  %964 = extractvalue { i32, i1 } %963, 1, !nosanitize !45
  br i1 %964, label %965, label %966, !prof !46, !nosanitize !45

965:                                              ; preds = %956
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

966:                                              ; preds = %956
  %967 = extractvalue { i32, i1 } %963, 0, !nosanitize !45
  %968 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %967, ptr %30, align 4, !tbaa !139
  %969 = zext i32 %962 to i64
  %970 = getelementptr inbounds nuw i8, ptr %968, i64 %969
  store i8 0, ptr %970, align 1, !tbaa !8
  %971 = load i32, ptr %30, align 4, !tbaa !139
  %972 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %971, i32 1), !nosanitize !45
  %973 = extractvalue { i32, i1 } %972, 1, !nosanitize !45
  br i1 %973, label %974, label %975, !prof !46, !nosanitize !45

974:                                              ; preds = %966
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

975:                                              ; preds = %966
  %976 = extractvalue { i32, i1 } %972, 0, !nosanitize !45
  %977 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %976, ptr %30, align 4, !tbaa !139
  %978 = zext i32 %971 to i64
  %979 = getelementptr inbounds nuw i8, ptr %977, i64 %978
  store i8 0, ptr %979, align 1, !tbaa !8
  %980 = load i32, ptr %30, align 4, !tbaa !139
  %981 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %980, i32 1), !nosanitize !45
  %982 = extractvalue { i32, i1 } %981, 1, !nosanitize !45
  br i1 %982, label %983, label %984, !prof !46, !nosanitize !45

983:                                              ; preds = %975
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

984:                                              ; preds = %975
  %985 = extractvalue { i32, i1 } %981, 0, !nosanitize !45
  %986 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %985, ptr %30, align 4, !tbaa !139
  %987 = zext i32 %980 to i64
  %988 = getelementptr inbounds nuw i8, ptr %986, i64 %987
  store i8 %961, ptr %988, align 1, !tbaa !8
  %989 = zext i8 %961 to i64
  %990 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %989
  %991 = load i16, ptr %990, align 4, !tbaa !8
  %992 = add i16 %991, 1
  store i16 %992, ptr %990, align 4, !tbaa !8
  store i32 0, ptr %34, align 8, !tbaa !79
  %993 = load i32, ptr %6, align 4, !tbaa !73
  br label %994

994:                                              ; preds = %984, %948
  %995 = phi i32 [ %993, %984 ], [ %951, %948 ]
  %996 = tail call i32 @llvm.umin.i32(i32 %995, i32 2)
  store i32 %996, ptr %10, align 4, !tbaa !76
  %997 = icmp eq i32 %1, 4
  br i1 %997, label %998, label %1060

998:                                              ; preds = %994
  %999 = load i64, ptr %9, align 8, !tbaa !74
  %1000 = icmp sgt i64 %999, -1
  br i1 %1000, label %1001, label %1005

1001:                                             ; preds = %998
  %1002 = load ptr, ptr %7, align 8, !tbaa !34
  %1003 = and i64 %999, 4294967295
  %1004 = getelementptr inbounds nuw i8, ptr %1002, i64 %1003
  br label %1005

1005:                                             ; preds = %1001, %998
  %1006 = phi ptr [ %1004, %1001 ], [ null, %998 ]
  %1007 = zext i32 %995 to i64
  %1008 = sub nsw i64 %1007, %999
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1006, i64 noundef %1008, i32 noundef 1) #11
  %1009 = load i32, ptr %6, align 4, !tbaa !73
  %1010 = zext i32 %1009 to i64
  store i64 %1010, ptr %9, align 8, !tbaa !74
  %1011 = load ptr, ptr %0, align 8, !tbaa !20
  %1012 = getelementptr inbounds nuw i8, ptr %1011, i64 56
  %1013 = load ptr, ptr %1012, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1013) #11
  %1014 = getelementptr inbounds nuw i8, ptr %1013, i64 40
  %1015 = load i64, ptr %1014, align 8, !tbaa !57
  %1016 = getelementptr inbounds nuw i8, ptr %1011, i64 32
  %1017 = load i32, ptr %1016, align 8, !tbaa !107
  %1018 = zext i32 %1017 to i64
  %1019 = tail call i64 @llvm.umin.i64(i64 %1015, i64 %1018)
  %1020 = trunc nuw i64 %1019 to i32
  %1021 = icmp eq i64 %1019, 0
  br i1 %1021, label %1054, label %1022

1022:                                             ; preds = %1005
  %1023 = getelementptr inbounds nuw i8, ptr %1011, i64 24
  %1024 = load ptr, ptr %1023, align 8, !tbaa !106
  %1025 = getelementptr inbounds nuw i8, ptr %1013, i64 32
  %1026 = load ptr, ptr %1025, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1024, ptr align 1 %1026, i64 %1019, i1 false)
  %1027 = load ptr, ptr %1023, align 8, !tbaa !106
  %1028 = getelementptr inbounds nuw i8, ptr %1027, i64 %1019
  store ptr %1028, ptr %1023, align 8, !tbaa !106
  %1029 = load ptr, ptr %1025, align 8, !tbaa !58
  %1030 = getelementptr inbounds nuw i8, ptr %1029, i64 %1019
  store ptr %1030, ptr %1025, align 8, !tbaa !58
  %1031 = getelementptr inbounds nuw i8, ptr %1011, i64 40
  %1032 = load i64, ptr %1031, align 8, !tbaa !108
  %1033 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1032, i64 %1019), !nosanitize !45
  %1034 = extractvalue { i64, i1 } %1033, 1, !nosanitize !45
  br i1 %1034, label %1035, label %1036, !prof !46, !nosanitize !45

1035:                                             ; preds = %1022
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1036:                                             ; preds = %1022
  %1037 = extractvalue { i64, i1 } %1033, 0, !nosanitize !45
  store i64 %1037, ptr %1031, align 8, !tbaa !108
  %1038 = load i32, ptr %1016, align 8, !tbaa !107
  %1039 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1038, i32 %1020), !nosanitize !45
  %1040 = extractvalue { i32, i1 } %1039, 1, !nosanitize !45
  br i1 %1040, label %1041, label %1042, !prof !46, !nosanitize !45

1041:                                             ; preds = %1036
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1042:                                             ; preds = %1036
  %1043 = extractvalue { i32, i1 } %1039, 0, !nosanitize !45
  store i32 %1043, ptr %1016, align 8, !tbaa !107
  %1044 = load i64, ptr %1014, align 8, !tbaa !57
  %1045 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1044, i64 %1019), !nosanitize !45
  %1046 = extractvalue { i64, i1 } %1045, 1, !nosanitize !45
  br i1 %1046, label %1047, label %1048, !prof !46, !nosanitize !45

1047:                                             ; preds = %1042
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1048:                                             ; preds = %1042
  %1049 = extractvalue { i64, i1 } %1045, 0, !nosanitize !45
  store i64 %1049, ptr %1014, align 8, !tbaa !57
  %1050 = icmp eq i64 %1049, 0
  br i1 %1050, label %1051, label %1054

1051:                                             ; preds = %1048
  %1052 = getelementptr inbounds nuw i8, ptr %1013, i64 16
  %1053 = load ptr, ptr %1052, align 8, !tbaa !40
  store ptr %1053, ptr %1025, align 8, !tbaa !58
  br label %1054

1054:                                             ; preds = %1051, %1048, %1005
  %1055 = load ptr, ptr %0, align 8, !tbaa !20
  %1056 = getelementptr inbounds nuw i8, ptr %1055, i64 32
  %1057 = load i32, ptr %1056, align 8, !tbaa !107
  %1058 = icmp eq i32 %1057, 0
  %1059 = select i1 %1058, i32 2, i32 3
  br label %1125

1060:                                             ; preds = %994
  %1061 = load i32, ptr %30, align 4, !tbaa !139
  %1062 = icmp eq i32 %1061, 0
  br i1 %1062, label %1124, label %1063

1063:                                             ; preds = %1060
  %1064 = load i64, ptr %9, align 8, !tbaa !74
  %1065 = icmp sgt i64 %1064, -1
  br i1 %1065, label %1066, label %1070

1066:                                             ; preds = %1063
  %1067 = load ptr, ptr %7, align 8, !tbaa !34
  %1068 = and i64 %1064, 4294967295
  %1069 = getelementptr inbounds nuw i8, ptr %1067, i64 %1068
  br label %1070

1070:                                             ; preds = %1066, %1063
  %1071 = phi ptr [ %1069, %1066 ], [ null, %1063 ]
  %1072 = zext i32 %995 to i64
  %1073 = sub nsw i64 %1072, %1064
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1071, i64 noundef %1073, i32 noundef 0) #11
  %1074 = load i32, ptr %6, align 4, !tbaa !73
  %1075 = zext i32 %1074 to i64
  store i64 %1075, ptr %9, align 8, !tbaa !74
  %1076 = load ptr, ptr %0, align 8, !tbaa !20
  %1077 = getelementptr inbounds nuw i8, ptr %1076, i64 56
  %1078 = load ptr, ptr %1077, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1078) #11
  %1079 = getelementptr inbounds nuw i8, ptr %1078, i64 40
  %1080 = load i64, ptr %1079, align 8, !tbaa !57
  %1081 = getelementptr inbounds nuw i8, ptr %1076, i64 32
  %1082 = load i32, ptr %1081, align 8, !tbaa !107
  %1083 = zext i32 %1082 to i64
  %1084 = tail call i64 @llvm.umin.i64(i64 %1080, i64 %1083)
  %1085 = trunc nuw i64 %1084 to i32
  %1086 = icmp eq i64 %1084, 0
  br i1 %1086, label %1119, label %1087

1087:                                             ; preds = %1070
  %1088 = getelementptr inbounds nuw i8, ptr %1076, i64 24
  %1089 = load ptr, ptr %1088, align 8, !tbaa !106
  %1090 = getelementptr inbounds nuw i8, ptr %1078, i64 32
  %1091 = load ptr, ptr %1090, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1089, ptr align 1 %1091, i64 %1084, i1 false)
  %1092 = load ptr, ptr %1088, align 8, !tbaa !106
  %1093 = getelementptr inbounds nuw i8, ptr %1092, i64 %1084
  store ptr %1093, ptr %1088, align 8, !tbaa !106
  %1094 = load ptr, ptr %1090, align 8, !tbaa !58
  %1095 = getelementptr inbounds nuw i8, ptr %1094, i64 %1084
  store ptr %1095, ptr %1090, align 8, !tbaa !58
  %1096 = getelementptr inbounds nuw i8, ptr %1076, i64 40
  %1097 = load i64, ptr %1096, align 8, !tbaa !108
  %1098 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1097, i64 %1084), !nosanitize !45
  %1099 = extractvalue { i64, i1 } %1098, 1, !nosanitize !45
  br i1 %1099, label %1100, label %1101, !prof !46, !nosanitize !45

1100:                                             ; preds = %1087
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1101:                                             ; preds = %1087
  %1102 = extractvalue { i64, i1 } %1098, 0, !nosanitize !45
  store i64 %1102, ptr %1096, align 8, !tbaa !108
  %1103 = load i32, ptr %1081, align 8, !tbaa !107
  %1104 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1103, i32 %1085), !nosanitize !45
  %1105 = extractvalue { i32, i1 } %1104, 1, !nosanitize !45
  br i1 %1105, label %1106, label %1107, !prof !46, !nosanitize !45

1106:                                             ; preds = %1101
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1107:                                             ; preds = %1101
  %1108 = extractvalue { i32, i1 } %1104, 0, !nosanitize !45
  store i32 %1108, ptr %1081, align 8, !tbaa !107
  %1109 = load i64, ptr %1079, align 8, !tbaa !57
  %1110 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1109, i64 %1084), !nosanitize !45
  %1111 = extractvalue { i64, i1 } %1110, 1, !nosanitize !45
  br i1 %1111, label %1112, label %1113, !prof !46, !nosanitize !45

1112:                                             ; preds = %1107
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1113:                                             ; preds = %1107
  %1114 = extractvalue { i64, i1 } %1110, 0, !nosanitize !45
  store i64 %1114, ptr %1079, align 8, !tbaa !57
  %1115 = icmp eq i64 %1114, 0
  br i1 %1115, label %1116, label %1119

1116:                                             ; preds = %1113
  %1117 = getelementptr inbounds nuw i8, ptr %1078, i64 16
  %1118 = load ptr, ptr %1117, align 8, !tbaa !40
  store ptr %1118, ptr %1090, align 8, !tbaa !58
  br label %1119

1119:                                             ; preds = %1116, %1113, %1070
  %1120 = load ptr, ptr %0, align 8, !tbaa !20
  %1121 = getelementptr inbounds nuw i8, ptr %1120, i64 32
  %1122 = load i32, ptr %1121, align 8, !tbaa !107
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1125, label %1124

1124:                                             ; preds = %1119, %1060
  br label %1125

1125:                                             ; preds = %1124, %1119, %1054, %930, %809, %364
  %1126 = phi i32 [ 0, %1119 ], [ %1059, %1054 ], [ 1, %1124 ], [ 0, %364 ], [ 0, %809 ], [ 0, %930 ]
  ret i32 %1126
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nomerge noreturn nounwind }

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
!45 = !{}
!46 = !{!"branch_weights", i32 1, i32 1048575}
!47 = !{!21, !5, i64 5904}
!48 = !{!21, !5, i64 196}
!49 = !{!21, !5, i64 200}
!50 = !{!21, !6, i64 72}
!51 = !{!21, !5, i64 136}
!52 = !{!21, !5, i64 140}
!53 = !{!21, !5, i64 144}
!54 = !{ptr @deflateEnd}
!55 = !{!10, !13, i64 16}
!56 = !{!10, !5, i64 88}
!57 = !{!21, !13, i64 40}
!58 = !{!21, !11, i64 32}
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
!93 = !{!"branch_weights", i32 1048575, i32 1}
!94 = distinct !{!94, !85}
!95 = distinct !{!95, !85, !86, !87}
!96 = distinct !{!96, !85, !87, !86}
!97 = distinct !{!97, !85, !86, !87}
!98 = distinct !{!98, !85, !87, !86}
!99 = distinct !{!99, !85}
!100 = !{!21, !23, i64 56}
!101 = !{!21, !5, i64 5940}
!102 = !{!21, !5, i64 5944}
!103 = !{!21, !28, i64 5936}
!104 = distinct !{!104, !85}
!105 = !{!65, !12, i64 8}
!106 = !{!10, !11, i64 24}
!107 = !{!10, !5, i64 32}
!108 = !{!10, !13, i64 40}
!109 = !{!110, !11, i64 56}
!110 = !{!"gz_header_s", !5, i64 0, !13, i64 8, !5, i64 16, !5, i64 20, !11, i64 24, !5, i64 32, !5, i64 36, !11, i64 40, !5, i64 48, !11, i64 56, !5, i64 64, !5, i64 68, !5, i64 72}
!111 = !{!110, !11, i64 40}
!112 = !{!110, !11, i64 24}
!113 = !{!110, !5, i64 0}
!114 = !{!110, !5, i64 68}
!115 = !{!110, !13, i64 8}
!116 = !{!110, !5, i64 20}
!117 = !{!110, !5, i64 32}
!118 = !{!21, !13, i64 64}
!119 = distinct !{!119, !85, !120, !121}
!120 = !{!"llvm.loop.peeled.count", i32 1}
!121 = !{!"llvm.loop.estimated_trip_count", i32 1048575}
!122 = distinct !{!122, !85}
!123 = distinct !{!123, !85}
!124 = !{ptr @deflate}
!125 = !{!21, !5, i64 5928}
!126 = distinct !{!126, !85, !86, !87}
!127 = distinct !{!127, !85, !87, !86}
!128 = distinct !{!128, !85, !86, !87}
!129 = distinct !{!129, !85, !87, !86}
!130 = !{!"branch_weights", i32 1, i32 127}
!131 = !{!"branch_weights", i32 127, i32 134217473}
!132 = distinct !{!132, !85}
!133 = distinct !{!133, !85}
!134 = distinct !{!134, !85}
!135 = distinct !{!135, !85, !86, !87}
!136 = distinct !{!136, !85, !87, !86}
!137 = distinct !{!137, !85, !86, !87}
!138 = distinct !{!138, !85, !87, !86}
!139 = !{!21, !5, i64 5900}
!140 = distinct !{!140, !85, !86, !87}
!141 = distinct !{!141, !85, !87, !86}
!142 = distinct !{!142, !85, !86, !87}
!143 = distinct !{!143, !85, !87, !86}
!144 = distinct !{!144, !85}
!145 = !{!21, !26, i64 2904}
!146 = !{!21, !26, i64 2928}
!147 = !{!21, !26, i64 2952}
!148 = distinct !{!148, !85, !86, !87}
!149 = distinct !{!149, !85, !87, !86}
!150 = distinct !{!150, !85, !86, !87}
!151 = distinct !{!151, !85, !87, !86}
!152 = distinct !{!152, !85}
!153 = distinct !{!153, !85}
!154 = distinct !{!154, !85}
!155 = distinct !{!155, !85, !86, !87}
!156 = distinct !{!156, !85, !87, !86}
!157 = distinct !{!157, !85, !86, !87}
!158 = distinct !{!158, !85, !87, !86}
!159 = !{!21, !5, i64 164}
!160 = distinct !{!160, !85}
